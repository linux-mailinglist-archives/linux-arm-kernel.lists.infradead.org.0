Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C88D0A8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3RF/9IG3121Sqt8ReEeYci+UdXC3jrNzKU/7VNVbAA=; b=DeP0bPoxLgQKcJ
	dkaOUQmb3wYPOfw//dDYc/T4ujKWoUeclEfMjp6YR9bHwH1mukeQz1leGZ10fQBiKZoqTQZY1va4l
	H0nwPdgdozAhB4dxsaWsV3b7UYKMZqteFTrkLQ99APzCEf2AHmwUP7rWMWAXLic3QkRgi4so5CMw/
	U3ByfWbDpyCtz6BDj3jAxHYuoo+bRdevQbH7seraZclZWdcSeXdEZuCf03wP7Mw2HfgddrMtuR8DS
	NrulgJxqs6DuY5PjjagNFuHTzIstsw30Xm3bp/bnr7U5Eg9qdWhvveXqL9yGEBWurjlT8P5TMS5cp
	a7W2NKmGWkIxKQ0gWoGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7yq-0007np-N5; Wed, 09 Oct 2019 09:10:00 +0000
Received: from mail-eopbgr00058.outbound.protection.outlook.com ([40.107.0.58]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7yi-0007nL-1U
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 09:09:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aP5GCm2KN1AsnB+qNkptNGygmZ0JbpVIlb4ybKscSNguK7gAKNn9HRcmlhDyMvpkP7MTDwGc2V1Qo1KkD1p84qMGf2oHk6g6VEZ3Q8l0Z03ygVm85ZVCmgI2TA+Y3uphhPYVeQCXIQCwYFO22v4340hRJmLXSLGR0XsNlvDfsKE4H1JCAPIniumiwWTvKnKFEHpL6tDjpi9sNNj4NDO7EEUYbzc2Tn7Q/Jfx1R9/kre7/4iakUoJImzNc0fGfPxwgTSMDSTV2noDNJTWikCMRFPFJjRUfeIUlL6epAHA0ctQvT+uc1+acNJLOWXzMsbG9mkOK9UJRl6Kh0qMy5qDJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQnoNyQDLHB0rGETJXVu0dgZDOUaGkIPw/+dFDbVTYU=;
 b=XhmrrEm0I44Y7esg56Z/B38OY+TA2FPNP6v9WEdskEi9V0KD0U1f2V8O9rvHp2FeJpB8LJ7ou6kssVLGvMailZll02CTla1DyJ1PoEj9Q0bLnVFs66hQ0d0LKPukymg01gCdQo05WxwtCSDd//0y/cefhqwdDa9dkEtRCvHdnvaXWmL2YdODVCBVub47e92lWW7Veo+Xlg8qHMMx7OUj4kNPUfONEX8I3ECdaG8AW0QtWLW2474cnEuwNomv+gc7wAnZDFJYZFhlClw7ZwQBDEEY6mlPcEnrIMiF9JWu8y34RHodABA50C9pgzSUiACuPhQCGfO3FasVC/fq8Baxgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQnoNyQDLHB0rGETJXVu0dgZDOUaGkIPw/+dFDbVTYU=;
 b=SPla2cCmrwB2l5Pb5jtSAGO9/64tC6uLUJFB+m4P+WLGkRkQLm9O4Vx4Upc9vNjggZDlcn17sMXgLv5UYz8KlmCZY7MHLPCsjMpYIsAGfutSJ+B3Y9KaJhCd9TkI7GKw/a+4EhqsbUtpIw3OljT+WlLYycmvlNiXNuBWcLoLbT8=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3785.eurprd04.prod.outlook.com (52.134.71.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.23; Wed, 9 Oct 2019 09:09:48 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d469:ad51:2bec:19f0%6]) with mapi id 15.20.2347.016; Wed, 9 Oct 2019
 09:09:48 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Topic: [PATCH V2] firmware: imx: Skip return value check for some
 special SCU firmware APIs
Thread-Index: AQHVfK0Yhw8grvoW2E2n3r70yUmdBKdSBrWAgAAAKnA=
Date: Wed, 9 Oct 2019 09:09:48 +0000
Message-ID: <DB3PR0402MB3916595DFC84910873FBA91AF5950@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1570410959-32563-1-git-send-email-Anson.Huang@nxp.com>
 <20191009090043.4yq4l7iac3zgytnp@pengutronix.de>
In-Reply-To: <20191009090043.4yq4l7iac3zgytnp@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcaaae6d-87b5-43ff-08ae-08d74c986f44
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: DB3PR0402MB3785:|DB3PR0402MB3785:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB378541D74BAA42B28A87FF49F5950@DB3PR0402MB3785.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(199004)(189003)(6916009)(6116002)(64756008)(256004)(26005)(74316002)(99286004)(66946007)(3846002)(186003)(71200400001)(305945005)(102836004)(7696005)(71190400001)(76176011)(6506007)(53546011)(66556008)(66476007)(66446008)(86362001)(81166006)(44832011)(316002)(8676002)(54906003)(14444005)(81156014)(476003)(446003)(11346002)(76116006)(7736002)(486006)(8936002)(25786009)(6246003)(478600001)(966005)(4326008)(229853002)(6436002)(66066001)(55016002)(9686003)(45080400002)(33656002)(6306002)(5660300002)(14454004)(52536014)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3785;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zIXJpQSjq4xgNdVyaROOg7g5/lxIiDWnhH82PrNNwZIGoX5ZR3PkIUnCvbIc9rsur8WZvf9ER9najBHWtZvCZhATS002lS3Ty/ZAwnCVwRISRedvC9O+Mk9R1Ezvp5Kj/0n+0rAxFhjmEuDnbZLvRnwubtMfBz5B3jXfZvEseJsOU3Xew3FAfs/It0EsdgAx+rfFHJTNKpoi4lRF/UmI+JI/tdeuWZI0Fhk/ZsyFvtunbFf3g/pl+w3LRr8omwGB3SAKpXnrNZB0aO0k5CxRpeyfogB4FsNXfv6/ZJ5YZDPKFZf1QiA3PSZzg1NKQnHkVD023CusZuDW6p6GSaZA4LKWenHmdQPNb/1qixJ6yJ7fM5rIvHcD+Sv4twCOSMV4JrQ38DyTMv5sW3BkYQDnYbNsNS6qWoz8auJn45mZOX0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcaaae6d-87b5-43ff-08ae-08d74c986f44
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 09:09:48.1264 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOQwInaRTlbWdukXLqSXQhgCeof7NucaJxE30xZefZzDgCTrf2B3crf8n6gIlF8pX83A+CcAgGr9C1XuNge8+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3785
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_020952_087651_D9C8C8EA 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> On 19-10-07 09:15, Anson Huang wrote:
> > The SCU firmware does NOT always have return value stored in message
> > header's function element even the API has response data, those
> > special APIs are defined as void function in SCU firmware, so they
> > should be treated as return success always.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V1:
> > 	- Use direct API check instead of calling another function to check.
> > 	- This patch is based on
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatc
> >
> hwork.kernel.org%2Fpatch%2F11129553%2F&amp;data=02%7C01%7Canson.
> huang%
> >
> 40nxp.com%7Cbefd2849a124462caa4a08d74c972dc9%7C686ea1d3bc2b4c6f
> a92cd99
> >
> c5c301635%7C0%7C0%7C637062084506889431&amp;sdata=7fW8hZB4AaUK
> 9QTKTJQR7
> > LuV2nGo6e%2Fqb%2Fqmn4ykquk%3D&amp;reserved=0
> > ---
> >  drivers/firmware/imx/imx-scu.c | 16 +++++++++++++++-
> >  1 file changed, 15 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/firmware/imx/imx-scu.c
> > b/drivers/firmware/imx/imx-scu.c index 869be7a..03b43b7 100644
> > --- a/drivers/firmware/imx/imx-scu.c
> > +++ b/drivers/firmware/imx/imx-scu.c
> > @@ -162,6 +162,7 @@ static int imx_scu_ipc_write(struct imx_sc_ipc
> *sc_ipc, void *msg)
> >   */
> >  int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc, void *msg, bool
> > have_resp)  {
> > +	uint8_t saved_svc, saved_func;
> >  	struct imx_sc_rpc_msg *hdr;
> >  	int ret;
> >
> > @@ -171,8 +172,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc,
> void *msg, bool have_resp)
> >  	mutex_lock(&sc_ipc->lock);
> >  	reinit_completion(&sc_ipc->done);
> >
> > -	if (have_resp)
> > +	if (have_resp) {
> >  		sc_ipc->msg = msg;
> > +		saved_svc = ((struct imx_sc_rpc_msg *)msg)->svc;
> 
> Why do we need to check the svc too?

It is because the SCU firmware API has many different category called SVC, each category has
many different function, and the function value could be same in each category,
for example, there are IRQ, PM, MISC etc. SVC category, and each of them could have function
type defined as 0, 1, 2 .... That is why I need to save both SVC and FUNC to identify the SCU FW
API. See below: 

PM SVC:
#define PM_FUNC_SET_PARTITION_POWER_MODE 1U /* Index for pm_set_partition_power_mode() RPC call */
#define PM_FUNC_GET_SYS_POWER_MODE 2U /* Index for pm_get_sys_power_mode() RPC call */
#define PM_FUNC_SET_RESOURCE_POWER_MODE 3U /* Index for pm_set_resource_power_mode() RPC call */

MISC SVC:
#define MISC_FUNC_SET_CONTROL 1U /* Index for misc_set_control() RPC call */
#define MISC_FUNC_GET_CONTROL 2U /* Index for misc_get_control() RPC call */
#define MISC_FUNC_SET_MAX_DMA_GROUP 4U /* Index for misc_set_max_dma_group() RPC call */

> 
> > +		saved_func = ((struct imx_sc_rpc_msg *)msg)->func;
> 
> Nitpick, should we call it requested_func/req_func?

OK, I will change them If I have to sent out a new version, otherwise, I think the saved_func and saved_svc
should also be fine.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
