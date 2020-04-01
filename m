Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5535419A334
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqe+tx+U4o523GPZb1Wm4sXgAPW47xlwJwYCU6FNTbo=; b=ILWydYMAHqa6Z+
	3KnVwVf8qLhe0+6QbAVrKeF7bE4ZWJGgXR3NP4X0XokrJuw/AnhBrryBmvSuQYVysGv/F5BPaiazH
	XwvuI9EM8bmp+PFaCWy0TKuYkaovVPGH6ubznVtgpprdiaHE+MExFr2MNNQ2i8FL1m9mT5M2v8tvd
	y72iAhppO66qYZUFjFZYfW+d5f+xOu9OVJEdyW0lYAfhH/ivsO8r9iPS0RKWQcFromiPLT3+k0jD7
	zow18nXJvB8PsvoaOPSWBBXdT7C4yUoqo4qYpAsxkpYeYBHeWYB05UOt5XrdwXhbzsQcSkucYyBfh
	1w4aazTvjZPa3Mhp4k+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJRzG-00006G-16; Wed, 01 Apr 2020 01:16:10 +0000
Received: from mail-eopbgr150048.outbound.protection.outlook.com
 ([40.107.15.48] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJRz6-000052-3p
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 01:16:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O65SxPterHzq4ihHQ59EsE6lLgRiJFiPOpAf7sM5fDEe8heFIt2FXdRymOwqwbJpoXKdlB09hdBzVm6NVyutmy/llPHU5SDJicbnPgOw4QGdtxJLuRmJunuCdY7AUwCQJFB7TTwHyGmpJg4/dHjS6a0h9j9+RKqe1Ltw1FKmAQGDf9093KoROX1XBpI+zwzyQk6Ps8O8eQRK3VTRQC/8nlrL9l2wajv8ovNujTp7YOVpJnSO/uNtVHr5USdpYuw1EFTO9Zyscw/AhuKHVpenZo1p6OfWhkcjdBCPU7J4rAKtsK92jsfGNFKlFVcjwNrYuxFR2mVwva65l/4pRw42xA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8Ey9joXklJ9loEB8ol/VwM7WAlMrIp4jPw5ovqpz8A=;
 b=YeDtupZtSyMmWxd4e5qRNiFOtAfkO90SepVTAjrW2x3dUZ4ovHWacTwssXqcPCTUHiw22YrLLWw3jFv1QEpPg4DtOwGnVhwlj37C0U98p3Qzzpgorpq19PqUmC22aNvGhA9WwmpXdwa2WSS4Ju858DHvwcCfLdHV0jiwDu48Mo0g0ymc51qlJr4aawAIH6H4DKGDH8oQuUu4NAHwPnyk26QDH/T7h+FOUC4T28s5Ia4noBMxfryNP7kgQCQw//ThflgfKyjrMWYHtyUwikgyfRK7IouC48pYeuWhDof6TIZTaQkHzBjuYsnMihgyTSCBLbvuBQ7Gs309gdmHiy34LQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t8Ey9joXklJ9loEB8ol/VwM7WAlMrIp4jPw5ovqpz8A=;
 b=MHXWwrupEZdwxrM3EbacLvamu0zwBxcSfvFA8yBlmGM0JmkUkZWoWJJAh+PwaYybkchOzgsLQ94PhguerNID1BlXZoqA/whnqtgewn/XW+RSM5oeMT6DyztByYhZAP0YxNAb0/4474+Pfhw6Xbal7DrjTrTqOPCE9YKZOYaIflU=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5041.eurprd04.prod.outlook.com (20.176.214.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 01:15:57 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 01:15:57 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 2/4] firmware: arm_scmi: Drop empty stub for
 smc_mark_txdone
Thread-Topic: [PATCH 2/4] firmware: arm_scmi: Drop empty stub for
 smc_mark_txdone
Thread-Index: AQHWBFX3DyXK4dtxUEKnfVv96JS4QKhjfVoA
Date: Wed, 1 Apr 2020 01:15:57 +0000
Message-ID: <AM0PR04MB4481618539BBF11EAE49BFD488C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-3-sudeep.holla@arm.com>
In-Reply-To: <20200327163654.13389-3-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e6794681-0028-45ee-fedd-08d7d5da3ba1
x-ms-traffictypediagnostic: AM0PR04MB5041:|AM0PR04MB5041:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB504171868D02EC7F7DD01E6588C90@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(86362001)(52536014)(81166006)(81156014)(64756008)(66446008)(316002)(66476007)(4326008)(54906003)(66946007)(110136005)(66556008)(9686003)(8676002)(8936002)(7696005)(26005)(5660300002)(44832011)(2906002)(186003)(55016002)(478600001)(33656002)(71200400001)(76116006)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cXuV1V5HidS+ouwvdcCkWAEy8JNMU0LskqMhbmc6sn61v4A81B597NcttAKHLhALJxjLoqNvgKsQdmxRujJL7Qv7EYQvUtQ5S7hsqMZvYuooCGLd/rMcY8HJSzF734rlCq6svu0mSrUqN2y+Zf5z/yqXLmR7vOckN087WrM79alIQfzqXVn9MzXON6JjZrkslL8ymmvFkxqFTIMiBmRnHahaKbJNLyO81AE5TEwWdrIsMchZwUhWbZ1wVMfvhGNa+1LK0GrN0malHvEfVUEGkyqq9aiUfSeL9I3QUvQy/Np6AQ6wgSF9C39sDjebmm38LuMsT+mf4gFqDi0i6fYUxkOMdsqiKqFDIjVUFyXfGEtB6w50uW1mK4mIdBY/9euu/pFkTSL0JgvX11Y68We3xqpQOigaSMHkzgpr8GGwKjtiMqiemgehxtQDIbueufYp
x-ms-exchange-antispam-messagedata: HJsBLH3ShJsxZfu6OnUznLDaJXz0ISX+SwbCCer8ZBHgyWvnzDdNynZXt974ZssrfJShadzJHrFzM/HWglNPkDuzRxeR0gZ1z4LtSH1gCUhh+lhTRckYXvlUQAkCvRlZSdE+AqsglW34nUuw3pnFQQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6794681-0028-45ee-fedd-08d7d5da3ba1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 01:15:57.4884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wCvdext7fnHFq1doTtj+kYutR5F9YPBk7J/ua2rSMOndasfUbqQqYPgulgtiht0JaxRcfYqObG58D2WcVbhkgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_181600_165730_F0CD6574 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 2/4] firmware: arm_scmi: Drop empty stub for
> smc_mark_txdone
> 
> The scmi protocol core driver check for non NULL mark_txdone before
> invoking the same. There is no need to provide a empty stub. SMC/HVC calls
> are synchronous and the call return indicates the completion.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> ---
>  drivers/firmware/arm_scmi/smc.c | 5 -----
>  1 file changed, 5 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/smc.c
> b/drivers/firmware/arm_scmi/smc.c index 6dc8a88cc91b..dd4b54c29679
> 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -114,10 +114,6 @@ static int smc_send_message(struct scmi_chan_info
> *cinfo,
>  	return res.a0;
>  }
> 
> -static void smc_mark_txdone(struct scmi_chan_info *cinfo, int ret) -{ -}
> -
>  static void smc_fetch_response(struct scmi_chan_info *cinfo,
>  			       struct scmi_xfer *xfer)
>  {
> @@ -139,7 +135,6 @@ static struct scmi_transport_ops scmi_smc_ops = {
>  	.chan_setup = smc_chan_setup,
>  	.chan_free = smc_chan_free,
>  	.send_message = smc_send_message,
> -	.mark_txdone = smc_mark_txdone,
>  	.fetch_response = smc_fetch_response,
>  	.poll_done = smc_poll_done,
>  };
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
