Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0137D16638
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 17:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9mD+reCB7iUpPIuCPsQ1xSW5qXe2USdyyrFDF/UpgRo=; b=se3RFhj5FemZ4DflH2ZSc+qWp
	UgORQfGRhlpkXRa1Jhr4ptaIk03Zxf5pE2REyqqNWwTtr3cQzdbPtl0UgeZDxXEBwhURtA41iQpVK
	8G0kSmuDp3aZei0lcwuNaMVEsRdKRit6CNdjIENEqvLX4bIs+89VdP/E9llkTP7spsczgV8jRrdRn
	XJKTab0iPWo7XK4ap8bY2jV6LX9sYR0597sEwe9fn+J+MPC6ZUX15DiisICNr3ZBSg9Gl39F5W3z1
	cm5tyr7knGS7GYRfrXtMFk9Khv0r2k8xcOv0L28furD5C1JE82sRO5DR1YvFK+zKIFwP6DGdjN5xz
	cCt3UpNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1g9-0006br-Fr; Tue, 07 May 2019 15:06:49 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1g1-0006bW-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 15:06:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 37348374;
 Tue,  7 May 2019 08:06:38 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60C6E3F5C1;
 Tue,  7 May 2019 08:06:34 -0700 (PDT)
Subject: Re: [PATCH v1 00/17] dts: Update DT bindings for CoreSight replicator
 and funnel
To: leo.yan@linaro.org, Sudeep.Holla@arm.com
References: <20190507034734.20622-1-leo.yan@linaro.org>
 <2f2d819d-9b20-7b4c-a558-0ba24a7babf3@arm.com>
 <20190507104612.GA21391@e107155-lin>
 <20190507121603.GE21730@leoy-ThinkPad-X240s>
 <20190507132446.GH21730@leoy-ThinkPad-X240s>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <00a6305a-a34e-a2df-3a08-b19e41e00cbe@arm.com>
Date: Tue, 7 May 2019 16:06:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190507132446.GH21730@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_080641_929277_E30D59C0 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 07/05/2019 14:24, Leo Yan wrote:
> Hi Sudeep,
> 
> On Tue, May 07, 2019 at 08:16:04PM +0800, Leo Yan wrote:
> 
> [...]
> 
>>> I plan to take 9,10,14/17 for v5.3
>>
>> Yes, please pick up these 3 patches.
> 
> I am planning to respin new patch set with more clear explaination in
> the commit log.
> 
> Please let me know if it's okay for you to wait for new patch set, or
> will you directly pick up these three patches and I should drop these
> 3 patches in next version?

Leo,

If you do respin, please could you merge the separate patches for funnel and
replicator per DTS into a single patch.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
