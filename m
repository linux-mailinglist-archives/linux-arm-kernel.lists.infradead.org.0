Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7E817EC7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 00:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0f34/LnwYxJIjcRCmhmyFqZkEOMUciBPjpYYFjqKNo=; b=DpsrcTULgirozK
	tHBDDNgoyAdtdMQZ6H6uUzHPafSqBE/NghK/4fT5gY9jfkXp7h3RfT/XCHrgYW/G8BgfHp16nZYiV
	gun43hX45zW7gZy3lOdE3z3PETFdGBSbxcuXRfor4bO+eygUMDKsoUnM20F+/oibulvZcuzsDJ6P5
	sHvI8uorTNKUZow2K/ojWWxDzVJk5tZQZx8q0VufYdzArj6nBQcdDBkOrdbYAvbqpln0FlTBVM5mu
	U1iP9Y2ouHDeIiDIal9ZyfVR4A4oknLvDFiMjwvGWiz+CclRVOcp7GnT0M3k8C4n5Ckrd82aQva/D
	BXPSUF9tX44xjgrpB8hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBRac-00009J-9c; Mon, 09 Mar 2020 23:13:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBRaU-00008L-D7; Mon, 09 Mar 2020 23:13:32 +0000
X-UUID: ca71ff1e4cd24a8b8cd3461cdad889db-20200309
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=yigWAdDzv9r+S5GMZO74ScT7GTvj1to3DrOUWOXQiqM=; 
 b=sYQ33oHqL+8sQNFJNm2aT0ivB/fro+xlCj3aob444ty2uDKTB1hjrSqCrKzdD7xgPeLPVc2KOvDKOlGCNykEqDmBJgfDrIe0bcabLfi3pIUb4P58G83i63muK07LB+k/6CQdH5o6BsCtJEyLdtG2kUPLCqBWSBI5fFtKr+43+rA=;
X-UUID: ca71ff1e4cd24a8b8cd3461cdad889db-20200309
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 248871745; Mon, 09 Mar 2020 15:13:22 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Mar 2020 16:13:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Mar 2020 07:12:07 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 10 Mar 2020 07:10:36 +0800
Message-ID: <1583795599.23665.4.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/4] mmc: core: expose MMC_CAP2_CQE* to dt
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 10 Mar 2020 07:13:19 +0800
In-Reply-To: <CAPDyKFpyah+oA-GtXNmdkrhwnGN_syU1JqRHn-9gk=HK0fV8EQ@mail.gmail.com>
References: <1581922564-24914-1-git-send-email-chun-hung.wu@mediatek.com>
 <1581922564-24914-2-git-send-email-chun-hung.wu@mediatek.com>
 <CAPDyKFpyah+oA-GtXNmdkrhwnGN_syU1JqRHn-9gk=HK0fV8EQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_161330_454566_37076C0F 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, wsd_upstream@mediatek.com,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Pavel
 Machek <pavel@ucw.cz>, Chaotian Jing <chaotian.jing@mediatek.com>,
 Android Kernel Team <kernel-team@android.com>, Pan Bian <bianpan2016@163.com>,
 DTML <devicetree@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thomas
 Gleixner <tglx@linutronix.de>, Stanley Chu <stanley.chu@mediatek.com>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Malaterre <malat@debian.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kuohong Wang <kuohong.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-04 at 14:04 +0100, Ulf Hansson wrote:
> On Mon, 17 Feb 2020 at 07:56, Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:
> >
> > Expose MMC_CAP2_CQE and MMC_CAP2_CQE_DCMD
> > to host->caps2 if
> > 1. "supports-cqe" is defined in dt and
> > 2. "disable-cqe-dcmd" is not defined in dt.
> 
> Both of these DT properties are defined as common mmc DT properties,
> so the above isn't really correct. Please clarify this.
Yes, the properties is common. But I think the "supports-cqe" or
"disable-cqe-dcmd" is defined in vendor's mmc dt, not common mmc dt?
Don't know what's wrong with the above description, any suggestion?
> 
> Moreover, I suggest to update commit message header into "mmc: core:
> Extend mmc_of_parse() to parse CQE bindings", as I think it better
> describes the change.
Thanks, I think the commit message you provide is better, will change it
in v4.
> 
> >
> > Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> > ---
> >  drivers/mmc/core/host.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/mmc/core/host.c b/drivers/mmc/core/host.c
> > index 105b7a7..efb0dbe 100644
> > --- a/drivers/mmc/core/host.c
> > +++ b/drivers/mmc/core/host.c
> > @@ -319,6 +319,14 @@ int mmc_of_parse(struct mmc_host *host)
> >                 host->caps2 |= MMC_CAP2_NO_SD;
> >         if (device_property_read_bool(dev, "no-mmc"))
> >                 host->caps2 |= MMC_CAP2_NO_MMC;
> > +       if (device_property_read_bool(dev, "supports-cqe"))
> > +               host->caps2 |= MMC_CAP2_CQE;
> > +
> > +       /* Must be after "supports-cqe" check */
> > +       if (!device_property_read_bool(dev, "disable-cqe-dcmd")) {
> > +               if (host->caps2 & MMC_CAP2_CQE)
> 
> Does it really doesn't matter if we set this cap, even if MMC_CAP2_CQE
> isn't set? You can probably skip the check above.
Will remove MMC_CAP2_CQE check here.
> 
> > +                       host->caps2 |= MMC_CAP2_CQE_DCMD;
> > +       }
> >
> >         /* Must be after "non-removable" check */
> >         if (device_property_read_u32(dev, "fixed-emmc-driver-type", &drv_type) == 0) {
> > --
> > 1.9.1
> 
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
