Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C82D5658C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGh5rbYmFuRDzJYPh9sJWa6zuHKqAu6NqL9Yvb4ivP8=; b=FnOxQg1tlyNAcg
	cwQqAegabxICYYEv7efIOBqiy6san4z+GJKdIMncKDCu5gzoScDWmX84tu8fPWyRkGFCOv4mlzoao
	B3oGdnnFzEZ9IUUSvajZaF3RboCBYyaAtMrFoYVK1wYQTF9fn1TLW8O1jNFORmaGwZe8CMjVf4c+a
	9l7UwGGv+cT26+c/JybAUZ9aIegmueiWNo+rIKy9z5MUmbSBD/vN+eXCBD3qfxXpAEk7dMeTRSzA8
	t0Gyy0eMuq2ew+EwVlNmFsGlQYb6lVnl1JSenK/Lo67tT0Ohn36lqt8aU0boPosxDfJrzkMHHtBsC
	t1U3LzmQ/dw7hlDtT+hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg41v-0003I3-A8; Wed, 26 Jun 2019 09:15:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg41c-0003HJ-26
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:15:33 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A80920B7C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 09:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561540531;
 bh=xBnCRh/F9bl6/gAL0HvFg53BgxFLrpsTqE33GFGpnm0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VVq8wBfVS5xintLI48TW9kBhV9VZXd7wsC7XTHDvGz+45ZHMzLEshd0cc40XV1AlW
 cEHClsFnzaiXP6MueZieKdyXFv/krzT8tynqDCnEMduVjrOK9IfrMIk7QtIEhnQY5y
 6o0OCnAp256XmDddmef6KdghJEFfdbm2kT3RNHlM=
Received: by mail-lf1-f49.google.com with SMTP id y17so1079101lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:15:31 -0700 (PDT)
X-Gm-Message-State: APjAAAVdyHhK5xs7Hm6risbfRtpoxpjHUXNtEZOueHgI4zBZJiyU2Y9v
 GnWaKDU0EdlLpa9QGxMXKbG9l7Zp7zkkK3gRuyQ=
X-Google-Smtp-Source: APXvYqzd8GB5R50ZJNdOxfdPEXjKaYgCH773OG1ZTg+eqJ9KRgvJXOGEjgcSVC5XUphD0RI4i6IPGHaaFxJMs/VSFY0=
X-Received: by 2002:a19:3804:: with SMTP id f4mr2023177lfa.69.1561540529761;
 Wed, 26 Jun 2019 02:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190625193451.7696-1-krzk@kernel.org>
 <20190625193451.7696-4-krzk@kernel.org>
In-Reply-To: <20190625193451.7696-4-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 26 Jun 2019 11:15:18 +0200
X-Gmail-Original-Message-ID: <CAJKOXPejHBKp1fnhqaKwx2vby1_XmP916TyA9Nw8usU5QNadbA@mail.gmail.com>
Message-ID: <CAJKOXPejHBKp1fnhqaKwx2vby1_XmP916TyA9Nw8usU5QNadbA@mail.gmail.com>
Subject: Re: [GIT PULL 4/4] ARM: exynos: Mach for v5.3
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 arm@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_021532_131205_B8D60DCF 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 25 Jun 2019 at 21:35, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
>
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
>
> are available in the Git repository at:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git tags/samsung-soc-5.3
>
> for you to fetch changes up to a55e040c6f21f55f81c53c56e1d8095df35e1d02:
>
>   ARM: exynos: Cleanup cppcheck shifting warning (2019-06-25 20:45:09 +0200)
>
> ----------------------------------------------------------------
> Samsung mach/soc changes for v5.3
>
> Only cleanups and minor fixes.
>
> ----------------------------------------------------------------
> Arnd Bergmann (1):
>       ARM: exynos: Only build MCPM support if used

Hi,

I forgot to mention possible merge conflict (although Stephen Cc-ed
you on mails). Resolution is to accept both sides:

diff --cc arch/arm/mach-exynos/Makefile
index 5ccf9d7e58d4,5abf3db23912..0fd3fcf8bfb0
--- a/arch/arm/mach-exynos/Makefile
+++ b/arch/arm/mach-exynos/Makefile
@@@ -14,5 -14,9 +14,5 @@@ obj-$(CONFIG_PM_SLEEP)                += suspend.

  obj-$(CONFIG_SMP)             += platsmp.o headsmp.o

- obj-$(CONFIG_MCPM)            += mcpm-exynos.o
 -plus_sec := $(call as-instr,.arch_extension sec,+sec)
 -AFLAGS_exynos-smc.o           :=-Wa,-march=armv7-a$(plus_sec)
 -AFLAGS_sleep.o                        :=-Wa,-march=armv7-a$(plus_sec)
 -
+ obj-$(CONFIG_EXYNOS_MCPM)     += mcpm-exynos.o

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
