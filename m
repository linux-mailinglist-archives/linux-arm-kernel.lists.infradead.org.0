Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5B2DD7DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 12:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnPrUAmZzLBVUwIkG2p/JPmW8Di78EPxVOANWbZwXnQ=; b=JCMOJylyA+Fk4r
	StJTVZq7ERslBgtUalPzyusK89sZqhEUBP63IfENFr4ocFzNL+jBTjt8kwsZ3LtBiSiprXqFUtjJ3
	ZQn22mD1hQ/NtMh7r5G3tbwHvudJ/7oew79U+hBK/x0brFjgbU1cc33papsMh601vKEoX+9kqb9L4
	ywan2duqBfu8t1s97/BQ6iAno316jXgk0BjgyKofRm/6Te9XGgtEEdFR9MUWBBBBIk8CQSot77TKX
	gQeWGdsasOCpXmfT7KsY6JMDiO80I2VHKUjNJVkhiluYlfKbpl1UsxFPBXvXegi1QyW3OXByCzdc6
	KUpeBhD7PJaLPCPS8yVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlYe-0004y0-ES; Sat, 19 Oct 2019 10:02:00 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlYU-0004xa-An
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 10:01:51 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iLlYH-0004Fy-IZ; Sat, 19 Oct 2019 12:01:37 +0200
Date: Sat, 19 Oct 2019 12:01:32 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Huacai Chen <chenhc@lemote.com>
Subject: Re: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
In-Reply-To: <CAAhV-H6VkW5-hMOrzAQeyHT4pYGExZR6eTRbPHSPK50GAkigCw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910191156240.2098@nanos.tec.linutronix.de>
References: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
 <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
 <CAAhV-H6VkW5-hMOrzAQeyHT4pYGExZR6eTRbPHSPK50GAkigCw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_030150_510678_21F3C6F0 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>, "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Burton <paul.burton@mips.com>, Andy Lutomirski <luto@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 19 Oct 2019, Huacai Chen wrote:
> On Fri, Oct 18, 2019 at 11:15 AM Andy Lutomirski <luto@kernel.org> wrote:
> >
> > On Thu, Oct 17, 2019 at 7:57 PM Huacai Chen <chenhc@lemote.com> wrote:
> > >
> > > In do_hres(), we currently use whether the return value of __arch_get_
> > > hw_counter() is negtive to indicate fallback, but this is not a good
> > > idea. Because:
> > >
> > > 1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
> > > 2, For a 64bit counter, a "negtive" value of counter is actually valid.
> >
> > s/negtive/negative
> >
> > What's the actual bug?  Is it that MIPS is returning 0 but the check
> > is < 0?  Sounds like MIPS should get fixed.
> My original bug is what Vincenzo said, MIPS has a boot failure if no
> valid clock_mode, and surely MIPS need to fix. However, when I try to
> fix it, I found that clock_getres() has another problem, because
> __cvdso_clock_getres_common() get vd[CS_HRES_COARSE].hrtimer_res, but
> hrtimer_res is set in update_vdso_data() which relies on
> __arch_use_vsyscall().

__arch_use_vsyscall() is a pointless exercise TBH. The VDSO data should be
updated unconditionally so all the trivial interfaces like time() and
getres() just work independently of the functions which depend on the
underlying clocksource.

This functions have a fallback operation already:

Let __arch_get_hw_counter() return U64_MAX and the syscall fallback is
invoked.

__arch_use_vsyscall() should just be removed.

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
