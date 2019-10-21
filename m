Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A718DE978
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmylQ8J5xE75/09I7rhRxSYGqa4fSaG23Dvc307SdaI=; b=Onbs0Kl9roQZI7
	MoQgcB6ILyqUcla62MvTvCN9CMpOjtPlxx8oD4+Vcwoeav5P8ietSot61ZBmgEbYhnjr0Y4nxRHkc
	p3rQO/R21/UeixFQ5eCikswMN+LbqZ1oyKm3HTt9K4XPHNuyn2xXAUzq95rGZebAAl+qr0hHT27ge
	pcL7f2HOnCh1S3g1sqi1Fkh2fmc0sgOVHG6K/85tHJzKmexEuUVGAX4NcD9/SU2jwJZzqdTAnzbzm
	HF3o0EyEbyoe+KLIoj+xPCrivN1T9+xiZrDfL/lHBTAIp9UtI9KFiUgTBwDL329kiRaz0/ggajdLZ
	NvmigDxZvuSQngx6YB8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMUwl-0003cm-Rt; Mon, 21 Oct 2019 10:29:55 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMUwb-0003cM-HA
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:29:46 +0000
Received: by mail-ed1-f67.google.com with SMTP id r16so9572796edq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:29:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T2kiEHki8gQHRbb/hKRBiHJ6jSiOvzHioA7z3T6/JhE=;
 b=rmye6ywOKf5py1zx3aoWt40gkvs8nmVaJN9voXwa9b87njdYEgkf7DryVorx2EFNGI
 JsG1JkmBgvYWCi1mqQjilSKJV3Qc2YL5yzUc+/SSX0syhCiYF5n+sGo15khYWSR97WN4
 v980Tfl/7Rr/eEnQBK8NmCgAohMhB7i0N/6RQF2Oz3xnvddLqc3PN6Z3zhtiMXZM6Yma
 LiQ8msJpqNHdNKcPNE4o56ShLewLzYaGylfsrwplzqKiTRqo+zIcFCIBJkY1uRMSLkRZ
 GUZ0Hf6cws4vakKZvO8YsXvf78tI0ZxbjNhsL9RaW5D87lt8DV6wPzLzSDvSMuNeHwwT
 TWRQ==
X-Gm-Message-State: APjAAAXB6AbMK5/5ZI0m2EZcpksDiusXArn55gXzDnAWGTZ3iGipNcIn
 hmIecALASIJIkCd+seenJHPH5JMC
X-Google-Smtp-Source: APXvYqybsb4F9xNYHToK1I85K/GHqBT18pPOXA/5ILN5589Myyx73mLaxb72wmS/sAZ2T26vfuEd+w==
X-Received: by 2002:aa7:da4f:: with SMTP id w15mr24017636eds.26.1571653784220; 
 Mon, 21 Oct 2019 03:29:44 -0700 (PDT)
Received: from pi3 ([194.230.155.217])
 by smtp.googlemail.com with ESMTPSA id j5sm629045edj.62.2019.10.21.03.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:29:43 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:29:41 +0200
From: "krzk@kernel.org" <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>
Subject: Re: [PATCH 02/10] ARM: dts: Add support for two more Kontron SoMs
 N6311 and N6411
Message-ID: <20191021102941.GB1934@pi3>
References: <20191016150622.21753-1-frieder.schrempf@kontron.de>
 <20191016150622.21753-3-frieder.schrempf@kontron.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016150622.21753-3-frieder.schrempf@kontron.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_032945_568936_BF1BB076 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:07:21PM +0000, Schrempf Frieder wrote:
> From: Frieder Schrempf <frieder.schrempf@kontron.de>
> 
> The N6311 and the N6411 SoM are similar to the Kontron N6310 SoM.
> They are pin-compatible, but feature a larger RAM and NAND flash
> (512MiB instead of 256MiB). Further, the N6411 has an i.MX6ULL SoC,
> instead of an i.MX6UL.
> 
> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> ---
>  .../boot/dts/imx6ul-kontron-n6311-som.dtsi    | 40 +++++++++++++++++++
>  .../boot/dts/imx6ull-kontron-n6411-som.dtsi   | 40 +++++++++++++++++++
>  2 files changed, 80 insertions(+)
>  create mode 100644 arch/arm/boot/dts/imx6ul-kontron-n6311-som.dtsi
>  create mode 100644 arch/arm/boot/dts/imx6ull-kontron-n6411-som.dtsi
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
