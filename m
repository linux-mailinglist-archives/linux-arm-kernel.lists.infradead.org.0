Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C55A3140F42
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoFxCsoc5yRd/5ltjkjRM/9tFuqWQHqzzegIpMrSIxE=; b=fsYd7q7r9oHi4R
	3GaL1df1FgT03hm5qgrxwGhUvp69rXELg3EhzGfD2U33FLQ1HBpUEGQtZ5zd17HR1qtkl7ftnEdzi
	J2pCBufg4k0pvNqWD3hgmFCZ8JkDHzUC4I3pVrXdestkXAaJKq1Mh+IfR26RzWkLaWK1dG1U8ljri
	f+/HmlLhCcbiL0QZhLxcXxwYRNR1WEhnSGTx80yPnhNyt0GB/bVMmtg1U2xoXdhbz8jV7cSIxijXB
	KdcUZ6LsDqUN/3wCa6WaZeyzKYFapzRMdNs9ocs7tQozU6c60Ps3oXbn/SzPmGj31qWJRAdmXpCpa
	d40w29s4zyPbfrqyN0DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUmE-0007k9-L9; Fri, 17 Jan 2020 16:47:18 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUlv-0007jB-Fy
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:47:03 +0000
Received: from mail-qk1-f169.google.com ([209.85.222.169]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N2lzA-1jdYTC328C-0139DK for <linux-arm-kernel@lists.infradead.org>; Fri,
 17 Jan 2020 17:46:54 +0100
Received: by mail-qk1-f169.google.com with SMTP id c17so23265851qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 08:46:51 -0800 (PST)
X-Gm-Message-State: APjAAAVqr/9RTxW+ffWh/s+rmI0NLTpBy018XTyEEXSKzc+B7Ff2YKVc
 fNAk3LTYue34En5FXYOyfJ3IeM4gzsYwh1idNc4=
X-Google-Smtp-Source: APXvYqzIQ+O8rgSM/8KSMvjmfKRtUVzTp2xhQ0hAiERjIBBCvKQ1dAPd1c0vXvfnEXQvGMivXHqD6nPX/726/V4BWOI=
X-Received: by 2002:a37:2f02:: with SMTP id v2mr38339960qkh.3.1579279610621;
 Fri, 17 Jan 2020 08:46:50 -0800 (PST)
MIME-Version: 1.0
References: <20200117160251.GQ25745@shell.armlinux.org.uk>
 <CAKv+Gu_aPNfk1bvVJdh3Bzr4V0q+9sNvAKNYxpWtUeD_WbtYXQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu_aPNfk1bvVJdh3Bzr4V0q+9sNvAKNYxpWtUeD_WbtYXQ@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Jan 2020 17:46:34 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3AJCAU666nnVCfXPrgHF_2aJ5gD1OYiDNq8T+Hgz2ytw@mail.gmail.com>
Message-ID: <CAK8P3a3AJCAU666nnVCfXPrgHF_2aJ5gD1OYiDNq8T+Hgz2ytw@mail.gmail.com>
Subject: Re: REGRESSION: ChaCha fails to build in randconfig
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-Provags-ID: V03:K1:tkz2e3kq2E0R93Nko5z8yM8tY+ELrEx9Qr047iQcVZVXLqVRCqo
 vetbVV2aRsYOvuQ4p3Rp4kiIYxMQMSn7ipfFHcvLXa9EzjVF8PL32UhRBr/NfJQDrFApE8C
 Ud7NrXKR9E+K6upfW1iWIXfxmY3xKpK8cBIRMk4lFUb+JDSzTYblnkCkdwi6Cz4roeynEdG
 BhfpaBZYG1SxBJTHlCQxg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5O7nmsxIkpM=:QljL+1jPS6P5hewbQ1jxiZ
 yojuTta0CMrwiFDdWKoSvXNDouhsUeO7PR1NdlsPWiDzV1m/KPbLPStOJb0VnsNaeLARH7DF9
 yJCXcpRBx2STsamo+uoRMKCVk50l5wPo1EjAj2Ms+pm4yJ9aeIgejqyI7r055M6qG5yd3zuw5
 dnN3Ddr7Bps0o7puUrNbICsz7KSeMJHuMUPl6KYueU6m82YbIa4f291IU7ICxnWIIUknffRTA
 bTNIacTkM2wP3to67XPWQerKIQinWbv2xYmOGA06HNteJ3El/fvDTg4Slg5+/GGslE0F0WC/Y
 S+UbnO21aaI+Uydp957mAEQLnTyp8wV+ZBArWa+mnxsWD4UGwV/8Ibu19Jh0ACpl17h+yCJdf
 lom6YVcPqD+Ax21i81RCU5OmmqSDjYxYXapI6d7izDwZ6XgCAXwuIY92sHgXvm7OaTnLBoaYm
 FoDiqUWyrnSlYbo5GcNKoAHc4cIspXNYOCDsvQNRK9Idln3j1uZ66ksj9OlKfESTEdInkx8u5
 1HE3DK2f9XH0W4lHzpIiqAmimUCxjqWeKK4dpHMWTbDFzRt236QTHK/AZW7KzmSyyB+ipK6l6
 DrEvzFKxfEXXBq28dVgAbnRsnfASyS4mcraADWIQeIhGo5TtxPpNrDn2s67g69pwVsPl728sl
 QW7OP7nGilTvAXKzsYMpDRM2QNFUf4YyroIVLNdUHOBDUIhof6NBTovPsDj6Qd7nPfp9Pc4Mg
 peABGTtmHIiDFC43pxmPyZb5tOEluL0wpy2oLhc2KOavIJHSFq8kPRrxWE0XCGthhhQA9c67I
 NP8lYm7CRMc/gwa0Xgag2GnWe2pvG5VZclD1qycpuQSnFii/Ef8Q9PMxtAEhEqmKq20mx6s/3
 4bCm0PZcpvnJMIsa0Vfg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_084659_818071_D34D1E9C 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
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
Cc: Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 5:22 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Fri, 17 Jan 2020 at 17:02, Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> >
> > Ard,
> >
> > Randconfig builds have found an issue with a commit in the last merge
> > window:
> >
> > chacha-glue.c:(.text+0xc0): undefined reference to `chacha_4block_xor_neon'
> >
> > This seems to be a result of this commit:
> >
> > commit b36d8c09e710c71f6a9690b6586fea2d1c9e1e27
> > Author: Ard Biesheuvel <ardb@kernel.org>
> > Date:   Fri Nov 8 13:22:14 2019 +0100
> >
> >     crypto: arm/chacha - remove dependency on generic ChaCha driver
> >
> > CRYPTO_CHACHA20_NEON does not depend on KERNEL_MODE_NEON, yet the
> > makefile has:
> >
> > obj-$(CONFIG_CRYPTO_CHACHA20_NEON) += chacha-neon.o
> > chacha-neon-y := chacha-scalar-core.o chacha-glue.o
> > chacha-neon-$(CONFIG_KERNEL_MODE_NEON) += chacha-neon-core.o
> >
> > chacha-glue.c refers to chacha_4block_xor_neon in chacha_doneon(),
> > and I guess some compilers are not clever enough to eliminate that
> > code with KERNEL_MODE_NEON is disabled.
> >
> > Arnd has a patch that adds a dependency to stop this being a problem,
> > but that is probably not what you want.  Please fix.
> >
>
> Thanks for the head's up
>
> I'll post something along the lines of the below, that should convince
> the compiler that chacha_4block_xor_neon() is never called when
> CONFIG_KERNEL_MODE_NEON is not enabled.
>

I also see this related warning on linux-next:

    WARNING: unmet direct dependencies detected for CRYPTO_LIB_CHACHA20POLY1305
      Depends on [m]: CRYPTO [=y] && (CRYPTO_ARCH_HAVE_LIB_CHACHA [=m]
|| !CRYPTO_ARCH_HAVE_LIB_CHACHA [=m]) &&
(CRYPTO_ARCH_HAVE_LIB_POLY1305 [=y] || !CRYPTO_ARCH_HAVE_LIB_POLY1305
[=y])
      Selected by [y]:
      - WIREGUARD [=y] && NETDEVICES [=y] && NET_CORE [=y] && NET [=y]
&& INET [=y] && (IPV6 [=y] || !IPV6 [=y])

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
