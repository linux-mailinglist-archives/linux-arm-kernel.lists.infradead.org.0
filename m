Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D129127C46
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:07:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c9qOvELUNGGkC1JFh9Sf3a6g0FQF+JLgPvkIjuTmiVA=; b=mUMTkPP6Gq6Ii1
	AgPwsa71sa8wWlLZ1RUMxljNo5umhNbkQDrffHm4inwRqyBaROIy/BXdlDn0mQDxURmS9KKhcBavi
	GD2e8NI41nzf5HpkfubQ3I88A77mm/qC/VcGBecAbCcETnFkzpCH/wKZOOSoNwZJgI3a2zXSs5mVp
	W/B1FfZ/zq4zZ5y2NqexmHiEe7jdwRMunKhQQ1Ol5SUEeMtr4oQlT2Grywjfdgzd1UqLHnSamDh6O
	KfPK/4A7kXz0T1+JJJAGGRHP97Kt5bmDRoYT8H5IwftnsIOP7k7beQiNHRWqMcB4KDNDq5enKDgT3
	6i8sQmNqiBXlSJdSLEtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiIvr-000143-5a; Fri, 20 Dec 2019 14:07:07 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiIvh-00013n-Ll; Fri, 20 Dec 2019 14:06:57 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 31F7130073C;
 Fri, 20 Dec 2019 15:05:31 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 23A21203A8993; Fri, 20 Dec 2019 15:06:55 +0100 (CET)
Date: Fri, 20 Dec 2019 15:06:55 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220140655.GN2827@hirez.programming.kicks-ass.net>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>, Will Deacon <will@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
> Would anyone else have any suggestions, comments, insights, recommendations,
> improvements, guidance, or wisdom? :-)

Flip devres upside down!

**WARNING, wear protective glasses when reading the below**


struct devres {
	struct devres_node	node;
	void			*data;
};

/*
 * We place struct devres at the tail of the memory allocation
 * such that data retains the ARCH_KMALLOC_MINALIGN alignment.
 * struct devres itself is just 4 pointers and should therefore
 * only require trivial alignment.
 */
static inline struct devres *data2devres(void *data)
{
	return (struct devres *)(data + ksize(data) - sizeof(struct devres));
}

void *alloc_dr(...)
{
	struct devres *dr;
	void *data;

	data = kmalloc(size + sizeof(struct devres), GFP_KERNEL);
	dr = data2devres(data);
	WARN_ON((unsigned long)dr & __alignof(*dr)-1);
	INIT_LIST_HEAD(&dr->node.entry);
	dr->node.release = release;
	dr->data = data;

	return dr;
}

void devres_free(void *data)
{
	if (data) {
		struct devres *dr = data2devres(data);
		BUG_ON(!list_empty(dr->node.entry));
		kfree(data);
	}
}

static int release_nodes(...)
{
	...
	list_for_each_entry_safe_reverse(dr, ...) {
		...
		kfree(dr->data);
	}
}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
