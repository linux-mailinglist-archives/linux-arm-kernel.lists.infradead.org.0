Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9458917B87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:29:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49KIQ58aSU8ZWYtIzun1yKBB/FDjqXEBc+zowWqzfGY=; b=V+VBxYyPxKr5fLI+JsUIsbeev
	O31xEtDB8Kb994AUlwuYvRSTRhQP1obFLs0iS48iTwqTnm73H98WC9gF69tuGk+FBFBVZ2wneqZgn
	n4L/KESl4yMuAoW3GXUhbpEckGI05CP8LoP6irJZbSlS/2qjraOhbtrBFt5KQ+Bd5lZCzLfHmcdTu
	C5dF2C0ncttfwoSioXoDUcEKSZQGX3QwF1agpB3gRFriTTuKGQ+FInOAAMyvgNZ+bUBpKvc7Uq0NC
	aFzUPsOp4nwmaiSDJ/gcgHEUNkWbVnh7IxyKRGLKprXgtsgVX42r3DIIDHkQPjngRkequAbLDOb8q
	QxC18ecRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONZY-0004Rp-Jm; Wed, 08 May 2019 14:29:28 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONZR-0004R0-Qf
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 14:29:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2318BA78;
 Wed,  8 May 2019 07:29:19 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 496BF3F238;
 Wed,  8 May 2019 07:29:14 -0700 (PDT)
Subject: Re: [PATCH v2 00/11] dts: Update DT bindings for CoreSight replicator
 and funnel
To: leo.yan@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 mathieu.poirier@linaro.org, mike.leach@linaro.org, xuwei5@hisilicon.com,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, agross@kernel.org,
 david.brown@linaro.org, linus.walleij@linaro.org, liviu.dudau@arm.com,
 Sudeep.Holla@arm.com, Lorenzo.Pieralisi@arm.com, orsonzhai@gmail.com,
 baolin.wang@linaro.org, zhang.lyra@gmail.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20190508021902.10358-1-leo.yan@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <9c56323b-7b14-c662-b824-ed60fbb1638f@arm.com>
Date: Wed, 8 May 2019 15:29:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508021902.10358-1-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_072921_889009_8F3D03BA 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, guodong.xu@linaro.org, zhang.chunyan@linaro.org,
 haojian.zhuang@linaro.org, zhangfei.gao@linaro.org, lee.jones@linaro.org,
 cphealy@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/05/2019 03:18, Leo Yan wrote:
> Since the DT bindings consolidatoins for CoreSight replicator and funnel
> is ready for kernel v5.2 merge window [1], this patch set is to update
> the related CoreSight DT bindings for platforms; IIUC, this patch set
> will be safe for merging into kernel v5.2 because the dependency
> patches in [1] will be landed into mainline kernel v5.2 cycle.
> 
> In this patch set, it tries to update below two compatible strings to
> the latest strings:
> 
>    s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
>    s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> 
> Please note, some platforms have two continuous patches, one is for
> updating static replicator compatible string and another is for dynamic
> funnel change; and other platforms have only one patch since it only
> needs to change for dynamic funnel.

This is now misleading ;-), but that doesn't matter.

For the entire series :

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
