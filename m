Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 294D31271A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+zcnUBwTtDTAIwXKnRTH9yR6m5YMxHwrqqHRV+4WZc=; b=bmA5zAF20t0yb8
	XIGSEKKwVBshw3wjGAVeXEVIu/cRHcnJFv1bg9PBkNuAK5fpCfn2Kf4gTX9Vb0ZbhgPnQUScdGSmN
	MGSvYERcaMs4U5kV88sylJLkNoN5QctL1EfoTPx37GDxCeyZCND5V6BG1CecWSoWKY1UknJTA/fT3
	KGhTGUZMjGWYTGYY6kG/Te6ELgAgKcAyb+vOa2XD8u/kPMN602TLiR2WxAY4mWQ5HpwLM6z2x0HqU
	o1kZLYBB+6V6OFu4tc3qEklK8bTF7B/7bGUAWRuOMxUgc7SkFXGgJIgiknFiRl25ag8KaU9qfBkxT
	GhoUdnSW+F7ZSYb0mvIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5Py-0000X7-5K; Thu, 19 Dec 2019 23:41:18 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5Pk-0000Uj-HD
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:41:05 +0000
Received: by mail-ot1-f66.google.com with SMTP id k16so4769149otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:41:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3NfDG7avH+ujpcCBpbFffoQ4me1PnPp49OU9/9ftPuE=;
 b=TP5cgNvm2cVF9qQVdjA7gXe4DN+diHj36VrrP3liXA0mPcDBERL52N6PzEheUgRtY7
 Mvt0PmMpYP4uXO7gkacw3UF8XKDcQw0NFRCjZakVjLZHPMiSuV+C3U4CT8Cwsvw0KlcT
 X19xRXKWFb/62DZ8rULOoD+OU5SEJpgrVtNe/jHYdy6WOXEFVnrthSWn9OuHddEcQ5lw
 K2qJib27Pelp9RoHpLwDGexOYEzXPKtVoJpmRzsq1qtFGq1G6BDEbT2+WC96FdQJmgph
 B8cEVJrBiCbcr8nO0wuU42vAJ6/EI8lFSJNvuotCRmEqXw8L1XGG8oBSaYBjzklJPx2N
 Ucyg==
X-Gm-Message-State: APjAAAVScR9TDMgY3NVY19CWQJaNnj23pH+YCOGfPoB+yQQOSvCJWwMV
 qekrkDGEV2jPR0zkkJEC2A==
X-Google-Smtp-Source: APXvYqzAQ3Wpwz3g5jix2Do+I3Pb2ucPQFPn2hVTxMKOwUBxxicCkn6k6qUaRkAyoO5pODcIC0pAJw==
X-Received: by 2002:a9d:5c02:: with SMTP id o2mr2095128otk.176.1576798863533; 
 Thu, 19 Dec 2019 15:41:03 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id 4sm2767680otu.0.2019.12.19.15.41.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:41:02 -0800 (PST)
Date: Thu, 19 Dec 2019 17:41:00 -0600
From: Rob Herring <robh@kernel.org>
To: Adam Ford <aford173@gmail.com>
Subject: Re: [PATCH V2 2/7] soc: imx: gpcv2: Update imx8m-power.h to include
 iMX8M Mini
Message-ID: <20191219234100.GA19269@bogus>
References: <20191213160542.15757-1-aford173@gmail.com>
 <20191213160542.15757-3-aford173@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213160542.15757-3-aford173@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_154104_568955_57476178 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 peng.fan@nxp.com, ping.bai@nxp.com, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 13, 2019 at 10:05:37AM -0600, Adam Ford wrote:
> In preparation for i.MX8M Mini support in the GPC driver, the
> include file used by both the device tree and the source needs to
> have the appropriate references for it.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> V2:  No Change
> 
>  include/dt-bindings/power/imx8m-power.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/include/dt-bindings/power/imx8m-power.h b/include/dt-bindings/power/imx8m-power.h
> index 8a513bd9166e..0054bba744b8 100644
> --- a/include/dt-bindings/power/imx8m-power.h
> +++ b/include/dt-bindings/power/imx8m-power.h
> @@ -18,4 +18,18 @@
>  #define IMX8M_POWER_DOMAIN_MIPI_CSI2	9
>  #define IMX8M_POWER_DOMAIN_PCIE2	10
>  
> +#define IMX8MM_POWER_DOMAIN_MIPI	0
> +#define IMX8MM_POWER_DOMAIN_PCIE	1
> +#define IMX8MM_POWER_DOMAIN_USB_OTG1	2
> +#define IMX8MM_POWER_DOMAIN_USB_OTG2	3
> +#define IMX8MM_POWER_DOMAIN_DDR1	4
> +#define IMX8MM_POWER_DOMAIN_GPU2D	5
> +#define IMX8MM_POWER_DOMAIN_GPU	6
> +#define IMX8MM_POWER_DOMAIN_VPU	7
> +#define IMX8MM_POWER_DOMAIN_GPU3D	8
> +#define IMX8MM_POWER_DOMAIN_DISP	9
> +#define IMX8MM_POWER_VPU_G1		10
> +#define IMX8MM_POWER_VPU_G2		11
> +#define IMX8MM_POWER_VPU_H1		12

Why is _DOMAIN missing from the last 3?

> +
>  #endif
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
