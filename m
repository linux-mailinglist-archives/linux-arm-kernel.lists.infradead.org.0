Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF95A4A49F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 16:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eeKgGguh1++yWl0qVqY6xifmv2g33DPJfFF/COHcUs=; b=YNiMCMa4id96xz
	yNxWL1qYjQoF7zc06VbqVmaBlxjc2oUNsU1wsSRzxDvoEmZhlSY9UZvPhUP473OeCEhDvR7KLYhgB
	7/9Xa7ZduASxU8ilZoBVLfK134Vvv/X1idMtzckZ5gkqZkH6qcsCBzDPb1I12BbYgu5PFJXkc31Qr
	JF8XFCit2Z/NbQ04vfbpaHSOZ1J+baCo5zCVfCIsbHG0r25Dv4s0+R1R6JDQj6Jy9/wEfCc+BLp0q
	hIE8EKaZcJDbPVMpiwC/2iPlI83dWSdilgoRiseKQqJMhyg7Z5bpORwNg/I4WiReneOtfHh+PqFhO
	eKZyM0gc9scqGZlM3TYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFYL-0000Aq-77; Tue, 18 Jun 2019 14:57:41 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFXv-000079-EK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 14:57:17 +0000
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id x5IEulhH009466
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Jun 2019 23:56:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com x5IEulhH009466
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1560869808;
 bh=6dxnBt3fIGFW+ROubfk95PVQRUtkj7Ua/pB+llQ1Ju0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UFyDjb+14G6pcwzM0N1YGpjD8LsS7oJHSZ/R7lBwUgfiwxvwQ3UT7CvXrXF+ubFxA
 NxIPZ1Of+iqSsQuc6Iwn3kXLxP/Q5eVHjakfjmY7sJPvDpmewM3jPqNTh8F8Q8dxH6
 921U1Gl8n5Z5BTv1pmB2QOfkG66epNXapFSIlY2JOTqPpIZC+ZFBWa1STHil8rWSdX
 1IGZ2B7t+ZdgoZDB7ujiZxxWfL5L+DU4T6KMzDJkaVy8MAUHkOXmJiwOK1WVeiztgy
 9vBJXCTA9oznqY2IJlxMDpa+CWcNbpy2+ByGkF2cI7ChUeae8Eu4ZqckESqolTneKF
 f9TtQCfHM2FSA==
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id v20so927391uao.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 07:56:48 -0700 (PDT)
X-Gm-Message-State: APjAAAVjmnrM+a3j05tO3O/TV4k6C6y7scwM+bVaEmtHyBCY/XjXMc2w
 +Q3dCJfy3RD1tXBpIHNVAxptCSoAwFq6CUfwjao=
X-Google-Smtp-Source: APXvYqyFy7PjzXrke2SGI3Ov1shSEe5A0cTjaMUsuLy2ti7lQsJriQ0xM0+UJqKY02rLhDN4+v5wVdf9p3y6jUchTbc=
X-Received: by 2002:a67:cd1a:: with SMTP id u26mr24650793vsl.155.1560869807098; 
 Tue, 18 Jun 2019 07:56:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190529182324.8140-1-Jason@zx2c4.com>
 <CAK7LNARFUaaJH+g3oGzwFyKnELum72nOzxnvUfMKYBaAoGVkug@mail.gmail.com>
 <CAHmME9rGAUW9hjjZ7ZqNvZvaOCGrVHs3JNhYyr6g2PhZgS3TQg@mail.gmail.com>
In-Reply-To: <CAHmME9rGAUW9hjjZ7ZqNvZvaOCGrVHs3JNhYyr6g2PhZgS3TQg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 18 Jun 2019 23:56:11 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT4+O=eNoJHnW58pVob0Po0ULj3cEksXZ3w+kTGMNJj2w@mail.gmail.com>
Message-ID: <CAK7LNAT4+O=eNoJHnW58pVob0Po0ULj3cEksXZ3w+kTGMNJj2w@mail.gmail.com>
Subject: Re: [PATCH] arm: vdso: pass --be8 to linker if necessary
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_075715_841586_800A1980 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Russell King <rmk+kernel@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi.

On Fri, May 31, 2019 at 5:20 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> Hey Masahiro,
>
> I'm not sure exactly. I did just notice another place --be8 is being added:

That is not my question.

I just asked about your commit log:
"big-endian ARM was relying on gcc to translate
its -mbe8 option into ld's --be8 option"

I grepped '-mbe8', but I did not see it anywhere
in the source tree.

So, I just wondered where it came from.


> ifeq ($(CONFIG_CPU_ENDIAN_BE8),y)
> LDFLAGS_vmlinux += --be8
> KBUILD_LDFLAGS_MODULE   += --be8
> endif
>
> I suppose it's possible that this is kbuild related where one of those
> isn't winding up in the right place. I did see that the commit that
> this patch addresses uses "=" instead of the more usual ":=" or "+="
> for whatever reason.
>
> Jason

Perhaps, the following will be cleaner:

ldflags-$(CONFIG_CPU_ENDIAN_BE8) += --be8
ldflags-y += -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
            -z max-page-size=4096 -z common-page-size=4096 \
            -nostdlib -shared \
            $(call ld-option, --hash-style=sysv) \
            $(call ld-option, --build-id) \
            -T


I think this fix-up should be applied by Russell.
Please note he does not pick up patches directly from ML.
To ask him to pick up patches, you need to put
patches into his patch tracker.
(patches@arm.linux.org.uk)


-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
