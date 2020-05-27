Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E401E4236
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hoEDAhASIG14R6D4EYZIriNs1ebRCAJKm8W21s/J0ng=; b=BBoKl/z67lEC6P
	S8pHA32P1Q6XUh80usksHAzWQ3ngiyocG3attXQJvWIXqwTju4njoWikr6WJUg3V+fcPLeBMCHeYO
	hCER1ScfUJQt6dj0pwo1O5QYt3uu9xTT6o9iOgxDHM/4Md9bf8tnxFy+2KZa4Z5zvwH0jmjaYwKVN
	oom9KEHpL6TLxdCWisBkR1LSuyP12Q6IMXdMDouMSBT4zl4qpQVZIEq6Wav8UBAmJXg1IPjLh7B61
	/cZtYJCzsyC6UkUxubyZIhZ6JoB2qvx9T9LccHjXlSbZtNlZCDP7ksRmsvoq18PWgZyVabDteqJpH
	/cjlLE+4hPYqRqwrKxww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdv8I-0001sC-JP; Wed, 27 May 2020 12:26:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdv89-0001rh-3B
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 12:25:58 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 47E31207D8;
 Wed, 27 May 2020 12:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590582356;
 bh=CI6ZUH/O6aqTBvIkDI9U0uYsW6TAdMGrPW9I0KuSBzM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=giXOSsWX1tfeRC3y3wfvOE+KqNzme8wtOZsQnCY1sOb8X/fCmLyEEsU3Tt2k+FOfI
 GCo257OUf98XszZXQOw2E5xzYd2R8ssR+SMZwhDIT9w5EHCc51xXHQkICKVmdPZHrm
 5sDRTzAfjXMOeyOaOjOrnOieRFZ/fg5Q5vO6bt74=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
 Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V3] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
Date: Wed, 27 May 2020 13:25:49 +0100
Message-Id: <159057996975.77588.7036217455816555869.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1590573876-19120-1-git-send-email-anshuman.khandual@arm.com>
References: <1590573876-19120-1-git-send-email-anshuman.khandual@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_052557_157954_95405620 
X-CRM114-Status: UNSURE (   8.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 27 May 2020 15:34:36 +0530, Anshuman Khandual wrote:
> There is no way to proceed when requested register could not be searched in
> arm64_ftr_reg[]. Requesting for a non present register would be an error as
> well. Hence lets just WARN_ON() when search fails in get_arm64_ftr_reg()
> rather than checking for return value and doing a BUG_ON() instead in some
> individual callers. But there are also caller instances that dont error out
> when register search fails. Add a new helper get_arm64_ftr_reg_nowarn() for
> such cases.

Applied to arm64 (for-next/cpufeature), thanks!

[1/1] arm64/cpufeature: Add get_arm64_ftr_reg_nowarn()
      https://git.kernel.org/arm64/c/3577dd37c703

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
