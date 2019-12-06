Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4561F114FB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 12:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7ziXlX8KPFWpurQAq8iYxD9E7bqk+ZgcHBXDML9Uzj4=; b=UkQUwIY5GM8w+u6772QLvNdHl
	yRevwIRS9bCAGtMpXokzAW73oZR3lJ6V0a45w7kiavmJJ/MQG0tIEoM1WaZVEkhyvqLcl/iW44Y5+
	2G04IlcUyb8KxriIOtPvSMgeLOqDcNDNmXp5ddsi3rv4242itGrLLKttEwmOuWhqwiHDlo6KB+iU4
	W/sZydY2xibP3LLJE2c0fYr8gEHK2A8KmU7IpCH0QG2pfZPbB4pc1xOGg9mavWsvpEnvtDpA9amAY
	mUoZ4+Snk7x3t31NxvJh0r4cTbbEqKxTNj/oNe6Yo+VczIYosJDN6f0pAxzI8c24ljbKM+i8Fw/x3
	2mHzx3bIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idBga-0004FQ-DQ; Fri, 06 Dec 2019 11:22:12 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idBgV-0004Ez-0E
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 11:22:08 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1idBgR-0001XP-KJ; Fri, 06 Dec 2019 12:22:03 +0100
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH v2] arm64: KVM: Invoke =?UTF-8?Q?compute=5Flayout=28?=
 =?UTF-8?Q?=29=20before=20alternatives=20are=20applied?=
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Fri, 06 Dec 2019 11:22:02 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
References: <20191016165953.o6ogh4fdmsjmd2sw@linutronix.de>
 <ecfbb413-e97e-c3eb-e051-1f218b387edd@arm.com>
 <20191128195805.c2pryug4ohmcoqwd@linutronix.de>
Message-ID: <5aae0e8248df45c3f4c08a8bb5aabe06@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: bigeasy@linutronix.de, james.morse@arm.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
 catalin.marinas@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_032207_192079_DA5BF1C8 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-28 19:58, Sebastian Andrzej Siewior wrote:
> compute_layout() is invoked as part of an alternative fixup under
> stop_machine(). This function invokes get_random_long() which 
> acquires a
> sleeping lock on -RT which can not be acquired in this context.
>
> Rename compute_layout() to kvm_compute_layout() and invoke it before
> stop_machine() applies the alternatives. Add a __init prefix to
> kvm_compute_layout() because the caller has it, too (and so the code 
> can be
> discarded after boot).
>
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>

Acked-by: Marc Zyngier <maz@kernel.org>

I think this should go via the arm64 tree, so I'll let Catalin
and Will pick this up (unless they think otherwise).

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
