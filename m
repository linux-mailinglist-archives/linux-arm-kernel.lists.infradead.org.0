Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B788616AF68
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 19:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:In-reply-to:
	Message-ID:Subject:To:From:References:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wNqYnnNEovplXJykh3mhVQCXSwHr4p76DMex+ahKRA0=; b=SHpL+in338LWVC
	7cUXVJdaMNhdZEmbYJ6AelXu1RJJLHxZwFMw1q0bK6VO+3pD9vDWBDL5NUPEFyRmmzKon890xIFGu
	Y9atdEvv3x+m9J+nR4kl0kH6aFc7IwJs15isgG1h+SRzSZd/vveRpGqLzoThXQp2TVRqL3MfjZMka
	vnn+sw/pMxezRvp19O/1ot5oXj45CXnAFwLibVt0IS/lo3J4ETzCTCxQaDO2GQm7KfYPN3xZpLb4k
	RVpp5ij+JU8CqQnshhN5appi5jTNouCPvJv8sPfC6yZp1eR0xQ/I8ao6umnGWXfLOOChSBkxYQ8jQ
	tOPvJq07+Ea/oZCW48Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6IeX-0003fx-FR; Mon, 24 Feb 2020 18:40:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IeQ-0003ei-GY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 18:40:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0D4EA1FB;
 Mon, 24 Feb 2020 10:40:16 -0800 (PST)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFB0F3F703;
 Mon, 24 Feb 2020 10:40:13 -0800 (PST)
References: <20200224141142.25445-1-ionela.voinescu@arm.com>
 <20200224141142.25445-2-ionela.voinescu@arm.com>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v4 1/7] arm64: add support for the AMU extension v1
Message-ID: <jhjpne3ygmm.fsf@arm.com>
In-reply-to: <20200224141142.25445-2-ionela.voinescu@arm.com>
Date: Mon, 24 Feb 2020 18:39:37 +0000
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_104018_597001_63940A77 
X-CRM114-Status: UNSURE (   7.33  )
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
 peterz@infradead.org, catalin.marinas@arm.com, linux-pm@vger.kernel.org,
 linux-doc@vger.kernel.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mingo@redhat.com, viresh.kumar@linaro.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com, will@kernel.org,
 dietmar.eggemann@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ionela Voinescu writes:

> The activity monitors extension is an optional extension introduced
> by the ARMv8.4 CPU architecture. This implements basic support for
> version 1 of the activity monitors architecture, AMUv1.
>
> This support includes:
> - Extension detection on each CPU (boot, secondary, hotplugged)
> - Register interface for AMU aarch64 registers
> - amu=[0/1/on/off/y/n] kernel parameter to disable detection and
>   counter access at runtime
>
> Signed-off-by: Ionela Voinescu <ionela.voinescu@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
> Cc: Marc Zyngier <maz@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>

Reviewed-by: Valentin Schneider <valentin.schneider@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
