Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9543B1187AC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 13:09:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1dLROdR5SBYJTRjtkEr0EfI8N5k73LxSylZOUrcUIj4=; b=q1+VLv8nDD7P7J
	+gQRJO8tpS8GLIsiGmMI/211FMT3RrGAsOVslCLKPBzOfgla5aDnFRxGul0npp1y+9+H/sGrYppkB
	VEykN18zPqMbYjBp9mfG904EJPEH/CyUd0jIiARhpn6z1aT02MyWJXTs+Ed3aXLaCKRNRNcMW3ozp
	SzbkrPmfXZhWfPhI9yo96Huih28u9nkvGlVDdaOKvmJHXTdhoK1kUfsNlvnZUWBXcvU5kYFSKfArY
	DwDkgqQ/JDH5qWf7oobAh6qWLOO4fLlz7Jj2ssgeMMFVxP9PPWqlXbh3PUIzyVBcRXhoKHB8dgkpP
	REUaW49dn0puovuU4Ddw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieeKP-0006fR-8S; Tue, 10 Dec 2019 12:09:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieeKF-0006ds-Hb; Tue, 10 Dec 2019 12:09:13 +0000
X-UUID: bb7e297fc3954198a6704c27c628868a-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=2INHnv89DngP2q6S6QSycxepChudtOI9fx0i3gt9NlY=; 
 b=IgP4vPVv26ceIPL+Ygm1rZA5CsxGk4kufMc4XnGrCLsR4lmGH9NRgYd13LspYMo6EinWcRtfbn0xkEHMYrCrhI3R3l5jxHwO9GBKDvXO1hZkDqdDpICRIvJT5/seUqrE1Rc7TNYGnBAgFzCaiPtPF81b1a3Rify8lVmyo3OmM3A=;
X-UUID: bb7e297fc3954198a6704c27c628868a-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 10239754; Tue, 10 Dec 2019 04:09:03 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 04:04:45 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 10 Dec 2019 20:03:32 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Dec 2019 20:03:29 +0800
Message-ID: <1575979419.7714.1.camel@mhfsdcap03>
Subject: Re: [PATCH] mmc: mediatek: fix CMD_TA to 2 for MT8173 HS200/HS400 mode
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Dec 2019 20:03:39 +0800
In-Reply-To: <CAPDyKFo9Z2yj7zC5VOS-iX_LyavPp1A4n73eAp7VD-Q+dpoqpw@mail.gmail.com>
References: <20191204071958.18553-1-chaotian.jing@mediatek.com>
 <CAPDyKFo9Z2yj7zC5VOS-iX_LyavPp1A4n73eAp7VD-Q+dpoqpw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_040911_592203_9B1638F1 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 hsinyi@google.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-12-10 at 10:51 +0100, Ulf Hansson wrote:
> On Wed, 4 Dec 2019 at 08:20, Chaotian Jing <chaotian.jing@mediatek.com> wrote:
> >
> > there is a chance that always get response CRC error after HS200 tuning,
> > the reason is that need set CMD_TA to 2. this modification is only for
> > MT8173.
> >
> > Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> 
> I have applied this for fixes, however it seems like this should also
> be tagged for stable, right?
> Yes! should be tagged for stable.
> Is there a specific commit this fixes or should we just find the
> version it applies to?
> 
 this patch should be a fix to commit:
1ede5cb88a29bba1aad1b68965c5fc8e00b20ed9
> Kind regards
> Uffe
> 
> 
> 
> > ---
> >  drivers/mmc/host/mtk-sd.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> > index 189e42674d85..010fe29a4888 100644
> > --- a/drivers/mmc/host/mtk-sd.c
> > +++ b/drivers/mmc/host/mtk-sd.c
> > @@ -228,6 +228,7 @@
> >  #define MSDC_PATCH_BIT_SPCPUSH    (0x1 << 29)  /* RW */
> >  #define MSDC_PATCH_BIT_DECRCTMO   (0x1 << 30)  /* RW */
> >
> > +#define MSDC_PATCH_BIT1_CMDTA     (0x7 << 3)    /* RW */
> >  #define MSDC_PATCH_BIT1_STOP_DLY  (0xf << 8)    /* RW */
> >
> >  #define MSDC_PATCH_BIT2_CFGRESP   (0x1 << 15)   /* RW */
> > @@ -1881,6 +1882,7 @@ static int hs400_tune_response(struct mmc_host *mmc, u32 opcode)
> >
> >         /* select EMMC50 PAD CMD tune */
> >         sdr_set_bits(host->base + PAD_CMD_TUNE, BIT(0));
> > +       sdr_set_field(host->base + MSDC_PATCH_BIT1, MSDC_PATCH_BIT1_CMDTA, 2);
> >
> >         if (mmc->ios.timing == MMC_TIMING_MMC_HS200 ||
> >             mmc->ios.timing == MMC_TIMING_UHS_SDR104)
> > --
> > 2.18.0
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
