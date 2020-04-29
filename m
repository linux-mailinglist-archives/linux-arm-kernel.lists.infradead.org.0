Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE081BD9A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0q8GyvTVogOoLzW55tyjLuyUwg17U4mHQtE8EmLy9qE=; b=e3XuHy99xcXJgk
	Oysuth+7PnB3fC/JTJCuGCEo0qpLgd1F6vthEiREv/15lojbOl7C7vHVtQZgXHUmFS2iQ+1RpMViT
	t2agI0TfYXd8zebqivM2NwDL3NuMZXuK7egBqe8esbz66hZ+KyQzfnunsP9OPODshQA/oRlFtN3qK
	wCGauuO1sa1X7tHaVpMJLoOgjhgrj6hbbRYup5hbnyNEmFocoBXdhDA3jI9jsLmE8/na3c69tH8ig
	xSvSCJN7DBMdq8RwsHm7qpvwrAPoHUY4sSN9Bi+pKysclxDqzNC0nAtjAaaoff0uwW3dXajotsMWb
	6idfFhXlmN+ApFOJguvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjzJ-0008T8-2P; Wed, 29 Apr 2020 10:30:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjz8-0008SN-PH
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:30:36 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 601CD2074A;
 Wed, 29 Apr 2020 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588156234;
 bh=YK7OJmE5/JQbmzsCjRM7Bf3tNdMG99gstJhwUmgts8w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=t/fIkDLLM30b+5t9C27J5T69JbgAR9ZAyBbB2DEFAbsJW6M9GWUJT9l8Yvoh+eOS7
 pzZsrxjh0ZzjwnIDs9faZ4vOkugnMKWWAG0Jeoe0ZQjkbWROn8DKuDvXEV12kuhwm0
 fDUXmCqJOTSPF4vFz8JfY04hbG+IdLD9eiIYMemw=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv2 0/4] arm64: vdso: cleanups
Date: Wed, 29 Apr 2020 11:30:24 +0100
Message-Id: <158815397759.49221.2384880216074182284.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428164921.41641-1-mark.rutland@arm.com>
References: <20200428164921.41641-1-mark.rutland@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_033034_855266_881805FA 
X-CRM114-Status: UNSURE (   9.50  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, vincenzo.frascino@arm.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 Apr 2020 17:49:17 +0100, Mark Rutland wrote:
> While attempting to review an arm64 vdso patch, I noticed some of the existing
> code was somewhat baroque, making it harder than necessary to understand and
> extend. These patches attempt to improve this by making the code more
> consistent and avoiding unnecessary duplication.
> 
> The series is based on v5.7-rc3 and can be found in my arm64/vdso-cleanup
> branch [1].
> 
> [...]

Applied to arm64 (for-next/vdso), thanks!

[1/4] arm64: vdso: remove aarch32_vdso_pages[]
      https://git.kernel.org/arm64/c/74fc72e77dc5
[2/4] arm64: vdso: simplify arch_vdso_type ifdeffery
      https://git.kernel.org/arm64/c/3ee16ff3437c
[3/4] arm64: vdso: use consistent 'abi' nomenclature
      https://git.kernel.org/arm64/c/d3418f3839b6
[4/4] arm64: vdso: use consistent 'map' nomenclature
      https://git.kernel.org/arm64/c/1d09094aa620

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
