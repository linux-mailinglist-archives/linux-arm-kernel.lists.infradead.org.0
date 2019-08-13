Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5581E8B8A7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWi98Ilc6EhX7xm5M9Of4NlTPd5vl4DAqDXa48eKwAM=; b=rDHsVaY3Z8xmzj
	tUz5ZL6+kIqp8HdjVGI4uk2ZXZ3StOKbPwJQ97g28ujCObnqg569oSoZwgOTnQlrSWjrJus3ldgS1
	hYFViooJkeaqHOrJOKJcFO1KNMt2hndLMaXUnkcBPMBeHJoEJ7DclUtbiFNf+76AIbSlbsJJ1XDD2
	gTkig2+ZhC6ZGnT1tavebTByZ3/Y2fePEhpgaOU0EZpwdVg0f/YkX2L2M8FEP6or1G2mQCqjt5DUb
	EweRFuiqRDzQj/uUHZetK4QIcmmqwP1jUucRkrnksl1aWqdiVoSM8pD7khbIGV/kuFbY9atwULh6u
	88l8ClTIh9PVc9yEYOYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxW2R-0000Cq-18; Tue, 13 Aug 2019 12:36:31 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxW2H-0000C6-Ls
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:36:22 +0000
Received: by mail-lj1-x241.google.com with SMTP id z28so47176962ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 13 Aug 2019 05:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/4zbvSpEn2DpmCJ6tMtDBdGBohm95LMSJu2Rb3mH21k=;
 b=lrApJRtm6GOhWs3fCFPJSlcSNogP0GznPdE24vcG3Z/F5ysBIyHK4jr3TmLyVAenyu
 h+reeHqoCtu5DnUOonZfy2rp0wqpy0QvIWd1egLjw9T+fHOo9bX4D5YJplkiBANlzg+Z
 YxoJvdWuGbwSks5nTFsOOCwSZvZqkTUwflPOvOlwIZSX4gGr1CPhFztABch0yEq1LGEz
 niMncc0gUHJSPmGlCnp7eYd+vKKI1m13mmcPqKSQd33YlT2b2H8DFXOYUkcC6lFgsZvv
 RCcC5ce0ZlXrJuUsDAAaXHftEs3Uc66lwJtN2oFXfWLTEOEySRPJVNo9EtMHQqBQljfF
 I95w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/4zbvSpEn2DpmCJ6tMtDBdGBohm95LMSJu2Rb3mH21k=;
 b=YuhGYbDsJgifk/do9Kj7BjJFXUKuRAGgQTSBIA4qrYK2YCsI7vzFyg8CloP0XthhF2
 YN2QN7HSW1pcsG/LfSpUgW+4Krl68u4fKFbwV2/qVbo3kKQyOL3vFlairfPQOMEZHrBX
 PcwPndozNyz62vOZeK92Fcm3ktsGJL+Pzx1iW3WHQBuNekdzCBehkgx+QiD/v/ATZzDg
 68798wxctnkrcNLiTxLpNnG1UywySWYMpwvtzVKRrHVI+ft2jzOQDbchXmNgCPadhkro
 UtQMTOt2C0zSbV45DWNGGSmd8JCL+pHPzPD52ild5iMtqem8GpHpuDaJUzafYwjSzoTH
 kcYw==
X-Gm-Message-State: APjAAAX0Ng52g4LG2i6mf5PdBBAkvFwE4K58QDDcVNA2pt4Kep3INXbk
 QKRLIBkn35stXp3u1H+B6kbKhepwfO7C3sgNNBY=
X-Google-Smtp-Source: APXvYqw9QQj9Ti8WKyo8gjlKSpGsqLRG2B9QmRI3Fs3vQL04NHHaPG06xFKmK+ZntPzsDk7jUfioPFAqkeTU3Op2eJs=
X-Received: by 2002:a2e:3a13:: with SMTP id h19mr21421766lja.220.1565699777265; 
 Tue, 13 Aug 2019 05:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
In-Reply-To: <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Tue, 13 Aug 2019 14:36:06 +0200
Message-ID: <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_053621_746922_085CC4BE 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 clang-built-linux@googlegroups.com, Allison Randal <allison@lohutok.net>,
 yhs@fb.com, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, bpf@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:27 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Nick,
>
> On Mon, Aug 12, 2019 at 02:50:45PM -0700, Nick Desaulniers wrote:
> > GCC unescapes escaped string section names while Clang does not. Because
> > __section uses the `#` stringification operator for the section name, it
> > doesn't need to be escaped.
> >
> > This antipattern was found with:
> > $ grep -e __section\(\" -e __section__\(\" -r
> >
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  arch/arm64/include/asm/cache.h     | 2 +-
> >  arch/arm64/kernel/smp_spin_table.c | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
>
> Does this fix a build issue, or is it just cosmetic or do we end up with
> duplicate sections or something else?

This should be cosmetic -- basically we are trying to move all users
of current available __attribute__s in compiler_attributes.h to the
__attr forms. I am also adding (slowly) new attributes that are
already used but we don't have them yet in __attr form.

> Happy to route it via arm64, just having trouble working out whether it's
> 5.3 material!

As you prefer! Those that are not taken by a maintainer I will pick up
and send via compiler-attributes.

I would go for 5.4, since there is no particular rush anyway.

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
