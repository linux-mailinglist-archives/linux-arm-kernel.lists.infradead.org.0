Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C34DADFE8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 22:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kF9BLvx9H8ud6nKTPbhXbnSbXbO0ttPhOV7hcePQl80=; b=S2mZgjO+qehgCp
	LkKs1I3Dl/H8VU3sVkMjDqDR5VK0AS8cxr0zhXKv849YHZPCJzQdXoq9hESMBZcCJVfZMBkXzJgng
	t3mA1jh8koR7VhplN/z1yICiJeqm/Rdi+h5K3MiEY6NvlnDZ3P4G3cW7w8H6vvT6zUo9DgYV4jPOA
	sxeG5Nkb1LRxo9M7ODqcz9/2YUNUD+IwT5nyCTxD7jOW1NV272tOtNTOtKz2y0jNE6RSBpJ35TEbS
	b5xIYmYd/YDoLNUenlg4Y2RmIWT4YltPT3bNU5GDk8HWKnvZkD2fT4ulNO1sBXbb1ipUGHK5dTBB3
	m9v28Afb9gggoisejLzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7QAr-0008ON-UJ; Mon, 09 Sep 2019 20:22:09 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7QAj-0008O0-4I
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 20:22:02 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MtwIW-1iQ3WI0jXQ-00uGVx; Mon, 09 Sep 2019 22:21:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: fix unreachable code issue with cmpxchg
Date: Mon,  9 Sep 2019 22:21:35 +0200
Message-Id: <20190909202153.144970-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:6HbGcOwcgeWZk7saAnF44EQwGRc5qar4XnbwhsGQ9AeeGtgVJQ0
 jJnqy2N1qSE1vkSfHW+ITZ7JxZVOzcynaRgSnRdUR27uZBdiqKyQncb1oAb8ZmA2gUv7jjt
 9E5l4E7yQRz5TcvxGRo3Byc/2TanVmuFGegAxsPoUXDoqNQZvQci40d1brApPysfW7fOesk
 VdklBj8+v4Gsa+toV+uVA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:C1d7SlUsv+A=:Lj2/wQb1QrZDoyfBBvZrvm
 370fWlMX2geahYOibVfa+G1FGva5/fqlJYl7pkjy5dnYfjEbNUm/+ebrQMN41Q3qJwKd1dR6z
 T5nAheJ+Bemia9f4GTp5E9bIF9eAa1l/DZ0/hiSWcmpl/qlS8usEHW+fll9VTLZiqHz+K5rsH
 CVzTI1MUnIsseeoRFpmrkVxOY4Dg/I0T4gB2D7T55wdtiAZK5dZiiCFTT617FfryJyGsccUeJ
 galX2PFrtBenOyO9SHS0SFas5EM01nQKILKNxUuN1poDQ1DMjPrFTUZMu8u53UiYfJCDlpbqV
 Lt1K1uItp4HOfBi1N2GQeu0BwevjsxeMdl7/PJvSTy/ScRvhqeZlxl+g+ngoLtv4joHKsprp6
 L4ncVos7HATxanCI4uLoC/0AM0c/TL20KycRzkr+RV5/HJAVk7DIKmEBhsSnSQI07pLbvTm4i
 uxGCxUvLIsC/yU5IoULbklys2QD31uxuYBoehErQlLpIA/bKB49f42U4sTGrdcPUwf51X2VxS
 6Q4aiW2htlXlrNx3mmyQklCtGo1VX7ri28iXwcVmnIha0JUy/8FRU1mUTbLd2TQgmv1nPV5ad
 fqE8m3GuJeVauXjoIGNJ/+L4kMPqgaYvq/TImckjqaEaWkijR2TOPMPMC9rTBjZs3LBtis8TV
 obr9Oy1Ade2++k7MJKQUK3B90LC2/EZaiidkjrsicmaYQBmiCzsLKzJuDqcDONc3xy7+fMe4O
 5oSIifTYUg0VTTDWzObdc/TaeMd91zbiSNRFyfXCnCBXz/vQozBvvaPpcmC82YeojyaSB0AUF
 lGjKB9e0veJsRu1LPHIYcnlGukAoNUw4q5Eo7jmuJQ1f9oU2g0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_132201_468229_B6B2C09F 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Andrew Murray <andrew.murray@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 build with clang, sometimes the __cmpxchg_mb is not inlined
when CONFIG_OPTIMIZE_INLINING is set.
Clang then fails a compile-time assertion, because it cannot tell at
compile time what the size of the argument is:

mm/memcontrol.o: In function `__cmpxchg_mb':
memcontrol.c:(.text+0x1a4c): undefined reference to `__compiletime_assert_175'
memcontrol.c:(.text+0x1a4c): relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol `__compiletime_assert_175'

Mark all of the cmpxchg() style functions as __always_inline to
ensure that the compiler can see the result.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm64/include/asm/cmpxchg.h | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/cmpxchg.h b/arch/arm64/include/asm/cmpxchg.h
index a1398f2f9994..fd64dc8a235f 100644
--- a/arch/arm64/include/asm/cmpxchg.h
+++ b/arch/arm64/include/asm/cmpxchg.h
@@ -19,7 +19,7 @@
  * acquire+release for the latter.
  */
 #define __XCHG_CASE(w, sfx, name, sz, mb, nop_lse, acq, acq_lse, rel, cl)	\
-static inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)		\
+static __always_inline u##sz __xchg_case_##name##sz(u##sz x, volatile void *ptr)\
 {										\
 	u##sz ret;								\
 	unsigned long tmp;							\
@@ -62,7 +62,7 @@ __XCHG_CASE( ,  ,  mb_, 64, dmb ish, nop,  , a, l, "memory")
 #undef __XCHG_CASE
 
 #define __XCHG_GEN(sfx)							\
-static inline unsigned long __xchg##sfx(unsigned long x,		\
+static __always_inline  unsigned long __xchg##sfx(unsigned long x,	\
 					volatile void *ptr,		\
 					int size)			\
 {									\
@@ -103,8 +103,9 @@ __XCHG_GEN(_mb)
 #define arch_xchg_release(...)	__xchg_wrapper(_rel, __VA_ARGS__)
 #define arch_xchg(...)		__xchg_wrapper( _mb, __VA_ARGS__)
 
-#define __CMPXCHG_CASE(name, sz)			\
-static inline u##sz __cmpxchg_case_##name##sz(volatile void *ptr,	\
+#define __CMPXCHG_CASE(name, sz)					\
+static __always_inline u##sz 						\
+__cmpxchg_case_##name##sz(volatile void *ptr,				\
 					      u##sz old,		\
 					      u##sz new)		\
 {									\
@@ -148,7 +149,7 @@ __CMPXCHG_DBL(_mb)
 #undef __CMPXCHG_DBL
 
 #define __CMPXCHG_GEN(sfx)						\
-static inline unsigned long __cmpxchg##sfx(volatile void *ptr,		\
+static __always_inline unsigned long __cmpxchg##sfx(volatile void *ptr,	\
 					   unsigned long old,		\
 					   unsigned long new,		\
 					   int size)			\
@@ -230,7 +231,7 @@ __CMPXCHG_GEN(_mb)
 })
 
 #define __CMPWAIT_CASE(w, sfx, sz)					\
-static inline void __cmpwait_case_##sz(volatile void *ptr,		\
+static __always_inline void __cmpwait_case_##sz(volatile void *ptr,	\
 				       unsigned long val)		\
 {									\
 	unsigned long tmp;						\
@@ -255,7 +256,7 @@ __CMPWAIT_CASE( ,  , 64);
 #undef __CMPWAIT_CASE
 
 #define __CMPWAIT_GEN(sfx)						\
-static inline void __cmpwait##sfx(volatile void *ptr,			\
+static __always_inline void __cmpwait##sfx(volatile void *ptr,		\
 				  unsigned long val,			\
 				  int size)				\
 {									\
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
