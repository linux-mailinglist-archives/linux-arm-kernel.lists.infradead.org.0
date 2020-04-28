Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA35D1BC1EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/hJ2FMtKPn9zjWSv5k1k8Az1D6SH/ERnnho5cuhOErE=; b=dfDCMf18rnys4/
	ZoWMlsCyyWVvaKLINFk6vzUF5gkWCGttBIvJ7XineV/ByJv9GbiTVLs3HZhIZLdJrrbIPOoZgh0cW
	z75Z5cxrYVof/noE+Dh8ptgj+W3tD68Mw9qMBpFHm56HnOLKpxXlDsHL/9NXPrwpk64GhWn3o1xB+
	V8G5qDnkLKO2UYMhZq19SEjIJrgkJ12Nr/zxxYsnoA434TKkpQg90ES3h2TATCFTMRFV55aHJIWg6
	W9CoAFZzldwWNakMy0j5A+TxrISiI/XhdIrmhmReKx/vwuKRzURgkgoLDidOeafu6i+9ZQKsWQTRx
	PKaJ3o9Frb9DC4R54rrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRbB-0003uM-11; Tue, 28 Apr 2020 14:52:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRYX-0008Oj-8S
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:49:57 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB3D2206B9;
 Tue, 28 Apr 2020 14:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588085392;
 bh=BugMc3ks5/5bdizWs8Gx3lzSC0Zpc761wRxA7/dmonM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=prF9BOKu3H59ioAU9wii5JpYFAYd5E4E/ZzkXE0flq+0IhREE6fO6XYnsHH3pHGxZ
 76Vzk1jhvazwF5LcCQtHAwkl/K55DvGovIUwtxtFR7505EUcuGtCEOFoLnt7138avM
 fFcGmWjjSHsPunvqui0WFglrVeKUdDeeayHm11gY=
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: set TEXT_OFFSET to 0x0 in preparation for removing
 it entirely
Date: Tue, 28 Apr 2020 15:49:35 +0100
Message-Id: <158808120907.217905.4632288691847383619.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415082922.32709-1-ardb@kernel.org>
References: <20200415082922.32709-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_074953_453269_FBBC3A82 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>, james.morse@arm.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 10:29:22 +0200, Ard Biesheuvel wrote:
> TEXT_OFFSET on arm64 is a historical artifact from the early days of
> the arm64 port where the boot protocol was basically 'copy this image
> to the base of memory + 512k', giving us 512 KB of guaranteed BSS space
> to put the swapper page tables. When the arm64 port was merged for
> v3.10, the Image header already carried the actual value of TEXT_OFFSET,
> to allow the bootloader to discover it dynamically rather than hardcode
> it to 512 KB.
> 
> [...]

Applied to arm64 (for-next/misc), thanks!

[1/1] arm64: set TEXT_OFFSET to 0x0 in preparation for removing it entirely
      https://git.kernel.org/arm64/c/cfa7ede20f13

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
