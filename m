Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD031BC1FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kLpctEG7cYW9QNpWCdI57nYLMniee4yrfcQVVu4Tjsw=; b=rNL8MIBc+yBw9B
	s8BVK7mcfb4dZczQ0o02er/6aiQ0HmYacMZf3RQ2BjGPQiDCW8bHpBHRnM8JwO4fKPrCFhjMTJTRk
	4tapbkLXZF6BU80cUUI7yMbdgJAb4ZZ3q21rqsahzT2lON9S1CX09Z2CIe3o28aVX2jteLJoWANu8
	fTmnxP79RqmMSSXllVbFZRYIqnTK3VZ24nkdLFaYZQ4mcIchLDUd2IQXTcLRWwR+LtY/vxa+qyaIn
	njBRex/lsoZz+eg7lIQi0SfR1UFASCcJSLqdgz2PAZxonVCwpRdIfP+7UdQOcklagQG+3pNwiKW5g
	Hrq24umRnygXxoep87Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRc7-0004eL-J6; Tue, 28 Apr 2020 14:53:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYa-0008Rp-TN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:50:00 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0E6D206C0;
 Tue, 28 Apr 2020 14:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085396;
 bh=+2uEQ5jvQ4UxBlh92CGWag4inP7/rNpwFZ6aC1jFuMc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OYvzKlwV/caAVRS6ehwRKnrHiHxaz3/jtm7hABUvTOH/cL7dBP5NHyKP4wY4FO2Pi
 VHA26yye6972XZDe9WfiSd9FOLTTUaYyKp8CeWVeJ1iTx5lwNZnoMKQSjlNAv7VwJk
 g0b4sYzSTIy7S9vQl35ARhIV/2CGt2Ka0CJlpXc4=
From: Will Deacon <will@kernel.org>
To: Gavin Shan <gshan@redhat.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64/kernel: Fix range on invalidating dcache for
 boot page tables
Date: Tue, 28 Apr 2020 15:49:37 +0100
Message-Id: <158808168421.218901.8759664423433870069.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200427235700.112220-1-gshan@redhat.com>
References: <20200427235700.112220-1-gshan@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074956_987705_FE444509 
X-CRM114-Status: UNSURE (   8.88  )
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
Cc: mark.rutland@arm.com, steve.capper@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, broonie@kernel.org, shan.gavin@gmail.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 09:57:00 +1000, Gavin Shan wrote:
> Prior to commit 8eb7e28d4c642c31 ("arm64/mm: move runtime pgds to
> rodata"), idmap_pgd_dir, tramp_pg_dir, reserved_ttbr0, swapper_pg_dir,
> and init_pg_dir were contiguous at the end of the kernel image. The
> maintenance at the end of __create_page_tables assumed these were
> contiguous, and affected everything from the start of idmap_pg_dir
> to the end of init_pg_dir.
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64/kernel: Fix range on invalidating dcache for boot page tables
      https://git.kernel.org/arm64/c/9d2d75ede59b

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
