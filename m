Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0F215F8C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:33:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9iXO7XZeVnkvsopHuITEIah4KbR+XEkNLJ+w1YI49T8=; b=ohh5/bUKEl5Br8
	oFJS38Z2EVqkksKyy2IuEWlRpAdzV2kxerYLnaV3JkVKsgLci28xJusfrNZhvHhb7q194/u3Frh5K
	46EIzRtuxP3/nsiAxRTQ1GmSMpYHJ9aVx9o+kk8X1ca0ZIQtbPyVthTnYFpdinWKH32q43A+eZ0Qj
	yiiexs9mKr+vvbTG/+kbiDS8Z3J1Wi0acKctAgvpeZjfR4EGwk2RJccEeTJ3TJzGJnvu/l+iDRkW0
	AIDQXdzdLHYZUR9Lytqw/qcbpL3/7EetVoPYbtWfTHVE/qSIbZUGcnFVNHKdD6ZxjWU2YjDkcJJjs
	YwswF/44W0TE90Hplpig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ia1-0007hA-GA; Fri, 14 Feb 2020 21:32:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2iZf-0007Ze-Tn
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:32:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id r14so7698877lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 13:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=np/+CHub7b4xrNqQ++17moPhUZmzbtSmWAE2SuSfLfA=;
 b=B+3D3Fr9fp2L8JIlyYjiARCg+VUwJKh8pcltjW9zgfjJreA561DuChf5aFwk+yToN5
 taetHjw1m38ZTyDTzBxqPvATUeqHw9P2TyoN9nsLMAi+agsYeszeGgg7dLHZCNTHjBhr
 o9HgVZ6dfNgYfMub7WkAJ8MEakqA0jU61cIiw1Ob+bHF8tiGjdJwobVV4GERQVylGJ2P
 RttRcRX51aGMcPa2ZGE/51xSCZtlKcBFWLox8y2iZPZnvGy8j7I1ebmr5pdZ4VfKOw4d
 38roiq1My6HBHbJoJwg3vKrbGElAB6TowKexk9NvCM8z4AAGBuY8iUwq75HCnWRetGeq
 MKUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=np/+CHub7b4xrNqQ++17moPhUZmzbtSmWAE2SuSfLfA=;
 b=HynUASbDimU4wXuN8DKeQ3ilBtjf07FPs3T9nZHwQlL2sYasRY6cEdUMwblaykkbkR
 RHXhhu/+4d5OLzKUiWIUAquWA2yENPyKEZOxe9ESVwe2Yx8l0zOCV6/cBYyv9CQkHsuR
 S0QnUw3iCIplmFr6C/QE5FoPyQSQvQfUlSWG8856BN0sftswVP1IRb+HsgMPSNbfCZlG
 t2VfoZCO4ZyctBn+/nuwYnYA3v5zeLZM9Mqh8XPIn+4RtDbuC4jZZEX1cpHZ32Mle82t
 ckBKJZzdnMBZXlewZmSQsvWFbSKaRZaIWNkNdX0nzh243lCe/SPr73pmX0bSe7K6Y2gZ
 6oKg==
X-Gm-Message-State: APjAAAUwqGUci+rAc4UEYPhIUdJ6cpExbRA4dYzJuNYPDkQRJb88wUmL
 zEZxE/Gx925eBYvCZmpaxU0=
X-Google-Smtp-Source: APXvYqxYoqJHHcd8WPhpV5wl6PeAaiGp/qlJKawsyE6qvH17IIwViq6kgR8pFjFMNE4SMneeLHjbdw==
X-Received: by 2002:ac2:5f59:: with SMTP id 25mr2557234lfz.193.1581715954023; 
 Fri, 14 Feb 2020 13:32:34 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id r15sm4083374ljh.11.2020.02.14.13.32.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 13:32:33 -0800 (PST)
Date: Fri, 14 Feb 2020 23:32:31 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Message-ID: <20200214213231.GA6583@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
 <20200212222355.17141-2-andrey.lebedev@gmail.com>
 <20200213094304.hf3glhgmquypxpyf@gilmour.lan>
 <20200213200823.GA28336@kedthinkpad>
 <20200214075218.huxdhmd4qfoakat2@gilmour.lan>
 <20200214084358.GA25266@kedthinkpad>
 <20200214085351.2whnfyulrmyex2va@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200214085351.2whnfyulrmyex2va@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_133236_012139_B4BFA052 
X-CRM114-Status: GOOD (  30.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrey Lebedev <andrey@lebedev.lt>, wens@csie.org, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 09:53:51AM +0100, Maxime Ripard wrote:
> On Fri, Feb 14, 2020 at 10:43:58AM +0200, Andrey Lebedev wrote:
> > On Fri, Feb 14, 2020 at 08:52:18AM +0100, Maxime Ripard wrote:
> > > > > This will create a spurious warning message for TCON1, since we
> > > > > adjusted the driver to tell it supports LVDS, but there's no LVDS
> > > > > reset line, so we need to make it finer grained.
> > > >
> > > > Yes, I can attribute two of the messages in my dmesg log [1] to this
> > > > ("Missing LVDS properties" and "LVDS output disabled". "sun4i-tcon
> > > > 1c0d000.lcd-controller" is indeed tcon1). And yes, I can see how they
> > > > can be confusing to someone.
> > > >
> > > > I'd need some pointers on how to deal with that though (if we want to do
> > > > it in this scope).
> > >
> > > Like I was mentionning, you could introduce a new compatible for each
> > > TCON (tcon0 and tcon1) and only set the support_lvds flag for tcon0
> >
> > Can you give me an idea how that compatible might look like?
> >
> > 		tcon0: lcd-controller@1c0c000 {
> > 			compatible = "allwinner,sun7i-a20-tcon", "allwinner,lvds";
> >
> > or
> >
> > 		tcon0: lcd-controller@1c0c000 {
> > 			compatible = "allwinner,sun7i-a20-tcon", "allwinner,tcon0";
> >
> > ? Or something completely different?
> 
> Something like
> 
> &tcon0 {
>     compatible = "allwinner,sun7i-a20-tcon0", "allwinner,sun7i-a20-tcon";
> };
> 
> &tcon1 {
>     compatible = "allwinner,sun7i-a20-tcon1", "allwinner,sun7i-a20-tcon";
> };
> 

Hi Maxime, here is what I came up with, please take a look. If the
approach is right, I'll split it up and include into the patch set.

From f3e45c958a9551a52ac26435785bdb572e54d8db Mon Sep 17 00:00:00 2001
From: Andrey Lebedev <andrey@lebedev.lt>
Date: Fri, 14 Feb 2020 23:21:59 +0200
Subject: [PATCH] Mark tcon0 to be the only tcon capable of LVDS on sun7i-a20

This allows to avoid warnings about reset line not provided for tcon1.

Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
---
 arch/arm/boot/dts/sun7i-a20.dtsi   |  2 +-
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 22 +++++++++++++++++++++-
 drivers/gpu/drm/sun4i/sun4i_tcon.h |  2 ++
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 3b3c366a2bee..bab59fc4d9b1 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -405,7 +405,7 @@
 		};
 
 		tcon0: lcd-controller@1c0c000 {
-			compatible = "allwinner,sun7i-a20-tcon";
+			compatible = "allwinner,sun7i-a20-tcon0", "allwinner,sun7i-a20-tcon";
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 800a9bd86112..cb2040aec436 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1107,6 +1107,25 @@ static struct sunxi_engine *sun4i_tcon_find_engine(struct sun4i_drv *drv,
 	return sun4i_tcon_find_engine_traverse(drv, node, 0);
 }
 
+/*
+ * Check if given tcon supports LVDS
+ *
+ * Some of the sunxi SoC variants contain several timing controllers, but only
+ * one of them can be used to drive LVDS screen. In this case such tcon is
+ * identified in respective quirks struct: lvds_compatible_tcon property will
+ * hold "compatible" string of the tcon, that supports LVDS.
+ *
+ * If lvds_compatible_tcon is not set, all tcons are considered capable of
+ * driving LVDS.
+ */
+static bool sun4i_tcon_lvds_compat(struct device *dev, struct sun4i_tcon *tcon)
+{
+	if (tcon->quirks->lvds_compatible_tcon == NULL)
+		return true;
+	return of_device_is_compatible(dev->of_node,
+	                               tcon->quirks->lvds_compatible_tcon);
+}
+
 static int sun4i_tcon_bind(struct device *dev, struct device *master,
 			   void *data)
 {
@@ -1161,7 +1180,7 @@ static int sun4i_tcon_bind(struct device *dev, struct device *master,
 		return ret;
 	}
 
-	if (tcon->quirks->supports_lvds) {
+	if (tcon->quirks->supports_lvds && sun4i_tcon_lvds_compat(dev, tcon)) {
 		/*
 		 * This can only be made optional since we've had DT
 		 * nodes without the LVDS reset properties.
@@ -1481,6 +1500,7 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
 
 static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
 	.supports_lvds		= true,
+	.lvds_compatible_tcon	= "allwinner,sun7i-a20-tcon0",
 	.has_channel_0		= true,
 	.has_channel_1		= true,
 	.dclk_min_div		= 4,
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index cfbf4e6c1679..bc87d28ee341 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -235,6 +235,8 @@ struct sun4i_tcon_quirks {
 	bool	needs_de_be_mux; /* sun6i needs mux to select backend */
 	bool    needs_edp_reset; /* a80 edp reset needed for tcon0 access */
 	bool	supports_lvds;   /* Does the TCON support an LVDS output? */
+	/* "compatible" string of TCON that exclusively supports LVDS */
+	const char *lvds_compatible_tcon;
 	u8	dclk_min_div;	/* minimum divider for TCON0 DCLK */
 
 	/* callback to handle tcon muxing options */
-- 
2.20.1


-- 
Andrey Lebedev aka -.- . -.. -.. . .-.
Software engineer
Homepage: http://lebedev.lt/

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
