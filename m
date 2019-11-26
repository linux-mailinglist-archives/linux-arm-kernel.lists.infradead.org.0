Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6893C10985C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 05:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rE3y6dF6ZoQryV9tJIeXg1m2geklmDzsxyURWQXPhs8=; b=QWjSsBxt86pqJL
	dL7g/9PldwxqAMUj/dmmpeRe3itQJ44zNafX9QJmeft7VwSBsDj/W8ERooVvSlwZiYx9YvgwZ4fpr
	ipukz5X//NsW9JRkwVUGnkBSnhmelSuKrUYqYzEwNt8sYyArNXqwJPBwA7IfsbVt8GNm/u5m39eKC
	lpMkKnpDSoSJJmxxxbnaKyr11zTdL2Rl1N6j14N1bH+gi1Yb7p96hmqjyWfeQPMopPeyFIYViVqJv
	ZxEM4YmoK/d1L3hTulBk7VZ5wyeApHkJoEh9klwynfpyv1S+vFGCzrpl0JFz93ax+9mVOXv39GeRf
	dGRHR0Dulg/2JznMFrcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZSjm-0002RT-Os; Tue, 26 Nov 2019 04:46:06 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZSjd-0002PI-5o
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 04:45:58 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why)
 by cheepnis.misterjones.org with esmtpsa (TLSv1.2:AES256-GCM-SHA384:256)
 (Exim 4.80) (envelope-from <maz@kernel.org>)
 id 1iZSjN-0003Ml-3g; Tue, 26 Nov 2019 05:45:41 +0100
Date: Tue, 26 Nov 2019 04:45:33 +0000
From: Marc Zyngier <maz@kernel.org>
To: "Andrew Jeffery" <andrew@aj.id.au>
Subject: Re: [PATCH] irqchip/aspeed-i2c-ic: Fix irq domain name memory leak
Message-ID: <20191126044533.20d84e37@why>
In-Reply-To: <ff44cecd-7e05-4e5d-b88f-2d6af6fd8b8b@www.fastmail.com>
References: <20191125202937.23133-1-roy.van.doormaal@prodrive-technologies.com>
 <ff44cecd-7e05-4e5d-b88f-2d6af6fd8b8b@www.fastmail.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: andrew@aj.id.au, roy.van.doormaal@prodrive-technologies.com,
 brendanhiggins@google.com, benh@kernel.crashing.org, joel@jms.id.au,
 tglx@linutronix.de, jason@lakedaemon.net, linux-i2c@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_204557_363737_E6256D85 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Jason Cooper <jason@lakedaemon.net>, linux-aspeed@lists.ozlabs.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>,
 Joel Stanley <joel@jms.id.au>, Thomas
 Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 26 Nov 2019 10:08:36 +1030
"Andrew Jeffery" <andrew@aj.id.au> wrote:

> On Tue, 26 Nov 2019, at 06:59, Roy van Doormaal wrote:
> > The aspeed irqchip driver overwrites the default irq domain name,
> > but doesn't free the existing domain name.
> > This patch frees the irq domain name before overwriting it.
> > 
> > kmemleak trace:
> > 
> > unreferenced object 0xb8004c40 (size 64):
> > comm "swapper", pid 0, jiffies 4294937303 (age 747.660s)
> > hex dump (first 32 bytes):
> > 3a 61 68 62 3a 61 70 62 3a 62 75 73 40 31 65 37 :ahb:apb:bus@1e7
> > 38 61 30 30 30 3a 69 6e 74 65 72 72 75 70 74 2d 8a000:interrupt-
> > backtrace:
> > [<086b59b8>] kmemleak_alloc+0xa8/0xc0
> > [<b5a3490c>] __kmalloc_track_caller+0x118/0x1a0
> > [<f59c7ced>] kvasprintf+0x5c/0xc0
> > [<49275eec>] kasprintf+0x30/0x50
> > [<5713064b>] __irq_domain_add+0x184/0x25c
> > [<53c594d0>] aspeed_i2c_ic_of_init+0x9c/0x128
> > [<d8d7017e>] of_irq_init+0x1ec/0x314
> > [<f8405bf1>] irqchip_init+0x1c/0x24
> > [<7ef974b3>] init_IRQ+0x30/0x90
> > [<87a1438f>] start_kernel+0x28c/0x458
> > [< (null)>] (null)
> > [<f0763fdf>] 0xffffffff
> > 
> > Signed-off-by: Roy van Doormaal <roy.van.doormaal@prodrive-technologies.com>
> > ---
> >  drivers/irqchip/irq-aspeed-i2c-ic.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/irqchip/irq-aspeed-i2c-ic.c 
> > b/drivers/irqchip/irq-aspeed-i2c-ic.c
> > index 8d591c179f81..8081b8483a79 100644
> > --- a/drivers/irqchip/irq-aspeed-i2c-ic.c
> > +++ b/drivers/irqchip/irq-aspeed-i2c-ic.c
> > @@ -92,6 +92,8 @@ static int __init aspeed_i2c_ic_of_init(struct 
> > device_node *node,
> >  		goto err_iounmap;
> >  	}
> >  
> > +	if (i2c_ic->irq_domain->flags & IRQ_DOMAIN_NAME_ALLOCATED)
> > +		kfree(i2c_ic->irq_domain->name);
> >  	i2c_ic->irq_domain->name = "aspeed-i2c-domain";  
> 
> Given that the name is no-longer allocated I think you need to clear the
> IRQ_DOMAIN_NAME_ALLOCATED bit from flags to avoid attempting to
> free the const string in irq_domain_remove():
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/irq/irqdomain.c?h=v5.4#n263
> 
> Or do a kstrdup().

Or even better, drop the whole domain name assignment, which is pretty
pointless and makes debugging pointlessly difficult (see how the name
is used to build the irq debugfs).

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
