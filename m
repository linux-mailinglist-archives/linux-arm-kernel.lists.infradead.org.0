Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83BD4C3F3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 01:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E61wWjKcbf4HEogQE7logJZvRFhMDzVUwyTGKpLZREo=; b=RWkHkXIgYYRlh4
	mSvC1H8k9IrC1EipJ5sfnujsbrRxDVl1zMsQFbvklsk57On5STkreb44MHoRvlM8bMA2HeFDt61Qq
	w8HPzTpt6OnzrEt2FN8cHouuwodZGtoMHoNW+ZUyjtLOlzSYBo/NK2AOS86zxvHR3QyRhngTey/fq
	d6fULWVcifF1xi3Q1sIEXShkQ66wWbFYZxpBT2Qkq0lCIFKNauYcUtesHAppJqBYo2EzG4W/pmbqL
	krDHIQzbaLqVTggu3bZkhPpKSHjgMxoUboZulmk/+RTJ3tuDiHLzylWsg4eKbi6GuQBY5ToTUA6mM
	+3vwcAn4wPW3ci6btJ5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdjfG-00087S-9X; Wed, 19 Jun 2019 23:06:50 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdjf2-00086z-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 23:06:37 +0000
Received: by mail-lf1-x141.google.com with SMTP id z15so879311lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 16:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w4Y7npehQHkGR9ZyNktH8C9uASvmvTBedkhISQvIZ9k=;
 b=Fcq06cp1h0q0diFEOmLP4HyLdcxpztf2pxFD7eZk/FNLGFoGQTR4vk1WfwUcVVGg0U
 RXFC+R7dG4dBu/zzP0vxDcz8NTxCOuk3Sfzg34d7M7UEfPUv51Ux3y64hYB//jKOAC8d
 XWq3CsV6aiAEOJGXfRMDLksIW/5n6j6y+SGDa5AtOpaEMv29nvp7RR1vTkspX3HRo3Lp
 NxzF/ce2xuBrsI174TNraQqpUOm/+POA/I4WDKalmtHKdLMY8d+SnrmwYPWF8UQ67H1A
 DoJ5i7aDG57ie0lmXDqyc8J5ORmgP6ulKNmmrTlWoHdo1qeDz11lB1RuadmxdxEF4kOJ
 iuDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w4Y7npehQHkGR9ZyNktH8C9uASvmvTBedkhISQvIZ9k=;
 b=nZlSSTWmvr8TM8/qUFR1krcS8x3nE/FhCFp36v8MJBKn/zxdiypAIruPBz0bqz/x/4
 gLQ7CGFQLIX/RK8cck0HfvJpfF/PPibuIa8JiALeL/dwJNdIAqXuBOrZhayr8dXeCCeT
 Ypk0SJUBqKwWS6WvtZ8UH7EZhnn0PZBSalFPcHb6BlviRucyUSBMSlwFLdYGaIdy9ti2
 DEkHN/CNxtn1TkAXT4Ck+2U0c+26HmVlFPG2ApdKbeZLuBpPItjvckQQAcZvntoG0GjD
 4czqrSiFKf4fk0h6KbzW/kOaQw4brRWuc7beUjopGFYHOww4zGCY/8rf0meaCC+n105W
 JolA==
X-Gm-Message-State: APjAAAXSojFX7zYEBHu7XOjbYT3i+l3/7gqy1Si/hVMDc8sYHiKRHTy4
 eFBxbYQoqE1hmsdeqk8EdIA1JMXa6OWuHZo6UQc=
X-Google-Smtp-Source: APXvYqz5qNp7bQl4P1c94Sxwx1VfLG74iLG2769221cs07F85IKx7mRaN69wQlVZ6VkqJUxd0h7cL2WMAyZrkdMu8E8=
X-Received: by 2002:a19:5044:: with SMTP id z4mr3011881lfj.80.1560985594396;
 Wed, 19 Jun 2019 16:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
 <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
In-Reply-To: <20190619223727.zgfypqxg7bpxtduh@shell.armlinux.org.uk>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 19 Jun 2019 20:06:49 -0300
Message-ID: <CAOMZO5BfbGoh6N42xsv2WBz3cHot8VOqa-4rx0Y8YczC2Xzz0g@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_160636_712816_202593C0 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Jun 19, 2019 at 7:37 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Jun 19, 2019 at 11:35:58PM +0100, Russell King wrote:
> > A change to the AT803x driver fixed the handling of the phy interface
> > mode, but this breaks all platforms that use "rgmii" as the mode in
> > their DT.  Fix the Solidrun platforms.
> >
> > Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
>
> Note that without this, SolidRun Hummingboard and Cubox-i platforms
> have no working ethernet with at least 5.1 kernels, which is a
> regression.

Commit 0672d22a1924 ("ARM: dts: imx: Fix the AR803X phy-mode") fixes
this issue in mainline and it has already been applied to the 5.1
stable tree as well.

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
