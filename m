Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7F3A9A99
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E/D6ePstlasFLdMnluuFvFIHaTwtHMs8G8PsMDblk8E=; b=kxZzY/B7WEwRnl
	F4cKYaGMZoxD2Cgfx4ZkCJ+5ox238zVMqjzWIbFlkSM+pLyYAuDkWJ7LXktEzBJnU9u6SZzmcwwNF
	7uqYkAnv2Q0YJF0lwW/hsu9UiETtivQ6FzdN8jy04Es02Cird6gxqsCBouSvRD+uIv1F3410o1Sdj
	rl8GY/3XpedJaoIjbUo9dMuxh+Ikx3V2i1D2TCbum55pJuYdXNbLz8QoqDewhbTdhrK9umT73D/IG
	Cdw36wt0PzN+r2HuEZ6pIj/V+irb1DVtvo38WfNCkZHzvkPGmn9cCMvGqz2tqz+oODHshHytBkFeX
	xbxZPxFRtD62dbiZlPMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5l9X-0003aA-IH; Thu, 05 Sep 2019 06:21:55 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5l8s-0003EJ-N6; Thu, 05 Sep 2019 06:21:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567664475; x=1599200475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JzndiPsjMZDobhc6IsEFGhRIFcASWkXnm8leedOg6+Y=;
 b=bUl4utU5RP7qVQETVE0r4ZiqBbWxgkZKMz4O7Ff3jvMbibtzB/JIsd+b
 CNuyvjCS0WMkyIOxDmlrhyI7Qx/Y4AEvQkov6+IHZEQ3LfQx2eR/yKywS
 xozclUsF2BpTAEGu17sf94OYkVzP6BwD8XHYEhTwo0UNb4nSf7a4kNFWb
 HWsSuHbmWsuIBGq3ndDY1boJjKCTmafvX3SBQbFNPzrEjve7eHB5bfkWK
 edCCeGbMtX3HCKMKLJIqrEhE3iWzdNc5XzQzsASScX25nXXZIHWJQONUB
 cGZBEs9I3kS6fc8PwlOsFx6Y6Tc49fw8dGuy7RGeNuGSaW/HzRBxRej+X g==;
IronPort-SDR: bSYgU5uliINj3AdarGoniuv/S5LiFgsaeRjH6onPH+2J6eBP0FJfQMve/t4uJP+FigH2oVKrgg
 R1MN1ktPXOOaXTr6K488JhLLjBvwtGrHGZAenRyUa205WzZwajKdNoUggqZpVJ9Aw/dKOCI+iu
 MOKV5ZbmhgdFb6vA0U6yd8ByU3uUyZVvcUYR8OY3UDunDqQZQ6q5c92xxUfcxVntPJwk9M6Mw8
 qE8qO2+VTynZa6QxLxW/e/yYQiAC3QUewmMUH8KSmBRWN6vYeffrolxZ+xfp02wX5aeTPxs094
 LmI=
X-IronPort-AV: E=Sophos;i="5.64,469,1559491200"; d="scan'208";a="118406040"
Received: from mail-co1nam04lp2054.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.54])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 14:21:09 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEKwqp0u4bmt5z+fFUjEvhG6fflRSJRgQYvEIkn2rVcqylhWRHeC4ZmXtP83w1bOHGVvNbfPGn1iOEoUNr+R/FuOqggRoxpgYaOMzIampRg8ubM5Ljvpa+z1Hn4jcnCcONj2sTx9jTvUmRnU0Tgv8ButeocJLotXKKYBRbGQCZxb9w6AhN1mrfq95XhMSnH2m3uKJrGTCreEUHfTyta2vNWJEhlGyC4sqODaQFAEkdt7UunABaJjS8W4wyS3Kyo6Mh3n5nKWK4mc8z1Qa/4dP7MyAEHKyZruW96DDhBE+Ze4rUrksCUWD9Owntk1ktWLmpstIEQ2oTuApDi8lEgUzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzndiPsjMZDobhc6IsEFGhRIFcASWkXnm8leedOg6+Y=;
 b=g7JiXw0u8dVBEIT6KSonEQYBXF891QRqWaULrbGjyhze0xA1a9S3xvjLlscxjOk2tnp0nybJCqRDcSLew8/YtPj37UdxOHgXJYZs5SzuGKu6Cp0A35jJmbEQMJEnXg6+Bl2KRG5xNra2kDLa/fhWJzucBfl/34Qjl2cW/5Wnpmall0hy/jAiu1tRSf8qZZS1lKw1RLcseiBQ+LCFK6JuduCggb7v0Qqin0ueCzOvmYW6XpqBen8w/VWAozXaC1dGnO8qiAM03sM1SYm2xhPZtomUtaoyWi9aQfPTpapvDs2/ANWzioXBSk/cDHMRhR/Jyuy7YsftagP8mYcRgkTS+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JzndiPsjMZDobhc6IsEFGhRIFcASWkXnm8leedOg6+Y=;
 b=Ps3KsSys7ISl4GftQeF8i0WvgAYjPWv1C2zEI/aYvIQnjLsEyimWNcOREz3ARdspq3R7c5qSRFekNxTQzzaG+Mf/bZ7B/hTGpG+PX2vLgxT/RPwKsIrxXscWEufU6815cbHNdPGK9uCK4hLL4+xelyzvPBVfL+vhIaWUQxGH9ck=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6013.namprd04.prod.outlook.com (20.178.246.216) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Thu, 5 Sep 2019 06:21:07 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371%2]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 06:21:07 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>
Subject: RE: [PATCH 2/2] mmc: block: add CMD13 polling for ioctl() cmd with
 R1B response
Thread-Topic: [PATCH 2/2] mmc: block: add CMD13 polling for ioctl() cmd with
 R1B response
Thread-Index: AQHVYvYWr7zFcN7xD0GIE0WcESsTdacbjhBAgADWzACAADk94A==
Date: Thu, 5 Sep 2019 06:21:07 +0000
Message-ID: <MN2PR04MB6991B08ECDBC4021AEFDD06EFCBB0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20190904075444.2163-1-chaotian.jing@mediatek.com>
 <20190904075444.2163-3-chaotian.jing@mediatek.com>
 <MN2PR04MB6991F51F6DDCA28FC23D02FEFCB80@MN2PR04MB6991.namprd04.prod.outlook.com>
 <1567652136.11483.1.camel@mhfsdcap03>
In-Reply-To: <1567652136.11483.1.camel@mhfsdcap03>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 510bf163-0fda-4a89-a62c-08d731c93ce2
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6013; 
x-ms-traffictypediagnostic: MN2PR04MB6013:
x-microsoft-antispam-prvs: <MN2PR04MB60139125FB24DEE42304DBC2FCBB0@MN2PR04MB6013.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(189003)(199004)(7696005)(6916009)(8676002)(71200400001)(186003)(81166006)(81156014)(66066001)(6506007)(74316002)(9686003)(71190400001)(4744005)(6246003)(26005)(86362001)(54906003)(33656002)(8936002)(256004)(478600001)(14444005)(7416002)(66556008)(66476007)(229853002)(486006)(5660300002)(53936002)(64756008)(11346002)(316002)(476003)(2906002)(66446008)(76116006)(102836004)(7736002)(76176011)(446003)(14454004)(55016002)(3846002)(6116002)(305945005)(52536014)(6436002)(66946007)(99286004)(4326008)(25786009);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6013;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UK7u3aP7762IqznTlVJE7b9oqTe9+3sPYTZC2ahN4fYm9qGytOUAl5l6Ojtx14XJL3CUVTbyCJX+bt9d2XxrnPfRgFXFtRCDMRZnXX6i8P67akrnayL2TvzuIjQos1r5ALejgIFtMLVkwW+lXZknP+HZ3pAqU8q27F2wG+uxrcORYuUjaIgrnbrEEaK0Mlbg2KxWby/Jox6hjfsWmGXEcEA6VbCnLO2ynCd+xSKPdDHni+qWTbnCCLFLlzX477Bb981+JH8CFUmXdcS3P+7uCoLLFK88dWEEEfR9IkO8zdO1GAUACxycKx8LHGDarFU1JnVUNcyLx7uDftZ9fIj31PJFwNhD44mBud/LXukS1MIvB+eTLTfhv05DySAoI0erxeB8NQaAwiOcEQ7mR2JNSNFFoDYDe6Rr0AwCcNqsRO8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 510bf163-0fda-4a89-a62c-08d731c93ce2
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 06:21:07.4027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AP+mBR+snI8ts7umKQ5HKNsDYJgFDzRE+4XeeHIxvXknh3SabjC1Ub9hd9SgQcKi1I0+VBjzeirCrP+mUSqksg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6013
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_232114_966592_D7E993DA 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 Chris Boot <bootc@bootc.net>,
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

 
> On Wed, 2019-09-04 at 14:11 +0000, Avri Altman wrote:
> > >  static int __mmc_blk_ioctl_cmd(struct mmc_card *card, struct
> > > mmc_blk_data *md,
> > >                                struct mmc_blk_ioc_data *idata)
> > >  {
> > > @@ -623,6 +675,9 @@ static int __mmc_blk_ioctl_cmd(struct
> mmc_card
> > > *card, struct mmc_blk_data *md,
> > >                                         __func__, status, err);
> > >         }
> > >
> > > +       if (!err && (cmd.flags & MMC_RSP_R1B))
> > > +               err = card_busy_detect(card, MMC_BLK_TIMEOUT_MS,
> NULL);
> > > +
> > >         return err;
> > >  }
> > You have both the R1B flag check, and status poll (for rpmb) few line
> above.
> > Maybe you could re-use it.
> > It will both simplify this patch, and save the tad optimization of your
> first patch.
> >
> > Thanks,
> > Avri
> 
> So that we can drop the ioctl_rpmb_card_status_poll() as it do almost
> the same thing with card_busy_detect().
> 
right
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
