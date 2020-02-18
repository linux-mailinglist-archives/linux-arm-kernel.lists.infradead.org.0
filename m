Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B14B8162B1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 17:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kz1gNPe6x62KW5YfD/Is2v3UXLTFjXuk0L1eLDdDn3E=; b=dalfE+mZvKrP+3
	+tHahVA6Tlnx1l+Iu5G/8KgwHnEN8EhslDa6IZtHHot2blheMICeKSuFco1gtyoDMV58lcCetCC6i
	ChJ3F9DFWAhZT9VRRYRbDTfQzeq+SEmrgxVmNzBBQHUr7fK3/PbiRUpaEajmxw1wbtniVPWCxALHs
	GnsdheEg3kaS+imySOdxLhs1GXPbH7diwY0j+mmaphkNIAl+ksggi/rLlUhteMLpwJL3YeIHwCtwl
	dY7prkuugmRoit5YxBSQ0VeSbX4UVKOQjaxse5FpNl4PUujsVMbWbqqqye5p/D6eGRJPgtGp0E/H+
	axdYMmbQ8pwxSwLteJnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j468Y-0001Zc-QO; Tue, 18 Feb 2020 16:54:18 +0000
Received: from mail-eopbgr150079.outbound.protection.outlook.com
 ([40.107.15.79] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j468P-0001Z9-Ux
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 16:54:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O0j2N1JX8HCtL5j57zisWnejuZzP+9NzK4cu5wsKUgpf+ADXnhATBV9uJCP8LcUhhsUncwu4in19M7vxeSubQg4ZmcqD5rjWJUa0q8T2nzOBik5kzp16rWHgaeFxsMWB57+fBOZR4E4JISNWnIFLSNsQ8ArWIGN6f3AAc5W3d6hIEb88J1ent29iFdagFpNyaz8+ZPXx5rlA1g9wzFfpKZqajlRfVf9/nLpinPUQF/qp2ugPipB3SZ4dRGn3aGqyUkGqWuULtKTztZ49cFKHqDBUih6HoUChXMGtcLaYhtzLV3isZar7vVr9zinQx9WUVOgc2jGNYwjqyUE1eQ3qpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKMxCb1mG3KkEYxtE8YDfXySNv2vkczNnN5hnO8yUSw=;
 b=Gg5eD4x5dajHcl/s2LtgAUG/9r2rJwdY+UEfGz7Xrhu98mwNPIQZf7xM4GEF4e1ovXvB+maFC0s4xO2AhoS+mJ5SjpknLhry7VvgkOSOG4jmLYDi9E+X+rtK/QuIIbKptsynz/rNzHWO0Icjp1BzMpfijYVpuU6Q5LxfcfJRywPXNGAq2OfiT5KmwrhiWqiEOyrKHq7RDYdJJRRjKTyjkOzyfvayR+GpXqtHIGodTVm+Ac/Br/nvzvN7ktWSichZLBuPwF4Uo6/RiplVPWNN+U83gzgoIbKE4z5DA+v99buHzKBaJvMMCZFC5H/xabVdszY18MoMNSM0TY9mQS7qyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KKMxCb1mG3KkEYxtE8YDfXySNv2vkczNnN5hnO8yUSw=;
 b=lNpdbNppo8VJ3AxxEtL/HWfVgN6tJ0mrmSojrTfhRMNsWgro05t1auuek2swkcZBYMuvanMjC15gowR0sAG9izNs18na4tvaYV6nnT+91bZxKGcaFiLfqhrehvFSXkvAffT7nXIpUs1fGXaQsBQTyui/vh3spK5jZz1jeTHa1B8=
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com (20.179.234.30) by
 VE1PR04MB6656.eurprd04.prod.outlook.com (20.179.235.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.25; Tue, 18 Feb 2020 16:54:06 +0000
Received: from VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23]) by VE1PR04MB6687.eurprd04.prod.outlook.com
 ([fe80::b896:5bc0:c4dd:bd23%2]) with mapi id 15.20.2729.032; Tue, 18 Feb 2020
 16:54:06 +0000
From: Leo Li <leoyang.li@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Olof
 Johansson <olof@lixom.net>
Subject: RE: [PATCH 1/2] arm64: defconfig: run through savedefconfig for
 ordering
Thread-Topic: [PATCH 1/2] arm64: defconfig: run through savedefconfig for
 ordering
Thread-Index: AQHV4HYQkBp5gNwa3EW+6CF+jjRMxage5usAgAJPBQA=
Date: Tue, 18 Feb 2020 16:54:05 +0000
Message-ID: <VE1PR04MB6687EFB8CC40D9A53E8D25008F110@VE1PR04MB6687.eurprd04.prod.outlook.com>
References: <1581382559-18520-1-git-send-email-leoyang.li@nxp.com>
 <20200217053427.GA6042@dragon>
In-Reply-To: <20200217053427.GA6042@dragon>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leoyang.li@nxp.com; 
x-originating-ip: [64.157.242.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e50be303-3f19-48e2-cc87-08d7b4932a6d
x-ms-traffictypediagnostic: VE1PR04MB6656:
x-microsoft-antispam-prvs: <VE1PR04MB66567772077F85E11FDB39368F110@VE1PR04MB6656.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 031763BCAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(199004)(189003)(186003)(33656002)(478600001)(81166006)(81156014)(6506007)(52536014)(316002)(110136005)(53546011)(54906003)(8936002)(7696005)(8676002)(55016002)(9686003)(2906002)(26005)(86362001)(5660300002)(66476007)(66946007)(76116006)(66556008)(64756008)(66446008)(4326008)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6656;
 H:VE1PR04MB6687.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yvDBWnI/n8LKmHmBzX2EfxrqkYdIfGOO4mPevz2VRLukKDJzGwkXTgfKtE+5unmNt3c6W/ZUnxDPplK0fmKG1Pm4USY8f/z53ABAVm6bqT/wDFfUrL7W8IOhfiyc9O9WQnKtKcTlSD7FaqKQo4H1kl49qR8EbioZcHWkOLd+jxN9tErV4DDMSEe2HEsqAZCJE0ICR2SDhkduxz1B+AQwjNx45da74Xqa0d6QakIxkniiQhGKttym+6MKBBL/xWbAhVVbNRIcv0gKXaF8KyJZOCLfv+80jGLs6TlyBhGJybmUEDveWp2+7LuWCbj+cZ605G069K5nVQM/CQOf+x9wZyZDSYqmfYpZzJqK3ibnOkAXOGiCAiS7E9BatZpwnMJGtCl8+P+n6TZ1IA5OFqc0x9BAwvVAj3NAsu96cYuHWzndsyl6pJZpVng20GjjUuBt
x-ms-exchange-antispam-messagedata: rpC6UYZb0lN332KRE12gfUggPTSo36oV+bI724z9HpscZMzGyqUfSiSbNkl4t6yjbIiSUxilPo7biE2dAGTxZpwJ4Q1O+wrwP1Tywt/oRkHCiGNUPifdWfzR46ukNtE5ZvhpckJCyBJihTa/zaCMdg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e50be303-3f19-48e2-cc87-08d7b4932a6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2020 16:54:05.9936 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zf57IO5YRY+NuEyrmFrmMFpn9aWney9KNd04SjkvhWoEo9Vik3WcSvbIyAHF9/1z+ir6/xa8Sb6KiYaqJ56FZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_085409_997920_76D52C18 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.79 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Shawn Guo <shawnguo@kernel.org>
> Sent: Sunday, February 16, 2020 11:34 PM
> To: Leo Li <leoyang.li@nxp.com>; Arnd Bergmann <arnd@arndb.de>; Olof
> Johansson <olof@lixom.net>
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH 1/2] arm64: defconfig: run through savedefconfig for
> ordering
> 
> On Mon, Feb 10, 2020 at 06:55:58PM -0600, Li Yang wrote:
> > Used "make defconfig savedefconfig" to regenerate defconfig file in the
> > right order to prepare for additional defconfig changes.
> >
> > Signed-off-by: Li Yang <leoyang.li@nxp.com>
> 
> Arnd, Olof,
> 
> How do we handle arm64 defconfig savedefconfig changes? I think it will
> likely cause conflicts with changes from other platform maintainers.

Actually I think it helps a lot for managing off-tree defconfig patches when we keep it sorted with savedefconfig because changes to the same option will always be at the same location and shown as proper conflicts when merging.

Regards,
Leo
> 
> Shawn
> 
> > ---
> >  arch/arm64/configs/defconfig | 15 ++++++---------
> >  1 file changed, 6 insertions(+), 9 deletions(-)
> >
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > index 0f212889c931..618001ef5c81 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -471,9 +471,9 @@ CONFIG_DW_WATCHDOG=y
> >  CONFIG_SUNXI_WATCHDOG=m
> >  CONFIG_IMX2_WDT=y
> >  CONFIG_IMX_SC_WDT=m
> > +CONFIG_QCOM_WDT=m
> >  CONFIG_MESON_GXBB_WATCHDOG=m
> >  CONFIG_MESON_WATCHDOG=m
> > -CONFIG_QCOM_WDT=m
> >  CONFIG_RENESAS_WDT=y
> >  CONFIG_UNIPHIER_WATCHDOG=y
> >  CONFIG_BCM2835_WDT=y
> > @@ -594,8 +594,8 @@ CONFIG_SND_SOC_TAS571X=m
> >  CONFIG_SND_SIMPLE_CARD=m
> >  CONFIG_SND_AUDIO_GRAPH_CARD=m
> >  CONFIG_I2C_HID=m
> > -CONFIG_USB=y
> >  CONFIG_USB_CONN_GPIO=m
> > +CONFIG_USB=y
> >  CONFIG_USB_OTG=y
> >  CONFIG_USB_XHCI_HCD=y
> >  CONFIG_USB_XHCI_TEGRA=y
> > @@ -617,7 +617,6 @@ CONFIG_USB_CHIPIDEA_HOST=y
> >  CONFIG_USB_ISP1760=y
> >  CONFIG_USB_HSIC_USB3503=y
> >  CONFIG_NOP_USB_XCEIV=y
> > -CONFIG_USB_ULPI=y
> >  CONFIG_USB_GADGET=y
> >  CONFIG_USB_RENESAS_USBHS_UDC=m
> >  CONFIG_USB_RENESAS_USB3=m
> > @@ -756,7 +755,6 @@ CONFIG_OWL_PM_DOMAINS=y
> >  CONFIG_RASPBERRYPI_POWER=y
> >  CONFIG_IMX_SCU_SOC=y
> >  CONFIG_QCOM_AOSS_QMP=y
> > -CONFIG_QCOM_COMMAND_DB=y
> >  CONFIG_QCOM_GENI_SE=y
> >  CONFIG_QCOM_GLINK_SSR=m
> >  CONFIG_QCOM_RMTFS_MEM=m
> > @@ -771,14 +769,12 @@ CONFIG_ARCH_R8A774A1=y
> >  CONFIG_ARCH_R8A774B1=y
> >  CONFIG_ARCH_R8A774C0=y
> >  CONFIG_ARCH_R8A7795=y
> > -CONFIG_ARCH_R8A7796=y
> >  CONFIG_ARCH_R8A77961=y
> >  CONFIG_ARCH_R8A77965=y
> >  CONFIG_ARCH_R8A77970=y
> >  CONFIG_ARCH_R8A77980=y
> >  CONFIG_ARCH_R8A77990=y
> >  CONFIG_ARCH_R8A77995=y
> > -CONFIG_QCOM_PDC=y
> >  CONFIG_ROCKCHIP_PM_DOMAINS=y
> >  CONFIG_ARCH_TEGRA_132_SOC=y
> >  CONFIG_ARCH_TEGRA_210_SOC=y
> > @@ -809,6 +805,7 @@ CONFIG_PWM_ROCKCHIP=y
> >  CONFIG_PWM_SAMSUNG=y
> >  CONFIG_PWM_SUN4I=m
> >  CONFIG_PWM_TEGRA=m
> > +CONFIG_QCOM_PDC=y
> >  CONFIG_RESET_QCOM_AOSS=y
> >  CONFIG_RESET_QCOM_PDC=m
> >  CONFIG_RESET_TI_SCI=y
> > @@ -880,16 +877,16 @@ CONFIG_NLS_ISO8859_1=y
> >  CONFIG_SECURITY=y
> >  CONFIG_CRYPTO_ECHAINIV=y
> >  CONFIG_CRYPTO_ANSI_CPRNG=y
> > +CONFIG_CRYPTO_USER_API_RNG=m
> >  CONFIG_CRYPTO_DEV_SUN8I_CE=m
> >  CONFIG_CRYPTO_DEV_FSL_CAAM=m
> > -CONFIG_CRYPTO_DEV_HISI_ZIP=m
> > -CONFIG_CRYPTO_USER_API_RNG=m
> >  CONFIG_CRYPTO_DEV_QCOM_RNG=m
> > +CONFIG_CRYPTO_DEV_HISI_ZIP=m
> >  CONFIG_CMA_SIZE_MBYTES=32
> >  CONFIG_PRINTK_TIME=y
> >  CONFIG_DEBUG_INFO=y
> > -CONFIG_DEBUG_FS=y
> >  CONFIG_MAGIC_SYSRQ=y
> > +CONFIG_DEBUG_FS=y
> >  CONFIG_DEBUG_KERNEL=y
> >  # CONFIG_SCHED_DEBUG is not set
> >  # CONFIG_DEBUG_PREEMPT is not set
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
