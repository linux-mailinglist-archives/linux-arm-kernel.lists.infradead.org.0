Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E4C4F03B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 23:00:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oGBua5lBCVTmj/iOg5O/v1a7LYewWrMo4uwFiRMtti8=; b=YuuUiJa4boA1+M
	s8WCDl0HkvligU9IyAdY1MN3bf5uKJBBRO0lXim8sBS28JiSBxEtmVMf071iAd+jpy9JYFlxkogsx
	Z2fIMq3XTUEghO0S0FUfUyGM8a9fBEqPDcdAEOzr2hNdMudUFrcpBp/uXsMQW3juDN8J0AgCkQe8d
	i76rakrWuoulKEMj2Rl2eMabCfN1IF5+IA0DqLhTzMRsXYMZtdpl6bhmDEh/geDu+Im7kULwJpecZ
	Q+t7A180KlAMGIznSKcSiSHyfrPu4Sk624toDIKKx7ZVgAUNjZg5VyaIkxwhBe6QjCFxECPIW6bpl
	XdnwA9N5jn3LCMbFdMYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heQe4-00036z-DD; Fri, 21 Jun 2019 21:00:28 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heQdv-00036C-KR
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 21:00:21 +0000
Received: by mail-yb1-xb42.google.com with SMTP id x32so3219511ybh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 14:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pSX96sM10spT9GCGhKGP6T0HRGkaamy9kXn0AhO6OpQ=;
 b=mnnK/RC5tvWJlKJ/B22Unej4mg4lye4l3Sd5mF9TCZlrGiCVTskGE4Zd0b7sszz9AF
 fJJP2mrh0TCOa2wVfS3NS3at+qHRCZNxgLDOecsYHiXO9tCIWUHaq1d+Cqm+Olr3FvQZ
 uaSElwbeFVo8Qjd9jiOsV2wHSDgEfTjmcxrIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pSX96sM10spT9GCGhKGP6T0HRGkaamy9kXn0AhO6OpQ=;
 b=lGaQTJ0oqV6V1owSY9N4ixtFuRW5LDVkadWxHV87xeXT+fl4sVCfKUnE3E9cKE6njF
 LfgaW1fby27eHmqUfHjkvc/BmUgrdX+fKkR6pXQgp1rP48esgw2XQ2vyqtfpguFqlyDN
 6Dw99zDrrlbbtYeEKmVPLj6GnM6R2csnQELOKB3p1mZC+Lb8GYvIKfn+GLFhi/8xddQz
 GSwXJB7+Q9Y7nchVokMcXuHxM7fpaPSnNNfPT1qNvlwutvu45hgwMd/T5SbfiYIZawxs
 Qd1q0q8MXKfYkT+q/vnrG5u+p4SFRAwXOcwj/mW7Evjaa0jwLbyt53fFl9Ym7kuHd45/
 sFqg==
X-Gm-Message-State: APjAAAVC/8CaLcy2K1hMCzS6OPqpZsgp/db+eWdSi2a1/jyeUczuCcRg
 q8Uf6Ga973M3Z5r7tDvo4OS7xfrlHhA=
X-Google-Smtp-Source: APXvYqy8VWaRyho9tK2D8UdCSZwhwV6/DgJ0/b3iFW/Ro6GafeemDcLm4RqM7mjtmaeYXlsngbLltg==
X-Received: by 2002:a25:2042:: with SMTP id g63mr69919399ybg.113.1561150817127; 
 Fri, 21 Jun 2019 14:00:17 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com.
 [209.85.219.175])
 by smtp.gmail.com with ESMTPSA id p185sm899342ywb.92.2019.06.21.14.00.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Jun 2019 14:00:16 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id j8so1129497ybo.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 14:00:16 -0700 (PDT)
X-Received: by 2002:a25:9704:: with SMTP id d4mr68039393ybo.312.1561150464251; 
 Fri, 21 Jun 2019 13:54:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190620003244.261595-1-ndesaulniers@google.com>
 <20190620074640.GA27228@brain-police>
 <CAKv+Gu_KCFCVxw_zAfzUf8DjD4DmhvaJEoqBsX_SigOse_NwYw@mail.gmail.com>
 <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
In-Reply-To: <CAKwvOdmQ+WdD8nvLz_VB_5atDi56fv485Xsn+mHJZKnyj6L-JA@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Fri, 21 Jun 2019 13:54:10 -0700
X-Gmail-Original-Message-ID: <CAGXu5j+aihyZWUUTTxweXxEMfgL12HULqNhHj_mUedLefFrcLA@mail.gmail.com>
Message-ID: <CAGXu5j+aihyZWUUTTxweXxEMfgL12HULqNhHj_mUedLefFrcLA@mail.gmail.com>
Subject: Re: [PATCH] arm64: defconfig: update and enable CONFIG_RANDOMIZE_BASE
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_140019_700985_FB4E8F2E 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Jeffrey Vander Stoep <jeffv@google.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Dinh Nguyen <dinguyen@kernel.org>, Mark Brown <broonie@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Olof Johansson <olof@lixom.net>,
 Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 1:28 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jun 20, 2019 at 1:17 AM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> > I think it is mostly controversial among non-security folks, who think
> > that every mitigation by itself should be bullet proof. Security folks
> > tend to think more about how each layer reduces the attack surface,
> > hopefully resulting in a secure system when all layers are enabled.
>
> + Kees, Sami, Jeff
> It's a relatively low cost part of our defense in depth strategy.
> Maybe (Kees, Sami, Jeff) have more thoughts?

Right -- the thought is that it provides more benefit than
complication. It is hardly a perfect defense, but it does provide
building blocks to more interesting situations. For example, once
execute-only memory is more common, KASLR + XOM means there is a not
insignificant defense against automated ROP. And KASLR is a general
precursor to fine-grained KASLR (i.e. randomizing on function).

> > So KASLR is known to be broken unless you enable KPTI as well, so that
> > is something we could take into account. I.e., mitigations that don't
> > reduce the attack surface at all are just pointless complexity, which
> > should obviously be avoided.
>
> (Note to Sami + Jeff if they had KPTI on their radar)

I prefer that KPTI always stay enabled. :)

> > Another thing to note is that the runtime cost of KASLR is ~zero, with
> > the exception of the module PLTs. However, the latter could do with
> > some additional coverage as well, so in summary, I think enabling this
> > is a good thing. Otherwise, we could disable full module randomization
> > so that the module PLT code doesn't get used in practice.
> >
> > Acked-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
