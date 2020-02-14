Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A90E615F515
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 19:36:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OwEJCz2oB3+Rk886YXEHWG6hxn5VarY7Be+vUCdN+3o=; b=KgNBmLdHLV6frA
	fsRxdc81BjiG/CTa7jZ+res/9OVrFWbVuRV8JcAQDrKCnlR4hkNyOk4YTKKhE6F5h3Z1aWyJJ0n8Z
	2xtxSjJDyZZr1ICHyjlBKHWl8rDo+GcCTMLs5H9DXem1kqHavBx38wG/0QzdV8vhhn1SE7q56KT1Z
	jfPZKSWbnnCDVhTv4X69/oHPBjAR7pHny5xqwp9LefCKSMDhymYyZPokYwRhHZA7ii6xh8MJKAbCd
	PlgrlepkuB3pg7AyyACSpyCssQucarlSgFqX259Pr9bHfwKFpyAL1rVC6pupzhohbuLGp3Gy+EMua
	7mf1wvRIju6uyMZ7029A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2fpS-0005Wt-NB; Fri, 14 Feb 2020 18:36:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2fpG-0005Vi-Jz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 18:36:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BEBCD20848;
 Fri, 14 Feb 2020 18:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581705389;
 bh=T+ilQI9wpmnmJVmL5LiaSl2V8wIK4X9cI78O+ANnNOE=;
 h=From:To:Cc:Subject:Date:From;
 b=IlBTVTsHr/G7gWRjLL220TV6NPEbmZBkt9QuKo/4Rpgju5AedYJhyRse2UusxxeJZ
 zzQOay2oAzn6jKo984xRFeUNONIWdX8k3ofL0/Ht5Z6qAuuwpqXhUf2Vr9Bvb8Mum0
 iOe4t7QGTnK4VAYcCWHOKefn2AH6GdhFEEE6YaWo=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j2fpE-005J5c-2m; Fri, 14 Feb 2020 18:36:28 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 0/2] KVM: arm64: Filtering PMU events
Date: Fri, 14 Feb 2020 18:36:13 +0000
Message-Id: <20200214183615.25498-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_103630_677575_EBBE0CCF 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is at times necessary to prevent a guest from being able to sample
certain events if multiple CPUs share resources such as a cache level.
In this case, it would be interesting if the VMM could simply prevent
certain events from being counted instead of simply not exposing a PMU.

Given that most events are not architected, there is no easy way
to designate which events shouldn't be counted other than specifying
the raw event number.

Since I have no idea whether it is better to use an event whitelist
or blacklist, the proposed API takes a cue from the x86 version and
allows either allowing or denying counting of ranges of events.
The event space being pretty large (16bits on ARMv8.1), the default
policy is set by the first filter that gets installed (default deny if
we first allow, default allow if we first deny).

The filter state is global to the guest, despite the PMU being per
CPU. I'm not sure whether it would be worth it making it CPU-private.

Anyway, I'd be interesting in comments on how people would use this.
I'll try to push a patch against kvmtool that implement this shortly
(what I have currently is a harcoded set of hacks).

Marc Zyngier (2):
  KVM: arm64: Add PMU event filtering infrastructure
  KVM: arm64: Document PMU filtering API

 Documentation/virt/kvm/devices/vcpu.txt | 28 +++++++++
 arch/arm64/include/asm/kvm_host.h       |  6 ++
 arch/arm64/include/uapi/asm/kvm.h       | 16 ++++++
 virt/kvm/arm/arm.c                      |  2 +
 virt/kvm/arm/pmu.c                      | 76 +++++++++++++++++++++----
 5 files changed, 116 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
