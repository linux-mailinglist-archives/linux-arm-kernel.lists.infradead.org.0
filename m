Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8095F371
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 09:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lq3m39bnL3Ff39fTKUi4a0xklNsfRVJTn29wfTzkhuA=; b=eEfpGVrzg4ubeo
	vrg1uJExQUvfseL8SKcjV42i+6s0AyoZx+az7Lg1nUyuDJBVTV2K/9tfcYhwM6WMnjZVvNcrq0hJ3
	FSh6rtTo9Zqn3RnBJOo9ZB3t0f5EcCGQIpkjxtfn8VSlzRahIq6peRoIjAt31GntBrl6XHp6WiOVs
	fIP9rBqqcYMNSyf7ENhGVgkODwD7ty8stdFiBmPWtJUWHs/REZeLiqGSY4rrhTBGeO2lOHFrphbj4
	c146upWp0hb65n+AhG5FgAikps1nxk5ho1/bcTmVqosE4+3Ig9qzJaPtLikKV8gShkQQQ93sPK4Fd
	u9UC6fvM6GEFOf6BE74w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiw70-0005Ek-V6; Thu, 04 Jul 2019 07:24:59 +0000
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiw6l-0005E8-Dv
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 07:24:45 +0000
Received: by mail-qk1-f195.google.com with SMTP id s22so4829701qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 00:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jDiJLmK4lsRv09/RWmHspT7s3JNRwYIRRTfdV0/KcPk=;
 b=ZrLv/fMgkXAHqfiBwuT3rb3Ck6yazO8WlMXHbLBDF4Xr/oG5OuhLj0v2lwcowZirZB
 4dJ+83RuoaGPKd8lmm8ExY93C1CAOcCvrofILADcTBpd9Zrf6bZvQjR9mOnFmPRRDV2W
 xQ+g2Txv/s9P/S3fKy3FeiItT9Y9muJ52Wuend6U2bV27zyn0ox8fg1VqjIBMwWqfzDo
 9/rB0Occo4ewuM/81Hc+QTbM4+glA0kmFIRHHb7ZC1+sevzeMGzlBCFdpObqo+FKDMvB
 f0KEvfegMMlAkKplOi53odphtOyJFoED0WUsWRUoXmdhdEiyK0yVFne8y0XvEcLqvmaf
 V0tw==
X-Gm-Message-State: APjAAAVhc9nHGsXJN8xWX04qcNkvF1/BH+/rwfWDZZ2r3bsAVfXyLbE9
 IOpXPDCzx3DjypwJvl9UmZbxAxTi00/wX1jX91c=
X-Google-Smtp-Source: APXvYqwxlD/P4CCDKjMVGdG8xPJcet52JK9nvRYqifka3GsmjS95OecKwRPDaEtQSxIxvevA4hsIaxG54zrpthr+8r8=
X-Received: by 2002:a37:ad12:: with SMTP id f18mr33567291qkm.3.1562225082093; 
 Thu, 04 Jul 2019 00:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190625210441.199514-1-ndesaulniers@google.com>
In-Reply-To: <20190625210441.199514-1-ndesaulniers@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 4 Jul 2019 09:24:24 +0200
Message-ID: <CAK8P3a2uW+a_=siusLTt=rq-erw1tyJfU8PDGaXuVcJoKHjpRw@mail.gmail.com>
Subject: Re: [PATCH] ARM: Kconfig: default to AEABI w/ Clang
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_002443_473101_AFF6FFD3 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.195 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Mike Rapoport <rppt@linux.ibm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Paul Burton <paul.burton@mips.com>, Mark Brown <broonie@kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:04 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Clang produces references to __aeabi_uidivmod and __aeabi_idivmod for
> arm-linux-gnueabi and arm-linux-gnueabihf targets incorrectly when AEABI
> is not selected (such as when OABI_COMPAT is selected).
>
> While this means that OABI userspaces wont be able to upgraded to
> kernels built with Clang, it means that boards that don't enable AEABI
> like s3c2410_defconfig will stop failing to link in KernelCI when built
> with Clang.
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/482
> Link: https://groups.google.com/forum/#!msg/clang-built-linux/yydsAAux5hk/GxjqJSW-AQAJ
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good to me,

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

Please add it to Russell's patch tracker if you haven't already.

Most of the .config files that don't set AEABI (and a lot of the others
as well) have likely never been booted on real hardware with a modern
kernel in a long time. There have not been any distros using OABI in
a long time (Debian Lenny was released in 2009), and gcc dropped
support for it a few years later.

We could probably change most of these to use OABI_COMPAT
instead, aside from any ones that Russell wants to keep building as
OABI for his own machines.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
