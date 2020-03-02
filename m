Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E5F51754E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 08:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvUOasSWAI3LeUFZbfA9gH5xh8k6LmAKS4NfQMtiFy4=; b=baFhmpxPUgknC8
	/TUvOIeOla8IAh4WtAD/Rrh38ipRTGjJANLHUeDE8ku3JiFft4qZhsfYGYZibIjgOtVDLB1vKWp1J
	sV6uy79BKlRqnJxiaBtnJDpzuZEAM9stzHbKvGD3COa6/iPENYoz8GfK/GW7rA53BKPQ/ZI8WMupW
	COTyj6R2R7jcDZs5N5HWDxNnZrkEg2MGKMmaaGkNYSEH8fTCCqjk7eFy2+1Z1WLT1XoirPdnKrGD5
	PWUWNQkgmpHQws1b43Ns7qcpPAMxPt7Z0sXciF4N0b9gOvS4WfP5bSw6IzJRxt2gDvpPV5wEYQu/z
	H8vVxU5zAHWUfJwgh67Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8frx-0004qb-Ra; Mon, 02 Mar 2020 07:52:05 +0000
Received: from mail-am6eur05on20605.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::605]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8frr-0004px-3h
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 07:52:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yx/xED3x3NSwXaHLyPfXAqgOiyGJw5B9bDXygPZS7i3vbKb/XhSAIxrbg82na5U/jpSp05VaMwA11lKbPLIw5eekWFX+12PSdPh3nAMlNBMSZMJx8AAQ1C7YKKrqDeGz+KUrp4iw/V8dJCbWZLFGtGE8A1zIgGGSFrvWkho5bIUNA7C7tYFVBeVgOPcOwILH81/0UioQ/m9GadQjxyJI7bxXSCoz2JshdTRDrwhLGGnB6So9ZXA7azpJG/OeNjNamu3ZpLXcd0Rvo2V/nT5k5gPbu4nPBfCUdooP7XAjOX1kU95pQGUYJJnB9ZFvGv96DaFnvA0bv6bom2ZgLwJ8HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CW8kX+OBHDocvqUzhceSUBQpJ+2wT3OAYRuLZ0tqIY=;
 b=IaI64oiYHRTFDt7zQigYbvHlBnzJy4HeAkOoLaQ11Tdvzvtn+hUq6YqwaIYBQxNR4OTW2UqWnuxVPcidjx5B65Q/g0o94ZIXJDyhkIEi/MpTyj/7wkarNXN3XtPKrpxo1ou7Xy1mWHXQwHvY2dCL4PE0/S5u4Ps3H2lrpORhtGfJtobZbQymqi48XXkXo+Bd3M0oD3Emp2+dqJu40sEGbNzWKQ6Irs8LTrNrbEQ9jJ5Ta2Nh9J365ToPTXZl9TH68jcPm5KoLQ5YjHrH213svLKaijDrKC8M47FMV7j2QFkmVvldy98cq5qInT4vlFOeH0GQfJNOaEn/7ou5t/EymA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CW8kX+OBHDocvqUzhceSUBQpJ+2wT3OAYRuLZ0tqIY=;
 b=Hg5Pf70imGtHtGk8vKmDMDHHDlLCrWxVBER9rpDL28/iN/kkmmRM4DwCxy4VB5UPAXQ7CY7YmnQ19r7nfsGEoeDlfU3LVzMaVmqOHC/iMEkPjtBREsIGNc2nFTTjsSryWDDh5i/Jp8UHS5IuE7XmUHexwCgToI9UcoQ8t7f/FlM=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (20.179.232.15) by
 VE1PR04MB6445.eurprd04.prod.outlook.com (20.179.232.214) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.15; Mon, 2 Mar 2020 07:36:54 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::490:6caa:24b:4a31%6]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 07:36:54 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Martin Fuzzey <martin.fuzzey@flowbird.group>, "dmaengine@vger.kernel.org"
 <dmaengine@vger.kernel.org>
Subject: RE: [PATCH] dmaengine: imx-sdma: fix context cache
Thread-Topic: [PATCH] dmaengine: imx-sdma: fix context cache
Thread-Index: AQHV1qnIaNGAJ9R9HEaS0rzYiAQ7rag1GlnQ
Date: Mon, 2 Mar 2020 07:36:54 +0000
Message-ID: <VE1PR04MB66383055663F08FBFDF2E47489E70@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
In-Reply-To: <1580305274-27274-1-git-send-email-martin.fuzzey@flowbird.group>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
x-originating-ip: [183.192.236.243]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 574c4a10-eb01-459e-cb2d-08d7be7c7aeb
x-ms-traffictypediagnostic: VE1PR04MB6445:|VE1PR04MB6445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB644543B84FA553006E6EAA3489E70@VE1PR04MB6445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(39860400002)(346002)(376002)(189003)(199004)(4326008)(2906002)(52536014)(186003)(86362001)(478600001)(8936002)(71200400001)(33656002)(8676002)(81156014)(81166006)(316002)(66946007)(76116006)(55016002)(66446008)(66556008)(66476007)(9686003)(64756008)(5660300002)(966005)(110136005)(54906003)(6506007)(7696005)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6445;
 H:VE1PR04MB6638.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CU51/NeB4Q7nPZKexdqQNU22py3pdtD80JGpdp8i1VnfetPXM+OvfNi5wXsMidqzuUuFjf7zMJTg5tq+u/1Fjbv3TIR2Xlmk8E7cjLRfaAADtjBX3/XXhP1EnGP9k7pfrjG6p8uHk+ueHojkACOhs40n4RSptR8nCMPlhYHWKFkvvGdEIPK5qX+G2xJMabfOzUEapAJcFq1rsDkF19Dd8mcmodTT1I50OxZ8CgQyo4Y/H+rpoBGN7f7HnCAyraNy2tdyUgVfBA9wMqD4ltRFpNuJgPWh+mHNfiu3hWo6smOorEmpKRrR7llrNL011plJHBqNo1cXe5t//IV72PdIAwOGqswri8wuuPB7FXJsxxaH+pEW9WQHko+NjIKR0bGEn7nsPq1vCicnMSkfoFWsFibllvntCIUVX+3ciJpkIaJ5vim8inxtF8obLvTISIpSHkd7pqqRQqZWYbRfvDuTQLOIDZTAdE/Z4KHzG2iGtplqzLWbgBjwbEo6SPg4k0AmQKMFKAAkeaDDx2c7t9dgtw==
x-ms-exchange-antispam-messagedata: mwH/hvwRRAbc0k7KQ7Wh1pXwAdABjQ7VaQKZWRbMz83gIVq84mTDvW1JrUq4++ZaLz/fxFuBu/vxY8s/c0CPp6sbOPK+FUn7tXOJAU0XeIi5a0GloAtQ8/xRCZ5ON93ugrFQzLS6EcdTiZQqkhx4AQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 574c4a10-eb01-459e-cb2d-08d7be7c7aeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 07:36:54.1990 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aRHXWh+CsUO01BTgF1us9wvY+sqTuQgECo8Lj6yoe80qVb8vekEf/VV80Hkf/z2pEQIL4aoxa6rPiGxXoZy1ew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_235159_153961_1A1F6E96 
X-CRM114-Status: GOOD (  22.79  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/01/29 Martin Fuzzey <martin.fuzzey@flowbird.group> wrote:
> 
> There is a DMA problem with the serial ports on i.MX6.
> 
> When the following sequence is performed:
> 
> 1) Open a port
> 2) Write some data
> 3) Close the port
> 4) Open a *different* port
> 5) Write some data
> 6) Close the port
> 
> The second write sends nothing and the second close hangs.
> If the first close() is omitted it works.
> 
> Adding logs to the the UART driver shows that the DMA is being setup but the
> callback is never invoked for the second write.
> 
> This used to work in 4.19.
> 
> Git bisect leads to:
> 	ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> 
> This commit adds a "context_loaded" flag used to avoid unnecessary context
> setups.
> However the flag is only reset in sdma_channel_terminate_work(), which is
> only invoked in a worker triggered by sdma_terminate_all() IF there is an active
> descriptor.
> 
> So, if no active descriptor remains when the channel is terminated, the flag is
> not reset and, when the channel is later reused the old context is used.
> 
> Fix the problem by always resetting the flag in sdma_free_chan_resources().
> 
> Fixes: ad0d92d: "dmaengine: imx-sdma: refine to load context only once"
> Cc: stable@vger.kernel.org
> Signed-off-by: Martin Fuzzey <martin.fuzzey@flowbird.group>
> 
> ---
> 
> The following python script may be used to reproduce the problem:
> 
> import re, serial, sys
> 
> ports=(0, 4) # Can be any ports not used (no need to connect anything) NOT
> console...
> 
> def get_tx_counts():
>         pattern = re.compile("(\d+):.*tx:(\d+).*")
>         tx_counts = {}
>         with open("/proc/tty/driver/IMX-uart", "r") as f:
>                 for line in f:
>                         match = pattern.match(line)
>                         if match:
>                                 tx_counts[int(match.group(1))] =
> int(match.group(2))
>         return tx_counts
> 
> before = get_tx_counts()
> 
> a = serial.Serial("/dev/ttymxc%d" % ports[0])
> a.write("polop")
> a.close()
> b = serial.Serial("/dev/ttymxc%d" % ports[1])
> b.write("test")
> 
> after = get_tx_counts()
> 
> if (after[ports[0]] - before[ports[0]]  > 0) and (after[ports[1]] - before[ports[1]] >
> 0):
>         print "PASS"
>         sys.exit(0)
> else:
>         print "FAIL"
>         print "Before: %s" % before
>         print "After: %s" % after
>         sys.exit(1)
> ---
>  drivers/dma/imx-sdma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> 066b21a..332ca50 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -1338,6 +1338,7 @@ static void sdma_free_chan_resources(struct
> dma_chan *chan)
> 
>  	sdmac->event_id0 = 0;
>  	sdmac->event_id1 = 0;
> +	sdmac->context_loaded = false;
Martin, thanks for you patch, sorry for the issue left in kernel for so long, because my below patch set has been pending from last year. I would like revert commit ad0d92d: "dmaengine: imx-sdma: refine to load context only once" since some drivers may change.
context during two transfer like spi did. I would pick up this patch set this week anyway. 
https://lore.kernel.org/patchwork/patch/1086454/ 
> 
>  	sdma_set_channel_priority(sdmac, 0);
> 
> --
> 1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
