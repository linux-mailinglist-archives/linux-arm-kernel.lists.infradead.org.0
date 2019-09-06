Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8661FAB2A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 08:57:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQgZhkLplNQKvPGQvPlc0CRYDBllyM9a64uiUxpBBcE=; b=I0ijYk1oe7FifS
	r9T/ydylBZfWlvI0j+fPZiti/q/v2FEr3zMNVBkLy6vueVtmKaoqJOfT72q0EjifINUZvnnikwkOT
	hoIZx/GBqMG4h3bG2WWYVtPjkRxgJZx3G2ThGUpPoD7dKiobG+H/Ag9eTnsjBeAVlK3GRfdmA1eRH
	fpz3MqKbZyPF0VUttNIatn8+E4eDLQvHE+G/mTV/c9jqZBM6zoKfnyE7HjaCYrQBd2jxMDAZa5SkP
	xDZmsWUp62ICCcC1T8Lfk6ZMwkn0wsRwUyaGK2X1M64VYGJKHQ7uuy/ixAbwshyP0kxQey1kKI2OP
	adRkMX+raX54b8NI3TRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i68BX-0007Ex-20; Fri, 06 Sep 2019 06:57:31 +0000
Received: from mail-he1eur02on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::608]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i68BO-0007BF-Po
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 06:57:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jVYG8zO5STh8534XpgryXGI3+XZ+8vH1bZlEa2SA9Z9PnhGw6oDY6xwdOh0JGRvRg4zO+/68yPQs3/38ZuwPxh9cbidChBA6D8RxunmssHVmtu5UozpeN8KL02960b03lUoLurGU4n54RfZ6lZN9jzYeWp2aP4Vau4N/lgMYlT3SekKeKlNVOwLlSrPVUlzsojl4pKkVwTiYYjVxadxK/BVvJelVwZVuLYMQa/vQfKfDxbwhf/X5M3ckvSpKXp43XO/lc5Zgv1Iy1UuJJ2Zk5h64hJ336+A4br5oMTwP87NoSkNXtPBcmjcs5ZSfOO1lF+WGxxUqojoCNJJx5MX1Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Om36ehWayyehFA2Fs5opitONQ4cadyU9Rr3blLjhoA0=;
 b=XVCWW2aM5XD8VU8RAJEm3x52E5L4HHIFwdulODUIuuVvXA6ZbjwIYhJ0EsaFaDZncCzffR1n1RmAwckxbCkkanyh25epp3PgUesLE3lKK/rCYLCytcgEcfKtPLfkrF3HmLVYBe9Zaby6UPvN7m6lnraTJ3NR+6d7HtdmLo7fEblOt4S2kGIMEh9XvmAmGbFiBNIRP9TZDCZikXIOvmgI1vShnKvV0laLXgcmDei8U4sKrqiNt4BB6UfEMA6PvO5oMip/9+OuwD8yBr6oeH2Neq8uqSX4EloRtrOD78IjKpC/JPL1EMtJW5yWvZZzsykhCC31Vnq4P4fH7c18VRbBtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Om36ehWayyehFA2Fs5opitONQ4cadyU9Rr3blLjhoA0=;
 b=gCRxyypU5IQNuqvMXNX07urSGaim+2e7zcxbfKEuPEcK4KXVn3plNwdIQoA3NBpqIcgNpl6czB5JcXYmh1MW77dwAAP64QctUVxHJopDcLruwBciFa9SqLlAjRLSeKVpzcODcBkJ3XN21cf4d+I8jXdW7yoFj3umnYcIhYS+Cls=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6530.eurprd04.prod.outlook.com (20.179.252.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.15; Fri, 6 Sep 2019 06:57:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2220.022; Fri, 6 Sep 2019
 06:57:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Topic: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Index: AQHVV89l2gZHrF0tR0yZfYtuVeLxmqceUPbw
Date: Fri, 6 Sep 2019 06:57:19 +0000
Message-ID: <AM0PR04MB448144701DB63A3C9F05B3E488BA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
 <1566356496-30493-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1566356496-30493-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ff5ad42-f657-4f52-d67a-08d73297762d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6530; 
x-ms-traffictypediagnostic: AM0PR04MB6530:|AM0PR04MB6530:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB65301DBF66DA41D0D723EBDC88BA0@AM0PR04MB6530.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0152EBA40F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(346002)(376002)(396003)(199004)(189003)(81166006)(52536014)(229853002)(81156014)(74316002)(2501003)(256004)(2201001)(14454004)(8676002)(14444005)(478600001)(44832011)(476003)(486006)(7736002)(33656002)(11346002)(66066001)(446003)(26005)(76176011)(76116006)(2906002)(186003)(66556008)(25786009)(110136005)(54906003)(66946007)(6246003)(6436002)(4326008)(305945005)(5660300002)(71190400001)(71200400001)(6116002)(3846002)(8936002)(316002)(6506007)(9686003)(66476007)(64756008)(66446008)(53936002)(55016002)(86362001)(102836004)(7696005)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6530;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ask0B9TkBnE+YMkq8MlM255mFq8xErqFKUBAukPWmufJjeCrE/KR9x6a4R5TJSsgG4qZavs7AY4LCS5Te8Sk6ZJZ+y3Z4dZ8f1SEnWPyEebuxHQgRqXK/DmMnZVLWdfQwmr4P/RZVGeDDGjf9Bzc/qmi1156zaOFm5DTAhteNuIScdoeUw23byIlFB0VnNEffzN5ftLrWf0JOHIT5RMUy388lEhNr2j3Hv7gUs84ZaH3I99tZ16SQLU6Obmqae20h9FYSZPfm5s5aBt2wjCrVIIR0yHhlOacCS/ADQVz8kBOHxQ7pN2EaMDIFPNo0P+O6aFmPLLMiW1hXqBd2nOC6IQDZEr7DLNKxpz5BMcjx0ge3dPt30zvsESV/fGBiwzw1rvIF72qCx+1W7DCeQKqCrhR8ch8GuhifAasUGIthsE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff5ad42-f657-4f52-d67a-08d73297762d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2019 06:57:19.8131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4BJf4qyH8jG9iCIqxEpRYcR5lmHN9DmPvf78C8rCWZHRFl4U7kXMgt/MW8lcibhcHpDIHY2i4unoIMen9M7xpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_235722_878716_2CE8EA28 
X-CRM114-Status: GOOD (  20.82  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:608 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 2/2] nvmem: imx: scu: support write

Ping..

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> The fuse programming from non-secure world is blocked, so we could only use
> Arm Trusted Firmware SIP call to let ATF program fuse.
> 
> Because there is ECC region that could only be programmed once, so add a
> heler in_ecc to check the ecc region.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
> 
> The ATF patch will soon be posted to ATF community.
> 
>  drivers/nvmem/imx-ocotp-scu.c | 73
> ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 72 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvmem/imx-ocotp-scu.c b/drivers/nvmem/imx-ocotp-scu.c
> index 2f339d7432e6..0f064f2e74a8 100644
> --- a/drivers/nvmem/imx-ocotp-scu.c
> +++ b/drivers/nvmem/imx-ocotp-scu.c
> @@ -7,6 +7,7 @@
>   * Peng Fan <peng.fan@nxp.com>
>   */
> 
> +#include <linux/arm-smccc.h>
>  #include <linux/firmware/imx/sci.h>
>  #include <linux/module.h>
>  #include <linux/nvmem-provider.h>
> @@ -14,6 +15,9 @@
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> 
> +#define IMX_SIP_OTP			0xC200000A
> +#define IMX_SIP_OTP_WRITE		0x2
> +
>  enum ocotp_devtype {
>  	IMX8QXP,
>  };
> @@ -45,6 +49,8 @@ struct imx_sc_msg_misc_fuse_read {
>  	u32 word;
>  } __packed;
> 
> +static DEFINE_MUTEX(scu_ocotp_mutex);
> +
>  static struct ocotp_devtype_data imx8qxp_data = {
>  	.devtype = IMX8QXP,
>  	.nregs = 800,
> @@ -73,6 +79,23 @@ static bool in_hole(void *context, u32 index)
>  	return false;
>  }
> 
> +static bool in_ecc(void *context, u32 index) {
> +	struct ocotp_priv *priv = context;
> +	const struct ocotp_devtype_data *data = priv->data;
> +	int i;
> +
> +	for (i = 0; i < data->num_region; i++) {
> +		if (data->region[i].flag & ECC_REGION) {
> +			if ((index >= data->region[i].start) &&
> +			    (index <= data->region[i].end))
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32 word,
>  				     u32 *val)
>  {
> @@ -116,6 +139,8 @@ static int imx_scu_ocotp_read(void *context,
> unsigned int offset,
>  	if (!p)
>  		return -ENOMEM;
> 
> +	mutex_lock(&scu_ocotp_mutex);
> +
>  	buf = p;
> 
>  	for (i = index; i < (index + count); i++) { @@ -126,6 +151,7 @@ static int
> imx_scu_ocotp_read(void *context, unsigned int offset,
> 
>  		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
>  		if (ret) {
> +			mutex_unlock(&scu_ocotp_mutex);
>  			kfree(p);
>  			return ret;
>  		}
> @@ -134,18 +160,63 @@ static int imx_scu_ocotp_read(void *context,
> unsigned int offset,
> 
>  	memcpy(val, (u8 *)p + offset % 4, bytes);
> 
> +	mutex_unlock(&scu_ocotp_mutex);
> +
>  	kfree(p);
> 
>  	return 0;
>  }
> 
> +static int imx_scu_ocotp_write(void *context, unsigned int offset,
> +			       void *val, size_t bytes)
> +{
> +	struct ocotp_priv *priv = context;
> +	struct arm_smccc_res res;
> +	u32 *buf = val;
> +	u32 tmp;
> +	u32 index;
> +	int ret;
> +
> +	/* allow only writing one complete OTP word at a time */
> +	if ((bytes != 4) || (offset % 4))
> +		return -EINVAL;
> +
> +	index = offset >> 2;
> +
> +	if (in_hole(context, index))
> +		return -EINVAL;
> +
> +	if (in_ecc(context, index)) {
> +		pr_warn("ECC region, only program once\n");
> +		mutex_lock(&scu_ocotp_mutex);
> +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, index, &tmp);
> +		mutex_unlock(&scu_ocotp_mutex);
> +		if (ret)
> +			return ret;
> +		if (tmp) {
> +			pr_warn("ECC region, already has value: %x\n", tmp);
> +			return -EIO;
> +		}
> +	}
> +
> +	mutex_lock(&scu_ocotp_mutex);
> +
> +	arm_smccc_smc(IMX_SIP_OTP, IMX_SIP_OTP_WRITE, index, *buf,
> +		      0, 0, 0, 0, &res);
> +
> +	mutex_unlock(&scu_ocotp_mutex);
> +
> +	return res.a0;
> +}
> +
>  static struct nvmem_config imx_scu_ocotp_nvmem_config = {
>  	.name = "imx-scu-ocotp",
> -	.read_only = true,
> +	.read_only = false,
>  	.word_size = 4,
>  	.stride = 1,
>  	.owner = THIS_MODULE,
>  	.reg_read = imx_scu_ocotp_read,
> +	.reg_write = imx_scu_ocotp_write,
>  };
> 
>  static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
