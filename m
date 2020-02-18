Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAC4161E6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 02:11:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+cnt3mxWUft7B4OfA80cOkjp5rn1qUXXQ9cpXF1vsG4=; b=mwRlHEDKwB3STg
	SCTNd1TPEbxq8ULGnXN8A70oCfxxvsQ6DodVMWQDUzat8b7iQMhFgxG6oCDkbune+slw7iGLTDijM
	/UPPuBhG3TPlEdMJogMYN37PBeo4ETwRIl7WHFhtPxGnoXkZ/27L8FZ/d3d6V0vEIPlQzZdGXkQKz
	Uqm+becdqmbvATp7mpojRR33E8PlrVln7898L8R6A/Nn8lfOhRAtHSx3qdq3Xwokcao93sBW0qvRE
	RM8yc2T0eHcZ6bHhFwEzeUYcqsD6H9+vviPAD7L+iVNwxKS1g7dg1T0WjD8YK5lxGRyZHtVIgL87y
	y/LDFffsrtSiSL4v+eLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3rQ7-0003wB-5y; Tue, 18 Feb 2020 01:11:27 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3rPy-0003ve-56
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 01:11:19 +0000
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com
 [209.85.217.51]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id 01I1AxlC027461
 for <linux-arm-kernel@lists.infradead.org>; Tue, 18 Feb 2020 10:11:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 01I1AxlC027461
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1581988260;
 bh=uei+N+CkkxUE36DU/lg/FEVQu6yNQHdZ1xqcbmzwGm8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n9QQ6aR1UblpGRtEQH4napgqA7KGSBnxs72iBWX68A4XlccMJHv2t56ZY6NE5j1dR
 ZzWqBU9mE4ia8fFd/Y8tHxsG437Re4Ae0Focfj44xQcu7/MLUpjekGC2hPwJLWVMEo
 IE7MMtaZxRScVxbd/vc1qUjhs5nmbsNRGK6TofnqXkhcBVHQda4IPGlYF502PdAJOV
 gH4kr9g9rrYjXDw4h/2D63F8Mt7/FoetCWNxkM0M9EiDykagGBFyCaObgplbl5m5sY
 cXXQ53x+FvCdcnvXv57c424cfiW5hI6oRzyAakJ/t6IQS6WTg2lyDyFldG2E+64CvQ
 iOB6cHFW+yCkA==
X-Nifty-SrcIP: [209.85.217.51]
Received: by mail-vs1-f51.google.com with SMTP id k188so11600275vsc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 17:11:00 -0800 (PST)
X-Gm-Message-State: APjAAAUw8A1XokGsZHuBv7W8nPkjFONqeRGHG3czxH+ZaR6OKalPlCog
 ihu4q2dBa+/Ng7ipJoOuDtkuKNhrrO0GEf+lL+w=
X-Google-Smtp-Source: APXvYqyz8Y58z285sMWtPRBdE/GBdURc8hrvnSJyyL6kZWQZEmUPvn7TOtw9EDND99ugEs8bw2J4s/QoBaMJyqn7qa0=
X-Received: by 2002:a05:6102:48b:: with SMTP id
 n11mr9631914vsa.181.1581988259405; 
 Mon, 17 Feb 2020 17:10:59 -0800 (PST)
MIME-Version: 1.0
References: <20200217203013.20102-1-ardb@kernel.org>
 <202002171549.1BAB6CA8A@keescook>
In-Reply-To: <202002171549.1BAB6CA8A@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Feb 2020 10:10:23 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQabBGi5=wfMVzxic3d8Dg5Hkivb4hUPU15wKMzMLROgQ@mail.gmail.com>
Message-ID: <CAK7LNAQabBGi5=wfMVzxic3d8Dg5Hkivb4hUPU15wKMzMLROgQ@mail.gmail.com>
Subject: Re: [PATCH] arm: fix Kbuild issue caused by per-task stack protector
 GCC plugin
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_171118_430164_DF9D46B1 
X-CRM114-Status: GOOD (  24.76  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Tony Lindgren <tony@atomide.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Russell King <linux@armlinux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 8:51 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Feb 17, 2020 at 09:30:13PM +0100, Ard Biesheuvel wrote:
> > When using plugins, GCC requires that the -fplugin= options precedes
> > any of its plugin arguments appearing on the command line as well.
> > This is usually not a concern, but as it turns out, this requirement
> > is causing some issues with ARM's per-task stack protector plugin
> > and Kbuild's implementation of $(cc-option).
> >
> > When the per-task stack protector plugin is enabled, and we tweak
> > the implementation of cc-option not to pipe the stderr output of
> > GCC to /dev/null, the following output is generated when GCC is
> > executed in the context of cc-option:
> >
> >   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
> >          -fplugin-arg-arm_ssp_per_task_plugin-tso=1 in the command line
> >   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
> >          -fplugin-arg-arm_ssp_per_task_plugin-offset=24 in the command line
> >
> > These errors will cause any option passed to cc-option to be treated
> > as unsupported, which is obviously incorrect.
> >
> > The cause of this issue is the fact that the -fplugin= argument is
> > added to GCC_PLUGINS_CFLAGS, whereas the arguments above are added
> > to KBUILD_CFLAGS, and the contents of the former get filtered out of
> > the latter before being passed to the GCC running the cc-option test,
> > and so the -fplugin= option does not appear at all on the GCC command
> > line.
> >
> > Adding the arguments to GCC_PLUGINS_CFLAGS instead of KBUILD_CFLAGS
> > would be the correct approach here, if it weren't for the fact that we
> > are using $(eval) to defer the moment that they are added until after
> > asm-offsets.h is generated, which is after the point where the contents
> > of GCC_PLUGINS_CFLAGS are added to KBUILD_CFLAGS. So instead, we have
> > to add our plugin arguments to both.
> >
> > For similar reasons, we cannot append DISABLE_ARM_SSP_PER_TASK_PLUGIN
> > to KBUILD_CFLAGS, as it will be passed to GCC when executing in the
> > context of cc-option, whereas the other plugin arguments will have
> > been filtered out, resulting in a similar error and false negative
> > result as above. So add it to ccflags-y instead.
> >
> > Reported-by: Tony Lindgren <tony@atomide.com>
> > Fixes: 189af4657186da08 ("ARM: smp: add support for per-task stack canaries")
> > Cc: Kees Cook <keescook@chromium.org>
> > Cc: Russell King <linux@armlinux.org.uk>
> > Cc: Arnd Bergmann <arnd@arndb.de>
> > Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
>
> Oh! Nice find.
>
> Acked-by: Kees Cook <keescook@chromium.org>
>
> I assume this should just go directly into the arm patch tracker, or
> should it go via Masahiro's tree?
>


Please let it go in via the arm tree.

Please feel free to add my:

Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
