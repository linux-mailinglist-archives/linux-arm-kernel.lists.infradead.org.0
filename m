Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87BC713B5A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 00:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nl2jmpwPoUzkBWCYivhvePbdf7FPKH59t4JZaoJ5z1g=; b=DzySgf+eOtgfP5
	BnT2Tu76cZhDrI1d8sCK/8IebomAz/raLuE2YjSox10kK473WT3w3Bye18jmyT/FsHCOFZ7NonZyl
	vEzN/HPtR7niHdpJR7PytMOWeVXFd9q21sq5t3bHaIzSM2MTJH/x8bmteuXXZIgXDzrwEpV5E4KNY
	fxWfY6aVuQQBOPD8hptA9HQINgCsL6+329sxhlzn3fHwZWixOxh0HTs9DGui42fwcb4jM6G7Ivi6f
	xpWgqFgeOwCAKAvwZakbXwahkBhRlyizKCe2YGz1Ib7WqdgKMhxHII6+q0bnNFRzgjDolV5OEHXqQ
	kH+/DlDkIJ4eMTWSSrgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irVGU-0001U0-TU; Tue, 14 Jan 2020 23:06:26 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irVGI-0001TK-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 23:06:19 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1irVG6-0000Gr-Ci; Wed, 15 Jan 2020 00:06:02 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id D20E7105BC2; Wed, 15 Jan 2020 00:06:01 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Christophe Leroy <christophe.leroy@c-s.fr>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, vincenzo.frascino@arm.com, luto@kernel.org
Subject: Re: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
In-Reply-To: <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
Date: Wed, 15 Jan 2020 00:06:01 +0100
Message-ID: <87ftghbpuu.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_150615_170059_D896A97F 
X-CRM114-Status: GOOD (  11.65  )
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
>  static __maybe_unused int
> +#ifdef VDSO_GETS_VD_PTR_FROM_ARCH
> +__cvdso_clock_gettime_common(const struct vdso_data *vd, clockid_t clock,
> +		      struct __kernel_timespec *ts)
> +{
> +#else
>  __cvdso_clock_gettime_common(clockid_t clock, struct __kernel_timespec *ts)
>  {
>  	const struct vdso_data *vd = __arch_get_vdso_data();
> +#endif
>  	u32 msk;

If we do that, then there is no point in propagating this to the inner
functions. It's perfectly fine to have this distinction at the outermost
level.

As a related question, I noticed that you keep all that ASM voodoo in
the PPC specific code which provides the actual entry points. Is that
ASM code really still necessary? All current users of the generic VDSO
just do something like:

int __vdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
{
        return __cvdso_clock_gettime(clock, ts);
}

in the architecture code. Is there a reason why this can't work on PPC?

Thanks,

        tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
