Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116A913810B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 12:08:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ4XKviclqt99lDv7n3JGM4N7J1DQxZNlZYmefUt/ak=; b=kBvE0OvMCoYDuA
	aCRUf/2dVn4H/xHbCwFf1aPxulUFQmjAw5O+57f3TIF0LvT3aX87h0szHqBoU0/IbZ4m0vMt8T1YI
	EW6XV6e5dWb0abDbSOwg8Enr8Mvrhvb4YDBqpSXuHLgms4r1JjTpN78l28bmzASQDsOSDyLCDgOTY
	+XC0SlbyKUPTZ0dWRuedZJau4fOKvEh5Ycv5Ni74v40I+uVKLoCFZgdFr57eodjpfJel62XlFyvv7
	4g8L3iyl1DNBrwvGFYl/F1wkThVabqDqlpA4TneubPKmBRP+myqwgdnTRAfptLK/RLYTdpZcJxJc/
	8XIfzlbLiK92RRRpTOdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqEcW-0005dn-4N; Sat, 11 Jan 2020 11:07:56 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqEcO-0005dD-G9
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 11:07:50 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iqEcB-0000Ef-0n; Sat, 11 Jan 2020 12:07:35 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 45B3D100C52; Sat, 11 Jan 2020 12:07:34 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, vincenzo.frascino@arm.com, luto@kernel.org
Subject: Re: [RFC PATCH v2 07/10] lib: vdso: don't use READ_ONCE() in
 __c_kernel_time()
In-Reply-To: <a995445f-9b00-ca13-d23a-1aea3b345718@c-s.fr>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <fc1ff722c7cbe63a63ae02ade3a714d2049d54a5.1577111367.git.christophe.leroy@c-s.fr>
 <87lfqfrp7d.fsf@nanos.tec.linutronix.de>
 <a995445f-9b00-ca13-d23a-1aea3b345718@c-s.fr>
Date: Sat, 11 Jan 2020 12:07:34 +0100
Message-ID: <878smes13d.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_030748_681596_81BDA685 
X-CRM114-Status: GOOD (  13.51  )
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Christophe Leroy <christophe.leroy@c-s.fr> writes:
>
> With READ_ONCE() the 64 bits are being read:
>
> Without the READ_ONCE() only 32 bits are read. That's the most optimal.
>
> Without READ_ONCE() but with a barrier() after the read, we should get 
> the same result but GCC (GCC 8.1) does less good:
>
> Assuming both part of the 64 bits data will fall into a single 
> cacheline, the second read is in the noise.

They definitely are in the same cacheline.

> So agreed to drop this change.

We could be smart about this and force the compiler to issue a 32bit
read for 32bit builds. See below. Not sure whether it's worth it, but
OTOH it will take quite a while until the 32bit time interfaces die
completely.

Thanks,

        tglx

8<------------
--- a/include/vdso/datapage.h
+++ b/include/vdso/datapage.h
@@ -21,6 +21,18 @@
 #define CS_RAW		1
 #define CS_BASES	(CS_RAW + 1)
 
+#ifdef __LITTLE_ENDIAN
+struct sec_hl {
+	u32	sec_l;
+	u32	sec_h;
+};
+#else
+struct sec_hl {
+	u32	sec_h;
+	u32	sec_l;
+};
+#endif
+
 /**
  * struct vdso_timestamp - basetime per clock_id
  * @sec:	seconds
@@ -35,7 +47,10 @@
  * vdso_data.cs[x].shift.
  */
 struct vdso_timestamp {
-	u64	sec;
+	union {
+		u64		sec;
+		struct sec_hl	sec_hl;
+	};
 	u64	nsec;
 };
 
--- a/lib/vdso/gettimeofday.c
+++ b/lib/vdso/gettimeofday.c
@@ -165,8 +165,13 @@ static __maybe_unused int
 static __maybe_unused __kernel_old_time_t __cvdso_time(__kernel_old_time_t *time)
 {
 	const struct vdso_data *vd = __arch_get_vdso_data();
-	__kernel_old_time_t t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
+	__kernel_old_time_t t;
 
+#if BITS_PER_LONG == 32
+	t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec_hl.sec_l);
+#else
+	t = READ_ONCE(vd[CS_HRES_COARSE].basetime[CLOCK_REALTIME].sec);
+#endif
 	if (time)
 		*time = t;
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
