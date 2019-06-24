Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865FB4FE56
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 03:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6s/jTyzV26ievx5tzHf5e+TcZZ0DyP2qvhxDTgrBY5Q=; b=TBClet86fLhqXZ
	2CltQEAUYrp3Msf1TdQJhAN1imztpmG3KOc9UPaZMA21DyFALwagG/g8ipNTxoZs2o7NXuC35UYaf
	I5ChuMv38ytzvhNgyfAM9mvX1yANoCGYopD6FkQS5VfJ6o/3HVuPWGJvK5dY4l1n79XIHJDxEicbH
	iXJuU2RWnP2x16sON8PBtnp7oIKU6IEf0Ye/g3PmcdQecMcaU3W9BSSUpcU5k+TSxbGWl4rfG059k
	jX4oX0fEJ0GbYv2jfu7so4JmwtGSciSaHcdYpFqSzpxY/uMgmJYMsCYh+15v/pj5ooDI2G+tgOqF0
	FG+eDAGc6f9XJVu8ifKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfDaT-0000MF-4e; Mon, 24 Jun 2019 01:16:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfDaG-0000Lm-Fp
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 01:15:49 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF2DA22CF8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 01:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561338947;
 bh=oPpq+YScZrWevywmu9N3ag0Ky3wXqEPlzcFQAwc4wac=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ZObr9Sve1fr7WfDRdAZ7O7pKw2lzSEd1p3K7pVFn8jwfqek+njnBSfU1sbxow578F
 F3L2CcAeHPt3k4hmVjYWNM5uRXjlXxrtSgeEisWCC9Uq4HZjuqASVM4UZsrVcxDLnl
 t5ja0wCLA+XZotal4ksNMp9wwleOlxtVrJ5K1QKc=
Received: by mail-wm1-f45.google.com with SMTP id u8so11589627wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 18:15:46 -0700 (PDT)
X-Gm-Message-State: APjAAAXJdUePdWng20kYiblD7TVlruAIXNVygIMt3S/0P/gGJeNVH/85
 OjLBDcyUvQbhUiw2bTB7I5YzpF5uYgqmCQmUQa/Cqg==
X-Google-Smtp-Source: APXvYqxXfZO9JbIsNZmRpKd7ahekmHh/DeHYGI38xrq+mQInt0q9I7titye+BRFoBLBaUaVpBy9Q+nBinA9a1jW5Vj4=
X-Received: by 2002:a7b:c450:: with SMTP id l16mr13710054wmi.0.1561338945460; 
 Sun, 23 Jun 2019 18:15:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906240142000.32342@nanos.tec.linutronix.de>
From: Andy Lutomirski <luto@kernel.org>
Date: Sun, 23 Jun 2019 18:15:32 -0700
X-Gmail-Original-Message-ID: <CALCETrV-suRS5=JqDjbouXciN_OPsguERjux7fQVFOKGmdrspA@mail.gmail.com>
Message-ID: <CALCETrV-suRS5=JqDjbouXciN_OPsguERjux7fQVFOKGmdrspA@mail.gmail.com>
Subject: Re: [PATCH v7 00/25] Unify vDSOs across more architectures
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_181548_546553_CC6CB800 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andy Lutomirski <luto@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-mips@vger.kernel.org,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>, Dmitry Safonov <dima@arista.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Sasha Levin <sashal@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Andre Przywara <andre.przywara@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Michael Kelley <mikelley@microsoft.com>,
 Peter Collingbourne <pcc@google.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Andrei Vagin <avagin@openvz.org>,
 Huw Davies <huw@codeweavers.com>, LKML <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Mark Salyzyn <salyzyn@android.com>,
 Paul Burton <paul.burton@mips.com>, Shijith Thotton <sthotton@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 23, 2019 at 5:34 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> +GENERIC VDSO LIBRARY:
> +M:     Andy Lutomirksy <luto@kernel.org>

Lutomirski, perhaps?  Although I do appreciate the opportunity to say
"not me!" :)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
