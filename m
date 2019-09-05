Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383C0A9FA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 12:27:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jol6aAiLoVKc9S+i5s0nNJ6ZwA1Vc5UrM5yabraRw98=; b=V/6OaZbvQPstfc
	Qv2zXKlOT5Ds5E7sopU+LpEOcangxM73gq+UkhS0HxeVA+2tkD2mfeB0+6cIhipdF6acU3BUIieR6
	9faHO+mPynWuXAtrhHuaeg6pUlxV+mWaELwT7rsJYBA3tOQJNSDLs0G8HXt8FwCbdi1EIptbMA86J
	JbyQ1VFtRUXlJaYNSFt8rdA8V5+EIrkxMS44rtbzTUoMjlwLmpLtsg/Ii4M1nRJd9KLAk26ySiXga
	wPmNf+B7KmKa9b6Ixxq7iBfF+XAAlfc7so7k+5GeBt1bZfFfuhM8UeDJnUQa6Dyjh9KB8Hb9AA0op
	z5DjAKd+D88F5rWz5rLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oya-0001eF-1b; Thu, 05 Sep 2019 10:26:52 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oyO-0001dt-Uj; Thu, 05 Sep 2019 10:26:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:26:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="382845344"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga005.fm.intel.com with ESMTP; 05 Sep 2019 03:26:35 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i5oyH-0006S3-S7; Thu, 05 Sep 2019 13:26:33 +0300
Date: Thu, 5 Sep 2019 13:26:33 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20190905102633.GC2680@smile.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905072142.14606-3-dongchun.zhu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_032641_002751_E31E83EB 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 tfiga@chromium.org, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 03:21:42PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> =

> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
> =

> The DW9768 is a 10 bit DAC with 100mA output current sink capability
> from Dongwoon, designed for linear control of voice coil motor,
> and controlled via I2C serial interface.

> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +

This should go to the same patch, where you introduce a record in the
MAINTAINERS database.

> +#define DW9768_SET_POSITION_ADDR                0x03

Indentation issue.

> +static struct regval_list dw9768_init_regs[] =3D {
> +	{0x02, 0x02},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +	{0x06, 0x41},
> +	{0x07, 0x39},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static struct regval_list dw9768_release_regs[] =3D {
> +	{0x02, 0x00},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +	{0x01, 0x00},
> +	{DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static int dw9768_write_smbus(struct dw9768 *dw9768, unsigned char reg,
> +			      unsigned char value)
> +{
> +	struct i2c_client *client =3D v4l2_get_subdevdata(&dw9768->sd);
> +	int ret;
> +

> +	if (reg =3D=3D DW9768_CMD_DELAY  && value =3D=3D DW9768_CMD_DELAY)

Indentation issue.
But see other's comments.

> +		usleep_range(DW9768_CTRL_DELAY_US,
> +			     DW9768_CTRL_DELAY_US + 100);

> +	else

This needs an explanation.

> +		ret =3D i2c_smbus_write_byte_data(client, reg, value);
> +	return ret;
> +}

I'm wondering if we can benefit from regmap I=B2C API in this driver.

> +static int __maybe_unused dw9768_vcm_suspend(struct device *dev)
> +{

> +	struct i2c_client *client =3D to_i2c_client(dev);
> +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);

isn't is simple dev_get_drvdata() ?

> +	struct dw9768 *dw9768 =3D sd_to_dw9768_vcm(sd);
> +
> +	return dw9768_power_off(dw9768);
> +}
> +
> +static int __maybe_unused dw9768_vcm_resume(struct device *dev)
> +{

> +	struct i2c_client *client =3D to_i2c_client(dev);
> +	struct v4l2_subdev *sd =3D i2c_get_clientdata(client);

Ditto.

> +	struct dw9768 *dw9768 =3D sd_to_dw9768_vcm(sd);
> +
> +	return dw9768_power_on(dw9768);
> +}

> +static const struct i2c_device_id dw9768_id_table[] =3D {
> +	{ DW9768_NAME, 0 },

> +	{ },

No comma.

> +};

> +static const struct of_device_id dw9768_of_table[] =3D {
> +	{ .compatible =3D "dongwoon,dw9768" },

> +	{ },

Ditto.

> +};

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
