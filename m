Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A549B720
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icdhrxfXEEMAVyuqO2xZgyGzlJfkDnYvg8h+d4RNWNI=; b=Uq+YTDvy/xb4uc
	HdnsXXmepqnlHQpBM9eMt5XXOTNYghE79Y+5xrHQoXkBknANCVySxWOJ/6H+TvHSr10dKd/NNYywI
	8y+0H66kN8L9CsVcy7Uci1iu/PcsRUCiBYBV9ivw4T5NF8SuFZ0XzfIF/CSw/JIv2/35fLk4y+MXW
	16oumPu2l7UJVJMpKDeIte/yGm77z0WDRXF1ReA66FaYCEIQchcfU/BQaeX5Pbbk9GpsbGJeg64LH
	hGjRRAyia6kIlb2iuZioPvgErW556kPcwyiSvbhXhiC7jIFfv+NMArMiGwWdLCnmQmya/yOO9Bvza
	Y07ZoQ7eXpcr1SweWgQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1FLN-00050M-5q; Fri, 23 Aug 2019 19:35:29 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FLF-0004zz-TH
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:35:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id m24so9851904ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 12:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Aw3zWTPY1Pke/iOZ2U1o3XSdWURhVQgfZ0MVHQIKkKg=;
 b=Xgabrn6LL5ii377noxysSOEasJ+Oe11TxeuTDk0407tRi7YMTDMJghg8lTrVJ2n7bJ
 aqUR4dgUl/gLarJl4EzDHgrxD0P13c4hrfS2hEWNCFczJHvLT7jS0hgX817VVls2tzVi
 Lsg0ZbZ/KhegObqfEum4hA+BOcnNPWcc1ZME91JMlcqKpNj1yQtoEXRkH1hg6d2fgsHy
 Sr6J5Axhu/vTtx6Fe+SrnXZLjHYpWbBuQVw9y+hHhRpAf7Wq+/YdBtjoy0H2/I6y2WDL
 MFvT+zCOZhpkSXGuzJZfTaksExIivK2kEH34JUmTAyJjMxVp7hnsbeqlNcVLO3boeKMD
 ipLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Aw3zWTPY1Pke/iOZ2U1o3XSdWURhVQgfZ0MVHQIKkKg=;
 b=BIQeRa83b21ByhqVbdhcLmTyN3VNXKajp/LN+PqOaYr7pOctFnFwL0pURUMJqNLBku
 w6HsRIA+8+M5d4h2InEg0/Ee9cg8HNOb5KLx7AVchqOh+wbkhiCPzaEO/IR+OBSHW9Ep
 nhyHd5KBl/E+KsjOJqYCMjj/32Jl/IaSJZuoa2tINK0vS1/L+00bQ/62R9JsjqCzxJXz
 3a+TuOrvABigr03iTNZ6gKD1BzNl7Zig1SZMDvYvMec0Wn1cdlEoFmIs81g+V6AwJK9x
 eDysoyeT0kKzF0BFfDMcZtS60mCCqEdJA0CWtsZwNzVjLVSs84IWYNvodYSPrdRu8bxD
 iruQ==
X-Gm-Message-State: APjAAAVbFt3KqqjZibhUQlmCxZ5YCl+1xvQkQAL4gqlGjmiegszZtSvS
 U/kfGsJjKDGnflVugHwd4hsumlIgBWMVYORyVHM=
X-Google-Smtp-Source: APXvYqyu5XocSpMCv9Ma3zoKfOodjMtuyXKtqzOvcYasJ6a10KwB5/pdgE+yCvCBAmtozRI4n93M0cplMxbj/gV57fs=
X-Received: by 2002:a2e:9252:: with SMTP id v18mr3917894ljg.93.1566588919507; 
 Fri, 23 Aug 2019 12:35:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-12-ndesaulniers@google.com>
 <20190813082744.xmzmm4j675rqiz47@willie-the-truck>
 <CANiq72mAfJ23PyWzZAELgbKQDCX2nvY0z+dmOMe14qz=wa6eFg@mail.gmail.com>
 <20190813170829.c3lryb6va3eopxd7@willie-the-truck>
 <CAKwvOdk4hca8WzWzhcPEvxXnJVLbXGnhBdDZbeL_W_H91Ttjqw@mail.gmail.com>
 <CANiq72mGoGpx7EAVUPcGuhVkLit8sB3bR-k1XBDyeM8HBUaDZw@mail.gmail.com>
 <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
In-Reply-To: <CANiq72nUyT-q3A9mTrYzPZ+J9Ya7Lns5MyTK7W7-7yXgFWc2xA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 23 Aug 2019 21:35:08 +0200
Message-ID: <CANiq72nfn4zxAO63GEEoUjumC6Jwi5_jdcD_5Xzt1vZRgh52fg@mail.gmail.com>
Subject: Re: [PATCH 12/16] arm64: prefer __section from compiler_attributes.h
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_123521_973494_7CA41D48 
X-CRM114-Status: UNSURE (   7.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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

On Thu, Aug 15, 2019 at 11:12 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> Btw, I guess that is the Oops you were mentioning in the cover letter?

Pinging about this...

Cheers,
Miguel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
