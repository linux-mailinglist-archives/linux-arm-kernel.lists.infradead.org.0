Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851001EADE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 11:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A0SEV4qYUhj0Rx3nSyI3Q2Lz7K6f5N/Zl5DMRLNCNc8=; b=stglMSQ2m0p62h
	0the6Fv1PXmmjKYF7Fnnf77+ca4WZKsfaRtWZ4cxNP5yHhQ5B0xf9V7Oj/XSrVCsIdEjCqjnZeYkk
	acSSAOO0rxyq4mIPdSes+uCAwPzM0IfTyPXOTkLKJKJ/opR1himerRbuIVTgpjjdwwEGVSYEYe3X9
	OcecHEzvWOJqoX1dIQiOEHhWXiBO4S51jCZPi3B1ztX7em85wZfsNfIDZiEc7Sj3OMynV9ICcXpxe
	ZN4Qa5N7im+jp3vnxxcYaO1J9UgOmhiBQ28+6PcdeTYUPzMOgEFcij4A6QbXvC+F8oMctTl5xeRE5
	3mCKNqdTkvZ5X0M9b9ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQq7j-00009R-LD; Wed, 15 May 2019 09:22:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQq7c-000096-Rr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 09:22:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C126341;
 Wed, 15 May 2019 02:22:48 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBFCF3F703;
 Wed, 15 May 2019 02:22:45 -0700 (PDT)
Date: Wed, 15 May 2019 10:22:44 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 1/3] arm64: defconfig: Enable CONFIG_ENERGY_MODEL
Message-ID: <20190515092242.azcracudtdnruwnz@queper01-lin>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-2-quentin.perret@arm.com>
 <2f598ea3-752d-0f1d-fd33-f07cda3b7bd0@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f598ea3-752d-0f1d-fd33-f07cda3b7bd0@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_022248_901637_4145CD66 
X-CRM114-Status: GOOD (  14.33  )
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 15 May 2019 at 10:46:09 (+0200), Daniel Lezcano wrote:
> On 15/05/2019 10:23, Quentin Perret wrote:
> > The recently introduced Energy Model (EM) framework manages power cost
> > tables for the CPUs of the system. Its only user right now is the
> > scheduler, in the context of Energy Aware Scheduling (EAS).
> > 
> > However, the EM framework also offers a generic infrastructure that
> > could replace subsystem-specific implementations of the same concepts,
> > as this is the case in the thermal framework.
> > 
> > So, in order to prepare the migration of the thermal subsystem to use
> > the EM framework, enable it in the default arm64 defconfig, which is the
> > most commonly used architecture for IPA. This will also compile-in all
> > of the EAS code, although it won't be enabled by default -- EAS requires
> > to use the 'schedutil' CPUFreq governor while arm64 defaults to
> > 'performance'.
> > 
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> > Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>

Thanks !
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
