Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D043A34116
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7SO4h9fNiWK/DdKzr+ptn7GkytlSYfFtUaufLPLUAg4=; b=Wxj30TlUBYUzgG
	tenESsjhDS9kt5z0GPAiTnpOV/uJ+XuvCE5D67X3DHHtCMdTCNWhK3ZXWH/WAPEiRUJPKOHrZGwDk
	ptPbsT7a/BglAh4qW7zkwi/cw4G8quSDQhWCzGMP1TsVJMGOkZAoTU6JtPM8ZqkIyc06jVkleeyPu
	CWZ5z6uwZrLXyu0d5WUL6/kkfHlfbEfPVsvyOFJbmnhgBpKUIEgN8fQC0ruNq7kFm+q1nXwwgtUiD
	L+694EOIB+xakoTjMqnvf+NTpRhgw36cMX8naG7xuFXj/SrE8+aho8SZuYq4PyhB+6l2j9VYPdyZd
	RGV110ZerUlSRf/xosBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4Pz-0003z0-Eg; Tue, 04 Jun 2019 08:03:39 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4Ps-0003y8-4S
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:03:33 +0000
Received: by mail-oi1-x241.google.com with SMTP id m202so3755705oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FKpO8H57h4hKIEfk4q7HqguHGPmqzEwBqOwZI4qAzTI=;
 b=wfSINV13HS4ZECgj4OMaDwgnjyqqftKSQPf9sdO3jpWk5j1d1uIYnzwIBGGtBcTCDK
 zBSONMDiI3qwFEuQMKa0jjfLZFJ6uOKnyLxMXNspWMojasO6ZMWT5S2I5sruP96xasLK
 kiKlOBW/QPWonXzYsXTsoouNR1QDK/aRZ5BcpWY6iSsOfR3OufY+Lxq9lWTXRctpL4Hy
 a/R24TK38s9dnK0/H1jtWs8kZ/wfjp6nZ1gf/evwTjwwCR71FDMKKzdc3zqiGbzX11Ef
 d4bFQKqCryQX4Rb3woxnz9UyLAX5WjN5SR2kBXptjQJ4yF804wcIcNR03xl5RNq6h/Ml
 6qbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FKpO8H57h4hKIEfk4q7HqguHGPmqzEwBqOwZI4qAzTI=;
 b=VCyKXWA/KZ9KtHHM3CPnlmco2PFCPLjIrEvncM4A8VS5ATKX/zKMziGeo/HjAUpgM4
 7X0FzZTsJ70k8PEal5sVhIzhZtMCKs0hnxkCaNYyq1VOOtLj9no5MOuy3tdkUjqtwnGj
 anHhcF7lvgZ4ra1Jm8T4zy6xqrMDy5omyJji3pwDLzRY8Yu7kFOddvmSXiw3tvHfwSzb
 ZIFv3pEnM370Cpse8BbLTlmRnjKn2x1uDtU5gFUHV4tDd/pbejE2Dv8TJRGLa9+i+42f
 a8FmK0g2Wf3RGMexJklN5fPO4A9rKdefM1VDmQIrT9RudmF1KB+fENoRI+i+KjxPcd8h
 U9LA==
X-Gm-Message-State: APjAAAWiXSzM20nI5NdveCbSTP33fwf7JjvD8b00848bNINpqx9hhcjK
 MrxbptXWLrZT2FBEc/JQteFv+60FHjHWi9L8HeMkbQ==
X-Google-Smtp-Source: APXvYqyMOpg92w6Qp+vhHVCi14htGNn1rx1iAOVrnv9ZgovV4gSotwygWRGsq+15o2Px5EQGrz+6VMFs1vGy8mmk3Fs=
X-Received: by 2002:aca:dd08:: with SMTP id u8mr44390oig.27.1559635410647;
 Tue, 04 Jun 2019 01:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1558346019.git.baolin.wang@linaro.org>
 <ae6e23d4de6bb25cd697412f1402036d5ecc9843.1558346019.git.baolin.wang@linaro.org>
 <ed5bdd08-7227-4d55-23de-e78e15d315c7@intel.com>
In-Reply-To: <ed5bdd08-7227-4d55-23de-e78e15d315c7@intel.com>
From: Baolin Wang <baolin.wang@linaro.org>
Date: Tue, 4 Jun 2019 16:03:18 +0800
Message-ID: <CAMz4kuKEOQwOK2Yh+y+-ZhZDndA2tf9V45J_o-OittuSRJcurQ@mail.gmail.com>
Subject: Re: [PATCH 4/9] mmc: sdhci-sprd: Implement the get_max_timeout_count()
 interface
To: Adrian Hunter <adrian.hunter@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_010332_187858_C15F3BD5 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, 3 Jun 2019 at 20:35, Adrian Hunter <adrian.hunter@intel.com> wrote:
>
> On 20/05/19 1:11 PM, Baolin Wang wrote:
> > Implement the get_max_timeout_count() interface to set the Spredtrum SD
> > host controller actual maximum timeout count.
> >
> > Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
>
> Seems surprising that there isn't a custom ->set_timeout() as well.

Until now we did not find issues when using sdhci_calc_timeout().
Thanks for your reviewing.

> Nevertheless:
>
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
>
> > ---
> >  drivers/mmc/host/sdhci-sprd.c |    7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
> > index 31ba7d6..d91281d 100644
> > --- a/drivers/mmc/host/sdhci-sprd.c
> > +++ b/drivers/mmc/host/sdhci-sprd.c
> > @@ -285,6 +285,12 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
> >       usleep_range(300, 500);
> >  }
> >
> > +static unsigned int sdhci_sprd_get_max_timeout_count(struct sdhci_host *host)
> > +{
> > +     /* The Spredtrum controller actual maximum timeout count is 1 << 31 */
> > +     return 1 << 31;
> > +}
> > +
> >  static struct sdhci_ops sdhci_sprd_ops = {
> >       .read_l = sdhci_sprd_readl,
> >       .write_l = sdhci_sprd_writel,
> > @@ -296,6 +302,7 @@ static void sdhci_sprd_hw_reset(struct sdhci_host *host)
> >       .reset = sdhci_reset,
> >       .set_uhs_signaling = sdhci_sprd_set_uhs_signaling,
> >       .hw_reset = sdhci_sprd_hw_reset,
> > +     .get_max_timeout_count = sdhci_sprd_get_max_timeout_count,
> >  };
> >
> >  static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
> >
>


-- 
Baolin Wang
Best Regards

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
