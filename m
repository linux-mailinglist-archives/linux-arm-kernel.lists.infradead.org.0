Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 392111C8455
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 10:06:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWQ8j66ajy7dF8/9U0MSDORusENZ8GoJN+6SATJtEuk=; b=SW0MdjKLUAL6Rj
	7nv3bayIodlLMLGEcjO9J8hSHqVmwgQLUMykar5gUoNJVo70Dy/dlpYuNan8vQ0QEF1LwdY/wOUIy
	aXeotUCniwiZ0h3QEE/qNcHPGE880Qa60jeFOthu7qKwofw36SoZpU0gNpWidKDvV54jk4kf/kWGm
	ErT0ohfzHLy9bTdo4qfpFQCDJBgOiUW6Sb7P09LP0E7IJa1cqq5IO27vNhvnjbGM4/5A5FTYXuE4H
	LCzv3JM1Octi7yr9Pz47NCjGlI9DQ3GNBkOli6VdARkISuAMxj7R5alghjQpRGBSscyTyzQhdLMBM
	6X8GOhb7/mKp6J7I+U7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbYO-0001FH-6F; Thu, 07 May 2020 08:06:48 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbY5-0001Ed-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 08:06:31 +0000
IronPort-SDR: j98m0Zns0+C4jsJg5j/PCNFV+fr5Tu4IHbAl36fvHr35+EcJ/LQHXvK8w5EJU0MYLtH1lyNGBR
 mKYOKkDUJ8HQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 01:06:28 -0700
IronPort-SDR: XvAwOy9rJiHh7AhaYBcpwBcg9CCfRpV+oLhcRlRZeeu5gXBHM3nQ18MVpo+XxNMWSdp2RIl5sO
 HjKMFmzrO6Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="250020621"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 07 May 2020 01:06:28 -0700
Received: from fmsmsx119.amr.corp.intel.com (10.18.124.207) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 01:06:27 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX119.amr.corp.intel.com (10.18.124.207) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 01:06:27 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 7 May 2020 01:06:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKPxUBzWR7JqU3roFWxZvcG5+yglzXMCzM5YP+gxrKvkA9Y2cNUJaDz25Oaxs/OsUz+cusW7FbCLXPxuT7Escs7VPXS8wlXMng2qgnvoKoN/zV5hWC3KHPjmDYB1xnmh8bgJG6S1Cvl/PwmdD+psc1uYt7UMBwLkC/AkLuP4ODb0eDQ4kC6/FpivWLGTo3kOjxDoYfso9/3yyJ6turHv6CVxIwX+SdV7dopP0GZPRYmkko3JTKdJyzLioadoafOfbFsKOmQ/45ymxYYNP80ncEEflEJEeY/q0bET5bU1uZ1MT4pxgxENR4HFPBxaOFtU+QYsY8+RWES+XcFrLgohmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Olf9RVDSRipIXgKxcgC0HUD6r0zTnNiQ25hd3LJKLU4=;
 b=SzX+sr1QvWxVo28dFPmLVqMbiJCyrnISw6IX5mZiFjd1AEM0AxDwClo7e/C3maXhSXeqbJ5uHbf2InMDLTVMk4NuNJnDcnEvSuOZwWRl6nwT13IhbaYhlav3qHxOTJZa4tWtEu0R9Kzx1WBgBReSERWsaEwt9LGi7348qa/M9qOH74Ya+xrR9SmaReQvJXKGN0ckxGImWZwVllZ5NEYI4NJeHud6JUDc+mtJfP0EPDBm7e+YIA9aQ9jud/MeBjbg8afLWOoOy8D6pv6i8LoXW/Tv0Vbcy28auFoMpEBEcAYK9XJ5oeAmX7hn1PBCuCzbjMsN7YadDKDwAjS/mBLrqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Olf9RVDSRipIXgKxcgC0HUD6r0zTnNiQ25hd3LJKLU4=;
 b=Y/RdrtIL0uryNGI4nvOuH2lmdv6vGl6anCY08yxGGn+sig9VjrHBkLluUPEW4k3qu9VVQxGcOT3eQWXdKQhpV5J7AMutvRGanfHsSOmMSVP42lQwtzWBe5GjeT4MAcH+3Nzl3WM4A4SzvpYCn6Iwvog8JpMNakkXcwkWCPnQIco=
Received: from SN6PR11MB3293.namprd11.prod.outlook.com (2603:10b6:805:be::11)
 by SN6PR11MB2862.namprd11.prod.outlook.com (2603:10b6:805:5b::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Thu, 7 May
 2020 08:06:24 +0000
Received: from SN6PR11MB3293.namprd11.prod.outlook.com
 ([fe80::55b:4ee0:cce8:b80a]) by SN6PR11MB3293.namprd11.prod.outlook.com
 ([fe80::55b:4ee0:cce8:b80a%7]) with mapi id 15.20.2958.030; Thu, 7 May 2020
 08:06:24 +0000
From: "Kao, Ben" <ben.kao@intel.com>
To: Robert Foss <robert.foss@linaro.org>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 Marco Felsch <m.felsch@pengutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH v7 2/3] media: ov8856: Add devicetree support
Thread-Topic: [PATCH v7 2/3] media: ov8856: Add devicetree support
Thread-Index: AQHWIsRSr9qrYL8+20yc4tjjkTiCJKicPgTw
Date: Thu, 7 May 2020 08:06:23 +0000
Message-ID: <SN6PR11MB3293BF52D336178B9D2F5974EDA50@SN6PR11MB3293.namprd11.prod.outlook.com>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-3-robert.foss@linaro.org>
In-Reply-To: <20200505100129.104673-3-robert.foss@linaro.org>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d718ee01-139d-459c-4ef7-08d7f25d891a
x-ms-traffictypediagnostic: SN6PR11MB2862:
x-microsoft-antispam-prvs: <SN6PR11MB286211D4028D3941FC039504EDA50@SN6PR11MB2862.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CZiwuljWPrR+J2mbIjkDLsEPK+ZqQRXn9gE6vAxsgk0aPUTaLOuNdbGNC3T5B3F3mDDqpF+TwgmPQRl6kIjWWyCtrXZF8tKKNTxpjQUma8L4U20Qfvn5xkHC4N99RsxKXgij+0iIdY+6tcb8qsA3EOYy7dTgzFxDLj9eTFsXL4noO88Po00hno7bFf39QUxU3LCmvQ8Nl9QSShAqdtwN938JoCFxoVJIZ+/kWdo4e9hp02yGvjk4EpkiYm3eu/Bm2G0+TUKeHyWWNvpH1YtoTm0eSy3Dtpe4gUMZpvvLo4jjk4/0SS2v5nrh4I01Vw8BHQ70EH7iV0YrIRqVK8dKdOsibv4Ls3z8xiraNPVtZFsLJ3zaeffakke4FCCXnTcbzSsWyBsc1lllX/oh85hi6VMxYT+yJJotnzY3ynuug+Bs/arcyAiYsinZwQPPmDsA0yVdzh1gKgJP8hrleNzl/vEburZ2eLDQcSlVo+T63NfuCe5T+MfKTT8DmJIqWPsmCFjb71lbZcoYM3O+lWkmmQH7mKu18gloa3axLQ13SeqH2c3VZPiYFFb4pUYQE9Rv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3293.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39860400002)(136003)(396003)(346002)(366004)(33430700001)(33656002)(64756008)(8936002)(5660300002)(8676002)(33440700001)(4326008)(7416002)(7696005)(478600001)(53546011)(9686003)(186003)(55016002)(6506007)(54906003)(66476007)(76116006)(66556008)(66446008)(52536014)(83320400001)(71200400001)(83280400001)(86362001)(2906002)(316002)(66946007)(110136005)(83300400001)(83310400001)(83290400001)(26005)(21314003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oirSL4hYYECXrBzXRp6po7pUYFe+oxm/ojd8YTGcKY7HYbTgfBVqVaG+GZ2WdK+0PxkUdld8FZ2C39jvC1JzQLUnVUNDW0o/qqgkcvO//5Lrwom4aQl9GobwT4p/ZFaaxdbuUBDVAfipH0GIj0JhszysGLmF/sDTcsaiuaA2xLUx4LMlQeAAjlfMjHwzumxz9EUIl7h4/AlKGgHsA76DET0GWlkj1GcqmNNqMKrWCz/zCulEIAYL+8mwHxbzuZeNo/pKOb7rfFvkGWsRPATDXsfrAAmaZTuiHPTg5WlDiRNpaY/bfmaXEy+B4WrEtxCMeqEhZJK0K2QrB6bv2/326ZU9u5+iCPCW3DuSYuGtDfyGFbIxq2es4l+QIvCzwijQFipmEUNlgVPQ/gNMF2dKB/gpuRWowuMf//HtO8EYt68CSaVH+K8m/Il8PSPTI6cXfh5dKsT6JXffwX9/Qi2FcT5/ZKsIiogVLhm07OaDBmbInXXn3P93TmHxBOUSjK/hOXP/BP++H8qIhaRXyxlwDmtp1KShzKEzlz58z/g9yNYjyLrGqaGX9YL8yKfWBl014bjU/lpoKAJkQhXBo7JufEhLx5XpgMBMj9NFByB2+n739FO1Xo0dr9JHlIUQCFUjdirtWm6Ea3evmWMhRAGERoa04pk7cZW7YLmux63UOTFC/TIfphpH8Kh76tVxYQTvm6ioG1hX0BZKP6Bjn5oqFC/lpEa7n0R7o6FoE1Yhgbgz9/mTbcRilArW36fu4SVZtcBfOXbA6GxPIgU6T+H0/MsB+nr6rzh4OwrV4850EJM=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d718ee01-139d-459c-4ef7-08d7f25d891a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 08:06:24.0778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: icU+CG8cvhJvizT8HGswfrAGzJ+8KognpP8sqWXbbrLe0yTnQ5Z7Nr0cX6NpHTFerNbS0IUhvAFPl5tZqNKgyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2862
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_010629_647232_838CFCD0 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Tomasz Figa <tfiga@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On 20-05-05 12:01, Robert Foss wrote:
> Add match table, enable ov8856_probe() to support both ACPI and DT modes.
> 
> ACPI and DT modes are primarily distinguished from by checking for ACPI mode
> and by having resource like be NULL.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v6:
>   * Marco: Bail out of __ov8856_power_on earlier if ACPI mode
> 
> - Changes since v5:
>   * Maxime & Sakari: Replaced clock tolerance check with warning
> 
> - Changes since v4:
>   * Maxime & Sakari: Switch to clock-frequency
> 
> - Changes since v3:
>   * Remove redundant {}-brackets
>   * Compare xvclk_rate to 5% tolerance
>   * Andy: Use dev_fwnode()
>   * Andy: Use %pe instead of %ld + PTR_ERR()
>   * Andy: Invert reset_gpio logic
>   * Andy: Remove dev_dbg() from failing reset_gpio setup
>   * Andy: Use dev_err for logging for failures
>   * Andy: Remove dev_warn from EDEFER/regulator error path
>   * Andy & Sakari: Replaced GPIOD_OUT_XXX with 0/1
>   * Maxime & Sakari: Verify clock frequency from DT
>   * Sakari: Verify the 'xvclk_rate' is set correctly for ACPI/DT devices
>   * Sakari: Remove duplicate ov8856->dev assignment
> 
> - Changes since v2:
>   * Added "struct device *dev" member to struct ov8856
>   * Andy: Switch to optional version of devm_gpiod_get
>   * Andy: Switch to optional version of devm_clk_get
>   * Fabio: Add reset sleep period
>   * Sakari: Unify defines for 19.2Mhz
>   * Sakari: Remove 24Mhz clock, since it isn't needed for supported modes
>   * Sakari: Replace dev_info() with dev_dbg()
>   * Sakari: Switch induction variable type to unsigned
>   * Sakari: Don't wait for reset_gpio when in ACPI mode
>   * Sakari: Pull reset GPIO high on power on failure
>   * Sakari: Add power on/off to resume/suspend
>   * Sakari: Fix indentation
>   * Sakari: Power off during ov8856_remove()
>   * Sakari: Don't sleep during power-on in ACPI mode
>   * Sakari: Switch to getting xvclk from clk_get_rate
> 
> - Changes since v1:
>   * Andy & Sakari: Make XVCLK optional since to not break ACPI
>   * Fabio: Change n_shutdown_gpio name to reset_gpio
>   * Fabio: Invert reset_gpio due to GPIO_ACTIVE_HIGH -> GPIO_ACTIVE_LOW
> change
>   * Fabio: Remove empty line
>   * Fabio: Remove real error from devm_gpiod_get() failures
>   * Sakari: ARRAY_SIZE() directly instead of through OV8856_NUM_SUPPLIES
>   * Sakari: Use XVCLK rate as provided by DT
> 
>  drivers/media/i2c/ov8856.c | 137 +++++++++++++++++++++++++++++++++----
>  1 file changed, 123 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c index
> 8655842af275..e6418a79801e 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -3,10 +3,13 @@
> 
>  #include <asm/unaligned.h>
>  #include <linux/acpi.h>
> +#include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/i2c.h>
>  #include <linux/module.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/regulator/consumer.h>
>  #include <media/v4l2-ctrls.h>
>  #include <media/v4l2-device.h>
>  #include <media/v4l2-fwnode.h>
> @@ -18,7 +21,7 @@
>  #define OV8856_LINK_FREQ_360MHZ		360000000ULL
>  #define OV8856_LINK_FREQ_180MHZ		180000000ULL
>  #define OV8856_SCLK			144000000ULL
> -#define OV8856_MCLK			19200000
> +#define OV8856_XVCLK_19_2		19200000
>  #define OV8856_DATA_LANES		4
>  #define OV8856_RGB_DEPTH		10
> 
> @@ -64,6 +67,12 @@
> 
>  #define to_ov8856(_sd)			container_of(_sd, struct ov8856, sd)
> 
> +static const char * const ov8856_supply_names[] = {
> +	"dovdd",	/* Digital I/O power */
> +	"avdd",		/* Analog power */
> +	"dvdd",		/* Digital core power */
> +};
> +
>  enum {
>  	OV8856_LINK_FREQ_720MBPS,
>  	OV8856_LINK_FREQ_360MBPS,
> @@ -566,6 +575,11 @@ struct ov8856 {
>  	struct media_pad pad;
>  	struct v4l2_ctrl_handler ctrl_handler;
> 
> +	struct device		*dev;
> +	struct clk		*xvclk;
> +	struct gpio_desc	*reset_gpio;
> +	struct regulator_bulk_data
> supplies[ARRAY_SIZE(ov8856_supply_names)];
> +
>  	/* V4L2 Controls */
>  	struct v4l2_ctrl *link_freq;
>  	struct v4l2_ctrl *pixel_rate;
> @@ -908,6 +922,52 @@ static int ov8856_set_stream(struct v4l2_subdev *sd,
> int enable)
>  	return ret;
>  }
> 
> +static int __ov8856_power_on(struct ov8856 *ov8856) {
> +	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +	int ret;
> +
> +	if (is_acpi_node(dev_fwnode(ov8856->dev)))
> +		return 0;
> +
> +	ret = clk_prepare_enable(ov8856->xvclk);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable xvclk\n");
> +		return ret;
> +	}
> +
> +	if (ov8856->reset_gpio) {
> +		gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> +		usleep_range(1000, 2000);
> +	}
> +
> +	ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> +				    ov8856->supplies);
> +	if (ret < 0) {
> +		dev_err(&client->dev, "failed to enable regulators\n");
> +		goto disable_clk;
> +	}
> +
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 0);
> +	usleep_range(1500, 1800);
> +
> +	return 0;
> +
> +disable_clk:
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> +	clk_disable_unprepare(ov8856->xvclk);
> +
> +	return ret;
> +}
> +
> +static void __ov8856_power_off(struct ov8856 *ov8856) {
> +	gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> +	regulator_bulk_disable(ARRAY_SIZE(ov8856_supply_names),
> +			       ov8856->supplies);
> +	clk_disable_unprepare(ov8856->xvclk);
> +}
> +
>  static int __maybe_unused ov8856_suspend(struct device *dev)  {
>  	struct i2c_client *client = to_i2c_client(dev); @@ -918,6 +978,7 @@
> static int __maybe_unused ov8856_suspend(struct device *dev)
>  	if (ov8856->streaming)
>  		ov8856_stop_streaming(ov8856);
> 
> +	__ov8856_power_off(ov8856);
>  	mutex_unlock(&ov8856->mutex);
> 
>  	return 0;
> @@ -931,6 +992,8 @@ static int __maybe_unused ov8856_resume(struct
> device *dev)
>  	int ret;
> 
>  	mutex_lock(&ov8856->mutex);
> +
> +	__ov8856_power_on(ov8856);
>  	if (ov8856->streaming) {
>  		ret = ov8856_start_streaming(ov8856);
>  		if (ret) {
> @@ -1092,29 +1155,54 @@ static int ov8856_identify_module(struct ov8856
> *ov8856)
>  	return 0;
>  }
> 
> -static int ov8856_check_hwcfg(struct device *dev)
> +static int ov8856_get_hwcfg(struct ov8856 *ov8856)
>  {
> +	struct device *dev = ov8856->dev;
>  	struct fwnode_handle *ep;
>  	struct fwnode_handle *fwnode = dev_fwnode(dev);
>  	struct v4l2_fwnode_endpoint bus_cfg = {
>  		.bus_type = V4L2_MBUS_CSI2_DPHY
>  	};
> -	u32 mclk;
> +	u32 xvclk_rate;
>  	int ret;
>  	unsigned int i, j;
> 
>  	if (!fwnode)
>  		return -ENXIO;
> 
> -	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> +	ret = fwnode_property_read_u32(fwnode, "clock-frequency",
> +		&xvclk_rate);
>  	if (ret)
>  		return ret;
> 
> -	if (mclk != OV8856_MCLK) {
> -		dev_err(dev, "external clock %d is not supported", mclk);
> -		return -EINVAL;
> +	if (!is_acpi_node(fwnode)) {
> +		ov8856->xvclk = devm_clk_get(dev, "xvclk");
> +		if (IS_ERR(ov8856->xvclk)) {
> +			dev_err(dev, "could not get xvclk clock (%pe)\n",
> +					ov8856->xvclk);
> +			return PTR_ERR(ov8856->xvclk);
> +		}
> +
> +		clk_set_rate(ov8856->xvclk, xvclk_rate);
> +		xvclk_rate = clk_get_rate(ov8856->xvclk);
>  	}
> 
> +	if (xvclk_rate != OV8856_XVCLK_19_2)
> +		dev_warn(dev, "external clock rate %d is unsupported",
> xvclk_rate);
> +
> +	ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> +		GPIOD_OUT_LOW);
> +	if (IS_ERR(ov8856->reset_gpio))
> +		return PTR_ERR(ov8856->reset_gpio);
> +
> +	for (i = 0; i < ARRAY_SIZE(ov8856_supply_names); i++)
> +		ov8856->supplies[i].supply = ov8856_supply_names[i];
> +
> +	ret = devm_regulator_bulk_get(dev,
> ARRAY_SIZE(ov8856_supply_names),
> +				      ov8856->supplies);
> +	if (ret)
> +		return ret;
> +

In case of ACPI this cannot get ov8856->reset_gpio  and ov8856->supplies, please add the check for ACPI case:
if (!is_acpi_node(fwnode)) { }

Thanks.
Ben

>  	ep = fwnode_graph_get_next_endpoint(fwnode, NULL);
>  	if (!ep)
>  		return -ENXIO;
> @@ -1169,6 +1257,8 @@ static int ov8856_remove(struct i2c_client *client)
>  	pm_runtime_disable(&client->dev);
>  	mutex_destroy(&ov8856->mutex);
> 
> +	__ov8856_power_off(ov8856);
> +
>  	return 0;
>  }
> 
> @@ -1177,22 +1267,31 @@ static int ov8856_probe(struct i2c_client *client)
>  	struct ov8856 *ov8856;
>  	int ret;
> 
> -	ret = ov8856_check_hwcfg(&client->dev);
> +	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
> +	if (!ov8856)
> +		return -ENOMEM;
> +
> +	ov8856->dev = &client->dev;
> +
> +	ret = ov8856_get_hwcfg(ov8856);
>  	if (ret) {
> -		dev_err(&client->dev, "failed to check HW configuration: %d",
> +		dev_err(&client->dev, "failed to get HW configuration: %d",
>  			ret);
>  		return ret;
>  	}
> 
> -	ov8856 = devm_kzalloc(&client->dev, sizeof(*ov8856), GFP_KERNEL);
> -	if (!ov8856)
> -		return -ENOMEM;
> -
>  	v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> +
> +	ret = __ov8856_power_on(ov8856);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to power on\n");
> +		return ret;
> +	}
> +
>  	ret = ov8856_identify_module(ov8856);
>  	if (ret) {
>  		dev_err(&client->dev, "failed to find sensor: %d", ret);
> -		return ret;
> +		goto probe_power_off;
>  	}
> 
>  	mutex_init(&ov8856->mutex);
> @@ -1238,6 +1337,9 @@ static int ov8856_probe(struct i2c_client *client)
>  	v4l2_ctrl_handler_free(ov8856->sd.ctrl_handler);
>  	mutex_destroy(&ov8856->mutex);
> 
> +probe_power_off:
> +	__ov8856_power_off(ov8856);
> +
>  	return ret;
>  }
> 
> @@ -1254,11 +1356,18 @@ static const struct acpi_device_id ov8856_acpi_ids[]
> = {  MODULE_DEVICE_TABLE(acpi, ov8856_acpi_ids);  #endif
> 
> +static const struct of_device_id ov8856_of_match[] = {
> +	{ .compatible = "ovti,ov8856" },
> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, ov8856_of_match);
> +
>  static struct i2c_driver ov8856_i2c_driver = {
>  	.driver = {
>  		.name = "ov8856",
>  		.pm = &ov8856_pm_ops,
>  		.acpi_match_table = ACPI_PTR(ov8856_acpi_ids),
> +		.of_match_table = ov8856_of_match,
>  	},
>  	.probe_new = ov8856_probe,
>  	.remove = ov8856_remove,
> --
> 2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
