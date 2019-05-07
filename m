Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8306415F56
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R4L/kvToF5NPoGyY4K/M2A2DMrA/9ohqhrcwxvnOGLk=; b=qFmCMyyW9qGMuFQ8QDQ/9sDJU
	1616bNw3GL2yaJbYmWIPnCBLYVR0cysxck2aSl2AnP8pnY4/1coNpHVlOxi6gOAsCdUTSxK21GXXa
	2vn+9HJjOE4pudSfXBLqIyuhnPukJGVG6JtIpyq1wwxWvi2ouvG2i0ONLVOVWVCdFV708me+4rueJ
	xAfMXUraY/6j3v0Dtr46dgoanKFE/GScZ1LTM7sSRWkEpSBeJxzgLjdNkY5FoEselbLtBHGGhC8EH
	CmOHO80kokkDoXFoirHKP7wIl97yKHL6/Y5/K85pBOJa3+qZ1ugjtZjrlt7rDsaR4Uqlvxzbm6Aq/
	zbWJwlelQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNvRt-0001Pd-M6; Tue, 07 May 2019 08:27:41 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvRm-0001PJ-P8
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:27:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB2DC374;
 Tue,  7 May 2019 01:27:31 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17FAD3F238;
 Tue,  7 May 2019 01:27:27 -0700 (PDT)
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight replicator
 and funnel
To: leo.yan@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 mathieu.poirier@linaro.org, mike.leach@linaro.org,
 linux-arm-kernel@lists.infradead.org
References: <20190507034734.20622-1-leo.yan@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
Date: Tue, 7 May 2019 09:27:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507034734.20622-1-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_012734_819484_BDCC7108 
X-CRM114-Status: GOOD (  15.65  )
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
Cc: andrew@lunn.ch, Lorenzo.Pieralisi@arm.com, guodong.xu@linaro.org,
 baolin.wang@linaro.org, festevam@gmail.com, s.hauer@pengutronix.de,
 liviu.dudau@arm.com, orsonzhai@gmail.com, xuwei5@hisilicon.com,
 zhang.chunyan@linaro.org, david.brown@linaro.org, agross@kernel.org,
 haojian.zhuang@linaro.org, Sudeep.Holla@arm.com, zhangfei.gao@linaro.org,
 lee.jones@linaro.org, shawnguo@kernel.org, linus.walleij@linaro.org,
 cphealy@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Leo,

On 07/05/2019 04:47, Leo Yan wrote:
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

I would have preferred to keep them as a single change. Either way, for
the entire series :

Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
