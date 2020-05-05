Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6661C5441
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ALJTn1nfwLAIAz9bNGgaKNcArfha80D0a7ZjGE3ZPY=; b=cQdGrkxa8H8GCb
	KsgntqWEFoCfHuGJgwlHVsp9p/tXnWqa+MjkSQD9gbf5z0YGUmm9itO5tGpKj9TcNfTL63WR4mT4C
	zhwaBscMpWmC/YUBuo1D7/AbL43UU4Q0dhaHnlygLU8LgW8XnHMxnTzI38H+h0bKzn1gLpWFB+RcJ
	gzQxt9J/v9fz44urr+UsqRRC6lOjcNkA5CyAz4rBGaXptzZ/6t6H6aFR2YyNNXQ8xK8HZ9LZaqswi
	hXFDurcJEufnsun5B+UDW74Y4L95fMw/8VUQqNpI8nkM/nk3RXUc1ruJcjfO+0RcC0PjiPsS+i+OB
	MJLOY7XmwwXwhIZvNUnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvZF-0000LJ-IV; Tue, 05 May 2020 11:16:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvYx-0000Do-CA
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:16:37 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so1174101ljg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 04:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CE7dKQqnYIOY/l5qi0VeTegJiaBv5DCvD46e4fM4K10=;
 b=Jo8mfpA+Lb3q9PDWH3/SaxnkLzKrv1ETBnrNpM0tMNd31h+GJHN0SGOoOBaqSRBMmU
 rrV6OFY9XRg7WT+vpxDy3AmajzqF7nyWdQ8mHnxnBf33Ms2hAdPbhjQG1MF5qCRivRRU
 8p7qUUU1j0kOsPFsgGMixkX8M7gMOYYZs0jTPASFsG9PdNRFEsusvo7iJmG9Eu32V8eG
 g1JkYql1fPPfYK5xLAmYIytTPLn8TK5AH/TgibhTQb87KjHg2vNerCcRJHE8HwRnK0Xu
 DcbzWmX/VKKcnzrJuiNIb4Mo8b5ms8/hqEt/gIxya8f81JruT6kqmbwyNQNLlYQfonmW
 sIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CE7dKQqnYIOY/l5qi0VeTegJiaBv5DCvD46e4fM4K10=;
 b=HXFMiBPjWacXhXOUt1EWYTjSgxU118lzO58SqbdevCNdi6HlD1im4m3bsbIpp9Rj26
 jBKMlH5dKyRQfzlX4u9A11QqdoDRI/HOUAntxUa+FGjxYlD1GYUQio5B5ZxM47/Lc23A
 5KdIqcy727bYndnwg500/aPbKVQnQDmFCa1bQCTzI7IxqT8CfpYWfyk/zllujd3v8yAC
 ah4X2xzUp3gFU+9Isz42zXZEI2krevNv6C4u0oVrNWpGdbiR3p/gfVgS0iSI/CoJBXlD
 pwdyWwHs/q4lsqsjQ8IXEBPZE7B/jS9LuAW+OJPJRbgaXgjNSfTRS8MPhcgCEdeIwadH
 4lng==
X-Gm-Message-State: AGi0PuZ/y9zLrVxdT1xN2i5bxzs4p0TfuZCyXeal8it7Wr/ORZX+Ou9E
 +UIgyryDs9a55wKhJ/0puKXjxIw46+OVBL04n1clau06COhHxwps
X-Google-Smtp-Source: APiQypJQBdZde2rVY+WtvhBg3d8hBdcaGzv8E18V+Ww5EO22R43FnSt4EDcu6puPWgoQimFPf3OWlJzvpaxJnuhbed0=
X-Received: by 2002:a05:651c:107a:: with SMTP id
 y26mr1561784ljm.80.1588677393361; 
 Tue, 05 May 2020 04:16:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
 <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
In-Reply-To: <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 5 May 2020 13:16:22 +0200
Message-ID: <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_041635_454293_FF529B65 
X-CRM114-Status: GOOD (  18.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 5 May 2020 at 13:05, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>
> hi Anders,

Hi Grygorii,

>
> On 05/05/2020 13:17, Anders Roxell wrote:
> > On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> >>
> >> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
> >> timestamp TX PTP packets and all RX packets.
> >>
> >> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
> >>
> >> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> >> ---
> >>   drivers/net/ethernet/ti/Kconfig             |   1 +
> >>   drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
> >>   drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
> >>   drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
> >>   4 files changed, 201 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> >> index 1f4e5b6dc686..2c7bd1ccaaec 100644
> >> --- a/drivers/net/ethernet/ti/Kconfig
> >> +++ b/drivers/net/ethernet/ti/Kconfig
> >> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
> >>          depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
> >>          select TI_DAVINCI_MDIO
> >>          imply PHY_TI_GMII_SEL
> >> +       imply TI_AM65_CPTS
> >
> > Should this be TI_K3_AM65_CPTS ?
> >
> > I did an arm64 allmodconfig build on todays next tag: next-20200505
> > and got this undefined symbol:
> >
> > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > function `am65_cpsw_init_cpts':
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:
> > undefined reference to `am65_cpts_create'
> > aarch64-linux-gnu-ld:
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
> > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > `am65_cpts_create'
> > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > function `am65_cpsw_nuss_tx_compl_packets':
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:
> > undefined reference to `am65_cpts_tx_timestamp'
> > aarch64-linux-gnu-ld:
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:(.text+0x4cf0):
> > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > `am65_cpts_tx_timestamp'
> > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > function `am65_cpsw_nuss_ndo_slave_xmit':
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:
> > undefined reference to `am65_cpts_prep_tx_timestamp'
> > aarch64-linux-gnu-ld:
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:(.text+0x58fc):
> > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > `am65_cpts_prep_tx_timestamp'
> > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > function `am65_cpsw_nuss_hwtstamp_set':
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:
> > undefined reference to `am65_cpts_rx_enable'
> > aarch64-linux-gnu-ld:
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:(.text+0x7564):
> > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > `am65_cpts_rx_enable'
> > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-ethtool.o: in
> > function `am65_cpsw_get_ethtool_ts_info':
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:
> > undefined reference to `am65_cpts_phc_index'
> > aarch64-linux-gnu-ld:
> > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:(.text+0xbe8):
> > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > `am65_cpts_phc_index'
> > make[1]: *** [/srv/src/kernel/next/Makefile:1114: vmlinux] Error 1
> > make[1]: Target 'Image' not remade because of errors.
> > make: *** [Makefile:180: sub-make] Error 2
> > make: Target 'Image' not remade because of errors.
>
> Sry, I can't reproduce it net-next.

Oh I forgot to try net-next, sorry.

> trying next...

Thank you.

> What's your config?

This is the config [1] I used.

Cheers,
Anders
[1] https://people.linaro.org/~anders.roxell/kernel-next-20200505.config

>
> --
> Best regards,
> grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
