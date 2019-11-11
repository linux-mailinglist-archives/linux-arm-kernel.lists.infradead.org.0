Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2B1F7A8D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 19:11:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjAV19F7nehK6FFSYaeLsHuKN/qV1y/BIz+fGV0W1Ac=; b=XEp/186hLM7haM
	2u+XctG690YS4tGbW0NBy48C4XtNzUSdUl87pazO/Cj3aePsPY8ffmeTN+svamlGZJZN0LGA0H0U8
	ma9kryNqKDcS+cdX/TEjD9kZ106WAK1aHYFoLEip8ix/hOQSq0G+Z2wwdhcEueqPB8oY+MYR7iy7Y
	Qrt7CRmJM4PJFphsjewui/8F6JZMpVcqyofC/LGvsN33xaMMpr5YU6WdoQWZsLA6pXS7xycF95QMd
	F5y9CHbkBXbDb3YBiIAoMv3cV2H64/AAMqbKc6CzJu9cjyPOwsaRX1h4iCiQlgnhYgHEulMgbBCUV
	daZ+y6obwi3zL9tgEc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEAP-0008H8-Ot; Mon, 11 Nov 2019 18:11:57 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEAH-0008FK-9X
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 18:11:50 +0000
Received: by mail-ot1-f66.google.com with SMTP id u13so12034016ote.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 10:11:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3pgVptoZYzsTOg+Xnbn8wJxFJTLIjKkmJmwvN7XoJgQ=;
 b=dy1D2lVWKngwvyAl1BIUPpL1tLDOtX9fuqzRzz5gTY7qRAel3vKovlQ7UxGleLNTTL
 DMlLOM8wsLod6UckBRGzuDmNaHIpGNWfltSLJbSfCNGo4bKJniLSpk3azEyhRkNmOV9P
 l/zdxBrPkRlnyJrjgzONZmCtHNNRF4TZ3b10Rg/xgPeqfFs5rZNODvLnW9S+5FJ28IuO
 evex0uptim5oAJq86s8LpQzy6gt2ePcrAiWu4iSzatld0AxsDFBfmq+vaG0hGkyNNQ7V
 ffsJ45MGssKfEsIs+Zl2NP48KtOxVFRjPPDmIO2YdpbGAaTtcHOZY1aAYp1PimBklhfc
 J5PA==
X-Gm-Message-State: APjAAAUqT9s+ZzsqUpImN/8mq+b4JG+5HuaMlxnSds/roupspoMQV4Ha
 jSsgHotX4Wo8HLeufVXJ7ROQxsKe
X-Google-Smtp-Source: APXvYqyYfYQRP2op++LiPoGgWYk1P+EfrbHqjjEKfGMuZYc8xoPnrTWieRSzOZ74B0UtAI7Jt3Uutw==
X-Received: by 2002:a9d:365:: with SMTP id 92mr23510708otv.9.1573495907383;
 Mon, 11 Nov 2019 10:11:47 -0800 (PST)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com.
 [209.85.167.177])
 by smtp.gmail.com with ESMTPSA id j8sm5367628otj.42.2019.11.11.10.11.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Nov 2019 10:11:45 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id v138so12291110oif.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 10:11:45 -0800 (PST)
X-Received: by 2002:aca:1702:: with SMTP id j2mr240762oii.13.1573495904943;
 Mon, 11 Nov 2019 10:11:44 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
 <20191108130123.6839-48-linux@rasmusvillemoes.dk>
 <CADRPPNQwnmPCh8nzQ5vBTLoieO-r2u0huh17mwcinhfhNgo04A@mail.gmail.com>
 <14894529-a6bd-9b7e-eacc-06d5e49cc8e8@rasmusvillemoes.dk>
In-Reply-To: <14894529-a6bd-9b7e-eacc-06d5e49cc8e8@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 11 Nov 2019 12:11:33 -0600
X-Gmail-Original-Message-ID: <CADRPPNQHtRhZOw0DuTQoPF_RgFHSFG4rGCtETFvCCSS8H6i=iQ@mail.gmail.com>
Message-ID: <CADRPPNQHtRhZOw0DuTQoPF_RgFHSFG4rGCtETFvCCSS8H6i=iQ@mail.gmail.com>
Subject: Re: [PATCH v4 47/47] soc: fsl: qe: remove PPC32 dependency from
 CONFIG_QUICC_ENGINE
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_101149_336046_3865D9EE 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Scott Wood <oss@buserror.net>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 1:36 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 09/11/2019 00.48, Li Yang wrote:
> > On Fri, Nov 8, 2019 at 7:05 AM Rasmus Villemoes
> > <linux@rasmusvillemoes.dk> wrote:
> >>
> >> There are also ARM and ARM64 based SOCs with a QUICC Engine, and the
> >> core QE code as well as net/wan/fsl_ucc_hdlc and tty/serial/ucc_uart
> >> has now been modified to not rely on ppcisms.
> >>
> >> So extend the architectures that can select QUICC_ENGINE, and add the
> >> rather modest requirements of OF && HAS_IOMEM.
> >>
> >> The core code as well as the ucc_uart driver has been tested on an
> >> LS1021A (arm), and it has also been tested that the QE code still
> >> works on an mpc8309 (ppc).
> >>
> >> Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> >> ---
> >>  drivers/soc/fsl/qe/Kconfig | 3 ++-
> >>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/soc/fsl/qe/Kconfig b/drivers/soc/fsl/qe/Kconfig
> >> index cfa4b2939992..f1974f811572 100644
> >> --- a/drivers/soc/fsl/qe/Kconfig
> >> +++ b/drivers/soc/fsl/qe/Kconfig
> >> @@ -5,7 +5,8 @@
> >>
> >>  config QUICC_ENGINE
> >>         bool "QUICC Engine (QE) framework support"
> >> -       depends on FSL_SOC && PPC32
> >> +       depends on OF && HAS_IOMEM
> >> +       depends on PPC32 || ARM || ARM64 || COMPILE_TEST
> >
> > Can you also add PPC64?  It is also used on some PPC64 platforms
> > (QorIQ T series).
>
> Sure, but if that's the only thing in the whole series, perhaps you
> could amend it when applying instead of me sending all 47 patches again.

Sure.  I can do that.

>
> Should PPC32 || PPC64 be spelled PPC?

Yes.  That will be good.

Regards,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
