Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11D917F2D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 10:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RIBEiHtO0C9KisO5M5FWITButavqhiE+QJV7w7W+BGQ=; b=DLYwDWSjgSMvM/
	v4LYkYwHd42VDcDx1kJL0mW9pmJ+frX3lOZyDZG9zF/+xAmG2y8+qOXN9cLANSDtHmuD00UdYA0rX
	1p+UOyaXteTV2fV5AQ4FjF94JLAUA4S33o9qbemrDQbCzN79WxNTQ6OBtBNd9Su6edxh8b4xDGtLU
	QIv1vplcdtibqJVvIV2Lk/VscbtqnjWquAacEaChmVY0f1SZ0+Rv2m3pyfkMwkmSqL3ZDs6mJ57pG
	N+GuFoBn8v5kX9iEWB6jfpNEqUFFnEHAfyHBHKZsSWtbYjRyISADlRvCufkOZFDZMGDEf7sfBBvVT
	t1wScApFCWdqe2DtmQgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBavv-0005qv-QK; Tue, 10 Mar 2020 09:12:15 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBavQ-0005eC-9h; Tue, 10 Mar 2020 09:11:46 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: XxKKmE25ESPkZgu2VAU3GX4jV3voFctP1o1zMwyiO2Eh97tpE/abWSzXUC4e7sQL/WD0QUlXVa
 qj8un4w3W+wv2srzCwv/xxOQJtGI+/bVSAr/KH//XRZiTX98gwJawIUg7XvU2GDkF+qxL4Q78r
 zx5RvMCgwYfS+AEsV2LscKHhsNRlFPQ4I4RJtyu8SYd4FRT2kpx7TnMgKfuVcNYL7IRhjD6KTy
 jBGWKI2QhChPTLZ7MqcpG9spihiouzsYX0gdrXsNPzQuOoJ4xpa2qHGGkaF0Mngk7vcQ4bdb1P
 9t4=
X-IronPort-AV: E=Sophos;i="5.70,535,1574146800"; d="scan'208";a="68436198"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Mar 2020 02:11:33 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 02:11:30 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 10 Mar 2020 02:11:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UN2WCLbD5YExkEmWsQfOANoGURMIkv6SliqmYjhEdbqUZPMLLYsqvjLUvrjbGgpBwuCqCv0cVWRyM8JD9Jz2LNmOMHIAgW4Mu0Bg09oIZ4OkAecOOMHu5OKvGp0bKTLgvA9BYy+rHR+vS9HW5s0yc0wtG3euoRjJx41WRDRbnG21htH1BMFJyeogUDkrnXeGeEyRaeW51zypXSAZdE0aDhyeYCe2Jxqhc4MahX8xXqlGtXS7EhiiTh9FfXv+CxGZHy0qbN9+a6gMwrPUVX/GhkwYgZYk7QWWY4b1G1+SPrYbmOezQpFUiZXf+v2MBl3G+CGohp38M74bfCzxtfzeHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TjrazLyAOHtSJfTv/H3RPDYCZWCjGyADmeo32JDQzw=;
 b=UxybyO63Z7lJL8QMRtR5FR6s/vhKkppZIE0jZLkWiXjVgA/t8VHY18N8dVkKZGBAO7eNVYmbgXQtPs3UAorw3JlaHHU4sllJh4qFIot7c99SJSfbf/h4OuRgOIRg49c4IGMjT6jttCMtx+aNMr3R2Ab8He+vhm/Z4fk74x6kMLYrqhPhHUnQ5RPCYFXYQ1+3MVHQ4Ovo3khjPssJ/2D3kyxJal0JNdMPRnE3D8WvpzLWFiOrk6IFP1/a4p1+MYEemfPxT54ooH1pgZoiuVNQ3adtVSE0hKcblfo5WS7k+a0jmRNi0sJiooty0K6QOtUouLOS3oe3finklUzEtAbtKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6TjrazLyAOHtSJfTv/H3RPDYCZWCjGyADmeo32JDQzw=;
 b=CVR66d1IhIoc71rMrRs2r//SR9Y5B+numHSlX6o2A46o3qoVdE4eTeWHpxL4N1IOTtZkBdxie3T3ZLYXH08jZXxmrMkJuM1dCW7RzLfwhOoOm6ja6V59UsIiQxddPyj4KFeKYg+CdB15prBlf9ZbNoKb7ZVdi6RX17k9AEaErzU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Tue, 10 Mar
 2020 09:11:30 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 09:11:29 +0000
From: <Tudor.Ambarus@microchip.com>
To: <linux-mtd@lists.infradead.org>
Subject: Re: [PATCH v3 4/4] mtd: spi-nor: remove mtk-quadspi driver
Thread-Topic: [PATCH v3 4/4] mtd: spi-nor: remove mtk-quadspi driver
Thread-Index: AQHV9q9NZuWbRCDn2EGRyTtBWaWZX6hBimQA
Date: Tue, 10 Mar 2020 09:11:29 +0000
Message-ID: <4427171.IzkiAjLLdB@localhost.localdomain>
References: <20200306085052.28258-1-gch981213@gmail.com>
 <20200309121020.GD4101@sirena.org.uk>
 <2471214.x7VzW1FXlQ@localhost.localdomain>
In-Reply-To: <2471214.x7VzW1FXlQ@localhost.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e5706ea5-d72f-4dc1-19fe-08d7c4d30522
x-ms-traffictypediagnostic: MN2PR11MB4632:
x-microsoft-antispam-prvs: <MN2PR11MB463239E204BD9771194DF6B2F0FF0@MN2PR11MB4632.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 033857D0BD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(136003)(39860400002)(189003)(199004)(9686003)(6512007)(6916009)(71200400001)(86362001)(7416002)(2906002)(4326008)(66946007)(186003)(478600001)(81156014)(81166006)(8936002)(76116006)(91956017)(26005)(316002)(5660300002)(4744005)(6486002)(6506007)(966005)(53546011)(8676002)(66556008)(64756008)(66446008)(66476007)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4632;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4xG+vTlFHhktw6qC8bdH5mrEPmpYBIbZPPeLbzZz3DbCFlUznMHAM1yBk64ejQraBAbuX5YSUfd01Y0GqjdsG7XAH+DCTC09fdMifF1dLlKadh/hHDXU9jjKvzOthFthO1Enh1J1o1Tju73GC2/IMjLykj6+0Ebd2qNFftQGCsuZqZAMxIr9HYUK6VdHUa785Lynu9iTqLZhoOK0FGtk+N7T2Cv1pGYZxDGA+k/1MsoIPkY8uciHBfIU3SXVgo7an/ZTbqI+kE6hWH9vttXy8UMPOxvzh8KAVUCPjQVrbgqhTfVwOd1ZPxWUNoPrA6FaLK+e0NJNDMJhlfRXYfK2VoZzzSK1jEST2EA9Et0PVqAQjOr5oODyLJScO+8+jc6HZf+kaxp5MHcI0Y7U6AObQxfKqTKNpS0VSDAJZZ2sas8S/E6M9OQ05nRtMdLMuCBP
x-ms-exchange-antispam-messagedata: l+qVsaW4u0YTCQagYBQItNPHTTihDBQIFQx6zT7O5eYehN6SH+EirV4TaUysrF2joC5GfxM61VutEIwkZ4EzXUuQot4Ow7VgrD8ykqm3UE39DPlmn01MRuVq64mo6K39mfu2fOXL4Wi9/xPmYXctIQ==
x-ms-exchange-transport-forked: True
Content-ID: <854A8A8A2CF8664186B41C8FB21DB83F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e5706ea5-d72f-4dc1-19fe-08d7c4d30522
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2020 09:11:29.8729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FF/D4fLbZT5e+YmbkeAsq/3yheQD0NAl9i0Rs2HNZko/p9sTHCCa5vOaY/XbmNWsaDNPIpi5HuY0pbOAgWLLi38Wuw485YvBYuoo0y3YpQY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_021144_401404_6CE368CC 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-spi@vger.kernel.org,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 miquel.raynal@bootlin.com, matthias.bgg@gmail.com, gch981213@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tuesday, March 10, 2020 9:41:26 AM EET Tudor.Ambarus@microchip.com wrote:
> Hi, Mark,
> 
> On Monday, March 9, 2020 2:10:20 PM EET Mark Brown wrote:
> > > This driver is superseded by the new spi-mtk-nor driver.
> > > 
> > > Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> > 
> > Is this move OK from a MTD point of view - should I apply this when the
> > rest goes in?  The patch was in prior versions too and is obviously
> > straightforward.
> 
> If you find the rest of the patches ok, this can go through the spi tree,
> feel free to add my
> Acked-by: Tudor Ambarus <tudor.ambarus@microchip.com>
> 
> There will be a conflict with the following patch https://
> patchwork.ozlabs.org/patch/1247791/, but nothing that we can't handle.

You can also create an immutable tag that I can merge in my spi-nor/next 
branch, so that Linus doesn't have to deal with the conflict.

ta


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
