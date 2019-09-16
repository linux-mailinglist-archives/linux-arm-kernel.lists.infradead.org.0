Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5A1B34F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 08:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVW/T7WCj/pjtKtZztm8aZzDrLgicwWNkU1aubmyDFc=; b=gYQ3mFyue3qLE3
	ce5SBb4d/G2Mr51jTw9peTbxKuaYByVU/WzufP4LNB1Ra4ORsn0tjcNeCTAE+la/alfb3zkf69Ajq
	Lk6D0lAkmORTUC6Wwkv0BloE+3FgiU5uOPEjsMX+eD1pMCElovUneYDBhm3H0dr5wYMrDZcShrX03
	RsORJl7nJ1MaDtxjSw24U4+XUUNfpJu2nn1gAglor4tul/nnUgG1P9VGCXC8tX3KHziiVh/kVTTr6
	A87qyJ2dHLD1Jwxmsjos+RiximPBtigyABU2/NDSrHDxg3VA2SJOt7uctUc5+iT+FmxoRNTpkaC/R
	TKemW/+geBCxTqPIfAcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9kyf-0003qk-OK; Mon, 16 Sep 2019 06:59:13 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9kyS-0003pp-Ch
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 06:59:01 +0000
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8G6qkfE027590; Mon, 16 Sep 2019 02:58:48 -0400
Received: from nam04-bn3-obe.outbound.protection.outlook.com
 (mail-bn3nam04lp2055.outbound.protection.outlook.com [104.47.46.55])
 by mx0a-00128a01.pphosted.com with ESMTP id 2v0t2936fc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Sep 2019 02:58:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KfzxcNuYNkiMQahrEXwPMIQyG8p5ZXCKczq6D3IIT1sKGDTZzwem2mKQYZxCbNpIzQf2huyzlMUBqKGVZfC7qYJjYE5T88vYsA57Pf9RUoZwEx7fo8xdHnppYVsnBOon3ku8nhPuJ3GXbkRRwhVGfvWsQQg474gy57cQpxG/jgp2hIejO16zKsesS2X5x9O3cmSmh/ybbhtZZyoK0SwjnFCmZOpulQ5b4rl8CWMoQ75I25BhTD30kA02hNtt4iWpy0+EgH3M1iSnIb6K4pxwGaa8dKQgDY7axAwzx26hn/FR1sZQvh2iJGTbTdhEtjTI0UWrZArwPfKCgK003uSssw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZkK5K3uknWpY2TrkhuRXmUmThRUwY6AbEUanMQj95hM=;
 b=nYi3smPX38OyjA3VLXiWFOZB2LZyyyYhsjlJRmnkcrHHgkFQ/b/OOdxeDZSQ0udFbROipweJyp4exNLPVnTHdOjdC7FQuaP35/2WzA3wG5okaq0v+dPJsTD7mAvM9vlOt8LjQKwsAdVqubYCkCKV6eNa+9/MhwIKCMqbDZYSqQSSJoPIk6YnTQjPk/EIZP2BHbpBJlNPRMFTalcYtqZx2YIMBfrG+RkFTEjXXjmsoodhKtaloDIvPM3FUh91JZHznKBvrUASIULVpW/WYk4+iLmQDoQ6IOb8Fp9tANBkQBv2nx1CEcqcz90WN9hyytTLAY21FS6yiczSfBlQhwrNaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZkK5K3uknWpY2TrkhuRXmUmThRUwY6AbEUanMQj95hM=;
 b=vvdTXhLw3EZMKqY4ZV8leJdVJTJQjAS2SvIBG284uN6BcHYb1/MqqsH2QjxApWIWb3an1GIhEpERmdg6BIwCxI3ykdH9/+9lzoq8uGdOBIn+M+TRs9iZelo0GXM2PFAio1RQu0cdTjmSrc51xDsHRGMmiqzdY28PmkP0+HsLpxM=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5174.namprd03.prod.outlook.com (20.180.4.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 06:58:45 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 06:58:45 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "davem@davemloft.net" <davem@davemloft.net>
Subject: Re: [PATCH v2] net: stmmac: socfpga: re-use the `interface` parameter
 from platform data
Thread-Topic: [PATCH v2] net: stmmac: socfpga: re-use the `interface`
 parameter from platform data
Thread-Index: AQHVaVTi4HKe60y1t02IETURYvxs6KctGpiAgADLGgA=
Date: Mon, 16 Sep 2019 06:58:44 +0000
Message-ID: <7d2b366fb6969a2baed5639e3f8935fcce5e2f4b.camel@analog.com>
References: <20190912132850.10585-1-alexandru.ardelean@analog.com>
 <20190915.195149.86866545205816280.davem@davemloft.net>
In-Reply-To: <20190915.195149.86866545205816280.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03fecbbd-131d-45c6-2a66-08d73a73511d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR03MB5174; 
x-ms-traffictypediagnostic: CH2PR03MB5174:
x-microsoft-antispam-prvs: <CH2PR03MB5174A710AB1F42F86F303CBCF98C0@CH2PR03MB5174.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(346002)(39860400002)(396003)(136003)(199004)(189003)(25786009)(6916009)(76176011)(54906003)(6246003)(6506007)(186003)(102836004)(66066001)(36756003)(71190400001)(71200400001)(1730700003)(81156014)(81166006)(76116006)(6512007)(66446008)(66476007)(66556008)(64756008)(8676002)(66946007)(4326008)(478600001)(26005)(6436002)(118296001)(6486002)(5640700003)(229853002)(53936002)(7736002)(256004)(86362001)(476003)(316002)(8936002)(14454004)(2351001)(305945005)(3846002)(6116002)(5660300002)(99286004)(2906002)(11346002)(486006)(2616005)(2501003)(446003)(4744005)(81973001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5174;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aKlPfpGhOBb5E4ZNzy6+N3EvPrVWLsgKB2P9lBskMg1xYPV3bEEy/4+BPVxi5YnKoy1mVov8b85fONrTryRCat0odr9yFTNVMHId3dfBffqm4TB2gnOmFouMC5YNqhS3VHmu/BKWShcIqShuRxwbMhFH4ymSMakNDsU6Iu42g0u7vhprg/GKJ1JMmAsMMpVJxQQKVb7bdAos5bbpAw3L1mPdt45LtaeOK2E67GMJFszUnRtI8lfOrMuGSfqj1mOnpFBM+C5mGS3kWrITbfN9a+15Al5aI5zJDPAWXN/P/xBYyRiCqDoXbkvqHC6gvqrMiJrV3TSQD+LudKO4zKEckL8OE4eAhKnL6OcSfCH7n3/OcGybLWs4nhrAisbm1XaQw1YY6+/qNLmAvhVPKqhKADo7p9ltPUj3rXZZnbxLeY0=
x-ms-exchange-transport-forked: True
Content-ID: <B83A354A738D9749AACB0B5254A76BBB@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03fecbbd-131d-45c6-2a66-08d73a73511d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 06:58:44.9778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pdD2n7BFFOs2h06E+FOmHttl5okgxl/bG9my6AH+lFrJj1Aw6571jIROrZzNRbcFTFZZ1XHqBYIoI4YCevPkB0KFbKH0gB32+iLIWXAUlzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5174
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_03:2019-09-11,2019-09-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 priorityscore=1501 clxscore=1015 malwarescore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 bulkscore=0
 spamscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-1908290000 definitions=main-1909160074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_235900_442515_3C074711 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.135.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2019-09-15 at 19:51 +0100, David Miller wrote:
> [External]
> 
> From: Alexandru Ardelean <alexandru.ardelean@analog.com>
> Date: Thu, 12 Sep 2019 16:28:50 +0300
> 
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-
> > socfpga.c
> > index c141fe783e87..5b6213207c43 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-socfpga.c
>  ...
> > +static inline int socfpga_get_plat_phymode(struct socfpga_dwmac *dwmac)
> 
> Please do not use the inline keyword in foo.c files, let the compiler device.

Ack.
Will remove.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
