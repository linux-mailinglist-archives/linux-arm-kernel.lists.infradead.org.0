Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C49C1C6C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 09:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jmOlL+1zS10BGWQsxVeLJ2rHb8+DacgVo0GFmaDGtXI=; b=iivIIYxYOXPM6Y
	SuZoXqDbLcu2JyMqjdwCyPKy/4esc/1ggE60X+kZvmDO3wx5kgHCR1AtcIMkCef6LrkyLM3DsPMjy
	u7YVpjKKAD+8bEyHb8BQ0vZcb4ymVQt3YvlH3Rji5N6yw87I/tE0SPKl4iYILRUERFSdJy5TaExHx
	2rxwdTwgsAarlpTnf6LH2PCRGMr89ljtQdzhofH6eB1ASqnoazZcAvLGLJUeRdFWjlKpP1niGRGbN
	fAWoX2zHARxjH6+CAD2PbtlJWgVtI85BTku29+3T0l/Sjb1x5C1NfHS5QnwVqmONj3WuaZkpuE7Kv
	ZyQv47YD7Q6mEiGpCIlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqYv-00041C-7D; Mon, 30 Sep 2019 07:57:41 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqYm-00040L-4O
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 07:57:33 +0000
Received: by mail-qt1-f196.google.com with SMTP id c3so15824267qtv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Sep 2019 00:57:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=obREgB2IxLWd73AGc89bpG+DaJ00hRckpEnTkEVRRp4=;
 b=MGVvs6Afb35wLtMx0VFRe/hg0F1RHv0vmso/ZG+rqnVzSCCfL2Wf3egcpSOi/EghEb
 eThmUJbwu77Mt3Rm2RAH+3Y3Ajo2davXbXQHR44qy7O2FxcHajoeKBTRraIZASk+6BEw
 LBi2jTdhUBPFGaylKmUCyzk+SLSP/K2pQlou4Z3foKYiNRYpNBwNXLpjB8qG+SOB7KQy
 e2zTuLOFNV3zHGdYq2wuvg6BdNbsvaFspW/EsjI5JDosddm4HrTGUp+VtXWEa0ZZTP+U
 VovpKD0I8vxpmuZaLWJXpdrKFBXdK6QAVe8g/3DGo05THYQ4w4kVxgJr8/hiMS5rfpvw
 wbWw==
X-Gm-Message-State: APjAAAWh3mxjMLahVu6wFJsfB0yNRGjLGCWtcUxzjszXTU7s/0qOW8qY
 3LVxgEA2orMrdMQ5zvornOZUvMS6wbO+YUKG1Ho=
X-Google-Smtp-Source: APXvYqxe+308RnGnFTDf6YDh4zIjrz482dsYfqfOpNCcIGa1Ini75MV0GZEqOtcnrRpSYJZQW31YucfCkUx+pPAFbvQ=
X-Received: by 2002:a0c:d084:: with SMTP id z4mr19081207qvg.63.1569830247340; 
 Mon, 30 Sep 2019 00:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 30 Sep 2019 09:57:11 +0200
Message-ID: <CAK8P3a24P7v41TZszjKzoJmhcss5WK-e9fHwUqEqre6FBPJWvw@mail.gmail.com>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_005732_172512_349F54EC 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.196 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 30, 2019 at 8:01 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
>
>   https://lkml.org/lkml/2019/9/26/825
>
> I also received a regression report from Nicolas Saenz Julienne:
>
>   https://lkml.org/lkml/2019/9/27/263
>
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
>
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.
>
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
>
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
>
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
>
> Fixes: 9012d011660e ("compiler: allow all arches to enable CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

The patch looks reasonable to me, but I think we should also revert
commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
forcibly") in mainline for now, as it caused this to happen all the time rather
than only for users that expliticly select CONFIG_OPTIMIZE_INLINING.

We have had other bug reports starting with that commit that run into
similar issues, and I'm sure there are more of them. I don't mind having it
in linux-next for a while long, but I think it was premature to have it merged
into mainline.

        Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
