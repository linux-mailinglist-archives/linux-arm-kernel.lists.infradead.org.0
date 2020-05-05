Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6901C56F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LoKJucEOmhHQ9fhXyfctaazEkHhp5B+ex17t2fkzQcE=; b=R3wIo2Vfme6XYr
	bNkjq6kPEbZw5wO02f0/v6boCumKagJx63e4tm1ruPWRzWADJxiqH+k41vsJybSDffFtSJNnHFVcd
	1trfl3Mmo0DZ4HtB7SpPxhyW047BtL0+rco8CCuw1qkR6PlLvaEHRDw/jVp6Q8QoAUKws4evAktil
	YDQzfRainVHb2qzma/vHAcoJdHcfxWfbPW740Mzz8HBdUMTezZe2ECl1WEAz13/q86RYpN2699kqc
	nZPOUXqpHeKnqhd8fsq4bPiSoNn8gFN8e4MErF9bYP+cshkvfpKJQvBC055boFG2ewTFnYqWKWRAg
	OeVxHZJmToCzVbsIW/4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxfo-0004TZ-7z; Tue, 05 May 2020 13:31:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxfJ-0004Eh-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:31:21 +0000
Received: by mail-lj1-x244.google.com with SMTP id w20so1633479ljj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 06:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iyIfZkYPS9M4auvW6h31t2pDFbAPlltvGdvUpf8+y6s=;
 b=GpDV33m9OSNcuyhoVsY1DzN1WJVXwBvsQzGImWQKbBl7G1Ok/h0FWE93M/g+o34hEz
 jGRNIKP6e4YcXDEFzN49pEhwGTIWlbKs7Pjd7mXyWGqcz8LfpdZlONhsq5GlDqAl7/K2
 H1hSjo2nf99o07pSf2OdvrzDJ09hDQOT1pLABRPzfSWSf4wG1rvC4fIydLeWX+Chd7t6
 kAqAkHf3IbR5UvQ9jmYAc16dUZhUjw7VVUna36AjLjqHkz1HUnInDXBKHSF9l0THkL17
 It99itvpb0xtTT69BVrjANEnLBeeVm2Al/+W4ulyRWPBC+V7N1Em6QrpNMmC4eEmOg5M
 ytXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iyIfZkYPS9M4auvW6h31t2pDFbAPlltvGdvUpf8+y6s=;
 b=BqNCTGENkllNogV8uCB5XEsb0Hwpy1qhBuctixxCObx5naFX/fHriQZ3Coqz2uEN3z
 1w2L89G93eEF2NKArydBVmTZcRWJ03VN8o7dJ52SG4waFjh3liQ2/3zfVHJ4UkA9T4Ng
 o20KmbTpP+UAGqmFcWLVOL826ledY7+oiduCxlrl/MZYghR/yzBGLNSnhcKA6fRaweKL
 KTpoyTLk7FmvJDDMTajn7555RsmbiQaR75YKqMGnLKGkllohGLe0b8QL1jMpst2i9fTq
 fkFoZJL9iTczR0FyhORYPDVE96u9Q2h2Bp6asFOtpXhGmG67aWa4y29c9W/8eaRRB07U
 S1oA==
X-Gm-Message-State: AGi0PuYydAz99Lg6uuSPHaDv9k0uOIbDai8tb3rVtS/jMyc3PT6q+ZUh
 fKxnao7OqA2g+VNA+xDfBEjLL2MPf6Omi1r2h9fzlg==
X-Google-Smtp-Source: APiQypL5A7EGS952Im/T/fW2Ho6QLjbkrTeTEEXR6SQpUkH9EnSEIqtWgBh8X7krtW1GL1uzbdDUxxhdJV3oDK7Fjjo=
X-Received: by 2002:a05:651c:107a:: with SMTP id
 y26mr1903487ljm.80.1588685475521; 
 Tue, 05 May 2020 06:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
 <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
 <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
 <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
 <5f338763-b35b-e2b4-7f15-df3a5bcbb799@ti.com>
In-Reply-To: <5f338763-b35b-e2b4-7f15-df3a5bcbb799@ti.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 5 May 2020 15:31:04 +0200
Message-ID: <CADYN=9Kdoc5WRHMpseFAXpL1wQymUGnSHfEU0b-i2Uz-GShmCA@mail.gmail.com>
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_063117_806274_17787AFF 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Clay McClure <clay@daemons.net>,
 Tero Kristo <t-kristo@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 at 14:20, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>
> Hi Anders,

Hi Grygorii,

>
> On 05/05/2020 14:59, Anders Roxell wrote:
> > On Tue, 5 May 2020 at 13:16, Anders Roxell <anders.roxell@linaro.org> wrote:
> >> On Tue, 5 May 2020 at 13:05, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> >>> On 05/05/2020 13:17, Anders Roxell wrote:
> >>>> On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> >>>>>
> >>>>> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
> >>>>> timestamp TX PTP packets and all RX packets.
> >>>>>
> >>>>> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
> >>>>>
> >>>>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> >>>>> ---
> >>>>>    drivers/net/ethernet/ti/Kconfig             |   1 +
> >>>>>    drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
> >>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
> >>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
> >>>>>    4 files changed, 201 insertions(+), 2 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> >>>>> index 1f4e5b6dc686..2c7bd1ccaaec 100644
> >>>>> --- a/drivers/net/ethernet/ti/Kconfig
> >>>>> +++ b/drivers/net/ethernet/ti/Kconfig
> >>>>> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
> >>>>>           depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
> >>>>>           select TI_DAVINCI_MDIO
> >>>>>           imply PHY_TI_GMII_SEL
> >>>>> +       imply TI_AM65_CPTS
> >>>>
> >>>> Should this be TI_K3_AM65_CPTS ?
> >
> > instead of 'imply TI_K3_AM65_CPTS' don't you want to do this:
> > 'depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS'
> >
> >
>
> Right, I'll try. It seems your defconfig is produced by randconfig as
> I can't get broken cfg TI_AM65_CPTS=m and TI_K3_AM65_CPSW_NUSS=y
> with neither one below:
>
>   make ARCH=arm64 O=k3-arm64 defconfig
>   make ARCH=arm64 O=k3-arm64 allnoconfig
>   make ARCH=arm64 O=k3-arm64 allyesconfig
>   make ARCH=arm64 O=k3-arm64 allmodconfig
>   make ARCH=arm64 O=k3-arm64 alldefconfig
>   make ARCH=arm64 O=k3-arm64 yes2modconfig
>   make ARCH=arm64 O=k3-arm64 mod2yesconfig

I'm so sorry, I forgot to tell you that I do my allmodconfig like this:

make ARCH=arm64 KCONFIG_ALLCONFIG=arch/arm64/configs/defconfig
O=k3-arm64 allmodconfig

Then I'm sure I should get a bootable kernel since that uses the
defconfig as a base...

Cheers,
Anders

>
> Related legacy TI CPTS threads:
>   https://lkml.org/lkml/2020/5/2/344
>   https://lkml.org/lkml/2020/5/1/1348
>
> I'd try summarize goal
>   TI_K3_AM65_CPSW_NUSS  TI_AM65_CPTS
>   Y                     Y/N
>   M                     Y/M/N
>   N                     Y/M/N
>
>
> --
> Best regards,
> grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
