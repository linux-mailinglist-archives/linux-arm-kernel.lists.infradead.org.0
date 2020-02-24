Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119AF16B117
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=NqSJRIVCOjH8W8i6f8gv6fdLF1uN3w9GFdQxpcogkII=; b=sjF7n3+IpMI82x
	iFz70SWZNwC2nJWU/hkTJjMSByO92jVkRljD7dmzkrCGMD4phg5N+nSaA5eLSS0ScXEQl7LXvR9DM
	pgcKyqLmOACJ1xySr6hpn9H+x6fJbieqU9Wrbx6ADWYqC7CZ5aB3t3WLwixGK6LcY6OReQOeGws+l
	+6NC6fcqGuK9BxhVNW4fH0WH9v6edjCQn8n+gv6/Mc5ww+JfwUFf7mZGVE5TnqYex+1jFLoOg+IBA
	uaEUSo9mu17SqzUdH3EjjfHzsKUg99FaWL2Z+UGVpXgL0Ujh8lF3edVcmvAACoBVEFP8Dql5QaEy/
	hd/guuNRkPmxHf06O5bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Kbx-0000GE-Ar; Mon, 24 Feb 2020 20:45:53 +0000
Received: from mail-eopbgr130049.outbound.protection.outlook.com
 ([40.107.13.49] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Kbo-000063-AF
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:45:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=donf/+Fgmxv/HDnHPwkM/ZWNnLlUTqCWbc1OQPhLMQpDGdB6riLKIJO3f4MjHgUJ1/VrFM5KkY21d1aYqk9kQyLQwnX1UsKLsFUdPDA6SmLPvvtyozPfKRSH3MEuM65XGrHR98RqSFz4SrVKA81hkv1w1mszhCY4I6c+lyxnlF9sZeQz47UxSqHj91ghKVqRCZdWpHwkNoG/cVDso7FBdIqbbvnomH0NLEATcf4FgSQbfMGca5/ba8dMaq64yur70bLIxZl1vpzP4xWS1oJjYr8y1MHcDr1wvZEZ5fhYoiJzFelKT/KjE1OsR+TC45CeXpaT0nEa2XoSSIWbXzTtPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YVAyN4DxnK7gyOAe9ZK3wRvcL5Rr02Vr4W04wHQZkBo=;
 b=O/fZKSeLVesysjAo4fgattBmzDi/671cT0D8oJ7R1Q8IU8Blif51MtuFjIeg7uh2OrJCSgxKtcvA+k5NauKPJJgV5yX0B9WIBhsxvS8GMTzQyti3pXBJ3oAI6Sq2slJnjo6tYikTZEOBVGd6BziBQlOaQjfAqaiOllMLWYZHacFPZwgLj/DWceOT5wXz0MN0J+bBQwYtJfoTLd/NXb+MutDEfcqyIqBZSJUHrvBXtS6CcG0NX74TygbZpST+ZzKafqRZM+L2pAy5UjZYxABDR0HdkoOFCSCUHCdg8ekNyrIshLfMnT0IIgjNUPaVd9lVvvrDo4mpFxrEwO0GYlmWvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YVAyN4DxnK7gyOAe9ZK3wRvcL5Rr02Vr4W04wHQZkBo=;
 b=G/oq6z1PAefyDm9eO5L4+yZcbv0NYKe9GMqZgTjZyUraGprTWncU0tRTpzE9v0YCnfQrqnSI4gAF9xaD/aKhtJ0W7Ns0WNG96Q8zJSZAyjQLklNHnKG4ErF6syGHy7/2bZnuTiLJ6eIup91fdbY1o1rEkFnO/DwHzDwqrbWPu8Y=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6128.eurprd04.prod.outlook.com (20.179.27.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.21; Mon, 24 Feb 2020 20:45:38 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::58c5:f02f:2211:4953%7]) with mapi id 15.20.2750.021; Mon, 24 Feb 2020
 20:45:37 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Oleksij Rempel <o.rempel@pengutronix.de>, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH] firmware: imx: scu: Ensure sequential TX
Thread-Topic: [PATCH] firmware: imx: scu: Ensure sequential TX
Thread-Index: AQHV6Ag37CwhCwZ9yUiM6XYp9dM8Hg==
Date: Mon, 24 Feb 2020 20:45:37 +0000
Message-ID: <VI1PR04MB7023E3FFD1E58F415B269F63EEEC0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <ae051784024f8fcc458437e278c27b4e79c6fe7d.1582214881.git.leonard.crestez@nxp.com>
 <20200221053136.xz7kdvt5ipnm5ng7@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7771dc5a-6110-465d-51c9-08d7b96a8118
x-ms-traffictypediagnostic: VI1PR04MB6128:|VI1PR04MB6128:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6128A05D05A6FB22D6EFB304EEEC0@VI1PR04MB6128.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 032334F434
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(376002)(396003)(366004)(189003)(199004)(33656002)(71200400001)(4326008)(8936002)(44832011)(26005)(2906002)(81166006)(8676002)(81156014)(52536014)(53546011)(478600001)(6506007)(55016002)(9686003)(66446008)(66946007)(316002)(64756008)(6636002)(76116006)(91956017)(5660300002)(7696005)(66476007)(86362001)(966005)(110136005)(54906003)(186003)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6128;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HlPoRlvLJpnaPkk85E+qU3DuKqby/33cSbXprW0wtD0i6gykI4C6ge+gP3U3bSLxlQiQ5s4u/tYqsRshH/JcxLckJ8AIQ050xCnkVYkfC54YJ32z91GHLxI7jqdmZCHqcIkH5Dmfq2qSvMCIx94O2uUlBzFKT232DBFzB0LRQP5+8c8uhoObjIBnM4lX3pS5nRewtph/d0xvEvQQF5wWfh7CJ0E9sbg8Y3UzCIp7bvsXpvwjrBMFG4qlwGC1KqgLqiwERXwY6ILgzTwz18VLhUCXT6Of7H0w1oWDfeQmCG7oeYReVdbIm+qb4jG6F4VvLwtAGtkpzNgdKEa0K2I0uQ1YZaYnGZWuFIn91HGffK1vLmZgh/Q4HP3JQj5dR9SiRuLrMid6LoeAJ544Ab944tCIfpOkKZ3W4bRPfqpuj1MePHHiYAj1cswLlCIZ9w2imlM2I+SnfepthJx4bBAXzmKneCwyImp+jH5QI+86XMInKNa+3GL1CMBKXEP+AXG9lIBm7pAaQGdELF8gMRdxog==
x-ms-exchange-antispam-messagedata: hps3c+ViOYlKlnUswGqmBm2jYqdfS5xoYT4JgwBRagzgHm8uLogrX/Dw3Zo2fKQ738tbhBP7JfG/6a75k85qoRmVN2KAhbyHfOltWQDV8CVLWA0ojZ70JiERR6DA/Lspp2N5HdRCw27gJNLmscmU5A==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7771dc5a-6110-465d-51c9-08d7b96a8118
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2020 20:45:37.8197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LlNoF2v5dwrNWkrG98udx52K6rTlIOh77do3UOrBOPbcyKfgNVT9Ri/xoYSO7MNhX0U+qsGOKGJuEDlzHk9Zbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_124544_431136_EE4012D3 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.49 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Richard Zhu <hongxing.zhu@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Jassi Brar <jassisinghbrar@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.02.2020 07:31, Oleksij Rempel wrote:
> On Thu, Feb 20, 2020 at 06:10:01PM +0200, Leonard Crestez wrote:
>> SCU requires that all messages words are written sequentially but linux MU
>> driver implements multiple independent channels for each register so ordering
>> between different channels must be ensured by SCU API interface.
>>
>> Wait for tx_done before every send to ensure that no queueing happens at the
>> mailbox channel level.
>>
>> Fixes: edbee095fafb ("firmware: imx: add SCU firmware driver support")
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> Cc: <stable@vger.kernel.org>
> 
> Did you measured performance regression with this change? It will be
> good to have a note about it in the commit message.

I tried to measure "boot time" but measurement was inconclusive, impact 
is too small and gets lots inside stuff like ethernet phy setup for nfs 
root.

I wrote a special stress test module doing simple calls to 
IMX_SC_MISC_FUNC_BUILD_INFO and IMX_SC_RM_FUNC_FIND_MEMREG.

  * with this patch: ~68us/iteration
  * with this patch: ~62us/iteration, eventual SCU timeout
  * with tx_block=true: ~115us/iteration
  * with imx_4.14.y: ~42us/iteration

Source here (some tweaking required):
https://github.com/cdleonard/imx-scu-test/blob/master/imx-scu-test.c

Improved performance on imx_4.14.y is likely because no TX irqs are 
enabled since sender doesn't actually care.

>> ---
>>   drivers/firmware/imx/imx-scu.c | 27 +++++++++++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> This manifests as "SCU timeout" message followed by system hang.
>>
>> This is not a very pretty fix but avoids inserting additional waits
>> except in extremely rare circumstances.
>>
>> An alternative would be to implement a new type of mailbox channel which
>> handles all 4 registers together. Exposing the MU as 4 independent
>> channels is very awkward.
>>
>> diff --git a/drivers/firmware/imx/imx-scu.c b/drivers/firmware/imx/imx-scu.c
>> index 03b43b7a6d1d..f71eaa5bf52d 100644
>> --- a/drivers/firmware/imx/imx-scu.c
>> +++ b/drivers/firmware/imx/imx-scu.c
>> @@ -27,10 +27,11 @@ struct imx_sc_chan {
>>   	struct imx_sc_ipc *sc_ipc;
>>   
>>   	struct mbox_client cl;
>>   	struct mbox_chan *ch;
>>   	int idx;
>> +	struct completion tx_done;
>>   };
>>   
>>   struct imx_sc_ipc {
>>   	/* SCU uses 4 Tx and 4 Rx channels */
>>   	struct imx_sc_chan chans[SCU_MU_CHAN_NUM];
>> @@ -98,10 +99,18 @@ int imx_scu_get_handle(struct imx_sc_ipc **ipc)
>>   	*ipc = imx_sc_ipc_handle;
>>   	return 0;
>>   }
>>   EXPORT_SYMBOL(imx_scu_get_handle);
>>   
>> +/* Callback called when the word of a message is ack-ed, eg read by SCU */
>> +static void imx_scu_tx_done(struct mbox_client *cl, void *mssg, int r)
>> +{
>> +	struct imx_sc_chan *sc_chan = container_of(cl, struct imx_sc_chan, cl);
>> +
>> +	complete(&sc_chan->tx_done);
>> +}
>> +
>>   static void imx_scu_rx_callback(struct mbox_client *c, void *msg)
>>   {
>>   	struct imx_sc_chan *sc_chan = container_of(c, struct imx_sc_chan, cl);
>>   	struct imx_sc_ipc *sc_ipc = sc_chan->sc_ipc;
>>   	struct imx_sc_rpc_msg *hdr;
>> @@ -147,10 +156,23 @@ static int imx_scu_ipc_write(struct imx_sc_ipc *sc_ipc, void *msg)
>>   	dev_dbg(sc_ipc->dev, "RPC SVC %u FUNC %u SIZE %u\n", hdr->svc,
>>   		hdr->func, hdr->size);
>>   
>>   	for (i = 0; i < hdr->size; i++) {
>>   		sc_chan = &sc_ipc->chans[i % 4];
>> +
>> +		/*
>> +		 * SCU requires that all messages words are written
>> +		 * sequentially but linux MU driver implements multiple
>> +		 * independent channels for each register so ordering between
>> +		 * different channels must be ensured by SCU API interface.
>> +		 *
>> +		 * Wait for tx_done before every send to ensure that no
>> +		 * queueing happens at the mailbox channel level.
>> +		 */
>> +		wait_for_completion(&sc_chan->tx_done);
>> +		reinit_completion(&sc_chan->tx_done);
>> +
>>   		ret = mbox_send_message(sc_chan->ch, &data[i]);
>>   		if (ret < 0)
>>   			return ret;
>>   	}
>>   
>> @@ -245,10 +267,15 @@ static int imx_scu_probe(struct platform_device *pdev)
>>   		cl->dev = dev;
>>   		cl->tx_block = false;
>>   		cl->knows_txdone = true;
>>   		cl->rx_callback = imx_scu_rx_callback;
>>   
>> +		/* Initial tx_done completion as "done" */
>> +		cl->tx_done = imx_scu_tx_done;
>> +		init_completion(&sc_chan->tx_done);
>> +		complete(&sc_chan->tx_done);
>> +
>>   		sc_chan->sc_ipc = sc_ipc;
>>   		sc_chan->idx = i % 4;
>>   		sc_chan->ch = mbox_request_channel_byname(cl, chan_name);
>>   		if (IS_ERR(sc_chan->ch)) {
>>   			ret = PTR_ERR(sc_chan->ch);
>> -- 
>> 2.17.1
>>
>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
