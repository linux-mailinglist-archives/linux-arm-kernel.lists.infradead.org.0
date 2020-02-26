Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6192D170799
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:25:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:From:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pe/qOrYxxgvYBaaegC13RL8cDR/9epFOIJhBYJ+hAQk=; b=LOoa56K8A2Cd/Q
	P/YL7VGIqt+gPkfxDvsfetfCCZFjdhr6u1T7vjtOGoH++3yykryOUVDdLeEk+XeZAhre0dN6rLDAM
	dFhpAI9XaTDcRnHPl+A0JUMlbaYnSuBHcVDZzw5yaLN22yxtzETgGOTc//V527B1Tl2K2HD4JcIKL
	GN9zGCDFlWbecpprglySENxYkWc0w8Kc7Kbf69b8gt/Ib7mfuKLZfVGvC4+kp9Ot0/cJIJmY9rfsu
	DoUQ577/W7hwMJ2iez0DPhKdcF7mn/Sz/YpieLivB99nMsRKo0QYLaiAYPcnOi54a8tSmVe/BvhoQ
	6+L3gqqgHfIzVLc1IMgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Mg-0005L2-3E; Wed, 26 Feb 2020 18:24:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j71MN-0005CU-OH
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:24:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A04A330E;
 Wed, 26 Feb 2020 10:24:38 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 47F283F881;
 Wed, 26 Feb 2020 10:24:36 -0800 (PST)
References: <20200226132947.29738-1-ionela.voinescu@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v5 0/7] arm64: ARMv8.4 Activity Monitors support
Message-ID: <jhjftex438f.fsf@arm.com>
In-reply-to: <20200226132947.29738-1-ionela.voinescu@arm.com>
Date: Wed, 26 Feb 2020 18:24:26 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_102439_838339_C8499F03 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, maz@kernel.org, suzuki.poulose@arm.com,
 pkondeti@codeaurora.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 peterz@infradead.org, mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ionela,

On Wed, Feb 26 2020, Ionela Voinescu wrote:
> v4 -> v5:
>  - v4 can be found at [6]
>  - [1/7] rebased on top of latest tip/sched/core and fixed conflicts;
>    applied Reviewed-by from Valentin;
>  - [5/7] applied Reviewed-by from Valentin
>  - [6/7] applied Valentin and Pavan's suggested fixes; reworked
>    arch_cpu_freq_counters (now arch_freq_counters_available) and
>    confined it to the arch topology driver as recommended by Valentin
>    and Lukasz;
>

I don't really have any more comments for v5. AFAICT what we are missing
now is Sudeep's ack for the arch_topology bits, and if Catalin / Will
are okay with it I think this can all go through the arm64 tree.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
