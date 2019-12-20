Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75FA127EE0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 16:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dcu4XBe4p/53irEVdCNPI+EzQF71Rqo9U/Yh7gQCXIc=; b=lEK7MNtBOgcBfKY/8UAc/QPUH
	vSA0ZIXRwyYh8bM1+T11+rEVtOY/aWENcpJUvB9w9L94fjLEg6x3Y9DGF29JBwVpgDLjZKQRDzoc1
	38PgVyl+OVWB2b5bOlsOUkzrNYbV7uTB5ykWsVu11/orlWC3C4pMVBW3M0rPtAdANE8s5fTV0SOTc
	BZCQ3irhnLwD8BqVSXEAUnTcN8vDIoMy9qMuaoj9FYNpHC74u2zs9rewguSag7E55K3d+GImFFor4
	6rw60tb0+TMaGlBHvKc/7cZwR7Oipf3HwAi1dYJXJn0VmxBpLlG+Nvdd3o0oja6qFZTGiw2St4qXv
	fSWolIIAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJmL-0002ba-AQ; Fri, 20 Dec 2019 15:01:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJmD-0002aq-Ds
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 15:01:14 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13E3530E;
 Fri, 20 Dec 2019 07:01:10 -0800 (PST)
Received: from [192.168.1.123] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F18543F6CF;
 Fri, 20 Dec 2019 07:01:07 -0800 (PST)
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
To: Peter Zijlstra <peterz@infradead.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <9be1d523-e92c-836b-b79d-37e880d092a0@arm.com>
Date: Fri, 20 Dec 2019 15:01:03 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191220140655.GN2827@hirez.programming.kicks-ass.net>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_070113_515000_0D8DCE0C 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Rafael Wysocki <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Tejun Heo <tj@kernel.org>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

/me rouses from holiday mode...

On 2019-12-20 2:06 pm, Peter Zijlstra wrote:
> On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
>> Would anyone else have any suggestions, comments, insights, recommendations,
>> improvements, guidance, or wisdom? :-)
> 
> Flip devres upside down!

Which doesn't really help :(

> **WARNING, wear protective glasses when reading the below**
> 
> 
> struct devres {
> 	struct devres_node	node;
> 	void			*data;
> };
> 
> /*
>   * We place struct devres at the tail of the memory allocation
>   * such that data retains the ARCH_KMALLOC_MINALIGN alignment.
>   * struct devres itself is just 4 pointers and should therefore
>   * only require trivial alignment.
>   */
> static inline struct devres *data2devres(void *data)
> {
> 	return (struct devres *)(data + ksize(data) - sizeof(struct devres));
> }
> 
> void *alloc_dr(...)
> {
> 	struct devres *dr;
> 	void *data;
> 
> 	data = kmalloc(size + sizeof(struct devres), GFP_KERNEL);

At this point, you'd still need to special-case devm_kmalloc() to ensure 
size is rounded up to the next ARCH_KMALLOC_MINALIGN granule, or you'd 
go back to the original problem of the struct devres fields potentially 
sharing a cache line with the data buffer. That needs to be avoided, 
because if the devres list is modified while the buffer is mapped for 
noncoherent DMA (which could legitimately happen as they are nominally 
distinct allocations with different owners) there's liable to be data 
corruption one way or the other.

No matter which way round you allocate devres and data, by necessity 
they're always going to consume the same total amount of memory.

Robin.

> 	dr = data2devres(data);
> 	WARN_ON((unsigned long)dr & __alignof(*dr)-1);
> 	INIT_LIST_HEAD(&dr->node.entry);
> 	dr->node.release = release;
> 	dr->data = data;
> 
> 	return dr;
> }
> 
> void devres_free(void *data)
> {
> 	if (data) {
> 		struct devres *dr = data2devres(data);
> 		BUG_ON(!list_empty(dr->node.entry));
> 		kfree(data);
> 	}
> }
> 
> static int release_nodes(...)
> {
> 	...
> 	list_for_each_entry_safe_reverse(dr, ...) {
> 		...
> 		kfree(dr->data);
> 	}
> }
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
