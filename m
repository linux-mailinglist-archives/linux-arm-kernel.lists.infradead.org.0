Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5980B1D0A6C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 10:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojzp0KPRhGIw987x+EvirhPTFkdva7fxX2Qse7oO3jE=; b=BO1DczILEUiI+u
	9iGFAcBQEKhxLUUaN6D3ef/kuJQvAqtiSAoaVf3+/ffNC20kcGpGYbEU8Q+pYQpumvx3zk7AKHKJD
	iS7OUC7dK9nox8MLRGzBLJb/p95O+o07xt+a5tHGUbA2RrMyEYqmgtZ0O4yHE/F5b4luKi3SN88lR
	tcCbKGSDbMr9qadNPYzz29M9lRIIvT5KDSz9ot8WaF5bq1GTWOtZBEE3nmlRRkGHlm0qypcRC8uSh
	eP9obmiweFtkIgEA1o2WqxkU5DE+x1gevxb2Dwc1Ayn1HBK94H+wRFU63NeH9ho2sLSI0wiMVXpyS
	oQHG+7qCHv2xIJWhgBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYmLo-0004yj-Qf; Wed, 13 May 2020 08:02:48 +0000
Received: from mail-eopbgr00062.outbound.protection.outlook.com ([40.107.0.62]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYmLh-0004xv-7G
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 08:02:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OP9jLt6g9bK1UMpxIiHAYFojRbtYhQNN7PrdG2c04glWpzkcS/lKldr1aLcm69xkeYgHunRM7c+qfzI2CO/H2hP24FsEfWhdtDBtjjODAZDt60v4ZXbsTxWU52H6/nRtoXuBYzzlnDon5ywdLvuiSLZUs6+9lxS/Vbqd7CccWb5EOpxD1EirJXJx+L79+66tbDrU5/aPD5gxs6itDKn66R4x8gNTqqbKU/Qb3sxGb+SyI3y6Gmh0IuvSC+GVF9z3fUT+XvKsYTp5ZvT0LPE2RMmAki4creLCaZB6l2uNBECqJNAC0Uf82BeM6/6roYrSG/pXGcBRNBhKGQOmIziYTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYivjqDq8x+XtpfO1PLzvGCeEDtU4rA5+wxbA8KBhTA=;
 b=VsmiwoCploOuFX9zAaFQmEoyjZZ+gplw2+hM8DyRg86BrAOMzJuRv1KTimxiqBqU0WyARsQkPy6Qo3KNMxTWa3r6dw22S4xzFq0E6YJpeGLefRYvjBwqi9ovJ7qzdx7jy16/txHN+fz2agC5s63i7dWcU5HKjTc641RITrhcMahY8KOQG/FCWlbc4JyYUs/Vi0sp3IYsLzhLqlwnRf9NNB3bSZnHEQW5u1HYvHk+A+zSCKijs+5hfz6mmNcHHg+oP8wslOfJW1Phoub2sl9TC3bagie5IvFuafBxpsYKpj11xATpN+1LIE/Uu6dzBre0SB2RDNsV1Prc+HS6vXhxrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OYivjqDq8x+XtpfO1PLzvGCeEDtU4rA5+wxbA8KBhTA=;
 b=MX/Rd71fw8Rbn3G0d5kbpIrwxFvWW0Y9nlt/9dNhFxzClYeSVKI7QszJ4XOGjyt9047aq+mE+fm9xbsrO1mM8MB2EF6w9Ge9+NXmjwEpZVDOO8/3IonOVbCfdVBIkHtWyG22vvvnBcUL28C5w4mSC2EZN6QU8lEXwbIyjEW6zXA=
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6637.eurprd04.prod.outlook.com (2603:10a6:803:126::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.24; Wed, 13 May
 2020 08:02:34 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.3000.016; Wed, 13 May 2020
 08:02:33 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, "dmaengine@vger.kernel.org"
 <dmaengine@vger.kernel.org>
Subject: RE: [PATCH] dmaengine: imx-sdma: initialize all script addresses
Thread-Topic: [PATCH] dmaengine: imx-sdma: initialize all script addresses
Thread-Index: AQHWKOxYpJs8jLiAkE2zmCIcrek9w6ilpjxA
Date: Wed, 13 May 2020 08:02:33 +0000
Message-ID: <VE1PR04MB6638AAFB64E28929C0F4676E89BF0@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20200513060405.18685-1-s.hauer@pengutronix.de>
In-Reply-To: <20200513060405.18685-1-s.hauer@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: pengutronix.de; dkim=none (message not signed)
 header.d=none;pengutronix.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 46b633f2-db53-48db-ce9d-08d7f713fe58
x-ms-traffictypediagnostic: VE1PR04MB6637:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB663737274F3703230E5D00E189BF0@VE1PR04MB6637.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 0402872DA1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ve13W5OP2uA4o8aASR+TEc8uLRxuhARszoesKhqZ5s75Ot3Vg+nvlNIlGwEzufnQYM/hdzPWnijbGY88s0Q52wBn8baVh+7M9Tf3lN7+HakZj79n9GHPFKP+Q/xcsQcY0afrctkABHAYIOES25EBYOMHdVBF4p00rr2xIsxvb6MsC7C+1SBU5tMV36MiSpV8xqq5DjOfmW5PGacR9rz47AHn+UpscwzcdrT/5jAsVa2INS6mYVXVvm7NqS7zBDSKTIz4gOqzH0xMQxwxl25pP79pxw3wjlQGsYA9ZB0w+/dm0wxdajLOW+YDjP3lwNqqAb+XZ0i9JFhO7Y04QgkCWFSCOGYeLWbj+4g0n3zaFl6O6cjML7mO0X+fwhqkrpdwBrkJXfHa1KjnuQugF5HyYF52dqTANhYVkKqnLoKQTciLJO7pOY7m2OeBB0fuTOwH7mS6nmuQ0dZYfn5OGwJDtIn3mM+95pqFCyC56zc1Z9c4uAjWnQIWqBc/HdezzRQgdyELaRfQoLNSuUYD1z9lyA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(39860400002)(376002)(346002)(396003)(33430700001)(54906003)(110136005)(52536014)(186003)(26005)(53546011)(6506007)(9686003)(71200400001)(7696005)(55016002)(4326008)(8936002)(478600001)(66946007)(33440700001)(76116006)(33656002)(316002)(66476007)(66446008)(8676002)(66556008)(64756008)(86362001)(2906002)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 63yZk3TPlaU9Deloy97GElODEk2J2/1WCsoMLwcZ7yxUmaYr4QyzmnlVCTmfznVUHiK9wZl1p16h0CKV+jwTdkl8b5gjMF/wokk9yANOGGKRsbkqlG7vUv89wN8FEUbn6GSKzCf+fNvNb5Scp7NS0Gd/TdW5tfpi6xR6UXip3do6qdN8lOKO+EKI3gWZX2DDtd+QMJcAptzcpeeSYYzi1NtNYmjv+fPUMhCjoQf0yPD/vObRnAErgmgfaDiQuPCjJOlmU6uPRSRuc1s2Ezt4xpKuTN01ztmpMnIqNyUNILjb5xLLFMSNcsSjceaN0NVIjq1SqYiIDqRh2ZlYEn3bF20VWxoxPILKjFcwM2JzpkVLGxkur7bCYG0L3Tjr8sMuuDP6aQrKU3gj93ZvhC9NKA+J268stFNNSpa6lpJ1Gc5SCSTPQLL35bKHZwD5Eui1lhgAqBPwo8YhN9Nl70OSErrEALZx1BXwYEhc0HkHfbE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46b633f2-db53-48db-ce9d-08d7f713fe58
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2020 08:02:33.6438 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MSi6q0Fxq1873ITvkPfrxvqJC36M4uXCQt8umW157z+B+GdpFAv2xmKZhSi1KgmBdLO66YZzFJQDZlHN8ahv8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_010241_262277_18789F7B 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.0.62 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.0.62 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Vinod Koul <vkoul@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/05/13 14:04 Sascha Hauer <s.hauer@pengutronix.de> wrote:
> The script addresses array increases with each new version. The driver
> initializes the array to -EINVAL initially, but only up to the size of the v1 array.
> Initialize the additional addresses for the newer versions as well. Without this
> unitialized values of the newer arrays are treated as valid.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/dma/imx-sdma.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c index
> 01422e721b26e..2ca79357f57dc 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -2080,7 +2080,7 @@ static int sdma_probe(struct platform_device *pdev)
> 
>  	/* initially no scripts available */
>  	saddr_arr = (s32 *)sdma->script_addrs;
> -	for (i = 0; i < SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1; i++)
> +	for (i = 0; i < sizeof(*sdma->script_addrs) / sizeof(s32); i++)
>  		saddr_arr[i] = -EINVAL;
Reviewed-by : Robin Gong <yibin.gong@nxp.com>
> 
>  	dma_cap_set(DMA_SLAVE, sdma->dma_device.cap_mask);
> --
> 2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
