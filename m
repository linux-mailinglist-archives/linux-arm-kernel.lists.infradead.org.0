Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23621E8120
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q4j0EsJSfy+UdbPa6ROQNau0QKbMyBGLUlE6HPSDlno=; b=aD0HOK2ZkUPvfXSMgEIAvoN3z
	GMreLcf1wkPLkrS94e3ZF/7nsmHaX72ec35+/J4hU2Hdq0EMSVDeCpteAlo1gKVcTOZMPP4TPqgsi
	X3ZiWEeIN+pdtUPGfT+1dIJqpqWmZ85O7996BqkxSHJhDVMJbvSRo1QiFWVdrtFvxCI7BXjUcO3qx
	F3Uj3wxTA0YyY+I9bDQRG+qSezGtqiwOlOnqpyaY9W9OIvqWahcnH8wQezLhBhDMMflHwSrDVFf95
	UuLYfJLOE6LunOq5dEVOquunTBRrJbVt/dg6L2up0PDw1j0cjyB5ksX8Bc273I7C006vIDBcN6ev/
	tc/m1Myzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegX2-0003mD-KY; Fri, 29 May 2020 15:02:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegVJ-0003ey-HM; Fri, 29 May 2020 15:01:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D452F1045;
 Fri, 29 May 2020 08:00:58 -0700 (PDT)
Received: from [10.37.12.52] (unknown [10.37.12.52])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C41F73F718;
 Fri, 29 May 2020 08:00:48 -0700 (PDT)
Subject: Re: [PATCH v8 0/8] Add support for devices in the Energy Model
To: rjw@rjwysocki.net
References: <20200527095854.21714-1-lukasz.luba@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <8fca24a1-93f7-f859-bd1f-b7bf484737f4@arm.com>
Date: Fri, 29 May 2020 16:00:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200527095854.21714-1-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_080101_617834_3211E2A6 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 khilman@kernel.org, agross@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com,
 linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de, orjan.eide@arm.com,
 daniel@ffwll.ch, linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, qperret@google.com, sboyd@kernel.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rafael,


On 5/27/20 10:58 AM, Lukasz Luba wrote:
> Hi all,
> 
> Background of this version:
> This is the v8 of the patch set and is has smaller scope. I had to split
> the series into two: EM changes and thermal changes due to devfreq
> dependencies. The patches from v7 9-14 which change devfreq cooling are
> going to be sent in separate patch series, just after this set get merged
> into mainline. These patches related to EM got acks and hopefully can go
> through linux-pm tree. The later thermal patches will go through thermal
> tree.
> 
> The idea and purpose of the Energy Model framework changes:
> This patch set introduces support for devices in the Energy Model (EM)
> framework. It will unify the power model for thermal subsystem. It will
> make simpler to add support for new devices willing to use more
> advanced features (like Intelligent Power Allocation). Now it should
> require less knowledge and effort for driver developer to add e.g.
> GPU driver with simple energy model. A more sophisticated energy model
> in the thermal framework is also possible, driver needs to provide
> a dedicated callback function. More information can be found in the
> updated documentation file.
> 
> First 7 patches are refactoring Energy Model framework to add support
> of other devices that CPUs. They change:
> - naming convention from 'capacity' to 'performance' state,
> - API arguments adding device pointer and not rely only on cpumask,
> - change naming when 'cpu' was used, now it's a 'device'
> - internal structure to maintain registered devices
> - update users to the new API
> Patch 8 updates OPP framework helper function to be more generic, not
> CPU specific.
> 
> The patch set is based on linux-pm branch linux-next 813946019dfd.
> 

Could you take the patch set via your linux-pm?

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
