Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075DB156D4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 02:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTf7byRYBw3KyopdApHDSK1jLd+GXeBfR3ViUeuLcIE=; b=RVRuESxU17iKK7
	cwBdXm87q//yWQ43YEu8QooM2rk99Vc2L+C9V4Jn7srdzl1jz34MGHV1Ig2VMuK1p69+hDjtGqToR
	ogCJsXxjxUh+PVGg8zcjsnnMAFW0Z5TWBYj6JdJSpWysoK9+6vGSmnumhJyQV2NdY08uL2BF+tUe7
	aQ81R/C946MaCNeopZPF8x8WIqT+d8EQxpbn48485YFCQHjkB+g1Ibv7biTd/SKX+goKCszFvE39f
	Zbskw0UkWUM+xFKyLdK+b9P0exAtHpvcU6o+1NJTvN4E0W2Sopi+y8jPY9C/ETeVuNtmaSwfsiUw5
	SpEKq5c0rPhBAeGj1ElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0xQb-0005IN-Di; Mon, 10 Feb 2020 00:59:57 +0000
Received: from mail-eopbgr20041.outbound.protection.outlook.com ([40.107.2.41]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0xQV-0005He-3B
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 00:59:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NT8D2eigUSODVRZ2RL5ZrwlrByu6rs40xWV22sWP27q2g+KqIKX8Is1SClmf5/vUL/zeb0RWGwTJlTvuwmEt7meCaXT3A2RQu8ke1WEhczsg39lO0Zl6NVE/h1zz42zv4AqcFp6P39fsAmPtQzqVulrM5o2OC23XRzduf5VjJLc8vBcR2zr/Aj3bDD7UJL4pcnbDtdnBFaUxqGIVbUQ1dIsmo+h6OEPdwNjpN2xdU2GhD2xvH6vmctFP3QnFiZYzGbxGp6DS6jNLGKrNeGv+UUNtykrHkD37eBsLmw0z1hv0UCkReOujnwh+GoBBSu8OPrF05XLq8j1rUniSigqTIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DRmyteQmAo/r+5utOp/nLMxVwGKexBa71lik+JXbLq8=;
 b=A2cpget5uLrEDngKqLphjksh/pY8v1fkQ4L4ktG78DNo3QiesaF6bD/JtGHOp6LyhpyZ0rpIcTZu9F7s4Ux4R+W9DswnCnvS6FFJh320vegTSrjKhACc+TRWFdvSyG8yklArfrBeY59+lbeMAAjFMQ4lfhRawA3EWXaIKYguH5fITsibJFneZ/aPDAt7nN4M03q0JBhhOeOSiPbKZWk9ErOWOG62mOjpO9BF9fFhu9oUmHLVkQy4fjmmy2djOPTPXHzlE85+FCQE/Iu1AJWHS/yegz9KnIuvP7KRLVeRnP1udBpN0Sb3RygxOM4Fc/2EzSodADYA9eZTIYsUOiMtkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DRmyteQmAo/r+5utOp/nLMxVwGKexBa71lik+JXbLq8=;
 b=famSs19CQ5oF0TDX4UZzaDGWdGcMQQ8TKiWrsvBfn5w2PCZIoYmu4GW7s+VUSTIZQhBGOZle39Glike9aFEek8Fv/hkb6WsddIBXYsHCUOdfk+gJnp522ZMkyxMXY1bGRUG9WinyZK4npjJg3ABur1JFAYYCbUKd0AYyVq0aCGA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6756.eurprd04.prod.outlook.com (10.255.182.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.25; Mon, 10 Feb 2020 00:59:44 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2707.028; Mon, 10 Feb 2020
 00:59:44 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sudeep.holla@arm.com" <sudeep.holla@arm.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>, Marc
 Zyngier <maz@kernel.org>
Subject: RE: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Topic: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
Thread-Index: AQHV3O5LIqtUB1cLq0qKBDDFKN5B7qgToH9A
Date: Mon, 10 Feb 2020 00:59:43 +0000
Message-ID: <AM0PR04MB44814779B2307B20598E598288190@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1580994086-17850-1-git-send-email-peng.fan@nxp.com>
 <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580994086-17850-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21e36775-66e0-4352-7762-08d7adc4849d
x-ms-traffictypediagnostic: AM0PR04MB6756:|AM0PR04MB6756:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6756424D93BE5D107CEDDFB788190@AM0PR04MB6756.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(396003)(366004)(376002)(189003)(199004)(478600001)(316002)(55016002)(9686003)(4326008)(110136005)(54906003)(7696005)(7416002)(81156014)(8676002)(81166006)(8936002)(33656002)(26005)(5660300002)(66446008)(66556008)(52536014)(76116006)(2906002)(64756008)(66946007)(66476007)(86362001)(6506007)(71200400001)(44832011)(186003)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6756;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IiZKtTiEJHMvsKj5TCm/LVXk2LzSrp9pDebX1muIuUMRyf4GAdEi17W5Xj69JvgwXiEDBlrKDgf3RjWGAAvW6TbIUEFTbfW6nbzfdJaWW2fdt1TCwxDB4tm5vbQTPT/wD5set5RPB1FXxYe5LvrQqVDxb2J8dLx8q/2cc/uf3ST4LbbHIe+wEQSkv5oznIdEZw7Gos/mOTHMo7xdXSis9bx+qX30OU9kRt9z07LUmdpwYxHjznDZS2Eav3qmnJUmPbu8zhEsQAf0NLq//l2eqMFrXmyp3+7Jts6P+DspLmowGSSWlC2SoxiqzBSqBnbF0t5YowZ6r55T7lfPxY5/YgntateDQX+KUmj8dOKjUX6Z7vwjZWGdP7FymWESCQvfsgZv3/wi0MPYjOGDfwFFJnx7cMAtHBg9sttY5ptJWX7zp/LBsQioas07CHpvHkTsPJj+bUugxtENSYlWMyj9qYA8N8P8Rta3LPxb4qz9etiGxJilLMtlOHMuSNScMOVv
x-ms-exchange-antispam-messagedata: 1hhYFU2Wdm+ubncC/XDScS/PtiGZ7jNSxgZCOZCmQePOjcdaVWVVRYFZGk0JgKY0u1kxwuDMMofWBlDYLppGXyhtAUEDyDqHpFDVHzCXaNTVbrJT+kLH5i452dmnKvadZueaStHC3IrmHFJomqSF8w==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21e36775-66e0-4352-7762-08d7adc4849d
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 00:59:44.3723 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jHFbGkQE08IbXKdDReNkHx3rSFYZsvbNo849PRQJ25EfqjoNzjpGvHgbAjLAzoyVks6LWuFm+QzvbaBkovzltQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_165951_245918_4D2E0226 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.41 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "andre.przywara@arm.com" <andre.przywara@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH 1/2] dt-bindings: arm: arm,scmi: add smc/hvc transports
> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> SCMI could use SMC/HVC as tranports, so add into devicetree binding doc.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/arm,scmi.txt | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> index f493d69e6194..03cff8b55a93 100644
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> @@ -14,7 +14,7 @@ Required properties:
> 
>  The scmi node with the following properties shall be under the /firmware/
> node.
> 
> -- compatible : shall be "arm,scmi"
> +- compatible : shall be "arm,scmi" or "arm,scmi-smc"

One question here, are you fine with compatible "arm,scmi-smc" or
add a new property 'transport' such as:
transport = "mailbox"; for mailbox
transport = "smc"; for smc and hvc.

Thanks,
Peng.

>  - mboxes: List of phandle and mailbox channel specifiers. It should contain
>  	  exactly one or two mailboxes, one for transmitting messages("tx")
>  	  and another optional for receiving the notifications("rx") if @@ -25,6
> +25,8 @@ The scmi node with the following properties shall be under the
> /firmware/ node.
>  	  protocol identifier for a given sub-node.
>  - #size-cells : should be '0' as 'reg' property doesn't have any size
>  	  associated with it.
> +- arm,smc-id : SMC id required when using smc transports
> +- arm,hvc-id : HVC id required when using hvc transports
> 
>  Optional properties:
> 
> --
> 2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
