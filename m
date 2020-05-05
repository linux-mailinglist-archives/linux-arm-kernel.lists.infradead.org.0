Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A071C54ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 13:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HmsZlKpgZPu92b9YyX0ViKKL5kk0OyZftDguc6hfk0A=; b=i3GbfzeKQIUvcf
	zheFVO858XMUskv4Ucm7yHUrJl74Jsy22v0WzdSQD7IVuVJNJ9jmqME9ga5pvBUPRoom0hKZP+PUu
	VtcHg6oZQ4ghP8I3SvmktMO9cvPFTDSE0Wmg4+W+jQDKLkz8uVf5mwSsKd4a3PQYziYyI1mLnVcqc
	H4/7C98b7xvb0eSpGNmeFutRh4KR8W597lLVrtAtL7qobjVvB9UjARoNBOoxqH3Dn/aR7Q7UrqubK
	cglGr+qVH6h3Ehw+Pa6swWtNTGOhkF39KvIXaOIpcqwUk3LiBMReEnhZiI6eqC4P4d/uApGj8IimF
	HPqiIVK7x4usDd9x37ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVwET-0004W8-A9; Tue, 05 May 2020 11:59:29 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVwEM-0004Vm-9E
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 11:59:23 +0000
Received: by mail-lf1-x144.google.com with SMTP id a9so1116169lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 04:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uvyOYLDN9I6G44mzBr+eJp9UfWHxSSZYkeApkR1DRBs=;
 b=hHN3cpNowtbVxjqPXfJfjcZuJmb+J5Kee+wNPfV9hQkfN6yoyfeyUucbR++axL8aVO
 fpMlI4YRF0nBgFxj0vf15GhO5Tu6ZjZhlnzuV7hw2ZRQQlbMzyng/Z8bKQscC6Oaufq8
 l1GmOUQksiW11jYhrFJ4wBF5dsH0k9uAhQH7d8UQF4PlFwcA3sCFOfkX/xyTMNnoIWOF
 qytR5uXEloKnzfJ+g5FAPbCMc/nIfqmt+qIm3f1NMUgRG9dwDyRuYHU5O9nE8S85orQx
 hNBEhK7Z/1qq73yW5LxMcV/YZUA6QH8SQO/N9TvmN4GiDfJHntWV+shP19bozbSAO+Xp
 rBkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uvyOYLDN9I6G44mzBr+eJp9UfWHxSSZYkeApkR1DRBs=;
 b=Dr6ivWrpQOhoEpaBi8xi1CAYSgZ9G7i4jKNSxGWqnzYC4W7EYZ5gwPnPp5mNOsB83u
 VQVbmGA2OwEzRlqrVIMRVoWyxWa4Urg5Gmg9XByqBOsggXMRNzxCXZdXAnXAelyStYhu
 0ezlcI6JTjQUPk6E51qot8+di37Ik+4r+e7fsGMFeeQzZMV0RQjwwA3b3rdu4QdQRxwe
 LV+LkE0t+Nw6s6qXfZUoqEXOghNCYChdLB+LgwBNRWYSqR/egOE0sdyyTr4PluMXzKLd
 W5Bu7If88tG4flC1Sik3mP/K67z+24cL1WZAiXNDy4QEIAaZ1eCKtrFfE5D4Kqk7HStM
 ExYg==
X-Gm-Message-State: AGi0Pubw2ECqH6/H8eKZzFYh+XNrtkf0MadTGzfzOqMyPgtBD6TowJ0u
 cXeXFHmBOHDw1JnfE6iio2r/wDnhaFxXK6Xd5MagRQ==
X-Google-Smtp-Source: APiQypIOI/I3XWJ7qttW55NOmWj7VnuraK3AIGYXqHuHAPnirsq/4IwWVzOkmHsLKcQv2q+P2ChRK+/WFoZed5VuL3Y=
X-Received: by 2002:a05:6512:1109:: with SMTP id
 l9mr1543834lfg.12.1588679960671; 
 Tue, 05 May 2020 04:59:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
 <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
 <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
In-Reply-To: <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 5 May 2020 13:59:09 +0200
Message-ID: <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Grygorii Strashko <grygorii.strashko@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_045922_326322_D3EC4915 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On Tue, 5 May 2020 at 13:16, Anders Roxell <anders.roxell@linaro.org> wrote:
>
> On Tue, 5 May 2020 at 13:05, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> >
> > hi Anders,
>
> Hi Grygorii,

Hi again,

>
> >
> > On 05/05/2020 13:17, Anders Roxell wrote:
> > > On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
> > >>
> > >> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
> > >> timestamp TX PTP packets and all RX packets.
> > >>
> > >> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
> > >>
> > >> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
> > >> ---
> > >>   drivers/net/ethernet/ti/Kconfig             |   1 +
> > >>   drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
> > >>   drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
> > >>   drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
> > >>   4 files changed, 201 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
> > >> index 1f4e5b6dc686..2c7bd1ccaaec 100644
> > >> --- a/drivers/net/ethernet/ti/Kconfig
> > >> +++ b/drivers/net/ethernet/ti/Kconfig
> > >> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
> > >>          depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
> > >>          select TI_DAVINCI_MDIO
> > >>          imply PHY_TI_GMII_SEL
> > >> +       imply TI_AM65_CPTS
> > >
> > > Should this be TI_K3_AM65_CPTS ?

instead of 'imply TI_K3_AM65_CPTS' don't you want to do this:
'depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS'


Cheers,
Anders

> > >
> > > I did an arm64 allmodconfig build on todays next tag: next-20200505
> > > and got this undefined symbol:
> > >
> > > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > > function `am65_cpsw_init_cpts':
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:
> > > undefined reference to `am65_cpts_create'
> > > aarch64-linux-gnu-ld:
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1685:(.text+0x2e20):
> > > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > > `am65_cpts_create'
> > > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > > function `am65_cpsw_nuss_tx_compl_packets':
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:
> > > undefined reference to `am65_cpts_tx_timestamp'
> > > aarch64-linux-gnu-ld:
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:923:(.text+0x4cf0):
> > > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > > `am65_cpts_tx_timestamp'
> > > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > > function `am65_cpsw_nuss_ndo_slave_xmit':
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:
> > > undefined reference to `am65_cpts_prep_tx_timestamp'
> > > aarch64-linux-gnu-ld:
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1018:(.text+0x58fc):
> > > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > > `am65_cpts_prep_tx_timestamp'
> > > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-nuss.o: in
> > > function `am65_cpsw_nuss_hwtstamp_set':
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:
> > > undefined reference to `am65_cpts_rx_enable'
> > > aarch64-linux-gnu-ld:
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-nuss.c:1265:(.text+0x7564):
> > > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > > `am65_cpts_rx_enable'
> > > aarch64-linux-gnu-ld: drivers/net/ethernet/ti/am65-cpsw-ethtool.o: in
> > > function `am65_cpsw_get_ethtool_ts_info':
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:
> > > undefined reference to `am65_cpts_phc_index'
> > > aarch64-linux-gnu-ld:
> > > /srv/src/kernel/next/obj-arm64-next-20200505/../drivers/net/ethernet/ti/am65-cpsw-ethtool.c:713:(.text+0xbe8):
> > > relocation truncated to fit: R_AARCH64_CALL26 against undefined symbol
> > > `am65_cpts_phc_index'
> > > make[1]: *** [/srv/src/kernel/next/Makefile:1114: vmlinux] Error 1
> > > make[1]: Target 'Image' not remade because of errors.
> > > make: *** [Makefile:180: sub-make] Error 2
> > > make: Target 'Image' not remade because of errors.
> >
> > Sry, I can't reproduce it net-next.
>
> Oh I forgot to try net-next, sorry.
>
> > trying next...
>
> Thank you.
>
> > What's your config?
>
> This is the config [1] I used.
>
> Cheers,
> Anders
> [1] https://people.linaro.org/~anders.roxell/kernel-next-20200505.config
>
> >
> > --
> > Best regards,
> > grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
