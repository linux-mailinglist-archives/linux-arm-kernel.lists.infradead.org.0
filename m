Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE7D13A780
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 11:38:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/aBPiNxGOfVXLOONW0iOB86cRjMS791TKZ4FGgOgdqI=; b=pvyggU93ObAp5Z
	Ud7iokY9qfXXR8qqMU6TJx8gsOh98MPAEAKh6zY/gBz3C4mo0eiSe5FMPnacz7BgqF/Y51ICmeUV2
	qgSEfPkI63qsVg+F3+o3FQ5f5wJFzdBysZE5rWkMaPgwQixCr/yCRQjfH6fJmv3Ns04lyVHdV8z2c
	Bt+IldnBKYJ6jAX9obEnF+emsZZjIhbDXblPP83R8vjQNVs6lVXLISY+/Zw1nAeI6M+ZzYrzIPach
	XDt1D5X7F56sr8IAbg88DnTO0/jwTpG2BmyXv2SPOIlc47J3qv2ByrJROlFB777t2IWgSBfzzmIh7
	/PCeHMSdDxUlcqLBpTnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irJaP-0003iG-E2; Tue, 14 Jan 2020 10:38:13 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irJaE-0003hv-DQ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 10:38:06 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irJaA-000077-9A; Tue, 14 Jan 2020 11:37:58 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 7A5D4101DEE; Tue, 14 Jan 2020 11:37:57 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH v2 2/8] lib: vdso: Build 32 bit specific functions in the
 right context
In-Reply-To: <d0df0900-5001-540e-e246-c87c8525d0a4@arm.com>
References: <20190830135902.20861-1-vincenzo.frascino@arm.com>
 <20190830135902.20861-3-vincenzo.frascino@arm.com>
 <87tv4zq9dc.fsf@nanos.tec.linutronix.de>
 <87r202qt4x.fsf@nanos.tec.linutronix.de>
 <d0df0900-5001-540e-e246-c87c8525d0a4@arm.com>
Date: Tue, 14 Jan 2020 11:37:57 +0100
Message-ID: <87muaqqq62.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_023802_598476_881C3CF9 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, 0x7f454c46@gmail.com, salyzyn@android.com,
 paul.burton@mips.com, luto@kernel.org, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vincenzo Frascino <vincenzo.frascino@arm.com> writes:
>
> On 14/01/2020 09:33, Thomas Gleixner wrote:
>> Thomas Gleixner <tglx@linutronix.de> writes:
>> 
> [...]
>
>> 
>> Bah, it's not fixing it. That's what you get when you compile the wrong
>> tree...

This part is required to cover the BUILD_VDSO32 guard, but then when the
fallback thing is removed it fails again because the 32bit fallbacks are
missing.

The patch below makes it build again.

Thanks,

        tglx

8<----------------
--- a/arch/arm/include/asm/vdso/gettimeofday.h
+++ b/arch/arm/include/asm/vdso/gettimeofday.h
@@ -52,6 +52,24 @@ static __always_inline long clock_gettim
 	return ret;
 }
 
+static __always_inline long clock_gettime32_fallback(
+					clockid_t _clkid,
+					struct old_timespec32 *_ts)
+{
+	register struct old_timespec32 *ts asm("r1") = _ts;
+	register clockid_t clkid asm("r0") = _clkid;
+	register long ret asm ("r0");
+	register long nr asm("r7") = __NR_clock_gettime;
+
+	asm volatile(
+	"	swi #0\n"
+	: "=r" (ret)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
 static __always_inline int clock_getres_fallback(
 					clockid_t _clkid,
 					struct __kernel_timespec *_ts)
@@ -63,6 +81,24 @@ static __always_inline int clock_getres_
 
 	asm volatile(
 	"       swi #0\n"
+	: "=r" (ret)
+	: "r" (clkid), "r" (ts), "r" (nr)
+	: "memory");
+
+	return ret;
+}
+
+static __always_inline int clock_getres32_fallback(
+					clockid_t _clkid,
+					struct old_timespec32 *_ts)
+{
+	register struct old_timespec32 *ts asm("r1") = _ts;
+	register clockid_t clkid asm("r0") = _clkid;
+	register long ret asm ("r0");
+	register long nr asm("r7") = __NR_clock_getres;
+
+	asm volatile(
+	"       swi #0\n"
 	: "=r" (ret)
 	: "r" (clkid), "r" (ts), "r" (nr)
 	: "memory");

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
