Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EC933D0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 04:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aF0jVKuQjnAym4IcZvf+FQotXOR9VMxN744dAeoQuI=; b=gzFxCMR7RxSMrG
	vwP5PJqEzv0mXvmItrUNM8kQboyr9YBoTIrp+EmqLEanoWSHn4YcFcsuHlCYC8vjPvl50ZH2BELzE
	piQuJOYpFplBlos4U4fzKavVspL9JsIj0sMTzQ/c24hgD80bQzRIxmUf8EUSlZNfa9vka1jizdk4W
	qxAmkor0gMOZ4jcOX46q0+5gJFSO6pX2ClEgETG5ANhdSl3zOKEXspRINdwVqjNp42y119x97SiRF
	Z3SlPMDl0H+i3HdYMhPCCuVCH8/OBn1K9i/saMINxIABC56a3AcSfmAmPmIV8q0Ut+Pl/ehyFxyYJ
	XDi1EXu5soP1DMHld/xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXz2S-0004oT-3E; Tue, 04 Jun 2019 02:19:00 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXz2K-0004ng-Si
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 02:18:54 +0000
Received: by mail-ot1-x343.google.com with SMTP id i8so18050212oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 19:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1l+D3rSEai4qzn+TyHSQz7IIWfxK6zl3YHxlBM75Sxk=;
 b=ji0kqvdjzqwIUAMrKo44/NCdPxG7kCOt7Hn0ZEmNeX4IylO3gLu2LJSi/pElY7IIbM
 HN5nagHzCYI8L27LLselXWAYkf6bFKXGIxq2Vctezw/AB8zsC8WOydU92z/XH/2aoK2A
 yh2lvRhAVbV8FPmdWiyypeA6uHZAXIx5pvFi+Ct0Kh7I0FAf64XN2E/BwPIBb0bcHdSX
 0Gta6gcFmqEcmnp9kCfe3nLwyWf+SbQ1Nw+DlL57VPLsJeN/JiL8rhTgp1JmmBtAQZsF
 I1fiAFO0iWTIN38nBkT3M8I9T/Fupjok5DxcRbIXHTx7RIXemRNu1Cdirlm7sqCCiuyq
 CTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1l+D3rSEai4qzn+TyHSQz7IIWfxK6zl3YHxlBM75Sxk=;
 b=jNc7JB0j2RwVEESv1G6mJhLHQgvSDznFvUuk5hDqrI6mMhcRBah6iVrs27+x/0LISN
 PWRcophrvr4BMHQkzb6UUrMOxUuxq5cf+ktREOFKatBmJOfdo9qibzAGCz6mmmGZf2cS
 8c37Y+3ozmWRCEcj4dcBz89a1ZhMauNxN3vgFQ3Ntnnucuhl7+6NNA6XJqYAhJzELKmV
 YE/0GBTN7CwZMrSpLyJcwn6gPXGfEDOF80uQCAtt0/asxUFCaM1LdLa5GIBqVfSg1PJz
 vFDjsRRlitE1yEFlOexzGi+Bcycx7lSdnny50eZJVfXBemCWGCPqAWEplfuWx8dFk6mX
 okmQ==
X-Gm-Message-State: APjAAAVX1KanpkJcBDZD8DLtbLdfOrKpWtCBpWonJGfn+m1cm4cAIPJI
 VhyOFupQC/6S0YxBW1iP+UWm4YR2j5PNSqN2ZvPhpw==
X-Google-Smtp-Source: APXvYqyRqFO8DnlUxTuulaeN51Ccoi/wNUL1xOjgvaLRhN641y5Hw/UsspKPB9nl9NukmCmvcMaNWtuiBw6YLY/JcLo=
X-Received: by 2002:a9d:10c:: with SMTP id 12mr3560362otu.123.1559614730649;
 Mon, 03 Jun 2019 19:18:50 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <aafceaeb2fc7e9d103d1d7a19cdae97759dd1500.1558346019.git.baolin.wang@linaro.org>
 <6b539c8b-c2fd-6c37-d645-ef714c0e29c9@intel.com>
In-Reply-To: <6b539c8b-c2fd-6c37-d645-ef714c0e29c9@intel.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Tue, 4 Jun 2019 10:18:39 +0800
Message-ID: <CAMz4kuKXqTWfH0d=4hV_+k8ukYhihQP4QcqFQ+jpiQSu21TQ3g@mail.gmail.com>
Subject: Re: [PATCH 8/9] mmc: sdhci-sprd: Add PHY DLL delay configuration
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_191852_940301_63FEFF6A 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, arm-soc <arm@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Chunyan Zhang <zhang.lyra@gmail.com>,
 linux-mmc <linux-mmc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

On Mon, 3 Jun 2019 at 21:03, Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 20/05/19 1:12 PM, Baolin Wang wrote:
> > Set the PHY DLL delay for each timing mode, which is used to sample the clock
> > accurately and make the clock more stable.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>
> One comment, nevertheless:
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
>
> > ---
> >  drivers/mmc/host/sdhci-sprd.c |   51 +++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 51 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> > index e6eda13..911a09b 100644
> > --- a/drivers/mmc/host/sdhci-sprd.c
> > +++ b/drivers/mmc/host/sdhci-sprd.c
> > @@ -29,6 +29,8 @@
> >  #define  SDHCI_SPRD_DLL_INIT_COUNT   0xc00
> >  #define  SDHCI_SPRD_DLL_PHASE_INTERNAL       0x3
> >
> > +#define SDHCI_SPRD_REG_32_DLL_DLY    0x204
> > +
> >  #define SDHCI_SPRD_REG_32_DLL_DLY_OFFSET     0x208
> >  #define  SDHCIBSPRD_IT_WR_DLY_INV            BIT(5)
> >  #define  SDHCI_SPRD_BIT_CMD_DLY_INV          BIT(13)
> > @@ -72,6 +74,24 @@ struct sdhci_sprd_host {
> >       struct clk *clk_2x_enable;
> >       u32 base_rate;
> >       int flags; /* backup of host attribute */
> > +     u32 phy_delay[MMC_TIMING_MMC_HS400 + 2];
> > +};
> > +
> > +struct sdhci_sprd_phy_cfg {
> > +     const char *property;
> > +     u8 timing;
> > +};
> > +
> > +static const struct sdhci_sprd_phy_cfg sdhci_sprd_phy_cfgs[] = {
> > +     { "sprd,phy-delay-legacy", MMC_TIMING_LEGACY, },
> > +     { "sprd,phy-delay-sd-highspeed", MMC_TIMING_MMC_HS, },
>
> Did you mean MMC_TIMING_SD_HS

Ah, yes, my copy mistake and will fix it in next version.
Thanks for your reviewing and comments.

-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
