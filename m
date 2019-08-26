Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB249D49D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 19:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdOT8UGgKwTuZ2sHGjYtCOpd2XMpUQ+F+rW4rRvclRk=; b=FrdLXdYCYCHL/e
	J1bwUBTRHJdVPZ+MAkYJqjT/yV30bsl/eXCQgUrHcuD+veEslbdf6NI8xB7tPnYYs6jqFK/aT5bSk
	BTLnLhYipxw6Gjkz9nnw5Lrz/QoqN5CYfEQgg136qpK1Cg5iy7EpC54XLFO1R+g7kwtBrSauGSh3q
	JV1gWxoBmC4QjT5/i/KWvRRhjCsnNa1gJNGmVzv0aPYTEwMnn++956DGdwB1+g8MAf/8UYi5xne3o
	A2NbWgZxq8p+ivwjdINMUGQwHHAQJFECFOySg/CkQHcv/wASKzhJhGCmD9fa5353KYatI3QlD2C6F
	RLQoDWNdnx05MVVhyDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IPq-00026g-K6; Mon, 26 Aug 2019 17:04:27 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IPZ-00025x-3N
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 17:04:10 +0000
Received: by mail-pl1-x643.google.com with SMTP id d3so10346006plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 10:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FQr2+CCalKgDrA12cz6kTPFlEgpE4NTSJBHk84k9KlA=;
 b=gK38A443J07JEv1eh/lZRr+OP0alDEoLrPFRvrv0zx5PtWmDjpTo4wBqkXvanXqjRb
 womdthz/nhAEw63Hr7UOKqCsf5KERELbxa/Zr5s1O5Mzy8LBJsr8yN34FuO60Jm1IiuT
 UXgjQtyVt5Gwo0tmxjHxcSj1RAoSitwBdXQW+n+vaJbaaYkMDPtVzPJwmd0tSg3sXNDU
 lXcphOgTaWgiVrnkBPDWoXbkjGp9PS3O27W1GwLxqG5n+xVP2vtsFBG1IBPoNTpGRS7K
 eRy5w6Wx8de29tC7h1k4Md4ZVCe4WSHKOUNT+qXUDzCB4ozgZaUlDffa25kNVr4n4ayr
 MYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FQr2+CCalKgDrA12cz6kTPFlEgpE4NTSJBHk84k9KlA=;
 b=WRztqkIWdMwMPt0Xdk9N4CPPRw9bZSnTtpbSok0GFban5TkWehx/9GpdohOkCrCnbM
 RCU8qrCw3gMKS9Kv+SPjnocWphVNaYMGZpIiMNTU5WGy6zl7Bc7F4qhz9cClbFjbLSrm
 xEDbHngfY4l+LFRI8DLoWCzcvFkk4G/YVtO3q02vtff6aFBbAzLuKTrRHp/AOgnu6hU1
 I0ChTtaVLGuMTLOeElC4+OMesKNhanwJRK9dFIUX0QkgVHh68/be9ImJyjnok2L9YJSJ
 8KPnkQ/rt9IOmdDlMbQbt7fKDzSao+Z0X5MOiX2WNGIPzFGxxKRm7+QO7fTXebbTVDK5
 ubAw==
X-Gm-Message-State: APjAAAVK3XllL2tbSPQC1ACO2ucpMs2OPngE77ROG2JTkuvrlM/yT3L5
 2Wri8h7mIFpjGpmRrkXeoBrNH7qCeTYgJ1L5Ykiwvg==
X-Google-Smtp-Source: APXvYqxjWDEwbkiE2ZsJXoDXKy8bI8tnus4ZqI8PGuQRfd0/qEvKV0AcHKVrO9J3tvHAbI2QR49LL7GHmT1tgXzHaKI=
X-Received: by 2002:a17:902:8484:: with SMTP id
 c4mr19844087plo.223.1566839045123; 
 Mon, 26 Aug 2019 10:04:05 -0700 (PDT)
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
 <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
In-Reply-To: <CANiq72mcSniCzMzW6AX_5tG5W2edjEmZ=Rf=jo-Mw3H-9RVJqw@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 26 Aug 2019 10:03:53 -0700
Message-ID: <CAKwvOdkhJQEwWNZSC08sg9vGjydTXrbqNqNrqfN6vbRZUsjGvA@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_100409_170742_C33D8DEB 
X-CRM114-Status: GOOD (  14.62  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Sat, Aug 24, 2019 at 5:48 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Aug 24, 2019 at 1:25 PM Will Deacon <will@kernel.org> wrote:
> >
> > Which bit are you pinging about? This patch (12/16) has been in -next for a
> > while and is queued in the arm64 tree for 5.4. The Oops/boot issue is
> > addressed in patch 14 which probably needs to be sent as a separate patch
> > (with a commit message) if it's targetting 5.3 and, I assume, routed via
> > somebody like akpm.
>
> I was pinging about the bit I was quoting, i.e. whether the Oops in
> the cover letter was #14 indeed. Also, since Nick said he wanted to
> get this ASAP through compiler-attributes, I assumed he wanted it to
> be in 5.3, but I have not seen the independent patch.
>
> Since he seems busy, I will write a better commit message myself and
> send it to Linus next week.

Sorry, very hectic week here last week.  I'll try to get the import
bit split off, collect the acks/reviewed-by tags, and resend a v2 of
the series this week.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
