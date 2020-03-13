Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAED184722
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:45:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSDQfMqIkkw7w6xedHe6KePnDiIqS0UiQUB9ELd3TNM=; b=nIc8fEeTKEKYdQ
	RcXJSIzyp6WMYF478lD07or/bW/Sz24/cYq80eUzpXZJeoZZ0fc2BVijgJVI7FgooJaSHirAx8zgi
	ATvuu1m8vSoAlVEiDrRoXrsjQGM0YFXIY0+RCiQ5SKcPk3nd0d97oVGAsZcmBrK3wYOCeBzcQINMG
	2Wquwxe78FxXzOR+nKVzlWWed55FoU0IhZi5nhcdyFi6XKRFbfGrDtgLQXxRMOj7PsfRBYkXivP/s
	crVvorMD7IyFSfVqyhwShizmvXInxcOxdeBamH/sWcsBN7x95gXiFXAQp5NRzRkknAxOHuDlcv0in
	yHkcov2pFlUmf/tt6vlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjgf-0002pr-1h; Fri, 13 Mar 2020 12:45:13 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjgN-0002os-LX
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:44:57 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id F3C2F634C89;
 Fri, 13 Mar 2020 14:43:53 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jCjfO-0001it-7j; Fri, 13 Mar 2020 14:43:54 +0200
Date: Fri, 13 Mar 2020 14:43:54 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 3/3] media: ov8856: Implement sensor module revision
 identification
Message-ID: <20200313124354.GE5730@valkosipuli.retiisi.org.uk>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-4-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313110350.10864-4-robert.foss@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_054455_891424_930DCB3D 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Fri, Mar 13, 2020 at 12:03:50PM +0100, Robert Foss wrote:
> Query the sensor for its module revision, and compare it
> to known revisions.
> Currently only the '1B' revision has been added.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
>  drivers/media/i2c/ov8856.c | 54 +++++++++++++++++++++++++++++++++-----
>  1 file changed, 48 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index db61eed223e8..39662d3d86dd 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -34,6 +34,18 @@
>  #define OV8856_MODE_STANDBY		0x00
>  #define OV8856_MODE_STREAMING		0x01
>  
> +/* define 1B module revision */
> +#define OV8856_1B_MODULE		0x02
> +
> +/* the OTP read-out buffer is at 0x7000 and 0xf is the offset
> + * of the byte in the OTP that means the module revision
> + */
> +#define OV8856_MODULE_REVISION		0x700f
> +#define OV8856_OTP_MODE_CTRL		0x3d84
> +#define OV8856_OTP_LOAD_CTRL		0x3d81
> +#define OV8856_OTP_MODE_AUTO		0x00
> +#define OV8856_OTP_LOAD_CTRL_ENABLE	BIT(0)
> +
>  /* vertical-timings from sensor */
>  #define OV8856_REG_VTS			0x380e
>  #define OV8856_VTS_MAX			0x7fff
> @@ -711,6 +723,25 @@ static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
>  				OV8856_REG_VALUE_08BIT, pattern);
>  }
>  
> +static int ov8856_check_revision(struct ov8856 *ov8856)

There are no version checks being done here, nor apparently the version is
read by this function. 

> +{
> +	int ret;
> +
> +	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> +	if (ret)
> +		return ret;
> +
> +	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
> +			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
> +	if (ret)
> +		return ret;
> +
> +	return ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
> +				OV8856_REG_VALUE_08BIT,
> +				OV8856_OTP_LOAD_CTRL_ENABLE);

If streaming is started to read the EEPROM, shouldn't it be stopped after
reading it as well?

> +}
> +
>  static int ov8856_set_ctrl(struct v4l2_ctrl *ctrl)
>  {
>  	struct ov8856 *ov8856 = container_of(ctrl->handler,
> @@ -1144,6 +1175,23 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
>  		return -ENXIO;
>  	}
>  
> +	/* check sensor hardware revision */
> +	ret = ov8856_check_revision(ov8856);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to check sensor revision");
> +		return ret;
> +	}
> +
> +	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
> +			      OV8856_REG_VALUE_08BIT, &val);
> +	if (ret)
> +		return ret;

How about moving this inside the check_revision function above? It looks as
if it's dependent on that.

> +
> +	dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
> +		val,
> +		val == OV8856_1B_MODULE ? "1B" : "unknown revision",
> +		client->addr);
> +
>  	return 0;
>  }
>  
> @@ -1254,12 +1302,6 @@ static int ov8856_probe(struct i2c_client *client)
>  		return PTR_ERR(ov8856->xvclk);
>  	}
>  
> -	ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);

This seems like an unrelated change.

> -	if (ret < 0) {
> -		dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> -		return ret;
> -	}
> -
>  	ov8856->reset_gpio = devm_gpiod_get(&client->dev, "reset",
>  					       GPIOD_OUT_HIGH);
>  	if (IS_ERR(ov8856->reset_gpio)) {

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
