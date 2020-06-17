Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878961FD69D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:03:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRHSp11mH49qzDRABaYjDbAlvTTPJe+1/x9YFU5ZLXs=; b=YnCgq33EzTOiOg
	3VC7/YvMpt3U3WN+YGl03O2mJDnrCY3343qUZ+w96ccrcu9AKPBhKMq1Ly04MQS1G0OmalHRNkteq
	+39WyqlWHrqeRxLK/RGPu3GnvyXguhgYI8eUzeP0GfenbvKPG0FAgbf4pW56pH7eB/bf8NMFgGLAr
	RWT7HNQslPwxO/q5RYCnusUvIqxyWcV+Z7TiGE4wVnOpocslLmU8JWOV7kgSu4iljqG/uQl1oYIWA
	976Yls/5eVXljjyVRfNa12On8pbcXPGo8pilgN4BBaItloybFM7fg15mxMH+j1CdjfBwjRH/iM1lt
	I1CMBH/mMTTHpaJE8qBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfDC-0004rX-9J; Wed, 17 Jun 2020 21:03:10 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfCt-0004pa-Um; Wed, 17 Jun 2020 21:02:57 +0000
Received: by mail-io1-f67.google.com with SMTP id m81so4638446ioa.1;
 Wed, 17 Jun 2020 14:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xFFFGVbhSch5Pt2svn8MimZRF1LlF10vkrqi5t3dW9I=;
 b=tn4Hw2D+/uV5tAYKwqZPqAIieXjs16AQNT/fVFE0iEBso4WOUKShh4IfTz+fMxxJPd
 sU4SdzUx/U03HSvaEBXtSmDANczHzPy9TfOzOFSRlgiQ0SQ5Af2fJsfhXWkeOLHhRreB
 TgwPDVYFOfXWFXS2uzTTAHToLrjlHiuLThJvOcp7K70F7rGxpbtJsQ2x3vK6cvKC9s8a
 MhgRkLr21XrNAqDoeuKF4giQmJGxNNDUgavcEGQhq7IBBdPxDuV38M5a4edkhdLakySf
 TeI4OsW5+WRkWtT6/5rGYwHoj4St7nEaOKoOaIS5owApYiRrzn++e60qTdBSrCljo0LN
 Qxuw==
X-Gm-Message-State: AOAM531Yt6g9wlb/xZdGrYspZKjtnulZU9lj16MSES+tIz8H8Knkn/pd
 OL3lL4tabWzVXwOan+rR8w==
X-Google-Smtp-Source: ABdhPJyXhGFVD9efkJSsHu1gz54q5MCenhejfFdnSe9K2byNsnC5c7h0Xj90NBIYtbqHKRUf3MoPIg==
X-Received: by 2002:a6b:9054:: with SMTP id s81mr1423659iod.122.1592427770922; 
 Wed, 17 Jun 2020 14:02:50 -0700 (PDT)
Received: from xps15 ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id f11sm398301ilf.53.2020.06.17.14.02.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 14:02:50 -0700 (PDT)
Received: (nullmailer pid 2809826 invoked by uid 1000);
 Wed, 17 Jun 2020 21:02:47 -0000
Date: Wed, 17 Jun 2020 15:02:47 -0600
From: Rob Herring <robh@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH v6 4/4] dt-bindings: mmc: mediatek: Add document for mt6779
Message-ID: <20200617210247.GA2800817@bogus>
References: <1591665502-6573-1-git-send-email-chun-hung.wu@mediatek.com>
 <1591665502-6573-5-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591665502-6573-5-git-send-email-chun-hung.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_140255_963310_8C40BAA9 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, wsd_upstream@mediatek.com,
 linux-mmc@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Al Cooper <alcooperx@gmail.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Florian Fainelli <f.fainelli@gmail.com>,
 Michal Simek <michal.simek@xilinx.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Chaotian Jing <chaotian.jing@mediatek.com>, kernel-team@android.com,
 Pan Bian <bianpan2016@163.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm@vger.kernel.org, mirq-linux@rere.qmqm.pl,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 09:18:22AM +0800, Chun-Hung Wu wrote:
> Add compatible node for mt6779 mmc and HW cmdq selection
> node "mediatek,cqhci".
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.txt b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> index 8a532f4..d4d20b9 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> @@ -12,6 +12,7 @@ Required properties:
>  	"mediatek,mt8173-mmc": for mmc host ip compatible with mt8173
>  	"mediatek,mt8183-mmc": for mmc host ip compatible with mt8183
>  	"mediatek,mt8516-mmc": for mmc host ip compatible with mt8516
> +	"mediatek,mt6779-mmc": for mmc host ip compatible with mt6779
>  	"mediatek,mt2701-mmc": for mmc host ip compatible with mt2701
>  	"mediatek,mt2712-mmc": for mmc host ip compatible with mt2712
>  	"mediatek,mt7622-mmc": for MT7622 SoC
> @@ -49,6 +50,9 @@ Optional properties:
>  		     error caused by stop clock(fifo full)
>  		     Valid range = [0:0x7]. if not present, default value is 0.
>  		     applied to compatible "mediatek,mt2701-mmc".
> +- mediatek,cqhci: HW cmdq selection
> +		  If present, hw command queue is enabled.
> +		  If not present, hw command queue is disabled.

'supports-cqe' does the same thing.

>  
>  Examples:
>  mmc0: mmc@11230000 {
> -- 
> 1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
