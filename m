Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA0F98BDD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHgbY8sqRI2PYQDfb+sMFPc7ATFAqnTUuM0Tjm0Oivs=; b=X+nhRJ+2DBBm8G
	VOJmYQ9ayWcWQ1uvABIBOfEL6qjKDu73Nf48OiPsl0jDvBCFAv7k2AKW66Iu4TGSOIZxQyL5447yr
	Z8dxAHP62pM26RO6b1mqSJru6suVI8HOQu8/fh7Q26+NbaHyQLSB463+5M/IMN5JNt/aiSCT+JI0y
	ywUha6b2MIr3K0R+IggRQA+VOuqS1ypz0xl0GdxNGjcjHiAZQov2Ay1E8ZW5GgZ93pMhIgGvx7i/e
	cDrzUvJyOxyCZCi1tZmh8TpcrOwoaCA+BnJop0BFnvKU6UZv5lFLXk0N55ZPBdX0nuTUJgN9EIfXs
	QYQVTOh/NEwCte5imbgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0h3S-0000uc-HD; Thu, 22 Aug 2019 06:58:42 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0h2s-0000jE-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:58:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id v15so4483099wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 23:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=UJ4ndSsA+KlZA68sHmztUkQhSgbwuP+daP+r2iy3R+s=;
 b=pByGk2q+MG5FW6nVQKR+qe001OsoEpiE8351tEsN5n5vhzG87uX2naEiS724FQsYOz
 iFL0qPyNEqFmWLzVAgajKk5nDtdFngTAmw6N8fCCzJjyyObJgf/pgG5i2bkm6srgV+XE
 peddH9hmaBB/1inqGbNZjYtKPdfEjx8D/I0nuB7mCbOtuilQenWeu/KeL/rKUFZAqeax
 DCFeD2GjUrHbQDKM6Wkz5/N3/JdfLG6G5BaEYCJlCbH/eELiUhUNE3hUiyDHgHALuShP
 TSBL97HD87Te8LoI2/A30FVdK1m5y/TEOKVBBRjjHb4DI/a2dKkne9kCuxjk86w+v6GO
 D8MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=UJ4ndSsA+KlZA68sHmztUkQhSgbwuP+daP+r2iy3R+s=;
 b=p5i38vyozjksFQv4GGoXziWCwUxwlSnrVm7lqqvJssxQQUOePExN01KlpcpP15CjHQ
 h/pqFpFx6T9dyY5EBmfAnmtTipO2BcCnWKRnMYwAtXrzq5N1sCJW1ZwRSTCAOsXjXSZn
 KxB6h+852x8xfLrLWxFQ9QWKTD3q09D2lTM87pFY4YTcAmpW90TS/WK8SMQeJqN6Aso7
 W4zo1sxXi68q93GQLzy7vcR2Re4th+1FHvFzFezWODosCCCYttGBmaEE/iHGGyEcvojC
 xV1wqmlq2IiaTheuxqniuMTILD0Ar8+9cuF/DS3lgfgn+r/kRqA2qWKVkeDcXLcbgHfO
 wkTw==
X-Gm-Message-State: APjAAAX/OQmbavNgnjCjP8Pcp3Kwp1ufYym/NUU6RiAzK1VDX1468OQ2
 ziHktoCn4OGIoL6QkWgpq98=
X-Google-Smtp-Source: APXvYqzupd9YcGew+aYy624JEYO24Qz27ePGljeVffqKjx18vl4v7RPF48u41M7JoXWxNvfSmBdrHw==
X-Received: by 2002:a1c:c5c2:: with SMTP id v185mr4553483wmf.161.1566457083649; 
 Wed, 21 Aug 2019 23:58:03 -0700 (PDT)
Received: from [192.168.1.20]
 (host109-153-59-46.range109-153.btcentralplus.com. [109.153.59.46])
 by smtp.googlemail.com with ESMTPSA id j20sm56299931wre.65.2019.08.21.23.58.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Aug 2019 23:58:02 -0700 (PDT)
To: LKML <linux-kernel@vger.kernel.org>
From: Chris Clayton <chris2553@googlemail.com>
Subject: Regression in 5.3-rc1 and later
Message-ID: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
Date: Thu, 22 Aug 2019 07:57:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_235806_517725_F87AA808 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chris2553[at]googlemail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (chris2553[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, shuah@kernel.org, sthotton@marvell.com,
 andre.przywara@arm.com, arnd@arndb.de, salyzyn@android.com,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux-mips@vger.kernel.org, ralf@linux-mips.org,
 linux@armlinux.org.uk, 0x7f454c46@gmail.com, paul.burton@mips.com,
 linux-kselftest@vger.kernel.org, linux@rasmusvillemoes.dk, tglx@linutronix.de,
 vincenzo.frascino@arm.com, pcc@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

Firstly, apologies to anyone on the long cc list that turns out not to be particularly interested in the following, but
you were all marked as cc'd in the commit message below.

I've found a problem that isn't present in 5.2 series or 4.19 series kernels, and seems to have arrived in 5.3-rc1. The
problem is that if I suspend (to ram) my laptop, on resume 14 minutes or more after suspending, I have no networking
functionality. If I resume the laptop after 13 minutes or less, networking works fine. I haven't tried to get finer
grained timings between 13 and 14 minutes, but can do if it would help.

ifconfig shows that wlan0 is still up and still has its assigned ip address but, for instance, a ping of any other
device on my network, fails as does pinging, say, kernel.org. I've tried "downing" the network with (/sbin/ifdown) and
unloading the iwlmvm module and then reloading the module and "upping" (/sbin/ifup) the network, but my network is still
unusable. I should add that the problem also manifests if I hibernate the laptop, although my testing of this has been
minimal. I can do more if required.

As I say, the problem first appears in 5.3-rc1, so I've bisected between 5.2.0 and 5.3-rc1 and that concluded with:

[chris:~/kernel/linux]$ git bisect good
7ac8707479886c75f353bfb6a8273f423cfccb23 is the first bad commit
commit 7ac8707479886c75f353bfb6a8273f423cfccb23
Author: Vincenzo Frascino <vincenzo.frascino@arm.com>
Date:   Fri Jun 21 10:52:49 2019 +0100

    x86/vdso: Switch to generic vDSO implementation

    The x86 vDSO library requires some adaptations to take advantage of the
    newly introduced generic vDSO library.

    Introduce the following changes:
     - Modification of vdso.c to be compliant with the common vdso datapage
     - Use of lib/vdso for gettimeofday

    [ tglx: Massaged changelog and cleaned up the function signature formatting ]

    Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
    Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
    Cc: linux-arch@vger.kernel.org
    Cc: linux-arm-kernel@lists.infradead.org
    Cc: linux-mips@vger.kernel.org
    Cc: linux-kselftest@vger.kernel.org
    Cc: Catalin Marinas <catalin.marinas@arm.com>
    Cc: Will Deacon <will.deacon@arm.com>
    Cc: Arnd Bergmann <arnd@arndb.de>
    Cc: Russell King <linux@armlinux.org.uk>
    Cc: Ralf Baechle <ralf@linux-mips.org>
    Cc: Paul Burton <paul.burton@mips.com>
    Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
    Cc: Mark Salyzyn <salyzyn@android.com>
    Cc: Peter Collingbourne <pcc@google.com>
    Cc: Shuah Khan <shuah@kernel.org>
    Cc: Dmitry Safonov <0x7f454c46@gmail.com>
    Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>
    Cc: Huw Davies <huw@codeweavers.com>
    Cc: Shijith Thotton <sthotton@marvell.com>
    Cc: Andre Przywara <andre.przywara@arm.com>
    Link: https://lkml.kernel.org/r/20190621095252.32307-23-vincenzo.frascino@arm.com

 arch/x86/Kconfig                         |   3 +
 arch/x86/entry/vdso/Makefile             |   9 ++
 arch/x86/entry/vdso/vclock_gettime.c     | 245 ++++---------------------------
 arch/x86/entry/vdso/vdsox32.lds.S        |   1 +
 arch/x86/entry/vsyscall/Makefile         |   2 -
 arch/x86/entry/vsyscall/vsyscall_gtod.c  |  83 -----------
 arch/x86/include/asm/pvclock.h           |   2 +-
 arch/x86/include/asm/vdso/gettimeofday.h | 191 ++++++++++++++++++++++++
 arch/x86/include/asm/vdso/vsyscall.h     |  44 ++++++
 arch/x86/include/asm/vgtod.h             |  75 +---------
 arch/x86/include/asm/vvar.h              |   7 +-
 arch/x86/kernel/pvclock.c                |   1 +
 12 files changed, 284 insertions(+), 379 deletions(-)
 delete mode 100644 arch/x86/entry/vsyscall/vsyscall_gtod.c
 create mode 100644 arch/x86/include/asm/vdso/gettimeofday.h
 create mode 100644 arch/x86/include/asm/vdso/vsyscall.h

To confirm my bisection was correct, I did a git checkout of 7ac8707479886c75f353bfb6a8273f423cfccb2. As expected, the
kernel exhibited the problem I've described. However, a kernel built at the immediately preceding (parent?) commit
(bfe801ebe84f42b4666d3f0adde90f504d56e35b) has a working network after a (>= 14minute) suspend/resume cycle.

As the module name implies, I'm using wireless networking. The hardware is detected as "Intel(R) Wireless-AC 9260
160MHz, REV=0x324" by iwlwifi.

I'm more than happy to provide additional diagnostics (but may need a little hand-holding) and to apply diagnostic or
fix patches, but please cc me on any reply as I'm not subscribed to any of the kernel-related mailing lists.

Chris

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
