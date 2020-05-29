Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 381A31E8358
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vu8gGti2eIVDdPf0CfhHzcVLeKbAT6laS86cYnmDWHU=; b=oep1tof8F5E6T1
	ulcAWWhfBdD7SQDxAANaIUnAv2JDSgNvspJ88tc7+bFBnDR+7j4BCfeTlkVCqt2cuBqhl2u6h4M8Q
	2KW6p2VElQaxG00xXDWr2TsyyiQ0RUeR6ERxsMiTWrMnb/O6Z6oDPBkBtnpV4Yi4itEKMZgbe6Oxh
	26I9DNT99IAoQr/FKhTw48CZJ77rIqQbrNUaaJ+oOw3EV42nMYler0zwRixBIQNdAG9YweWi/NcGY
	+B7bQ8jz1ae8uE6LsCUEug5dZzgNk48OkhyioOZRyrnWkIHZjiudOnUT1yMjRQBqC3yzTSkK+Pl7L
	ahhtxOKvmhUOAG9isRsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeheS-00081v-Vl; Fri, 29 May 2020 16:14:32 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeheF-000803-4T; Fri, 29 May 2020 16:14:20 +0000
Received: by mail-il1-f195.google.com with SMTP id h3so2984601ilh.13;
 Fri, 29 May 2020 09:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6nfDO8tXYNOep2brkAvXF5zbOelR4aGWgBOnUITKsRY=;
 b=f0ZtBiyvDdiPgJuDPl2LGMuSOvn7QjC5+bxV5DC/v92J6/PjLRs2kCfaAKvfHNGnNU
 7JAm3RvyfguXMDSQ42xNxs5CqFNNrRwSR14dN3v908I8GmlR0tKKheyXf0h2h3IRVHLt
 5m1H92vKcXcBGrEO3RYHzpuivRf6w/X/JQYfpiwXEbR8iwB/jmWDwuYzBtLKkDyLZy6f
 ZAGb6TY88ucWjafJEcygaa9Kxc3P4omTz0vM0R7GSVTQzPF5LbWfYQ8aG15Cx088PAy6
 j9wxX6rWgaGIBLm+leIa5wInz5AlvdfiKzl15BQ4dw0b7nNud/JnbvF8oJsPaf0cubxu
 wWRA==
X-Gm-Message-State: AOAM531Qw1qX2oDdV3TQawKahtOFMInQd5PVv+WgA4XZcUNVzPmqWc2l
 cgIvHpDacFlmfhmVOHaemI0lrmhrzQ==
X-Google-Smtp-Source: ABdhPJzuA2ktlJSd7UpbtEyBcgxYph+D4vfBmHw7TqTGpIjDXq5GoyDnI8okzTy3qfkjCk3IZhpDPA==
X-Received: by 2002:a92:c90a:: with SMTP id t10mr8539976ilp.39.1590768857895; 
 Fri, 29 May 2020 09:14:17 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id 129sm3806916ioy.0.2020.05.29.09.14.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 09:14:16 -0700 (PDT)
Received: (nullmailer pid 2487571 invoked by uid 1000);
 Fri, 29 May 2020 16:14:15 -0000
Date: Fri, 29 May 2020 10:14:15 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Subject: Re: [PATCH v2 1/3] media: dt-bindings: media: Document Rockchip CIF
 bindings
Message-ID: <20200529161415.GA2486902@bogus>
References: <20200529130405.929429-1-maxime.chevallier@bootlin.com>
 <20200529130405.929429-2-maxime.chevallier@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529130405.929429-2-maxime.chevallier@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_091419_180788_FC0B4A52 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 29 May 2020 15:04:03 +0200, Maxime Chevallier wrote:
> Add a documentation for the Rockchip Camera Interface controller
> binding.
> 
> This controller can be found on platforms such as the PX30 or the
> RK3288, the PX30 being the only platform supported so far.
> 
> Signed-off-by: Maxime Chevallier <maxime.chevallier@bootlin.com>
> ---
> 
> Changes since V1
> 
>  - Updated the clock and reset names
>  - Added missing includes in the example, so that the make dt_binding_check passes
> 
>  .../bindings/media/rockchip-cif.yaml          | 100 ++++++++++++++++++
>  1 file changed, 100 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-cif.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names: Additional items are not allowed ('cif_out' was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:0: 'aclk' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:1: 'hclkf' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names:2: 'pclkin' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clock-names: ['aclk_cif', 'hclk_cif', 'pclk_cif', 'cif_out'] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clocks: Additional items are not allowed ([4294967295, 52] was unexpected)
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: clocks: [[4294967295, 179], [4294967295, 249], [4294967295, 352], [4294967295, 52]] is too long
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:0: 'axi' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:1: 'ahb' was expected
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/media/rockchip-cif.example.dt.yaml: cif@ff490000: reset-names:2: 'pclkin' was expected

See https://patchwork.ozlabs.org/patch/1300680

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
