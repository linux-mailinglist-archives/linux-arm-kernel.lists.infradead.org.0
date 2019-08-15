Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AA48E7D3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 11:09:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JbCqSUIOgXWPUJj4SfUvyN53QDnt9T9oXtr4M/TOS8=; b=C9RqeI4Jn8tqLA
	IknhDbQPk+hoRUQUnm1P///BUUTEpHf2ucxa7WJPiU912tqan0RYSNZVqrQ13Clyezxrez+qU8pZR
	V6ive9XcY+sdsDbFfwkqQh7vIDOR2o1p5LaIuOhCEl2jdlWcB2XR/9zPTTL14bowedZ1O0QFL6a+O
	XbLe7i3qcriauMWmygFtJshP0Eqr+CKrJNRQ1NLih13xkxhcaZWVvV8zOkGDjMTWMk++h7SvCHbAy
	Xi2Ld5w2gv2QYbyO4pBAfOOlo5d3VUJCO+EoNd972Z3V1de3xYRB/S79EzdYWyS00bDHx3GcqLiFU
	ZDgS/5SVkmHhsdZ8ZOVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyBl3-0007DL-Pi; Thu, 15 Aug 2019 09:09:22 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyBkY-0007D1-1M
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 09:08:51 +0000
Received: by mail-lj1-x243.google.com with SMTP id e27so1626998ljb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 15 Aug 2019 02:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0UE6srbxTSzeQEGUqQmtIA5ElC0/7wYx3fPkt29gctA=;
 b=XlyDTQw/LApnV+/jl3INSQ0k5kkAC/D/oC26vZ9uWE9MEg3xW3781+knczAv4Aaf2a
 dDTP8F6TCi/OyI8bPVdVCN57ntl7atgf2pmtMC4foq3XyLYv54jwaSDTyigDmaFJTuLN
 HTYTpKOlcK2VdKCMk8hfpSwDNOy1+V/tesvKx3CEkop4q6eSIwmZjdmvxmfgW0VLzJpo
 VpiFsTYq9biPd7m6Uq3jDpyl2233BEL5+bvbFpJGe+zqxEAugwnqxL34d4WJhoZJQ/2G
 QKS1ERct7SoOBMBQ65iClNzCB5N9LYZ54uUvZj8xrYylAk3KOoTygKBs5tRFQQ6eXQyL
 LmQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0UE6srbxTSzeQEGUqQmtIA5ElC0/7wYx3fPkt29gctA=;
 b=qMA2UnkOToJKJRAWV2A5wE3mKPZT31IUqiPsh3FBKxLz5RPs2Xa/z9HcX6YcIRPZ7a
 +XJv5v0oNwsOoUiS+6jBPIp7Nh2GazpR/kj0K80bWw/cX6ewbcX2gxS7VLWRGKw21fmS
 66TJuH+SEOvIVUm7uaGeOjRLqZOUx3ZALK7vOEWSOFfEw+cT+g4XtMXwwiqL/KBsXF4W
 OUBX0plAI8E35NXA8dLeSD+3q4VKaeLSfp5yGpyXh/T7rR0gF3rJHOx5nMc9Eh5CdkHP
 /A+t5DD1tRBQjJAW2i7uyUtj1V6n6fteo2g+cA42/p0chiFRpP0A1O/iAm/O61vnd64N
 fjgQ==
X-Gm-Message-State: APjAAAXHDA1jiyGxbss5/YTfjvfiXiQYXswcdANfOai81yWMwdv6QLcV
 cGSJQlYWLDBECtJhpKgg0+sBohEJSjJE6lnjgwk=
X-Google-Smtp-Source: APXvYqwMEUAJffcAHkjsEhd8NMusg/7M2UPC/oaiZA76NFZ6YUgtOx0nJ3OvlVQjfSslMzS/Nsbw4g+olqzqauqWEC8=
X-Received: by 2002:a2e:9252:: with SMTP id v18mr1033100ljg.93.1565860127855; 
 Thu, 15 Aug 2019 02:08:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
 <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
In-Reply-To: <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 15 Aug 2019 11:08:36 +0200
Message-ID: <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_020850_106879_B8FEE8BF 
X-CRM114-Status: GOOD (  14.14  )
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

On Thu, Aug 15, 2019 at 12:20 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This lone patch of the series is just cosmetic, but patch 14/16 fixes
> a real boot issue:
> https://github.com/ClangBuiltLinux/linux/issues/619
> Miguel, I'd like to get that one landed ASAP; the rest are just for consistency.

Ah, interesting. It would be best to have sent that one independently
to the others, plus adding a commit message mentioning this in
particular. Let's talk about that in the thread.

> Miguel, how do you want to take the rest of these patches? Will picked
> up the arm64 one, I think the SuperH one got picked up.  There was
> feedback to add more info to individual commits' commit messages.

Yes, I told Will I would pick up whatever is not already picked up by
individual maintainers.

> I kept these tree wide changes separate to improve the likelihood that
> they'd backport to stable cleanly, but could always squash if you'd
> prefer to have 1 patch instead of a series.  Just let me know.

Since you already did the splitting work, let's take advantage of it.
I prefer them to be split anyway, since that gives maintainers a
chance to pick them up individually if they prefer to do so.

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
