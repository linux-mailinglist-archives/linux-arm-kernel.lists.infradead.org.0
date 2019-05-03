Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A55D12F2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBI+GqyepwKtdZQ4nXNnBPD8ZuKoUbZ5LdMRqsuF2KM=; b=rldXCzH5PQBoJW
	MNYd3q68xhyYiydgbei+jP031gk7G2qtOHoylu3nN452dP8iAix5REoWcYnxrbhrt/leb0uWlirzW
	6jCGocPsugtLsmTcXDEATK+lPRQh4SM6XecGhE5M0+SoNpnZAL35i4I+UhBLEfMyDa2chch0XbVP4
	uPYHKC7bEJX/+fu48ea2qRzxeEQMUsOe1kPgral85wN6zRs6wLgVlGDvOaWqpus5SBY8JhQu2V+p1
	rMwBvbtsAcUkkdMRmQQPtObLW7aMwnkDLl2oqkMXs6iOGrRWY5U+nhnYf7IFtmhXsrsArxhj6dGMi
	+vIhYWlnv0IGPoKYkmbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYGM-0007Op-Em; Fri, 03 May 2019 13:30:06 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYG8-0007Kw-Sb
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:29:54 +0000
Received: by mail-vs1-xe42.google.com with SMTP id x78so3581311vsc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 06:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GEzlUuM/Jwfv3VSJhIT2L6SyOU5GgzPaBEeFYcaGzrM=;
 b=O7rIyByj0jiAE4VnV24ZNn4Y1ylqkbfa1D8NaLihBPvQ6hc0TJ2Yiy69ux3icHlntZ
 OCoH1ySYRhckrmy+z0+u6WAjbTpS0gkWASmQrpvYQgV/WpkxcJajl0m0eEXXnR6El4qO
 zp9xSCHg2saZNiLmfNcuKvOI+3RH2fSU/GIakpBrVvCM90SOEC5Uu3Atgw7fatqZKTz+
 TbcUVhgAnKl+cp2XqrMVvd24D00wH5XOCIw/MaSWcFvEHbdiaDUmvIzmeVFLqFXhD5jm
 hNpu+BGi6tZULhQWflurRJiLW6GXpCEhr9PuyqeHVKcpiM0CCsFcKfvBSN1tTnWLtZgo
 2nFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GEzlUuM/Jwfv3VSJhIT2L6SyOU5GgzPaBEeFYcaGzrM=;
 b=Hffk4Tc2aIRk/PwE9vvn9J5FuBkMUysnE6zx6cGKnsd3Nzs21Ld6mxQZYbPGoxiMGh
 iG64t8PVzlyEyV36JKZsQvb+THPCLMFEFVoZ6fJlC6/jC/1ODQE1Je2MnSVaWoktz5wV
 H2chTsKd0048MnjCXCv8Zk4i/naCcF2THYTHJsGnjv7zAOQUitrOkGphWIKK2AV730+1
 Hi97lb8WbILrC6Vzcqen3Y4hDJFsWhG4fmFaqEbThh6YSgyYBfvAi7XF649c2lAkszo1
 vMolXcPZ+PlFUsIXu8JY8zcplWjBPYp0daDXGOWmkClF1rh1I+HCauHFaee0sJlE42eD
 o/rA==
X-Gm-Message-State: APjAAAXLbE2AsCjxJMl4eRffir/3exWE4aIzKmHWMDhaxvS4rwoOwTcR
 4qmgjQbnrzBs3tXIb/IoaaajuoMePL+hh/kZgAYP/A==
X-Google-Smtp-Source: APXvYqy046Z/3iX9LlO9h/cYF4oWBVlij//f74AP7T9sKj+fNTyl+4O4+eLgNyusHCiXL4EPY2iMVAE5FFUMIfSAp/E=
X-Received: by 2002:a67:b44d:: with SMTP id c13mr5650144vsm.165.1556890191428; 
 Fri, 03 May 2019 06:29:51 -0700 (PDT)
MIME-Version: 1.0
References: <1556264798-18540-1-git-send-email-ludovic.Barre@st.com>
 <CAPDyKFqbn=UcbwoH_z+yjrjvHQZaMtmsD=n0yrBV7DAK5VRJEQ@mail.gmail.com>
 <74b91eb4-e5a3-38b2-f732-29cdd058eb6a@st.com>
In-Reply-To: <74b91eb4-e5a3-38b2-f732-29cdd058eb6a@st.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 3 May 2019 15:29:15 +0200
Message-ID: <CAPDyKFoURwnai1hbCbO+Uh6+hc7A4dYHjWkqeFAEgMQET-BzwA@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] mmc: mmci: add busy detect for stm32 sdmmc variant
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_062952_992316_8880AD52 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 30 Apr 2019 at 14:06, Ludovic BARRE <ludovic.barre@st.com> wrote:
>
>
>
> On 4/30/19 1:13 PM, Ulf Hansson wrote:
> > On Fri, 26 Apr 2019 at 09:46, Ludovic Barre <ludovic.Barre@st.com> wrote:
> >>
> >> From: Ludovic Barre <ludovic.barre@st.com>
> >>
> >> This patch series adds busy detect for stm32 sdmmc variant.
> >> Some adaptations are required:
> >> -Avoid to check and poll busy status when is not expected.
> >> -Clear busy status bit if busy_detect_flag and busy_detect_mask are
> >>   different.
> >> -Add hardware busy timeout with MMCIDATATIMER register.
> >>
> >> V2:
> >> -mmci_cmd_irq cleanup in separate patch.
> >> -simplify the busy_detect_flag exclude
> >> -replace sdmmc specific comment in
> >> "mmc: mmci: avoid fake busy polling in mmci_irq"
> >> to focus on common behavior
> >>
> >> Ludovic Barre (5):
> >>    mmc: mmci: cleanup mmci_cmd_irq for busy detect feature
> >>    mmc: mmci: avoid fake busy polling in mmci_irq
> >>    mmc: mmci: fix clear of busy detect status
> >>    mmc: mmci: add hardware busy timeout feature
> >>    mmc: mmci: add busy detect for stm32 sdmmc variant
> >>
> >>   drivers/mmc/host/mmci.c | 61 ++++++++++++++++++++++++++++++++++++++-----------
> >>   drivers/mmc/host/mmci.h |  3 +++
> >>   2 files changed, 51 insertions(+), 13 deletions(-)
> >>
> >> --
> >> 2.7.4
> >>
> >
> > Ludovic, just wanted to let you know that I am reviewing and testing
> > this series.
> >
> > However, while running some tests on Ux500 for validating the busy
> > detection code, even without your series applied, I encounter some odd
> > behaviors. I am looking into the problem to understand better and will
> > let you know as soon as I have some more data to share.
>
> Oops, don't hesitate to share your status, if I could help.

Thanks! Good and bad news here, then.

I now understand what is going on - and there is certainly room for
improvements here, but more importantly the actual mmci busy detection
works as expected.

When it comes to improvements, the main issue I have found is how we
treat DATA WRITES. In many cases we simply don't use the HW busy
detection at all, but instead rely on the mmc core to send CMD13 in a
loop to poll. Well, then if the polling would have consisted of a
couple of CMD13s that wouldn't be an issue, but my observations is
rather that the numbers of CMD13 sent to poll is in the range or
hundreds/thousands - per each WRITE request!

I am going to send a patch (or two) that improves the behavior. It
might even involve changing parts in core layer, not sure how the end
result will look like yet.

In any case, I have applied patch 1 and patch2 for next, as the tests
turned out well at my side. I also took the liberty of updating some
of the comments/changelogs, please have look and tell if there is
something you want to change.

I will continue with the rest of series next week.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
