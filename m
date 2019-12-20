Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CA6127C5A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 15:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRGmJoyjD9O9mLnkSabih/7pPZWkouMOUAu5xBNgte0=; b=hsvBN2XjZuesLR
	pNWfjI1pGtuHAO+3DlCXadeLcgMMUvdKvibNPceKRHcqZOZbuynz0ssnkm4hxa3ru3WpCqIUl95li
	GRpSMd0TGr0QPcwXAoxqQJQXxutnKVaeI4t1VrOvD/FF90wXGiHWbqRVRMBNBpjModSa4aoVdn/Y2
	UnQpEC3Yd4Ia9ehWTEnMhg+jTclwlwQaLagDvF7H4/NpRDK+0WXOhcAES/kHh41lfriXNtCzBh2hC
	8K12xmtxB3izZI3MmJeeaaZlnTlx5Y3oXDS7X4M64oEvKgfRRbP5fKVpDVaPfyXF4z24S5MYEW8QW
	7l4rjgHXI9b90CJbTrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJ4l-0004nv-2r; Fri, 20 Dec 2019 14:16:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJ4a-0004nR-81
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 14:16:09 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C23021D7D;
 Fri, 20 Dec 2019 14:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576851367;
 bh=ozdmvQULKSXokLNWdk7mYphvTDazwayXgBTn7Ekeph4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rUYD7y0xQ0rgIYMrq8VaVZBlDMYXr2sK+cPuFusKHMyLPgsIlq/Ce/UpiwToV+sLN
 MiLXt8kUQfbwiwfhBBPQWfBw5Pp4ECdqFwvV4NuUZWGUF9+cQCmvCdKijw873h5uPO
 Kdt2zLejmQFIX21VRVEHX7Hmbw8zbkVd3WihSxvg=
Date: Fri, 20 Dec 2019 15:16:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [RFC PATCH v1] devres: align devres.data strictly only for
 devm_kmalloc()
Message-ID: <20191220141605.GA2292734@kroah.com>
References: <74ae22cd-08c1-d846-3e1d-cbc38db87442@free.fr>
 <bf020a68-00fd-2bb7-c3b6-00f5befa293a@free.fr>
 <20191220140655.GN2827@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191220140655.GN2827@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_061608_312359_03B0123F 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alexey Brodkin <alexey.brodkin@synopsys.com>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, Will Deacon <will@kernel.org>,
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

On Fri, Dec 20, 2019 at 03:06:55PM +0100, Peter Zijlstra wrote:
> On Fri, Dec 20, 2019 at 11:19:27AM +0100, Marc Gonzalez wrote:
> > Would anyone else have any suggestions, comments, insights, recommendations,
> > improvements, guidance, or wisdom? :-)
> 
> Flip devres upside down!
> 
> **WARNING, wear protective glasses when reading the below**
> 
> 
> struct devres {
> 	struct devres_node	node;
> 	void			*data;
> };
> 
> /*
>  * We place struct devres at the tail of the memory allocation
>  * such that data retains the ARCH_KMALLOC_MINALIGN alignment.
>  * struct devres itself is just 4 pointers and should therefore
>  * only require trivial alignment.
>  */
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

Ok, that's my queue to walk away from the keyboard and start drinking, I
think the holiday season has now officially started.

ugh.  crazy.

but brilliant :)

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
