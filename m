Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106AA1C8285
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DpO/sWwZaUFAO9BakyZrIQzhhjBNqRBY9wvteebPG0=; b=cduCebim/jDuNK
	opiRgQE//wYAdo2At/5eqkW8LU1yzUgwBDpXrBVk86C4PoQjriPkBjSdhZXf9gzWFL2pcLMeCTCcJ
	+3ZnJogjuAgH3qr9o3w3woFgraF2+Z61M+6qcnFEvuAafyD6a9ORHx6QYD+CO5OeFUnVROQ0RYLrJ
	0yL+h2s74F8uhwV3oaBW6ZdGnApUxYm/9kYZI0cjFKvv3uZwKhX0Q0u21zir0oWI2AP4scHVLcgf+
	gNj/49E8mzbMQ/IENLHWT/ugkwAjtsNTJBgveu4gO9TmfwWrzUAUcE36nJ6msgoPQksH212JwrvO6
	ES7AkMnTnrAkMdyu4IGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWa0q-00054V-VN; Thu, 07 May 2020 06:28:04 +0000
Received: from mail-eopbgr140072.outbound.protection.outlook.com
 ([40.107.14.72] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWa0i-00052m-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:27:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j4SMazWrkKCqOc1ght1gLZmwq1i9ER8KbkxvoXJqH1q7vYWyv7X4bJxtjfzAbn/btcLZXZc+VHCiC798hxpIMOV1KTkuwy6ypHrRJXRbV6sEvEX+YhIibbK6AmQca3S5KCRE0KaLxv4brbgstNJc1oFD87mDILkf8q7ZO4RSr3IBKgj38Gc1EfFIZepiVuPadFJyeFnqc5E73ms+mHEKWjF0avadpV9f3EasbF05aahDohWcxtGcKZPbfiQL9c/PrepRT5n9HMpZXqPofQNO77//7QLV+LCG9roCWuIWG+nIKyQz7B7En9fgCLTcg8fv4QqYGx2YHcKk47KSTzxKvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bOSlTuAYTVOeERwVGR3p+KKM6Me67p7yluJUhfPgZAg=;
 b=YRl3kQlVozmdzMkwTtbzSj/2kVTm3yloMgV0TIWJEK0SxUiYKWLdssXCL7o7UlyFtB4lWL7FPL0zHny3aau5ysnc5Jinqjb6qKwn7o7iGQKsyri418M8xSxGzpd4E7ae1H7gSFZyk/HbhENfqr87dj6A9gCgaRZXZPYtLSeytd4wV5BxhRl1ifAo+ZjrFE6sUISD2uEFVonWgFRvvsYN6MfkBzVI3fxyV+npSOtvgitFErenAd0xXgGYEFllGR22iACHVZDcogX9dLWa7V7LuLqGoK27VdCIvA54+AtuQghmMoebrKUIAzo6hgLe4iR57Kz1WYu61eNRbreh6/whXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bOSlTuAYTVOeERwVGR3p+KKM6Me67p7yluJUhfPgZAg=;
 b=S82WCrt1Bq2yTYSZD5i4cq+k7LB5la3EiN2S4rEx5yseh9LWfte1im+uyw6r+h5u5GuEp1XzrdmDhn2og/Au2BpcAQyiwCK2MQ5dA+PTiBpAC21OALduQqADttAbgxvRXlVziCpYUQR2pKcetNh4hoiesqctMh9n37zLFqO8rhk=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.27; Thu, 7 May
 2020 06:27:53 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:27:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode
Thread-Topic: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode
Thread-Index: AQHWEyQ/X9paQMeqe02bO3iMGW/zi6icStCw
Date: Thu, 7 May 2020 06:27:52 +0000
Message-ID: <DB6PR0402MB27607B567D3FD7731A41E75688A50@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1586954449-17463-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 04ae1dc3-490b-439e-619a-08d7f24fc5df
x-ms-traffictypediagnostic: DB6PR0402MB2744:|DB6PR0402MB2744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2744C3886AEFEF565064F66D88A50@DB6PR0402MB2744.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4+Zw9putWZBwlZ55k0+CYjxEmrqfjgDabEz7AB0waPUEMij3ewkjvCjzVCp8sk6BFnNBe/bvCiF4qFLf3K/LD+tA0B63/1SlI8BS5XCP6rL/zcVH51Skns7HBHSAKyPaTSMJUEi2JQEIIY24Lafm2SDY66RMY8FbAxnWxaFgkmITXDdH7FUQi96KQtPpF7q3lO1xjTp4t0og9vsa/auiwq7ulOZKJRuxZ+YJq8BHcSs99yQuXttrtQjLydJQN3ep/CVU+/rvsRG+RnfPgX1asfIQSHFILJWFrgzWlY26NhtkSPAeACqTQOt/45VR31D4FByPrV7uxJdlOGCuHTgpbr35kwJjcUsPMzVM7Zms6umIE4wWO4Ymvj8wMuf4bvYlXfzV7sdeEgi7HZ4DXYMhzHnCGFdM1Ab5KpJQ86kLMOQ3k0PI9gDWTGOEoXycSTC7LWRARwlwJ62dDFgm6g5mrlvK18i/xiYfQXtEjeAeQxCOELUS3SDS2Q3nsHD9NUQ3HPOYzubLfdWPH8FNOL07lXEnBD5tjlQ6jmKmzudrgNTQ1I+PW/MTBFtm1F2Z8fC/SsRC3s79E4uKWqZWmoc/rN+9nuFALXAF5w+a0WCjpSI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(136003)(376002)(346002)(366004)(33430700001)(66476007)(64756008)(66946007)(66556008)(76116006)(66446008)(186003)(8676002)(33440700001)(71200400001)(8936002)(966005)(4326008)(26005)(7696005)(5660300002)(6506007)(52536014)(33656002)(55016002)(54906003)(44832011)(9686003)(478600001)(2906002)(83320400001)(86362001)(83280400001)(316002)(83300400001)(83310400001)(83290400001)(110136005);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: u/s6uEjVIpyGgHYyXKYuFlC+Jh93FlHh2GKDP60CAuFpUVjX/AwHttgah7aqnmGmgCO3FqDrcAr+MZLRrCv+LhPzK3hxjgW45cxfug45F6NxRs4/S5D3/Oceg5D9QvbCFEp4aZl/vkW/yQ8GfOD/bNVMvsGEpRZWKDHV4/5xT7wmqGnFejKmVDePAgwqazArTlzE6FTt6I1qicxiq46ER+iTccuQJHeWPgngj/1aHSd09fNO8XVPQqqJu9k64cWe6BHvWh1bW3WW2UpBt+Vm9VrjcAW2tilEKM4MSXGXV8TMzSRsFmPa+H2avnkZHK/LjZlmEPzEk2AOhOwnLBLEnI8fBnUF6xtn1nRv3cEYU3rKvrpzsMlkPjxns6VuKau5bTfl6nAVqhubjKr8Qvw83fg2LyjqGhDPgQl9baJE4Dgy6RepBi/XODvcewIafWmN5h5af3hSYjEekGQrO7+WXZMaxVhCRZkvRVJpUMqs4Fr3vx6UplC9GxNEZ3wnhvWzZpRM+uBdyQ1pQOyAm82MreMgExmT/JCxIgH5gHwXnoJNPocieoVvUJVVWov1nrwmBgvCs/Mrc59BKLK66blSN3a2EgcW7lvVeEKunxfg/wQnmoYa4JqyibIlnbB8mOh0a3yL151YdbBcxUoYf/xGAMPf8/Pghn7Yf2W295b+slmTg0s5rKoHeHHb1HgznEvumVMBT6avhfdChZM65fYTIrFAyEr1WCfYe9FUQTPWrjMBVWRjDWMaHX6FiB9P4mHgsBEfL78W5+li6CFcPreJch01Vvjn6Ozn93oM1UT5wZQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04ae1dc3-490b-439e-619a-08d7f24fc5df
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 06:27:53.1274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qQEfdXQwLvF0qJzhouPXTpeDBuA8c/sTTgtuCD48VXY+VBBIZXcCspbx4/L82WFb0HQY0u8mSl4aZILyoBaB7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_232756_159353_C5B32EEB 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.72 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH V4 0/4] ARM: imx7ulp: support HSRUN mode

Ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> V4:
>   Fix dt_bindings check
>   The same patchset was wrongly posted as V2,
>   https://patchwork.kernel.org/cover/11485107/
> 
> This is a splited part from V2:
> ARM: imx7ulp: add cpufreq using cpufreq-dt
> https://patchwork.kernel.org/cover/11390589/
> Nothing changed
> 
> The original V2 patchset is to support i.MX7ULP cpufreq, still waiting the
> virtual clk being accepted. so to decouple, this patchset only takes the run
> mode part.
> 
> Peng Fan (4):
>   dt-bindings: fsl: add i.MX7ULP PMC binding doc
>   ARM: dts: imx7ulp: add pmc node
>   ARM: imx: imx7ulp: support HSRUN mode
>   ARM: imx: cpuidle-imx7ulp: Stop mode disallowed when HSRUN
> 
>  .../bindings/arm/freescale/imx7ulp_pmc.yaml        | 32
> ++++++++++++++++++++++
>  arch/arm/boot/dts/imx7ulp.dtsi                     | 10 +++++++
>  arch/arm/mach-imx/common.h                         |  1 +
>  arch/arm/mach-imx/cpuidle-imx7ulp.c                | 14 ++++++++--
>  arch/arm/mach-imx/pm-imx7ulp.c                     | 25
> +++++++++++++++++
>  5 files changed, 79 insertions(+), 3 deletions(-)  create mode 100644
> Documentation/devicetree/bindings/arm/freescale/imx7ulp_pmc.yaml
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
