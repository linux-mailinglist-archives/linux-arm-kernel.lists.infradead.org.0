Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9E61BB619
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 07:54:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORWnUeDUkuZrfUCJrjMMVYDDZb8u07wzHWqyC3EYW/w=; b=GCSzBJCGRiBPGj
	Og7EpKL1HB+0GbK8wtfxRovm0sOQQYcvIIBEpRF4oo+O5qFf0+dbgxzKcoFGC4HCE12IjkNMZ7pLH
	R+NlB7BIzyJwXgZ4AqRE6PblzvGKRX+PjwB/Wxx/ahIDAjcSAhFnEPhu9+nvNjIaDRts9I73NaQgB
	loWxfpVlWT0cNV7KcjTv/JgfsHsflkbp8EHmQhXDHWYKFwzTv2saVJ28/si75ITmcWOha872x0AiO
	BtmeKHftztLNC91WtHpBwQzROpZ9+idKEx5vVmUVygPM4H9ytu5GDZofHpb2wXCjY+RjE0pgSJnSG
	beeHMxlFqHIKWuWcAREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTJCR-000290-OR; Tue, 28 Apr 2020 05:54:31 +0000
Received: from mail-eopbgr50050.outbound.protection.outlook.com ([40.107.5.50]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTJCJ-00028G-7T
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 05:54:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MI12FJVqDhZJXPPRZaOgaLoXXFJdXdFkPVV19SAfNKJLtpca1DscV3u/h3SKxlDjYtzZ0d7WyQDolfjptUGLfbZrFu/rseWUZI9HMeRETcbsoFK1QVFQmEWwqKWLVH4u8nsYQ2Q3+xmMmIogs0yjbzBTK+ukmdT24YtnOHqn6+MG/QB2VQnsyj5uVGs7YcJEalnep7Rbz0jqUXsZx9h71c6ub6gXUbQ9KXNuHHjbS4Rn52ZLCRdqN+pTsquetbWvG7r3GtcDJ0USdfnk/+vEiJjq6a7eD8PkvKYTAu9gp3HVyoauZY5QITsFn792GKDQzcnKasJKG7RvnMRcEnoI0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z32vYN+owoDtFdjOdNiHaBPJjDqwGCd45Rj0sTcxk9E=;
 b=WzOU5aRf3i2rFfjCw4c5MRK4NYyg+56S7Wj/JIvdFYsMlW0ui/A9PdvEsUrbJtzKcLCYBBBuZc7xFXsLdt6Oj2mkPLBumUWLTGk1u1SozilfH90uZFqBEV4iPY66yTCl7K0NEocGB074ZS6dPBO/s4m4LFc6cY1OOmz1HVaSkKywym6VPK6Z+UIqsf7BSgt+EE8tQnWnow3l5Iu8x5bJr21a2rlyUbZkGUa+fRtDIc/IIrlOSVbT5pQwo2BGsBmCwR9cTRi34v1KrxiVJP4Phg+zowK3woSgbJO36PdJZ0G0lj8yhQTqoUuyrAUD9AsA2ycp86TVWwl0c1ny3MHWiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z32vYN+owoDtFdjOdNiHaBPJjDqwGCd45Rj0sTcxk9E=;
 b=aJxb6w7/FoaND7qFNZywwyPjmK7dwiKaVMDP3RqZLoNvhQ3D7hob9B+Tsc+nIOkQXrAbZE6nhYOyQUWQ+6OMs2l3/T5WIqRbk3KJrZ9ZenahdO6jzOg8/NZHYKnX0NWyZqHFbOuZmzU4q1hYLQj1smU4XOJngu4pm9fRWKLHZj0=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (10.172.251.142) by
 DB6PR0402MB2888.eurprd04.prod.outlook.com (10.172.248.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Tue, 28 Apr 2020 05:54:18 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 05:54:18 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Guillaume Tucker
 <guillaume.tucker@collabora.com>
Subject: RE: next/master bisection: baseline.dmesg.alert on imx8mn-ddr4-evk
Thread-Topic: next/master bisection: baseline.dmesg.alert on imx8mn-ddr4-evk
Thread-Index: AQHWHJPdlwmAOV9oG0GHu+aEMLQ08KiN7nUAgAAa7YA=
Date: Tue, 28 Apr 2020 05:54:18 +0000
Message-ID: <DB6PR0402MB2760E36D267024A3C028630788AC0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <5ea44ff8.1c69fb81.f246c.d02d@mx.google.com>
 <8af4842d-d576-fd6f-ac6b-2ef3482742b7@collabora.com>
 <20200428041636.loakok7yfqg3hcsl@vireshk-i7>
In-Reply-To: <20200428041636.loakok7yfqg3hcsl@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 6f0d6c01-a711-4b58-e1da-08d7eb389737
x-ms-traffictypediagnostic: DB6PR0402MB2888:|DB6PR0402MB2888:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB288864B0CBFBDF0FE9709AA888AC0@DB6PR0402MB2888.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(136003)(376002)(39860400002)(396003)(316002)(15650500001)(54906003)(26005)(2906002)(71200400001)(44832011)(4744005)(86362001)(110136005)(186003)(5660300002)(64756008)(66946007)(76116006)(66476007)(66556008)(66446008)(4326008)(52536014)(81156014)(8936002)(33656002)(8676002)(6506007)(53546011)(478600001)(7696005)(55016002)(7416002)(9686003)(45673001)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mqIl+8L5UipkY3rkBvGuWCphLLBXpenYzK4vXjqErhMyqLQskDAwoVGeTqeMQk8s7JOeB0JKIy2oNoaYwnzCra0jMOVc9AGkC7UFnZve0cqBmbyVe6LoS61uttq39qKtpS4LzhPRFrYFk/x454gtKXzg6axq2/tASWCJrW+ZX3UTpGBpk1QfZV6ntX49lLqfT4lBsxISDSTevyDt8nPGwNLZR8lPmsJ3a2vVP+arcivUmCOvLRXS7ffJltUxhFF5jH4WzzJfC3eMYX40/a1LWYJZLATdKhTJqaaBXwJtyR8k+ymu2L+99wKo3sTRKz8H91DhIVMcxytlE7amOGsV1k1oG3ezwfDPRf30C6KWJ9m/u65V7diNZ5OdgthiSohLF00uXW6I4cC6AebJ+BkREZsG3y+M0axFs2TkFIixwWuzYskV17iX6rT7pWTUKAWyzQ+E3agZjII1SOaOHroGCyLylJoPRQ8a7wkoRq1Djzx4bpfFGu46LWNH6xoFkiuD8x4XyZt9FSeN5RRKYjELYw==
x-ms-exchange-antispam-messagedata: yGmexrFmAjdIZsQzFc4aMR5P8be5QoPxsD7ZnCCgYAVJXJPVUCHBf03YTt8QxXJsUCOFPnR5X8WC/XW0rkMlGaIIshQQM10a/4NRpn74Ol3fL7qsc1PKNADvqfcswyzoDOYCVe/blWFzSuFXqeX1PWXQRwD7sT3w1pJlXAPbQ0V9fnXeR/XCz8mfwuFSjh3b11rgQTH8ch72YBoYQz93w6QxDa1EPlyPbOB4ekI7NNf9FQhlGUYBwqMCkR+b4lYSJqTyLT1M8YItIHC4k2Fjf7/ICmaLKTMLiPv475nPym+r6Z+cwlZKhL9+BZgmjfp83i6QJNiWZapKqGLEo4THOBlGGC0HFrtnPW5Wm1Ltq63wtCLm8k+I9O2ahPhI9KJFxQHQPTMNBQhOx+NsTC9jc/hm5ol24DeZZLiXrF2Ajfs7/lCpIeMo2NClcHFhjb88h2fJiyo8jEDzJ8/KQWpYsbO9+36aT2juwnu3yaMSHrB0pcjWe4uHtignDC0fWReTrksrHuSc32BxzXd6ZQHmAuS5UjKXihNV/JbFpBSVsNG2NJV+ZMXfcal0IlyrEZB0ZHJZ0wVByXO2oINz5+xp2S4kv+zTyTQkX5N/5IIBAmploHN7FaBrMKQ1yI0OH12dpWRjLTv9R4aEoXv5GYRgqocmm8L10EcwtIxDvCglwW2T/Pkar1HmYY5KZR/csBQ0k5mI0OqXYlrD99F9PTAZV1+yHAOzMRlyg97FYHBaWa6dJFfQFPQoFgGDAXlCOJxqqEGaAUqHIF1IxZreWfVRAxBGqwrzi5qORuI5vzlSoDA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f0d6c01-a711-4b58-e1da-08d7eb389737
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 05:54:18.2692 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BkD3vhYZTTpPgCN8Jts6nzq/EXL/MXN9cNcWA9l/nBMBevxousboUiy2B7Ys+5vvldWFpNUfkuRoV8eb2NxyyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2888
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_225423_358248_21FE65E4 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.50 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernelci@groups.io" <kernelci@groups.io>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: next/master bisection: baseline.dmesg.alert on
> imx8mn-ddr4-evk
> 
> On 27-04-20, 14:00, Guillaume Tucker wrote:
> > Please see the bisection report below about a boot failure.
> >
> > Reports aren't automatically sent to the public while we're trialing
> > new bisection features on kernelci.org but this one looks valid.
> 
> @Peng: I have dropped your patch now, please resend it once you have fixed
> the issue.

Sorry, I used an old base for the patch, the cpu_dev should be applied before
check cpu-supply property.

        if (!of_find_property(cpu_dev->of_node, "cpu-supply", NULL))
                return -ENODEV;

        cpu_dev = get_cpu_device(0);  --> put before the upper code.

I'll post new version.

Thanks,
Peng.

> 
> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
