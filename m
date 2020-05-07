Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E731C8D8A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K99k/Uyp9JVYbKgRNpggh7gPA53AIIK0HtsRs/FbsF0=; b=UeuPJ3aSBbF0MF
	AjW7b7PG1wipuR5Ju15bDaKTF+aLSqX9NxAU3d8NnsAG72XpJR1nOATHjir1T9aGK5EEaAeCi4iS5
	0IdPHe5rhNoxzAG2EGHl2oqdOlNKAkjDiZyzAFt8pDwsbJ2Vg1Ufj8j3T2L+iW4PjUzZKTvxmOxk3
	gK3t7YVWKPa9Df5cvWpUcq4VVYKcevmk3lRJdJ6wDWnDQtMZ1GM5rt+3rkzPICAGQfj8QtS4In8SK
	R30q/DixSdjviGgdJH/G6SS/u5/v4a07jkErUApw6zvzw/gALrQjCAi2pbcmHVqWsMPBP2lTh6+gW
	Yh5awgy+rPsu3U3L8J2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWhAD-0002Vw-FJ; Thu, 07 May 2020 14:06:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh9D-0000wM-Ff
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 14:05:13 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C79592082E;
 Thu,  7 May 2020 14:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588860311;
 bh=UGMaIlmDe2PXXTCKVFDLhA4MiqbreTvt2g9+e67JfNI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zWjmSSzhb+E9LNn9Z+3SfSebl0OxqpT9NebL/MFNLynazreXVZlpJguuZojkRlq+4
 IStMR7EFrTps/BTPAntLRtv9KJML9JuFnWVl6Caz4peuX90hr5R0F5E4naRYX2MaIw
 zaIaIiP+z1LcjeJ1v0to2hGmQ40JoPpCUbnt5uFQ=
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: vdso: Add --eh-frame-hdr to ldflags
Date: Thu,  7 May 2020 15:04:56 +0100
Message-Id: <158885881702.237249.11426070057323434764.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200507104049.47834-1-vincenzo.frascino@arm.com>
References: <20200507104049.47834-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070511_576395_AEC8AAB9 
X-CRM114-Status: GOOD (  10.40  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 11:40:49 +0100, Vincenzo Frascino wrote:
> LLVM's unwinder depends on the .eh_frame_hdr being present for
> unwinding. However, when compiling Linux with GCC, the section
> is not present in the vdso library object and when compiling
> with Clang, it is present, but it has zero length.
> 
> With GCC the problem was not spotted because libgcc unwinder does
> not require the .eh_frame_hdr section to be present.
> 
> [...]

Applied to arm64 (for-next/vdso), thanks!

[1/1] arm64: vdso: Add --eh-frame-hdr to ldflags
      https://git.kernel.org/arm64/c/7e9f5e6629f6

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
