Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55DE140F01
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:32:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zzRYQ1QHI1FZ4qjMAFzO18iU0K3vCHig4gpi67a+rLE=; b=A3w0iqP8ecLASU
	pzrBLPiA8pZGPNg12M839B+31yMkeqo8NvhMKoA949hzXqBo/hCxFhwRN5CdSU4w6uThcXg/pdtaz
	menQp2r1PdlZzaJ8HQukkt+dr7VdLO2HMikioorBPbaoA/5zr2TS3Szjzdg0Ce1zU15pBsTWbD4k6
	Ik9akxmblVCJsUdfgCIlrfWTkLxC1K2PgfIm3uiHb8UGVbow1LodDWTT5mp9CurKx6mOuSzTT2rUv
	oE81DRx4yaMOZr7YuT66eON1dGaxVlOWWitEXw8N4GYX2g3fqE1bfr2njIxp+Lj5JJHpjFK4AxjOp
	R8H5lPL4plXPmbm9qJGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUXx-0008U5-T9; Fri, 17 Jan 2020 16:32:33 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUXm-0008Sk-CL; Fri, 17 Jan 2020 16:32:23 +0000
Received: by mail-ot1-f67.google.com with SMTP id k14so23057793otn.4;
 Fri, 17 Jan 2020 08:32:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/iHqFPp4gfD5oSMGWpTJjMZQbTl3nDjXtKJqZJn6JG8=;
 b=QdnOfZ8GO8tSAoqs8jkU6vQtYX0CZVFE8Z4AhhmhyoarR8jMeewXYTTAq2K9nG8vHe
 X8qI+Byqv/gsGdEnMd0f7yVJa1hkB17zY2jRXQ51Cspe5+D2DJdtzD3fnX7TudUdDzSy
 q1W4EHEiE3y2/133IUGKwGmA+Oc5BdRyjYXElwO4W/wQnviT86hVcvnPu4s9/n/3PsSx
 /InXk9oSl7zHK4ut7HN44RIi+3mj+u3HHsk8BRBCJ7dsiA01FqrbQDnSNPyLEyvBfp5J
 iFVnCGQMYM24wP3Vg5W5lol5ag5tNm8aJ/tw7G2C0+OP6O+gdMKYJ6xvcyz8OWvvqY8n
 DuxA==
X-Gm-Message-State: APjAAAV1SzedhH8oDkbx2QnbN2qFjdSHLuNSuNZe6zCsEJldeVE2fyBS
 jbHPxzv1onbtODT0owEEGLdUyug=
X-Google-Smtp-Source: APXvYqxVhhZJDntpTYO8RXp+1uUVt/4zWCDaLKGWVf9eFo48zxLv0olgodVWAXp81LRL5u91AiObWw==
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr6668144oto.207.1579278741150; 
 Fri, 17 Jan 2020 08:32:21 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d7sm7928734oic.46.2020.01.17.08.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 08:32:20 -0800 (PST)
Received: (nullmailer pid 26008 invoked by uid 1000);
 Fri, 17 Jan 2020 16:32:19 -0000
Date: Fri, 17 Jan 2020 10:32:19 -0600
From: Rob Herring <robh@kernel.org>
To: Hanjie Lin <hanjie.lin@amlogic.com>
Subject: Re: [PATCH v6 2/6] dt-bindings: usb: dwc3: Add the Amlogic A1 Family
 DWC3 Glue Bindings
Message-ID: <20200117163219.GA25603@bogus>
References: <1579220504-110067-1-git-send-email-hanjie.lin@amlogic.com>
 <1579220504-110067-3-git-send-email-hanjie.lin@amlogic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579220504-110067-3-git-send-email-hanjie.lin@amlogic.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_083222_420755_A494F205 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-usb@vger.kernel.org,
 Yue Wang <yue.wang@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jian Hu <jian.hu@amlogic.com>, Liang Yang <liang.yang@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Kevin Hilman <khilman@baylibre.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 Jan 2020 08:21:40 +0800, Hanjie Lin wrote:
> The Amlogic A1 SoC Family embeds 1 USB Controllers:
>  - a DWC3 IP configured as Host for USB2 and USB3
> 
> A glue connects the controllers to the USB2 PHY of A1 SoC.
> 
> Signed-off-by: Yue Wang <yue.wang@amlogic.com>
> Signed-off-by: Hanjie Lin <hanjie.lin@amlogic.com>
> ---
>  .../bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml  | 38 ++++++++++++++++++++--
>  1 file changed, 35 insertions(+), 3 deletions(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.yaml:  while parsing a block mapping
  in "<unicode string>", line 107, column 7
did not find expected key
  in "<unicode string>", line 111, column 8
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/usb/amlogic,meson-g12a-usb-ctrl.example.dts] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1224563
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
