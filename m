Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7AD9BDC4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:49:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oS/W8hGRXs2xx4qLVcDPnjk5y1Tr5bbQ1SUmt2fug8I=; b=SfZiSC8HtaQKWa
	4+Rj6YOpSnlx4Muj5Dg8afdaxAugoomNsQuMXxfIdt4IokJlu6H3YbtJ/nlD/3nLRFakkmhsm/dX6
	uFwkhkBV83a8FtJwxTf2woc6c2Z01BJImgEConXSGvefWAhDkr68uRKhPYj3ElFw02791bATi6CO8
	SF0Vb9RNFFgquzFaWNx5lfVNTTApgvCgkP/EamJpn9SKgeaRX3DeC0z9mcd3gfdm+Ei5VTWdcZoPb
	3EQU2DDBdyHOk7wTSp/e2eFmG/xs8HYIG3MZqxHe92pzV10e62Wh26/gIMJ6hLLj6yMqQK1bLIMP0
	eBeqKJc+bP/CHBpls83Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VTk-0001dv-0J; Sat, 24 Aug 2019 12:49:12 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VTU-0001de-99
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:48:57 +0000
Received: by mail-lf1-x143.google.com with SMTP id n19so9023674lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 05:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KWoEeG6vs6VCUSeGXmHbpQT+ujKELvjfgOGYqoxN0II=;
 b=vFr+uyBDpavs65AlLok3MR+CufBp1mBxwOEujmZshvy2vvsCO8+5X4Jsh5ZvtR3sJy
 LqavRLPmHKiziNsqIDTFOuYJxCD800oXZyqhwjMtS4ORIeq5F9TP83AO1qiePSK1CPjt
 1JUUdm11zfj8/kXKFarfgn14mRZOpmXmDEFUgvx88neKoXyvliFkrw/ZYkviDeykkKfs
 aTgEbKXlrMS2fBVG8WFrJRMa4ClsaeR95IeRpyl6mdJQkbb7bn+GYWOb5wud1DUUkidT
 CiS1V7SjkEmP/3VcLKiOvE0DHDLYyjxxvNexw0M0vrJV4GMcb6UjursF1lGq8WTufIlZ
 0fVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KWoEeG6vs6VCUSeGXmHbpQT+ujKELvjfgOGYqoxN0II=;
 b=WQ3Qr1O1bAEZajPAtKHy9kmgxlo9kEufmH+OVt8lf8mXC2zZQb7aF/4ys067mioQOa
 q74/m2HE+CUgTpB4nTzOActBs52sRWMuddhpVT8vf5zQh/dMKxelheg/FNIUPLl5l9og
 6wjbgZepf50xsXf927JDdMWAgGy7nNkRGTCc/w5TSbb+r2e2aCG5TP8HKHef/roQVAys
 p3nXfUBAb2QqKfNrGQrDfkm3MdiEMlkoLIxfYJaS4YbO/ZclOY4yqcP6l7pW9O6GVUNO
 3gWF5EgVqoCTyFV4BBicDlTihkgmKojhIfflOIVeLnjdmq7vTl5s6QkmPC7EoOFp2QU8
 sHcw==
X-Gm-Message-State: APjAAAV2ZM1QbQ3h5N/c+C+LqiUT5shCCJqhRSwCPsD0aV6Od/cFpty1
 nYRceVXCmIvw2mTxXxR59Y5M8Oh0hjVhV58/djo=
X-Google-Smtp-Source: APXvYqwnCZ2QCveajf6BQHzrths1C2ZlN+b/72OTA3OlX8P3zC8nnVXdt5C9XMQ+b2iPAbpk1uaWSvp2qjQP5rbA5/U=
X-Received: by 2002:ac2:546c:: with SMTP id e12mr5441079lfn.133.1566650934562; 
 Sat, 24 Aug 2019 05:48:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
 <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
 <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
 <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
 <20190824112542.7guulvdenm35ihs7@willie-the-truck>
In-Reply-To: <20190824112542.7guulvdenm35ihs7@willie-the-truck>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 24 Aug 2019 14:48:43 +0200
Message-ID: <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_054856_347469_1C8717A7 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (miguel.ojeda.sandonis[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
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
 Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, Enrico Weigelt <info@metux.net>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 1:25 PM Will Deacon <will@kernel.org> wrote:
>
> Which bit are you pinging about? This patch (12/16) has been in -next for a
> while and is queued in the arm64 tree for 5.4. The Oops/boot issue is
> addressed in patch 14 which probably needs to be sent as a separate patch
> (with a commit message) if it's targetting 5.3 and, I assume, routed via
> somebody like akpm.

I was pinging about the bit I was quoting, i.e. whether the Oops in
the cover letter was #14 indeed. Also, since Nick said he wanted to
get this ASAP through compiler-attributes, I assumed he wanted it to
be in 5.3, but I have not seen the independent patch.

Since he seems busy, I will write a better commit message myself and
send it to Linus next week.

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
