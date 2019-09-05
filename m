Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59D1A989F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 04:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrVoKZnOBz0BSF5dLlgwRFrhewv+NJT4QZo6QSrE1+4=; b=V7aJtqO6aeHvjP
	bNQ6M/KUaBOKUwlkg9aah0P57/xm1SLLuAKFKbOUBzQ+LKK7UF2Gyc+PNQ3Tb5KGizkr/Nt0KCKh1
	QR+OifIOlJfvMeNE7A3MfFTwLyEtGR4H1SY29I07XRjkVyZt88z4ZQupiBOWvaDMQrXpcjP+sylag
	IR4rbUdBxz6j/xDS+selGWxnwlKI+1Nf4NMoxqT/ARbw6CN6QtroYDn/TrBzGAtIromTrQfQ4dj6m
	9zXvivfo/pR6HmGp7tQ0J07leq+SsUstoeeVNs8b60HlyVIO3AwbkHGTlX3VOva9SrwnX0JpIYvwe
	kS88XOBzGau6B+UCkf2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5hwF-0000GY-Oj; Thu, 05 Sep 2019 02:55:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5hw5-0000F7-Th; Thu, 05 Sep 2019 02:55:51 +0000
X-UUID: 2a4163641d4d48c185f742c31b1324ae-20190904
X-UUID: 2a4163641d4d48c185f742c31b1324ae-20190904
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 784677791; Wed, 04 Sep 2019 18:55:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Sep 2019 19:55:38 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n2.mediatek.inc
 (172.21.101.141) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 5 Sep 2019 10:55:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 10:55:34 +0800
Message-ID: <1567652136.11483.1.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] mmc: block: add CMD13 polling for ioctl() cmd with
 R1B response
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Avri Altman <Avri.Altman@wdc.com>
Date: Thu, 5 Sep 2019 10:55:36 +0800
In-Reply-To: <MN2PR04MB6991F51F6DDCA28FC23D02FEFCB80@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20190904075444.2163-1-chaotian.jing@mediatek.com>
 <20190904075444.2163-3-chaotian.jing@mediatek.com>
 <MN2PR04MB6991F51F6DDCA28FC23D02FEFCB80@MN2PR04MB6991.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_195549_969375_C76CC5B7 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>, Chris
 Boot <bootc@bootc.net>,
 "srv_heupstream@mediatek.com" <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Zachary Hays <zhays@lexmark.com>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Hannes Reinecke <hare@suse.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-09-04 at 14:11 +0000, Avri Altman wrote:
> >  static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct
> > mmc_blk_data *md,
> >                                struct mmc_blk_ioc_data *idata)
> >  {
> > @@ -623,6 +675,9 @@ static int __mmc_blk_ioctl_cmd(struct mmc_card
> > *card, struct mmc_blk_data *md,
> >                                         __func__, status, err);
> >         }
> > 
> > +       if (!err && (cmd.flags & MMC_RSP_R1B))
> > +               err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS, NULL);
> > +
> >         return err;
> >  }
> You have both the R1B flag check, and status poll (for rpmb) few line above.
> Maybe you could re-use it.
> It will both simplify this patch, and save the tad optimization of your first patch.
> 
> Thanks,
> Avri

So that we can drop the ioctl_rpmb_card_status_poll() as it do almost
the same thing with card_busy_detect().



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
