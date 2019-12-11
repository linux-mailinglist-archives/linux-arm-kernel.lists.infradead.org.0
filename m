Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B8C11A8D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 11:26:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CM32k7kFEW6Bi03b2mMtjkIJZgeOHAr2G/kbWHPyC2E=; b=KmtK3uFWAIqUfq
	Due2fA651GNMo4c6i4YpMbVw+vJ+2MXwf1d0RsltEuebvHRFXawWb2aJXJ5W0oFP0GoklJ9Cw2EmS
	vO8ulfOxPf6QCzz/V6BZKBbh4JEFg18aHx2gR1kw6DKVJYmVoXRTJvE041TlmwsR3uUPZdGD4Ug2m
	cSd+4rMtOPu0lNsH3NnxWPToJY6NYaRgj2Xg/LhpFspPhDIe6iVfQWcOBqKYBoISf/UEHUM4GhisD
	uNlZXPejmJaApBrWREIUR7g+oNkXNEIgQA4s15R5gZitTEwzcKiBtJBgoyZFAKPk/AMOgRViROH5j
	eLo9nYmFu2TX3J0RP61w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iezBu-00071e-KV; Wed, 11 Dec 2019 10:25:58 +0000
Received: from securetransport.cubewerk.de ([178.254.23.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iezBX-0006ss-QT
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 10:25:37 +0000
Received: from DHPWEX01.DH-ELECTRONICS.ORG
 (ipbcc07e02.dynamic.kabel-deutschland.de [188.192.126.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by securetransport.cubewerk.de (Postfix) with ESMTPSA id 947E7140480;
 Wed, 11 Dec 2019 11:25:18 +0100 (CET)
Received: from DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) by
 DHPWEX01.DH-ELECTRONICS.ORG (10.64.2.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.397.3; 
 Wed, 11 Dec 2019 11:25:17 +0100
Received: from DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579]) by
 DHPWEX01.DH-ELECTRONICS.ORG ([fe80::6ced:fa7f:9a9c:e579%3]) with mapi id
 15.02.0397.003; Wed, 11 Dec 2019 11:25:17 +0100
X-secureTransport-forwarded: yes
From: Christoph Niedermaier <cniedermaier@dh-electronics.com>
Complaints-To: abuse@cubewerk.de
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH 1/2] ARM: imx: Fix boot crash if ocotp is not found
Thread-Topic: [PATCH 1/2] ARM: imx: Fix boot crash if ocotp is not found
Thread-Index: AQHVr6PCvreW8z4vMUG4BQIA+eyiDKe0uhOw
Date: Wed, 11 Dec 2019 10:25:17 +0000
Message-ID: <516ff238856842b887d1d673d7e5dac6@dh-electronics.com>
References: <cover.1576014367.git.leonard.crestez@nxp.com>
 <68b9e3bc9c60c89017648bf3abe150fd0abbde86.1576014367.git.leonard.crestez@nxp.com>
In-Reply-To: <68b9e3bc9c60c89017648bf3abe150fd0abbde86.1576014367.git.leonard.crestez@nxp.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.64.3.50]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_022536_003702_DABA6B67 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.254.23.77 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonard Crestez <leonard.crestez@nxp.com>
Sent: Tuesday, December 10, 2019 10:49 PM
> The imx_soc_device_init functions tries to fetch the ocotp regmap in
> order to soc serial number. If regmap fetch fails then a message is
> printed but regmap_read is called anyway and the system crashes.
>
> Failing to lookup ocotp regmap shouldn't be a fatal boot error so check
> that the pointer is valid.
>
> Only side-effect of ocotp lookup failure now is that serial number will
> be reported as all-zeros which is acceptable.
>
> Cc: stable@vger.kernel.org
> Fixes: 8267ff89b713 ("ARM: imx: Add serial number support for i.MX6/7 SoCs")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  arch/arm/mach-imx/cpu.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
> index d70b6fc72b35..484bf6cdb363 100644
> --- a/arch/arm/mach-imx/cpu.c
> +++ b/arch/arm/mach-imx/cpu.c
> @@ -87,11 +87,11 @@ struct device * __init imx_soc_device_init(void)
>  {
>  	struct soc_device_attribute *soc_dev_attr;
>  	const char *ocotp_compat = NULL;
>  	struct soc_device *soc_dev;
>  	struct device_node *root;
> -	struct regmap *ocotp;
> +	struct regmap *ocotp = NULL;
>  	const char *soc_id;
>  	u64 soc_uid = 0;
>  	u32 val;
>  	int ret;
>  
> @@ -179,11 +179,13 @@ struct device * __init imx_soc_device_init(void)
>  
>  	if (ocotp_compat) {
>  		ocotp = syscon_regmap_lookup_by_compatible(ocotp_compat);
>  		if (IS_ERR(ocotp))
>  			pr_err("%s: failed to find %s regmap!\n", __func__, ocotp_compat);
> +	}
>  
> +	if (!IS_ERR_OR_NULL(ocotp)) {
>  		if (__mxc_cpu_type == MXC_CPU_IMX7ULP) {
>  			regmap_read(ocotp, OCOTP_ULP_UID_4, &val);
>  			soc_uid = val & 0xffff;
>  			regmap_read(ocotp, OCOTP_ULP_UID_3, &val);
>  			soc_uid <<= 16;
> 

Tested-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>

Best regards,
Christoph

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
