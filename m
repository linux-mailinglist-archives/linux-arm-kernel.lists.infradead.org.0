Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6CC17173C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:37:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9JYcWPtQpLtTLBGI2d/vbWhiYevDTAUmrqVxoRzuh8=; b=YMca2OSWFtPpwY
	hOjW3rjWATGkkVKYH1Eu9llGWoTUtqLj59DQeAs3mOCEXUyoeJbX1KL3OMKwmU7pWMCYT36AVOZ6j
	z++lWpXueqYjRlXcu9Q3RldGvWVo9UEsyMj3Cg81PnpSElRtyGI88teiLnas+RdCwbm4ylwXvLmch
	2m+8qqLVxZcp5ACcqMT7l5AmflYMen1P8quycNd3At0V+V+VyQoNKYR9Vkglz5hojH1xm00qyscPs
	8iTCIVv3ynyEzT3oUe6w+cpUm3wg9XgqpzwMKsFOHmzJCPlI8b1Q7R2L8woY4Dfx8Ci3nmrbrQk9j
	tUR/ahgBnkulvOQIn9Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpt73-0007fM-G5; Tue, 23 Jul 2019 11:37:45 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpt6o-0007ec-Ep
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:37:31 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6NBbTBO016437;
 Tue, 23 Jul 2019 06:37:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563881849;
 bh=lpIxtYEtms7b861torQGzTA/jl+wuk28UERkfrnK6cs=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=vrZzopILsS5aIvnk9n5TTRLMxkg70B8bzh6WL7QXMSnbvGoAVVJNQa4x7fbGeMWOD
 +uOx0vIs10NDZA/NP/UQUb2LlvllpZqQhgp6vGqNG+fFkcK1HeYcVTBiibVuX85exl
 SgMtckLlWWwqdcrwAQ6rWkGiAoxPym2062B/lXjE=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6NBbTY5112393
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 23 Jul 2019 06:37:29 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 23
 Jul 2019 06:37:29 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 23 Jul 2019 06:37:29 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6NBbT2w037437;
 Tue, 23 Jul 2019 06:37:29 -0500
Date: Tue, 23 Jul 2019 06:37:06 -0500
From: Nishanth Menon <nm@ti.com>
To: Suman Anna <s-anna@ti.com>
Subject: Re: [PATCH 2/4] arm64: dts: ti: k3-am65-main: Add IPC sub-mailbox
 nodes for R5Fs
Message-ID: <20190723113706.ctrxtpezuknohbj3@kahuna>
References: <20190722202024.14867-1-s-anna@ti.com>
 <20190722202024.14867-3-s-anna@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190722202024.14867-3-s-anna@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_043730_586041_43E4B1A4 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15:20-20190722, Suman Anna wrote:
> Add the sub-mailbox nodes that are used to communicate between
> MPU and the two R5F remote processors present in the MCU domain.
> The parent mailbox cluster nodes are enabled and the interrupts
> associated with the Mailbox Cluster User interrupt used by the
> sub-mailbox nodes are also added. The GIC_SPI interrupt to be
> used is dynamically allocated and managed by the System Firmware
> through the ti-sci-intr irqchip driver.
> 
> The sub-mailbox nodes utilize the System Mailbox clusters 1 and 2.
> These sub-mailbox nodes are added to match the hard-coded mailbox
> configuration used within the TI RTOS IPC software packages. The
> Cortex R5F processor sub-system is assumed to be running in Split
> mode, so a sub-mailbox node is used by each of the R5F cores. Only
> the sub-mailbox node from cluster 0 is used in case of Lockstep
> mode.
> 
> Signed-off-by: Suman Anna <s-anna@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-am65-main.dtsi | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> index 0b3ea2a871ee..317563c995b1 100644
> --- a/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am65-main.dtsi
> @@ -426,7 +426,13 @@
>  			#mbox-cells = <1>;
>  			ti,mbox-num-users = <4>;
>  			ti,mbox-num-fifos = <16>;
> -			status = "disabled";
> +			interrupt-parent = <&intr_main_navss>;
> +			interrupts = <164 0>;
> +
> +			mbox_mcu_r5fss0_core0: mbox-mcu-r5fss0-core0 {
> +				ti,mbox-tx = <1 0 0>;
> +				ti,mbox-rx = <0 0 0>;
> +			};

Should'nt this rather be a board specific node? This is completely
dependent on the pre-defined communication scheme with R5F firmware?

>  		};
>  
>  		mailbox0_cluster1: mailbox@31f81000 {
> @@ -435,7 +441,13 @@
>  			#mbox-cells = <1>;
>  			ti,mbox-num-users = <4>;
>  			ti,mbox-num-fifos = <16>;
> -			status = "disabled";
> +			interrupt-parent = <&intr_main_navss>;
> +			interrupts = <165 0>;
> +
> +			mbox_mcu_r5fss0_core1: mbox-mcu-r5fss0-core1 {
> +				ti,mbox-tx = <1 0 0>;
> +				ti,mbox-rx = <0 0 0>;
> +			};
>  		};
>  
>  		mailbox0_cluster2: mailbox@31f82000 {
> -- 
> 2.22.0
> 

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
