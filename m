Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3BE18EBEC
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 20:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Kq2QOHw9nNvm5JbohDTClhuXYxT1Fy46GSlb4LeNkto=; b=Tzt5EmWF41lDnnvC1FGqFBxiQ
	DtESRjjrCHNZpWukjOZIH2mwO2prbRBbqdnKulJPw2P91I69zlClpTdDzllFcOEvsmlwzlnPj+It3
	dsYNRY9BTyEMhv5OCL7dLSS8NmtMiVq/uq6rBOY70+E7wdbTK8jRz1xxs4egWkQ59Wo3WTsSZgXUq
	AP8E/3Csq3wWe8Fx0X/OyxJ5aS4IJwGYHf45SmM7XByZsVQSwE5O1E+UweBVWCbhH37SloXgGvQk9
	pm6u5PIZJApX0YlWMFuwtycQppX/p3NVBxzL9mYYd8cqOO98ofqs5uiZL4lZ30FzbmXDMwdm/qg3s
	z9i8+W+vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG6OG-0007l2-4h; Sun, 22 Mar 2020 19:36:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG6O7-0007hG-IW
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 19:36:00 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB6172070A;
 Sun, 22 Mar 2020 19:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584905759;
 bh=iL1sjTLvw1JVu+N++3CO4C0/tIF4N6blP9U1IKYS5gQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=kAXEx17aS3TrizisnrRafSOkN+ibt5U0Y7672k6/Yrcv7ai6MHzcqZgalHr4qyo/W
 A215K6TVqFPDF3E6GPENUbZiJDMKPTfFhFXiwNllNT5vdOKjOmD9nBjxHQmuWx7aLI
 wpzmhLnSjrqktPegHm6AwDxvzGfDny/5xovTe7Yk=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jG6O5-00Eknk-0F; Sun, 22 Mar 2020 19:35:57 +0000
MIME-Version: 1.0
Date: Sun, 22 Mar 2020 19:35:56 +0000
From: Marc Zyngier <maz@kernel.org>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] irqchip: irq-imx-gpcv2: Remove unnecessary blank lines
In-Reply-To: <CAEnQRZCcmaU91Ep5kVesaGPsrvujq5mznk2SZccmZG9rbSCG0w@mail.gmail.com>
References: <1584421001-2647-1-git-send-email-Anson.Huang@nxp.com>
 <86mu89zqce.wl-maz@kernel.org>
 <CAEnQRZCcmaU91Ep5kVesaGPsrvujq5mznk2SZccmZG9rbSCG0w@mail.gmail.com>
Message-ID: <a690ecc9169f0594e22b4eae0a056d89@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: daniel.baluta@gmail.com, Anson.Huang@nxp.com,
 tglx@linutronix.de, jason@lakedaemon.net, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Linux-imx@nxp.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_123559_655823_5A29EFFC 
X-CRM114-Status: GOOD (  19.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jason@lakedaemon.net, Anson Huang <Anson.Huang@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <Linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, tglx@linutronix.de,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Daniel,

On 2020-03-22 19:08, Daniel Baluta wrote:
> On Sat, Mar 21, 2020 at 5:22 PM Marc Zyngier <maz@kernel.org> wrote:
>> 
>> On Tue, 17 Mar 2020 04:56:41 +0000,
>> Anson Huang <Anson.Huang@nxp.com> wrote:
>> >
>> > Remove unnecessary blank lines for cleanup.
>> >
>> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
>> > ---
>> >  drivers/irqchip/irq-imx-gpcv2.c | 2 --
>> >  1 file changed, 2 deletions(-)
>> >
>> > diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
>> > index 4f74c15..4f11b9b 100644
>> > --- a/drivers/irqchip/irq-imx-gpcv2.c
>> > +++ b/drivers/irqchip/irq-imx-gpcv2.c
>> > @@ -17,7 +17,6 @@
>> >  #define GPC_IMR1_CORE2               0x1c0
>> >  #define GPC_IMR1_CORE3               0x1d0
>> >
>> > -
>> >  struct gpcv2_irqchip_data {
>> >       struct raw_spinlock     rlock;
>> >       void __iomem            *gpc_base;
>> > @@ -287,6 +286,5 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
>> >       of_node_clear_flag(node, OF_POPULATED);
>> >       return 0;
>> >  }
>> > -
>> >  IRQCHIP_DECLARE(imx_gpcv2_imx7d, "fsl,imx7d-gpc", imx_gpcv2_irqchip_init);
>> >  IRQCHIP_DECLARE(imx_gpcv2_imx8mq, "fsl,imx8mq-gpc", imx_gpcv2_irqchip_init);
>> 
>> I honestly don't think this deserves a patch. Next time you work on
>> this driver, add the cleanups to it. But on its own, it's only churn.
> 
> While you are technically right, it's only churn I think we need this
> for code consistency and cleanup.

Get real. We really don't. Two blank lines do not lead to a
misinterpretation of the code, do not get in the way of normal
maintenance, do not lead to *any* practical issue.

What's next? Cc stable?

> Even if we fix this when we work on the driver we still need
> to make the cleanup in a separate patch.

Neither. As well as removing blank lines, you could also remove the
dead code in this driver. That would be a good cleanup. You could
also have a look at what feels like a potential deadlock in the
mask/unmask callbacks. That'd be a good thing to do too.

Certainly more useful than just dropping two blank lines.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
