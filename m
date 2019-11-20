Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E31011042CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:03:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dWBzpL1VkE7HBuIUGnTzIeH4Ez/QvTIOTqS9/tsJDnA=; b=O15VtolgM7OBMn
	U8c5MjYGi9P+vElFmuQ/f3DuUiQX48QGcQ9klHFZzpmH1NZXU4i+U/OxMLTW74tLCqmWg5Ne3xlRp
	nw4/Z9nNVwwhKxfkF85HRcIvIwUJw3C9cOyUcvl62iizW8JSsSj3peQcHA6aaveNteV+zdqsED4Xg
	XMGiJsk9+mtCktO/Sc3WX0xMc6dq1gGzovnXYiVi8nfzDsncKqV1lrfTgktAHo4SW/XEhK71aQEHK
	+7NYVTNP3iYwP9KfRQCQL4LfJZzyl2HEbOhPi5CtcLZRiaKExbm8CabA5QhwDGETyiQNbwSpaYiVc
	ZpUgL1vK68rLMBPqgjJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUJq-0007LA-5P; Wed, 20 Nov 2019 18:03:10 +0000
Received: from mail-eopbgr150049.outbound.protection.outlook.com
 ([40.107.15.49] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUJe-0007KU-4r
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:03:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgkQAt9PCxj+K5qooQJpW+GiZ29szB8pOFWVmD7K0iH3ymtUz9bWChnXUg+Dv6yFJqJlQBzR3ipN/Tn4LBf0TDbkq2J9M+SB41PhIUg/s5+Yj/P5Jd19/rozQFUHIgfXx6UJcc0sI6O14kV1vdm4b+8N8kcB1Y59SqM6JHgwxyT2d8CXbFfq0dAdsNjG3pf0eiRXPoOTac9UknNgTnNLMxS4szQJtZIX7Hd5A3DU0Wz5PPzmrtEZfUUUMssOBnjrFq1YTqyBTEidJ9e3r+yueuU/ldU5zMAmv1EER55m6uvW3O+/bCY+q8oA+8S9oW3S3F6M+5OOUCX9u/h2vVfkpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=smdTpNNqpotRYy1mknQ9cFeN3fez462MpjNvtaFfZb0=;
 b=FSXRuU0LCEDF0iRoL2/uHXxqfCG13mgGwscDcefU/hCY7Bi7J2IMzf+/9YifEu4GRTfkt+KekzxHY+owOyMoNhWFj4Y0j4j3ZNJE5Nys6qZtm9cA1wtuiG4m4hPiPrvldpqEapVpMkiwSojdBcxEOcfhqJkmDOSc67KK4HTlgsXALs2MIKXYfMozNZi5cCoT2lhrbKR8soLPo2XYbzJl7zGON+eOdLGI9wSErWXz38AfLyK5+UI7LYssZY9z8GfGy3YiA2pmQXliAJREep58B/2Ai6UijB+PbgLH1KHJYppny8L9PTLEDOGUV15BJLa+ysQOhX9Xnq+zzq2o4ICC6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=smdTpNNqpotRYy1mknQ9cFeN3fez462MpjNvtaFfZb0=;
 b=VwJ15A65v7Pg1hOntPyhcxacpoNd9E4dVpV8EbdI21qoieKiTWVQCdwIu0elc3kvWG4YND8cucgv3QFVNgpeIqS7zejj4mRGMLFWqFRiwvmwFgHer9DOiGR5rjaBp4TEgcRIuzru76WyahVopRR8WJ032A4ij6xBFjjyagHco6U=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5184.eurprd04.prod.outlook.com (20.177.51.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.17; Wed, 20 Nov 2019 18:02:55 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::dd0c:72dc:e462:16b3%5]) with mapi id 15.20.2474.015; Wed, 20 Nov 2019
 18:02:55 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Angus Ainslie <angus@akkea.ca>, Jacky Bai <ping.bai@nxp.com>
Subject: Re: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Topic: [PATCH RFC v6 2/9] PM / devfreq: Add generic imx bus scaling
 driver
Thread-Index: AQHVmyeZDID07b0oVkajwef04uXjmg==
Date: Wed, 20 Nov 2019 18:02:54 +0000
Message-ID: <VI1PR04MB702329DCBBC98C405421D8DFEE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <f329e715898a6b9fd0cee707a93fb1e144e31bd4.1573761527.git.leonard.crestez@nxp.com>
 <e311a376e6aec0c380686a7e307d2c07@akkea.ca>
 <VI1PR04MB70233920AC838AD88E1ECC26EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <008f2fa973b23fc716d678c5bd35af54@akkea.ca>
 <VI1PR04MB7023E7C380EFA956629EEB67EE4F0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <d1ca09bdeb7580c9b62b491c6eb30148@akkea.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e3fda3a5-3ff0-48bd-cf4c-08d76de3de42
x-ms-traffictypediagnostic: VI1PR04MB5184:|VI1PR04MB5184:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB51841F5C9C8DB547E63EEF00EE4F0@VI1PR04MB5184.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02272225C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(189003)(199004)(8676002)(8936002)(6636002)(26005)(44832011)(7736002)(305945005)(478600001)(446003)(486006)(4001150100001)(54906003)(33656002)(76176011)(110136005)(14454004)(7416002)(186003)(476003)(316002)(7696005)(25786009)(74316002)(102836004)(6506007)(53546011)(81166006)(14444005)(55016002)(256004)(9686003)(66066001)(6436002)(229853002)(6246003)(86362001)(4326008)(71200400001)(71190400001)(2906002)(3846002)(6116002)(66556008)(52536014)(5660300002)(66476007)(66946007)(76116006)(99286004)(91956017)(64756008)(81156014)(66446008)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5184;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cb+3lbvdKHr4Ultyoo1zWoPFXiomIQrQNKVfpfr0XnX8Q6roYq4sh9Nuclc9Bs7LzFON4oOFNOxR9f+SZ0IluvHtP5oq6j7BbWjXjaoJ3d+S8tHAcOoFW2nXeeQfEI3ru3DKEO4cJoFER4QZ9FK6g3xbSEJFhn7rRUa4qxfzmmfzqReXVXI4YwUVugkpr/SvGN2n1eGST7OAzm0Nr9wnAI4N1DE9POD71l34Sh7DqC32bddh9L0wDDCLXr+unWCgEZc5jQ29DaFzzcFVPX7OEZmMP/AMz54Gupj8Wm855td4Wdbhyh2QqPBM/04CuFdN0ivP5uWrB+J005D9Gi79/bpXj17JusUe1PEqOi4rQelr0WY2+AfIjNxRNfGvQRLZgLMp++I8gr7XAIYmG1hT4eapB9tZj/WUVG5PkC0OsANh7GZwHGwVs/sMiYaz241U
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3fda3a5-3ff0-48bd-cf4c-08d76de3de42
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2019 18:02:54.8256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xrT/GbW8WVBkUbUxigdLCLITRoj+X6ZN7gaqRn3r14r0V2e2uGrgWcMgAdWju+iaJrVT98igKr1wtztI/bRYOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5184
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100258_289286_81FAA16A 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 "linux-pm-owner@vger.kernel.org" <linux-pm-owner@vger.kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.11.2019 18:38, Angus Ainslie wrote:
> On 2019-11-20 08:30, Leonard Crestez wrote:
>> On 20.11.2019 17:41, Angus Ainslie wrote:
>>> Hi Leonard,
>>>
>>> On 2019-11-20 07:04, Leonard Crestez wrote:
>>>> On 20.11.2019 16:08, Angus Ainslie wrote:
>>>> Is "mainline ATF" an important criteria for Purism?
>>>
>>> Yes we intend to bring all of our patches to mainline and were hoping
>>> that NXP would be doing the same. Shouldn't a mainline kernel run on a
>>> mainline ATF ?
>>
>> You can still use mainline ATF (tested right now) but the imx8m-ddrc
>> driver won't probe.
> 
> Sorry I was talking about the DDR frequency scaling specifically. >
>> The ability to mix and match different branches of firmware and kernel
>> is very useful for testing. There might be slight incompatibilities but
>> in theory if a feature depends on both firmware and kernel support then
>> it should gracefully degrade rather than crash or hang.
> 
> I saw the check you put in for the correct ATF version and that's very
> helpful thanks.
> 
>> ATF support for this feature will be mainlined eventually, I picked the
>> linux side first because review is more challenging and changes are
>> much larger relative to what we have in our internal tree.
> 
> Do you have a patch against mainline ATF that we can test this feature
> with ?

Not right now, and imx atf is based on a slightly older version so some 
porting effort might be required.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
