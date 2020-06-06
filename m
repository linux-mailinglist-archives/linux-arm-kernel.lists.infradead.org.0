Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F117D1F0576
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 08:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYt9iKKheLSMVb2s80CBLj9F6JyqK3aCWt95/vzmoXA=; b=dLIm/fJnbyi6kN
	NG8q6TaeF/32jL5w82QDYEt5qTBTq3NMrklLU5kikvIlwD8NBaUgr8BQwGE5EMEFxaViTvlbhyjsU
	gJ4xnMOewmGSxkFaiVHqG2oevrGod8lOOItt4bf6En8yyshFk6CjKpSGCfZeQyoi3Hc43ivkQhkxd
	8+IS9midXleBq6l4GJeADKSdf28DG8ycte9PMkiVcTDuZKxUW4cQOL6L3F9KiHmTievHIhLuJJpfv
	XABBNrn7/u2dTDHFAO5S8oXpqAEYlTUuSo+jt1pOq9uRbV4UbjKdM95c3YgRmQ8gcXjQgvuBZzF5x
	dkRwRNGlOeRecv1H3IAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhSa0-0007Sk-6x; Sat, 06 Jun 2020 06:45:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhSZr-0007RP-AA; Sat, 06 Jun 2020 06:45:12 +0000
X-UUID: 38d7d8c4b0e94843bfd3d4f75087e480-20200605
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gfA1g5/tH05MT05A2pVcmlsW9osyUE+e/sPO14ohiIc=; 
 b=FdbHIASZI58luSV5uFQG/XI6f4Mo/Zt52ojxLxcgoI3pP2pCk8Ig8bsqhw/fjvrXultVWX6FA6TePA1HnJr6eUBw8llRjKeVjRbwjCPC2/Lz9zFxZZOI6+9qxCUDDbIUelnvtj4ovyEZRKhotSATXA2oSWA+ZrYqPW7lbeanLH4=;
X-UUID: 38d7d8c4b0e94843bfd3d4f75087e480-20200605
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 226666340; Fri, 05 Jun 2020 22:45:16 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 5 Jun 2020 23:45:06 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 6 Jun 2020 14:45:03 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 6 Jun 2020 14:45:02 +0800
Message-ID: <1591425778.8804.614.camel@mhfsdcap03>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 6 Jun 2020 14:42:58 +0800
In-Reply-To: <20200605134440.GA20379@chromium.org>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605134440.GA20379@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 718D582639BC52F66AD8ADFFD42A73B5B3AEAE45CD98840B3A40295878A177332000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_234511_366546_D1292A3D 
X-CRM114-Status: GOOD (  19.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, louis.kuo@mediatek.com, bgolaszewski@baylibre.com,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

Thanks for the review.

On Fri, 2020-06-05 at 13:44 +0000, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > control to set the desired focus via IIC serial interface.
> > 
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  MAINTAINERS                |   1 +
> >  drivers/media/i2c/Kconfig  |  13 ++
> >  drivers/media/i2c/Makefile |   1 +
> >  drivers/media/i2c/dw9768.c | 566 +++++++++++++++++++++++++++++++++++++++++++++
> >  4 files changed, 581 insertions(+)
> >  create mode 100644 drivers/media/i2c/dw9768.c
> > 
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
> > +/*
> > + * DW9768 requires waiting time (delay time) of t_OPR after power-up,
> > + * or in the case of PD reset taking place.
> > + */
> > +#define DW9768_T_OPR_US				1000
> > +#define DW9768_Tvib_MS_BASE10			(64 - 1)
> 
> Kernel macro names are uppercase only.
> 

Aha... This is caused by my carelessness.
Fixed in next release.

> [snip]
> > +	/* Set AAC Timing */
> > +	if (dw9768->aac_timing != DW9768_AAC_TIME_DEFAULT) {
> > +		ret = i2c_smbus_write_byte_data(client, DW9768_AAC_TIME_REG,
> > +						dw9768->aac_timing);
> > +		if (ret < 0)
> > +			return ret;
> > +	}
> > +
> > +	move_delay_us = dw9768_cal_move_delay(dw9768->aac_mode,
> > +					      dw9768->clock_presc,
> > +					      dw9768->aac_timing) / 100;
> 
> We could calculate this once in probe() and store the ready us value in
> the dw9768 struct.
> 

Great idea :-)
From the perspective of 'move_delay_us' itself, it defines VCM Operation
Time, which is indeed an intrinsic parameter that belongs to DW9768
private structure.

> > +
> > +	for (val = dw9768->focus->val % DW9768_MOVE_STEPS;
> > +	     val <= dw9768->focus->val;
> > +	     val += DW9768_MOVE_STEPS) {
> > +		ret = dw9768_set_dac(dw9768, val);
> > +		if (ret) {
> > +			dev_err(&client->dev, "%s I2C failure: %d",
> > +				__func__, ret);
> > +			return ret;
> > +		}
> > +		usleep_range(move_delay_us, move_delay_us + 1000);
> > +	}
> > +
> > +	return 0;
> > +}
> [snip]
> > +	pm_runtime_enable(dev);
> > +	if (!pm_runtime_enabled(dev)) {
> > +		ret = dw9768_runtime_resume(dev);
> > +		if (ret < 0) {
> > +			dev_err(dev, "failed to power on: %d\n", ret);
> > +			goto err_clean_entity;
> > +		}
> > +	}
> > +
> > +	ret = v4l2_async_register_subdev(&dw9768->sd);
> > +	if (ret < 0) {
> > +		dev_err(dev, "failed to register V4L2 subdev: %d", ret);
> > +		goto error_async_register;
> > +	}
> > +
> > +	return 0;
> > +
> > +error_async_register:
> 
> The recommendation is to name the labels after the clean-up task that needs
> to be done. Should this one be called error_power_off?
> 

Understood.
'error_async_register' would be replaced of 'err_power_off' in next
release.

> > +	if (!pm_runtime_enabled(dev))
> > +		dw9768_runtime_suspend(dev);
> 
> Shouldn't we also call pm_runtime_disable() here?
> 

Thanks for the reminder.
We would add pm_runtime_disable() in next release.
Just like:
err_power_off:
	pm_runtime_disable(dev);
	if (!pm_runtime_enabled(dev))
		dw9768_runtime_suspend(dev);

> > +err_clean_entity:
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +err_free_handler:
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +
> > +	return ret;
> > +}
> > +
> > +static int dw9768_remove(struct i2c_client *client)
> > +{
> > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > +
> > +	v4l2_async_unregister_subdev(&dw9768->sd);
> > +	v4l2_ctrl_handler_free(&dw9768->ctrls);
> > +	media_entity_cleanup(&dw9768->sd.entity);
> > +	pm_runtime_disable(&client->dev);
> > +	if (!pm_runtime_status_suspended(&client->dev))
> 
> pm_runtime_status_suspended() doesn't consider the runtime PM disable
> state. There is also pm_runtime_suspended() and that should be correct
> here.
> 

Fixed in next release.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
