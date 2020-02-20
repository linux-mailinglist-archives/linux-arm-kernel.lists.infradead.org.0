Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E67351658A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 08:44:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNi/IQXKLHtraa6U/9TYY1Y0sIKkyNEAj6t026T0Qus=; b=eUeODE0QeE+xr7
	5fD1/E3ScAfUrW3dIZ0yG2Rk9ZomXaxTukdGho0SnMhCPzAm6AqGhj0CtON2ZguColtu1iZ8Fldxt
	QnuVO4Tp5xvWOklFINyneceWxL6PMSlqUlwiZq0uLBQTdH+e9KMvmparT2+eRFmDJ2kXt3FQTKRzd
	nN8kHYfbIsAwV/wvfZPIsn3fCob2LbFr8t4NxfPOy8kOTR41Qkk5wxzSpDAEW3SxQh4bw9c5EH4T6
	NV0S5Dq4UU01hgUHL0gzQQL6AqjXo7Y1WfYWKhXu0p85UM0+/MmqgbjE28IqosLCPNg1IoFW7PF2B
	/1xawz/B+0G2GGH6BrkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4gVf-0000Fn-6Y; Thu, 20 Feb 2020 07:44:35 +0000
Received: from mail-eopbgr20060.outbound.protection.outlook.com ([40.107.2.60]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4gVV-0000EZ-CP
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 07:44:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TKeWJ1qaiWLdTohOpuRt+7Km5hL442PaGz5O740KQYoe60j3NnCMaeskxZJHjOMxIWP3BLCQODNTLMcNGNXOH/BOZWf+UkPRrLYTsymvqKiXSptnJxcdWPONh/I5hwHpukg2EBpEePn8LrEyYv50studQysbE0inPHs58xHRjEfDjzhXVXJpiDY6Lea3kcLYa95lO7hXH/CymCvVgBQxM3/lF83BTYzFPS2HNPieHXqsogW/auaSOZXdxNMI8LvjPeCrpLAansP3RvXvNI2Q+Y0ZiSGNw7Ra9OlHt+9c91SecwRzafVBA/SwFuanMyRBhQCGkVchrzzL2HqrBz/NSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V49bchaERnLp/GcZa0wESfo8dw/ygGSKc8PG74Db5+c=;
 b=apWCVmkg4Ufe3dBvDIJc3UmEdDlxa8TjtnRmspBf1Y1Vqw+P2+3Hd8jjlxPVPRYI9Hw844PC0Av0Y6356xBElFP12sseTRyL69xXOCZWewSdsLGUGXz5re5i/rFqAkvUcUgJSRSalAv0ZHF2Vc4B5JK4vb3LGmFl+3K4BarVPfE8jjjGD46P7Asix44HpG652WTdWBDAXtb70UOskWw/F4k98S1st2rnw3DLT0PvyOjMzkctZ2wbRCBjiyFGV6UInVvcOJuuNRh3yy0GaMPzFvAKWtfuu7LfSxZOPmRZnfbo5iVyTzRZ0QE9tp2negrXOYYgiRTNaVEyD8SZvrYWLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V49bchaERnLp/GcZa0wESfo8dw/ygGSKc8PG74Db5+c=;
 b=mZcUg5NOFNdrmBoIhSLcxjkfwn8mzEDKrb0b3CXa9nxZhQb8Rcdd/M4TrQQuB0cUvVuBa+RNjkE9A69FEtO9+YZO9wnEf3gqMGZ1gVfP9l3uqsv/iyPYdUTUS6Z7ABbGJxpr51t4U0ONICIMN0YaNMOGhvgdG/4GW1y8dkGQGfc=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3901.eurprd04.prod.outlook.com (52.134.12.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.31; Thu, 20 Feb 2020 07:44:20 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2729.033; Thu, 20 Feb 2020
 07:44:20 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: Re: [PATCH V4 1/2] firmware: imx: add dummy functions
Thread-Topic: [PATCH V4 1/2] firmware: imx: add dummy functions
Thread-Index: AQHV57c7B86rtqG22kWkq8prRlRnb6gjs6+A
Date: Thu, 20 Feb 2020 07:44:20 +0000
Message-ID: <a5134838-53d4-97f0-d126-b94164871763@nxp.com>
References: <1582179843-14375-1-git-send-email-peng.fan@nxp.com>
 <1582179843-14375-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1582179843-14375-2-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 29e4d806-0b8d-423a-24ca-08d7b5d8b269
x-ms-traffictypediagnostic: VI1PR0402MB3901:|VI1PR0402MB3901:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB3901B3A0C3AD8CF33629115CF9130@VI1PR0402MB3901.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 031996B7EF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(396003)(39860400002)(346002)(136003)(189003)(199004)(6506007)(2616005)(5660300002)(2906002)(44832011)(36756003)(26005)(8936002)(53546011)(6512007)(66476007)(4326008)(66446008)(64756008)(76116006)(66946007)(66556008)(71200400001)(186003)(81156014)(81166006)(54906003)(86362001)(110136005)(31686004)(31696002)(478600001)(6486002)(316002)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3901;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YuZhoJqv2+VnrhYOyq93Sn87szQO2WPBV4pRMh/z0evsa5ptUBY5Vj3f5VwhTCp+FKBVTiWwogf+IwCACBo5QfFMlTNCJ1omWZIlr6u5DKg0F2W0plc4gVINR/jW8APV2/UvwpXyzd2kzMce9bb70nljmjF+ZiZTPYszd9rKhCN0hhURQizxZvXdHsC9q+K4oGpk2oGSMVmnO2NoPHFE/xIZpncm4T5Nl0mgbIsU+1Yr/7BEuH2wGOPqtiUltVbvnzodcergvK6EoY2aYqT95zQICo01gazfqhgedlpnwP/kTvMXRHbynpH3da5rn5QXblfGVEuQslLw/Kk+wl302kjxmeUzazxBB85ehblVD8JcXkFRiDkNZoRsa0ETfzTa5bgx/w44w6yc6BOX52aOdBrwBSARzNG9KlFxz8OjoZF86shJ2pKuFbdiUHfeM3ZY
x-ms-exchange-antispam-messagedata: KkjN2RTRnn5fW8zERwn9OY+59bB6qAZJYi61Je15W1WiivNBBXg4gWfsA/Y/idK1n46C8Lz3FHGKL8vBTIDUmq7mBRXBVz2oDzch6zPsmKehGqQRyD47zd+HggcmI+pzMH9vZJmeZIsGZUh90p+nbg==
Content-ID: <78A5491A5CEF7D4D87D4F70DA347075F@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29e4d806-0b8d-423a-24ca-08d7b5d8b269
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2020 07:44:20.5366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6UeJ3gqUHhvGbEYSKlFjuSd/9z0sO4abtQiof7bUpFW81Gz/5A0alaZK+PBoarXcD6kWuqiPfEgq0AvOCwSTnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3901
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_234425_604546_BFC7BA25 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.60 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "daniel.baluta@gmail.com" <daniel.baluta@gmail.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.02.2020 08:24, Peng Fan wrote:
> From: Peng Fan <peng.fan@nxp.com>
>
> IMX_SCU_SOC could be enabled with COMPILE_TEST, however there is
> no dummy functions when CONFIG_IMX_SCU not defined. Then there
> will be build failure.
>
> So add dummy functions to avoid build failure for COMPILE_TEST
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>   include/linux/firmware/imx/ipc.h      | 13 +++++++++++++
>   include/linux/firmware/imx/sci.h      | 22 ++++++++++++++++++++++
>   include/linux/firmware/imx/svc/misc.h | 19 +++++++++++++++++++
>   3 files changed, 54 insertions(+)
>
> diff --git a/include/linux/firmware/imx/ipc.h b/include/linux/firmware/imx/ipc.h
> index 6312c8cb084a..30475082f472 100644
> --- a/include/linux/firmware/imx/ipc.h
> +++ b/include/linux/firmware/imx/ipc.h
> @@ -35,6 +35,7 @@ struct imx_sc_rpc_msg {
>   	uint8_t func;
>   };
>   
> +#ifdef CONFIG_IMX_SCU
>   /*
>    * This is an function to send an RPC message over an IPC channel.
>    * It is called by client-side SCFW API function shims.
> @@ -56,4 +57,16 @@ int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg, bool have_resp);
>    * @return Returns an error code (0 = success, failed if < 0)
>    */
>   int imx_scu_get_handle(struct imx_sc_ipc **ipc);
> +#else
> +static inline int imx_scu_call_rpc(struct imx_sc_ipc *ipc, void *msg,
> +				   bool have_resp)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static inline int imx_scu_get_handle(struct imx_sc_ipc **ipc)
> +{
> +	return -ENOTSUPP;
> +}
> +#endif
>   #endif /* _SC_IPC_H */
> diff --git a/include/linux/firmware/imx/sci.h b/include/linux/firmware/imx/sci.h
> index 17ba4e405129..7ea875b186e3 100644
> --- a/include/linux/firmware/imx/sci.h
> +++ b/include/linux/firmware/imx/sci.h
> @@ -16,8 +16,30 @@
>   #include <linux/firmware/imx/svc/misc.h>
>   #include <linux/firmware/imx/svc/pm.h>
>   
> +#ifdef CONFIG_IMX_SCU
>   int imx_scu_enable_general_irq_channel(struct device *dev);
>   int imx_scu_irq_register_notifier(struct notifier_block *nb);
>   int imx_scu_irq_unregister_notifier(struct notifier_block *nb);
>   int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable);
> +#else
> +static inline int imx_scu_enable_general_irq_channel(struct device *dev)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static inline int imx_scu_irq_register_notifier(struct notifier_block *nb)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static inline int imx_scu_irq_unregister_notifier(struct notifier_block *nb)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +static inline int imx_scu_irq_group_enable(u8 group, u32 mask, u8 enable)
> +{
> +	return -ENOTSUPP;
> +}
> +#endif
>   #endif /* _SC_SCI_H */
> diff --git a/include/linux/firmware/imx/svc/misc.h b/include/linux/firmware/imx/svc/misc.h
> index 031dd4d3c766..3f4a0f526b73 100644
> --- a/include/linux/firmware/imx/svc/misc.h
> +++ b/include/linux/firmware/imx/svc/misc.h
> @@ -46,6 +46,7 @@ enum imx_misc_func {
>    * Control Functions
>    */
>   
> +#ifdef CONFIG_IMX_SCU
>   int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
>   			    u8 ctrl, u32 val);
>   
> @@ -54,5 +55,23 @@ int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
>   
>   int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
>   			bool enable, u64 phys_addr);
> +#else
Functions for dummy case below should be static inline.
> +int imx_sc_misc_set_control(struct imx_sc_ipc *ipc, u32 resource,
> +			    u8 ctrl, u32 val)
> +{
> +	return -ENOTSUPP;
> +}
> +
> +int imx_sc_misc_get_control(struct imx_sc_ipc *ipc, u32 resource,
> +			    u8 ctrl, u32 *val)
> +{
> +	return -ENOTSUPP;
> +}
>   
> +int imx_sc_pm_cpu_start(struct imx_sc_ipc *ipc, u32 resource,
> +			bool enable, u64 phys_addr)
> +{
> +	return -ENOTSUPP;
> +}
> +#endif
>   #endif /* _SC_MISC_API_H */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
