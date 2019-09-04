Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41CCA7D3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:01:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8GjV0cD5nmkHdJGJ8EtraAC+WZfAGevca42mxZJ2Jg=; b=FcLhaGLyv7zRAq
	kK76gONT2gncrAADDr4Xp2UQn8DdE0kWW9n3/p05L9jp2x5rsHW8npkgNZqFgoiLrZGHucGsyc3CL
	taelpil0Uk1V45SwxOvEXQaJPUkx8OpQZ0tvsbIbTyWw0EYk+FNYHv0fiI2OzzH7bl4yxZca7/X7H
	MuTwvvNIAi4LKiSYYo9yLqRYYaejRr0Jp4v9MxKhBGgXPqB01j6YpSmMAE7CGRcwgh4aiOw7Oo1Rk
	7XlhnXjZ9dxwaDR6wn4ujyPdEy/ueBOyngRLNTOQGDw4mmXwWvpDSLIQvSCD6TQwLJ3qycTYLWDXc
	cxsGMBMnWAS78VI6MGbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5QDx-00011I-Lx; Wed, 04 Sep 2019 08:01:05 +0000
Received: from mail-db5eur01on0623.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::623]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QDf-00010N-Sc
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:00:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WUTlcGZoxNqTtvaI6e7dLj9idCOoPu6cJPiVWqmKvM63ytpcgniBDXaEpDYDD1qxGopo80O+wTRt3hqVGkHogR5n2yLB7Fa2lZ7CbcEu8u2QQpgAQdwv4CmM+wXBeObrPds6qYl64n6GjObPoT9py/M3ockfh/z6TLKL3P6FZGxYSgw0UcjsVu+d3M3J3DQMscnZ10pWDvgXt51aLgAVmqgmJg8URBUCXPMwz7qlvgdvekXSwwZ6LRWb3GcbXqGJn9zZsYRMBAtwpKIISKvPgMBtLGBJB9pSnLQyltGOXSKo+MXQijmdG7/oKMa3THt0uTyne56CTOsS7yJq3rYTaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTcR/px0ZPy7epoZqSPfG6iuWyswgDd27U3EUyk2sc0=;
 b=QOn962oIys9XXBVjSWu8A5/D3zt8jJxqztWBZsUZEe8Z7z9PxDzsC4blVrouCOw+qQp8nzjTEx7U3VoKTnkOpOOvSgI/pUxrjOB/QqCz4WP61xPC5Nv+vn2xxBPE+vtMSG38ZZjP3E0w+Ybbp7gAJzBnDU3el8sz13vES3fQy+DyFGbn2+t2mn8C6rwikkZSz+3qb/erih0jAp8jsfS/G8U4HOmpq5YskTYJqHHvplruCj+ouU6viGeu8cfugxuJOPsyV7p0T96BMOd9cCvFnneEGbtmsNJF3IDaz8gGylfML1OSxXzuvgVMfzGI9+T/eAfG1Dyi3WfHlUEo7a6ajQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTcR/px0ZPy7epoZqSPfG6iuWyswgDd27U3EUyk2sc0=;
 b=YrrEZAn7lloEDYxvJ6CErYK/6+Jz0B7TWG0FVseeZq7F5FpuzjVZLPALGQYg7c7PdR1MvSE1e5Gyr8gmviZLCtg/XxreMJ59bqDLbE8Po82Eo36q3Ih0LXgY7OhlVnWVYc4xoK9g4r9zszt7Qt2DTmZ876lpO8/JhdZdrYvmNhA=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3867.eurprd04.prod.outlook.com (52.134.65.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.18; Wed, 4 Sep 2019 08:00:44 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2199.021; Wed, 4 Sep 2019
 08:00:44 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Aisheng Dong
 <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH] firmware: imx: warn on unexpected RX
Thread-Topic: [PATCH] firmware: imx: warn on unexpected RX
Thread-Index: AQHVYvYOyuBVNKs/M0SkaXq3kYeVC6cbJzbA
Date: Wed, 4 Sep 2019 08:00:43 +0000
Message-ID: <DB3PR0402MB39165C3A2A5981D2093AFC05F5B80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <ddd1f5cd5341db0ca347259953135eaf9e782873.1567583496.git.leonard.crestez@nxp.com>
In-Reply-To: <ddd1f5cd5341db0ca347259953135eaf9e782873.1567583496.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c8beddb-110b-464d-f27e-08d7310dfcc3
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3867; 
x-ms-traffictypediagnostic: DB3PR0402MB3867:|DB3PR0402MB3867:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3867A93943DB3BFA1117AD7DF5B80@DB3PR0402MB3867.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(346002)(376002)(396003)(199004)(189003)(3846002)(6116002)(66556008)(66446008)(64756008)(5660300002)(76116006)(81166006)(316002)(476003)(8936002)(53936002)(66476007)(66946007)(55016002)(6436002)(86362001)(4326008)(6246003)(99286004)(52536014)(81156014)(54906003)(25786009)(478600001)(7696005)(14454004)(7736002)(9686003)(26005)(110136005)(71190400001)(71200400001)(6506007)(8676002)(256004)(14444005)(11346002)(186003)(229853002)(2906002)(74316002)(66066001)(102836004)(305945005)(76176011)(33656002)(486006)(44832011)(446003)(83323001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3867;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fb0Xgc/C1YMeMqNGu2Q38Iketk/xo6Giybs7+fbkQljl5Sw6YJBzjZ4jU9CS2gq8pmS49yQ+gqNy4mLyy2fBOjkw+ByrtmIfEwO97vMjv15yb1O9CJyPv4pSAl8LOWGJYznVO8vdPEQBaiQTW9xfbBqCXnhYeIowcU/hPIlcLXS+SO+dOQe+sxLRK4sj7crZaueAjENSqtNxFXyU4lIUzaWh6MJNCYWy0wAbeKXMdnSP3iWXIi1DtV+NVul8sJn/SVcZaEl8rYalc9BOx8OU2QUerPccftv4x4J4MK7klgG1jMRX3gu7OKAMfDwd3L7jRFxTvL4J+DZ5RySOSZMagWSdrjSsggI7jhfZh7RxWWMZd8ROLJFMiAFMcREHN37HuaDyfxDOS6lNF0qdxzXSubUvHwfCBGtLaqdPI9UTzTI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c8beddb-110b-464d-f27e-08d7310dfcc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Sep 2019 08:00:44.0091 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +MTCAgSjFiuK4FrolhlPYCrp1fA09dXyT9XZW+ZV6GqE/Qbs2mIc29KvJE/AfyiQbcqmaCQMpf5xGPmvxK7X9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_010047_947395_7F0D72B8 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:623 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Fabio Estevam <fabio.estevam@nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: [PATCH] firmware: imx: warn on unexpected RX
> 
> The imx_scu_call_rpc function function returns the result inside the same
> "msg" struct containing the transmitted message. This is implemented by
> holding a pointer to msg (which is usually on the stack) in sc_imx_rpc and
> writing to it from imx_scu_rx_callback.
> 
> This means that if the have_resp parameter is incorrect or SCU sends an
> unexpected for any reason the most likely result is kernel stack corruption.
> 
> Fix this by only setting sc_imx_rpc.msg for the duration of the
> imx_scu_call_rpc call and warning in imx_scu_rx_callback if unset.
> 
> Print the unexpected response data to help debugging.
> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Acked-by: Anson Huang <Anson.Huang@nxp.com>

> ---
>  drivers/firmware/imx/imx-scu.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-
> scu.c index 04a24a863d6e..869be7a5172c 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -105,10 +105,16 @@ static void imx_scu_rx_callback(struct mbox_client
> *c, void *msg)
>  	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan,
> cl);
>  	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
>  	struct imx_sc_rpc_msg *hdr;
>  	u32 *data = msg;
> 
> +	if (!sc_ipc->msg) {
> +		dev_warn(sc_ipc->dev, "unexpected rx idx %d 0x%08x,
> ignore!\n",
> +				sc_chan->idx, *data);
> +		return;
> +	}
> +
>  	if (sc_chan->idx == 0) {
>  		hdr = msg;
>  		sc_ipc->rx_size = hdr->size;
>  		dev_dbg(sc_ipc->dev, "msg rx size %u\n", sc_ipc->rx_size);
>  		if (sc_ipc->rx_size > 4)
> @@ -163,11 +169,12 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc,
> void *msg, bool have_resp)
>  		return -EINVAL;
> 
>  	mutex_lock(&sc_ipc->lock);
>  	reinit_completion(&sc_ipc->done);
> 
> -	sc_ipc->msg = msg;
> +	if (have_resp)
> +		sc_ipc->msg = msg;
>  	sc_ipc->count = 0;
>  	ret = imx_scu_ipc_write(sc_ipc, msg);
>  	if (ret < 0) {
>  		dev_err(sc_ipc->dev, "RPC send msg failed: %d\n", ret);
>  		goto out;
> @@ -185,10 +192,11 @@ int imx_scu_call_rpc(struct imx_sc_ipc *sc_ipc,
> void *msg, bool have_resp)
>  		hdr = msg;
>  		ret = hdr->func;
>  	}
> 
>  out:
> +	sc_ipc->msg = NULL;
>  	mutex_unlock(&sc_ipc->lock);
> 
>  	dev_dbg(sc_ipc->dev, "RPC SVC done\n");
> 
>  	return imx_sc_to_linux_errno(ret);
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
