Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176D8172DBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ8mKUQRnjGRrLb6JMUHHGdR/lwzh9Qq/IL7a6a1jok=; b=f30LxOmzZe43Bq
	nOzclVK3qrdzaBMItQiEtbQ2Zl7fqioh+VauHOOYTD65km5CiIaZ68CfY/aPXwaS42ubenjsWkmbk
	BammePkUGAXLAISHKDUN4F5r+j71QdOCUwKhmkES7mAQQaLO3NRbEy38h7BtD67eD9CWdMPOK2Y8X
	QMlikDcQUeI7Nx4wPaczHMBHqyYMpy1+nGbwJnVKVHJSOYl0qNnNofGHygPR88USQvfB1sOXImRiJ
	7jbfNsHbs8kROzWhOpYVA+1jrCkbCp/G2XTfaz1dH3paJtk+rdJdhvWNVLXjvfKGzdY+Gk5oJuU3u
	m5K8YS4Bel5pbQ8I2t7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Twc-00077b-Cj; Fri, 28 Feb 2020 00:55:58 +0000
Received: from mail-eopbgr50044.outbound.protection.outlook.com ([40.107.5.44]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TwQ-00076p-C5
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:55:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9x5w8S5ZuxKZhfULK0zW8aLlVkpCZagd5BK132+uqwmzi71aUE5qYFyeEmDZSSDoD3HFih2KhBhHoqYPgaY+vcFxg/LNfoC2cDYVnOq48h+F75JJBPUXuCqtFXS2BqIg0ZgW5sE/FYAhjrcaV2WQ+z0NblYkgUz1YvpX2nPvdXKlzACj3Y7HiUExlpqtT7rK8g9M+V5W52OvdwXZnBYrmLhw0sZr87DqY6DX1MsGAyp2OxX2ExS8dhsKJUGpadHGiV0CS1eu8PAt6g9krneX8vUNjq83y6E9w3hqjIOR9wwUBkVy9jt/PydMFKJkX/xGJuHLwlL51m1aS87xfAY4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qchbz+BXzEM1n+VLSmDy8dZQNsTXnRuTMIBIetMXBY=;
 b=f6aJWEVOC2T1rTe/PUBig6Q2ZfelaYuZ4dOSqyGIliH59dJSoPW9Bk3WjUHKm5tsXrLiGYeSfj2vfOLXHBES2d1pIzd5bx4vynkt6f/s16kMqF5C9JqoUNFvSQV4oOqGKQ7lL42n0CxM3Tdc1GfchOFbW3V3V5wnOjEQlrLaseLU1308uQlOKk9F5LNj9Y/Qf49HzfWQuJRqFHpLnFb3fpXR5LwlEXx3h5FlL7aLbuqF/ibGMBfsX03HboPmYjEe4ySRoOV6jqxDybyDO7G2J8A4zpWmZzAbqx9pbF20d2Np6j7KOElp9Z5Km+3ssj4fC17RXqRhOBw660BAzebV4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6qchbz+BXzEM1n+VLSmDy8dZQNsTXnRuTMIBIetMXBY=;
 b=haRWFoiI4m2X5CT32j9M2XI3eXOqk+c7t7Hl3FsWqZp6D0aiZ26LDBqQWiBJ5hwLlti27JDpgcdBPwn7WjIyVnIre0Phk9kGMwKtlG8Nx+DverpXTVbQ/Jncrre8Z/eN+QmttBQYDB7WZSOfjEgbp26jnMpO6QkfOoHIN7PCfhc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Fri, 28 Feb 2020 00:40:06 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2772.012; Fri, 28 Feb 2020
 00:40:06 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Oliver Graute <oliver.graute@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: RE: RFC: imx8qm: imx-scu-clk: probe of clk failed
Thread-Topic: RFC: imx8qm: imx-scu-clk: probe of clk failed
Thread-Index: AQHV7W6+j/nedDpaSEKPmgq1m0snKagvKwEAgACXNjA=
Date: Fri, 28 Feb 2020 00:40:06 +0000
Message-ID: <DB3PR0402MB3916849150B4778E117B6F86F5E80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20200227125743.GC16310@optiplex> <20200227153110.GD16310@optiplex>
In-Reply-To: <20200227153110.GD16310@optiplex>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ef2f32f4-2d26-4ea1-3fda-08d7bbe6c1f8
x-ms-traffictypediagnostic: DB3PR0402MB3738:|DB3PR0402MB3738:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37380417BF80EDCE967A478EF5E80@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0327618309
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(189003)(199004)(6636002)(478600001)(44832011)(66946007)(76116006)(66446008)(66476007)(66556008)(52536014)(9686003)(2906002)(55016002)(5660300002)(4326008)(64756008)(8676002)(26005)(186003)(71200400001)(81156014)(81166006)(6506007)(8936002)(86362001)(316002)(110136005)(7696005)(54906003)(33656002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3738;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lma8kbE60uGpP023VqF5EbjNS2nBt4e1OPq9rt5hhu8B7xDrpKhUwi5HYkZ1G0IFxa8I5DcgQfUGXxTGluw0stxZ2KOvSD/ggQtYRpQBqzGZjfdva9IR7syU2SmLuoJOxdK3a+RsczxY8ZNCW1jOH06bLqaldeHxWsP0jONVkTcgfXOFK+mdkxaROYgSQq0wZk7MnFRj72YBnYF1hl35PQb/V+aVxRIkoSP4d0KwrhFOzZNoCfYtCfsuAT4qgq4b3WANWbgGc4hFpVmuBYUNqqHNQVC1VO1j++a7ljtMmbRRisURNzjPe/I0qZRLv28lGh75Lxan68fN4LBMPXRCP/qwwS2fslD/nSo1rsIcc4WcIuF9co1AkKe29O+uo+SNzvXfaG+E5y7W7QIjRVWEH3atXd+J1OvIRAK1bKdNgo3cFBWff534wE2sPb0tKaHY5BVFRvz1NZVtpVHj/8HbeUvfeG62/pOJwgYgr8tZTaAHp7p1q7UAWMfrTrV7k11R
x-ms-exchange-antispam-messagedata: vtsQIGsmZA+cqVmVsLKrVaLA41xkC4x6BbSdW40k3x42aBt1kN3fPLsNNVgveJNmleelrrq0md25gJJp2vKL2ZH5sVFB3yLpY1bBMZEEUZo1h+q34Ik8cxOnH7OLSqwvy51U9ZQhCTdAgj1+cR30iQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2f32f4-2d26-4ea1-3fda-08d7bbe6c1f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2020 00:40:06.3960 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DrwEbY9x7dlSFNFTKi+1ddzX4xIE1Cr2cOEOfvwGHLgWzdJ9O00iOvSjKlSJAWqKosbM8cukqinEp8fXIyXsuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_165546_415550_C547D7F3 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Oliver

> Subject: Re: RFC: imx8qm: imx-scu-clk: probe of clk failed
> 
> On 27/02/20, Oliver Graute wrote:
> > Hello Aisheng,
> > Hello Anson,
> >
> > I get the following imx-scu errors when using Linux version
> > 5.6.0-rc1-next-20200214 with scfw Build 3353, Commit 494c97f3
> >
> > It seems that important clocks are off somehow and that lpspi isn't
> > working because of that. What is the best way to debug such issues?
> >
> > [    1.103799] imx-scu scu: NXP i.MX SCU Initialized
> > [    1.111383] a35_clk: failed to get clock rate -22
> 
> After some deeper digging I saw that the reason for "a35_clk: failed" is an
> IMX_SC_ERR_PARM = 3. Because he trys to get the resource SC_R_A35 which
> is only available on imx8qxp and not on imx8qm. No clue why he try that
> instead of SC_R_A53.

You are running on i.MX8QM board, right? Is it because the A35/A53/A72 clocks
are registered on same clock driver, so that clock core will calculate their rate during
clock tree setup? But even A35 clock get rate failed on i.MX8QM, I don't see it will
impact lpspi.

i.MX8QM is already supported on our internal v5.4 tree, there are some changes in clk-scu.c,
I pasted some code piece as below, maybe you can compare the difference and have a try?

276 static int clk_scu_atf_set_cpu_rate(struct clk_hw *hw, unsigned long rate,
277                                     unsigned long parent_rate)
278 {
279         struct clk_scu *clk = to_clk_scu(hw);
280         struct arm_smccc_res res;
281         unsigned long cluster_id;
282
283         if (clk->rsrc_id == IMX_SC_R_A35 || clk->rsrc_id == IMX_SC_R_A53)
284                 cluster_id = 0;
285         else if (clk->rsrc_id == IMX_SC_R_A72)
286                 cluster_id = 1;
287         else
288                 return -EINVAL;


471         init.name = name;
472         init.ops = &clk_scu_ops;
473         if (rsrc_id == IMX_SC_R_A35 || rsrc_id == IMX_SC_R_A53 || rsrc_id == IMX_SC_R_A72)
474                 init.ops = &clk_scu_cpu_ops;
475         else if (rsrc_id == IMX_SC_R_PI_0_PLL)
476                 init.ops = &clk_scu_pi_ops;
477         else
478                 init.ops = &clk_scu_ops;


646 static int imx_clk_scu_attach_pd(struct device *dev, u32 rsrc_id)
647 {
648         struct of_phandle_args genpdspec = {
649                 .np = pd_np,
650                 .args_count = 1,
651                 .args[0] = rsrc_id,
652         };
653
654         if ((rsrc_id == IMX_SC_R_A35) || (rsrc_id == IMX_SC_R_A53) ||
655             (rsrc_id == IMX_SC_R_A72))
656                 return 0;


Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
