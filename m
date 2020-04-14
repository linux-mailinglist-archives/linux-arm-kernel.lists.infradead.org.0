Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032971A8B89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 21:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=LOqyotBQuA5cpIX6m62PINpNXQgWds8UrdAvjDIru9A=; b=KjrdsV8Db9MO4I
	+50JKSOM0Zgvfs72+RYa8GvVwK3hA0bRWG36lRzHUni171apKN4YqRRyxi8gA1vm4/g0R9brbUsTi
	Qe2WKcc3KRhvMKLnlfeP0ztuovNwpz7wCBMmmn83EI7naZ6HUWwlNQc6b55HgL+QP2vpEVpfIF+ha
	vAAPAJEdbMUL/nIXVK4gn3TB16rKkvrPGILmKppFThQ/FcYbFZKxJcw1arP063zATkmJzW4BrGJWR
	Inn1QI5wgTTAZWC1ob0XPhxz4Acj8BwGqB5QDSXjlu06AwdKJ9BWdEuVjojNYenby93sLDebNHeB+
	cLH26HV4CpKO0DsQIWJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORdr-0007Zm-OJ; Tue, 14 Apr 2020 19:54:43 +0000
Received: from mail-vi1eur05on2056.outbound.protection.outlook.com
 ([40.107.21.56] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORdk-0007YI-Af
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 19:54:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6xL0GrY/tFoNahqe+hs1n/qqY28teNHmaKNZ+aIWV2qRott0LHC0zeUz2Ksrn2Kbp5uk6Au+/DJ3VEzjfC/sysTQuk0qM9qakwLJnBdNqXrSRo4YqZSXsOFTUCVM5B8OsdKqL7xI0MTwTfB8OOjLejHkfoq35UU9R5MYAJv9+3fkl8onNveBhUMHK6aMajcnjeYzPkUi8QBMb1K/lYxGpsgAfO1Na35I9Xc6SS1y8cQOHnzbmh4sRPKUqygah1NhZU5o4rcQ3E7W+wAzcVQO1UwwSR7tyTfS5YqeIgEroepxgIPrOwl/RQWi4V56LgkEI18LcKPAOQ1IvFGo+SiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NAbA7TrEcUnypmMqfcDxi3hA4qK/qCuWGuM1yqv9xNM=;
 b=BeQP0W25zWF7WpctH6E9kvuqSIK/NhKNAdv5+UVvU2iDeKc5jtb4jLrgGi5TrTtydvyMvQhRVZ1fX3n9oKf4VNxZ79UsTamzEWLDU2UWh2ixu8LLUN76oSKoDokE7M1mFZVuXhuvmkg2tyE8eYNAf3WkjltazqAkV3sDuoLFsUQJOzS4DHPk6NQZ4sw1pSbuB90KWMQHKE7uvvpNYxtHIkmrdVKKnBGmXkyau8sC1A9lLpaG9rjdpc9bb03uEO+iYaYCRZd2Vyerr0Rh2J7dNEfA5j4T9lhZwNnd69iJ3As0JvDzAelRJJluF3ZPQ52WMdAOIyH0rHYRM0ZEaUtiiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NAbA7TrEcUnypmMqfcDxi3hA4qK/qCuWGuM1yqv9xNM=;
 b=UBzHBSnQcVFu0Flrm6GKq83vIVxCxLhEdtx+XXEOIJbkHY2nov7ctPIr/9Pe7RBGZm9kzX5e1xPgO3i6tXo4QHbZnDGxvCZvoCfJhP6PBUFNhUdn+zOtxSuo3qonGkAHfGmwbNnA5j4vcB8bJJqme/CUTSBPbRxMl7d/0ZtpN6c=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (2603:10a6:803:12e::23)
 by VI1PR04MB4573.eurprd04.prod.outlook.com (2603:10a6:803:73::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.17; Tue, 14 Apr
 2020 19:54:29 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 19:54:29 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>
Subject: Re: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
Thread-Topic: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
Thread-Index: AQHWEmDd5kEp+mUChUCEq05fLBSjFw==
Date: Tue, 14 Apr 2020 19:54:29 +0000
Message-ID: <VI1PR04MB69417717438360A9858DD0D6EEDA0@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <1586870475-32532-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d1d2ecd9-3fd5-46a5-8aeb-08d7e0ada4e0
x-ms-traffictypediagnostic: VI1PR04MB4573:|VI1PR04MB4573:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB45730CF46F0347609CA553DAEEDA0@VI1PR04MB4573.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(366004)(376002)(136003)(346002)(9686003)(316002)(6506007)(110136005)(54906003)(5660300002)(7696005)(53546011)(52536014)(558084003)(71200400001)(55016002)(33656002)(66556008)(8676002)(91956017)(4326008)(26005)(66476007)(76116006)(44832011)(8936002)(2906002)(186003)(64756008)(478600001)(66446008)(66946007)(81156014)(86362001)(15650500001);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a1AhqmjX3lbRSqlbWv3YRxRV/UdZK+SIS2iKRNQUGlPtYILaeFvF4eQ9puGLEnhflt2bLTrSDZECLcCHS51ANc0ITevqXfF6yFFqtDHzR8/QTXFDdPASfkmkx5LnT1rkjeyBcIKBh/WKEAEbtJyUxy7s+Tmz3dSwqsCCpgnPi/Bbv/eh7nlSjP813AR6RB3Rjy390s95xYigjATZtJPf0dl33jSHX2h3eyQljSzmirUuKNW/dL/UKYgwpa6Hn9+yefJAyIkwMwPKEKs1RZ4wFfCA7Xz0Cp+Qa6GGdzwOLXLDlUTUk2wjqERuhz7Ff6cPNuY7ejyqzybKYELWfXoPKO94nb4uhWbLiklPRyaKkjfAg8Mbm0O1XuUMBiZecES/rOYAS7q+QyInJq3wilA97SUWArYgoqP5puJV/zxp2PHj4Bw/itL2xc0FLgRr03sZ
x-ms-exchange-antispam-messagedata: JKP8+Y+26ZNQZnpHKZQZ4/huXFB+BM+XXOOZb1qc1+t38a5ZcgnjtCwlWaHHnMtTem/NulMTkgMkuwkKOTJqtBHp7nYlRAsy1Q1Emkc//Z2GOUdl59YNrctcXXtzw0kSGB1mY42WzhENdi2SWAtw7A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1d2ecd9-3fd5-46a5-8aeb-08d7e0ada4e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 19:54:29.4684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8kWnKJANn7VXq5W/KhF0gyXWaPLpBumki6omih3Dwj9c9cmcD9Vkx9mcEG1eq+1HxJQYeLdRodV7LOzBSTWkOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4573
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_125436_440846_E723BD71 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.56 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [95.76.3.222 listed in dnsbl.sorbs.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "o.rempel@pengutronix.de" <o.rempel@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-14 4:30 PM, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The i.MX8 SCU message header size is the number of "u32" elements,
> not "u8", so fix the check.
> 
> Reported-by: coverity-bot <keescook+coverity-bot@chromium.org>
> Addresses-Coverity-ID: 1461658 ("Memory - corruptions")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
