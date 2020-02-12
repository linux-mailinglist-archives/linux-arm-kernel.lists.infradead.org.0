Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DAE15A830
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 12:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IJvvxIgKGPvhw35Ncgyf9GEiFlGdjZJzeMYq+vHCFw=; b=RZosb2didJNKv8
	DLygB7bjacmdB8ya8srVgTmqvRnHjKIZEabFIgzICQYjHfXsgIEW0H6Mn52fpPy4JkNuCvB4bB85h
	fqXw2gcu33tBSgQoAc5o7kN5hTi4oz4pUMs/ADsu4WsVupMVIo4oJ0FfPrALvZv3Cd9D16bjbEFEQ
	QTSWhVpRxryL65gVsqgHaMsIWYEDxoKXylNH8QzeNGfkUj2d8TGW3qrU8hSR3810oyMlGFs45JroL
	doH6ElCZaXYB/tOBPcqwLs4FMmX4Kh8n7pWWQuVC8kctrLOufv4rvimJPSdwF0843XeyU5hVvBb+t
	inNyUsKUPsoCdAGrrxOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qST-000248-VZ; Wed, 12 Feb 2020 11:45:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qSI-00022Q-8Y
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 11:45:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 59E9A30E;
 Wed, 12 Feb 2020 03:45:21 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 09B723F68F; Wed, 12 Feb 2020 03:45:19 -0800 (PST)
Date: Wed, 12 Feb 2020 11:45:17 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kevin Brodsky <kevin.brodsky@arm.com>
Subject: Re: [PATCH 19/22] arm64: mte: Allow user control of the tag check
 mode via prctl()
Message-ID: <20200212114517.GF488264@arrakis.emea.arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-20-catalin.marinas@arm.com>
 <cdd9d203-00c8-0a63-69b5-66234c0e9d9a@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cdd9d203-00c8-0a63-69b5-66234c0e9d9a@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_034522_340652_EC3885ED 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 linux-mm@kvack.org, Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Dec 27, 2019 at 02:34:32PM +0000, Kevin Brodsky wrote:
> Not just related to this patch, but here goes. While trying to debug an
> MTE-enabled process, I realised that there's no way to tell the tagged addr
> / MTE thread configuration from outside of the thread. At this point I
> thought it'd be really nice if this were to be exposed in /proc/pid, maybe
> in /proc/pid/status. Unfortunately there seems to be no precedent for an
> arch-specific feature to be exposed there. I guess a ptrace call would work
> as well, although it wouldn't be as practical without using a debugger.

There is proc_pid_arch_status(), currently only used by x86 to report
the avx512 status. We could do the same on arm64 and provide information
information on the MTE status, SVE configuration, ptrauth. I think this
can be a separate patch covering all these.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
