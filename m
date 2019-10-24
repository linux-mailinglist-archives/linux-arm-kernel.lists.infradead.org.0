Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B3D6E37BC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=amvJq66onLpg3HkA1/26XwEHIYMhoDnVpy0n8Ei0pZI=; b=chSku+sqT+Byq9
	UYnVU4uvGsYOtgM9XhkppPS5G2Vrx+yNa6ip/ORDkIouriMxcDoBWjHGqWABP2RCe69abqutCSQFH
	JhiKW87zm+E9jVODDQq6THcJasVUjAHtDbVr/t12v7G/5cUCyiz1Zjsxb73UyPFqs5v34V4FZEU4V
	SMHAerdJaIp6GT+bDPmVXFVQ0klAnIbYlG/UA7igDVF9M3ze4h0aIgmqgxka+gnYbdOkc1pp6+EtR
	aYmnlm0NHFgwjzhHgVBCPeizZ7tpHmZ8OaxuvPT9gKS6oi3mBCiFCxZf3i4sARVulH/vryR6LFcR6
	sxDVcg9iNd/XwxrFHxRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNfrh-0005ku-2d; Thu, 24 Oct 2019 16:21:33 +0000
Received: from mail-eopbgr60041.outbound.protection.outlook.com ([40.107.6.41]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNfrS-0005kD-Q0
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:21:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PisSyYbXqVzP+mIDoOJybXmDSEdZ9R9IV6ANOnKbvpK3qs+4dFK5Pbnrd1ieXz2alfMmUkoS5JWbvUfGodSRP6Biq7MvUv07kucypaTU67iF8IXSqcgZBEXAP6retfH4VOgiWozVvQ5m4ZHgOdh0mrxhWtbIpPUm0P7Gq7EpNx+alj4xvXdltCIHcDa3bcc/71MR3tDxD2FJzTfpzkpxVrDj+KbwPmTI/yzSUKsAyA3kTcCTi3xMyQoWl/4R+G5Tc8BuqLkuAzmiKGwAtvURMCpm6NpTv+p/E5VrPT9iQ/PenQ1w52ZCpWrLyh3BaMw6RtzrwCzi6DK0RM98RiV9jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlPr/zkMIG9mLhWXcMYSlpPeQubFkfzqXXmUT03PUmc=;
 b=IMHw64VaC0vQXJwHoot3EfCYFE4fZ5Hfg0Zj4izoF1cwjBhiZac6SQDSeDavx9YyUb8Eb1gaXgHZNusA3ZC/JmnxpY772Qt4SpCN3RJaknziFq2eFIGWo0nLmiAn8GPR9urfXk/FF9R3X00Nv/SLnqJ26ouAWi5Br+JiPknGmEDUDPVFdRChAs5jG6eGNkUiLc+2QfFuNUQIpRcmaBYPWtHYfPJD1bqqLTsbufZbk2uhtJTV6Gp95gTT/Ifi7N24uWPLiNfGbcLHQI9wnv0dfnkcAxISMms2mEgdBd8Ot1iKsAdb1iv6z0Sk7OvuojNIJZdO2l5OD5KrejhoCNNdxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YlPr/zkMIG9mLhWXcMYSlpPeQubFkfzqXXmUT03PUmc=;
 b=dJO2D3QOCoDohRprNunkTnAPxo/ZHUoa78TSiz37c/WHhiQR8cSBWplP69lXX+uyqcSfnvupf4CC68g5bQlVbRjL5PH879jpBOnf284K5gtJ0VIkU5rwivWg5gnBPeQILPvSLkejykdJ/8UBp0rIly+5sg/nxZTiB4DY3Rb7RhU=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4445.eurprd04.prod.outlook.com (20.177.55.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.21; Thu, 24 Oct 2019 16:21:12 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::24fb:fb99:b1c6:ba1f]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::24fb:fb99:b1c6:ba1f%4]) with mapi id 15.20.2387.021; Thu, 24 Oct 2019
 16:21:12 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Thread-Topic: [PATCH v9 0/8] PM / devfreq: Add dev_pm_qos support
Thread-Index: AQHVeVcfE84n3PyghE+MA+tYDqGMmw==
Date: Thu, 24 Oct 2019 16:21:12 +0000
Message-ID: <VI1PR04MB70236FB8DCC401EEAF97A424EE6A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1570044052.git.leonard.crestez@nxp.com>
 <AM7PR04MB70154D3BA0D6402A9C9BE6A0EE6B0@AM7PR04MB7015.eurprd04.prod.outlook.com>
 <20191023163443.GL20212@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: edc28aaa-206c-49b1-f551-08d7589e2fca
x-ms-traffictypediagnostic: VI1PR04MB4445:|VI1PR04MB4445:
x-ms-exchange-purlcount: 3
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB4445C69B9851447229970E5FEE6A0@VI1PR04MB4445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(366004)(199004)(189003)(81156014)(81166006)(9686003)(4326008)(3846002)(5660300002)(6116002)(6306002)(6916009)(55016002)(52536014)(8936002)(478600001)(14454004)(14444005)(8676002)(76176011)(6436002)(99286004)(2906002)(6246003)(91956017)(66556008)(6506007)(446003)(53546011)(66446008)(66476007)(229853002)(66946007)(186003)(71190400001)(7736002)(316002)(45080400002)(33656002)(64756008)(66066001)(25786009)(102836004)(305945005)(86362001)(256004)(54906003)(476003)(561944003)(71200400001)(486006)(44832011)(7416002)(76116006)(26005)(74316002)(966005)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4445;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: EIBJwZXHVcB+rKfPVOK/skOYAo8Ylx+/4/yaoOxJt76jUq3CsFk5m1+l+pOUH2EZlpLbZaXFWaRy22X1QhjZV0rjrGwzE5U88WVe9DrZXExXih7BIvmd8kxbiNm8BiQAZaobD4+SHnW474pdpYlmdhXtJr/M2/qvNZXMNMzU88tdFiakB+gxg1bb1OTH4H9Kcs6+vuge7bnvhf+vUo/hqYFA/xQrDIQ5stwLaD/1/n7lrM5gew/tnVUxpYbtga/hn0Yum/Msnlk4Z9jkVc1UeLl3pd9wC/9yJoQE898ygneGftnhpaWFwSeHcVqWyDw9zbNUcpInXjeOyUvT/kE0nXemyIEe2tFqfSaZF1nCSwE8GDCGLen+i2IgPG/Cfma0VqenXkWT03+lEP/9lnHmTjKw2QB7ZWjGB+49fJSIHNM+Nplu0MQrTtpG3WxobUke/FNuU5YQofQLK4K9WxEXVXSmkXYnZYOgBOIZzNO3RxE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edc28aaa-206c-49b1-f551-08d7589e2fca
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 16:21:12.5106 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8oV6iqwb0e9vdYWwkTswZ1ZR3Vbvxd1LlMIivprb1LkwpbwcJLvNgG5312pu0GRIv8iyY16GNixHRHhPu5yPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_092118_912050_3EA4522A 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
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

On 23.10.2019 19:34, Matthias Kaehlcke wrote:
> On Wed, Oct 23, 2019 at 02:06:40PM +0000, Leonard Crestez wrote:
>> On 2019-10-02 10:25 PM, Leonard Crestez wrote:
>>> Add dev_pm_qos notifiers to devfreq core in order to support frequency
>>> limits via dev_pm_qos_add_request.
>>>
>>> Unlike the rest of devfreq the dev_pm_qos frequency is measured in Khz,
>>> this is consistent with current dev_pm_qos usage for cpufreq and
>>> allows frequencies above 2Ghz (pm_qos expresses limits as s32).
>>>
>>> Like with cpufreq the handling of min_freq/max_freq is moved to the
>>> dev_pm_qos mechanism. Constraints from userspace are no longer clamped on
>>> store, instead all values can be written and we only check against OPPs in a
>>> new devfreq_get_freq_range function. This is consistent with the design of
>>> dev_pm_qos.
>>>
>>> Notifiers from pm_qos are executed under a single global dev_pm_qos_mtx and
>>> need to take devfreq->lock. Notifier registration takes the same dev_pm_qos_mtx
>>> so in order to prevent lockdep warnings it must be done outside devfreq->lock.
>>> Current devfreq_add_device does all initialization under devfreq->lock and that
>>> needs to be relaxed.
>>>
>>> Some of first patches in the series are bugfixes and cleanups, they could be
>>> applied separately.
>>
>> Hello,
>>
>> This series was posted a few ago and all patches have been
>> reviewed/tested-by multiple people. Possible minor hangups:
>>
>> 1) Matthias found it confusing that min/max_freq in sysfs changes
>> on-the-fly. This is not a behavior change and I believe a decent
>> workaround would be to implement separate user_min/max_freq files from
>> which userspace will always read back the contraints it has written.
> 
> As you said, it isn't a behavioral change, so it shouldn't be an issue
> for this series.
> 
> Regarding the workaround I think it would be clearer to have new
> xyx_min/max_freq files for the aggregate values. min/max_freq are the
> interface userspace uses to specify the limits, it would be strange to
> use different files to read them out.
> 
> In any case the aggregate values seem to be of little practical value,
> except perhaps for monitoring, since they could be stale right after
> userspace read them out. We could start with not providing them, and add
> them if it turns out that they are actually needed.

But the min/max_freq files right now already are already aggregates and 
sysfs is considered ABI. I wouldn't be surprised if somebody has an 
userspace daemon which uses them.

My proposal is to add user_min/max_freq as a new finer-grained interface 
that you can both read and write to, no confusion here.

Writes to min/max_freq would still be supported but only for 
compatibility with older releases.

>> 2) There was an objection to removing devm from two allocs in PATCH 4. I
>> believe current solution is acceptable but a possible alternative would
>> be to split device_register into device_initialize and device_add: this
>> should allow devm sooner.
>> Link: https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fpatch%2F11158385%2F%2322902151&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb89f3efc3c934030fb6108d757d6ecb2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637074452911403311&amp;sdata=DeOUpVjT1yZ2EWs50CFL98OoTjVMCpQDCM3qjCtKuW0%3D&amp;reserved=0
>>
>> Let me know if you think I should implement the options above and resend.
>>
>> The bigger problem is that DEV_PM_QOS_MIN/MAX_FREQUENCY was removed from
>> pm core because only user (cpufreq) was refactored to use a new
>> interface on top of cpufreq_policy. Links to discussion:
>>       https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11193021%2F&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb89f3efc3c934030fb6108d757d6ecb2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637074452911408301&amp;sdata=DxfUtaGch6MilSy5fX8AHN3%2BDIp8MrbQrHH%2B6VdRb%2FI%3D&amp;reserved=0
>>   
>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Flore.kernel.org%2Flinux-pm%2FVI1PR04MB7023DF47D046AEADB4E051EBEE680%40VI1PR04MB7023.eurprd04.prod.outlook.com%2FT%2F%23u&amp;data=02%7C01%7Cleonard.crestez%40nxp.com%7Cb89f3efc3c934030fb6108d757d6ecb2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637074452911408301&amp;sdata=sYQZUbzEk2DsWGQ5eQnu2m2%2Bsp%2BYBO16Abyjwf7Z1sQ%3D&amp;reserved=0
>>
>> I believe there is still significant value in supporting min/max
>> frequency requests on a per-target-device basis. This makes much more
>> sense for devfreq that for cpufreq because the whole point of devfreq is
>> scaling arbitrary independent devices.
> 
> Agreed.
> 
> It seems Rafael would be ok with reverting the patch that removes
> DEV_PM_QOS_MIN/MAX_FREQUENCY, IIUC he just doesn't want to keep it around
> at this time because with the rest of his series there remain no in-tree
> users.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
