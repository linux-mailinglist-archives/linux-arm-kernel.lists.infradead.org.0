Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA15F84919
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:08:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CugBMwEXEfSKD2qFy3U78PdRcA3rjZlPMm8/2nbYvJI=; b=nomoxrAbIHvhW5
	+OITp8VCF0J21gWAWIo82qN6m69JYh6K9drodDlgIpfJ1rfVg4e8DEjdfRlpdz//EuDVnHaXCK3aM
	0GZ9jC+GQr0JhYCnrtPFl6YbvSrKvN9O6l1DUaUzUGayaquDi6768MkgYATzccN8l4GqbvQNw9awA
	IU+UPQ1HHjxBOOhrcspTWZCh4xmg+N/eXo6mHk876AJNi7M3w/DR6PGvK1c/eep3B/u13G09Ax/X5
	TFf0dqfGFWPqdkRsLVs1HqQqAgw16MJRFACOnPW+HJtybve3dkCYUhfPXmCSv0B0Is9IHea8XijGk
	V1RLIxVTghCBjlK1zMZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIrM-0001v7-4j; Wed, 07 Aug 2019 10:07:56 +0000
Received: from mail-eopbgr60064.outbound.protection.outlook.com ([40.107.6.64]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIrF-0001ui-GG
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:07:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5UUkHbzh/TsbVSISHNR/pQE8mRHnmt4RrtZYOP/1lxFJpjJOQphMiKigJFlYMka3ZPpWCqfFkfMqFhqsltdHLG46PgV8PPuA9nufCtu/WQGcb/G5OMCtojB2Z2Hm68p0lcu8O+YTy1wktSuSmdiZk+om2GJWPEB1ePVhYZZ+Fg7rw/ML4wzGaWUZIq6b12ydChup6NQlSxfJF37SrqUy+TpCKfH9nfeyKSrX025kJRLGxJS9TWzzAP+dJYf0a+Hpp6rgYqYWKIVCA7S40aeQXqGyvWoVTci0EKJ1NnryT0PGGhgOKd0AavRn7Cc2SYk3W57cxy1RpmeKGgYd8ReYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLPWB3tMly98/3gZiDbdiF/Jb1Z5gI5l9fsJ1yCMQbM=;
 b=DP/RYEYuwKxNN40dpMaaDYGuuKJ+IMEcPuDT2Y+0KT7m05ZXGNBpgFOu5yBGKKH3kmWlUuF/U4tfLkppLPU9LReqaythwnEvyNyznL2YIEmoIy+sa+NBWdoM9F3486+e3NWkIW2V54Z7gykKfY47NeqnVyp6IaEPiHAI31l2GHBbGWLSs+5vJskhWL4ZtJMaP6vbOvCgGKTYErMzQayqXtkzjehZ4s5I7BqRX6+atD6ep+aVH4C5eAZq56zH85psvd46mcd++BRPnIsKm3GbxVK9EVkLojxmsNAzNT4jP3tOM1w9ghBSCD0QdObc3zGWVxx6BYUA5ZRYUbcV4m2e2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wLPWB3tMly98/3gZiDbdiF/Jb1Z5gI5l9fsJ1yCMQbM=;
 b=KjfTH0bhlYEnowcHpfzDnJWc4l7TlRFrr0yd+0bZiCVLXujxawQs+xba7M/vUersfb6vB0EWoT6iqhU2m/zRIqBFtM1ORtlAD13jX3LF6gBrJGkLacEGgvnzxfUdYc0XwmZ+e0RU2wpesdHvHhz4Mh+QCsFwKaAvLpCgt6UGhgY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6643.eurprd04.prod.outlook.com (20.179.252.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.16; Wed, 7 Aug 2019 10:07:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2115.017; Wed, 7 Aug 2019
 10:07:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2 4/5] firmware: arm_scmi: Add RESET protocol in SCMI v2.0
Thread-Topic: [PATCH v2 4/5] firmware: arm_scmi: Add RESET protocol in SCMI
 v2.0
Thread-Index: AQHVTHi7Dd0kIROf60q6uqzNnkgq06bvdt3w
Date: Wed, 7 Aug 2019 10:07:46 +0000
Message-ID: <AM0PR04MB4481CED65CDCFEBA2A45659C88D40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-5-sudeep.holla@arm.com>
In-Reply-To: <20190806170208.6787-5-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ab42b182-7c44-44fa-d323-08d71b1f18b6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6643; 
x-ms-traffictypediagnostic: AM0PR04MB6643:
x-microsoft-antispam-prvs: <AM0PR04MB66432E33BB214EF1FACA98B088D40@AM0PR04MB6643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(305945005)(30864003)(7736002)(5660300002)(6246003)(9686003)(53936002)(71190400001)(71200400001)(55016002)(8676002)(74316002)(7416002)(25786009)(52536014)(4326008)(86362001)(66066001)(476003)(68736007)(8936002)(11346002)(26005)(44832011)(33656002)(486006)(81156014)(81166006)(446003)(110136005)(54906003)(186003)(7696005)(76176011)(14454004)(3846002)(316002)(99286004)(6116002)(229853002)(102836004)(478600001)(66476007)(6506007)(76116006)(64756008)(66556008)(66446008)(66946007)(2501003)(2906002)(256004)(14444005)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6643;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DtU77HvXUSndaXieJNwCq8f0magPS4NreH6P9PxG1hO1PHhTT54LKOuU+UdioBprLGLwcKSYQAXuKc1i0MisYTHPOkJ83gyBEn1CC23aZLs5MWBMZTeohNPUaXjMqxZEZBe6fKBTE2uNFV3AbZjGxTO/rw1RdCIsVGz8EnU0Ixg+Ylq1vT25sWUUCK6DuEDaFZoI9DyDVafRq08WLHeMgD9BvKBxXb6iH/vu8+sIGl8xfwtvw4/F1hlv9XDsIbk/yiTfvqGxkhQ15BW57aSo8iuiaJEivoycdLDhMejquU7O7vWjbhl2tAtTIJLL98Gy9mRZ8aG9oJSzg/oaKuYvIziusDUSGXmkSgmEYcP0SznJSDs0ZCBm86sTEocCNW8UNnaBICDW2q7xmz+7k99KbrOQYz0+ZdAqpVzx6KY6Pi8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab42b182-7c44-44fa-d323-08d71b1f18b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 10:07:46.7955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_030749_678423_C141D3F7 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aidapala@qti.qualcomm.com" <aidapala@qti.qualcomm.com>,
 Etienne Carriere <etienne.carriere@linaro.org>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 "wesleys@xilinx.com" <wesleys@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Bo Zhang <bozhang.zhang@broadcom.com>, Felix Burton <fburton@xilinx.com>,
 Jim Quinlan <james.quinlan@broadcom.com>,
 "pajay@qti.qualcomm.com" <pajay@qti.qualcomm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH v2 4/5] firmware: arm_scmi: Add RESET protocol in SCMI
> v2.0
> 
> SCMIv2.0 adds a new Reset Management Protocol to manage various reset
> states a given device or domain can enter. Device(s) that can be collectively
> reset through a common reset signal constitute a reset domain for the
> firmware.
> 
> A reset domain can be reset autonomously or explicitly through assertion and
> de-assertion of the signal. When autonomous reset is chosen, the firmware is
> responsible for taking the necessary steps to reset the domain and to
> subsequently bring it out of reset. When explicit reset is chosen, the caller has
> to specifically assert and then de-assert the reset signal by issuing two
> separate RESET commands.
> 
> Add the basic SCMI reset infrastructure that can be used by Linux reset
> controller driver.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/Makefile |   2 +-
>  drivers/firmware/arm_scmi/reset.c  | 231
> +++++++++++++++++++++++++++++
>  include/linux/scmi_protocol.h      |  26 ++++
>  3 files changed, 258 insertions(+), 1 deletion(-)  create mode 100644
> drivers/firmware/arm_scmi/reset.c
> 
> diff --git a/drivers/firmware/arm_scmi/Makefile
> b/drivers/firmware/arm_scmi/Makefile
> index c47d28d556b6..5f298f00a82e 100644
> --- a/drivers/firmware/arm_scmi/Makefile
> +++ b/drivers/firmware/arm_scmi/Makefile
> @@ -2,5 +2,5 @@
>  obj-y	= scmi-bus.o scmi-driver.o scmi-protocols.o
>  scmi-bus-y = bus.o
>  scmi-driver-y = driver.o
> -scmi-protocols-y = base.o clock.o perf.o power.o sensors.o
> +scmi-protocols-y = base.o clock.o perf.o power.o reset.o sensors.o
>  obj-$(CONFIG_ARM_SCMI_POWER_DOMAIN) += scmi_pm_domain.o diff
> --git a/drivers/firmware/arm_scmi/reset.c
> b/drivers/firmware/arm_scmi/reset.c
> new file mode 100644
> index 000000000000..11cb8b5ccf34
> --- /dev/null
> +++ b/drivers/firmware/arm_scmi/reset.c
> @@ -0,0 +1,231 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * System Control and Management Interface (SCMI) Reset Protocol
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + */
> +
> +#include "common.h"
> +
> +enum scmi_reset_protocol_cmd {
> +	RESET_DOMAIN_ATTRIBUTES = 0x3,
> +	RESET = 0x4,
> +	RESET_NOTIFY = 0x5,
> +};
> +
> +enum scmi_reset_protocol_notify {
> +	RESET_ISSUED = 0x0,
> +};
> +
> +#define NUM_RESET_DOMAIN_MASK	0xffff
> +#define RESET_NOTIFY_ENABLE	BIT(0)
> +
> +struct scmi_msg_resp_reset_domain_attributes {
> +	__le32 attributes;
> +#define SUPPORTS_ASYNC_RESET(x)		((x) & BIT(31))
> +#define SUPPORTS_NOTIFY_RESET(x)	((x) & BIT(30))
> +	__le32 latency;
> +	    u8 name[SCMI_MAX_STR_SIZE];
> +};
> +
> +struct scmi_msg_reset_domain_reset {
> +	__le32 domain_id;
> +	__le32 flags;
> +#define AUTONOMOUS_RESET	BIT(0)
> +#define EXPLICIT_RESET_ASSERT	BIT(1)
> +#define ASYNCHRONOUS_RESET	BIT(2)
> +	__le32 reset_state;
> +#define ARCH_RESET_TYPE		BIT(31)
> +#define COLD_RESET_STATE	BIT(0)
> +#define ARCH_COLD_RESET		(ARCH_RESET_TYPE |
> COLD_RESET_STATE)
> +};
> +
> +struct reset_dom_info {
> +	bool async_reset;
> +	bool reset_notify;
> +	u32 latency_us;
> +	char name[SCMI_MAX_STR_SIZE];
> +};
> +
> +struct scmi_reset_info {
> +	int num_domains;
> +	struct reset_dom_info *dom_info;
> +};
> +
> +static int scmi_reset_attributes_get(const struct scmi_handle *handle,
> +				     struct scmi_reset_info *pi)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	u32 *attr;
> +
> +	ret = scmi_xfer_get_init(handle, PROTOCOL_ATTRIBUTES,
> +				 SCMI_PROTOCOL_RESET, 0, sizeof(*attr), &t);
> +	if (ret)
> +		return ret;
> +
> +	attr = t->rx.buf;
> +
> +	ret = scmi_do_xfer(handle, t);
> +	if (!ret)
> +		pi->num_domains = le32_to_cpu(*attr) &
> NUM_RESET_DOMAIN_MASK;
> +
> +	scmi_xfer_put(handle, t);
> +	return ret;
> +}
> +
> +static int
> +scmi_reset_domain_attributes_get(const struct scmi_handle *handle, u32
> domain,
> +				 struct reset_dom_info *dom_info)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	struct scmi_msg_resp_reset_domain_attributes *attr;
> +
> +	ret = scmi_xfer_get_init(handle, RESET_DOMAIN_ATTRIBUTES,
> +				 SCMI_PROTOCOL_RESET, sizeof(domain),
> +				 sizeof(*attr), &t);
> +	if (ret)
> +		return ret;
> +
> +	*(__le32 *)t->tx.buf = cpu_to_le32(domain);
> +	attr = t->rx.buf;
> +
> +	ret = scmi_do_xfer(handle, t);
> +	if (!ret) {
> +		u32 attributes = le32_to_cpu(attr->attributes);
> +
> +		dom_info->async_reset = SUPPORTS_ASYNC_RESET(attributes);
> +		dom_info->reset_notify = SUPPORTS_NOTIFY_RESET(attributes);
> +		dom_info->latency_us = le32_to_cpu(attr->latency);
> +		if (dom_info->latency_us == U32_MAX)
> +			dom_info->latency_us = 0;
> +		strlcpy(dom_info->name, attr->name, SCMI_MAX_STR_SIZE);
> +	}
> +
> +	scmi_xfer_put(handle, t);
> +	return ret;
> +}
> +
> +static int scmi_reset_num_domains_get(const struct scmi_handle *handle)
> +{
> +	struct scmi_reset_info *pi = handle->reset_priv;
> +
> +	return pi->num_domains;
> +}
> +
> +static char *scmi_reset_name_get(const struct scmi_handle *handle, u32
> +domain) {
> +	struct scmi_reset_info *pi = handle->reset_priv;
> +	struct reset_dom_info *dom = pi->dom_info + domain;
> +
> +	return dom->name;
> +}
> +
> +static int scmi_reset_latency_get(const struct scmi_handle *handle, u32
> +domain) {
> +	struct scmi_reset_info *pi = handle->reset_priv;
> +	struct reset_dom_info *dom = pi->dom_info + domain;
> +
> +	return dom->latency_us;
> +}
> +
> +static int scmi_domain_reset(const struct scmi_handle *handle, u32 domain,
> +			     u32 flags, u32 state)
> +{
> +	int ret;
> +	struct scmi_xfer *t;
> +	struct scmi_msg_reset_domain_reset *dom;
> +	struct scmi_reset_info *pi = handle->reset_priv;
> +	struct reset_dom_info *rdom = pi->dom_info + domain;
> +
> +	if (rdom->async_reset)
> +		flags |= ASYNCHRONOUS_RESET;
> +
> +	ret = scmi_xfer_get_init(handle, RESET, SCMI_PROTOCOL_RESET,
> +				 sizeof(*dom), 0, &t);
> +	if (ret)
> +		return ret;
> +
> +	dom = t->tx.buf;
> +	dom->domain_id = cpu_to_le32(domain);
> +	dom->flags = cpu_to_le32(flags);
> +	dom->domain_id = cpu_to_le32(state);
> +
> +	if (rdom->async_reset)
> +		ret = scmi_do_xfer_with_response(handle, t);
> +	else
> +		ret = scmi_do_xfer(handle, t);
> +
> +	scmi_xfer_put(handle, t);
> +	return ret;
> +}
> +
> +static int scmi_reset_domain_reset(const struct scmi_handle *handle,
> +u32 domain) {
> +	return scmi_domain_reset(handle, domain, AUTONOMOUS_RESET,
> +				 ARCH_COLD_RESET);
> +}
> +
> +static int
> +scmi_reset_domain_assert(const struct scmi_handle *handle, u32 domain)
> +{
> +	return scmi_domain_reset(handle, domain, EXPLICIT_RESET_ASSERT,
> +				 ARCH_COLD_RESET);
> +}
> +
> +static int
> +scmi_reset_domain_deassert(const struct scmi_handle *handle, u32
> +domain) {
> +	return scmi_domain_reset(handle, domain, 0, ARCH_COLD_RESET); }
> +
> +static struct scmi_reset_ops reset_ops = {
> +	.num_domains_get = scmi_reset_num_domains_get,
> +	.name_get = scmi_reset_name_get,
> +	.latency_get = scmi_reset_latency_get,
> +	.reset = scmi_reset_domain_reset,
> +	.assert = scmi_reset_domain_assert,
> +	.deassert = scmi_reset_domain_deassert, };
> +
> +static int scmi_reset_protocol_init(struct scmi_handle *handle) {
> +	int domain;
> +	u32 version;
> +	struct scmi_reset_info *pinfo;
> +
> +	scmi_version_get(handle, SCMI_PROTOCOL_RESET, &version);
> +
> +	dev_dbg(handle->dev, "Reset Version %d.%d\n",
> +		PROTOCOL_REV_MAJOR(version),
> PROTOCOL_REV_MINOR(version));
> +
> +	pinfo = devm_kzalloc(handle->dev, sizeof(*pinfo), GFP_KERNEL);
> +	if (!pinfo)
> +		return -ENOMEM;
> +
> +	scmi_reset_attributes_get(handle, pinfo);
> +
> +	pinfo->dom_info = devm_kcalloc(handle->dev, pinfo->num_domains,
> +				       sizeof(*pinfo->dom_info), GFP_KERNEL);
> +	if (!pinfo->dom_info)
> +		return -ENOMEM;
> +
> +	for (domain = 0; domain < pinfo->num_domains; domain++) {
> +		struct reset_dom_info *dom = pinfo->dom_info + domain;
> +
> +		scmi_reset_domain_attributes_get(handle, domain, dom);
> +	}
> +
> +	handle->reset_ops = &reset_ops;
> +	handle->reset_priv = pinfo;
> +
> +	return 0;
> +}
> +
> +static int __init scmi_reset_init(void) {
> +	return scmi_protocol_register(SCMI_PROTOCOL_RESET,
> +				      &scmi_reset_protocol_init);
> +}
> +subsys_initcall(scmi_reset_init);
> diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
> index f0f2b53a1dac..881fea47c83d 100644
> --- a/include/linux/scmi_protocol.h
> +++ b/include/linux/scmi_protocol.h
> @@ -187,6 +187,26 @@ struct scmi_sensor_ops {
>  			   u64 *value);
>  };
> 
> +/**
> + * struct scmi_reset_ops - represents the various operations provided
> + *	by SCMI Reset Protocol
> + *
> + * @num_domains_get: get the count of reset domains provided by SCMI
> + * @name_get: gets the name of a reset domain
> + * @latency_get: gets the reset latency for the specified reset domain
> + * @reset: resets the specified reset domain
> + * @assert: explicitly assert reset signal of the specified reset
> +domain
> + * @deassert: explicitly deassert reset signal of the specified reset
> +domain  */ struct scmi_reset_ops {
> +	int (*num_domains_get)(const struct scmi_handle *handle);
> +	char *(*name_get)(const struct scmi_handle *handle, u32 domain);
> +	int (*latency_get)(const struct scmi_handle *handle, u32 domain);
> +	int (*reset)(const struct scmi_handle *handle, u32 domain);
> +	int (*assert)(const struct scmi_handle *handle, u32 domain);
> +	int (*deassert)(const struct scmi_handle *handle, u32 domain); };
> +
>  /**
>   * struct scmi_handle - Handle returned to ARM SCMI clients for usage.
>   *
> @@ -196,6 +216,7 @@ struct scmi_sensor_ops {
>   * @perf_ops: pointer to set of performance protocol operations
>   * @clk_ops: pointer to set of clock protocol operations
>   * @sensor_ops: pointer to set of sensor protocol operations
> + * @reset_ops: pointer to set of reset protocol operations
>   * @perf_priv: pointer to private data structure specific to performance
>   *	protocol(for internal use only)
>   * @clk_priv: pointer to private data structure specific to clock @@ -204,6
> +225,8 @@ struct scmi_sensor_ops {
>   *	protocol(for internal use only)
>   * @sensor_priv: pointer to private data structure specific to sensors
>   *	protocol(for internal use only)
> + * @reset_priv: pointer to private data structure specific to reset
> + *	protocol(for internal use only)
>   */
>  struct scmi_handle {
>  	struct device *dev;
> @@ -212,11 +235,13 @@ struct scmi_handle {
>  	struct scmi_clk_ops *clk_ops;
>  	struct scmi_power_ops *power_ops;
>  	struct scmi_sensor_ops *sensor_ops;
> +	struct scmi_reset_ops *reset_ops;
>  	/* for protocol internal use */
>  	void *perf_priv;
>  	void *clk_priv;
>  	void *power_priv;
>  	void *sensor_priv;
> +	void *reset_priv;
>  };
> 
>  enum scmi_std_protocol {
> @@ -226,6 +251,7 @@ enum scmi_std_protocol {
>  	SCMI_PROTOCOL_PERF = 0x13,
>  	SCMI_PROTOCOL_CLOCK = 0x14,
>  	SCMI_PROTOCOL_SENSOR = 0x15,
> +	SCMI_PROTOCOL_RESET = 0x16,
>  };

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> 
>  struct scmi_device {
> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
