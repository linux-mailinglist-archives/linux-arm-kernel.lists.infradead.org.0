Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5966B11F9B9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trOpDPnPPQI8ETx23vIEEcxVUq9iNrndvHnZM4+2UmE=; b=dFDQGusyld3/he
	mLkL/w6c4nYuzJVzZJU8gYZibgK5j0H5LYQhjUkxb3er95AbnxB2mKUfq+yk2jCBZuPiZDkKwUNq/
	GYKWCKo6OhaKbCb97vOmr6v5Nw95v1QJMzFsjY4VOE097aoFLxu6kq+b4Uv4DxupSDtjylxQWKbSz
	ePkbK6RG/iFuhlvKSxXBn3dkXlLlhLHn7ZLVET3RVfYZ7GevcfmVvLTHjGxQDO4/UlFT9kVkuETKA
	G5/jtlAfAljUkSWrp2FI+QqyYocy+G1/UzzNR04TQZwAnOWKvgAiBTnwdRlh3xEegUdYzNu87QelX
	uy5cTWvMjsAfC3IQ/G0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXoR-0006LK-3z; Sun, 15 Dec 2019 17:36:11 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXo9-0006KK-Qe
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 17:35:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id g4so1947461pjs.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 09:35:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=85nlbiKq3rpWsz2dGxuU4NqF4J9BzTqVbiVO4kippfs=;
 b=tQIuy/2HcSdEay7ekVyEGAsa4RSKJtYFmcBDN3MlSjp8wysm9Xpf0fq/KgE/GU6Zkc
 uwqRgv3TuBK9XAd3A1wQ77riVWT49jovChLRJl9H0M12+E9J7+i82TM/4VhRxkTRxkzR
 wa8hq05Z2iiRMBMUCRRe0M5986rrL+V6rvrDSluKjnCF986cq4znIm1a3LO3UTkNysfS
 HIByxSxltXtAI9etxUc70cpBugSlOCbN6XsJkJKdbx8pJcT7gxZBINadrTQ6d83ptbqO
 CGRMwMhNAN32Y8YNJmQJkVvhTeSKrol3GWcuCKv094Zb5Za287OMVT3p6eEBhcA1ZY+K
 xHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=85nlbiKq3rpWsz2dGxuU4NqF4J9BzTqVbiVO4kippfs=;
 b=KHHsIR0Ile49ppOiO9WS/DOo7r3XoDfQDKE4y+SrxyJxVhe+OpPax87ErP+Fhi1k59
 CODJ7yhbkQ3fFS4aHXpKWEp06KL9rnj2a6XSl+NLquxpjsYqeoRhLZV1MFiYpPq2AwIo
 OCxS95PpcKdmQXL5Ee1p1hanqpHtpL7nHd1Q32ui1uKQ1kpSmuaHHXCCZdjhDdM363b8
 EW/gkkGxIdz3aWvWrPMapH0osi2zp61Um2djuhhIi6MDJpR7tExKIW7ZsuqG+ANw7wpN
 7+Fq+5BYcysvTfY6/JGAkwkmMkujjQIskv0e4egunkApNsXPsBJ1vad1+VX/tTJ13X1s
 mqqA==
X-Gm-Message-State: APjAAAXc/Zv/9uysGLAfIGl5u79KCwUgz6QMmozFBr8v9wOpREJEDyA5
 969OdylK3VGRbZp8Ts4KUDk5
X-Google-Smtp-Source: APXvYqxaLfB48R/yYSynM4mJt1uNrHQ/vR38PBU61rkRabHdtFR6nTdX3wg7HpbcKSK67x5dyusrXA==
X-Received: by 2002:a17:902:b609:: with SMTP id
 b9mr11776684pls.70.1576431353150; 
 Sun, 15 Dec 2019 09:35:53 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2409:4072:78f:3e30:ad66:df45:6a09:a260])
 by smtp.gmail.com with ESMTPSA id g19sm18735361pfh.134.2019.12.15.09.35.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 15 Dec 2019 09:35:52 -0800 (PST)
Date: Sun, 15 Dec 2019 23:05:42 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH 2/5] media: i2c: imx290: Add support for test pattern
 generation
Message-ID: <20191215173542.GB11427@Mani-XPS-13-9360>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-3-manivannan.sadhasivam@linaro.org>
 <20191203084850.GA5282@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203084850.GA5282@valkosipuli.retiisi.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_093553_886807_9ACECE33 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Sakari,

On Tue, Dec 03, 2019 at 10:48:50AM +0200, Sakari Ailus wrote:
> Hi Manivannan,
> 
> On Sat, Nov 30, 2019 at 12:35:38AM +0530, Manivannan Sadhasivam wrote:
> > Add support for generating following test patterns by IMX290:
> > 
> > * Sequence Pattern 1
> > * Horizontal Color-bar Chart
> > * Vertical Color-bar Chart
> > * Sequence Pattern 2
> > * Gradation Pattern 1
> > * Gradation Pattern 2
> > * 000/555h Toggle Pattern
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/media/i2c/imx290.c | 41 +++++++++++++++++++++++++++++++++++++-
> >  1 file changed, 40 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> > index 1d49910937fb..e218c959a729 100644
> > --- a/drivers/media/i2c/imx290.c
> > +++ b/drivers/media/i2c/imx290.c
> > @@ -26,12 +26,19 @@
> >  #define IMX290_REGHOLD 0x3001
> >  #define IMX290_XMSTA 0x3002
> >  #define IMX290_FR_FDG_SEL 0x3009
> > +#define IMX290_BLKLEVEL_LOW 0x300a
> > +#define IMX290_BLKLEVEL_HIGH 0x300b
> >  #define IMX290_GAIN 0x3014
> >  #define IMX290_HMAX_LOW 0x301c
> >  #define IMX290_HMAX_HIGH 0x301d
> > +#define IMX290_PGCTRL 0x308c
> >  #define IMX290_PHY_LANE_NUM 0x3407
> >  #define IMX290_CSI_LANE_MODE 0x3443
> >  
> > +#define IMX290_PGCTRL_REGEN BIT(0)
> > +#define IMX290_PGCTRL_THRU BIT(1)
> > +#define IMX290_PGCTRL_MODE(n) ((n) << 4)
> > +
> >  /* HMAX fields */
> >  #define IMX290_HMAX_2_1920 0x1130
> >  #define IMX290_HMAX_4_1920 0x0898
> > @@ -99,6 +106,17 @@ static const struct regmap_config imx290_regmap_config = {
> >  	.cache_type = REGCACHE_RBTREE,
> >  };
> >  
> > +static const char * const imx290_test_pattern_menu[] = {
> > +	"Disabled",
> > +	"Sequence Pattern 1",
> > +	"Horizontal Color-bar Chart",
> > +	"Vertical Color-bar Chart",
> > +	"Sequence Pattern 2",
> > +	"Gradation Pattern 1",
> > +	"Gradation Pattern 2",
> > +	"000/555h Toggle Pattern",
> > +};
> > +
> >  static const struct imx290_regval imx290_global_init_settings[] = {
> >  	{ 0x3007, 0x00 },
> >  	{ 0x3018, 0x65 },
> > @@ -394,6 +412,22 @@ static int imx290_set_ctrl(struct v4l2_ctrl *ctrl)
> >  	case V4L2_CID_GAIN:
> >  		ret = imx290_set_gain(imx290, ctrl->val);
> >  		break;
> > +	case V4L2_CID_TEST_PATTERN:
> > +		if (ctrl->val) {
> > +			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x00);
> > +			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
> > +			mdelay(10);
> 
> Any particular reason for a busy loop instead of sleeping? Same below.
> 

Nothing. I should've used msleep() here... Will change it.

Thanks,
Mani

> > +			imx290_write_reg(imx290, IMX290_PGCTRL,
> > +					 (u8)(IMX290_PGCTRL_REGEN |
> > +					 IMX290_PGCTRL_THRU |
> > +					 IMX290_PGCTRL_MODE(ctrl->val)));
> > +		} else {
> > +			imx290_write_reg(imx290, IMX290_PGCTRL, 0x00);
> > +			mdelay(10);
> > +			imx290_write_reg(imx290, IMX290_BLKLEVEL_LOW, 0x3c);
> > +			imx290_write_reg(imx290, IMX290_BLKLEVEL_HIGH, 0x00);
> > +		}
> > +		break;
> >  	default:
> >  		ret = -EINVAL;
> >  		break;
> > @@ -878,7 +912,7 @@ static int imx290_probe(struct i2c_client *client)
> >  
> >  	mutex_init(&imx290->lock);
> >  
> > -	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
> > +	v4l2_ctrl_handler_init(&imx290->ctrls, 4);
> >  
> >  	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
> >  			  V4L2_CID_GAIN, 0, 72, 1, 0);
> > @@ -896,6 +930,11 @@ static int imx290_probe(struct i2c_client *client)
> >  					       INT_MAX, 1,
> >  					       imx290_modes[0].pixel_rate);
> >  
> > +	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
> > +				     V4L2_CID_TEST_PATTERN,
> > +				     ARRAY_SIZE(imx290_test_pattern_menu) - 1,
> > +				     0, 0, imx290_test_pattern_menu);
> > +
> >  	imx290->sd.ctrl_handler = &imx290->ctrls;
> >  
> >  	if (imx290->ctrls.error) {
> 
> -- 
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
