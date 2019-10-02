Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B772BC8921
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 15:03:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eS7lm+vQleXgdNhxDlxTUPA7cDaxCyj+mBdp6FnUwU=; b=BqL5IBq/jwYBYB
	0RjrCwuJwOFbUPcMgJkmTXRoaM4tzioKrx9oqeFl+lBpdbtx0j1CVia+5RRrrCAP4OeY+Mr0t6ZUB
	Sc59RMbnnD1K+DAkxM6pQxn2x3ByFSEAgejaM4Lv/t7wTXX0hz+qhC1c8bqKsSQBX0KGclqQNeB4L
	j/PDl4jrj0z0o2M659xknhk8dGScgI1P/Kalbl7KV4Bfl8DHJ/qADZJysGCDm+eHGrdLeTY/hUlFW
	HJaVYfkoNHoa3f1RBwHIQmdaO2VzwsMruzP1NeWXIoHe8veLP86ovqJWNEJtWtQd9yS7kC1UUsGn9
	exTf3CI9aGPra3bp+LTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFeHN-0004sr-05; Wed, 02 Oct 2019 13:02:53 +0000
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFeHF-0004sC-PG
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 13:02:47 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id x92D2Soc022466
 for <linux-arm-kernel@lists.infradead.org>; Wed, 2 Oct 2019 22:02:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com x92D2Soc022466
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1570021349;
 bh=naK8kM5SZ9FnjhI80E7EMP71Bdn5aGS80ykKGF8bPWg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=e7KQ0GmmCZL4ZLkjn8OPMjFQ5lmCbzPXwIXK6xTxKl14LwpoQNqMleFaTFj1rLeOA
 wHEL3TgUrgw+Lp5+AfzY4Ez0VrKV7qfd9BYSaQcg4QOzFSrmuKe4PK2o01ZOUmiJsW
 0IyFKjuiEYsEfXH+CbwjwVH1V4Hl8CIDXQmYaxY/0InCEVucoN39caI/luT2IeYvm1
 HzgNp70mA4sEdEUAza1M1CF3GZm3MaaOd3Utoqw+H+1xGB0fOsuzeIhUkD4JDLDr55
 vqrYKqURwSYL7bsjZ6ZbDK+axBeYaaGTM8lEuXzUqkLtrgnYYGzgSsNjIbI6kzHvxg
 hhr2LS1aPYtlQ==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id d3so11861505vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 06:02:29 -0700 (PDT)
X-Gm-Message-State: APjAAAU89qbRcGYXBfRV/PH703y7/5gHDByN8Fe6vbmZBGb7ahwuQyBb
 1mcz+mTuP6761/6w8aiJ1qTmceB82+0xpuBgrCE=
X-Google-Smtp-Source: APXvYqyBenjkYSUxWNp12EkMSkjddqEmAJpImt9JMd2IBuuxcgEX6OeS4Ob+yymPNFD4gVXFz2G7SGNWe3Ro1LO2Q3I=
X-Received: by 2002:a67:1a41:: with SMTP id a62mr1776452vsa.54.1570021348040; 
 Wed, 02 Oct 2019 06:02:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191001083701.27207-1-yamada.masahiro@socionext.com>
 <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=NObDXDL3jz9ZX9wo4tn747peBJPTj0DXyLerixgL+wQ@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 2 Oct 2019 22:01:51 +0900
X-Gmail-Original-Message-ID: <CAK7LNATvGykFY10mOXez84zPV_k3snefgS9zymcn2_7k3EMxAg@mail.gmail.com>
Message-ID: <CAK7LNATvGykFY10mOXez84zPV_k3snefgS9zymcn2_7k3EMxAg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_060246_045438_36F7CD38 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.83 listed in list.dnswl.org]
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 LKML <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nick,

On Wed, Oct 2, 2019 at 2:04 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> > So, __always_inline is now the only guaranteed way of forcible inlining.
>
> No, the C preprocessor is the only guaranteed way of inlining.


I do not think this is fatal if I understood this correctly:
https://lore.kernel.org/patchwork/patch/1122097/#1331784


For GCC, we at least get a warning if a function with
 __always_inline is not inlined.
I am fine with adding -Werror=attributes to the top Makefile
(unless we have unpleasant side-effects).

You filed the bug for Clang, and hopefully it will be OK
in the future releases?




--
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
