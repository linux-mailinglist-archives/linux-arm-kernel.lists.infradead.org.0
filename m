Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1041FF338
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:37:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CO3j62mG1oYGyBQUNYUMeSthBNHoGTd3IlG1eMDdU8=; b=OYMDWtHTtucza1
	xCITuI635QCA50euMfxTcMOskjPUOVQtDnhbGOvd2SODvB9lm77LY8M1WjdtR+gBN7SrauljkrTj3
	Vv64jXE1ADaSnl6hd3zHT0w3qZ/087zUwK6M6CwYNk7x3uuLHM5SoQe/SVIVmhbJMKz5ZofwtJEz5
	8REr1/gerdIdMkImxndKU0wBNuyOZEAwDjpUzTxdly46lnZ3b420jTUUnvlE1EhRwfGrr43bJyqg7
	hnHWgGxKlXQMIdegAp0oupOS9N8dILvTAxjBTa44XWYQqv3dyS+GlH9OiCKXdUxfqNHnm9c6d5MS3
	El5X8wGpRMxs9DcQAdGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlujb-0007Jp-LO; Thu, 18 Jun 2020 13:37:39 +0000
Received: from mx0b-00128a01.pphosted.com ([148.163.139.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlujJ-0007Iy-M2
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:37:23 +0000
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05IDZpbf008796; Thu, 18 Jun 2020 09:37:18 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-00128a01.pphosted.com with ESMTP id 31q64v66qr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 09:37:18 -0400
Received: from m0167091.ppops.net (m0167091.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05IDbI78012111;
 Thu, 18 Jun 2020 09:37:18 -0400
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2173.outbound.protection.outlook.com [104.47.56.173])
 by mx0b-00128a01.pphosted.com with ESMTP id 31q64v66qm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 18 Jun 2020 09:37:18 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wi7vUDh2+jNggRlSellleP4mLDA7xpXqQQf0qbS/epmLz8syU60vg6MR0xQoEpC7jdTvyimzi1LXfO2zzUDWxUz75oOWO4jDX5DIaUg46ubw48FcB4OPIL63zvDJFZIxrhX61c31TJHOS8aAOAnqVgiROroYuwALlF+gNERQPoXm3okdWoLjZ3qbLs2dOt68CMH7Kuo5o3/3Ye3GLj6hWsJxXQJbKQ4L/Dm2t1LF5xTJiUnDWWpHOdQiZJdooe/YIjYcKLcHlzAcAN5uVzJ7X/jhionREO0la/noTmtULuTKKbVttlpvJPhtjrEGzS7pgisI1RWMqQ/rm+7rE0QwAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n3P13g6K4bTdeEcTRlBR+Cvm13jVheWucBg5gQ4oKmc=;
 b=jWfmLa7DW5eSgyHczk0A7SDYkSnjpN1hDjm/h1TcsumYZbSYjOy9guqPp+TOe48ODDUCGWbIFnT9OO9KJ92yEV7yX56PJsN2Pc7HITi+2Vr5NiFP75Ejz7DN02RiazLRjxUTY9MMSRyALhDGw++6ZrLbnIWEKcKTzUXpGBbT+nUaFP3XDmp0wcoEZmLMwwkVZ3Ns13+CTs84kLO1FZTf9Ne/dsYU/4tRwdXNpHnRjJ6OkWOPDfDypV4Mq4MQxW0wHCVWmJdY0F2HBQKwIqzUr3N4HxU7PeABnyv/NrmYyCfJouEXJ3ws+MSbNeZElvvqfWqvzBL8cPH7usbv4aC0lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n3P13g6K4bTdeEcTRlBR+Cvm13jVheWucBg5gQ4oKmc=;
 b=n/RdCNsWj23eP+xw0bnTa4OEY3F4sOiXydJWe9x4DqW3NKh8foiF3rezHK/eU7kWPvp8ov+u8dp9WMOGo17vulIRdGOVc72rxJjNHo/OfUYLXfaJEdsn+5cTQYpMmTfIwTLl5mkmH0Yye6j9Zdn8WjQIDBzNgbnNfhmmj2vPkho=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM5PR03MB3244.namprd03.prod.outlook.com (2603:10b6:4:3e::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Thu, 18 Jun
 2020 13:37:16 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::e02f:b3c0:d1e9:5eaf%3]) with mapi id 15.20.3109.021; Thu, 18 Jun 2020
 13:37:16 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Eugen.Hristev@microchip.com" <Eugen.Hristev@microchip.com>,
 "Jonathan.Cameron@Huawei.com" <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Topic: [PATCH v2 3/3] iio: remove
 iio_triggered_buffer_postenable()/iio_triggered_buffer_predisable()
Thread-Index: AQHWMosiebcsgWLmWUu0dbt01y27SqjCXn4AgAKhWwCAABHOAIAX4hsAgAAEbQCAAYPtgIAACfWA
Date: Thu, 18 Jun 2020 13:37:16 +0000
Message-ID: <8ae96d9defc521ae3b8ac37ebfc9dd0f5b32cfb3.camel@analog.com>
References: <20200525113855.178821-1-alexandru.ardelean@analog.com>
 <20200525113855.178821-3-alexandru.ardelean@analog.com>
 <20200531164020.765822dc@archlinux>
 <a0253d719a4390f65668789e5fc182ec19355f17.camel@analog.com>
 <20200602095406.00005add@Huawei.com>
 <37ef45f4-9330-86ea-77c1-3138bb88601b@microchip.com>
 <0eeae8e8c2c1a3f21e15c1931bacb197a8245104.camel@analog.com>
 <e17fc5b3-fc6b-5980-7294-6d0a151138da@microchip.com>
In-Reply-To: <e17fc5b3-fc6b-5980-7294-6d0a151138da@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=analog.com;
x-originating-ip: [188.27.128.12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50e42e9f-d0c8-4667-1b46-08d8138cb726
x-ms-traffictypediagnostic: DM5PR03MB3244:
x-microsoft-antispam-prvs: <DM5PR03MB3244D30B4B72C92D06424BF8F99B0@DM5PR03MB3244.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7QwtWMdMoTHWOA/cIxys7hchpSlCupC5TTunMt5GxviRP8CQEyxhmnT/M2GXoBJq2vmnDwU6ErPEp6sXs0B/EtJPRxV3qfB/psNxr+YtvQlBHbZXUKyRnHwgQe+v5Z/+zJpWZl6/oSPvoHUggGZMO6hR4ceUpmglBXnlrqFSCTwcgfILPdt7pOk3F/us/BN2yLU/tBlhotA6eWjRIyZha5m7m9B3ClNVt/OOtSejFu2zn9CRL92gJWOBdAxPW4qex66OmZm91I+JI01Gb0tRF9HbU99Ln3jY/T56sOMVshII/w9W+r4QY3FUUkCzo1Xer2q66V7HnILEEUKCdg5zrsArBSQTFDhqJa8ENheQ8KvlpdUS0KckPTgfwo8iZZqn1LKGCCNPzgNmjvVadS9V8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(136003)(366004)(376002)(39860400002)(6486002)(2616005)(36756003)(83380400001)(53546011)(6506007)(478600001)(86362001)(71200400001)(8676002)(8936002)(7416002)(186003)(2906002)(26005)(966005)(6512007)(66556008)(66446008)(64756008)(66476007)(54906003)(91956017)(5660300002)(66946007)(110136005)(316002)(4326008)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: YqDdnpiBhbirYDWEyHUn0Wyvso3rjq/Lrda7oK/XkmRaGei626pV3KTj3T3F9LpRS4TTVT8vwmXKPGR7SrulUlw4Q89sTmnLJxrVhnA8MmMr/5KQPHAI8PXMPFDdipMo5KRn7tg70DYpkVuqsHQyYvjXCfPW+RlBMMkkY6MOeLEm9rMk2gvhwSc3PtxLJiGt2kRe7EmRg+KK0LeGWUfBk9B+mYcXmXQIJTgD8Vv4np8C9qS6vnVg5/9V7m94gR0LLpP96COkVTbWj7Ce/uPLsA/cBPAG/Rx+sRKAuWhuvriYimjR46FtkHiERAXGswxDnu/pgptE7j1WhYOBJtvoYYAEz5QfsajHv7hOd2GxyzR1S3Bd6TAGdN25Dxe5XBINIIbezAuBveuqMqU4N0tXAVdqFZDC4Un/7i26xfXGxewCsX4RmTcIoSPntNWpiVqv3sZvwocwUr+gDmvjmSgL82ypSd99BFfST4NGxvBDXO0=
x-ms-exchange-transport-forked: True
Content-ID: <AE7350009A97EB4AB261DEDDD9422AB6@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50e42e9f-d0c8-4667-1b46-08d8138cb726
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 13:37:16.0413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fPcnqxsPxdCoP1BbcEhY5rs1bYI8H0B9rDM8Lm/ITEljdQ+KbXda269fvW4wuAucIn0GUWFG3U4cPz2r8yE4J2oCGXL9OPL52RrqqRISk6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR03MB3244
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-18_12:2020-06-18,
 2020-06-18 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0
 suspectscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006180104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063721_898348_5DAF745E 
X-CRM114-Status: GOOD (  36.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.139.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "songqiang1304521@gmail.com" <songqiang1304521@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "lorenzo.bianconi83@gmail.com" <lorenzo.bianconi83@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 2020-06-18 at 13:01 +0000, Eugen.Hristev@microchip.com wrote:
> On 17.06.2020 16:52, Ardelean, Alexandru wrote:
> > On Wed, 2020-06-17 at 13:37 +0000, Eugen.Hristev@microchip.com wrote:
> > > [External]
> > > 
> > > On 02.06.2020 11:54, Jonathan Cameron wrote:
> > > > On Tue, 2 Jun 2020 07:50:23 +0000
> > > > "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
> > > > 
> > > > > On Sun, 2020-05-31 at 16:40 +0100, Jonathan Cameron wrote:
> > > > > > On Mon, 25 May 2020 14:38:55 +0300
> > > > > > Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> > > > > > 
> > > > > > > From: Lars-Peter Clausen <lars@metafoo.de>
> > > > > > > 
> > > > > > > This patch should be squashed into the first one, as the
> > > > > > > first one is
> > > > > > > breaking the build (intentionally) to make the IIO core files
> > > > > > > easier
> > > > > > > to
> > > > > > > review.
> > > > > > > 
> > > > > > > Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
> > > > > > > Signed-off-by: Alexandru Ardelean <
> > > > > > > alexandru.ardelean@analog.com>
> > > > > > > ---
> > > > > > 
> > > > > > Friend poke.  Version log?
> > > > > 
> > > > > Version log is in the first patch.
> > > > > I was wondering if I omitted it.
> > > > > Seems, this time I didn't. But I admit, it probably would have
> > > > > been better
> > > > > here.
> > > > Ah fair enough.  That works fine if there is a cover letter but not
> > > > so much just putting things in the first patch!
> > > > > > Other than the wistful comment below (which I'm not expecting
> > > > > > you to
> > > > > > do anything about btw!) whole series looks good to me.
> > > > > > 
> > > > > > These are obviously no functional changes (I think) so it's
> > > > > > only really
> > > > > > patch 2 that
> > > > > > could do with more eyes and acks.
> > > > > > 
> > > > > > Far as I can tell that case is fine as well because of the
> > > > > > protections
> > > > > > on being in the right mode, but more eyes on that would be
> > > > > > great.
> > > > > > 
> > > > > > So assuming that's fine, what commit message do you want me to
> > > > > > use for
> > > > > > the fused single patch?
> > > > > 
> > > > > Commit message-wise: I think the message in the first commit
> > > > > would be
> > > > > mostly sufficient.
> > > > > No idea what other description would be needed.
> > > > > 
> > > > > So, maybe something like:
> > > > > 
> > > > > ---------------------------------------------------------------
> > > > > -------
> > > > > All devices using a triggered buffer need to attach and detach
> > > > > the trigger
> > > > > to the device in order to properly work. Instead of doing this in
> > > > > each and
> > > > > every driver by hand move this into the core.
> > > > > 
> > > > > At this point in time, all drivers should have been resolved to
> > > > > attach/detach the poll-function in the same order.
> > > > > 
> > > > > This patch removes all explicit calls of
> > > > > iio_triggered_buffer_postenable()
> > > > > & iio_triggered_buffer_predisable() in all drivers, since the
> > > > > core handles
> > > > > now the pollfunc attach/detach.
> > > > > 
> > > > > The more peculiar change is for the 'at91-sama5d2_adc' driver,
> > > > > since it's
> > > > > not obvious that removing the hooks doesn't break anything**
> > > > > ---------------------------------------------------------------
> > > > > -------
> > > > > 
> > > > 
> > > > Looks good.
> > > > 
> > > > > ** for the comment about 'at91-sama5d2_adc', we really do need to
> > > > > get some
> > > > > testing; otherwise this risks breaking it.
> > > 
> > > Hi,
> > > 
> > > I can test it, do we have any patchwork so I can easily download the
> > > patches ?
> > > I have issues when applying them.
> > 
> > Is this good?
> > 
> > https://urldefense.com/v3/__https://patchwork.kernel.org/patch/11568743/__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119Sk7-d50A$ 
> > Series:
> > https://urldefense.com/v3/__https://patchwork.kernel.org/project/linux-iio/list/?series=293141__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119TNWi1mbQ$ 
> > 
> > Many thanks
> > Alex
> 
> On at91-sama5d2-adc driver, sama5d2-xplained board,
> Tested-by: Eugen Hristev <eugen.hristev@microchip.com>
> 
> I applied all three patches and tested together with the other patch on 
> sama5d2-adc driver.
> It looks to be working fine. If I discover something later, I will let 
> you know.
> Thanks

Also thanks from my side for testing.


> 
> > > Thanks !
> > > 
> > > > Agreed.
> > > > 
> > > > > > Thanks,
> > > > > > 
> > > > > > Jonathan
> > > > > > 
> > > > > > >    static const struct iio_trigger_ops
> > > > > > > atlas_interrupt_trigger_ops = {
> > > > > > > diff --git a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > index 17606eca42b4..8e13c53d4360 100644
> > > > > > > --- a/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > +++ b/drivers/iio/dummy/iio_simple_dummy_buffer.c
> > > > > > > @@ -99,20 +99,6 @@ static irqreturn_t
> > > > > > > iio_simple_dummy_trigger_h(int
> > > > > > > irq, void *p)
> > > > > > >    }
> > > > > > > 
> > > > > > >    static const struct iio_buffer_setup_ops
> > > > > > > iio_simple_dummy_buffer_setup_ops = {
> > > > > > > - /*
> > > > > > > -  * iio_triggered_buffer_postenable:
> > > > > > > -  * Generic function that simply attaches the pollfunc to
> > > > > > > the
> > > > > > > trigger.
> > > > > > > -  * Replace this to mess with hardware state before we
> > > > > > > attach the
> > > > > > > -  * trigger.
> > > > > > > -  */
> > > > > > > - .postenable = &iio_triggered_buffer_postenable,
> > > > > > > - /*
> > > > > > > -  * iio_triggered_buffer_predisable:
> > > > > > > -  * Generic function that simple detaches the pollfunc from
> > > > > > > the
> > > > > > > trigger.
> > > > > > > -  * Replace this to put hardware state back again after the
> > > > > > > trigger
> > > > > > > is
> > > > > > > -  * detached but before userspace knows we have disabled the
> > > > > > > ring.
> > > > > > > -  */
> > > > > > > - .predisable = &iio_triggered_buffer_predisable,
> > > > > > >    };
> > > > > > > 
> > > > > > Hmm. Guess we should probably 'invent' a reason to illustrate
> > > > > > the bufer
> > > > > > ops in the dummy example.  Anyone feeling creative?
> > > > > _______________________________________________
> > > > > linux-arm-kernel mailing list
> > > > > linux-arm-kernel@lists.infradead.org
> > > > > https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!ulH92S3o_JWLMQfg5VBrFknwc_-a0K5AHpJBrTEB-RtYEp7PnRJ9jA_EacOzFQmbNIKO-Q$
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/linux-arm-kernel__;!!A3Ni8CS0y2Y!sOycjyvbMtVr_UDFBvb0vdcf9ONdhs0VBLhTcuYO4qnuZmazm5342mRE2T-119RWwM-1NA$ 
> > 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
