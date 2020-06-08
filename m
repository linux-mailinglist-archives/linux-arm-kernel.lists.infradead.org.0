Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D618C1F1BE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIsfaAhlKhVWyLsnSXiJmqWvCH+3GgeeAg1d6M0PpqA=; b=YTIPc/mILLFtFx
	r6jFmJXdDBN+exNceV80HJedAO8E/MSuDywXKdOiKEVrvqlMX0V4ZBPdB2uCaxXnbUt0Ma/HtUvm4
	87NNrVT6bXFt2VYUcK1xWDNU227zl4w3SD79RZ95mCg7CHVqdJDbXoJRwkJ6y4/8rYilIcOSLZZGZ
	XOXFIpNeu3wu827x1yMXLeoI5NA8SH1EAK3viu/LY0UCaS2Hh7I+aZwAoyEhb+ijrbZw+g3mqHzJU
	0WYEKMJfabNI0MleGVbcgICcAWa/tRSSLUvFL5LlyPpw6hZ0l2oNz8U+LhWGqflepPSHXtqWcdLzg
	ABuMAHRoAx1aS8qDIS1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJXL-0007PS-CZ; Mon, 08 Jun 2020 15:18:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJWu-00077C-4Q
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:17:41 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A39912078D;
 Mon,  8 Jun 2020 15:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591629459;
 bh=bH8K6QV47bD9ywC8A85uX50KHqXMVHarCXmV+FmtCmA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GVr/kWZl1vlANKtCS2u3g729fLh/pYEahzDFP2SP8aHub51fwa11wvvCGwQd2VE27
 xzrbjD4o1B5fWJi17P+C1sk/9ZL+A/9cu3T2UBsj0WqpebioFaxqfKX5uaKvj6Vm3F
 UM9CiabGNJs+lK7CrYBlotWXrvDfsLLUm4+TF1Oo=
From: Will Deacon <will@kernel.org>
To: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drivers/perf: hisi: Fix wrong value for all counters
 enable
Date: Mon,  8 Jun 2020 16:17:31 +0100
Message-Id: <159162760171.200666.5672755060952056458.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1591350221-32275-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1591350221-32275-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_081740_207838_00F716D6 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 5 Jun 2020 17:43:41 +0800, Shaokun Zhang wrote:
> In L3C uncore PMU drivers, bit16 is used to control all counters enable &
> disable. Wrong value is given in the driver and its default value is 1'b1,
> it can work because each PMU counter has its own control bits too.
> Let's fix the wrong value.

Applied to arm64 (for-next/core), thanks!

[1/1] drivers/perf: hisi: Fix wrong value for all counters enable
      https://git.kernel.org/arm64/c/961abd78adcb

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
