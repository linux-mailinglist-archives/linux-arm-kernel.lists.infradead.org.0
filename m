Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A21813FA13
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 20:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzFnTWBG+uZ3NYOcCpOBMkVY11soQOOF5mcdFzKMEKo=; b=YxL5PShJMQa01/
	iI2+cWsWjI++A8kGt4xYZeB0hNiZkuVIakXntCBiR0UTXsLCoQ0Bhng239sKkbxUT6uO8qFs76aR0
	gPPsoBjOPc07vOvNhYOPeKWl47ooHuJLPDiNj9+4UVTDGZVKYEvZstLtPvn+jjtuYdh3rko2YvJOs
	8QK74IquzSiZ6QNUhoaUDcNDe3a/eszgRaH18yEm0HMNm0XMPZeRja54Atad7IZezRa63J8DkAm/6
	RUM30BXJDZfzCKc+3l4Q6kcAMkgSAOz9R68v4tN7HYzYgeLmRA16Wuw6mXZx9YGsq8WEe+XWpiuat
	JCvcNhs2FBW+YJfx+WBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBGj-0005Pj-Dy; Thu, 16 Jan 2020 19:57:29 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBGY-0005P7-5t
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 19:57:19 +0000
Received: from p5b06da22.dip0.t-ipconnect.de ([91.6.218.34]
 helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1isBGJ-0000KB-UP; Thu, 16 Jan 2020 20:57:04 +0100
Received: by nanos.tec.linutronix.de (Postfix, from userid 1000)
 id 6000B101226; Thu, 16 Jan 2020 20:57:03 +0100 (CET)
From: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [RFC PATCH v4 10/11] lib: vdso: Allow arches to override the ns
 shift operation
In-Reply-To: <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <c8ce9baaef0dc7273e4bcc31f353b17b655113d1.1579196675.git.christophe.leroy@c-s.fr>
 <CALCETrWJcB9=MuSw5yx6arcb_np=E=awTyLRSi=r8BJySf_aXw@mail.gmail.com>
Date: Thu, 16 Jan 2020 20:57:03 +0100
Message-ID: <877e1rfa40.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_115718_367166_ADA181D3 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: nathanl@linux.ibm.com, Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andrew Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Andy Lutomirski <luto@kernel.org> writes:
> On Thu, Jan 16, 2020 at 9:58 AM Christophe Leroy
>
> Would mul_u64_u64_shr() be a good alternative?  Could we adjust it to
> assume the shift is less than 32?  That function exists to benefit
> 32-bit arches.

We'd want mul_u64_u32_shr() for this. The rules for mult and shift are:

     1 <= mult <= U32_MAX

     1 <= shift <= 32

If we want to enforce a shift < 32 we need to limit that conditionally
in the calculation/registration function.

Thanks,

        tglx


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
