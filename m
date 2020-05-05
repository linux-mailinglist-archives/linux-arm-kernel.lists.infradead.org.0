Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA2A1C5306
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p74h5HrmMIRTyPELAJ9bQ4IfOCsPadxlxqG4XNQ6EdY=; b=GEvt0OJ/J++y8H
	AmM59PfyxROotrTa3qmy+84V7dOjWILfIMf3D4B1X45sK/VdOsKx4vwlApgOKfoIBzU4U+8/vtUnn
	82oAT2eFtFqBgxDeXeMER5O6nbzMBPMDwck/qi7O9/SfPzDK3YE9jhsui5ZN+AlrPl+xO2DMivJfa
	hViLXSuYcSVwUOHubRefxohFTDKJK8efvQZKBYULrWso8fJVKybRYNesXfrAei4OIOmlINqwU/8Ua
	wVqasG4betGpVaAw7luDlzlcHdp2RCFbvsJHN2PMzDjyzATP6ZGvVVpomJfWqQSFlD3FM9Zi+MTku
	4eTURACNVE+gUvXBVtWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuhI-0001TN-L9; Tue, 05 May 2020 10:21:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuds-0004Rf-IT
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:17:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jVudl-0006U8-R3; Tue, 05 May 2020 12:17:29 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jVudl-0000fG-DQ; Tue, 05 May 2020 12:17:29 +0200
Date: Tue, 5 May 2020 12:17:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v7 3/3] media: ov8856: Implement sensor module revision
 identification
Message-ID: <20200505101729.GF18755@pengutronix.de>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-4-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505100129.104673-4-robert.foss@linaro.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:16:56 up 73 days, 21:33, 142 users,  load average: 0.19, 1.60,
 15.64
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_031736_628926_0A377483 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Ben Kao <ben.kao@intel.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On 20-05-05 12:01, Robert Foss wrote:
> Query the sensor for its module revision, and compare it
> to known revisions.
> 
> Currently 2A and 1B revision indentification is supported.
> 
> Signed-off-by: Robert Foss <robert.foss@linaro.org>
> ---
> 
> - Changes since v3:
>   * Actually add module revision 2A
> 
> - Changes since v2:
>   * Add module revision 2A
>   * Sakari: Remove ov8856_check_revision()
>   * Sakari: Stop EEPROM streaming mode
> 
>  drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 53 insertions(+)
> 
> diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> index e6418a79801e..3c82c3e588d7 100644
> --- a/drivers/media/i2c/ov8856.c
> +++ b/drivers/media/i2c/ov8856.c
> @@ -32,6 +32,19 @@
>  #define OV8856_MODE_STANDBY		0x00
>  #define OV8856_MODE_STREAMING		0x01
>  
> +/* module revisions */
> +#define OV8856_2A_MODULE		0x01
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
> @@ -1152,6 +1165,46 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
>  		return -ENXIO;
>  	}
>  
> +	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> +	if (ret)
> +		return ret;
> +
> +	ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
> +			       OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to set otp mode");
> +		return ret;
> +	}
> +
> +	ret = ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
> +			       OV8856_REG_VALUE_08BIT,
> +			       OV8856_OTP_LOAD_CTRL_ENABLE);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to enable load control");
> +		return ret;
> +	}
> +
> +	ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
> +			      OV8856_REG_VALUE_08BIT, &val);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to read module revision");
> +		return ret;
> +	}
> +
> +	dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
> +		val,
> +		val == OV8856_2A_MODULE ? "2A" :
> +		val == OV8856_1B_MODULE ? "1B" : "unknown revision",
> +		client->addr);

Pls check the alignment here too.

Regards,
  Marco

> +
> +	ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> +			       OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY);
> +	if (ret) {
> +		dev_err(&client->dev, "failed to exit streaming mode");
> +		return ret;
> +	}
> +
>  	return 0;
>  }
>  
> -- 
> 2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
