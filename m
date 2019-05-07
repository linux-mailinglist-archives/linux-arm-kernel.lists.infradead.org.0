Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3092A16219
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:46:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+uBaRd/A6FHnyd0pzSgZGw+6wtQs3/CKKc64qc+MUU=; b=dyg0FJCbhqw8JP
	/j/JXO80qXlKmEXxVFKteRZ5HomIVWHXopg2/Jt47NnJg78+EaJ6Q9+72CkLv0A2seZsCPO07sd0F
	ToXe5HNMQbD86G98T+bGqm57xakiWIdYa4V6XAQBy8WpreQt3Jcz1NqNl8Gka7hq+wyt0HU+K1ySN
	QzS2Cpk/RjP/Zu8fWCM7kI0tiPd2WbW2ul7AKgj/9mWeFj30/5mWHwB3FV5EwLQVxWb1C3iAFdDMr
	22pITbZBDGXX5dXsH1daQD6LMG3jJCCoUAPCbcbhJf+NIXROoMieTjrKrJyVghQFPDQCkKqLK8iK3
	Hl6ao/MGRJzZnfu3pvPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxcG-0002UZ-5W; Tue, 07 May 2019 10:46:32 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxc9-0002UF-Po
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:46:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 75A8D1682;
 Tue,  7 May 2019 03:46:23 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5AB333F5AF;
 Tue,  7 May 2019 03:46:19 -0700 (PDT)
Date: Tue, 7 May 2019 11:46:12 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, leo.yan@linaro.org
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight
 replicator and funnel
Message-ID: <20190507104612.GA21391@e107155-lin>
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_034625_839288_408272AC 
X-CRM114-Status: GOOD (  16.04  )
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
Cc: mark.rutland@arm.com, andrew@lunn.ch, linus.walleij@linaro.org,
 liviu.dudau@arm.com, david.brown@linaro.org, haojian.zhuang@linaro.org,
 festevam@gmail.com, Lorenzo.Pieralisi@arm.com, lee.jones@linaro.org,
 xuwei5@hisilicon.com, agross@kernel.org, orsonzhai@gmail.com,
 cphealy@gmail.com, mike.leach@linaro.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, zhangfei.gao@linaro.org,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 guodong.xu@linaro.org, baolin.wang@linaro.org, zhang.chunyan@linaro.org,
 Sudeep Holla <sudeep.holla@arm.com>, shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 07, 2019 at 09:27:26AM +0100, Suzuki K Poulose wrote:
> Leo,
>
> On 07/05/2019 04:47, Leo Yan wrote:
> > Since the DT bindings consolidatoins for CoreSight replicator and funnel
> > is ready for kernel v5.2 merge window [1], this patch set is to update
> > the related CoreSight DT bindings for platforms; IIUC, this patch set
> > will be safe for merging into kernel v5.2 because the dependency
> > patches in [1] will be landed into mainline kernel v5.2 cycle.
> >
> > In this patch set, it tries to update below two compatible strings to
> > the latest strings:
> >
> >    s/"arm,coresight-replicator"/"arm,coresight-static-replicator"
> >    s/"arm,coresight-funnel"/"arm,coresight-dynamic-funnel"
> >
> > Please note, some platforms have two continuous patches, one is for
> > updating static replicator compatible string and another is for dynamic
> > funnel change; and other platforms have only one patch since it only
> > needs to change for dynamic funnel.
>
> I would have preferred to keep them as a single change. Either way, for
> the entire series :
>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>

Thanks.

Leo,

I plan to take 9,10,14/17 for v5.3
Please shout if you plan to take the series directly via different tree.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
