Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6C919A332
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 03:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZkf1LJ63Wz/4gz6JPNBCbZgimC8SS53XSGnVBRakVU=; b=dHMVOsMeufa+4d
	8+YlmZ/OI/vV/UWrjVzbm545+TVMZkxN1doEwL5Hvn5JsAT+DPv7en9kRELZsxvmL9+eVwLcmnGXA
	H5KXIDQUBp/woewktegRFuHDETM8UkmqUS0fyuNgg65RQNBNTpBsbYhun12Ldw/F2WSXVqs8n9+lC
	na1oUylkIs8uqzXT54HHbeDMKlfxYIVCLziTkYcr9KFtMMiVH9/jMAvRKQztaEdrNw7SYp//s8WQt
	FM6q64GX9rrzAKsBlJf1dIMuPGLtEuo/aP0vG4SOUW+SsNslQhQhhO8FMn12XV1C5ca+eg3AZCvs7
	P33ASnBpTvqHMtCMEMGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJRyX-0008Fh-A3; Wed, 01 Apr 2020 01:15:25 +0000
Received: from mail-db5eur01on0621.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::621]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJRyN-0008EC-Ic
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 01:15:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OPNFal+76+7vh0SPA038TdGhsKS0Yc/GiHxmW8xr2wz5VDmLqSoiXJApdymCGC2TGQFAm/JyBd+HbNcLUrT5cD9DIZ8v+fm7fd1l6AHGFu7YftOzp6sEKoFSLe95IVAFkZqyHZ4qjs8AE7whtdpBOjOTAM8wq0deFKaB52NgZf8AKk2AVp9RNaWITC1J7MTSamxAZjxYtfpAlthHvzF4SNtp1VfNxUzQ3CVku7Ommi/C7tKEoUM24Ro+RP/MJjliXgLlplAV0w622xmEjyXdQ9FIemx1eT2cEyXFBBlDG3yIlihwdvlr/DlkvBkzFjSJdYsuzRxhTDD5qcQM7dVKiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hSIiQj8ma+Hi/hn+u8V54JnwYLhV+RiI1bj+gUUteuU=;
 b=PHn9dqiYxf7JPvgo5YETmzs1POOF/OKskvseebT4IF/MhM3Vofa9V7P4uZPe1TjTlpedB15srEwmeLz7dk874s7fg51UgqoK73ybjtqae85CHvwU05gTq39X4pZdBx1i5ogcMLAAvcfMwdXgUlk1eUzXYTgK6gzAZu9sAsxUTyb7l92g81qmmMQY7za6eQNcE8Vs7jMT+LhB3U0lo0zLLSCxKBQzJqyUdhfC6WuUhtpEoKbm8o7oS+8m+D5AGkOfPopKOmwITBf1C47dRv384q0JHLa+dE+D8+rdIOl7F1TjNDwlBKhQnr9PBm8h5sz4+pKDFCwjZ6/wQuWzIeqrSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hSIiQj8ma+Hi/hn+u8V54JnwYLhV+RiI1bj+gUUteuU=;
 b=kL5Dmv0wHO11SprLbGo00v/pebdNxhi+HYixj6OgzXQDvI0xEW2ea4ZkrocNfnWZql3R0+KhKHzjCB73t8MD6XFfCvJb07+2eP4OWiZ3cVzjgjpnZ14mGjfbrLMNQ6WrXwIh1VGGaQYQzEz1fMzSkYH/IBtViq5pw0+HriSPc0s=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5041.eurprd04.prod.outlook.com (20.176.214.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 01:15:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 01:15:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: RE: [PATCH 3/4] firmware: arm_scmi: Check shmem property for channel
 availablity
Thread-Topic: [PATCH 3/4] firmware: arm_scmi: Check shmem property for channel
 availablity
Thread-Index: AQHWBFX349uurCtgD0iyveXnNMUeUKhjfOyQ
Date: Wed, 1 Apr 2020 01:15:08 +0000
Message-ID: <AM0PR04MB44819AF3A77BF5362EE95D6388C90@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20200327163654.13389-1-sudeep.holla@arm.com>
 <20200327163654.13389-4-sudeep.holla@arm.com>
In-Reply-To: <20200327163654.13389-4-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b1f57596-5cd4-4520-a40f-08d7d5da1e83
x-ms-traffictypediagnostic: AM0PR04MB5041:|AM0PR04MB5041:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5041D05F5163ED0DE0C95F7D88C90@AM0PR04MB5041.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(346002)(366004)(136003)(86362001)(52536014)(81166006)(81156014)(64756008)(66446008)(316002)(66476007)(4326008)(54906003)(66946007)(110136005)(66556008)(9686003)(8676002)(8936002)(7696005)(26005)(5660300002)(44832011)(2906002)(186003)(55016002)(478600001)(33656002)(71200400001)(76116006)(4744005)(6506007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MMEuOR0FsyPesPXYgFH5NmoFG8ODY0VX7rNrbUr8UfYQU5dgt7hVfxICPx+nRfvoW+SZFwTJp8pqyttmGkyc2hQvCG2Ob+1QJq0XT/sWtcsD69mihias1tx5z6YsTDBXV9aNwDtJFSdW+PnGPqMkBjyKBMMp2mtslCC8w+M/bjm7XXuJWd7D1RsS/CPQ+yVd4SIkM1v3HsISW43Xg52QjKT7n7dogzfuW9clBeTR5oovS+p3Hzvl/AgyfKzv3mlSq9j9BAH/4iBntp6Iuhcu+3xwktM/+cliqjV1gzUV+HulY2taN7YjLHhl/S2wx6x2l/M44SHOOfmtGqKBLniNepkM7HqgsCvvz1rjeR7jLE0J/o5fOGp/lPPOXgPsQNCMsSdp7rlIviH4Y+L2uPlzVugsdWHX1KYTHUHfnvdXJgXLcDQssErq1LCcu4Yn8P+9
x-ms-exchange-antispam-messagedata: mhpLNnnxxmo0iCeQWZ6ek8MwrvUniI3kqfJx+6MJ2iM/uUUFfup4LnCA0w68PPlXEVs3GomQj1HuMF0ZT7FivCWASBjY/T9ebMbgQFZG1hGBwFbETAelEeRIlgdFVxWlzPQiTTYcd08qRj9fW72BnA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1f57596-5cd4-4520-a40f-08d7d5da1e83
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 01:15:08.6915 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: p+RE3FXLa2+qnyQhU2S85NydL/lYog53SjYM9hX1dVLrbI9xD+8Aan62pHlYM71QeOTmAmTinxrF5l4o9GT+8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_181515_615888_3BE63AC8 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:621 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 3/4] firmware: arm_scmi: Check shmem property for channel
> availablity
> 
> Instead of declaring the channel availabilty unconditionally, let us check for
> the presence of "shmem" property and return the channel availablity
> accordingly.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/smc.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/firmware/arm_scmi/smc.c
> b/drivers/firmware/arm_scmi/smc.c index dd4b54c29679..5929c668dc1d
> 100644
> --- a/drivers/firmware/arm_scmi/smc.c
> +++ b/drivers/firmware/arm_scmi/smc.c
> @@ -33,6 +33,11 @@ struct scmi_smc {
> 
>  static bool smc_chan_available(struct device *dev, int idx)  {
> +	struct device_node *np = of_parse_phandle(dev->of_node, "shmem", 0);
> +	if (!np)
> +		return false;
> +
> +	of_node_put(np);
>  	return true;
>  }

This is global shared mem:)

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> 
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
