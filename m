Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286BB1E43FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ycbwFAZ2ndIEM67God0qzbTVCHCc3GhVTcXIRN1vuQ=; b=BXWYMaefPIHx6j
	753PyyCySYV+5+qwHjFZps/4lLD+G0hsalSLwiOTJldECkRGNiTMaB1NJgkVVrOHbQtEsVVzRXp/3
	TA7K1awaXAOFcRHGdIdfjHQzooo/2oEQ1KZaPqKBiWNyufDbks/pVJLLovwd4LEMMF7KDfFcgXT3/
	8l7Nhu8vjQULbhSlzCW0bqONXFN/QtJKY7m6gPrHYkgW7NJRngnAOe1a2LzHVu3H3c7OvTz7Mn148
	qjFFhic1YJwLmhwbCKJEytc1SW3MnPQXX8plpqqHELkNtZ/pcY5RCG/+ZBAeISsDdzMl7fZag0uvR
	4eyAPLgaOYN7fcMsehiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwIP-0005o4-RZ; Wed, 27 May 2020 13:40:37 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwIA-0005nL-Ac
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:40:23 +0000
Received: from localhost.localdomain ([149.172.98.151]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MRTEr-1jPrFs1MOr-00NQt9; Wed, 27 May 2020 15:40:17 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Sami Tolvanen <samitolvanen@google.com>, Kees Cook <keescook@chromium.org>
Subject: [PATCH] arm64: disable -fsanitize=shadow-call-stack for big-endian
Date: Wed, 27 May 2020 15:39:46 +0200
Message-Id: <20200527134016.753354-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:WMyBDjaVpnuIlG/nKy3Lfv0f53mC2eMeZk2hD1L4n7nGNgyw6xg
 b3nnLX7RQgVMDLaEP8jeYPeAoZu/zF0+z/vVS6FlpSZ1SIFpVVgeTGlO1P3Ep0Lb6nJG0Zt
 X7hH8s/zBBJhCqlR2UHeoEwOqmPu4huhF9KMCDNPoiOurHivHXkoO0/SR60IwHGXsXj/yAF
 b2s7GbapOF9ubsY1p+h1w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:F2IKGpPrHuM=:tVtK56yFtrrepWDvUzbOpT
 3us5e9MR1LU4mGSnKMn9Oify9OSZr+z1ryQsomr5xmHuXPTcDxkeL9FtQ6IIzaZK7M4TiGSfm
 SrfknaWXsLAXdIE0avmvLV0juYDzTAcvZtb9k/8fuDk5WLk1Xzj03wmeX+2+GlE+zBu5Uxtly
 3R9vMAQ+KN6313tG9I0lsEvMPCLQoVMlkpm95g50p9vQzl9dxAcXxemJgg5SGc+kTmITf88fw
 TzBvY2rXiGKyibM7Dok5SP7iaxP+NvipLQt1Ykwnqib722x77OfOGSRsjyyAi05G3a0HhkfLW
 /qlIZ3cfZ8HwyXCftttGaI+tPf4INmvSHFJhcz3sp8T8zFr1DfksvLUXYM0yW2t/kSyUXAY6r
 jqg7lgnshy4rjtPaSbqwns/ofBBDNm2riCNB1dm6j/QFwHquE7UuMkpmdNxd3Rhw355uhMZyG
 9WQzvmbaPYDkXMulDC/pFVUnnmk6JIMlNo7Lb4axzkRdQQrTE+TY5VKeSJqchQZ9k16DIJpfA
 DdpLlaK3d2hiHZaGGzVGDVaOXEUcC76oIrpg0ytLJaoNLJeVdcqjcrWlm0URQKYw5ffGf8cAc
 554DdULyt0uYgJix3t8iQctDwx76HodgMDd3y8TrLOfz6t5g9HUTBgCA/CHd72mCM9OMNU/Sn
 vh5Z1871+ipaobAjqACcsmCDRluu13MqfojKB79O1jaGP+0U5ndDp6R6JRAaiJnKMbYdxmimb
 BmZNfm1gtJUlSBep2bkWn5rM/hFM9OhO5b2MYMJxNJwdy0tcIsr+uEsM+4EX8ZBMrkNJ/14MP
 TsHpy/trLFTR2EQPAPCTZ2pxYPaGA3bxNgm8GAncGv7aa37U1Y=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064022_661134_6B781DED 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
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
Cc: clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

clang-11 and earlier do not support -fsanitize=shadow-call-stack
in combination with -mbig-endian, but the Kconfig check does not
pass the endianess flag, so building a big-endian kernel with
this fails at build time:

clang: error: unsupported option '-fsanitize=shadow-call-stack' for target 'aarch64_be-unknown-linux'

Change the Kconfig check to let Kconfig figure this out earlier
and prevent the broken configuration. I assume this is a bug
in clang that needs to be fixed, but we also have to work
around existing releases.

Fixes: 5287569a790d ("arm64: Implement Shadow Call Stack")
Link: https://bugs.llvm.org/show_bug.cgi?id=46076
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/Kconfig | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index a82441d6dc36..692e1575a6c8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1031,7 +1031,9 @@ config ARCH_ENABLE_SPLIT_PMD_PTLOCK
 
 # Supported by clang >= 7.0
 config CC_HAVE_SHADOW_CALL_STACK
-	def_bool $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18)
+	bool
+	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mbig-endian) if CPU_BIG_ENDIAN
+	default $(cc-option, -fsanitize=shadow-call-stack -ffixed-x18 -mlittle-endian) if !CPU_BIG_ENDIAN
 
 config SECCOMP
 	bool "Enable seccomp to safely compute untrusted bytecode"
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
