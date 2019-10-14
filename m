Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF86D5BB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:52:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mj2gJr2tRD0hzyVvMy/fRiUOVK6lVk49AcnhPr4DEN8=; b=A7lvAaU1rwmXFl
	y3X8bLBwz2lJTwmPf9mEGAkwIDkGtykdKkrmmxHJZTZSVVnb/OSm/YYMopGxHFHr6TfcPAgEoHtsh
	Xe2Dh/NmEFsfo8HmhmjbQTc9fNlmBPHqZgCI/mO+gs9SF+o35krzlIRNcV1leSRlKmSFRErCY6wuJ
	VvuifmZed0H5yiyzF5m3/kQZtSLwwh54eQj8HojUYzBunlwGN3dbVeRiRPyLX0/zl/b8BQSyWppP6
	8TVVRGkUTa0zaxCbABKIFgNZRt0nURVIH6EutOztls9s1Lf2FT6eIH7pRlzY10G8jeOqpWWmHzjQ/
	7RCfTZh4XK/a3nPjbHsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuDr-0005uz-Hu; Mon, 14 Oct 2019 06:52:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuDj-0005uA-JH
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:52:44 +0000
Received: from dragon (li937-157.members.linode.com [45.56.119.157])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7C5A820673;
 Mon, 14 Oct 2019 06:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571035962;
 bh=ryBaBPoQwcBEQb8d+s/UEB6ik9EIb3YdztJHUWV605s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p/KvMtroXkV8GiWQIn+dSLyMRFwdNPWAG29vw7nciv0J/g+p7LcbmU9aobj6Ilmwm
 qBz/SqM64cC3/J6WofC0XzsS7O6z4ofdXIO48yqFl0+RFifGVFhTMe5B7fW7QnJHHs
 /fJOMGgEtYaUQmkspNJ5aZ3okx7bS4zaAaFvtPNU=
Date: Mon, 14 Oct 2019 14:52:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Yinbo Zhu <yinbo.zhu@nxp.com>
Subject: Re: [PATCH v2] usb: dwc3: enable otg mode for dwc3 usb ip on
 layerscape
Message-ID: <20191014065210.GE12262@dragon>
References: <20190924032903.32775-1-yinbo.zhu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924032903.32775-1-yinbo.zhu@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_235243_658083_D1CCCD4F 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-kernel@vger.kernel.org, xiaobo.xie@nxp.com, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, jiafei.pan@nxp.com,
 Ran Wang <ran.wang_1@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 11:29:03AM +0800, Yinbo Zhu wrote:
> layerscape otg function should be supported HNP SRP and ADP protocol
> accroing to rm doc, but dwc3 code not realize it and use id pin to
> detect who is host or device(0 is host 1 is device) this patch is to
> enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts
> 
> Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts | 4 ++++
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 4 ++++
>  arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts | 1 +

This is an arm64 DTS patch, so the patch prefix should be something
like 'arm64 dts: fsl: ...'

Shawn

>  3 files changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> index 9fb9113..076cac6 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-rdb.dts
> @@ -171,3 +171,7 @@
>  &sata {
>  	status = "okay";
>  };
> +
> +&usb1 {
> +	dr_mode = "otg";
> +};
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d..0c742be 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -122,6 +122,10 @@
>  	};
>  };
>  
> +&usb1 {
> +	dr_mode = "otg";
> +};
> +
>  #include "fsl-ls1046-post.dtsi"
>  
>  &fman0 {
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> index 8e925df..90b1989 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-rdb.dts
> @@ -95,5 +95,6 @@
>  };
>  
>  &usb1 {
> +	dr_mode = "otg";
>  	status = "okay";
>  };
> -- 
> 2.9.5
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
