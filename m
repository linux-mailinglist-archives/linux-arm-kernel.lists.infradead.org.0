Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA0B1CEA0E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:17:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvAbYlJnxuv+IPeCJN38vLRVEwYUSuqR+Cd0qVIq9yk=; b=H4DFWM3MXwXA5a
	Gny4RR681mbRYUfX6kOnf0n6C6hwbfzX1LCreh4r2pLpr3p67ajiLNuwzKUVWfzFFCm/JefKFQoId
	/iOcUkW5DmYOQk2W25SMtpYIkrMelRKdTwk2YtZZXQz88Qf3lkjhIRKJidthfTGPyYbfzW+fTZke4
	sgf3IVRvtS1OiQIznBim9WEmbKMdnVVjyBxrYhcpck+9UgDe4W7wgROWpcY59vNyJ0UO05acCY4Oi
	WwDWNavzYnQC4QR62ThTmB5do0Qtz/dfnxlRhpDf7GvwipeNmMU6Xxe5u/OKNFOTA32ZtPYQt5SPX
	9fT0OdSxLLvkMkMxRWbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYJXa-0006zG-U8; Tue, 12 May 2020 01:17:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYJXR-0006xp-DK; Tue, 12 May 2020 01:16:55 +0000
X-UUID: 35652924ac6a4bb6942201e1a4cd98c5-20200511
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EUooy7O3fgyoHXwTHQ6/oJh1GW+tv9ny3WBj2qXcgy4=; 
 b=DtRV3UuujB83FQzSc+Ko0Yl+A68jEqY6UZrCA5a1yZomTyDjn2xgcGU75UF5eaCpKRPwCAVSot69HI3P1HPdy1muSsrcgBfeRLaWUehB66S9UO4D2yv/giZxbibU+p0ijFrWKETUZvBbI/Azjp0hRyYLIRlTapKTxAkDqNtNYJo=;
X-UUID: 35652924ac6a4bb6942201e1a4cd98c5-20200511
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1498342619; Mon, 11 May 2020 17:16:45 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 18:16:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 12 May 2020 09:16:34 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 12 May 2020 09:16:34 +0800
Message-ID: <1589246198.612.1.camel@mtkswgap22>
Subject: Re: [PATCH v5 1/5] mmc: core: Extend mmc_of_parse() to parse CQE
 bindings
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 May 2020 09:16:38 +0800
In-Reply-To: <CAPDyKFoAa3=Rg77Af7nNQOZN13m9NQYERosrqiK_kuL3s-YECA@mail.gmail.com>
References: <1588031768-23677-1-git-send-email-chun-hung.wu@mediatek.com>
 <1588031768-23677-2-git-send-email-chun-hung.wu@mediatek.com>
 <9bc2454f-0b42-e256-7927-2564b56f369f@codeaurora.org>
 <CAPDyKFq7ffHeWg-S41tLvScg_BXCUULig=G=EzD_to1TG0NhVg@mail.gmail.com>
 <f9fa0232-3945-4e47-9238-0b51f6531199@codeaurora.org>
 <CAPDyKFoAa3=Rg77Af7nNQOZN13m9NQYERosrqiK_kuL3s-YECA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6AA204EBEAD201ACACA5EFC55AC0AB46C2AC4F420E581BAD29C20A66BBF8E8792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_181653_458603_724F117C 
X-CRM114-Status: GOOD (  26.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kate
 Stewart <kstewart@linuxfoundation.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-tegra <linux-tegra@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Florian Fainelli <f.fainelli@gmail.com>, Michal
 Simek <michal.simek@xilinx.com>, Jonathan
 Hunter <jonathanh@nvidia.com>, Andy Gross <agross@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Allison Randal <allison@lohutok.net>,
 Android Kernel Team <kernel-team@android.com>, Pan Bian <bianpan2016@163.com>,
 Veerabhadrarao Badiganti <vbadigan@codeaurora.org>,
 DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 =?UTF-8?Q?Micha=C5=82_Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
 Rob Herring <robh+dt@kernel.org>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>,
 Stanley Chu =?UTF-8?Q?=28=E6=9C=B1=E5=8E=9F=E9=99=9E=29?=
 <stanley.chu@mediatek.com>,
 Chaotian Jing =?UTF-8?Q?=28=E4=BA=95=E6=9C=9D=E5=A4=A9=29?=
 <Chaotian.Jing@mediatek.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=8B=E9=B4=BB=29?=
 <kuohong.wang@mediatek.com>, Adrian Hunter <adrian.hunter@intel.com>,
 Yong Mao =?UTF-8?Q?=28=E6=AF=9B=E5=8B=87=29?= <yong.mao@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-08 at 13:05 +0800, Ulf Hansson wrote:
> On Thu, 7 May 2020 at 18:33, Veerabhadrarao Badiganti
> <vbadigan@codeaurora.org> wrote:
> >
> >
> > On 5/6/2020 10:06 PM, Ulf Hansson wrote:
> > > On Wed, 6 May 2020 at 15:01, Veerabhadrarao Badiganti
> > > <vbadigan@codeaurora.org> wrote:
> > >>
> > >> On 4/28/2020 5:26 AM, Chun-Hung Wu wrote:
> > >>> Parse CQE bindings "supports-cqe" and "disable-cqe-dcmd"
> > >>> in mmc_of_parse().
> > >>>
> > >>> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > >>> ---
> > >>>    drivers/mmc/core/host.c | 5 +++++
> > >>>    1 file changed, 5 insertions(+)
> > >>>
> > >>> diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> > >>> index c876872..47521c6 100644
> > >>> --- a/drivers/mmc/core/host.c
> > >>> +++ b/drivers/mmc/core/host.c
> > >>> @@ -302,6 +302,11 @@ int mmc_of_parse(struct mmc_host *host)
> > >>>                host->caps2 |= MMC_CAP2_NO_SD;
> > >>>        if (device_property_read_bool(dev, "no-mmc"))
> > >>>                host->caps2 |= MMC_CAP2_NO_MMC;
> > >>> +     if (device_property_read_bool(dev, "supports-cqe"))
> > >>> +             host->caps2 |= MMC_CAP2_CQE;
> > >> This change is breaking emmc driver on qcom platforms where this dt
> > >> property is defined.
> > >>
> > >> [    1.543453]  cqhci_deactivate+0xc/0x38
> > >> [    1.545627]  sdhci_msm_reset+0x40/0x58
> > >> [    1.549447]  sdhci_do_reset+0x48/0x7c
> > >> [    1.553180]  __sdhci_read_caps+0x7c/0x214
> > >> [    1.556913]  sdhci_setup_host+0x58/0xce8
> > >> [    1.560905]  sdhci_msm_probe+0x588/0x8a4
> > >> [    1.564900]  platform_drv_probe+0x4c/0xb0
> > >>
> > >> So, we cant have this flag defined before sdhci_setup_host().
> > >>
> > >> I will have to clear this cap and re-enable it in our initialization.
> > > Thanks for reporting! I have dropped all the four patches from
> > > Chun-Hung, so we can figure out how to fix this.
> > >
> > > Please help to review the next version of the series.
> >
> > Thanks Ulf.
> >
> > Hi Chun-Hung,
> >
> > On qcom controller CQE also gets reset when SDHC is reset. So we have to
> > explicitly disable CQE
> > by invoking  cqhci_deactivate() during sdhc reset
> >
> > SDHC gets reset in sdhci_setup_host() even before cqe is initialized.
> > With MMC_CAP2_CQE_DCMD cap set even before sdhci_set_host(), we are
> > getting null pointer access with cqhci_deactivate().
> >
> > If CQE getting reset with SDHC reset is generic (applicable to other
> > controllers) then you have revisit your logic.
> > If its not the case then only qcom driver would get affected.
> 
> Thanks for clarifying the problem, much appreciated.
> 
> To me, it looks like the DT parsing of the CQE properties are better
> suited to be managed by each sdhci variant, to continue to leave some
> room for flexibility.
> 
> Chun-Hung, can you please drop patch 1 and patch2 from the series and
> adapt to this change in the mediatek variant?
Ok, I will rollback patch1 and patch2 from series and keep DT parsing
of the CQE properties by each sdhci/msdc variant.
CQE properties will move to mediatek variant.
> 
> [...]
> 
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
