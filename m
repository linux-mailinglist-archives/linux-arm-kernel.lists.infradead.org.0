Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B19713FA84
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 21:23:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/QyfLs1wvPd2D9eOH2c3zORw2EKuEe9WrBHoWeCc8Fo=; b=pyUOCb9WQ1vOro
	iivykJCXSWCA/lMbV3T11G77/S1DtpedXv1Jy3xV1wT3Agn0RTgJ3ZNblpXloAT5+zlRiKfoHGW62
	8CxwAI8CJRlpmwIZ3QASf/y9SG76f54g3P4hFYDiOCObuxI5E65bFWh4Bs3lDkQicY5TcN+xElKQQ
	TUQVM8T+F9u9ZPT/O52pqgXFdyrT+72e8HQxqUQ8FuMBYzzVTtMd5u1uJwMeB62a9Zde/6VpOsmJA
	OtG4+RAdGt7k99MpBqmkBiqPUQQGhwhKE8AvpQiK0wKq8MFLH1GwdabDGDbW9YU1wj1g1lP8NPr4q
	2mxtpVxJT/7h28aLxJtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isBfc-0001f0-72; Thu, 16 Jan 2020 20:23:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isBfL-0001Zw-6h
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 20:22:58 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A3A02073A
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 20:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579206174;
 bh=AWTq77yPH1eJXFHw5c/ihwZ/W+ttmiGY+qYVIL2DNXo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WjiY6Fz2v1BRFwTw8CEV+ZGeTVwybGg7qEvOG+e6kceB8oCBxevUtjC+sxHFejHAw
 +oKShNXbfNSUG124nEjNg9pxFVCYhjNP142xTdOd2FqkhnrKlA/xPHMGsS+TxqWkRE
 U5OV05EgZIcNAZu83S6Cza9kPCZDXt9/fFQCjNYE=
Received: by mail-wm1-f49.google.com with SMTP id d73so5154681wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 12:22:54 -0800 (PST)
X-Gm-Message-State: APjAAAVZ38jqlnA98wh4HS7DVcaB5ITFBS5s3HiLEYz93K/4dYz8yY7z
 IEA9y8ROXsfJ4amg6tzN1tN5jYP5uCbY2/sUaeJing==
X-Google-Smtp-Source: APXvYqye2EDj0a90ApFnSVIDyfTmrBlVCmi50h4FuEffTXlFfhQYLFZAcgiL0SS3ilsUicD1HIv6uxzlc43xpc781uA=
X-Received: by 2002:a05:600c:20c7:: with SMTP id
 y7mr802627wmm.21.1579206173156; 
 Thu, 16 Jan 2020 12:22:53 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578934751.git.christophe.leroy@c-s.fr>
 <381e547dbb3c48fd39d6cf208033bba38ad048fb.1578934751.git.christophe.leroy@c-s.fr>
 <87ftghbpuu.fsf@nanos.tec.linutronix.de>
 <d2de3211-9d7c-513e-fe0f-8bdce623fb65@c-s.fr>
 <b5fddcf8-99ff-fc0d-40c0-0eb81ad4e94a@c-s.fr>
 <87k15rwuxm.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87k15rwuxm.fsf@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 16 Jan 2020 12:22:41 -0800
X-Gmail-Original-Message-ID: <CALCETrWOENu2k3aGNO-oiY1Sj8=cG9mMZ8eOepHOzdu25vFVVA@mail.gmail.com>
Message-ID: <CALCETrWOENu2k3aGNO-oiY1Sj8=cG9mMZ8eOepHOzdu25vFVVA@mail.gmail.com>
Subject: Re: [RFC PATCH v3 08/12] lib: vdso: allow arches to provide vdso data
 pointer
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_122255_270586_B58746C1 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Arnd Bergmann <arnd@arndb.de>,
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

On Thu, Jan 16, 2020 at 2:35 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> static __maybe_unused int
> __cvdso_data_clock_gettime(clockid_t clock, struct __kernel_timespec *ts,
>                            const struct vdso_data *vd)
> {
>         .....
> }
>
> static __maybe_unused int
> __cvdso_clock_gettime(clockid_t clock, struct __kernel_timespec *ts)
> {
>         const struct vdso_data *vd = __arch_get_vdso_data();
>
>         return __cvdso_data_clock_gettime(clock, ts, vd);
> }
>
> and then use __cvdso_data_clock_gettime on PPC and let the other archs
> unmodified.
>
>

FWIW, I did some experiments on x86 with gcc 9.2.  gcc 9.2 uses
rip-relative accesses if I simplify the config enough and otherwise
materializes the pointer.  Presumably it decides that the code size
reduction is worth it if there are a lot of accesses.

I suspect that tglx's suggestion will be fine or at worst will add
negligible overhead on x86_64.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
