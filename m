Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3974FBC0A5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 05:14:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gLVIN9egyiDjIFmrZvs8bFm/+WMEQn3n1fA+S+vep+o=; b=Y1lN/BMzd8XrIB
	Cbgk/hJ6TuQAV0VT02TgAGjnQhClXhORwjkpUiQQdurt1pIcNYpZ6ziRha/E0mYUNEI/1SmWD/HPk
	ztEMJYGiJh8EVUIUXtG1sOguEtTeRFt6LTyBNekJCo/i6wxEtJg1ND/1t6RgELa+FnkBO51vP+qy9
	GMhW0qQV+dbm3XAtHlLENwWBcjCQ6hOmh7S4nlZeRQ2XnBl4WL17I4a4+xGKXXuzj1XBecoj2Pd01
	qf5V+AT2+uQUkvxjOa33Xlcj/FpFwAb664EPjlIgniVjLcaaUue3IDBZZMEmBHT+jBtjk/vMuELkh
	sPuqKTHsx1ccUd+78tKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCbHj-00058O-NU; Tue, 24 Sep 2019 03:14:39 +0000
Received: from mail-eopbgr10064.outbound.protection.outlook.com ([40.107.1.64]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCbHZ-000580-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 03:14:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMriBbbweZsg9Fp5DzRDbBRk+AYKOjF5jlD0xPd62xfGyQ0X2moNpZlwvwHoefcvuk2tmwdNyBs0WsHIgk3MQ/KEAkokp4dao8H8nqEgEqyFvWjJrjkhqe4EnMQkUMlx9aGlhZG8nH4z7LC42N2HepxLqDLJveqCLW2VBQtZFiceAAcXa6xwbXR/2fsWYkDuGXPCzScOSFa39wmNOP0ne31oTN7OyrNmHsP+hVzRpZRmYmiIG72QCNWfW2Z9Smq42liEJPuUNMFs2CGnrvyJTHD9su3+WFIHWrRfCLctTkc4n8kzf/uUUW2ZD8/ROa+uVsZPxepHX/+b8W7Mg6XmcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16b8EmVXrilFECDyKYGrxPy5Xt3f/iGALurs8fHvoCc=;
 b=RMBfmQAxv+bVepUlE8plx2ZwXMqVP3RVkM/qynosndNj7vwHSjsLUz2KQm4/XOVu4A4Nrzkj4MhFF4MAef4FXMz0uCEPe0ExIDyl2uC+AEOpTLLEpRmq7b86bQyUPRlaFUW8bE+93KPhsa4nUsfO/vSBKVDd4cQ5RWxJfuht88DERdlmOnWkvzP4VYE3Wdj/Uh3KuTM2BHo63mnhhuzaUebHlYM3741JYDyFL5g+dEXdD//7bt1fDjUxNjMWXfQIi1OGyyM4oC9P5V4/xznzlAhV/HcudyPr2fRuUsNLYjOeKeg4bq/71w7+9YGSldyiHTt4AVlV1zMziV3DN3mhaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16b8EmVXrilFECDyKYGrxPy5Xt3f/iGALurs8fHvoCc=;
 b=HqABhrGVnNtZqp6Jn2s0bVfbXo2MtWABFCj1sY/oSTV4nc2vyzm6MNKsd+JyNPTECbfqilJvPx+b4jN3AnU31ELQb/DNZUL4eeZq3kvdQDZLFpHqs15JlbUSlfhUv7MPn5oJpus/v2zHRSSNaNVLt/ZaEIPj7XIBHhCGyErat+g=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6608.eurprd04.prod.outlook.com (20.179.235.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Tue, 24 Sep 2019 03:14:26 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::35d1:8d88:10f4:561%5]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 03:14:26 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Philipp Puschmann <philipp.puschmann@emlix.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH v5 2/3] dmaengine: imx-sdma: fix dma freezes
Thread-Topic: [PATCH v5 2/3] dmaengine: imx-sdma: fix dma freezes
Thread-Index: AQHVchbyOim+CiOpQECRxZtOGlM/Lac6JGVA
Date: Tue, 24 Sep 2019 03:14:25 +0000
Message-ID: <VE1PR04MB66381655BCED05ED2F212DE389840@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <20190923135808.815-3-philipp.puschmann@emlix.com>
In-Reply-To: <20190923135808.815-3-philipp.puschmann@emlix.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0607aa95-b12f-40e3-1534-08d7409d4e13
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VE1PR04MB6608; 
x-ms-traffictypediagnostic: VE1PR04MB6608:|VE1PR04MB6608:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB66084B803C920B8499B6134889840@VE1PR04MB6608.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 0170DAF08C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(366004)(39860400002)(376002)(54534003)(199004)(189003)(229853002)(52536014)(7696005)(33656002)(76176011)(6506007)(53546011)(9686003)(186003)(2906002)(316002)(54906003)(55016002)(3846002)(446003)(99286004)(66066001)(6246003)(486006)(102836004)(4326008)(6116002)(476003)(64756008)(11346002)(66476007)(66946007)(25786009)(76116006)(6436002)(4001150100001)(8676002)(305945005)(256004)(7736002)(478600001)(110136005)(26005)(7416002)(86362001)(8936002)(66446008)(66556008)(14444005)(74316002)(81166006)(2501003)(71200400001)(81156014)(71190400001)(14454004)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6608;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1tL9wEztGS0K4yrtCLdU2XCArP2FnjVwVklADJ9mArf1+7pGUktRG0dx7n9eQK/BPfAYTjkWYXJx96BQlypSUCMIgt1oKqOHkPA4wXOoi82YJ+BBSEPSxrz8CBpb2aD8XuKNTacytnktuevMv+DtpjzG8ebK2Ja4WSKlyw83l9e68zQgo6q4jy4B/52BdW49pg3d/DhpklwzhhU7f63/+h10VNm7bD9kY/p7vt2iW+sRVb4lL5DcPPu3hQciSr7KG9334ARLOmi1GWi9ttUYyNS6sBb1oGUH1TBwjvrrPGL6OXOOTKxNXbSFnoTIC7u4SIw1AjSYqiSSd5Hi4VBNLjTEEqur+VFLQANjEd35YS3hux+nzAGmSy8j5wrjPWcTT3h/ZBKYYr4qIMAvbbfZdd3CBssDJP5IqPwNoPLXZVk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0607aa95-b12f-40e3-1534-08d7409d4e13
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2019 03:14:25.8392 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ERLK8bQLr3Yhwfwx5QLMrbKrefEGZKjFUqCXMK7MT0xi5hCHTqRcYEeK73iL+ZMQcNnipLxRi5Jq2okrTD6Wdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_201429_254868_6C3CF71E 
X-CRM114-Status: GOOD (  26.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Duan <fugang.duan@nxp.com>, "jlu@pengutronix.de" <jlu@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-9-23 21:58 Philipp Puschmann <philipp.puschmann@emlix.com> wrote:
> For some years and since many kernel versions there are reports that the RX
> UART SDMA channel stops working at some point. The workaround was to
> disable DMA for RX. This commit fixes the problem itself. Cyclic DMA transfers
> are used by uart and other drivers and these can fail in at least two cases
> where we can run out of descriptors available to the
> engine:
> - Interrupts are disabled for too long and all buffers are filled with
>   data, especially in a setup where many small dma transfers are being
>   executed only using a tiny part of a single buffer
> - DMA errors (such as generated by baud rate mismatch with imx-uart)
>   use up all descriptors before we can react.
> 
> In this case, SDMA stops the channel and no further transfers are done until
> the respective channel is disabled and re-enabled. We can check if the
> channel has been stopped and re-enable it then. To distinguish from the the
> case that the channel was stopped by upper-level driver we introduce new
> flag IMX_DMA_ACTIVE.
> 
> As sdmac->desc is constant we can move desc out of the loop.
> 
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> 
> Changelog v5:
>  - join with patch version from Jan Luebbe
>  - adapt comments and patch descriptions
> 
> Changelog v4:
>  - fixed the fixes tag
> 
> Changelog v3:
>  - use correct dma_wmb() instead of dma_wb()
>  - add fixes tag
> 
> Changelog v2:
>  - clarify comment and commit description
> 
>  drivers/dma/imx-sdma.c | 26 ++++++++++++++++++++++----
>  1 file changed, 22 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> b42281604e54..0b1d6a62423d 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -383,6 +383,7 @@ struct sdma_channel {  };
> 
>  #define IMX_DMA_SG_LOOP		BIT(0)
> +#define IMX_DMA_ACTIVE		BIT(1)
> 
>  #define MAX_DMA_CHANNELS 32
>  #define MXC_SDMA_DEFAULT_PRIORITY 1
> @@ -658,6 +659,9 @@ static int sdma_config_ownership(struct
> sdma_channel *sdmac,
> 
>  static void sdma_enable_channel(struct sdma_engine *sdma, int channel)  {
> +	struct sdma_channel *sdmac = &sdma->channel[channel];
> +
> +	sdmac->flags |= IMX_DMA_ACTIVE;
Add spin_lock_irq protect this flags.
>  	writel(BIT(channel), sdma->regs + SDMA_H_START);  }
> 
> @@ -774,16 +778,17 @@ static void sdma_start_desc(struct sdma_channel
> *sdmac)
> 
>  static void sdma_update_channel_loop(struct sdma_channel *sdmac)  {
> +	struct sdma_engine *sdma = sdmac->sdma;
>  	struct sdma_buffer_descriptor *bd;
> +	struct sdma_desc *desc = sdmac->desc;
>  	int error = 0;
> -	enum dma_status	old_status = sdmac->status;
> +	enum dma_status old_status = sdmac->status;
> 
>  	/*
>  	 * loop mode. Iterate over descriptors, re-setup them and
>  	 * call callback function.
>  	 */
> -	while (sdmac->desc) {
> -		struct sdma_desc *desc = sdmac->desc;
> +	while (desc) {
> 
>  		bd = &desc->bd[desc->buf_tail];
> 
> @@ -822,6 +827,18 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		if (error)
>  			sdmac->status = old_status;
>  	}
> +
> +	/* In some situations it may happen that the sdma does not find any
> +	 * usable descriptor in the ring to put data into. The channel is
> +	 * stopped then and after having freed some buffers we have to restart
> +	 * it manually.
> +	 */
> +	if ((sdmac->flags & IMX_DMA_ACTIVE) &&
> +	    !(readl_relaxed(sdma->regs + SDMA_H_STATSTOP) &
> BIT(sdmac->channel))) {
Seems duplicate checking here, IMX_DMA_ACTIVE is enough.
> +		dev_err_ratelimited(sdma->dev, "SDMA channel %d: cyclic transfer
> disabled by HW, reenabling\n",
Would you change the print log to below:
"cyclic bds consumed all,reenableing".?
> +				    sdmac->channel);
> +			writel(BIT(sdmac->channel), sdma->regs + SDMA_H_START);
> +	};
>  }
> 
>  static void mxc_sdma_handle_channel_normal(struct sdma_channel *data)
> @@ -1051,7 +1068,8 @@ static int sdma_disable_channel(struct dma_chan
> *chan)
>  	struct sdma_engine *sdma = sdmac->sdma;
>  	int channel = sdmac->channel;
> 
> -	writel_relaxed(BIT(channel), sdma->regs + SDMA_H_STATSTOP);
> +	sdmac->flags &= ~IMX_DMA_ACTIVE;
> +	writel(BIT(channel), sdma->regs + SDMA_H_STATSTOP);
>  	sdmac->status = DMA_ERROR;
> 
>  	return 0;
> --
> 2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
