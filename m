Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A597F8FFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 13:52:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56ZGrENMCXzRJtq6ls+8u4JtL7+s1cLPep+d42CSO4s=; b=T708mAq8veoUBR
	hbLyHOmL++jVgjfpxC/Ks6PvY1+p/Z9FIuga7OUxyLXufyNoukGNiuMkUU3uDGQXhWjfltnlZ6uXB
	E2D5qCosRNgxmiXWfLVh/SQq30J0NGvIsgbnBTsO0gz56njBNzOy8YhGtdFpm7vYRkZbfEFhKdkQx
	h7YkJnmwzpsOrx+uPNyaSQNmNZlSp9a5PO0cH1preVaj1OT4S9j7IM3RBnvIWRDTDV31t52f9NKMc
	whzvY3UWk3mM0RE6P1ywYkHvKIYFfVfIb+XIgEUtyxvWl3DHXaF/1+uZsZczzuxXTssywSY3Xq02T
	4psvprzl4y8BbGHshBwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUVeh-0004ZG-AT; Tue, 12 Nov 2019 12:52:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUVeQ-0004Rj-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 12:52:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id b3so18344263wrs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 04:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DfqsINWcKRc1MYWJGKjYzKaRLCYqntpX7pPTW5be6v8=;
 b=JZurKRZavYoqZvTK8TYEOfMp8VH/5C7m8TY48CKwOmV3hBKrhPlVg1tBdkkcFCy1w/
 BG69ixJjZDMO+yF9cpoD/91wQHlTRSpADi14ByabcYww6P6rhM8Aj5quMfYt4W8kWQzU
 MB8EE8hCBtuRI5mK4Fz6oC4KB6d0/YxN5ou/oMy1STwaW/h3AxEQBU4GVFgQHAT+nwFZ
 UhCSJH6OONjnIPksILrZAqK2Ws8/TaJWHI7pViKN2mro0ykZm44fN6VCJpsqyUYqA5SX
 FUDlUOxLAs5j3AL2NLIo+3d4vIc0davaaD68wUuR23kB0U8Z+7YsxTMba66PjtUlBI8s
 DQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DfqsINWcKRc1MYWJGKjYzKaRLCYqntpX7pPTW5be6v8=;
 b=ttgk33qoTT74UxQLfNdflGE+3YWZbBh2eI6XAbHwoaG2uUYFXcxeWbhGYmPIhBny1a
 bZAzrIcsoqtVc4NnG9CPIAgk0skhIKAub8vhji0W/nTtl88nGl749zb4DSg+9h1k6WK/
 8SVFjRXKrp8SR64Of2KhKpSIcAq4jtjc52YerCN4p3C/Yg7asc3GZwgb7Lxik2WdMpDG
 fSter2SbOixltG7Kq5P6Ug9oEKqgv3saq20gKvXyn2pxrhXom0X9j+j32qoy8zIiWQ7G
 igCg0d/joE0hibNRN1qXRU294V0QLKAAbec6wNC0sLDEp5uOSze8uBDifGrCcPkWmoCI
 vEKg==
X-Gm-Message-State: APjAAAU7UPiY32s7JvxixYlqp6kK5CMOs94ClLLpAwMGZOYTzQDocKBZ
 nb0Xxa1TE7ufv1AQ/xmTwZQIv3+6EO+I3g==
X-Google-Smtp-Source: APXvYqy8EPY5Xwbb23COpmy3eka/7lqjG/CvbJl3rvQUdnzvWRC1PyYLCax49eM+z+H5f84muASU4g==
X-Received: by 2002:adf:c402:: with SMTP id v2mr27337084wrf.323.1573563124065; 
 Tue, 12 Nov 2019 04:52:04 -0800 (PST)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id a6sm2771583wmj.1.2019.11.12.04.52.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Nov 2019 04:52:03 -0800 (PST)
Date: Tue, 12 Nov 2019 13:51:59 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v4 1/2] ARM64: dts: sun50i-h6-pine-h64: state that the DT
 supports the modelA
Message-ID: <20191112125159.GC18647@Red>
References: <1573316433-40669-1-git-send-email-clabbe@baylibre.com>
 <1573316433-40669-2-git-send-email-clabbe@baylibre.com>
 <20191112120219.GX4345@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112120219.GX4345@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_045206_435040_1C95D76E 
X-CRM114-Status: GOOD (  26.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 01:02:19PM +0100, Maxime Ripard wrote:
> Hi,
> 
> On Sat, Nov 09, 2019 at 04:20:32PM +0000, Corentin Labbe wrote:
> > The current sun50i-h6-pine-h64 DT does not specify which model (A or B)
> > it supports.
> > When this file was created, only modelA was existing, but now both model
> > exists and with the time, this DT drifted to support the model B since it is
> > the most common one.
> > Furtheremore, some part of the model A does not work with it like ethernet and
> > HDMI connector (as confirmed by Jernej on IRC).
> >
> > So it is time to settle the issue, and the easiest way was to state that
> > this DT is for model B.
> > Easiest since only a small name changes is required.
> > Doing the opposite (stating this file is for model A) will add changes (for
> > ethernet and HDMI) and so, will break too many setup.
> >
> > But as asked by the maintainer this patch state this file is for model A.
> > In the process this patch adds the missing compoments to made it work on
> > model A.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../devicetree/bindings/arm/sunxi.yaml        |  4 ++--
> >  .../boot/dts/allwinner/sun50i-h6-pine-h64.dts | 19 +++++++++++++++----
> >  2 files changed, 17 insertions(+), 6 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > index 8a1e38a1d7ab..b8ec616c2538 100644
> > --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> > +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> > @@ -599,9 +599,9 @@ properties:
> >            - const: pine64,pine64-plus
> >            - const: allwinner,sun50i-a64
> >
> > -      - description: Pine64 PineH64
> > +      - description: Pine64 PineH64 model A
> >          items:
> > -          - const: pine64,pine-h64
> > +          - const: pine64,pine-h64-modelA
> 
> You can change the description to make it more obvious if you want to,
> but changing the compatible is a no-go.
> 
> >            - const: allwinner,sun50i-h6
> >
> >        - description: Pine64 LTS
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > index 74899ede00fb..1d9afde4d3d7 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > @@ -10,8 +10,8 @@
> >  #include <dt-bindings/gpio/gpio.h>
> >
> >  / {
> > -	model = "Pine H64";
> > -	compatible = "pine64,pine-h64", "allwinner,sun50i-h6";
> > +	model = "Pine H64 model A";
> > +	compatible = "pine64,pine-h64-modelA", "allwinner,sun50i-h6";
> 
> Same thing here, changing the model is fine, the compatible isn't
> 

Hello

I will erase compatible changes in next version.

> >  	aliases {
> >  		ethernet0 = &emac;
> > @@ -22,9 +22,10 @@
> >  		stdout-path = "serial0:115200n8";
> >  	};
> >
> > -	connector {
> > +	hdmi_connector: connector {
> 
> Why do you need to add the label?
> 

For dropping the ddc-en-gpios property in model B.
If you want, I can split this line change in an extra patch.

Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
