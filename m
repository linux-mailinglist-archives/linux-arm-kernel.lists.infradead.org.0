Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF6ABE5B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 21:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dOzqAeSL0lzgRvWalklL6iuqEeg/Nk2/CNwkdg8IM6g=; b=SFc9xprqzXzqCV
	/0mCIs4l5UC1TtI6bM9RPTe6Na9uuEQf2ZJq/JlQxPrbRDbEhDS+FoI/mEa7+ubrJ2ss9n04+4sxm
	T5q9/ECuEAio9wALYeK8lGGpaZA7J6BNZesCI59Nym9b9tMC8rqcgKCVmFPJ61BO8YNANOGVM+hxW
	Kns99l9xCU/U+gLjwjuDLe8FJyjGbKl874VbplG4o7WCArB0NQmst9SiRrjNMA8ZRSMIQbavovhgp
	Dws0jbYF+Ea5jgiXsNEjvTVaZOOEotiOTfCHgf2LdgK2KONsR9Rv6JwD+wwxrorL5DawF1ct444Ia
	sNT26zdc13HhH+b5j1qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDD2g-0000rs-A1; Wed, 25 Sep 2019 19:33:38 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDD2S-0000rU-Ub
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 19:33:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYHUzMTu8J+05LjbN7C7/JWOb/tkWIK8YdC6sVlRZ4n9lqINx3vcPisGkaPzjSnX7uNnunkTxLLUFJ833QkCwgg8Ga4qIGUTlxAnEFXNvGsQg2R5wY7vjtyCMHwCtcM0bmiwT2Oj+BUakUu7qO4NbJ1x1yHUxTdQtWnIf+Mza3razeYadpA+qte66rxwaLZd42ZEnV59yh5mA/OmPmTVSgQbZ9Junp8TF8LmiFISt20nxNOyi1cGIBwrgJZWsDibz38G69ka2j69pNNZkcrUOX3tktBPM5p5tRDADvjNOS/6kn4JPnI3cWzD3QlVCmcbJ3RHs0z1uqMRqGmowlD3vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hv1nzoHuZlDTZQ4aTa7FUq6Z0f2afQrAx0wJCcpCrqw=;
 b=GiqI78YbRBm2HY9Ei1hj2+qTmxuiwNZTrRUMX4KPv2D9H/AC6pt9paFqW5ppCoge32p3ijJI6zcbeVhfFHzIq94SySZFAk8pBvVZlQQupz5abROGfInulVpyFh7xjZr0Mv0LQKuUicspPLdbfq4CMACTV9YG6scw4aD3wm9bkD2DgDE/kMKtduhGUgcGE7NLMOe0YZJ/OIOz6gL2Fe9oNcMQ9+gMKVULDF05ugoNxvVgBXYuiZ+gRFcbcM3kRCjqJz1NrguM/c0qGPrAmBoPLq++MQfGnLxJNkzyZ+o4ojTiKeEZbBo81b29sAthNct91Wc4vQmJp/vWhNiBMW5VhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hv1nzoHuZlDTZQ4aTa7FUq6Z0f2afQrAx0wJCcpCrqw=;
 b=Sl7WWbFng283zgLvFBncJDRoCh91e8Cxfx1ISTJzG6Ke9O3mFDuw1WeNmGFk3bPzIy3U1G63KbGtaIxVWQ9/UGIrB/6uh6mLglyMeUvFmi4NEs5F8Kk3+OSgGcX9ngimh9M7EkL3FmKHJuuEWIrfqY/nfRLwDJyGx6OgLPGRymc=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4223.eurprd04.prod.outlook.com (52.134.31.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 19:33:19 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 19:33:19 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>, Kyungmin Park
 <kyungmin.park@samsung.com>, Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v8 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Topic: [PATCH v8 2/6] PM / devfreq: Move more initialization before
 registration
Thread-Index: AQHVcsByj1K9FTQJTE6xKNLyIFYeAQ==
Date: Wed, 25 Sep 2019 19:33:19 +0000
Message-ID: <VI1PR04MB7023CF68F6B393E6FB2DE206EE870@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <398895f3b4f9ca4b03b47b56dfa25fbd58fd2311.1569319738.git.leonard.crestez@nxp.com>
 <cover.1569319738.git.leonard.crestez@nxp.com>
 <CGME20190924101139epcas1p4c6799a5de9bdb4e90abb74de1e881388@epcms1p4>
 <20190925015845epcms1p4f788aa587e53bfa38b9b847838b02342@epcms1p4>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d708d618-469a-4fe0-bba1-08d741ef384b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR04MB4223; 
x-ms-traffictypediagnostic: VI1PR04MB4223:|VI1PR04MB4223:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4223381EFBCF629D42D3AAAAEE870@VI1PR04MB4223.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2000;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(366004)(376002)(189003)(199004)(5660300002)(7416002)(229853002)(6436002)(110136005)(76176011)(66066001)(478600001)(14454004)(7696005)(71190400001)(9686003)(25786009)(71200400001)(99286004)(86362001)(186003)(486006)(256004)(446003)(53546011)(6506007)(44832011)(91956017)(76116006)(33656002)(66476007)(66556008)(64756008)(66446008)(4326008)(66946007)(55016002)(102836004)(6246003)(81166006)(81156014)(476003)(26005)(2906002)(54906003)(74316002)(8936002)(6116002)(3846002)(7736002)(305945005)(52536014)(316002)(2501003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4223;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cP+dICv0bMvk2n4Y94u2w20DlcaFzZUjHxEcgU2ErATyugTGSfeWkFdLmVAs0pvVGF/BWu4AuKN0haAx8BHLFBb6WdPPu0f8YpX0jfbiCHyCc+kXMD3NnM8458xbGHUD7xgHCjHp2c7y5Y1/4uXCxFo7pgsVpBAzWXVfYk+bbeA46t8fHy0IV731dhyEHY5PLae3Xgl8bBJ05nphm8Cr9mgS2ELeHz5j/raGvSkyWSCn8ZJhOn8+imaRy6bM/W5ZV9+/chWV5yU5CGac+gbd5005rjNRreNthOg5Q5lSGrYz7P226LQ6S+MDbhcsvudmIoAIBv9npGoLuPr7tioQsYQzxWmcUDSMKtc1VOTi3ESrN4WDcC/yPsFhorJJUJm5YcKGo1rOei5F5/DnyqBw6L0not5KA+R6Jig83I+dFcg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d708d618-469a-4fe0-bba1-08d741ef384b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 19:33:19.2059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 541ITLhnDjcXVAvUWQmjxEGZWFJCC8F81vrZgBeqe4y9sm208ErqiS8NuVr/8mmg6gQKjtXViD998mcGlklcmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_123325_062505_8081AE7B 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Artur Swigon <a.swigon@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Lukasz Luba <l.luba@partner.samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, dl-linux-imx <linux-imx@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25.09.2019 04:59, MyungJoo Ham wrote:
>> In general it is a better to initialize an object before making it
>> accessible externally (through device_register).
>>
>> This makes it possible to avoid relying on locking a partially
>> initialized object.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> 
> Do you object to the general idea of devm_* for device drivers?
> or did you find a bug in the memory handling in the code?
> 
> The result of this commit still relies on locking anyway.

This is a dependency of the following patch which removes the locking. I 
will add this to the commit message because everybody asks.

This patch removes devm because devm itself is only available after 
device_initialize. Moving the allocation ahead of device_register (which 
calls device_initialize) requires switching to manual memory management. 
Since there are only two pointers it seemed reasonable.

Alternatively device_register could be split into explicit 
"device_initialize" and "device_add" steps and devm could be used 
between those steps.

Before:
  - device_register
  - devm-based-alloc

After:
  + device_initialize
  + devm-based-alloc
  + device_add

Does this make sense?

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
