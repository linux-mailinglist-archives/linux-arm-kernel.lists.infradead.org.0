Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 771EB1C737C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZ+F7RjboiUydQtO2ieKV4ZoTn7hnr5AAyP8HT0y4i0=; b=CsQrcF43fi392h
	AQUXeULqrJiOIhn/oOEKkS9Xwp3Xywdf/s9AWcnw+loPsgE/qhfHu91OiuYluJYJqtd6HAaeGWd5G
	SPfjSnzFqKMPNbQ3au7IkDEskAM6tEsPVGYlcmno2NJx6enXHEkt2SaU+TzRGdSYdgmydrX0dd6i+
	CrByQ/df0UMQcy365oiRegZ3I26ou8/rvFD41j+B6ciaCjYDlW/fe5/jVME+yfxtvepaDV5BmU+n6
	uLDzGrcrdoI002sw781Bwsn0iLZcnkAjPo0idS35O4XagFPUF7k0lAKoGBjkzk9yGmAr9Qhk8at2E
	xNljrpcvr7zFUC5eokqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLXC-0000Fi-W3; Wed, 06 May 2020 15:00:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLWx-0007nk-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:00:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E1C59D6E;
 Wed,  6 May 2020 08:00:12 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 59DE63F68F;
 Wed,  6 May 2020 08:00:11 -0700 (PDT)
Date: Wed, 6 May 2020 16:00:01 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCH v2 1/4] arm64: cpufeature: Extract meta-capability scope
 from list
Message-ID: <20200506145959.GF2878@gaia>
References: <1586842314-19527-1-git-send-email-amit.kachhap@arm.com>
 <1586842314-19527-2-git-send-email-amit.kachhap@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586842314-19527-2-git-send-email-amit.kachhap@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_080015_437830_E3050D4B 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 11:01:51AM +0530, Amit Daniel Kachhap wrote:
> This fixes the earlier commit 3ff047f6971d3c ("arm64: cpufeature: Fix
> meta-capability cpufeature check"). This patch was added to fix the
> dependency of individual meta-cpucaps checks on the array entry order. This
> dependency was specifically added for cpufeature of system scope.
> 
> However this dependency can occur for cpufeature of boot scope such as
> ARM64_HAS_ADDRESS_AUTH so this patch renames the helper function
> __system_matches_cap to __cpufeature_matches_cap and invokes the match
> handler with the scope fetched from the cpufeatures array list.
> 
> Fixes: 3ff047f6971d3c ("arm64: cpufeature: Fix meta-capability cpufeature check")
> Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>

Does this patch need to be merged in 5.7? The fixed commit went in
5.7-rc1 but it doesn't look to me like we'd have a problem without this
fix. Basically we read the sanitised regs with SYSTEM_SCOPE rather than
the current CPU regs. These are already populated correctly to the
register values of the boot CPU.

Otherwise I'm fine with the patch, just disputing the Fixes tag.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
