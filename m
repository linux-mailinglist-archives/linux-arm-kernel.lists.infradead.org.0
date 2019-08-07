Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0465B8488C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 11:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMyKkX9dER2+4fTDEvtcWzruvcYPsa5NnOPz2fB3LLU=; b=C50UewafnqUtUE
	vf39qoKotJsTp4o5iHho4mxH8Unix/+L3/6eQYD10y9eANuDfzl73UeUw2YkgXOXceihNM9ZoOEC6
	qK2X07XPYk0I3ddmEr5HLxZOeb80YgPsKQ41csGmdEZzo05hkOktU9BnIYVy6efogVjYxq5NxVxBt
	VfbjEdEz0lgDKKPXyqaFT2auF3mMcnu+iDm4uqBbum1+iNYmtm+yU2jPPxikuxXeeqNvbODH1G5GV
	uGrd7pSLMNdLeBaITsrFPkgvszJbKQ5DzYt2AWnDjR+6BBA69KkJ8FBEK0kNW+ETSEer8PvtUNRKT
	6K992sCQlNoFlGfduX1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIAo-0000vk-9s; Wed, 07 Aug 2019 09:23:58 +0000
Received: from mail-eopbgr40055.outbound.protection.outlook.com ([40.107.4.55]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIAc-0000vQ-Qw
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 09:23:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZG4ZbDuSCaqlwUByH1eL42YH53RwNcWnNXS307eEhxePgWfIQj2zaKIKSZ4Im8bc8h1JA0ak3YNY0MRHhELwBIhWflCu4RjXrKKSUTbxSQ/dxE5uhf4vMW2BGh/Kx1J4Gc3pLuOma92BJZs+l7OHNYEuqZPT1NWrGgI9r5jWMHwpzY6fg9fBnUj35IqyDLYVMtkdYJfy280fpVnBW0X75pttOVp5sOwlbrJZ5e2GMXkqyzgd/TNqD7PXwI+mumPasssRf4HqFvSZGpaLhsxWgi8/En49+m86633JeT9y6XL38Ym/s5eGGzXRDfX/86C0nvZwz9rVtpwAWuOVNNGmeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lolJSBZgfKdyXWTm8wWlWT6hl3ZOpJVe8EXIEQ7iZFY=;
 b=hsn5jQDlkeDPKdWx1J2jh8TrHKsI71nbbF2szq64vhQ4QPZ1MG8x3JGWkSlqr9dY/U1b7CyZ6OjEMf54grutbBzqeUe+QNStMwPJp/8cP2sJt0cSQm7fnCWgkXaMqpweFPhre+ofWX5yeYVNFD5eySz54wTlFHDxc1ZROmubebcsYns1qx8yCdL4xm9zLwP4kUKbXBzWpPvsEAlB9oBZ+rTFjPn+ilsfGojj9vSo7vUfcvxFA8clFDkOTTL5jBbShIY4k3taCAMEa8L4KrmoVjtBWR5cBZKzs2O97sZ13vTcTBm9DJCblE+DzOfs+mMZGVtq/QLuPwlwOHHXsuSuxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lolJSBZgfKdyXWTm8wWlWT6hl3ZOpJVe8EXIEQ7iZFY=;
 b=P8H3y32FHrCbDGTj61QGR62fSeYGI8doLrGEqSgZKE8cxwWg13IpQIjpy0a289w2/7QS1C5+5LkCbUgF3ecZodbiGPFFRGNql3wEp7MxWQt56WObQfIDmKDYVAmg2EC6lmeEJR6didijusW6kDViIHrpF3LWCc+c7HbsePxbp98=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6449.eurprd04.prod.outlook.com (20.179.253.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Wed, 7 Aug 2019 09:23:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2115.017; Wed, 7 Aug 2019
 09:23:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
 performance fastchannels
Thread-Topic: [PATCH v2 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
 performance fastchannels
Thread-Index: AQHVTHi3HY5NFbDe5kuKtUFEt88FDqbvan6Q
Date: Wed, 7 Aug 2019 09:23:41 +0000
Message-ID: <AM0PR04MB4481BA101A13A0E45DA50E9088D40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-2-sudeep.holla@arm.com>
In-Reply-To: <20190806170208.6787-2-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6f3a9d2a-bd1f-4c0e-04c1-08d71b18f01c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6449; 
x-ms-traffictypediagnostic: AM0PR04MB6449:
x-microsoft-antispam-prvs: <AM0PR04MB64499EA7AEB5314AB9E11B0888D40@AM0PR04MB6449.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(366004)(199004)(189003)(66476007)(66946007)(476003)(14444005)(64756008)(66446008)(256004)(66556008)(54906003)(76116006)(486006)(52536014)(7736002)(305945005)(44832011)(110136005)(6116002)(2501003)(316002)(8676002)(186003)(3846002)(68736007)(74316002)(53936002)(81166006)(33656002)(81156014)(6246003)(71200400001)(71190400001)(478600001)(25786009)(446003)(11346002)(7416002)(6506007)(8936002)(55016002)(9686003)(7696005)(14454004)(5660300002)(86362001)(6436002)(99286004)(2906002)(66066001)(229853002)(76176011)(4326008)(26005)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6449;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 74humZJPNOOURBmajbAl1m1yzVpAG3jxsTeNlq7fNJlmSR4a+4sl79upUNZ64YjszzWOqNQ9Qe+A8HwoTHPghO9AUxVCzCWz8zwkmJfJjZqywVDbsauongmq+GfT5LTFptR6C+BUwELEXHO26KvqfyzMCKuX9agPg/TPiE0eqyIjM9szAY6hIx8UZUX77QR78eGctPa9prjB1Tu/s4SQD+eH9nPeY2sRAIvfpMZuWcLIP7S6mnUwFRWuVEIkk4f9q1N1h2OEtG21K2k3USnGZOxVgRyfLM91DQ2m0ET3QUKuz4mx5BFL8IXqC5KlDP698e5hOlRShsXbYeV4UhFVSQcjWW/GYDwh5CMIYSp//sw8miEg+ktGBYmI1D16NbJUl0MIWNiSkUeIea08D2X30XTkWs8/Opsjk5oe2NWOPjQ=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f3a9d2a-bd1f-4c0e-04c1-08d71b18f01c
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 09:23:41.6708 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6449
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_022347_076816_531C3DD0 
X-CRM114-Status: GOOD (  18.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.55 listed in list.dnswl.org]
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
 "wesleys@xilinx.com" <wesleys@xilinx.com>,
 Ionela Voinescu <Ionela.Voinescu@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Saeed Nowshadi <saeed.nowshadi@xilinx.com>,
 Quentin Perret <Quentin.Perret@arm.com>, Bo Zhang <bozhang.zhang@broadcom.com>,
 Felix Burton <fburton@xilinx.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Chris Redpath <Chris.Redpath@arm.com>,
 "pajay@qti.qualcomm.com" <pajay@qti.qualcomm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH v2 1/5] firmware: arm_scmi: Add discovery of SCMI v2.0
> performance fastchannels
> 
> SCMI v2.0 adds support for "FastChannel", a lightweight unidirectional
> channel that is dedicated to a single SCMI message type for controlling a
> specific platform resource. They do not use a message header as they are
> specialized for a single message.
> 
> Only PERFORMANCE_LIMITS_{SET,GET} and
> PERFORMANCE_LEVEL_{SET,GET} commands are supported over
> fastchannels. As they are optional, they need to be discovered by
> PERFORMANCE_DESCRIBE_FASTCHANNEL command.
> Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.
> 
> Add support for discovery of these fastchannels.
> 
> Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
> Cc: Chris Redpath <Chris.Redpath@arm.com>
> Cc: Quentin Perret <Quentin.Perret@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/perf.c | 153
> ++++++++++++++++++++++++++++++-
>  1 file changed, 149 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/firmware/arm_scmi/perf.c
> b/drivers/firmware/arm_scmi/perf.c
> index 3c8ae7cc35de..6cce3e82e81e 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -5,7 +5,9 @@
>   * Copyright (C) 2018 ARM Ltd.
>   */
> 
> +#include <linux/bits.h>
>  #include <linux/of.h>
> +#include <linux/io.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_opp.h>
>  #include <linux/sort.h>
> @@ -21,6 +23,7 @@ enum scmi_performance_protocol_cmd {
>  	PERF_LEVEL_GET = 0x8,
>  	PERF_NOTIFY_LIMITS = 0x9,
>  	PERF_NOTIFY_LEVEL = 0xa,
> +	PERF_DESCRIBE_FASTCHANNEL = 0xb,
>  };
> 
>  struct scmi_opp {
> @@ -44,6 +47,7 @@ struct scmi_msg_resp_perf_domain_attributes {
>  #define SUPPORTS_SET_PERF_LVL(x)	((x) & BIT(30))
>  #define SUPPORTS_PERF_LIMIT_NOTIFY(x)	((x) & BIT(29))
>  #define SUPPORTS_PERF_LEVEL_NOTIFY(x)	((x) & BIT(28))
> +#define SUPPORTS_PERF_FASTCHANNELS(x)	((x) & BIT(27))
>  	__le32 rate_limit_us;
>  	__le32 sustained_freq_khz;
>  	__le32 sustained_perf_level;
> @@ -87,17 +91,56 @@ struct scmi_msg_resp_perf_describe_levels {
>  	} opp[0];
>  };
> 
> +struct scmi_perf_get_fc_info {
> +	__le32 domain;
> +	__le32 message_id;
> +};
> +
> +struct scmi_msg_resp_perf_desc_fc {
> +	__le32 attr;
> +#define SUPPORTS_DOORBELL(x)		((x) & BIT(0))
> +#define DOORBELL_REG_WIDTH(x)		FIELD_GET(GENMASK(2, 1), (x))
> +	__le32 rate_limit;
> +	__le32 chan_addr_low;
> +	__le32 chan_addr_high;
> +	__le32 chan_size;
> +	__le32 db_addr_low;
> +	__le32 db_addr_high;
> +	__le32 db_set_lmask;
> +	__le32 db_set_hmask;
> +	__le32 db_preserve_lmask;
> +	__le32 db_preserve_hmask;
> +};
> +
> +struct scmi_fc_db_info {
> +	int width;
> +	u64 set;
> +	u64 mask;
> +	void __iomem *addr;
> +};
> +
> +struct scmi_fc_info {
> +	void __iomem *level_set_addr;
> +	void __iomem *limit_set_addr;
> +	void __iomem *level_get_addr;
> +	void __iomem *limit_get_addr;
> +	struct scmi_fc_db_info *level_set_db;
> +	struct scmi_fc_db_info *limit_set_db;
> +};
> +
>  struct perf_dom_info {
>  	bool set_limits;
>  	bool set_perf;
>  	bool perf_limit_notify;
>  	bool perf_level_notify;
> +	bool perf_fastchannels;
>  	u32 opp_count;
>  	u32 sustained_freq_khz;
>  	u32 sustained_perf_level;
>  	u32 mult_factor;
>  	char name[SCMI_MAX_STR_SIZE];
>  	struct scmi_opp opp[MAX_OPPS];
> +	struct scmi_fc_info *fc_info;
>  };
> 
>  struct scmi_perf_info {
> @@ -162,6 +205,7 @@ scmi_perf_domain_attributes_get(const struct
> scmi_handle *handle, u32 domain,
>  		dom_info->set_perf = SUPPORTS_SET_PERF_LVL(flags);
>  		dom_info->perf_limit_notify =
> SUPPORTS_PERF_LIMIT_NOTIFY(flags);
>  		dom_info->perf_level_notify =
> SUPPORTS_PERF_LEVEL_NOTIFY(flags);
> +		dom_info->perf_fastchannels =
> SUPPORTS_PERF_FASTCHANNELS(flags);
>  		dom_info->sustained_freq_khz =
>  					le32_to_cpu(attr->sustained_freq_khz);
>  		dom_info->sustained_perf_level =
> @@ -250,7 +294,7 @@ scmi_perf_describe_levels_get(const struct
> scmi_handle *handle, u32 domain,  }
> 
>  static int scmi_perf_limits_set(const struct scmi_handle *handle, u32
> domain,
> -				u32 max_perf, u32 min_perf)
> +				   u32 max_perf, u32 min_perf)
>  {
>  	int ret;
>  	struct scmi_xfer *t;
> @@ -273,7 +317,7 @@ static int scmi_perf_limits_set(const struct
> scmi_handle *handle, u32 domain,  }
> 
>  static int scmi_perf_limits_get(const struct scmi_handle *handle, u32
> domain,
> -				u32 *max_perf, u32 *min_perf)
> +				   u32 *max_perf, u32 *min_perf)
>  {
>  	int ret;
>  	struct scmi_xfer *t;
> @@ -299,7 +343,7 @@ static int scmi_perf_limits_get(const struct
> scmi_handle *handle, u32 domain,  }
> 
>  static int scmi_perf_level_set(const struct scmi_handle *handle, u32
> domain,
> -			       u32 level, bool poll)
> +				  u32 level, bool poll)
>  {
>  	int ret;
>  	struct scmi_xfer *t;
> @@ -322,7 +366,7 @@ static int scmi_perf_level_set(const struct
> scmi_handle *handle, u32 domain,  }
> 
>  static int scmi_perf_level_get(const struct scmi_handle *handle, u32
> domain,
> -			       u32 *level, bool poll)
> +				  u32 *level, bool poll)
>  {
>  	int ret;
>  	struct scmi_xfer *t;
> @@ -343,6 +387,104 @@ static int scmi_perf_level_get(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> +static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size) {
> +	if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)
> +		return true;
> +	if ((msg == PERF_LIMITS_GET || msg == PERF_LIMITS_SET) && size == 8)
> +		return true;
> +	return false;
> +}
> +
> +static void
> +scmi_perf_domain_desc_fc(const struct scmi_handle *handle, u32 domain,
> +			 u32 message_id, void __iomem **p_addr,
> +			 struct scmi_fc_db_info **p_db)
> +{
> +	int ret;
> +	u32 flags;
> +	u64 phys_addr;
> +	u8 size;
> +	void __iomem *addr;
> +	struct scmi_xfer *t;
> +	struct scmi_fc_db_info *db;
> +	struct scmi_perf_get_fc_info *info;
> +	struct scmi_msg_resp_perf_desc_fc *resp;
> +
> +	if (!p_addr)
> +		return;
> +
> +	ret = scmi_xfer_get_init(handle, PERF_DESCRIBE_FASTCHANNEL,
> +				 SCMI_PROTOCOL_PERF,
> +				 sizeof(*info), sizeof(*resp), &t);
> +	if (ret)
> +		return;
> +
> +	info = t->tx.buf;
> +	info->domain = cpu_to_le32(domain);
> +	info->message_id = cpu_to_le32(message_id);
> +
> +	ret = scmi_do_xfer(handle, t);
> +	if (ret)
> +		goto err_xfer;
> +
> +	resp = t->rx.buf;
> +	flags = le32_to_cpu(resp->attr);
> +	size = le32_to_cpu(resp->chan_size);
> +	if (!scmi_perf_fc_size_is_valid(message_id, size))
> +		goto err_xfer;
> +
> +	phys_addr = le32_to_cpu(resp->chan_addr_low);
> +	phys_addr |= (u64)le32_to_cpu(resp->chan_addr_high) << 32;
> +	addr = devm_ioremap(handle->dev, phys_addr, size);
> +	if (!addr)
> +		goto err_xfer;
> +	*p_addr = addr;
> +
> +	if (p_db && SUPPORTS_DOORBELL(flags)) {
> +		db = devm_kzalloc(handle->dev, sizeof(*db), GFP_KERNEL);
> +		if (!db)
> +			goto err_xfer;
> +
> +		size = 1 << DOORBELL_REG_WIDTH(flags);
> +		phys_addr = le32_to_cpu(resp->db_addr_low);
> +		phys_addr |= (u64)le32_to_cpu(resp->db_addr_high) << 32;
> +		addr = devm_ioremap(handle->dev, phys_addr, size);
> +		if (!addr)
> +			goto err_xfer;
> +
> +		db->addr = addr;
> +		db->width = size;
> +		db->set = le32_to_cpu(resp->db_set_lmask);
> +		db->set |= (u64)le32_to_cpu(resp->db_set_hmask) << 32;
> +		db->mask = le32_to_cpu(resp->db_preserve_lmask);
> +		db->mask |= (u64)le32_to_cpu(resp->db_preserve_hmask) << 32;
> +		*p_db = db;
> +	}
> +err_xfer:
> +	scmi_xfer_put(handle, t);
> +}
> +
> +static void scmi_perf_domain_init_fc(const struct scmi_handle *handle,
> +				     u32 domain, struct scmi_fc_info **p_fc) {
> +	struct scmi_fc_info *fc;
> +
> +	fc = devm_kzalloc(handle->dev, sizeof(*fc), GFP_KERNEL);
> +	if (!fc)
> +		return;
> +
> +	scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_SET,
> +				 &fc->level_set_addr, &fc->level_set_db);
> +	scmi_perf_domain_desc_fc(handle, domain, PERF_LEVEL_GET,
> +				 &fc->level_get_addr, NULL);
> +	scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_SET,
> +				 &fc->limit_set_addr, &fc->limit_set_db);
> +	scmi_perf_domain_desc_fc(handle, domain, PERF_LIMITS_GET,
> +				 &fc->limit_get_addr, NULL);
> +	*p_fc = fc;
> +}
> +
>  /* Device specific ops */
>  static int scmi_dev_domain_id(struct device *dev)  { @@ -494,6 +636,9
> @@ static int scmi_perf_protocol_init(struct scmi_handle *handle)
> 
>  		scmi_perf_domain_attributes_get(handle, domain, dom);
>  		scmi_perf_describe_levels_get(handle, domain, dom);
> +
> +		if (dom->perf_fastchannels)
> +			scmi_perf_domain_init_fc(handle, domain, &dom->fc_info);
>  	}
> 
>  	handle->perf_ops = &perf_ops;

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
