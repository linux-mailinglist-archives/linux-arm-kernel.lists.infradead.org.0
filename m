Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91487362C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 19:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwP0Pz/MZdefLv4vP/A0T/5BwlNWG7hw8XT28kSDyC0=; b=Lduxg9yx8j2hqB
	kn9+0E9kLh1hWd43pLSDOCjHDqCK5KSHpsBDLh6a9R+PoDs1y8eBTKfmJW0Se4BhW8dVWJzfgJbQM
	vau9/KbPfYt0MOHgAfVB/9+0YObFmhN4NgXpq/Yvcv5Svq8xVI1wb9cF7FYal0bAvS71nbL1qoNUX
	/kC0LbES7FYhx1ETgaf6KMmcTSOvoElFjiuFnv42SW157s0Hze6+uux+fCx2j73MNQcCVU0JJ+hjJ
	UXE0Zu5Jr0+TkX/Pwar/n0FHyujuO/pIfJ/7TL+zMs/TLPVD6iucwJFjHrFl5Cu1JKTje0+ez36pO
	fdBAsA76h+5v0SyR/PsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZoQ-0000pJ-Po; Wed, 05 Jun 2019 17:34:58 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZoJ-0000ou-Qc
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 17:34:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36C0E374;
 Wed,  5 Jun 2019 10:34:51 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F39383F5AF;
 Wed,  5 Jun 2019 10:34:48 -0700 (PDT)
Date: Wed, 5 Jun 2019 18:34:42 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Sricharan R <sricharan@codeaurora.org>
Subject: Re: [PATCH 5/6] arm64: dts: Add ipq6018 SoC and CP01 board support
Message-ID: <20190605173441.GA9903@e107155-lin>
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-6-git-send-email-sricharan@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559755738-28643-6-git-send-email-sricharan@codeaurora.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_103451_870992_F9486B11 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, agross@kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, linux-soc@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 10:58:57PM +0530, Sricharan R wrote:
> Add initial device tree support for the Qualcomm IPQ6018 SoC and
> CP01 evaluation board.
> 
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> Signed-off-by: Abhishek Sahu <absahu@codeaurora.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile            |   1 +
>  arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts |  35 ++++
>  arch/arm64/boot/dts/qcom/ipq6018.dtsi        | 231 +++++++++++++++++++++++++++
>  3 files changed, 267 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018-cp01-c1.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/ipq6018.dtsi
> 

[...]

> +
> +		CPU3: cpu@3 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a53";
> +			enable-method = "psci";
> +			reg = <0x3>;
> +			next-level-cache = <&L2_0>;
> +		};
> +
> +		L2_0: l2-cache {
> +			compatible = "cache";
> +			cache-level = <0x2>;
> +		};
> +	};
> +
> +	pmuv8: pmu {
> +		compatible = "arm,armv8-pmuv3";

We know these are Cortex-A53s, why not update these accordingly ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
