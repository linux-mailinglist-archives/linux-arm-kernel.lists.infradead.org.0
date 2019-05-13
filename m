Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386081B9FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 17:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCDJiRAvy7TjEysSmRbvL5dIOxLgOgEzqKgDWNFiHUs=; b=Xj2G+l2O+xbDMg
	uhkYYQtAPx2rIPrBFb32cHKh5Uzyssk8dSXcHSABCuEOz1e8Fnb9mEq7Mu8PvG4ZiKdMwJetZnU9N
	/X20iIZtAALPDMP1D98T9hnPH1jDLXhkAcpA/OYmtJBvvzetzZf9Zv1Ufv/yq0gCJLnkJAjgN7zLl
	8QPC2HlIOWlvya6euhziR+esXvum7qAAXscNi5ZwxXvD/s9BZgL2o/PEAGFTZcAeTEHAhU/V3z4iC
	D73ItfVO7HzTfFU70HVkeImm/qcKjynfeCPcdEnm+MSvxTsvevGwU28s8eSOWPPZs9QJDRfgtVRYK
	BN9GDJB9foajByMQHVEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCsT-0005l8-O9; Mon, 13 May 2019 15:28:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCsK-0005j1-Gp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 15:28:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so6649796plj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 08:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LMcHhVUanXtNp8UGi1hE6QLdFyx1JwZi43KNCz8OqQI=;
 b=Ve0piJlFoPsHHA/V+7kFHF1y+MroWg6pY0ttYjy8as3Qvek1yy6HPYM+AOtZ9UUMNi
 EP0ejXgecPT2ugxAWQ2R8U1ivabvV1jWKlEU51yYaTZAtUXK3DoIlM4s3MYFt3LiQAvS
 yvtW9K+s7U7rfqC9LpdxlMJKctjzJMMwerY1TGW38G7vX3K2pM36Y49iaN8FapjYzebU
 baWO5BWRL/VELmwLRblp7kJhEliqRu0mEGjSXBDTrIkSrQEhDSMMI3LuUIR8Bl2s83IL
 vzx4l6kWQMTRHy9bSv3RhmFcwLO8zxjzV7xNDSFCRaK6ytd+59fIR9dZ8WLiFJ43mw6A
 vRIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LMcHhVUanXtNp8UGi1hE6QLdFyx1JwZi43KNCz8OqQI=;
 b=Hi/6JeYC/jsn0i85B2cXafnSyF2NXia+8Pi9mzE/qiis+5jJWgELWlpSCL2xDmswcl
 2LWtlkraQJHtmkxBMOodLvMa2gal7DGVmd6bxBMeTHaZMcp6GiqMrhJ+BLEFV52SFGaO
 5imNjw8ZOdgPUlwLTVlmxXc5uf1hF76dSoqXITPYIT3x31rpZG0vxmNI7tpZJbV5b5xS
 oB/a9m1CRx8p0m+AdfjNXJzTFYOFw//SwcJcH9OFIrMn3VlhpK9xQfZ4BQ27aYMd68VG
 vqj099lKe8O6HXJ1K7Vcd1Sxb7ai5iV0a7lF798UPGd5v22o7Qio2fCxkDZbhRTpN7iW
 hsIw==
X-Gm-Message-State: APjAAAVu9vZKmlcOdkAKgrw1LEXkzjtXuRD+47HBhv3St24qQoxV0XL0
 167es1jrAsDOpna6e7oQZTuJKw==
X-Google-Smtp-Source: APXvYqykOVyIh1OL7tHpA9rGJZCNmX7tM0rAmgR+Kv6tfiy1Jn+wziO39Jgznm16VZhGZIak5Ql82Q==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr31476056plm.134.1557761303523; 
 Mon, 13 May 2019 08:28:23 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id j189sm28711990pfc.72.2019.05.13.08.28.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 08:28:22 -0700 (PDT)
Date: Mon, 13 May 2019 09:28:19 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190513152819.GA32523@xps15>
References: <20190508021902.10358-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_082824_567104_0EC6FB73 
X-CRM114-Status: GOOD (  23.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Linus Walleij <linus.walleij@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 David Brown <david.brown@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Fabio Estevam <festevam@gmail.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>, Wei Xu <xuwei5@hisilicon.com>,
 Andy Gross <agross@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Orson Zhai <orsonzhai@gmail.com>, Chris Healy <cphealy@gmail.com>,
 Mike Leach <mike.leach@linaro.org>, devicetree@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Zhangfei Gao <zhangfei.gao@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Guodong Xu <guodong.xu@linaro.org>,
 Baolin Wang <baolin.wang@linaro.org>, linux-kernel@vger.kernel.org,
 Chunyan Zhang <zhang.chunyan@linaro.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 10:18:51AM +0800, Leo Yan wrote:
> Since the DT bindings consolidatoins for CoreSight replicator and funnel
> is ready for kernel v5.2 merge window [1], this patch set is to update
> the related CoreSight DT bindings for platforms; IIUC, this patch set
> will be safe for merging into kernel v5.2 because the dependency
> patches in [1] will be landed into mainline kernel v5.2 cycle.
> 
> In this patch set, it tries to update below two compatible strings to
> the latest strings:
> 
>   s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
>   s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> 
> Please note, some platforms have two continuous patches, one is for
> updating static replicator compatible string and another is for dynamic
> funnel change; and other platforms have only one patch since it only
> needs to change for dynamic funnel.
> 
> Avoid to introduce merging confliction, I rebased this patch set on
> linux-next branch with last commit fcdb095ad001 ("Add linux-next
> specific files for 20190506").
> 
> This patch set has been tested on Arm Juno and Hikey620 boards, other
> platforms are only compilation passing.
> 
> P.s. when use scirpt/checkpatch.pl, it reports the warnings as below. I
> think we can ignore this warnings for this patch set, please review if
> this makes sense for you.
> 
> WARNING: line over 80 characters
> #29: FILE: arch/arm/boot/dts/imx7s.dtsi:178:
> +                       compatible = "arm,coresight-dynamic-funnel", "arm,primecell";
> 
> [1] https://archive.armlinux.org.uk/lurker/message/20190412.102734.2afbb29a.en.html
> 
> == Changes for v2 ==
> * Add explanation for the change in the commit logs. (Fabio)
> * Merge the separate patches for funnel and replicator per DTS into
>   a single patch. (Suzuki)
> 
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Cc: Guodong Xu <guodong.xu@linaro.org>
> Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
> Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Andrew Lunn <andrew@lunn.ch>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Andy Gross <agross@kernel.org>
> Cc: David Brown <david.brown@linaro.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Chunyan Zhang <zhang.chunyan@linaro.org>
> Cc: Orson Zhai <orsonzhai@gmail.com>
> Cc: Baolin Wang <baolin.wang@linaro.org>
> 
> 
> Leo Yan (11):
>   ARM: dts: hip04: Update coresight DT bindings
>   ARM: dts: imx7s: Update coresight DT bindings
>   ARM: dts: qcom-apq8064: Update coresight DT bindings
>   ARM: dts: ste: Update coresight DT bindings
>   ARM: dts: vexpress-v2p-ca15_a7: Update coresight DT bindings
>   ARM: dts: qcom-msm8974: Update coresight DT bindings
>   arm64: dts: hi6220: Update coresight DT bindings
>   arm64: dts: juno: Update coresight DT bindings
>   arm64: dts: qcom-msm8916: Update coresight DT bindings
>   arm64: dts: sc9836: Update coresight DT bindings
>   arm64: dts: sc9860: Update coresight DT bindings
> 
>  arch/arm/boot/dts/hip04.dtsi                   | 18 +++++++++---------
>  arch/arm/boot/dts/imx7s.dtsi                   |  6 +++---
>  arch/arm/boot/dts/qcom-apq8064.dtsi            |  4 ++--
>  arch/arm/boot/dts/qcom-msm8974.dtsi            |  6 +++---
>  arch/arm/boot/dts/ste-dbx5x0.dtsi              |  4 ++--
>  arch/arm/boot/dts/vexpress-v2p-ca15_a7.dts     |  4 ++--
>  arch/arm64/boot/dts/arm/juno-base.dtsi         |  6 +++---
>  arch/arm64/boot/dts/arm/juno-cs-r1r2.dtsi      |  4 ++--
>  .../boot/dts/hisilicon/hi6220-coresight.dtsi   |  6 +++---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi          |  4 ++--
>  arch/arm64/boot/dts/sprd/sc9836.dtsi           |  2 +-
>  arch/arm64/boot/dts/sprd/sc9860.dtsi           |  8 ++++----
>  12 files changed, 36 insertions(+), 36 deletions(-)

For the set: 

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
