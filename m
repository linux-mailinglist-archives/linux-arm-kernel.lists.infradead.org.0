Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6786AB3A77
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 14:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+LFVJUvWp5XiWRUv8ZHHi2DwjNGREIyCSRkauH1xqY=; b=mcaTpln35GKlfg
	+Tz7q8Nq6xUOgFY1wG5LFcQBXuEK5SZutwNsTXBvOvj/CoqxoSXqbNIRSjw6qJhQlnIKPKuoTIgK3
	hiF3ipA8EW7p8EQlizb3NYS1bbouh+pl4L96sVahUGPdiN/B4/Hrto+mV/FdoW7kxnVnxObzC6uPF
	pXHy0DmnZMdH2wJFAmpsvGam+E4mKppWK1eqYQZvTTstMtMEk3hilXPU371wLK/ezArc7eca+PK9d
	3hrCJDKSRTCmePX35cbhyp60qD6Ygp0Bw4pN9k+tLm/MAZ+HUZ92NVM2RmsaaGebHmASPaAE2Z5hG
	bLGtNU8InOOVJ0OLRnxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qGA-0004rt-8k; Mon, 16 Sep 2019 12:37:38 +0000
Received: from mx0a-00128a01.pphosted.com ([148.163.135.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qFr-0004rO-8o
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 12:37:20 +0000
Received: from pps.filterd (m0167089.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x8GCXUaS027290; Mon, 16 Sep 2019 08:37:15 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2059.outbound.protection.outlook.com [104.47.37.59])
 by mx0a-00128a01.pphosted.com with ESMTP id 2v0w47k8t4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 16 Sep 2019 08:37:15 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TJTaRgp0NKimqGsaRKkq1FV/NlKEWjOyJ76j0BrbjhrHbTgm+q1xV9ETikvOPT6sMq/9KXCVCcWJAg58lRYOi7u+RdrJNQ0OFnuztDTpHb3Pj8kPSEx2TyHxVKFMMVq53CSeiUPCYkAF5zpquL1zfSVDY+SOP+hDBwrgBfQlT2erSsKIaOJhpxhggXFSAfwTkm1UFxiOnC5+C67xrdBgV/kxZciZgBm/fC0FuWcjjrTTt/VoKnT6euEAAKlmXQXA/G5KEpaeRu/H1ZTi08AKk30mb0CrQiAnCz/WCwAJ6YRjA90nzPPYxDKjS8VqcfIyDmjiLRzYUh+G65YDm9stYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8d+FetZkSSGwp6YOGs4EWjSIgxhfzO5JTzMsDevBFs=;
 b=gjCzywTZp7TD3rAcRrL2swUbRzmDPUIEct1TaYETksRoD3q5UxfjheyWQt2fkaDsnA6o5WMtRwoAdiWvvK6w8vCnLTFFxOAFyAhc0YMekKJxPRdUK6kYafoFahRmgs2ueQirMzlmKgkf+X8p7locIYknoEaPbn4T4MlZ5xN1bMH59/MwgKBpGayEkyp3jP3JkklPiER329troUtEwxuvkdPQuM+PerlC/iWm9XEDuRUlmeW3in8/V54gFu8LCPrAQ7obpe+vlhFLE1qRpCCDW7+bKCgA7O8LHcfPxhhSWkjl3LWevCPFB4YYBx7cxU7u7NUrEkZmhWr0YR6ze/FAvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f8d+FetZkSSGwp6YOGs4EWjSIgxhfzO5JTzMsDevBFs=;
 b=ObJ98P4eM6F0dA6tZVVII24Zl7/SanjydPRskcp33GwkSn060bd5Rk3vh+QlwDXeUYe0qPkX6h6v/fxQch91k8iAtH8bdQt0wxyxo6iyOVavjdiKZZaaDnps832oZKa5/cLjPhSJoMeBhkxx8rIUUoJIxss90UZSIqT/MmXaggc=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5320.namprd03.prod.outlook.com (20.180.15.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Mon, 16 Sep 2019 12:37:12 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::344d:7f50:49a3:db1b%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 12:37:12 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "broonie@kernel.org" <broonie@kernel.org>
Subject: Re: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Thread-Topic: [RFC PATCH 03/15] spi: make `cs_change_delay` the first user of
 the `spi_delay` logic
Thread-Index: AQHVag+8uWmQQq3ExEyRd/qnwNwICqcuP2sAgAADYYA=
Date: Mon, 16 Sep 2019 12:37:12 +0000
Message-ID: <ae469c65828443524f9ff0409f1c7a81bf64cf6b.camel@analog.com>
References: <20190913114550.956-1-alexandru.ardelean@analog.com>
 <20190913114550.956-4-alexandru.ardelean@analog.com>
 <20190916122505.GC4352@sirena.co.uk>
In-Reply-To: <20190916122505.GC4352@sirena.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0360b10-fa26-4134-a48a-08d73aa29941
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:CH2PR03MB5320; 
x-ms-traffictypediagnostic: CH2PR03MB5320:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CH2PR03MB532072F146D11435FA38CB7AF98C0@CH2PR03MB5320.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0162ACCC24
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(366004)(136003)(396003)(189003)(199004)(1730700003)(81156014)(6246003)(11346002)(446003)(478600001)(71190400001)(71200400001)(186003)(4744005)(2616005)(25786009)(66066001)(36756003)(6506007)(4326008)(3846002)(6116002)(102836004)(99286004)(2906002)(2351001)(2501003)(316002)(6306002)(486006)(256004)(476003)(66476007)(66946007)(76116006)(66446008)(64756008)(66556008)(8936002)(54906003)(26005)(76176011)(6512007)(53936002)(5660300002)(14454004)(6436002)(7736002)(229853002)(6916009)(7416002)(8676002)(5640700003)(305945005)(86362001)(118296001)(966005)(6486002)(81166006)(81973001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5320;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Mxb7KMFr9O24E5aIo6aUbObI0QL1UVf8VAJ20MtfNhVenjDk9Da8ScVrVCo1mQKPqaOoefQ/vSaR6EACUiLANzkVyRgXcW5IKzTHrcDgC7B1ngOEU05GONcCl4CmkcUMf96Vn13Jd8VqYFtkN247hwE1a7zqY1yuKpY97uLZv4/+/81WmjCQa17pG7+9owZC2pdqyLFV4yElTaTU0A4gBdDH+qcxdoNIYV2Wg5PHENLEvOyWnD33Lz9hredwkpCaItZ1DKrJjrIKQnmToD3ksDETDiZV+ZzZa8JC/fCM0ajpLAt0veGHxhjmo6sGnaTeXPLYZU5JGRm5dPa3PkJzLEpCGiwQIOCGsv9wfpeoDuwrjxyx2MgGM2DMvfBv0+b9r8Z/mSq9ljBOONuhnVhYZbTVgUMq9rdCsP/WbkiKPbk=
x-ms-exchange-transport-forked: True
Content-ID: <7A207019A739BF4BB5EC44846BC146A6@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0360b10-fa26-4134-a48a-08d73aa29941
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2019 12:37:12.5122 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BPCkEFEDvKiLto+zUPkEHfo6nU7EejwVsO9HqpIDScljev3n8IzsVKbQahrolw985wTDcTyPeoW0O7CS06yE3prMcIZBbCoW2lw/QK9+5f4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5320
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.70,1.0.8
 definitions=2019-09-16_06:2019-09-11,2019-09-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0
 lowpriorityscore=0 impostorscore=0 mlxscore=0 mlxlogscore=999
 malwarescore=0 bulkscore=0 priorityscore=1501 suspectscore=0 spamscore=0
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1908290000 definitions=main-1909160134
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_053719_361525_79153AFD 
X-CRM114-Status: GOOD (  11.39  )
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

On Mon, 2019-09-16 at 13:25 +0100, Mark Brown wrote:
> [External]
> 
> On Fri, Sep 13, 2019 at 02:45:38PM +0300, Alexandru Ardelean wrote:
> 
> > -	u16		cs_change_delay;
> > -	u8		cs_change_delay_unit;
> > +	struct spi_delay	cs_change_delay;
> 
> This breaks the build as there is a user of this interface.


Ack.
Jonathan pointed this out.
There's a V3 that changes both this and it's user (in IIO).

V3:
https://lore.kernel.org/linux-iio/20190916071024.21447-1-alexandru.ardelean@analog.com/T/#t

V2:
https://lore.kernel.org/linux-iio/20190913115549.3823-1-alexandru.ardelean@analog.com/T/#t

[ archive is from the IIO list ]

Well, I'm hoping you are referring to the same user.

On a general note: I apologise for the amount of noise/spam I am doing here. Still adjusting to how to do things/changes
that touch 2 subsystems, especially when trees are not quite in-sync.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
