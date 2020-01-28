Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3035214BD21
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 16:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBN2a4AIeo5Gc2xtDbyiI7/2j0qWQK3GGsBuIBdeF4M=; b=F9EdW0ZnVyvThX
	YDJHEXVfv7l5S65Jy0DRJ+9yqEs53niyu/f6HIMZsbLadrv7Tc573ukSskhGQL8/kK5GGS5qhW+El
	iX4FyJVaRN0aRMuJz84og+VIri1NvTugEdzTyeqXccACU8TrXMb9vB/XyLN/Qk0a9fO0D7Ni1yHxp
	1zI81CTElC+ijZkMWwByTBvJczXjb/X+BdnB0XchDh7se6RxtHD5NXjjiF6FccgfWfVa86Lriv25L
	sQBVoJkt4sbDjoulcEjDkMVXa/wG/2cFNaL0+kyquZjFQ7W0if/qSXlDUBExvb7XBi9rFDk0xZDCs
	3l5IPWnJrGCbCdUL5jjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSzO-0007H3-Al; Tue, 28 Jan 2020 15:41:18 +0000
Received: from mail-mw2nam10on2049.outbound.protection.outlook.com
 ([40.107.94.49] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSws-0003vo-1v; Tue, 28 Jan 2020 15:38:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JtZW/HbWaJphMsno//sfK1o4jLtjy75AXJcRi6q30HB8npEelrXh439JuanKIdMaVO8FD0ytfJrtzWsmrZJz+WWrSjYg46h1C+lz1UmaCYJ9evRaatSXL1XoV05HqCgrFW9HZjtCDiDXLoAZLdmcq4Qw6m6IZlsgM6ol+eUWqtNnubWE2/80Flgvfc4Bnr7PIUle+gfbPaTaFC1k8ojNLflvF5aUIyTlSbge2WPaMYZfBLMcqREPAzsrPY2MF18ua8PxVZhXrpWujbJlQwbR/ryUDf9tdQFYO8og3/FhKbsy2RHvRNQ4uqFUrZ89pTzUoY+L4woyQ71XuXFNOV8xcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=AbAe4p4mYdM7OW71LpwkN16xOdiYIAPZ2vDsAuh9quPpQhjhC1t+Rm7hRyudGd1zA4ZkxYFKScYFfe9SzSPaUPXmbnCyNHD5shubjM3dnNgsOuKc/n94OYGHlUy3RwxBCD2AA5dmGvT3hlbbJ4jE74WCtwqjSimQbGBfNWDSfKLDl96Okh5/P1VTyLyIGMOH+LIvOIQFs4RUmYpZuXFSL39v/ZPVJK+W4V7ThiPW+Il8+yKZ9iI8h803yhaZR8wUiiHfqOFGlHcRMSw2dyGIl+YOmdYtkVsd/M1sdldUD8OlPvE+e7QL07Ubea0YVnYLRjdV7FWs3UFsgsXt8tiVOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=micron.com; dmarc=pass action=none header.from=micron.com;
 dkim=pass header.d=micron.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=micron.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1Ebke6eveyxao7m6TM2J+k5u29xj8tTIql2r8ll4bY=;
 b=pKpikirxO6t+XQFv/XlaFpGY9PpbXvzFJNvcOT+wSAg4iFgAHO8mHApIDi23rbV5oLn3Ts9kGTmm0yuvm6z50MD/zMFVENYwokp/tUWOKK4bAF1GI/nUkJlXbS8g+C5I1GP52bLSSyah3xqR48uWYf6bIUeNoHSILwJUpFQpEPU=
Received: from BN7PR08MB5684.namprd08.prod.outlook.com (20.176.179.87) by
 BN7PR08MB4324.namprd08.prod.outlook.com (52.135.251.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Tue, 28 Jan 2020 15:38:38 +0000
Received: from BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11]) by BN7PR08MB5684.namprd08.prod.outlook.com
 ([fe80::981f:90d7:d45f:fd11%7]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 15:38:38 +0000
From: "Bean Huo (beanhuo)" <beanhuo@micron.com>
To: Stanley Chu <stanley.chu@mediatek.com>, "linux-scsi@vger.kernel.org"
 <linux-scsi@vger.kernel.org>, "martin.petersen@oracle.com"
 <martin.petersen@oracle.com>, "avri.altman@wdc.com" <avri.altman@wdc.com>,
 "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>, "jejb@linux.ibm.com"
 <jejb@linux.ibm.com>
Subject: RE: [EXT] [PATCH v2 3/5] scsi: ufs: add
 ufshcd_is_auto_hibern8_enabled facility
Thread-Topic: [EXT] [PATCH v2 3/5] scsi: ufs: add
 ufshcd_is_auto_hibern8_enabled facility
Thread-Index: AQHV0sgOxlbzOPcdrkKbef6h38DLDqgAOCsw
Date: Tue, 28 Jan 2020 15:38:38 +0000
Message-ID: <BN7PR08MB5684D9F9D37F3031F3FEDAC7DB0A0@BN7PR08MB5684.namprd08.prod.outlook.com>
References: <20200124150743.15110-1-stanley.chu@mediatek.com>
 <20200124150743.15110-4-stanley.chu@mediatek.com>
In-Reply-To: <20200124150743.15110-4-stanley.chu@mediatek.com>
Accept-Language: en-150, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=beanhuo@micron.com; 
x-originating-ip: [165.225.81.21]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8b574952-6181-4547-cfe8-08d7a408253b
x-ms-traffictypediagnostic: BN7PR08MB4324:|BN7PR08MB4324:|BN7PR08MB4324:
x-microsoft-antispam-prvs: <BN7PR08MB4324B61BCE1F54DF75E686D2DB0A0@BN7PR08MB4324.namprd08.prod.outlook.com>
x-ms-exchange-transport-forked: True
x-ms-oob-tlc-oobclassifiers: OLM:400;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(189003)(199004)(7696005)(478600001)(55236004)(64756008)(66446008)(66476007)(66556008)(7416002)(316002)(76116006)(186003)(66946007)(6506007)(8936002)(558084003)(8676002)(81166006)(81156014)(26005)(54906003)(71200400001)(2906002)(55016002)(9686003)(110136005)(52536014)(86362001)(33656002)(4326008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR08MB4324;
 H:BN7PR08MB5684.namprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: micron.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BCeAsdyQracZ4gx9LOV9/M6dXjFHgc4HvZFyIB6wJKZ7KJBvaYrUG/njEb8GbLTQuRodyX3eMjHPOFav27RGxxeRg4zIdQCDzj/IUVCZV52bcDZJ6lLKwdqetQ619RFDpMqKil0rhPdzfLHZNBXacHOmxTFaPD8YDAOws5RUlliZ0ILudLyPySisNyHF5UhBt2HlndWiC1zIendc9Sqs9gGTC7mXz3jJQmYS5+MdSYVdmCc5NKaXGprdivIXWWTzNYbZPY4RpEe0SW+kdfH8JZ6XxAnvVvAqzERLI8EOCRbFVZnWa2zqM+cQAk3pN2WRLvarqjAUsvduIbmwuwHls2coMyy+QR2q80WLHt15CQ3YLBFV2zUGeKS2xEyTn6JS3gPaQ6kd1EVx3Q1iks9/x6pDeA0OdmejxFI08T49FOd5km/lelg3XqOjUKM+10WI
x-ms-exchange-antispam-messagedata: ZY0/V0+/aP8/Nvw2+RGe4ngsKTKQ8D7NKnubTXiYPu6vphgp40DWSHRtaCPQ30jEWBDvSFj40qCrYAaisQ+MESCLBmVMQOtog2JRU/UUVSEap3vhXq6kyl5W5RgkTM1IJZK9CFsrUZTnGcsewSe/5g==
MIME-Version: 1.0
X-OriginatorOrg: micron.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b574952-6181-4547-cfe8-08d7a408253b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 15:38:38.5646 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f38a5ecd-2813-4862-b11b-ac1d563c806f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vWrtZB/D9EB8lEQWXO5q33XsKm53aIXqCfyXrSCZ3IbS+SSqfjSu3fNSTPKjFFEhM8FeKqVcE5Cg6agmyBfvLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR08MB4324
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_073842_261807_4FC1C16D 
X-CRM114-Status: UNSURE (   3.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [165.225.81.21 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "bvanassche@acm.org" <bvanassche@acm.org>,
 "andy.teng@mediatek.com" <andy.teng@mediatek.com>,
 "chun-hung.wu@mediatek.com" <chun-hung.wu@mediatek.com>,
 "kuohong.wang@mediatek.com" <kuohong.wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "cang@codeaurora.org" <cang@codeaurora.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "peter.wang@mediatek.com" <peter.wang@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "asutoshd@codeaurora.org" <asutoshd@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Bean Huo <beanhuo@micron.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
