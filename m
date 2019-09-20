Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA387B910E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:50:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=H73KF+ZjHRJaJ3HoG/ephNLAAai+9xTiIb21NoQi7p0=; b=UUhDRaN/hJdXas
	WV1CBMKWqbqffh43RkvXnAf19Ry0PoHIsis8XIEnLAlwWN5/IKyQJnBsulylXAN3PW3knH2DE5ulR
	UIoQ4t4RjrpQKqUoizkJl/QEoQxwNyq8ESCNBR7kGJ+7CdkIQp09pJFL8bc3uijfU8UUHaVnpCNYS
	rn1cI+aneJjGFLFBOGgYeXHpuecEYLx/3+j8zRm162iV6JsTvaSt/0oDGulJRWqlcLs2GeCzWlszp
	543T/vFUIeW5XelGFjJukiahGnEUEPQVf+sOkSKBBZBjNfNljxwAQMg5STrCwzTnIbfZiyZAc6xDu
	CSQclTrrNusND+d4xWtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJIr-0007o0-0R; Fri, 20 Sep 2019 13:50:29 +0000
Received: from mail-eopbgr150074.outbound.protection.outlook.com
 ([40.107.15.74] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJIi-0007nY-Ru
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:50:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DKtmcZNOyp6JXGkhF/BptZIEDhhemhCJfI21/pCU8kKt/dMatltMBx7YiWqViBzmURzvjxkMJ06DCt4hc0elWtDR0W+b+zHRcVCDnPAia/k+xvzRcA/L1hbHClnhR8ossZxcRBgtCkT2r1LAhkCdCdR32GMF0iYRtWoAkuLYni7VKFx4u7yLq/rXNd1EbiKtZftvR7LbPoJ9EHZMljQh3dz3jbQBaZVeS3uABQ5fIh7yXRYLJXnK0zZQ9KummwkyUx1l1E1ESumf3O03IwrKsaSY2SDrphe6aEaMhwT3jOdaU5OkH1Ric7PNBIgzB42/y1O5AAwYxkxSEW8ykhtnZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+Fk9ZWhZZOke4c2RaUZnMdUooffvf5yxvgMD6DsPDw=;
 b=LWH7pl/S3sT56pjz24ycndu8tjSSY5vgp0/hOhxK4SfUgxscWOqyGJBm8B2T1hOEdg9qzarLtuuWzaniKqU5DeQ+C3vUj4686VSBmZ6CL2sUkYOQ1Ajj9gHcSeE0kRnlQPOkQqgEi8cqOEXiTKKHh6YR0IfxV86aIhoRIbhj8CU4kM148cNA8mtU85KSBejBxWJSLujAxPh/79UFFyjb3yFXqnYDktLWgeLs3keTcKeksZfBdiF44/ymYObT331I2diZmZ/iobEyEAJ8r5IzQQ8s9RBU7IeRtQyEgh+H3b7tERfFsqVuiclSdLXqz1R3Q2e2NiU8upjWTmheS/sKZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+Fk9ZWhZZOke4c2RaUZnMdUooffvf5yxvgMD6DsPDw=;
 b=jl2jtPrb7F6JWBA7qer30K1vCsd6WiTZsmPAn1jP9XYAPL/YYHaJrFPeZBg0vn8wh5dqg3Bbij71SvpiAwBG9P88mw3Y8B/FQ+TooXQ6vN2C3iz3tTBlccCggV3y4Jf/NLuL0+rzwfPvWYiDJxJ9dgL52FIQv6aFgi10zDgf958=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4415.eurprd04.prod.outlook.com (20.177.55.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Fri, 20 Sep 2019 13:50:16 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Fri, 20 Sep 2019
 13:50:16 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH 7/8] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
Thread-Topic: [PATCH 7/8] PM / devfreq: Use dev_pm_qos for sysfs min/max_freq
Thread-Index: AQHVbySySqxEYRJcHUCDx598jP1POg==
Date: Fri, 20 Sep 2019 13:50:16 +0000
Message-ID: <VI1PR04MB70231086870F7DE0FE48DFE4EE880@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1568764439.git.leonard.crestez@nxp.com>
 <a80dae0a1aec9932689aaadff68bcabc94a816be.1568764439.git.leonard.crestez@nxp.com>
 <20190919195902.GX133864@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83a59832-107b-4e21-311a-08d73dd177e9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB4415; 
x-ms-traffictypediagnostic: VI1PR04MB4415:|VI1PR04MB4415:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB44152172A0B1255A595207C0EE880@VI1PR04MB4415.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0166B75B74
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(136003)(39860400002)(376002)(189003)(199004)(52536014)(81156014)(66556008)(66446008)(81166006)(5660300002)(55016002)(8936002)(25786009)(9686003)(486006)(4326008)(71190400001)(8676002)(71200400001)(3846002)(44832011)(66946007)(64756008)(33656002)(91956017)(6246003)(2906002)(446003)(478600001)(6116002)(66476007)(76116006)(476003)(66066001)(186003)(26005)(7696005)(14444005)(76176011)(256004)(54906003)(7416002)(229853002)(316002)(99286004)(74316002)(6916009)(6506007)(53546011)(7736002)(6436002)(14454004)(86362001)(305945005)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4415;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 9Oxc/7upEHsZvBjOGc6sd2fwIAqxjCtlS/+bBN99nQN8H2VM3Kk7e8ge+YYj5SH0Z0d5zMdkhD1LIHGm/hJ3WExV8Km1O0E7hx6Swoi4MPTlvwWo71Xb/xkRrLk0YbcnRJys6CB3CR9uirhJ/N4jTtfjbjpkYYWYHFq4OZ4tDPUksJ3swHESWvm3064o3ikBjwImZwk1JmC1+MzCsTdq0r7aBg75wtpMqBj24UBTzHzXft5nuL86AoJp8vBkEusjZMj9Gwa2FJf9cz3hJ7Q3Fhdhzl+dpYDLqHPTgQ4NEhmJIxqeLZFpVv4BMn7d6Zn2Pter45X36XbazW0yYTSCg1OIAndLjaIs20FNEa6D+kkgVBx8A1KEFOIiUWvHn1rr6qki00xgB99kbq6Ha4CQnOHrnpWjlIkZZA5eopiComs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83a59832-107b-4e21-311a-08d73dd177e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2019 13:50:16.4514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pld5m0JX4Unvhhq6Aw+bnx9TGtH5MFEGQwb4gzkXefjLB26Jymg26LCQUQRHyAwJlNa0jibWux5sG07fuUyLgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4415
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_065021_119987_FF0063B9 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-09-19 10:59 PM, Matthias Kaehlcke wrote:
> On Wed, Sep 18, 2019 at 03:18:26AM +0300, Leonard Crestez wrote:
>> Switch the handling of min_freq and max_freq from sysfs to use the
>> dev_pm_qos interface.
> 
> nit: PM QoS?

This series is specifically supporting dev_pm_qos_* interfaces. There is 
different but related set of pm_qos_* interfaces which is global (not 
targeted at specific devices) and as far as I can tell it is mostly used 
to prevent entering high-latency cpuidle states.

> if you agree please change all instances in comments.

I will change instances which don't mention specific APIs

>> @@ -675,10 +671,12 @@ static void devfreq_dev_release(struct device *dev)
>>   			DEV_PM_QOS_MIN_FREQUENCY);
>>   
>>   	if (devfreq->profile->exit)
>>   		devfreq->profile->exit(devfreq->dev.parent);
>>   
>> +	dev_pm_qos_remove_request(&devfreq->max_freq_req);
>> +	dev_pm_qos_remove_request(&devfreq->min_freq_req);
> 
> mega-nit: keep common mix/max order since it doesn't really matter here?

This is deliberately cleaning up in reverse order of initialization.

>> +	/* dev_pm_qos requests for min/max freq from sysfs */
>> +	err = dev_pm_qos_add_request(dev, &devfreq->min_freq_req,
>> +				     DEV_PM_QOS_MIN_FREQUENCY, 0);
>> +	if (err < 0) {
>> +		goto err_dev;
>> +	}
> 
> no curly braces needed for single line.

OK

>> @@ -121,12 +122,12 @@ struct devfreq_dev_profile {
>>    *		devfreq.nb to the corresponding register notifier call chain.
>>    * @work:	delayed work for load monitoring.
>>    * @previous_freq:	previously configured frequency value.
>>    * @data:	Private data of the governor. The devfreq framework does not
>>    *		touch this.
>> - * @min_freq:	Limit minimum frequency requested by user (0: none)
>> - * @max_freq:	Limit maximum frequency requested by user (0: none)
>> + * @min_freq_req:	Limit minimum frequency requested by user (0: none)
> 
> '(0: none)' is not correct anymore.

OK

> Maybe also say that it's a PM QoS request?
> 
> Since you are already changing the variable name it could be a good
> opportunity to make it more specific, i.e. make clear that it's the
> userspace constraint.
> 
> e.g.
> 
> min_freq_req_user
> user_min_freq_req
> min_freq_user_req

user_min_freq_req make sense

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
