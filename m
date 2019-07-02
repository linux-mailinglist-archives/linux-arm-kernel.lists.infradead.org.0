Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374F15CA12
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqPzd+Y/I7Y3N6LHuGcbIhhiPTFlo59mzRHQtpPqoaM=; b=BrFwF3eeDUqKaf
	C88Uzd2aK0AY8neWNS4UFvgxDJJ3RT+5cg2zt7FxyNIoPvES3LzXpJpIv8LXNmj0ASNqKVdnt6+Hg
	/YZqUKgTj9AuIuyUBfQnJcNKUG9ARdWmTH4jvq1r3WRhpnOuPX87AGF/8BoCNli82FAm855pqMlxy
	7ObUaMDog2L0GBH10UtlJYkT/Q+Kt9y7QmrTl5oAj2B78QAselt3QLcFAUlrYh9ZUdHdxMVmuWRA4
	eYmWlb0SIczZhcpPVwFPwoTHac8HqbmBFaxbuNr8uB81K8mU+KcuVF+NIL2MaFRLv+zXFNLy3W3TM
	JFzyfcHJjbrfulyo6A1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDZM-0001Pl-NF; Tue, 02 Jul 2019 07:51:16 +0000
Received: from mail-eopbgr80085.outbound.protection.outlook.com ([40.107.8.85]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDZA-0001PA-BG
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TYlmHxUy/fHLGSiFQ+YJWdEtdH9/VGB1oYYg2CsLb9k=;
 b=rjM7Jsv45tW34QZJHspKQ9AHjQ4RfeIXJP8rb1WhdSN7VD68Qt0nEUo8j8Q4zV9sCsMDlI9z/SyzMbkYxf5FKYMw070k62EpkUPSh21bWX6uGD5YAcpgeGnrAjDmg/fm43jh+6xrDtMDdBqOZATE+VgyS3nRZXBHT1x63CHJuR8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3787.eurprd04.prod.outlook.com (52.134.73.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Tue, 2 Jul 2019 07:51:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 07:51:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVLWJufgF2wmbUA02qCFDX/HZj7qa29qQAgAAAUZCAAAOOcA==
Date: Tue, 2 Jul 2019 07:51:00 +0000
Message-ID: <DB3PR0402MB3916DE79C32C23A8C3C11280F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628032544.8317-1-Anson.Huang@nxp.com>
 <20190702073522.blujpmxddw7brr7c@pengutronix.de>
 <DB3PR0402MB3916EE2A43DAFFEAB592BE61F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB3916EE2A43DAFFEAB592BE61F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e08c552-c7e9-4901-07e7-08d6fec206b0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3787; 
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-microsoft-antispam-prvs: <DB3PR0402MB378789AF28B5F295F20B2C9DF5F80@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(396003)(346002)(376002)(189003)(199004)(6116002)(3846002)(71200400001)(71190400001)(186003)(76116006)(6506007)(68736007)(66066001)(26005)(76176011)(73956011)(53936002)(66946007)(66446008)(66476007)(66556008)(64756008)(33656002)(2940100002)(81156014)(8676002)(8936002)(55016002)(81166006)(6246003)(4326008)(6436002)(9686003)(2906002)(102836004)(25786009)(229853002)(86362001)(446003)(11346002)(476003)(7696005)(74316002)(99286004)(305945005)(7736002)(6916009)(14454004)(256004)(54906003)(316002)(486006)(44832011)(5660300002)(52536014)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3787;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cWMDLC37lxrPVkV3M/U5YcMnK7zMe+cIITu+CfGb6eKJ4WhGx9gpOxFLBXEyds8dtLk8jTzh5MZUwOa+fByglPucFaorDx51T6kI+FwtXdAcE8Hns6mSi/zq7+3gVdAvghXs+++eTbIoiq122TsTIzUQg4D5PfjyFCkd6y6W6ZUFJGorMC0JH18EwJcFb3JdHA12+1Avsesx2pHA/YGY4gcdui8duag9iABDuuIf9p/PegEe4ubFY0x05b8foQuCgXTxUQ36DUN3KHGUv7YETsDxv0spn0KvpkfuXkM5sQmeqCedMmngLqIN4t522rdDe6WBB0LUo1LKnMcpK/k69wLKkKdEGP0EGOuRaK5Z2iiRXRda5wIr/KQcGBpXslxroLoBOU2mBCV7/m6qpnk130nG3mlFSzQxNLexGiTRgQ8=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e08c552-c7e9-4901-07e7-08d6fec206b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 07:51:00.7025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_005104_393093_79D3E913 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, Marco

> > > +	hdr->ver = IMX_SC_RPC_VERSION;
> > > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > > +	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > > +	hdr->size = 1;
> > > +
> > > +	/*
> > > +	 * SCU FW API always returns an error even the
> > > +	 * function is successfully executed, so skip
> > > +	 * returned value check.
> > > +	 */
> > > +	imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> >
> > Please can you add a TODO: or FIXME: tag and also provide the firmware
> > version containing the bug? I know that developers are very busy and
> > follow- up fixes never reach mainline ;)
> 
> As I replied in previous mail, I will send out a V3 with below comment:
> 
> +       /*
> +        * SCU FW API does NOT have returned value for
> +        * this function, so skip returned value check.
> +        */
> +       imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> 
> Thanks,
> Anson.

Sorry, after further thought, regarding for SCU API without response, we should
pass the "false" as imx_scu_call_rpc()'s 3rd parameter, so I will remove the comment
and use below in V3:

+       ret = imx_scu_call_rpc(soc_ipc_handle, &msg, false);
+       if (ret) {
+               pr_err("%s: get soc uid failed, ret %d\n", __func__, ret);
+               return ret;
+       }

Thanks,
Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
