Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED315B3AEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 15:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZ1qxh8WrR06LJvBQY7Y9UaQXxVZy74b61pnIbMOFxQ=; b=nwIm2oz8XhlGUU
	rVwj/L/TLowueWJ3FXKm10S+CQDfIbBh1w9jjGgt4dsdWQFKtnOfMhi1t3qpWsvqzFnmTtsuW6IgB
	LF5xCAJoul1j4l10OJUuJos8wDRsisXk9g/+obWpSL+NtL4T6m1aGEr1xo3cY2Koz7DnnFvO/Jtaz
	ZJteyxwTP0cQapRjoPpWe/vlFIfhI+7s+YaBQ6XxC/mpp5oJTGuLwSivsBS0Y5a5PMT1d0cDOObx3
	AN+ZVcuxhuR7t/0aQpAn70Ngk6KL1wCnI56amWt3OtSBb2U2dkggrmeSfqUrMwpg+4uHou3tzJgYj
	twdFFAhujpDSzbsiDdRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qgw-0000ue-6L; Mon, 16 Sep 2019 13:05:18 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qgX-0000u9-Kg
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 13:04:55 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8GD3c2C032011; Mon, 16 Sep 2019 09:04:45 -0400
Received: from nam05-by2-obe.outbound.protection.outlook.com
 (mail-by2nam05lp2052.outbound.protection.outlook.com [104.47.50.52])
 by mx0b-00128a01.pphosted.com with ESMTP id 2v0sy940ff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Sep 2019 09:04:45 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UvYshs4xpvv9dUHXQhncNztiM8OxelqXrRMhGM+uVZ7KcYR3jWUaVpk3FHkh6C5tzQTuYFTER6bJ10YriF6xSwboHCBdgxQisG0jbY7ubGDa7e4HOOJpssLpU7NmQK9E0ggLH0LIzf7ocRrDPBa+HT+vP9s796fCTSC6mdi/JFRRYquZ7bW9OVfD2s17sURSVvvSzpbW8lU/7atGaFuNAISwlQFxHjUQujO01CDyexvTDAZdzdDbKpCZ1vEDWsXdVo7d/aUqsd0sthglhjYNy+hulRP1FtnD+5pXiUz+GV6LyUaK385dLRots+VRQ27SfSS7/pGN95e4+1ZwzD4MRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GfeMMJPbYZAcXKpxWO09idCTGnT4Y/Xu/vzucFArCPI=;
 b=d/QKZs89AxB5L9zXRv8TPcIhVExI2yqdy5Q1yorm8WGjgJl1EUl+5oT1L0c21xsAVLVWsI+1Y9Y7TInTzErI3D+OYCDhuzpYAqd+M2cvqXGuD1GY2Z03HTwiylo1yvRRdhWxk1jFK7Ol4zCYGEFRtI4qUtYSbeR7/+DmsnJ6yCvvZTgVznvvCc20k0hzT4XzeSVBKjm06rctXgetyWhe6D+xNP3q95D7EAnLbYYO+NikXwwPiupIAtmeS5akbqMAmUx1G1hIe4nOKbGHf1eKlrzSc8ThPB5v5efDhb8g4WtSvkpGRkN3cXRtCnifcmm4Txl5YV0ZuklKiae8ZLzoPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GfeMMJPbYZAcXKpxWO09idCTGnT4Y/Xu/vzucFArCPI=;
 b=7XY4FOrA+4zE1HtDWJDmwt1G9LjkhXDM77pWe4K7XspGqRlNzq5XnPi5cCDq01Kv5zrMDnoFLtEln4xVTvCozo9gxcgP8IZZfECqZlwk0AEPG5uGGiAv1ALBVRTdqv7CLeoWhWdKIHYpR89+5koS0SWLSTHGeftFCiTKL+fUmTc=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5269.namprd03.prod.outlook.com (20.180.12.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 13:04:42 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 13:04:42 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Thread-Topic: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Thread-Index: AQHVag+8uWmQQq3ExEyRd/qnwNwICqcuP2sAgAADYYCAAALHAIAABOiA
Date: Mon, 16 Sep 2019 13:04:42 +0000
Message-ID: <458cbb212fbd04c157c9861501f51c03ea958302.camel@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
 <20190913114550.956-4-alexandru.ardelean@analog.com>
 <20190916122505.GC4352@sirena.co.uk>
 <ae469c65828443524f9ff0409f1c7a81bf64cf6b.camel@analog.com>
 <20190916124707.GD4352@sirena.co.uk>
In-Reply-To: <20190916124707.GD4352@sirena.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8939395b-52bb-4b6a-37b7-08d73aa670db
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR03MB5269; 
x-ms-traffictypediagnostic: CH2PR03MB5269:
x-microsoft-antispam-prvs: <CH2PR03MB5269BE0BAE3E579672D045F7F98C0@CH2PR03MB5269.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(376002)(39860400002)(136003)(396003)(346002)(189003)(199004)(76176011)(5640700003)(6436002)(2616005)(118296001)(229853002)(446003)(7736002)(36756003)(305945005)(8676002)(6512007)(66946007)(66476007)(66556008)(64756008)(66446008)(86362001)(11346002)(5660300002)(81166006)(81156014)(6916009)(6486002)(4326008)(316002)(486006)(3846002)(6116002)(476003)(1730700003)(66066001)(8936002)(2351001)(25786009)(256004)(54906003)(2906002)(186003)(71200400001)(6246003)(102836004)(478600001)(71190400001)(76116006)(14454004)(6506007)(7416002)(26005)(2501003)(99286004)(4744005)(53936002)(81973001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5269;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 22GJVKUCLBXhIhs9DrxYQ6911xoz1i2ve2T2K0nwTBNmBSELS6ce/OjVQO8BhuMOpOugKz+0Di6doxduQwXQDS5BGQBIUDPGoDksLFUz+kVNhQdBba2UdWsH0X7yBbdb3NzG1k9n48lh+o4Zrx9jhJhJd1LpqEQfzvjCXcERDAnKZCbEoU85KalxnyuAUq7fPAReaeVwgH/cRXzOaIWF/ptxT2II8MK+i6zQ2eZOsA4KsEdPnDVoj/iGahPXQnGDX2jj6AIDevEdn+my9arHrXx/SpNGEtyyg8u1Q6evUxML1bemvhS+cGPkurn3gH6lgiKxLIsCi6rvE9FfZuGoQYFxujtNVhTgeDjDW8i6LiypWaxCB5GYJAbPj54HLnCSzBvfZWkHg0ryQ/66m9tA7qXJ09nkuXlrg2T4xaZujPI=
x-ms-exchange-transport-forked: True
Content-ID: <D9A871C55AD7F64187978CE710CCCF5B@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8939395b-52bb-4b6a-37b7-08d73aa670db
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 13:04:42.7160 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ka4JQAwThyPWodAKoINqRUcSdRj66j+f3pqCF3nC3IgzfSHG8zysZ3Uk7m4OB0KJcX8ecYq3PYo8/wXY0OkQER+Xd40fw6qUSVXWumBBp2I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5269
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_06:2019-09-11,2019-09-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 phishscore=0 spamscore=0 suspectscore=0 mlxlogscore=865 bulkscore=0
 mlxscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909160140
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_060453_805333_6C8F6E99 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "zhang.lyra@gmail.com" <zhang.lyra@gmail.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "orsonzhai@gmail.com" <orsonzhai@gmail.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 13:47 +0100, Mark Brown wrote:
> [External]
> 
> On Mon, Sep 16, 2019 at 12:37:12PM +0000, Ardelean, Alexandru wrote:
> 
> > > This breaks the build as there is a user of this interface.
> > Ack.
> > Jonathan pointed this out.
> > There's a V3 that changes both this and it's user (in IIO).
> 
> That v3 seems to be a small subset of this series?

Ack.
V3 is the first 4 patches from this series.
Well, patches 3 & 4 are squashed.

I am 100% convinced that the entire series is a good idea.
In the sense that a `struct spi_delay` may be a good idea, but at the same time, it may be un-needed.

All I wanted to do, was to add another delay somewhere, and got lost in the rework of current delays.
I thought about proposing just the first 4 patches [on their own], but I thought that showing the current series as-is
now, may be a good idea as well [to gather some feedback].
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
