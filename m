Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F4D8490E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ldcmw7oI9tumVne7tk6HD4bLvLBm0eWjzPI/8quumBA=; b=kOeL5zkepuIF92
	UaNHD1dwM7BU71JyyVRs0GYm2F4FRqtwU3vWPW8tVXGRnv6sTFL1hoVn/SPkzuPo9+MrKN9wd0fWC
	Km8aD5wlVkQxlYQDG5usdmx0B7xumro19MkO/RVnf7vxzGSqUoWoPWttl9YpNpdcNJwn2fYhjUPwx
	aVePXxFyeHaIOiPLmtvP3Rm1Rbw5bdsJh0tKyGuxIMX47T+e79e/2O5vDJevF2XnA4PttN9HfbWyT
	vbqXHqtXQtoD+KSaRFOAEkYmRRQN+wXa/vC7oL6GX5BANSPLO1EmLiumxCrZ/LzMtJHxUwuMnDelN
	BxyHdwW7PACpxZYDvVzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIlm-0007yX-6G; Wed, 07 Aug 2019 10:02:10 +0000
Received: from mail-eopbgr40074.outbound.protection.outlook.com ([40.107.4.74]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIlZ-0007y5-I0
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:01:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Eo0N5B6urzfm+6suVTnKGe28nNnswD5ijK8xVZwsXrO4RWb4TU3+tTnlg8hYxRgRzYcWq+11G66N4XfeSsYTGibPuvZPfHSkFlrZlc41KDFMBKsSGJKOTrdyZSINkpemHaspAP+9comXytmXPzvHOuE530WA2mQs5RwbC6rxL/oeFCZlj1Tu04XL9uRaxmRGSucBjwkQj/asfn1K+mv0WojwjssrKlIL7Yr0rq910bWx+9udLVvCGzM9spkrgC45BIEns/PkqTCsEXAl6KpJKiCmHYCoi+Q5YDO2OYOsJ5k49ufTAQj91oOOpsNY43jyJde5MNNMW+1uzx5SiatQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wX3LJTPuT/920JIAqrsqlscxjPUiZiGz9Dby6QnY5Ms=;
 b=WF7u1I3Gzue7i+ml1S3ljxa+rF4QBv2sf2kmNbaXmFFzEhbqwXzpocv7m0rzfTAQHUOd461lVy84S8UqjoNnoT9fLNnxjznF3UNQuXSO6+PR1LZUeKrNSVYTk4ELQZ3Klodn4EF6R2jlbrvslLqdhcCFMnNxWIPB7ksSSgwJROyXwUppHcYMxokaUvZtS+BG1IO2JLDsDjI9csrWk9wyTTXUR/2so37zX+CxBtHRxd8Oer8TcbTca/JaJZEI/nFmuGW95weWmLyxbmpNH03+h0lIY1/HAi3Fqwl9ys/qAePR03aFUX3zxWgBHP2n0jwMRnaOcekZ9/2eqX8IgJUQTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wX3LJTPuT/920JIAqrsqlscxjPUiZiGz9Dby6QnY5Ms=;
 b=iA8+ihVnzW+5JnzVqsN0tk0P06siQj8VDe89D7AzJ667qIfDV/VJ8ZHd6UBJiv/NT/r9NW+cQMkfRc2MTezacayRfjlPPuFBf2sCjSQlpAPPLw9nIxU/38BSpxauBJZyTqBgL/CF4wytSqlqhY+eO5rLVbJ1PHvzxj7UMbefT+k=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5794.eurprd04.prod.outlook.com (20.178.117.96) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 10:01:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::5d98:e1f4:aa72:16b4%4]) with mapi id 15.20.2115.017; Wed, 7 Aug 2019
 10:01:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Sudeep Holla <sudeep.holla@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v2 2/5] firmware: arm_scmi: Make use SCMI v2.0 fastchannel
 for performance protocol
Thread-Topic: [PATCH v2 2/5] firmware: arm_scmi: Make use SCMI v2.0
 fastchannel for performance protocol
Thread-Index: AQHVTHi44QviZ4xq00ytVvSi5xmck6bvdSyg
Date: Wed, 7 Aug 2019 10:01:54 +0000
Message-ID: <AM0PR04MB4481C5CCF8DD27E92902135C88D40@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <20190806170208.6787-1-sudeep.holla@arm.com>
 <20190806170208.6787-3-sudeep.holla@arm.com>
In-Reply-To: <20190806170208.6787-3-sudeep.holla@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9e1b1363-797d-4c06-f987-08d71b1e46c7
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5794; 
x-ms-traffictypediagnostic: AM0PR04MB5794:
x-microsoft-antispam-prvs: <AM0PR04MB5794AF17DA4E474A9967C93388D40@AM0PR04MB5794.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(136003)(376002)(396003)(39860400002)(199004)(189003)(5660300002)(66066001)(14454004)(68736007)(256004)(8936002)(99286004)(316002)(110136005)(52536014)(54906003)(6246003)(6506007)(8676002)(71200400001)(7696005)(476003)(76176011)(229853002)(305945005)(6436002)(33656002)(9686003)(478600001)(44832011)(102836004)(66446008)(14444005)(7416002)(446003)(66476007)(53936002)(486006)(7736002)(25786009)(55016002)(76116006)(6116002)(11346002)(2906002)(86362001)(26005)(64756008)(66556008)(71190400001)(74316002)(81166006)(81156014)(186003)(3846002)(4326008)(66946007)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5794;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 3spdeLNgB5+Xi0MhdoQ6JnWml0qQGGhNZ1Vn9nXYSO28s9VYCAKsVwFNLjxrVaXSTF0oJH3SYBgUci+ISIBMtjnUN5FVDunNBeaQGi16tnYzaOHQ52abGw4vQOmj9OXMncdJmjkO2/2JuvjyhRPtkuwhnXCIj71wyP2o7Lne+cngEJUgHfLcM4vr7NYGu8Usx4Jnm2/ngHchZ9SfSLL8tZ5JANCOacIVQ3hN+xawoIEfojbMIQiMmvrKRXa/c9cw4GVfy1dY5v+L5Mo/C84XSdDTx8ujSasudVE2lmidOga424xl16fFGOxArkuixQCAV4gSLkRAA4pgsym3U2ZIH7+mgJx9OB2272KQNd5/laePrB62jM2TbZZQDr1txuHlOIuR7MYK/NFRdg7v1aHcEggEovPMS0bujf1YKXwpoWY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1b1363-797d-4c06-f987-08d71b1e46c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 10:01:54.5384 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: peng.fan@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5794
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_030157_602936_2528A1A8 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.74 listed in list.dnswl.org]
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
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> Subject: [PATCH v2 2/5] firmware: arm_scmi: Make use SCMI v2.0
> fastchannel for performance protocol
> 
> SCMI v2.0 adds support for "FastChannel" which do not use a message
> header as they are specialized for a single message.
> 
> Only PERFORMANCE_LIMITS_{SET,GET} and
> PERFORMANCE_LEVEL_{SET,GET} commands are supported over
> fastchannels. As they are optional, they need to be discovered by
> PERFORMANCE_DESCRIBE_FASTCHANNEL command.
> Further {LIMIT,LEVEL}_SET commands can have optional doorbell support.
> 
> Add support for making use of these fastchannels.
> 
> Cc: Ionela Voinescu <Ionela.Voinescu@arm.com>
> Cc: Chris Redpath <Chris.Redpath@arm.com>
> Cc: Quentin Perret <Quentin.Perret@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  drivers/firmware/arm_scmi/perf.c | 104
> +++++++++++++++++++++++++++++--
>  1 file changed, 100 insertions(+), 4 deletions(-)
> 
> v1->v2:
> 	- Changed the macro SCMI_PERF_FC_RING_DB to use do {} while(0)
> 
> diff --git a/drivers/firmware/arm_scmi/perf.c
> b/drivers/firmware/arm_scmi/perf.c
> index 6cce3e82e81e..fb7f6cab2c11 100644
> --- a/drivers/firmware/arm_scmi/perf.c
> +++ b/drivers/firmware/arm_scmi/perf.c
> @@ -8,6 +8,7 @@
>  #include <linux/bits.h>
>  #include <linux/of.h>
>  #include <linux/io.h>
> +#include <linux/io-64-nonatomic-hi-lo.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_opp.h>
>  #include <linux/sort.h>
> @@ -293,7 +294,42 @@ scmi_perf_describe_levels_get(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> -static int scmi_perf_limits_set(const struct scmi_handle *handle, u32
> domain,
> +#define SCMI_PERF_FC_RING_DB(doorbell, w)		\
> +do {							\
> +	u##w val = 0;					\
> +	struct scmi_fc_db_info *db = doorbell;		\
> +							\
> +	if (db->mask)					\
> +		val = ioread##w(db->addr) & db->mask;	\
> +	iowrite##w((u##w)db->set | val, db->addr);	\
> +} while(0)
> +
> +static void scmi_perf_fc_ring_db(struct scmi_fc_db_info *db) {
> +	if (!db || !db->addr)
> +		return;
> +
> +	if (db->width == 1)
> +		SCMI_PERF_FC_RING_DB(db, 8);
> +	else if (db->width == 2)
> +		SCMI_PERF_FC_RING_DB(db, 16);
> +	else if (db->width == 4)
> +		SCMI_PERF_FC_RING_DB(db, 32);
> +	else /* db->width == 8 */
> +#ifdef CONFIG_64BIT
> +		SCMI_PERF_FC_RING_DB(db, 64);
> +#else
> +	{
> +		u64 val = 0;
> +
> +		if (db->mask)
> +			val = ioread64_hi_lo(db->addr) & db->mask;
> +		iowrite64_hi_lo(db->set, db->addr);
> +	}
> +#endif
> +}
> +
> +static int scmi_perf_mb_limits_set(const struct scmi_handle *handle,
> +u32 domain,
>  				   u32 max_perf, u32 min_perf)
>  {
>  	int ret;
> @@ -316,7 +352,23 @@ static int scmi_perf_limits_set(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> -static int scmi_perf_limits_get(const struct scmi_handle *handle, u32
> domain,
> +static int scmi_perf_limits_set(const struct scmi_handle *handle, u32
> domain,
> +				u32 max_perf, u32 min_perf)
> +{
> +	struct scmi_perf_info *pi = handle->perf_priv;
> +	struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +	if (dom->fc_info && dom->fc_info->limit_set_addr) {
> +		iowrite32(max_perf, dom->fc_info->limit_set_addr);
> +		iowrite32(min_perf, dom->fc_info->limit_set_addr + 4);
> +		scmi_perf_fc_ring_db(dom->fc_info->limit_set_db);
> +		return 0;
> +	}
> +
> +	return scmi_perf_mb_limits_set(handle, domain, max_perf, min_perf); }
> +
> +static int scmi_perf_mb_limits_get(const struct scmi_handle *handle,
> +u32 domain,
>  				   u32 *max_perf, u32 *min_perf)
>  {
>  	int ret;
> @@ -342,7 +394,22 @@ static int scmi_perf_limits_get(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> -static int scmi_perf_level_set(const struct scmi_handle *handle, u32 domain,
> +static int scmi_perf_limits_get(const struct scmi_handle *handle, u32
> domain,
> +				u32 *max_perf, u32 *min_perf)
> +{
> +	struct scmi_perf_info *pi = handle->perf_priv;
> +	struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +	if (dom->fc_info && dom->fc_info->limit_get_addr) {
> +		*max_perf = ioread32(dom->fc_info->limit_get_addr);
> +		*min_perf = ioread32(dom->fc_info->limit_get_addr + 4);
> +		return 0;
> +	}
> +
> +	return scmi_perf_mb_limits_get(handle, domain, max_perf, min_perf); }
> +
> +static int scmi_perf_mb_level_set(const struct scmi_handle *handle, u32
> +domain,
>  				  u32 level, bool poll)
>  {
>  	int ret;
> @@ -365,7 +432,22 @@ static int scmi_perf_level_set(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> -static int scmi_perf_level_get(const struct scmi_handle *handle, u32 domain,
> +static int scmi_perf_level_set(const struct scmi_handle *handle, u32
> domain,
> +			       u32 level, bool poll)
> +{
> +	struct scmi_perf_info *pi = handle->perf_priv;
> +	struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +	if (dom->fc_info && dom->fc_info->level_set_addr) {
> +		iowrite32(level, dom->fc_info->level_set_addr);
> +		scmi_perf_fc_ring_db(dom->fc_info->level_set_db);
> +		return 0;
> +	}
> +
> +	return scmi_perf_mb_level_set(handle, domain, level, poll); }
> +
> +static int scmi_perf_mb_level_get(const struct scmi_handle *handle, u32
> +domain,
>  				  u32 *level, bool poll)
>  {
>  	int ret;
> @@ -387,6 +469,20 @@ static int scmi_perf_level_get(const struct
> scmi_handle *handle, u32 domain,
>  	return ret;
>  }
> 
> +static int scmi_perf_level_get(const struct scmi_handle *handle, u32
> domain,
> +			       u32 *level, bool poll)
> +{
> +	struct scmi_perf_info *pi = handle->perf_priv;
> +	struct perf_dom_info *dom = pi->dom_info + domain;
> +
> +	if (dom->fc_info && dom->fc_info->level_get_addr) {
> +		*level = ioread32(dom->fc_info->level_get_addr);
> +		return 0;
> +	}
> +
> +	return scmi_perf_mb_level_get(handle, domain, level, poll); }
> +
>  static bool scmi_perf_fc_size_is_valid(u32 msg, u32 size)  {
>  	if ((msg == PERF_LEVEL_GET || msg == PERF_LEVEL_SET) && size == 4)

Reviewed-by: Peng Fan <peng.fan@nxp.com>

> --
> 2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
