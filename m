Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245391C5854
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 16:13:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KfS+/6zAPjb9142n9IrkRYC5rJPGhKSZ3snicZ17618=; b=fSGgn0v0EYRAvc
	GQQza5qw/JD1ovtP7ngLVVSbcCJAGeQXXKQTdmeeT2St5AdUhn5LX53rOryhmgE6Bl3eYnF09kqXy
	oVU/dWmgjUgdhsyS5V9Qa2wSctICOziGFQ4lpN5hIIMUMIMpIYvDSU1YhTAmlqksKwaJ/uJqyksTC
	rBb2akpTg4p035bbSWukheGHWrQhqRn1qdnwsnjOays0vEGpPcnwIqHdrEI4xs62tDwsgskg/169O
	7VxylTuZaho0DD+Dh9yXvHQ5Ufbx/ua9zKk3EPo41cTu+YM5BGtHoPDLRUWc8sYcUIwp4MlV5I9Cy
	iPptYfSjjl7rcqU2oaMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyJx-0003w4-4j; Tue, 05 May 2020 14:13:17 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyJo-0003vU-Hj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 14:13:09 +0000
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mrwnt-1ikU0n0FhF-00nxqr; Tue, 05 May 2020 16:13:00 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Torsten Duwe <duwe@lst.de>, Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: [PATCH] arm64: disable patchable function entry on big-endian clang
 builds
Date: Tue,  5 May 2020 16:12:36 +0200
Message-Id: <20200505141257.707945-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:rkN2hFA/4F6NEnM1J64C8Aoib8T4jOG+siBiFVT9WROwOdH7x9t
 4WH888TrHbFW/FHpjxq3U7UIYxkq42gZJvGVmzWSKCE/CP5xLY+4t0fiBxQKzBPqACB4Rxu
 Ppew9ALCOA7Zl3kFJwrRLZlpqi3jMRixTt0nmQPz31Umnk3BLwwh/1zbLQKb3mod0qsnKR/
 rNXzfBEB11Ep2dBi8d6QQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cdva0oxEiZM=:FQRtrzAr9rWx5IUwkwoKVU
 4+edO8zLchzG0t3lP2T3zLl0VcO/vDceZ7U8gqo0szcf3UGrnp8cqm3RsThr2qeuZDCnoxmJO
 veqZajiQ7CWyp2xDqmSubJR9bg6if5TOtLgEJ48h50YQHo2owT1RleKCLy76qLfmwy4xRXVkR
 XKLca5YQpwBnghGgN/jyJE2KrT/TKk+TsK/QDz2CRA77IiqjaVSB2akJo9+zH0ilrj/1TUj2D
 beLTyKsIsE1xxTZGlLlp66kd5pROyDWGCL1CJIrsmQdcqPBJv0vfcntLO68w61O8bNp6iWhCh
 ANwWYVWBfMwiIl2qwGJw3ZgjIySZ8wCqK5wU1YqOl26ial/nrVdcbrkixCFkG6atDKTbdZv5o
 lM6FuDHZ2WAl5ilc09yi8pu+sn3P1/m+UcpcsxxEpqJQxNKYQsIzCTZ3uyuC3Uz9PD7HjK32B
 0Bx+Tcgsyya3G5pIone2mmBYxaClBltnbMnWQZJtTIlVpk3MIxLlrORfTCXPpOiqfOTzqNz3J
 D9zb8xppaQvpQHwp81dh1mJh7SVz99Du3S+zZy35Syk9ovW1Te6tM60nT1aUZa9TYRgScSyJ6
 fTfaB8IpMAB8iJV/RjgmGLPR9q4/q9fWr7cd7f+JQwWvmp3H9ACLTum5FFlc6OKxiAo+S0W6V
 Qe2JeJswxsdeh+GNiwZBcsq5GwonmV950Wpccx0cOX/zGJEK3kzxhV6CFJaN+pV9Ae2jku1w2
 9INoLYGGsrvr8JLgpirpXlAifwJgXoorZG035wf4Nt+ZqQ7+8lCCAdPFhzkSnTRkqZ59sCG5x
 v/JSrNAdWm8DfWvw+w/viI7QyCBKfg1VXkZ7O+ztIiSTuzh++8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_071308_879957_5639A21D 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [212.227.126.134 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Julien Thierry <jthierry@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Torsten Duwe <duwe@suse.de>, Steve Capper <steve.capper@arm.com>,
 linux-kernel@vger.kernel.org, Kristina Martsenko <kristina.martsenko@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Alexandre Ghiti <alex@ghiti.fr>,
 clang-built-linux@googlegroups.com, Josh Poimboeuf <jpoimboe@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Ionela Voinescu <ionela.voinescu@arm.com>,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang only supports the patchable_function_entry attribute on
little-endian arm64 builds, but not on big-endian:

include/linux/kasan-checks.h:16:8: error: unknown attribute 'patchable_function_entry' ignored [-Werror,-Wunknown-attributes]

Disable that configuration with another dependency. Unfortunately
the existing check is not enough, as $(cc-option) at this point does
not pass the -mbig-endian flag.

Fixes: 3b23e4991fb6 ("arm64: implement ftrace with regs")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 4b256fa6db7a..a33d6402b934 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -151,7 +151,7 @@ config ARM64
 	select HAVE_DMA_CONTIGUOUS
 	select HAVE_DYNAMIC_FTRACE
 	select HAVE_DYNAMIC_FTRACE_WITH_REGS \
-		if $(cc-option,-fpatchable-function-entry=2)
+		if $(cc-option,-fpatchable-function-entry=2) && !(CC_IS_CLANG && CPU_BIG_ENDIAN)
 	select HAVE_EFFICIENT_UNALIGNED_ACCESS
 	select HAVE_FAST_GUP
 	select HAVE_FTRACE_MCOUNT_RECORD
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
