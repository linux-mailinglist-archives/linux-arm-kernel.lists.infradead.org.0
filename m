Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D154933456
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:56:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1gbH1muQONH/l5i2VM8akkrOeAkVX4mN8OIpr8Jhdw=; b=K1C2tSkiG/qU8y
	GLVWCWFBzC1jeB9AWcMgg3XKcPcdcYgmspoJ2abX05GwCQX1Y0VsFp8/AtbYHUmz+A3y+DnrhqFoM
	Yp357WtdpA+4hglhmX/eWOZOClufX9Z9MP1spzbMdlQQ6RodxiNL2rhzKK1CXgl6CHWu13eO3mqDG
	/urPeW1gkQbm24my/BpMOzIzOZO7Enp3fGDw0A3gGR7//We9FBnVZb9V6ppK3LIhj3EoOT1w9hzwA
	6V5OTWjZ3wL66ogpMaM2G/6lu/ib7d39MUoKW4Qz2SChca57tVDiS0Fa+j/nWkrFnn8ULiDBsZYDj
	Puv3yuxZCOpyRHIX2XuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpKG-0002Ns-7V; Mon, 03 Jun 2019 15:56:44 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpJz-0002Dr-Of
 for linux-arm-kernel@bombadil.infradead.org; Mon, 03 Jun 2019 15:56:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+K7sijb1NhBDivKysbFuc5fmeIOhyqByEA9Q4g3ikio=; b=F0GBeBjf43Q2FTd63KTndIdDY
 MAdT+JqXGNIE4frXkMhAiVI00Bjog9j0MvV+FLffjHET8eHtsFZ1CLxx/EYuyO5HDLwuyoHi56R3F
 3Gmk1KEbV/Zv5/LNTQpymUdgQICqFXyIeqEummEdUcVyrrtXJWbHYLenXEmA2UHxYXQNrnDBp/iuv
 gLy76RAgymlTNvT751PPwGjQWBye5Ttd1kNcZL94VIRaxlK1ZxyvcaVbfV163e+WauHOiYdPehJxw
 7nMTxDgryXkqccSVwWhR05C4OlBPAm34qoEEu/8GUKDrzPyzmRyWAjPsk38YMBUhqJdjl1O3DIgXY
 dtegqtM2Q==;
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by merlin.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpJw-0004M5-K9
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:56:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5B5F15AB;
 Mon,  3 Jun 2019 08:56:17 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 B4A0C3F246; Mon,  3 Jun 2019 08:56:15 -0700 (PDT)
Date: Mon, 3 Jun 2019 16:56:13 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [RFC/PATCH 4/5] arm64: Add support for arch_memremap_ro()
Message-ID: <20190603155612.GC63283@arrakis.emea.arm.com>
References: <20190517164746.110786-1-swboyd@chromium.org>
 <20190517164746.110786-5-swboyd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517164746.110786-5-swboyd@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_115624_734665_E0CF2BB5 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 09:47:45AM -0700, Stephen Boyd wrote:
> Pass in PAGE_KERNEL_RO to the underlying IO mapping mechanism to get a
> read-only mapping for the MEMREMAP_RO type of memory mappings that
> memremap() supports.
> 
> Cc: Evan Green <evgreen@chromium.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Andy Gross <agross@kernel.org>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>

Not sure what the plans are with this series but if you need an ack for
arm64:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
