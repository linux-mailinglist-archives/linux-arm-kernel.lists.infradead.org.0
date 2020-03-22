Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23C618EBCD
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 20:08:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqamSOQ14y0BO3/rkncuH9yxBC2TaH8HrWg+/PBM8ZY=; b=dxREdKGocM9Vdu
	eVIXPzHFSgm38kjKV6geyxKApX2L/UGLmzkeq+4Ef6fgUiaOrNEjwDrXXTYXm6E80XupUIcWjq8bl
	BqqUUHtoovGAdip/XxD08dyuS+55/8hLqcGcoFXkbxUg5Ysmd/HaaNR9QyD4hHKH8tyaIJRZ9Dm4a
	Vu9WpypQHQIFaZpOBM25ei5iULFQ12BCHVxBfhnQCy5VNllRmBdC4EI9KoMjgognyoamOx9D37fws
	VD15KemFpRqTrelW8El502yA74W5sNi+PdfhbE5O2wiTHOAcVZZunwf7DPFvye9Nw4KTI7YV8fmeS
	6dnhPWZwlDn21yZS6cVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG5xa-0006Ui-F1; Sun, 22 Mar 2020 19:08:34 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG5xQ-0006Tx-QK
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 19:08:26 +0000
Received: by mail-wr1-x444.google.com with SMTP id h9so14130897wrc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 12:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QHveMlauqRVMu8fl2+LENgr9/RI30rs1DmCAR9b9ZtA=;
 b=a/rTj5IBVyi1Esfi+59moPOqgxDRn0pnSpMeVKAHeWnJBWIOw215Tbj3bTQ3COnd/9
 1bwRyXqehZfqBx82HZcPTIlORHRcaoNpr3jgBFAwGPgq7lahDjd7PK9seS1gwJxDH/vC
 eHA6yiSjV+g4jd6RS0SlsKLzmgf9fEkeOqOOJNIBwmb3dp1PVXkvs42TGHmdvLXlwiRj
 OlZWsTBy68iWLEgHRlSHypMIJv4ZXIxwMNgi3YmIPamvb4hQASKofbo+mez9rwoGj8cX
 +2tUiA9iM7/0Kcc6VR2uuJmfU8Wk4aN5PMNvTDAcSQNBKKgiuYzy65Jf2/rIhBI30UPG
 x2ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QHveMlauqRVMu8fl2+LENgr9/RI30rs1DmCAR9b9ZtA=;
 b=hHyxBth1UVvEbaqS9qh7+5k5LsgKBtD1O7oNXqJt3ReaZPnhRiIc9CQGtnyPO9pG1j
 xVoNOMDkw8k+Il4fiytz9gAgNoDStRc3E0Z7pDFJVW2foQFnMAJp9kKmiNaYozLn/vvm
 BE2D+Vfm+T2H0tm4QuonZaf4orm1TEd6BFkC2SLvpOWcMBfK1cDlH9LRTUIyc25LlHeM
 trOqHdzQJdWzml8DAP9NVDfiwPowKEqu8UEQAJpRAJRVmRUspLBhFhaD5BpKiZbo0wzQ
 gX4RffhzVyQXDatE343yTvvcQUuOZ7gQU7QW30Bbn+oAv7JKEAHkfPD33lV12Uf6VqBb
 mIaA==
X-Gm-Message-State: ANhLgQ11Juj9PjEYmUe4DqtDlL/AJJsoyTcZOIrPzyf1U2KYFzQ1I2SJ
 McrEQrQkCXXevq57a+8Y7Dy2xmz9YXfyV5O2d9k=
X-Google-Smtp-Source: ADFU+vufzdDGsWfmALtU7fqgzxBUoCKg4jVeDJkFur2D1C18OFChZZtkuR+40P2N/qETqdOTsNxxvLSe/vyWu+3IkW8=
X-Received: by 2002:adf:a3db:: with SMTP id m27mr25765703wrb.350.1584904103034; 
 Sun, 22 Mar 2020 12:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <1584421001-2647-1-git-send-email-Anson.Huang@nxp.com>
 <86mu89zqce.wl-maz@kernel.org>
In-Reply-To: <86mu89zqce.wl-maz@kernel.org>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 22 Mar 2020 21:08:11 +0200
Message-ID: <CAEnQRZCcmaU91Ep5kVesaGPsrvujq5mznk2SZccmZG9rbSCG0w@mail.gmail.com>
Subject: Re: [PATCH] irqchip: irq-imx-gpcv2: Remove unnecessary blank lines
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_120824_880364_EE9F4E6E 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [daniel.baluta[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 21, 2020 at 5:22 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Tue, 17 Mar 2020 04:56:41 +0000,
> Anson Huang <Anson.Huang@nxp.com> wrote:
> >
> > Remove unnecessary blank lines for cleanup.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/irqchip/irq-imx-gpcv2.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/irqchip/irq-imx-gpcv2.c b/drivers/irqchip/irq-imx-gpcv2.c
> > index 4f74c15..4f11b9b 100644
> > --- a/drivers/irqchip/irq-imx-gpcv2.c
> > +++ b/drivers/irqchip/irq-imx-gpcv2.c
> > @@ -17,7 +17,6 @@
> >  #define GPC_IMR1_CORE2               0x1c0
> >  #define GPC_IMR1_CORE3               0x1d0
> >
> > -
> >  struct gpcv2_irqchip_data {
> >       struct raw_spinlock     rlock;
> >       void __iomem            *gpc_base;
> > @@ -287,6 +286,5 @@ static int __init imx_gpcv2_irqchip_init(struct device_node *node,
> >       of_node_clear_flag(node, OF_POPULATED);
> >       return 0;
> >  }
> > -
> >  IRQCHIP_DECLARE(imx_gpcv2_imx7d, "fsl,imx7d-gpc", imx_gpcv2_irqchip_init);
> >  IRQCHIP_DECLARE(imx_gpcv2_imx8mq, "fsl,imx8mq-gpc", imx_gpcv2_irqchip_init);
>
> I honestly don't think this deserves a patch. Next time you work on
> this driver, add the cleanups to it. But on its own, it's only churn.

While you are technically right, it's only churn I think we need this
for code consistency and cleanup.

Even if we fix this when we work on the driver we still need
to make the cleanup in a separate patch.

My 2 cents,
Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
