Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE472FAD9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:25:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhxNnZ1ZFjqekxseajGEQ0FT/6DPw9BD18xNodBu+UE=; b=eyjU+C8f3o+QxW
	Jgw1ZqMQ+eQXKSsYVSbTAlDpa21T0+ZjVwtQzNctfLZfp2CHofBIib9nGDJUFy6aTzM5/4+28wCX6
	LK1kbj0MMQ7Gmd+EEG08rcddW1K5qUEhc+WsCUJvab7Fg94DZAmUaijIJSQx6fV46SuWFolsALvvA
	NOnBBKoU1pqSqJlpCqUk240QbihiYTOt4T1LtjZyEeiXLz3aRetPCr0U1qFJ2X63NwW+Hc8xpzPvX
	UWpTBg5i2N6/1lIml9HWk4dM2GffjSDIDhfveKSoGvAB3w1FJfK/RethdwbE2wL7KOBAhyKu4eyVn
	8vP8YZryAPzQmA+O7G5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJB1-00049b-JY; Thu, 30 May 2019 11:24:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJAv-00049C-Gn
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:24:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F33D6374;
 Thu, 30 May 2019 04:24:48 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7343E3F5AF;
 Thu, 30 May 2019 04:24:46 -0700 (PDT)
Date: Thu, 30 May 2019 12:24:44 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v5 2/3] thermal: cpu_cooling: Make the power-related code
 depend on IPA
Message-ID: <20190530112442.kywpbophjkv2j2tq@queper01-lin>
References: <20190530092038.12020-1-quentin.perret@arm.com>
 <20190530092038.12020-3-quentin.perret@arm.com>
 <20190530110356.vet2exwowdbm4umq@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190530110356.vet2exwowdbm4umq@vireshk-i7>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_042449_568753_C26B6121 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 daniel.lezcano@linaro.org, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thursday 30 May 2019 at 16:33:56 (+0530), Viresh Kumar wrote:
> On 30-05-19, 10:20, Quentin Perret wrote:
> > The core CPU cooling infrastructure has power-related functions
> > that have only one client: IPA. Since there can be no user of those
> > functions if IPA is not compiled in, make sure to guard them with
> > checks on CONFIG_THERMAL_GOV_POWER_ALLOCATOR to not waste space
> > unnecessarily.
> > 
> > Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> > Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> > ---
> >  drivers/thermal/cpu_cooling.c | 214 +++++++++++++++++-----------------
> >  1 file changed, 104 insertions(+), 110 deletions(-)
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Thanks !
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
