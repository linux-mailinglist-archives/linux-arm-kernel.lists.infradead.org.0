Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BCC4BDCC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFKq+fTKcWin3X1OirgtW8hgGvKvEdCF/CoT7iwq8zs=; b=YX9c5ZbH9Hs2ib
	OV9GAF6O0HrqpKHJjFNQr2Oel+sP0glqyuYkZqgtgh5hNHL5qlDUGnVAjrAOTYEYEuMEdQDWfVn2r
	2CACycQmY6mHz0HvAudfcrLDYRnzoTCK+OwhBq8tguAMGB1apKh8fbqPgrnabsw+1jgsPJOVZJH3y
	dnI0rPrNQCxkW/DTUwkpB/z9zbegKbGx9OMNuwXDC8IWpRPu5lmP8ji1/ZZ29TngUUtj80AouZBBH
	V+3ZKL9uw+7lHuV5B25cBmxEXeEA9aPablz+dCgu3SiXRHt93VgMOQYl4GYBqNekGGVLZi0uVVgXV
	wwIKk5B9aqxYKC5rhFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hddCX-00065e-Nx; Wed, 19 Jun 2019 16:12:45 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hddCM-00063O-Ng
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:12:36 +0000
Received: from LHREML711-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 6F02E688331B27644478;
 Wed, 19 Jun 2019 17:12:33 +0100 (IST)
Received: from [127.0.0.1] (10.202.227.157) by LHREML711-CAH.china.huawei.com
 (10.201.108.34) with Microsoft SMTP Server id 14.3.408.0;
 Wed, 19 Jun 2019 17:12:31 +0100
Subject: Re: [PATCH v2 01/11] ARM: dts: hip04: Update coresight DT bindings
To: Leo Yan <leo.yan@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, Mike Leach
 <mike.leach@linaro.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 "Andy Gross" <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 "Linus Walleij" <linus.walleij@linaro.org>, Liviu Dudau
 <liviu.dudau@arm.com>, "Sudeep Holla" <sudeep.holla@arm.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linaro.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>
References: <20190508021902.10358-1-leo.yan@linaro.org>
 <20190508021902.10358-2-leo.yan@linaro.org>
From: Wei Xu <xuwei5@hisilicon.com>
Message-ID: <ee33f0b2-e016-7c2f-feca-6b9e2bfe1e43@hisilicon.com>
Date: Wed, 19 Jun 2019 17:12:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190508021902.10358-2-leo.yan@linaro.org>
Content-Language: en-US
X-Originating-IP: [10.202.227.157]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_091234_954891_4FD852AD 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Zhangfei Gao <zhangfei.gao@linaro.org>,
 Haojian Zhuang <haojian.zhuang@linaro.org>, Guodong Xu <guodong.xu@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

On 5/8/2019 3:18 AM, Leo Yan wrote:
> CoreSight DT bindings have been updated, thus the old compatible strings
> are obsolete and the drivers will report warning if DTS uses these
> obsolete strings.
> 
> This patch switches to the new bindings for CoreSight dynamic funnel and
> static replicator, so can dismiss warning during initialisation.
> 
> Cc: Wei Xu <xuwei5@hisilicon.com>
> Cc: Guodong Xu <guodong.xu@linaro.org>
> Cc: Zhangfei Gao <zhangfei.gao@linaro.org>
> Cc: Haojian Zhuang <haojian.zhuang@linaro.org>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>

Applied to the hisilicon dt tree.
Thanks!

Best Regards,
Wei


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
