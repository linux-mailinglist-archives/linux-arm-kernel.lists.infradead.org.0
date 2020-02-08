Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD29156348
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 08:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkxMbr5mP9i0MNWEBUuyVhfNsoreoqRZvG2nQZEj9Nc=; b=Jbf+jKCdZIJJk1
	j6aMNRcHRFDxhajfvXvyLb5vCjeCZ+0d5AR0XUaPLTGaD5ciJxXgqQbuhjhYFBqibD4cyziWIq3sW
	eDGxaWuFe5wE1CEtev6p1JmZcU9XxHb3WDbX5Aftw0VgH2onORdsuHxnvllI3Aiy3MD2Hl1ASHZ3f
	JzxAZTPIxXGYUZouolVScME0rmEWXdixcYEXf/3N7IO5RaFqrr6Xvwno7T9miSuCucMN1VE/JeFOn
	0fX37Ys6eMiXD32IuvOJdObMA72trkypccqp4b+jfhfw0bkzoxKPYSqKHbTLmX2CrM0+nhbO0OBRK
	VZp722+2uWa4OeshgO2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0KOY-0002OC-O4; Sat, 08 Feb 2020 07:19:14 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0KOS-0002N4-WC
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 07:19:10 +0000
Received: by mail-pj1-x1043.google.com with SMTP id ep11so1886448pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Feb 2020 23:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1jgwctlv4oTdrR8f92pQb4YhHDZt1lVlF6B/6oa0E6k=;
 b=QExvbQY9zENmzwf2XNQkmYOe6FOAm9tFA7X4oOsxdX0bmSApRMn0H2KxNgDk+0y6Gw
 sTZcLV9XR1ldJoctRe45yrlpbGAIaLyQXt8KLesGsYv6tGe3d4V54XHGaKYpAe9uRzvN
 OhD6M+w4AOceUKtAL5aBbuxvQ2As2tEyJp0b5Jfm8yVWX0Zf9O2Qo5Im1VTUpeg4wAYc
 hYF1gDrCPDXCQTmCilHoZBN4hcsZCTTy3FUz3468GmMAfnW9WU6bmU2SXVWn95XIBe2Z
 3U2tIqjDpqqK/6eOEs7HnpD7YcuUrvF49oNxrDATQHiB8AFpzvQr6WUdwmONXd/VN1Q3
 dsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1jgwctlv4oTdrR8f92pQb4YhHDZt1lVlF6B/6oa0E6k=;
 b=N47xXtP8KxT8PNUxS0TEQYZ+/Z+O8cO9IhJMW3vCNfzBeKpNa7lZ8IMezOX2Wg97dK
 vXB4TUyJtCt9BNIBntLHl87LgliyHpf4vk7IACJbATSyrpEpUj60lk5j2EZfsgLaiVDb
 lt3K7N148rtdzHd2JmvETixsWNdOJMWUMQ8Z30lfNS5chYl6hd2mj/jC1KWiNpj3sxj5
 pqgWpTjeYR4z3vKFohymu2UQmiaX/MwCAhtkAWehV+UoEz+Vc41Ui3KsgBIYRqL+uJLz
 nZuoaISXqOxkT1fL4hucEIQxpHP327X+KCWa/2Hw/ACGzEjhjk6jBPIKSG/fK9izjWFc
 ZKaQ==
X-Gm-Message-State: APjAAAVaefUAJpmrsAP2z0KcPHwMk0aqX1UCw0AEBIvrEAk0pAKJoP9E
 NZ9dW/yT6Vu4/wHFhv91vZ43D46+xyh3XW4f/JLolQ==
X-Google-Smtp-Source: APXvYqw8xG46GGBEEWPCcwaJ/KgKqjRQuzCI+4Pk80gb8Y71tuBBhYaz6Ik2oWvedA26GyTWf5unwOzNF3ycmpGtFiQ=
X-Received: by 2002:a17:90a:3745:: with SMTP id
 u63mr8411017pjb.123.1581146339108; 
 Fri, 07 Feb 2020 23:18:59 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook>
In-Reply-To: <202002071754.F5F073F1D@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Sat, 8 Feb 2020 07:18:47 +0000
Message-ID: <CAKwvOdnRhx=SgtcUCyX2ZOGATM8OzG6hSOY9wGQZcwtp+P5WBQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_231909_038268_96D19271 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 3:02 AM Kees Cook <keescook@chromium.org> wrote:

Looks like we were both up late debugging this! Great job finding a fix!

>
> When the uaccess .fixup section was renamed to .text.fixup, one case was
> missed. Under ld.bfd, the orphaned section was moved close to .text
> (since they share the "ax" bits), so things would work normally on
> uaccess faults. Under ld.lld, the orphaned section was placed outside
> the .text section, making it unreachable. Rename the missed section.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/282
> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")

I was curious if the "mix" of `.fixup` and `.text.fixup` in a few
places under arch/arm/ was intentional or not. I should have
investigated that more.

> Cc: stable@vger.kernel.org
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Reported-by: Manoj Gupta <manojgupta@google.com>
> Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Before this patch:
$ ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- make CC=clang LD=ld.lld -j71
$ readelf -S arch/arm/lib/copy_from_user.o
...
   [ 9] .fixup            PROGBITS        00000000 0004e8 00001c 00
AX  0   0  4
...
$ readelf -S vmlinux
...
  [ 2] .fixup            PROGBITS        c020826c 00126c 00001c 00  AX  0   0  4
  [ 3] .text             PROGBITS        c0300000 002000 d71964 00 WAX
 0   0 4096
....
(Which is bad since .fixup resides before _stext!)
$ readelf -s vmlinux | grep _stext
203324: c0300000     0 NOTYPE  GLOBAL DEFAULT    3 _stext

After this patch is applied:
$ readelf -S arch/arm/lib/copy_from_user.o
...
  [ 9] .text.fixup       PROGBITS        00000000 0004e8 00001c 00  AX  0   0  4
...
$ readelf -S vmlinux
...
  [ 2] .text             PROGBITS        c0300000 002000 d71964 00 WAX
 0   0 4096
...
(So there's no orphaned .fixup section).  I forget if I was just
discussing it w/ Ard or Arnd a few days ago but I think we should
really enable warning on orphan sections during link (lest we continue
to run into issues like this).

$ grep -r \\.fixup arch/arm

turns up another hit in:
arch/arm/boot/compressed/vmlinux.lds.S:    *(.fixup)

Which I think should be fixed, too, maybe in a V2 so I'll hold my
reviewed-by tag for now. (Modifying that locally, I'm able to boot
qemu, and I also don't see any object files with such a section, ie.

$ readelf -S arch/arm/boot/compressed/*.o | grep fixup

comes up empty. So it could be renamed or even removed).

We should also cc stable, since c4a84ae39b4a5 first landed in v4.1-rc1.

Thanks for the patch!

> ---
> I completely missed this the first several times I looked at this
> problem. Thank you Nicolas for pushing back on the earlier patch!
> Manoj or Nathan, can you test this?
> ---
>  arch/arm/lib/copy_from_user.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> index 95b2e1ce559c..f8016e3db65d 100644
> --- a/arch/arm/lib/copy_from_user.S
> +++ b/arch/arm/lib/copy_from_user.S
> @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
>
>  ENDPROC(arm_copy_from_user)
>
> -       .pushsection .fixup,"ax"
> +       .pushsection .text.fixup,"ax"
>         .align 0
>         copy_abort_preamble
>         ldmfd   sp!, {r1, r2, r3}
> --
> 2.20.1
>
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
