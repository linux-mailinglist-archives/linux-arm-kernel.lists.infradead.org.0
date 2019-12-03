Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C410FA29
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:50:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3o632nDgDqBiZBWHpBGBtoLXK53AYUOTPge92Wg3110=; b=ClmpNcQsYVVuLT
	EzmTGhQnVpF3BVm54qmxnBzeLMDvhhSlLrSn38ZBLKd5FEF1UcQN6xFVMMT/77GTV5b8OWgaS8CcH
	DWziMQ/91Ftm8WIpqyey8y+KwGO7Zo0xjx1XMlDZnJLmx6CXnTxMy4Wb0iFR5LrMPg6lewRD8u40k
	l0EKkcZYAP9JYdhb9LOQ+ycZ9u2765TSg5EcMm1XDXYXD4ZlIcO2H1uTmSiD4hj+77aZDeDnwIP3E
	fLYR+p6QJEweY1J+ctY277ttXvukZ0mfiTDA34HKvXTRsEn5UWyXANg9RcWl3SRhYW9uyLBi9dgow
	eFuI1Lnrny8qTdEUE1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3sY-0007zc-T2; Tue, 03 Dec 2019 08:49:54 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3sP-0007zH-5n
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 08:49:46 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 3856E634C87;
 Tue,  3 Dec 2019 10:48:51 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1ic3rW-0001NT-PP; Tue, 03 Dec 2019 10:48:50 +0200
Date: Tue, 3 Dec 2019 10:48:50 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 2/5] media: i2c: imx290: Add support for test pattern
 generation
Message-ID: <20191203084850.GA5282@valkosipuli.retiisi.org.uk>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-3-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129190541.30315-3-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_004945_402268_4419074E 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Sat, Nov 30, 2019 at 12:35:38AM +0530, Manivannan Sadhasivam wrote:
> Add support for generating following test patterns by IMX290:
> 
> * Sequence Pattern 1
> * Horizontal Color-bar Chart
> * Vertical Color-bar Chart
> * Sequence Pattern 2
> * Gradation Pattern 1
> * Gradation Pattern 2
> * 000/555h Toggle Pattern
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 41 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index 1d49910937fb..e218c959a729 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -26,12 +26,19 @@
>  #define IMX290_REGHOLD 0x3001
>  #define IMX290_XMSTA 0x3002
>  #define IMX290_FR_FDG_SEL 0x3009
> +#define IMX290_BLKLEVEL_LOW 0x300a
> +#define IMX290_BLKLEVEL_HIGH 0x300b
>  #define IMX290_GAIN 0x3014
>  #define IMX290_HMAX_LOW 0x301c
>  #define IMX290_HMAX_HIGH 0x301d
> +#define IMX290_PGCTRL 0x308c
>  #define IMX290_PHY_LANE_NUM 0x3407
>  #define IMX290_CSI_LANE_MODE 0x3443
>  
> +#define IMX290_PGCTRL_REGEN BIT(0)
> +#define IMX290_PGCTRL_THRU BIT(1)
> +#define IMX290_PGCTRL_MODE(n) ((n) << 4)
> +
>  /* HMAX fields */
>  #define IMX290_HMAX_2_1920 0x1130
>  #define IMX290_HMAX_4_1920 0x0898
> @@ -99,6 +106,17 @@ static const struct regmap_config imx290_regmap_config = {
>  	.cache_type = REGCACHE_RBTREE,
>  };
>  
> +static const char * const imx290_test_pattern_menu[] = {
> +	"Disabled",
> +	"Sequence Pattern 1",
> +	"Horizontal Color-bar Chart",
> +	"Vertical Color-bar Chart",
> +	"Sequence Pattern 2",
> +	"Gradation Pattern 1",
> +	"Gradation Pattern 2",
> +	"000/555h Toggle Pattern",
> +};
> +
>  static const struct imx290_regval imx290_global_init_settings[] = {
>  	{ 0x3007, 0x00 },
>  	{ 0x3018, 0x65 },
> @@ -394,6 +412,22 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
>  	case V4L2_CID_GAIN:
>  		ret = imx290_set_gain(imx290, ctrl->val);
>  		break;
> +	case V4L2_CID_TEST_PATTERN:
> +		if (ctrl->val) {
> +			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x00);
> +			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
> +			mdelay(10);

Any particular reason for a busy loop instead of sleeping? Same below.

> +			imx290_write_reg(imx290, IMX290_PGCTRL,
> +					 (u8)(IMX290_PGCTRL_REGEN |
> +					 IMX290_PGCTRL_THRU |
> +					 IMX290_PGCTRL_MODE(ctrl->val)));
> +		} else {
> +			imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
> +			mdelay(10);
> +			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
> +			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
> +		}
> +		break;
>  	default:
>  		ret = -EINVAL;
>  		break;
> @@ -878,7 +912,7 @@ static int imx290_probe(struct i2c_client *client)
>  
>  	mutex_init(&imx290->lock);
>  
> -	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
> +	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
>  
>  	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
>  			  V4L2_CID_GAIN, 0, 72, 1, 0);
> @@ -896,6 +930,11 @@ static int imx290_probe(struct i2c_client *client)
>  					       INT_MAX, 1,
>  					       imx290_modes[0].pixel_rate);
>  
> +	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
> +				     V4L2_CID_TEST_PATTERN,
> +				     ARRAY_SIZE(imx290_test_pattern_menu) - 1,
> +				     0, 0, imx290_test_pattern_menu);
> +
>  	imx290->sd.ctrl_handler = &imx290->ctrls;
>  
>  	if (imx290->ctrls.error) {

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
