Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6888EBAC5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 03:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vk5GhctHDZucU+TPrB+/RrQKjVD0RA/7JcbEEdz35GI=; b=OgzEeOhYQ2qqmt
	WHVZ7TeL3cjWf6GPksLG/b2Cf/MYeaOJ0VYauHqRcM1T9DEniVDMJ0Qv9vjDZCQR8G/YqVO6XHEoy
	fKHLKAYvuxU9VxjKuMC3cHRZGkZ0DkbjVj0ep6u4O874ZOa6FehCCPI292r/JrbzLavSYwM7aFus3
	sw0iYnYdNtPYk6fe5+zqhAOR2tubw7wCnnUqJEWHORItN3HxMBOnQLu2mC+vsPjFjA+Ewn8THG3u1
	Mj/xjYr2T4fW0WB9xjGyAFRyFRE1fJajHkSMa/Gcu6A6FUfgL+w0KEJnP9NOKAsJodAnJJdCq/xlo
	NQ/rYFcPWbtArRlo0ZnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCys-0003bC-Mn; Mon, 23 Sep 2019 01:17:34 +0000
Received: from mail-eopbgr60067.outbound.protection.outlook.com ([40.107.6.67]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCyY-0003aH-0b
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 01:17:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dOHBBvlcrINS2PdQgtVd2JKmLBEnOGn+/di26ec3KQBpBmDQYGDjTQdwYry86n07DAIaxKW36KsMFb35N4sUIfdwAh6PApHCZsUFWFCvxpMq0/J4l7pfknHptH8u9mFq6Gr8mtNKR50+x3UjikXJ91mDPwVS4u/PDNVRT6cpaeV5953W5K5jCbo5GMWizaBwL1o09O899I9uzSkySKGsctok7bcmccMu3oAKWfc95aClT7C9AS3WFUdbHxq5oPD1l/O2YzqkWAQ8RBORWTctZZSBjSgM4Gw2/qu2RRGTr2tlK1/BfMViF5ARVBz1QehR9pCoz19oUgzlB5wlBsU62A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5RWkkE+qNYv/wMXOcrPAKu7EyZ7G9XQtzMkAM07OuBw=;
 b=ZzTynZtnio8S+nXDvm/GmriM+AfktdPWru73CYsPZBIFC3Nj4pVn5DxAqkjRDO4ced4vd6CL3UuU/bdNwNl7g1GKoI8alPZYIiviooxnd7+zo1Nya0XGb8SCD3JOiJmMhGoK7d5DJ67wwecBawfPbTLqjrVPLFt9XpSKQEZ3b9TD5etmU1TDfZh67fd6H+QdwUD67BrgFcQ6+C8Ygyyb7VacaAQ/MXxK1mmiNWS37OSNqupcoFtsIJJnVj0iyxZNL6uUipeGL1LUeOsxyb0Iq05nneLuPqqVV5YiklbS74/IFcxOoltDS+5+fsqAaOVCxl2FxLcSInwM0t3SI1/jHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5RWkkE+qNYv/wMXOcrPAKu7EyZ7G9XQtzMkAM07OuBw=;
 b=DJwMPcxwLDRFtEFZ7KVfu9wLP7BeIlX6cu8scIkxJDzqxumNlVnyeW0gUUyoBNK60wGEkCmS2zgJ4XRY7Au5E4kMp3jKJ5QDYxBnWNNHMfUXSMYMYXoUta2bpmFqOQ37klY1791d17Gpy6UDtwQjB+VXjWC/P8nKGTeT4Ld2YkA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5937.eurprd04.prod.outlook.com (20.178.114.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Mon, 23 Sep 2019 01:17:08 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::6ca2:ec08:2b37:8ab8%6]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 01:17:08 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: RE: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Topic: [PATCH 2/2] nvmem: imx: scu: support write
Thread-Index: AQHVV89l2gZHrF0tR0yZfYtuVeLxmqceUPbwgAAs4wCAGiuDYA==
Date: Mon, 23 Sep 2019 01:17:08 +0000
Message-ID: <AM0PR04MB4481D9B6CF392263E2BE7D8F88850@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1566356496-30493-1-git-send-email-peng.fan@nxp.com>
 <1566356496-30493-2-git-send-email-peng.fan@nxp.com>
 <AM0PR04MB448144701DB63A3C9F05B3E488BA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <dd82e84d-ab22-9dd9-f895-776570f46fee@linaro.org>
In-Reply-To: <dd82e84d-ab22-9dd9-f895-776570f46fee@linaro.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d5c3a3d3-65a7-4d62-c015-08d73fc3c0d6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5937; 
x-ms-traffictypediagnostic: AM0PR04MB5937:|AM0PR04MB5937:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB593731361613925D1D05CC7C88850@AM0PR04MB5937.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(189003)(199004)(52536014)(3846002)(6116002)(7696005)(76176011)(6506007)(186003)(9686003)(316002)(54906003)(55016002)(2906002)(33656002)(229853002)(446003)(99286004)(6246003)(486006)(66066001)(4326008)(102836004)(44832011)(476003)(74316002)(11346002)(66446008)(64756008)(25786009)(66556008)(66946007)(76116006)(66476007)(14444005)(256004)(6436002)(305945005)(8676002)(2201001)(7736002)(110136005)(8936002)(26005)(478600001)(86362001)(5660300002)(14454004)(81166006)(2501003)(71200400001)(71190400001)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5937;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +u+CM8H6HUguHt29ZmTzU8BwLA1v5AOLk4JCmJpoHq8D1pgGOr2laUEhhug0K4glURap42dzcqfctYoAJV5/oClJ+1ha+gyejuMTgQiZbUqWYb3QFFPnQd+VRH/kz8j8I+CxFR15GRGGMoPPefl/Iz7qrmHCDASpT+L76jFMVwi1IM9vayjw1cq7IcUl8rBWksuhGZ1nfasWpWN/V9bynB/GtSoBotfSKCfjWy0FKlhjhJEAOPj6pSqrEiWZVY7ud9VUbpDg58eBpF4sByVRxuhTaeNUXd5pbWNXjh1+7F1VggaL5Jaiww7waUCtVbr+Q/vzlkBxgZHTb+kACZyeCWo7oBMhgier/8WS4E3wdv9RGdZe5DdExKZqmNgU8BXQSKe/PWyjDV7jxG0Ig4Em2bL9RUyOYETzdNSaEKcPthg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5c3a3d3-65a7-4d62-c015-08d73fc3c0d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 01:17:08.1287 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EVnxqjiikXaQJDuW9w2pWwJFQZLzCPTuUvObqYDUAuBl96BjZsSEnhMsQDrjkpB32s5CuQ8740EXVzL/uLfjDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5937
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_181714_143316_91854C41 
X-CRM114-Status: GOOD (  21.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Srinivas,

> >> Subject: [PATCH 2/2] nvmem: imx: scu: support write
> >
> > Ping..
> >
> Thanks for your patience!
> I normally do not take patches after rc5 for nvmem.
> These will be applied after rc1 is released!

Sorry to ping again. Will you pick up since merge window is open?

Thanks,
Peng.

> 
> Thanks,
> srini
> > Thanks,
> > Peng.
> >
> >>
> >> From: Peng Fan <peng.fan@nxp.com>
> >>
> >> The fuse programming from non-secure world is blocked, so we could
> >> only use Arm Trusted Firmware SIP call to let ATF program fuse.
> >>
> >> Because there is ECC region that could only be programmed once, so
> >> add a heler in_ecc to check the ecc region.
> >>
> >> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> >> ---
> >>
> >> The ATF patch will soon be posted to ATF community.
> >>
> >>   drivers/nvmem/imx-ocotp-scu.c | 73
> >> ++++++++++++++++++++++++++++++++++++++++++-
> >>   1 file changed, 72 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/nvmem/imx-ocotp-scu.c
> >> b/drivers/nvmem/imx-ocotp-scu.c index 2f339d7432e6..0f064f2e74a8
> >> 100644
> >> --- a/drivers/nvmem/imx-ocotp-scu.c
> >> +++ b/drivers/nvmem/imx-ocotp-scu.c
> >> @@ -7,6 +7,7 @@
> >>    * Peng Fan <peng.fan@nxp.com>
> >>    */
> >>
> >> +#include <linux/arm-smccc.h>
> >>   #include <linux/firmware/imx/sci.h>
> >>   #include <linux/module.h>
> >>   #include <linux/nvmem-provider.h>
> >> @@ -14,6 +15,9 @@
> >>   #include <linux/platform_device.h>
> >>   #include <linux/slab.h>
> >>
> >> +#define IMX_SIP_OTP			0xC200000A
> >> +#define IMX_SIP_OTP_WRITE		0x2
> >> +
> >>   enum ocotp_devtype {
> >>   	IMX8QXP,
> >>   };
> >> @@ -45,6 +49,8 @@ struct imx_sc_msg_misc_fuse_read {
> >>   	u32 word;
> >>   } __packed;
> >>
> >> +static DEFINE_MUTEX(scu_ocotp_mutex);
> >> +
> >>   static struct ocotp_devtype_data imx8qxp_data = {
> >>   	.devtype = IMX8QXP,
> >>   	.nregs = 800,
> >> @@ -73,6 +79,23 @@ static bool in_hole(void *context, u32 index)
> >>   	return false;
> >>   }
> >>
> >> +static bool in_ecc(void *context, u32 index) {
> >> +	struct ocotp_priv *priv = context;
> >> +	const struct ocotp_devtype_data *data = priv->data;
> >> +	int i;
> >> +
> >> +	for (i = 0; i < data->num_region; i++) {
> >> +		if (data->region[i].flag & ECC_REGION) {
> >> +			if ((index >= data->region[i].start) &&
> >> +			    (index <= data->region[i].end))
> >> +				return true;
> >> +		}
> >> +	}
> >> +
> >> +	return false;
> >> +}
> >> +
> >>   static int imx_sc_misc_otp_fuse_read(struct imx_sc_ipc *ipc, u32
> word,
> >>   				     u32 *val)
> >>   {
> >> @@ -116,6 +139,8 @@ static int imx_scu_ocotp_read(void *context,
> >> unsigned int offset,
> >>   	if (!p)
> >>   		return -ENOMEM;
> >>
> >> +	mutex_lock(&scu_ocotp_mutex);
> >> +
> >>   	buf = p;
> >>
> >>   	for (i = index; i < (index + count); i++) { @@ -126,6 +151,7 @@
> >> static int imx_scu_ocotp_read(void *context, unsigned int offset,
> >>
> >>   		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, i, buf);
> >>   		if (ret) {
> >> +			mutex_unlock(&scu_ocotp_mutex);
> >>   			kfree(p);
> >>   			return ret;
> >>   		}
> >> @@ -134,18 +160,63 @@ static int imx_scu_ocotp_read(void *context,
> >> unsigned int offset,
> >>
> >>   	memcpy(val, (u8 *)p + offset % 4, bytes);
> >>
> >> +	mutex_unlock(&scu_ocotp_mutex);
> >> +
> >>   	kfree(p);
> >>
> >>   	return 0;
> >>   }
> >>
> >> +static int imx_scu_ocotp_write(void *context, unsigned int offset,
> >> +			       void *val, size_t bytes)
> >> +{
> >> +	struct ocotp_priv *priv = context;
> >> +	struct arm_smccc_res res;
> >> +	u32 *buf = val;
> >> +	u32 tmp;
> >> +	u32 index;
> >> +	int ret;
> >> +
> >> +	/* allow only writing one complete OTP word at a time */
> >> +	if ((bytes != 4) || (offset % 4))
> >> +		return -EINVAL;
> >> +
> >> +	index = offset >> 2;
> >> +
> >> +	if (in_hole(context, index))
> >> +		return -EINVAL;
> >> +
> >> +	if (in_ecc(context, index)) {
> >> +		pr_warn("ECC region, only program once\n");
> >> +		mutex_lock(&scu_ocotp_mutex);
> >> +		ret = imx_sc_misc_otp_fuse_read(priv->nvmem_ipc, index, &tmp);
> >> +		mutex_unlock(&scu_ocotp_mutex);
> >> +		if (ret)
> >> +			return ret;
> >> +		if (tmp) {
> >> +			pr_warn("ECC region, already has value: %x\n", tmp);
> >> +			return -EIO;
> >> +		}
> >> +	}
> >> +
> >> +	mutex_lock(&scu_ocotp_mutex);
> >> +
> >> +	arm_smccc_smc(IMX_SIP_OTP, IMX_SIP_OTP_WRITE, index, *buf,
> >> +		      0, 0, 0, 0, &res);
> >> +
> >> +	mutex_unlock(&scu_ocotp_mutex);
> >> +
> >> +	return res.a0;
> >> +}
> >> +
> >>   static struct nvmem_config imx_scu_ocotp_nvmem_config = {
> >>   	.name = "imx-scu-ocotp",
> >> -	.read_only = true,
> >> +	.read_only = false,
> >>   	.word_size = 4,
> >>   	.stride = 1,
> >>   	.owner = THIS_MODULE,
> >>   	.reg_read = imx_scu_ocotp_read,
> >> +	.reg_write = imx_scu_ocotp_write,
> >>   };
> >>
> >>   static const struct of_device_id imx_scu_ocotp_dt_ids[] = {
> >> --
> >> 2.16.4
> >
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
