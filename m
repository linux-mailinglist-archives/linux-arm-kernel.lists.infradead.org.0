Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E59CE181758
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 13:02:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMa2NjiVwCrjZduQIeYjJAxN24tTwUqbTLnS6B0YEmI=; b=LX9EUq7WxeeViZ
	OzvoSqteq3FsHBqG56ib9nMLi2MMsJcXZkO/R0awnMqHY/xkFADCwykqzTR9Xfq6vm8gM3qZl/vfp
	vdkoeLQhldhrGDSC1T1HBFaRgE/540WDl6rS2v6QlCPMEjsvsL3TlOQo78hKWs4q1vwxBJ25RE61g
	xGU6YHWBP2ndHJR64c0R6+RwAAMq8UWBAj2j1qihiVLED1xN7PIG6b0Ef9bUDN5m3K59QGMclbPuK
	DxSiraWAE/oHcG7fkEy/oIb7Yw0Cc+cYtwHYmFWnvhNf9CIioBiHXxr/n4hmreZpCbv0NueQ2HjGb
	2jO+FDCOJbNmHM2XhB3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC04B-0006O9-7k; Wed, 11 Mar 2020 12:02:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC040-0006NV-EQ
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 12:02:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B9C891FB;
 Wed, 11 Mar 2020 05:02:15 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 EF18B3F6CF; Wed, 11 Mar 2020 05:02:14 -0700 (PDT)
Date: Wed, 11 Mar 2020 12:02:12 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] arm64: Mark call_smc_arch_workaround_1 as __maybe_unused
Message-ID: <20200311120212.GE3216816@arrakis.emea.arm.com>
References: <20200310232544.8792-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310232544.8792-1-natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_050216_526297_3922B746 
X-CRM114-Status: UNSURE (   7.85  )
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
Cc: clang-built-linux@googlegroups.com, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 04:25:44PM -0700, Nathan Chancellor wrote:
> When building allnoconfig:
> 
> arch/arm64/kernel/cpu_errata.c:174:13: warning: unused function
> 'call_smc_arch_workaround_1' [-Wunused-function]
> static void call_smc_arch_workaround_1(void)
>             ^
> 1 warning generated.
> 
> Follow arch/arm and mark this function as __maybe_unused.
> 
> Fixes: 4db61fef16a1 ("arm64: kvm: Modernize __smccc_workaround_1_smc_start annotations")
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Applied. Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
