Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E85E1F9D8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 18:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fiZWHwVYYIzkgkbHrLZ0iWogDLmZhr6ccFejRpsxUA=; b=gYmickXJbsMjYG
	WxwGdjKy/iBQnM76LlGz5brCUmCUuI/T5BM9K1G2VIUAX6ZLlUrPEnUxpGENswjQpJwHsWPuSHGCn
	Ohn3slTD1L1odDi1YXFRLPXfxLFCoGQ6W6gt4HiFY4RdB3F8/5up3SNAnCmzJ7x4QRqtW7/DyGg3B
	551GqvzgHjvjKKgHDxTvtoayRPaaw56xlk3y9MvPKflEkuHhpy/RQegXpRr+UCFZxNWE9fW22b2df
	yeVfcSlwzzqweeFrZL7dgbl9rODAaLHPRDVHHwBdWKPYViq5Avj90CppK43OdbbfkTQBA3/kRDfmo
	Pif1tlOFn3ruk1YpPgAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jks4P-0006TE-1K; Mon, 15 Jun 2020 16:34:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks3q-00066d-GM
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 16:34:16 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 791B22080D;
 Mon, 15 Jun 2020 16:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592238854;
 bh=OqfWA/CHtbNnQWA0yNQcf14RySEDAIJDOlbonBobvcw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iqfiAkHKOU6SWYzst2eQ+iqy9jOFcH1vxOLYCMqgtTOJ5/Z7EyltZ3zgUZYAdbCMK
 QRfjjlNfkQOYPmv5i5GAjcHbom8oaxvo12qDryS9hZv/FJgjM39yP3e2p5WB3fxA7n
 hucHG7gQdLFc9i/1BEaoNXVxtTGFspnUA5UJW0WQ=
From: Will Deacon <will@kernel.org>
To: mark.rutland@arm.com, anshuman.khandual@arm.com, sashal@kernel.org,
 catalin.marinas@arm.com, ard.biesheuvel@arm.com,
 Shyam Thombre <sthombre@codeaurora.org>, will.deacon@arm.com
Subject: Re: [PATCH] arm64: mm: reset address tag set by kasan sw tagging
Date: Mon, 15 Jun 2020 17:34:02 +0100
Message-Id: <159223432421.132562.15172582070330227879.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
References: <1591787384-5823-1-git-send-email-sthombre@codeaurora.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_093414_582098_63DE7393 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 10 Jun 2020 16:39:44 +0530, Shyam Thombre wrote:
> KASAN sw tagging sets a random tag of 8 bits in the top byte of the pointer
> returned by the memory allocating functions. So for the functions unaware
> of this change, the top 8 bits of the address must be reset which is done
> by the function arch_kasan_reset_tag().

Applied to arm64 (for-next/fixes), thanks!

[1/1] arm64: mm: reset address tag set by kasan sw tagging
      https://git.kernel.org/arm64/c/8dd4daa04278

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
