Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5FD176F33
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 07:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyE5+w35l2wxWtmVeRamaYEPPBqMtPgR/+WN3lDZtiA=; b=WDlxQij2SgumzW
	hGhik8aZLKmxvSO181ejQ+z/f5tJZibZ0FYMW3r3sj4KGDN+TkhfxtAVFrIorkJZMAyseR517ahRC
	JhNVrGfZndf/HCGa0rFowTXU1qN8kcPTAkGEBlujNkb7IVjO6YDCaugKfCitFhk966jZBcTam1Gb4
	ZnftgM239JWGakkvJs7IXQxrWnxONAqT6W5+3dgQ6mzGnXCVa9jIqvMmG2PF4aJr3zqe8uXhO9m0a
	4LUEQJP4oJb1/fWRd0uiNzrPP27P4vSGUZKnU8M7X1oWaO078JFQjXvEbGuCfYxiCn7bqFbYbtzPW
	onpwVa2fCLLviSttelEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90qk-0007PE-A4; Tue, 03 Mar 2020 06:16:14 +0000
Received: from mail-eopbgr80058.outbound.protection.outlook.com ([40.107.8.58]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90qc-0007Nk-7a
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 06:16:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hwd8hbTs6+x1c0JHE2bAAcweuQd2A1jsM6O0Q+WeGspavKf7vBOxIOSqKqjT4Rodo51BBrQo41R8toWWNKzLt+Wy/YR/cOfOG0eiqiQg7VZzgLtcdQAisTbXM5Z2DuOYcM4KbNuCQnK4sYxIpkdYd+27YUER/F3WDCtG5V8QGkn7UZNADllUsVmGc1H8qsCKLi5pJ9Q0Ivs2gXzvbEuxgsyB0P7+UrXk5QsKEAXom34z5Ij4hdru2vTEp6p34iVW0Pz+HHQtI9tR3uDUOSgxXRdQJlEdvOCdYJpMzm1vz6zZTyuUhjnKGdOqWOLaWLYzUSHd5Pg7Jzk3R6gbotoTaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQJH8eVrJTmgv9yhZbRpk0PKjGnyD0myRVUaM1wn4og=;
 b=BM5QnQ+S18Bhjq0ZVQZfDUBEDHkaOZc8ecIEllmxIVBQ0f3wzWQpsORtg9bPeIQPVxXwa8AYsvun1M7LWTHovFoqNrZbkec/VvMU3GduY15bP2Q4uWTiFuhhsRiZ3U4zBBmnIz9MYQ80m1gcJ9gXz481SMBdatMu6hXjXXBugETpDlxIKHb1WfMhb9aJP8datGUpg0WXoe+6D0Fqe4SGEKjuANsKTiFC9RU3YytBiDZ/2oY6/hnEnV4LVERXIM9W70hkY5FoXVhL+0oYcZbmMUgZIhaFdNKRGp3d0HjOQPPC6sKokWbDyNgdPQMVu4hageV1s9HanSsVBxNR8lOm6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AQJH8eVrJTmgv9yhZbRpk0PKjGnyD0myRVUaM1wn4og=;
 b=D44FedmNw0KjmFpM0DTADyfGhV2lNnZQIJaKtX7EF7E7yunxotliUa34sOyp66jntOtnpdId8LoLZUbvLBNcGrudSjBwMHPE00mQCCXUQ5sRoCiZKapX+FnMO+KbGHs4VH1sr2cYwql7AR48684wK8ARu0xh0Qf3MsYP84HrkXI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6881.eurprd04.prod.outlook.com (52.132.215.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Tue, 3 Mar 2020 06:16:03 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 06:16:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: RE: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
Thread-Topic: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
Thread-Index: AQHV8QJkDs1b7gEXw0mPCPayRF0Q4Kg2W/SAgAABb8A=
Date: Tue, 3 Mar 2020 06:16:03 +0000
Message-ID: <AM0PR04MB4481FDAD041F6476FFFC0F6788E40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583201690-16068-1-git-send-email-peng.fan@nxp.com>
 <20200303054547.4wpnzmgnuo7jd2qa@vireshk-i7>
In-Reply-To: <20200303054547.4wpnzmgnuo7jd2qa@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1aa7a1c6-2be4-4963-9232-08d7bf3a59fd
x-ms-traffictypediagnostic: AM0PR04MB6881:|AM0PR04MB6881:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB68810DBBF10F0CBD7848960B88E40@AM0PR04MB6881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(346002)(376002)(136003)(39860400002)(189003)(199004)(7416002)(54906003)(86362001)(4326008)(316002)(33656002)(53546011)(8676002)(6506007)(71200400001)(81156014)(7696005)(81166006)(8936002)(6916009)(66476007)(5660300002)(52536014)(66946007)(64756008)(9686003)(66446008)(66556008)(55016002)(44832011)(2906002)(4744005)(76116006)(478600001)(186003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6881;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kq9u7fWzbqJEWzfXOWhF1/ABQhfy3l4vnwsBdZ+UfYSR8n5RscehzaisJBg7BcwK8a4SwD1SpUL1t/iboBmg8YdoQynFMHoxTge6KaG5eBQ8bybs4CHh0xuY0GcJTviJtLIMh1UMFN3nSorrw2y7tkhKTwVbq5yC1wTz3ae84ZpoI5I2MjAtf1goK96ln2TLL3K1rfgRWtd/yc7LwNG+XVQXdAEkqFlqzUc9BxRrSsQ9IG55o6YRj6paCkmwXrZ4QU1vi5xyTM9NzMgkg7j9YREr7QSEfqc0xF0J8nWxOVsP0w01suBopVxaT+KaonhtJYt029In3F0+FZNYDERM82KWcwP8JBPGs9ushncMSqqdqULqycbxD4+UwxK9B2ZPL5PDu0LQXbkgEmWgkrEyL2OxL87mdo6pg+AV1gdM4fW7x4GJiKNn1fxT55ThRQ7D
x-ms-exchange-antispam-messagedata: NJmObuxTmiL5veKVUIGku0zG+hJ9r+hk5h3j1pdHR2u8h9OlnYHtSyFcPbM+2PQW2TTVrDWwq2iIOz/D6pYyOOPLDw9UXLcZurUrg1FPd7jZOSjGEn+uSt8iobjE4ADtjos2lknTIvygtLiRUimUdw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aa7a1c6-2be4-4963-9232-08d7bf3a59fd
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 06:16:03.3943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rSLbgHuPHeijrHC80RaA146NQmNPPz3gJ6Wq0nW/aFswp3fCu0ALUBHJLRldxAHWbjvt/u8CvfHGzy3OPLdRKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_221606_277107_888A8BFA 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

> Subject: Re: [PATCH 0/3] Convert i.MX6Q cpufreq to use nvmem API
> 
> On 03-03-20, 10:14, peng.fan@nxp.com wrote:
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > Use nvmem API is better compared with direclty accessing OCOTP registers.
> > nvmem could handle OCOTP clk, defer probe.
> >
> > Patch 1/3 is dts changes to add nvmem related properties Patch 2/3 is
> > a bug fix Patch 3/3 is convert to nvmem API
> 
> Should I apply patch 2 and 3 ? And you can take 1/3 via ARM Soc tree as this
> shouldn't break anything.

Please take patch 2 and 3. Without patch 1, it just use legacy method,
not break things.

Thanks,
Peng.

> 
> --
> viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
