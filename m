Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB78180751
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 19:48:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OsuwzAq7witolfTb1yPzlyxtFAS57VmQYl33rXD39Ow=; b=jR+PDIl2sgL18E
	QylJU/QYpW9uDDoYzXzKJb9ZInehBhw8w5ZUdXBIPeyoR9Gutr63RgMhAXHnl2VMRTZ+6POwGSVlp
	NZRMmcwJaS93EOOcetjndXTny2gxw7yrai6m1irkIh9tUrD3ZwiY4ELxQ/KTlCur2v7wRJBS3nb81
	WZ0CyJBj1uN143D7IJenVa2DpYL9Xr4Nvtk+YsDikE3tv7gjEIH1euE3SUXbacTh9tFUZu6zm1mk3
	bXBGgwdLzwsFzQ4HYmbSjIBydwrbsbICD0VodJVWTr86wqM26+ivFCZvnBGprfgkL2dBXsTFAQwSE
	mo6qoYoowWiFDnZdukCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBjv2-0006L7-BI; Tue, 10 Mar 2020 18:47:56 +0000
Received: from mail-ot1-f51.google.com ([209.85.210.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBjlZ-0003PC-TR; Tue, 10 Mar 2020 18:38:12 +0000
Received: by mail-ot1-f51.google.com with SMTP id b3so14214241otp.4;
 Tue, 10 Mar 2020 11:38:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=chsItn4WiJE7pzsGnhBJBMqcVhnfvQYQFixkTol5ZYk=;
 b=DoaMkkWy4CTos3H0DwnFCo+p6h79waS/SnsIQGFjj888BhcBWPB2H+ZQCy56xopcQI
 KDInXS3Eo3aSQ9eE8xJRqJvUcOAnuL5rOQGKVRw0slqgkb1dz5JRUcoyoRmsVwctSTlY
 ILc/ZWpSIpDIxQCxwqm8VeqFBitKZyX9VjvULVBQgM7MWU2dQIxRSi/Ui56gOXWelYUG
 6yHcCKOfs2Mm1femU4EaQbwJLxud3bRfINyulsGMIDgPMZFhOAXLEbWnOWIdL1b3i9iG
 fDjQRr/fKDIolAre7W041imoR1bdty+eUAgXffNTktD2/8ARqq5BXjtkpFnkMpNNemMd
 jYEQ==
X-Gm-Message-State: ANhLgQ3VNxXDXjDS0kprCcftXA7gheihrCb14AqtqJe6N3+eApGf7wsB
 1FEGQA6Vjo5j1dGIPoB/8g==
X-Google-Smtp-Source: ADFU+vsSy3ToLL01JhINM1D/WNZOi2tkQmSVGZYt2683m4vdKUspzQPGZvwOiv6OZuKRB8eB55EM0g==
X-Received: by 2002:a05:6830:1d6f:: with SMTP id
 l15mr17301226oti.299.1583865488168; 
 Tue, 10 Mar 2020 11:38:08 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s83sm4446188oif.33.2020.03.10.11.38.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 11:38:06 -0700 (PDT)
Received: (nullmailer pid 25739 invoked by uid 1000);
 Tue, 10 Mar 2020 18:38:05 -0000
Date: Tue, 10 Mar 2020 13:38:05 -0500
From: Rob Herring <robh@kernel.org>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200310183805.GA24623@bogus>
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310134603.30260-2-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_113810_033270_2D71F620 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.51 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 andriy.shevchenko@linux.intel.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Robert Foss <robert.foss@linaro.org>,
 Tomasz Figa <tfiga@chromium.org>, ben.kao@intel.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, matthias.bgg@gmail.com, mchehab@kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 14:46:01 +0100, Robert Foss wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> This patch adds documentation of device tree in YAML schema for the
> OV8856 CMOS image sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v3:
>   * robher: Fix syntax error
>   * robher: Removed maxItems
>   * Fixes yaml 'make dt-binding-check' errors
> 
> - Changes since v2:
>   Fixes comments from from Andy, Tomasz, Sakari, Rob.
>   * Convert text documentation to YAML schema.
> 
> - Changes since v1:
>   Fixes comments from Sakari, Tomasz
>   * Add clock-frequency and link-frequencies in DT
> 
>  .../devicetree/bindings/media/i2c/ov8856.yaml | 129 ++++++++++++++++++
>  MAINTAINERS                                   |   1 +
>  2 files changed, 130 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/media/i2c/ov8856.example.dts:26.28-29 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/bindings/media/i2c/ov8856.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/media/i2c/ov8856.example.dt.yaml] Error 1
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1252173
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
