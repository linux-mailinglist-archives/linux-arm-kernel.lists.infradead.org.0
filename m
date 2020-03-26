Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05E1193692
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 04:13:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oN3/rf6frVilPAjRXGzAN8Wc638Ne80XRG9gzZIeYnM=; b=dvlsQpuSo4ag6L
	fb4VYS0UnTEaq42NPV6YviC4y+Q3jilhlSKMcyWNaEGMj8Bre63VJF3EcFeVDavkVhwiqAXqE58Eb
	caKGVp0WKMtYMjjKqBipxGOZ6dr+YNX+TMirD1hYXGDSausx8eaa5LeGY10z5GLV6OC5OUMbp54Pc
	glGmvHyzUUyPYibam/sHr4PZ7xU3bwgjjJ9lA1mUm01v2T2PAMSWA/zFB4KFO7Sr5PbO+QWXej44E
	yVKjgllIF6NThkn/3GkT4bvoz2coEx5D3OC0GKjiFFTcmP/GAMAzsH2J4ninUo3NA2saxPQ/xlDQg
	rSZC5tf+zPYZukoNHZQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHIxO-00008t-TK; Thu, 26 Mar 2020 03:13:22 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHIxF-00007t-8J
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 03:13:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiN197AwIW2Uc5E8IysQKToUkNd4i8RzTjURxnsHWUTSLS4o5Yrl5PzucS4NH84bQCnPmZMrK3/iwJZqEHAZtCl6TVBJReQW4XfohiDJMBTDY62JlgjhEA8uTMolyDQEkqpmHtm6JLNWNtlhXoC8yMV7z7vdX7OlDlDR99nTDORuqDkmfQ/GZ3XDBHag+7L8cnx38IKzeid9iOq9AW+mAGhi1F8ELzhtdFzs9zYj900mGtb+Jfyva5U18jNjibSSH1GjBoYzQ/UT3P0s4DDL5GzIOHeVErDmIviAItB+Pg+aKMijHIEgu5RGLbOrodF9kIlU2KKezmkOxjMY+9tK1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hcCdoCGuI8fNnRYOOSEdhJesxb3TrUKe4cdZAzTXK6Q=;
 b=Mo5G2jpCSrUQJ7eXV2qvEMzrE4bfBj/EhP6b0tiuiapBI1BEGudEb/IcSwdtxdPV5U4He0qPp3wgSD3fRgmRjb80qGF6dChh1/86ehd8+vmQanShT9uufkLxc7+UnCn7zBUYs1cabJ9XVgEOzTPbI+LP13BuORbq/fgRoHoqU3GCqE9iEmipXbgf8lpgWzoPDv6oLL800dNpoy9ZLq09b3gHBRucgOXSWdc5ZTPiOouNbmZhsU4On1D582T9roUBZyxzq2gQ1AEc92XyvZojFXCnbgPJ1CccO1uNlJv4GMCUcHzciU/EUxvn1XHASTzfvInC2MwgMqbqPdeX6qwZWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hcCdoCGuI8fNnRYOOSEdhJesxb3TrUKe4cdZAzTXK6Q=;
 b=sFZv27dZ7azxhBlcbNyTrSqPv6Ls6Wpe+ztdDj3koVKKCxgPRIbDNxHGeiQhWIkWKpc8yxMxvLfsn0QRVZowvjs8x4NIZhWIh7R3dFmhUKeBFw6pIwKtonIPvCmGQuM7fK3erQx5pXFc3p3wEb2VQt6/P6o50SEPdrV3StYFcg4=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (20.177.32.142) by
 AM6PR04MB4407.eurprd04.prod.outlook.com (20.177.39.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Thu, 26 Mar 2020 03:13:09 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2856.018; Thu, 26 Mar 2020
 03:13:08 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH v2] firmware: imx: scu: Fix corruption of header
Thread-Topic: [PATCH v2] firmware: imx: scu: Fix corruption of header
Thread-Index: AQHWAvDFQf8fYXm+50us9EW/0jpnNahaMt7g
Date: Thu, 26 Mar 2020 03:13:08 +0000
Message-ID: <AM6PR04MB4966BE8ECC65420FD0759EF280CF0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <be0c5e442b5c0d29c136e802e8f4552d85955c32.1585173194.git.leonard.crestez@nxp.com>
In-Reply-To: <be0c5e442b5c0d29c136e802e8f4552d85955c32.1585173194.git.leonard.crestez@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 171cf095-b15f-47cd-7239-08d7d1339c28
x-ms-traffictypediagnostic: AM6PR04MB4407:|AM6PR04MB4407:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4407305FBD3A2CB86D18550580CF0@AM6PR04MB4407.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(346002)(376002)(54906003)(316002)(110136005)(5660300002)(52536014)(81156014)(81166006)(71200400001)(8676002)(8936002)(86362001)(7696005)(4326008)(6506007)(66476007)(33656002)(478600001)(9686003)(45080400002)(186003)(966005)(44832011)(55016002)(26005)(66556008)(64756008)(66446008)(2906002)(66946007)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4407;
 H:AM6PR04MB4966.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PnSovzv/6/a5YqmcZwniiOlagfK5UTRlH5sC1n1kJpuNMiKTOS/hdov7dLuN/yknl29i0G7TRxIPBPtI1mEVTG1rhgQKn704r5/gRfJHyOzsuz1MZtPyVTTW6rP8YoIe7SpZaJlmKlPW9h+ZzBhopP7ha7ck9jhg+tDg8RcRKuQPyW3wmtsaJ8y16si9HlOsiaVcUu3Omr6R8xmsBGwY18DlvJ7MApO56zzriD2uDmKkpnUt7T3uM640bUmytqf50Dy70wh0DvDikXniA1YAcFgCCmccrgc1WQeoL/EIratXgGU2kOqWAGOf6uKZqf8yQFnH7MP7tDY31p9uZJ0aTqRoD4XJ1EpohvqYNRfPNfPCN3O322UdcIo6pix49MozQeH0hj1CPuptmZ5EOxyiLZtex7hgJW/80fj1C7lP0ZF03rYL/1D0SNO5gsF0ulkk+HJEA+ms2PJ8DL00/EHmgss/WfP2uiiivsEEpridU6Q2IZI/W87j/M/DVsPfjRNbmf+qlhUEb4VAitvadSxYsA==
x-ms-exchange-antispam-messagedata: w+p7eXPe/PwWX6q+n4Z3Dd9j1EPqNrVUe1DD8O96vb3LXUVoaDH83KHQzBAxZ8U3c2+1D6BHbnJFaRIUKQJn1vANekWyKgH+G24zBybOEXvhVqhELu7Q4vmzwvLUUWLgkHlL7l6837RhXHfOLeFu3A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 171cf095-b15f-47cd-7239-08d7d1339c28
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2020 03:13:08.9049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mhy1qP9xujnraV4HYKMRfFGZAHrcS7QSH0vzRc6Ig7BPWybotDi3WAt+qlgza2igSRqivm1ib4/fmLmxVfv+9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4407
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_201313_399560_9C750AEB 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Franck Lenormand <franck.lenormand@nxp.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Leonard Crestez <leonard.crestez@nxp.com>
> 
> The header of the message to send can be changed if the response is longer
> than the request:
>  - 1st word, the header is sent
>  - the remaining words of the message are sent
>  - the response is received asynchronously during the
>    execution of the loop, changing the size field in
>    the header
>  - the for loop test the termination condition using
>    the corrupted header
> 
> It is the case for the API build_info which has just a header as request but 3
> words in response.
> 
> This issue is fixed storing the header locally instead of using a pointer on it.
> 
> Fixes: edbee095fafb (firmware: imx: add SCU firmware driver support)
> 
> Signed-off-by: Franck LENORMAND <franck.lenormand@nxp.com>
> Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> Cc: stable@vger.kernel.org

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng

> 
> ---
> Changes since v1:
> * Add my signed-off-by as requested:
> Link to v1:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchw
> ork.kernel.org%2Fpatch%2F11394401%2F&amp;data=02%7C01%7Caisheng.d
> ong%40nxp.com%7C67d37a0e46c4473ec6f808d7d107e780%7C686ea1d3bc
> 2b4c6fa92cd99c5c301635%7C0%7C0%7C637207704182589926&amp;sdata
> =Qzj2kFXpN%2FfO%2BgclQ1RcQDmwlLUTuLdg78WxWgTy4cc%3D&amp;reser
> ved=0
> 
> There is another longer series attempting a fix but that probably won't make it
> into stable:
> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchw
> ork.kernel.org%2Fcover%2F11446661%2F&amp;data=02%7C01%7Caisheng.d
> ong%40nxp.com%7C67d37a0e46c4473ec6f808d7d107e780%7C686ea1d3bc
> 2b4c6fa92cd99c5c301635%7C0%7C0%7C637207704182599918&amp;sdata
> =mBJ8fX4DzU0JArPobbCf1GRvupEo0uL9hV4Htf6kN3I%3D&amp;reserved=0
> 
> That series implements a different imx mailbox type but still maintains the old
> path for DT compatibility so this fix is worth including. It fixes real boot hangs.
> 
>  drivers/firmware/imx/imx-scu.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
> index f71eaa5bf52d..7119228a8059 100644
> --- a/drivers/firmware/imx/imx-scu.c
> +++ b/drivers/firmware/imx/imx-scu.c
> @@ -141,24 +141,24 @@ static void imx_scu_rx_callback(struct mbox_client
> *c, void *msg)
>  		complete(&sc_ipc->done);
>  }
> 
>  static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)  {
> -	struct imx_sc_rpc_msg *hdr = msg;
> +	struct imx_sc_rpc_msg hdr = *(struct imx_sc_rpc_msg *)msg;
>  	struct imx_sc_chan *sc_chan;
>  	u32 *data = msg;
>  	int ret;
>  	int i;
> 
>  	/* Check size */
> -	if (hdr->size > IMX_SC_RPC_MAX_MSG)
> +	if (hdr.size > IMX_SC_RPC_MAX_MSG)
>  		return -EINVAL;
> 
> -	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
> -		hdr->func, hdr->size);
> +	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr.svc,
> +		hdr.func, hdr.size);
> 
> -	for (i = 0; i < hdr->size; i++) {
> +	for (i = 0; i < hdr.size; i++) {
>  		sc_chan = &sc_ipc->chans[i % 4];
> 
>  		/*
>  		 * SCU requires that all messages words are written
>  		 * sequentially but linux MU driver implements multiple
> --
> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
