Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C1FC040B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 13:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=0CAOojR4qs/VvcTv0eMyNlmNUYVIrQJoRiPLQwWFmXQ=; b=cAZu4NfZhQt+mD
	0il4jtI0X5T/XH42Q3cFKaM2aoyouFbI45ZL1NG9R6svaWvwyllahpnhpRzjZKFT6cFa25l59jyus
	NknECDR5EA9zH8KuFQkjzKmHleWFO4LgQMymWiKwSfCLT6WlV/HUxCT5BIBx2nutHYPuBWi5VREeY
	IU3uSkVndjcwSA44NPW7Q7ED0SaHezxncWcN//RVYZVpniKbByyY+DEVXdWLjluyGWiM9eC7M0wLo
	exeihej8B4rvaE1PQZbRX1RWMLCL/svekHF3yjKRm8aUQ34+Ie9sVmdDAUngHy+dpDgs0PjcuGZ9W
	lyGkD9X1pANwf4IkzlvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoKk-0005sE-5D; Fri, 27 Sep 2019 11:22:46 +0000
Received: from mail-db5eur03on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::609]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoKR-0005jt-0q
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 11:22:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nfs3Oo7yC6j3H0cKfy9hIuQ926PE2jc6J4MFy0M8oFu3yG6SvYLNHFcGAcoxBPQBkhZb6tQ7PDvxk2SHlwQVLdI4vtEW2FkSsbjkS5YVDjIynJN0nFuvDSqIsVvrpRIl1V9sAq7tGr3g+/NPMxVO7x1adTQvOPpqMzOmVLk4+Z71iV0IImO2vRoT/rN5wYPGpjCSrrDt7vpyFxKxTZxfdbGKcnlD6fs7/Z2XSgDGkwsmZPw8T1J95ZEyuxmsrtA3i2AhUCvknSgqR4HDbxGyaSU6c2hx/4VykP/cEeca1/GP9j98zXf9HCySSzH8+/8BAcIfhVyc3C2NsJU+kZ0grA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtGnUUZqWh3tnqCrFanKYOojcT5l/I+/oBayKPLOrwg=;
 b=UZK5rJtp8r9cp2asCkfg7VcGOGutwT/ZIDYk+O+9Sf8/7TMjO1/bA4BxEg4eLyR0w/IwSUGTFPAwPG6Ec0ZxsU6XLAxqnysz6k7vy1rL/rp1yMXjrPD2NtqzM2pq7AlcQWdvfHmq8q82wDz7zyh5//5aoIRM+EKJ/Jo9zk1J8EvoXvan/S2YN8d5J0aM+m7pw90/KQkKgxSpm4eUiQcCPtDO0b3MZwYT7b/j5oUbWOG3Yfb8EYidw90ykVvpLF3aVEHWw86bRPd50Bqrzwh3gm1rKsAFhGPj1QX8h3OVIVLv1QdLjKdfAYs8NEpazSHLNbto0V6PXoeOP0p412aLDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtGnUUZqWh3tnqCrFanKYOojcT5l/I+/oBayKPLOrwg=;
 b=BfVq4tc57zfUwFIeA5Qt8AVaGI1QBn5cLM8klwfwSiYQo/ZcGdE1LydhwRDBLlG5JBlbA34kQ3zm9waK307lckPD1ZhsBigoJTinSWd7WKM0tl8dPRrJDJbjxxct9jlYfF8Ke0sSSfUQ4M2eF/YtBnGTF2lgu09mbZcWXZdzKWM=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5390.eurprd04.prod.outlook.com (20.178.120.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.17; Fri, 27 Sep 2019 11:22:23 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::15cd:b6e7:5016:ae8%2]) with mapi id 15.20.2284.023; Fri, 27 Sep 2019
 11:22:23 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>, Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Topic: [PATCH] firmware: imx: Skip return value check for some special
 SCU firmware APIs
Thread-Index: AQHVc4lSn4nBMGf230anvZh0PllY6g==
Date: Fri, 27 Sep 2019 11:22:22 +0000
Message-ID: <VI1PR04MB702397C54519DC27CFF05A78EE810@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <1569406066-16626-1-git-send-email-Anson.Huang@nxp.com>
 <20190926075914.i7tsd3cbpitrqe4q@pengutronix.de>
 <DB3PR0402MB391683202692BEAE4D2CD9C1F5860@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190926100558.egils3ds37m3s5wo@pengutronix.de>
 <VI1PR04MB702336F648EA1BF0E4AC584BEE860@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <DB3PR0402MB391675F9BF6FCA315B124BEBF5810@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190927090609.fyxdekkzrco7memt@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a188c824-5142-467e-d0f0-08d7433cf7c8
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VI1PR04MB5390:|VI1PR04MB5390:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB53905A496E87A6623FE3DB3EEE810@VI1PR04MB5390.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0173C6D4D5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(189003)(199004)(66446008)(316002)(66066001)(6506007)(3846002)(5660300002)(110136005)(33656002)(54906003)(6116002)(8676002)(6636002)(81166006)(6436002)(55016002)(9686003)(6246003)(81156014)(229853002)(4326008)(186003)(76176011)(26005)(86362001)(44832011)(486006)(14454004)(256004)(478600001)(99286004)(2906002)(71200400001)(71190400001)(7696005)(305945005)(76116006)(91956017)(25786009)(66946007)(446003)(74316002)(8936002)(476003)(52536014)(7736002)(66556008)(66476007)(53546011)(64756008)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5390;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QONa+sdeBvCF+D0uxCdsO7jDP72aznmHgHwZURBqbVLhIxeJP89HP60x2ZEGu2fiVz3MMZB/9X33ixXoO1/4teCrbeOT7Kd1HZkFcOdFYr36aWMiAK0InCiFM11bxnDNQcvchvGeAyt9A7wdkw5dg3U7bYOP2OxWVTDtvmVNyb5JUFUdJLXu7JR3BrxUlYdKf9ZMx1xCz+m4UzwGtIvwBPiStI78q5mTQGVQBiaDNT2PnzBSApu3Hn5ewKgHuqAZ7i7vixwYQT6/vxGIg8FYvaVjCs7e15pW2hR6/EzcYmvrj3NkjLEVrrPwA3NRp/c5sHhEGmYbrTSCqM/b3/ZzmCFVESa+90xpYu9PryQ+mvLe3FScaHy6rsXMx/eFrbG/sG1aZhZ9evVqphK6ctBJphvok7NhzyR0Jh/ff9Vd45E=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a188c824-5142-467e-d0f0-08d7433cf7c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2019 11:22:22.8654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IyjqYja2TdxL6pyLjiFF4wx7D8iA5zV6UNtR9/akexeIHOSvCh+e21r4xYzdyCw2Iw4yTcRoHMoD3Sc8SnPQaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5390
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_042227_131804_736FA953 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:609 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.09.2019 12:06, Marco Felsch wrote:
> Hi Anson, Leonard,
> 
> On 19-09-27 01:20, Anson Huang wrote:
>> Hi, Leonard
>>
>>> On 2019-09-26 1:06 PM, Marco Felsch wrote:
>>>> On 19-09-26 08:03, Anson Huang wrote:
>>>>>> On 19-09-25 18:07, Anson Huang wrote:
>>>>>>> The SCU firmware does NOT always have return value stored in
>>>>>>> message header's function element even the API has response data,
>>>>>>> those special APIs are defined as void function in SCU firmware, so
>>>>>>> they should be treated as return success always.
>>>>>>>
>>>>>>> +static const struct imx_sc_rpc_msg whitelist[] = {
>>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>>> IMX_SC_MISC_FUNC_UNIQUE_ID },
>>>>>>> +	{ .svc = IMX_SC_RPC_SVC_MISC, .func =
>>>>>>> +IMX_SC_MISC_FUNC_GET_BUTTON_STATUS }, };
>>>>>>
>>>>>> Is this going to be extended in the near future? I see some upcoming
>>>>>> problems here if someone uses a different scu-fw<->kernel
>>>>>> combination as nxp would suggest.
>>>>>
>>>>> Could be, but I checked the current APIs, ONLY these 2 will be used
>>>>> in Linux kernel, so I ONLY add these 2 APIs for now.
>>>>
>>>> Okay.
>>>>
>>>>> However, after rethink, maybe we should add another imx_sc_rpc API
>>>>> for those special APIs? To avoid checking it for all the APIs called which
>>> may impact some performance.
>>>>> Still under discussion, if you have better idea, please advise, thanks!
>>>
>>> My suggestion is to refactor the code and add a new API for the this "no
>>> error value" convention. Internally they can call a common function with
>>> flags.
>>
>>>> Adding a special api shouldn't be the right fix. Imagine if someone
>>>> (not a nxp-developer) wants to add a new driver. How could he be
>>>> expected to know which api he should use. The better abbroach would be
>>>> to fix the scu-fw instead of adding quirks..
>>
>> Yes, fixing SCU FW is the best solution, but we have talked to SCU FW owner, the SCU
>> FW released has been finalized, so the API implementation can NOT be changed, but
>> they will pay attention to this issue for new added APIs later. That means the number
>> of APIs having this issue a very limited.
> 
> This means those APIs which already have this bug will not be fixed?
> IMHO this sounds a bit weird since this is a changeable peace of code ;)

It's not a bug, it's a documented feature ;)

>>> Right now developers who want to make SCFW calls in upstream need to
>>> define the message struct in their driver based on protocol documentation.
>>> This includes:
>>>
>>> * Binary layout of the message (a packed struct)
>>> * If the message has a response (already a bool flag)
>>> * If an error code is returned (this patch adds support for it)
> 
> Why should I specify if a error code is returned?

Because you're already defining the message struct and you're already 
specifying if a response is required.

The assumption is that anyone adding a SCFW call to a driver is already 
looking at SCFW documentation which describes the binary message format.

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
