Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C485B113D83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9NJKSCQX0wTYDOzkYMKtiVKPfKFGRzFn7TTNLBtNn7s=; b=ePAlCP21wYa1V4
	ullqzxsCApW9jn2gGMD0G6TyOwYWd2RacMWwi7d8rdGUdVSQ81w85+vRyy8GN0yC66+YR/7XnO15b
	d2nNUtavhuIKOyS+YL3JVYeQXsfxqpUQyuIpnikxlDqAXIVANgaMmqgPlEMbFPYjy9kHMV55Il0P0
	I4eYEQR6h4KlWqDtygWe5PTkhCiUckAwCjUUcplBP3afTKn/fcZpCIDXQ32atsjxh2Eh2KoQtbLFJ
	eWk+Uq0cM9ic1Y6S44gYj48RThUaqVOZpDK80xWXG0jDwaSw9JwQiAAz5AGJSO0rMi0W1MRGnA05d
	v0h2JXnwoYRlMIvX3xhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icn31-0004Au-Gh; Thu, 05 Dec 2019 09:03:43 +0000
Received: from mail-eopbgr140057.outbound.protection.outlook.com
 ([40.107.14.57] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icn2t-00049X-Ce
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 09:03:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kb/FB/n46DJAT6a08YhGTBVuH1pqB+2yq5E8ExJFBDHhoiYSJzVFeejpz2QBrdVldf4fE2q5Eeo2gll5cAHsvofKG90ziSI5rt0iPKl3QcT/XSYtmdEpvt5zK+dUJHhsCKR2Otso88+y9HJtcRD9v+dS1pCcIRtLQFGHtbDY5Q3JkCnLr+K5u4OPv4tZfPnjzjzeqDW0tQeApDZPlgUDRw7kDZAdJFYTDCNtN4CYM6lbD43r+lf4aiR7K4RN1vnCheEStQDsHdw+pcV5SPB+MVgwSsxDhBR+KUNVrZaUNtLQRpurT4uo9+YGP04UToYIywj64ISpyux5aBx3wSp/fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTAl8bpjfpkwKYCjP8Dp1QyItuQp9uDUzNgKgnr3Uvo=;
 b=GXNElzX7UqvbANx6+rjOUjjIss2NkZpB9gU10FiXRoZBG5f1IgYIpU0zeWNMApJpgm7kb94EDxda+rfpLZybNw6qkZ7rPAquJi3K89nYE69nwn9yfGXUhsRpH6Az6xg3I5lNSFr4akriM9kJpiBhVdt//j+s0EL1paiUBUrUdKp57udskpAhTT557unEx3vkYgMCbcAUAc3MdRvqu/eDFeJvid/cJCLEDTTgyDsLssAwc6nEYHYvrYmBz8mzGoHczXtn15HBhWvyAMMHIrymiJOEefVu24GuHTcItzLdvVvE6aq76mqvLRSPhHzF2pNZf06oKoFf8Hmo6Lw9TOddSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OTAl8bpjfpkwKYCjP8Dp1QyItuQp9uDUzNgKgnr3Uvo=;
 b=EH31EScOK8JIUj918CHhd/nbLUiB3PPFYUBJK9NF+MH/aalm2wIuQz2COo+AqMZlU5+B6TAoN+yGPK9Tdsefhwejp+ZQbyWdvLySoliNdEMbcyawXKdlbjaRtzDDQAmRRrNV1vQiAyWYTdiHMmW9lfmKLdoTdoUkwsHvjofKaC8=
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com (52.135.138.150) by
 DB7PR04MB4364.eurprd04.prod.outlook.com (52.134.110.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.21; Thu, 5 Dec 2019 09:03:27 +0000
Received: from DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0]) by DB7PR04MB4490.eurprd04.prod.outlook.com
 ([fe80::4182:4692:ffbd:43a0%6]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 09:03:27 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: RE: [PATCH] clk: imx: imx8qxp-lpcg: use devm_platform_ioremap_resource
Thread-Topic: [PATCH] clk: imx: imx8qxp-lpcg: use
 devm_platform_ioremap_resource
Thread-Index: AQHVqoum7IH7ZRFDgESKl5wnHnxd3aerQBcQ
Date: Thu, 5 Dec 2019 09:03:26 +0000
Message-ID: <DB7PR04MB4490D784508E59EC1C60B586885C0@DB7PR04MB4490.eurprd04.prod.outlook.com>
References: <1575454349-5762-1-git-send-email-peng.fan@nxp.com>
 <VI1PR04MB7023E9790323200A4B122445EE5D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <AM0PR04MB4481FC4A8FD76A01242424B5885C0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <VI1PR04MB70232C511E4F43360D7533C9EE5C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB70232C511E4F43360D7533C9EE5C0@VI1PR04MB7023.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ed7ac84b-5d75-4404-8ae4-08d77961fdb8
x-ms-traffictypediagnostic: DB7PR04MB4364:|DB7PR04MB4364:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4364832DAFE9919974B3E6C5885C0@DB7PR04MB4364.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(366004)(39860400002)(396003)(376002)(199004)(189003)(54906003)(44832011)(9686003)(55016002)(6306002)(110136005)(6246003)(478600001)(71200400001)(25786009)(229853002)(14454004)(966005)(71190400001)(99286004)(74316002)(186003)(2501003)(8936002)(52536014)(33656002)(3846002)(5660300002)(8676002)(4326008)(102836004)(26005)(81166006)(81156014)(86362001)(305945005)(2906002)(7696005)(11346002)(76116006)(316002)(64756008)(66446008)(66556008)(66946007)(14444005)(7736002)(76176011)(53546011)(6436002)(6116002)(6506007)(66476007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4364;
 H:DB7PR04MB4490.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OsetTLeZXtdnBXOEqvX2u+ObvOXgrHlnlZm0cx2XJ9cNNPBROzbmUgn85LqirxwScAWKita14uVS4v4QfJdYKvP6rPDZlgpcrHRyLPkMpih96FC4ha4R3m8N2OuTbDt6H0fa8TcGXruO8yHEgBuawFLL/olnPkVzQfQhe93WV8Y1QSLcj/QoP4kI4j9hQ11n+u3uIOP8XqcehuC+RGJLElKWQPqO3WYrcTnvEvf1McjOqYnb7rKaTRvcyUuFoEGPwZRR2bn/S9NFHRsqLwWRREtlm/6MVgZFsjmyY0Yqq5mMotqnfplQdva6d38Lnuycy0tyBzSxP5vIvKrZfVYenZrWeRUXVuqR+i3AqXcWT6i+q1cN5/8+jbb56JkZiuLZMaQw5dQpNAD8kuorH0Br5GnYePd2Tvpt4BF5Q59hukSSrSA4dSwS4W5iFM7g7+QwCmMK/iiC2K4g049ULT9k7AsDNc/kWZ3vBqd1+PfUi0htgV57/xuzchG9MyhNyL3Y0gBTF/Jq4aySQ7ctVaUWog==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed7ac84b-5d75-4404-8ae4-08d77961fdb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 09:03:26.9254 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dpXgxSpG0otRlaEKzHLKngqRa2w4BuIbCDuKRdoetF1i5YkzJ37WDyVvQwJShqVQCv1eXLvw5xIpbcgUJd5W7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4364
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_010335_434204_0022075C 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use
> devm_platform_ioremap_resource
> 
> On 2019-12-05 3:38 AM, Peng Fan wrote:
> >> Subject: Re: [PATCH] clk: imx: imx8qxp-lpcg: use
> >> devm_platform_ioremap_resource
> >>
> >> On 2019-12-04 12:14 PM, Peng Fan wrote:
> >>> From: Peng Fan <peng.fan@nxp.com>
> >>>
> >>> devm_platform_ioremap_resource() wraps platform_get_resource() and
> >>> devm_ioremap_resource(), we could use this API to simplify the code.
> >>>
> >>> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >>
> >> This patch has been posted before and it breaks uart on imx8qxp-mek
> >> and possibly other things.
> >>
> >> The old and new paths are not equivalent:
> >> devm_platform_ioremap_resource calls devm_ioremap_resource differs
> >> from devm_ioremap by also calling devm_request_mem_region.
> >>
> >> This prevents other mappings in the area; this is not an issue for
> >> most drivers but imx8qxp-lpcg maps whole subsystems. For example:
> >>
> >>                   adma_lpcg: clock-controller@59000000 {
> >>                           compatible = "fsl,imx8qxp-lpcg-adma";
> >>                           reg = <0x59000000 0x2000000>;
> >>                           #clock-cells = <1>;
> >>                   };
> >>
> >>                   adma_lpuart0: serial@5a060000 {
> >>                           reg = <0x5a060000 0x1000>;
> >> 			...
> >> 		};
> >>
> >> Previously: https://patchwork.kernel.org/patch/10908807/
> >
> > Thanks. I think at least need to provide some comments in code.
> 
> Yes, comments would help. I think it's actually the 3rd time this incorrect
> cleanup was posted.
> 
> But mapping entire subsystems (32mb at a time) for LPCG is deeply
> flawed: the LPCG areas are each 64k and they're interspersed among the
> peripherals. The correct solution is to have many small clock providers.
> 
> This is done by a series of patches from Aisheng, I think this is the latest one:
> 
> https://patchwork.kernel.org/patch/11248235/
> 
> If some aspects of that series are dubious perhaps they could be discussed
> and maybe the series could be split into smaller chunks?

That would be lots of lpcg nodes in device tree.

> 
> That series does brings many essential improvements to imx8 clk support.

Seems that pending for long time? What is the blocking point?

Regards,
Peng.

> 
> --
> Regards,
> Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
