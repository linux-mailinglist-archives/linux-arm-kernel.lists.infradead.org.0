Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAED42CCE4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mua9eOITNtLNfzuHfAQfnPyKQWUEM3dS2p0G2yhpaCk=; b=Dn8mVlkdd5iUp9
	GTbrQR4zUKUsarNH98cSdwf76FtnI5SuRKP2R3eQTsZcwLq4zPLHq6RDgPLNilUAwOhSkdIZylYZx
	oiFiKoD+tEtlWzSn/mFspDjpkIjiT8vntL8XiMvveKfbNYpqERBU94Iw+ZcLBjmpnGKAZd7V1z2Ou
	98U2pKrqd9k44s7q/68lwn6cHvOWc4IpUb+SmhJykK/rXjauIxYOp+1MBod7xeIeICGImk6KlGLIO
	gxfKWWT89mXEE8VQmOz4MfRFuoLVfA3cZI71bIhnf3yFSU8MpCxwLRpSf6BAL8pzpvFsv5/tFvgTD
	oQ58vUB4sNKgt7bzlSZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfV7-000780-At; Tue, 28 May 2019 17:03:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfV0-00077R-GS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 17:02:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A5FEB341;
 Tue, 28 May 2019 10:02:53 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 C71E83F59C; Tue, 28 May 2019 10:02:47 -0700 (PDT)
Date: Tue, 28 May 2019 18:02:45 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190528170244.GF32006@arrakis.emea.arm.com>
References: <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <20190522101110.m2stmpaj7seezveq@mbp>
 <CAJgzZoosKBwqXRyA6fb8QQSZXFqfHqe9qO9je5TogHhzuoGXJQ@mail.gmail.com>
 <20190522163527.rnnc6t4tll7tk5zw@mbp>
 <201905221316.865581CF@keescook>
 <20190523144449.waam2mkyzhjpqpur@mbp>
 <201905230917.DEE7A75EF0@keescook>
 <20190523174345.6sv3kcipkvlwfmox@mbp>
 <201905231327.77CA8D0A36@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201905231327.77CA8D0A36@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_100254_558762_563981B4 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 02:31:16PM -0700, Kees Cook wrote:
> syzkaller already attempts to randomly inject non-canonical and
> 0xFFFF....FFFF addresses for user pointers in syscalls in an effort to
> find bugs like CVE-2017-5123 where waitid() via unchecked put_user() was
> able to write directly to kernel memory[1].
> 
> It seems that using TBI by default and not allowing a switch back to
> "normal" ABI without a reboot actually means that userspace cannot inject
> kernel pointers into syscalls any more, since they'll get universally
> stripped now. Is my understanding correct, here? i.e. exploiting
> CVE-2017-5123 would be impossible under TBI?
> 
> If so, then I think we should commit to the TBI ABI and have a boot
> flag to disable it, but NOT have a process flag, as that would allow
> attackers to bypass the masking. The only flag should be "TBI or MTE".
> 
> If so, can I get top byte masking for other architectures too? Like,
> just to strip high bits off userspace addresses? ;)

Just for fun, hack/attempt at your idea which should not interfere with
TBI. Only briefly tested on arm64 (and the s390 __TYPE_IS_PTR macro is
pretty weird ;)):

--------------------------8<---------------------------------
diff --git a/arch/s390/include/asm/compat.h b/arch/s390/include/asm/compat.h
index 63b46e30b2c3..338455a74eff 100644
--- a/arch/s390/include/asm/compat.h
+++ b/arch/s390/include/asm/compat.h
@@ -11,9 +11,6 @@
 
 #include <asm-generic/compat.h>
 
-#define __TYPE_IS_PTR(t) (!__builtin_types_compatible_p( \
-				typeof(0?(__force t)0:0ULL), u64))
-
 #define __SC_DELOUSE(t,v) ({ \
 	BUILD_BUG_ON(sizeof(t) > 4 && !__TYPE_IS_PTR(t)); \
 	(__force t)(__TYPE_IS_PTR(t) ? ((v) & 0x7fffffff) : (v)); \
diff --git a/include/linux/syscalls.h b/include/linux/syscalls.h
index e2870fe1be5b..b1b9fe8502da 100644
--- a/include/linux/syscalls.h
+++ b/include/linux/syscalls.h
@@ -119,8 +119,15 @@ struct io_uring_params;
 #define __TYPE_IS_L(t)	(__TYPE_AS(t, 0L))
 #define __TYPE_IS_UL(t)	(__TYPE_AS(t, 0UL))
 #define __TYPE_IS_LL(t) (__TYPE_AS(t, 0LL) || __TYPE_AS(t, 0ULL))
+#define __TYPE_IS_PTR(t) (!__builtin_types_compatible_p(typeof(0 ? (__force t)0 : 0ULL), u64))
 #define __SC_LONG(t, a) __typeof(__builtin_choose_expr(__TYPE_IS_LL(t), 0LL, 0L)) a
+#ifdef CONFIG_64BIT
+#define __SC_CAST(t, a)	(__TYPE_IS_PTR(t) \
+				? (__force t) ((__u64)a & ~(1UL << 55)) \
+				: (__force t) a)
+#else
 #define __SC_CAST(t, a)	(__force t) a
+#endif
 #define __SC_ARGS(t, a)	a
 #define __SC_TEST(t, a) (void)BUILD_BUG_ON_ZERO(!__TYPE_IS_LL(t) && sizeof(t) > sizeof(long))
 

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
