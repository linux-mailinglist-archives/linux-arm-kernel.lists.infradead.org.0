Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FBADB600
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E7trA39uzELpOHTx4rOEaG51ykVSM7J5i0F88qDriI4=; b=BV9UUkYMNxIJ7G
	UrS97mSFfjix38WKJ3kAVXu0kJG3g8GYMR58zIXdcophIV7EMuszpr7Is9BmHmVpFmY7h+aVcPwwF
	lLja2Cjdg1Tp7vSoW+80DhcKJGMwzy6pUGWsYxYiiGmwPoU41jIXs7dZWHytHwpn236Bs1rAp5+w2
	kj6MMMDCTO3SfsY6XbgtfxgQvecuvvHef58IraLjAZ9R0eOsuxFju3oWUNcKHL2PZU6Rfi47/u8A9
	ODIT/e9LrZOlYz6d1lBVplubuxqqp0+vV4P4y8KXoRxBl/WQxSwCwu9vx10W7RUYfWBk4hdADD16s
	PPuCRTx6digtmLm1s1SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAQW-0007Xb-D8; Thu, 17 Oct 2019 18:23:08 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLAQM-0007X5-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 18:22:59 +0000
Received: by mail-oi1-f195.google.com with SMTP id 83so3023629oii.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 11:22:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+Bk+owFUyFzKLHxVQ9TZGi955m3fUTDdG0rIAOhgZF4=;
 b=FVgUhgq+rp55rg/VMCTE9EzlcN82pOxcpVsturKrRCOaOcn5p6/8d3mABan+E9HeV2
 F1Z36MEWdAuFF+KBATLeLBqGptHz8Qw09MbWb9PfoSI4Dnf4AoqXQiU5FC05ueRnjOqm
 H++LE0f/PBtWBNJnwDKKD87EHlAAcqO/+Xglv3+AYdDfBdo88PGi0dWtyMyjNozo0lHu
 0yjcaFjcTFLSAJwKCc7y2V+KFos/0FTUYF9FCOFFsKYv/zirq28fpcRG7SWiU4d3Lcjk
 fSLWx46Eajy1DNu3ZUunXkinmCNWFvWMWOvKYj8DwYf5fTCmFAXZaMxF/Lwznsdismux
 pKsQ==
X-Gm-Message-State: APjAAAXvkOubbEloMkKPNQUaiWp2tj/ePRSBP5igzAS3pBG7Vg41oktQ
 D9rIXK0LP/IDil9BaU54rQ==
X-Google-Smtp-Source: APXvYqxoyB6LIwYRwOT7YZvltCww+hzSZ2xpYH5QFe7x2JQodAk8yt9q3uBJpfEDLYt0WE9APEi6/A==
X-Received: by 2002:aca:110b:: with SMTP id 11mr4377794oir.135.1571336577100; 
 Thu, 17 Oct 2019 11:22:57 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 21sm686623oin.26.2019.10.17.11.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 11:22:56 -0700 (PDT)
Date: Thu, 17 Oct 2019 13:22:55 -0500
From: Rob Herring <robh@kernel.org>
To: Manish Narani <manish.narani@xilinx.com>
Subject: Re: [PATCH v3 4/8] dt-bindings: mmc: arasan: Add optional properties
 for Arasan SDHCI
Message-ID: <20191017182255.GA7053@bogus>
References: <1571293310-92563-1-git-send-email-manish.narani@xilinx.com>
 <1571293310-92563-5-git-send-email-manish.narani@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571293310-92563-5-git-send-email-manish.narani@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_112258_392651_0C944061 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 rajan.vaja@xilinx.com, nava.manne@xilinx.com, linux-mmc@vger.kernel.org,
 adrian.hunter@intel.com, michal.simek@xilinx.com, mdf@kernel.org,
 linux-arm-kernel@lists.infradead.org, jolly.shah@xilinx.com,
 linux-kernel@vger.kernel.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 11:51:46AM +0530, Manish Narani wrote:
> Add optional propeties for Arasan SDHCI which are used to set clk delays

properties

> for different speed modes in the controller.
> 
> Signed-off-by: Manish Narani <manish.narani@xilinx.com>
> ---
>  .../devicetree/bindings/mmc/arasan,sdhci.txt      | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> index b51e40b2e0c5..e0369dd7fb18 100644
> --- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> +++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
> @@ -46,6 +46,21 @@ Optional Properties:
>      properly. Test mode can be used to force the controller to function.
>    - xlnx,int-clock-stable-broken: when present, the controller always reports
>      that the internal clock is stable even when it is not.
> +  - clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy Mode.
> +  - clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
> +  - clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
> +  - clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
> +  - clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
> +  - clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
> +  - clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for SDR104.
> +  - clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD DDR50.
> +  - clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC DDR52.
> +  - clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC HS200.
> +  - clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC HS400.

Should be common?

Range of values?

> +
> +  Above mentioned are the clock (phase) delays which are to be configured in the
> +  controller while switching to particular speed mode. If not specified, driver
> +  will configure the default value defined for particular mode in it.
>  
>  Example:
>  	sdhci@e0100000 {
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
