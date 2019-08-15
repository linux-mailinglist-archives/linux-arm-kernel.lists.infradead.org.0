Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0398E7DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 11:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4YFTQ2H4hGg5nkj/O3ZAwmYlw3h/Y18PEbrtCRxOKs=; b=lKau4sKUy6zUiy
	YWV3jCasqy6oI4y/MC0SPU5l869giDJ7mmU+xQUClbVt7G86VzjDqiyCrTBCYVJP0Zn5qN6s0Z/hF
	hxyJn2crlSikKZTPqexGFOYJ1+0CWWkHvJlQcgPHleMb5jWts8p8ijjSEbPFN8bk6rg1kd2LRHdLR
	xhGA+sMXa+GOk0p/pZFl9nP+Vx8LNYTk4qLhx0zkRu9eG9Kb6W2ByCFWXYnTBbSf1pJO2J57FWHtf
	yzaxWGWXck0RSTaZEiG1/+ieSNeMUesyU3hvtLJFSMzMkgSFr4OS/uCgVJ4wo/2K7fFTKVInWxQiK
	ijUmGPoEkFF+Ysp+nhhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBoI-0000Fp-OV; Thu, 15 Aug 2019 09:12:42 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBo3-0000FU-Ix
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 09:12:29 +0000
Received: by mail-lj1-x243.google.com with SMTP id e27so1635180ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 02:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/iZpzZ2apqtPNAYN3rBQkZr4GG5AMuxH/SW/Plc3ffA=;
 b=QElReFqQP1GK1jybq9AdaL5hGB8HmAAs0wfsjh6CmTuxeo6TEfpfCDoP/+HHCVw2A1
 3i3+mnn+llz0xTIikJA14Xpr1gVhFAfaTwJmRt5SqcsiF1KeM0jPzS5lvDKb8OMOh+GY
 i1vgJaEZIKCh8lSCkUui0aAgkjIg4L206m/sGzk9t6O6QQvrLU8yWFknvH19qAjVW4Fd
 nF9QzblURTEbZ/R1/afeTL+rln+KXYM3Ne/zhEr90OEO3jzL4Ikq8WJTHukdGQn/wyhN
 adWSLc2bj5U6uGjvYIJzNFyX46OWUcpQmn4mMK+8HUZ346uWMznEAPX5nqG0MRJz032l
 rD3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/iZpzZ2apqtPNAYN3rBQkZr4GG5AMuxH/SW/Plc3ffA=;
 b=PBkJWljYjfPwm8DEoSa8yk5+c8XO7ff+b8nNuwtzOoQYVL+x6AAvB1BlMpggb8zQ7f
 QwrVzB6wAKocU+yTibxJr8S5TpUU7xVS5rYdxDSbod1Pb7RRu6pqxGLl95RGaFIcEMkt
 tVfgUKQykGMXKm1NlZBS7O6C+4NhOzG9j/J50GBuxw1vg6F2MJLW1acaXzx84ODGpWq6
 rQyjJ8MjZf+r9aojTRcNdBl0N+fBc79SFDriOIzP4WnOPWaUM8fX2bY5CbGsvVZ0scJg
 xrvDqBsJdmpedoQUw9edv+hnTjqSEEX81qmJP3MGsrceNur1shVooXWAz6l9hh7/LzrP
 VYSw==
X-Gm-Message-State: APjAAAU+SfPzlvVdPmjayD+EDeHNS0eLUw7NBGMWHQp9PvaZV6q1wZfi
 1YwjQDi6jkEnYjDmemsp395W1LfhyJBVtJ8q+So=
X-Google-Smtp-Source: APXvYqyGUoGw9duO+xloOL4EihgDXFOKCU7bXBE4DDDHi6q2U92avBXabuArt3Vzj00ddjUnjW901Y7mAjAa9KYeXcg=
X-Received: by 2002:a05:651c:ca:: with SMTP id
 10mr2132619ljr.144.1565860346166; 
 Thu, 15 Aug 2019 02:12:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
 <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
In-Reply-To: <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Aug 2019 11:12:15 +0200
Message-ID: <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_021227_627470_086C9EFA 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Allison Randal <allison@lohutok.net>, Yonghong Song <yhs@fb.com>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, bpf@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 11:08 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Thu, Aug 15, 2019 at 12:20 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > This lone patch of the series is just cosmetic, but patch 14/16 fixes
> > a real boot issue:
> > https://github.com/ClangBuiltLinux/linux/issues/619
> > Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.
>
> Ah, interesting. It would be best to have sent that one independently
> to the others, plus adding a commit message mentioning this in
> particular. Let's talk about that in the thread.

Btw, I guess that is the Oops you were mentioning in the cover letter?

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
