Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5021F1C7348
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:48:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eZ7f7dahf4x1Z0cyHnU+dDMJAb9yaRQe7G8UCdJ3HQ=; b=rNEAqlrwdL5ZxW
	IJYDkSR9/eHOho77BAY/lU0lfJ2cNWa9nai78A2CKyegwKhO8mL1uJrVUmK+DiRjb34pXFS5gIW+L
	Q8i01OxvFmNXeevuyLhxbPKjsnwO8wBq3VHWyTIuVHjkygwcAL87Li5djnlmHOibJJYjoNIdDaMhD
	hjzqE+eZ/wwz4K3BqJp0VnnUbkswsrlA4JmDfTtD6vKzR3VaVC2DrsTgANfg92dglhDYUF8PII9Ju
	2RuRArWtjTI2dDHMuV3Q0Dba81qrwqjLt+IWgYrmCnLHmiqSC840EGNZw/Xsc0xtdohebSXkOcpOw
	891p61sZcawWydtxhU2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLLW-0005mB-Ke; Wed, 06 May 2020 14:48:26 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLLO-0005lL-FZ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:48:19 +0000
Received: by mail-oi1-x244.google.com with SMTP id j16so1937656oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 07:48:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wDj5+tuZkrR7oNrhFt9atUhp/2FopkJwEnSLs3/dRt8=;
 b=NL61s/IE8eFnPePLN3nuUAK4eaP6MM3y2w4CzNYIdhGhoUmj5C8bunqphDdpHaouVa
 lqnpq/4XtxVVO+mzUickCYq9BEd1L+5zd2wDuxtw3mLZecF7jxGruEn1VXTQSJvH/esc
 ozZqVMVWm66x7U9TCr+2oJ3Rcat7yJFgS3GMQeuXl5vtO0nmJGTtqj+JYiZASXBG0M4v
 qqWtNiDDyVCpTFmWcHt59IikbanIVLl7mYsG0X021wQ39a9kfQUvqr40lbY7IIO+0NOP
 LwawsK2TTi6/SuDQcBF/bo4WGt9GfnkpF7msRIKBU0IGMKTOCaTqZmnB8bdsTRLYE7rf
 pWIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wDj5+tuZkrR7oNrhFt9atUhp/2FopkJwEnSLs3/dRt8=;
 b=bybSzqUZWIs9k8/Y67+a/AkRkuK0wWnurh2Z+Bn9+Nf6zH2xpntUCGcGYe6/fzomtm
 8M1BBQdCEXiBjfi24xRz27dahj0irJB6OTWvZqm4fQCaEAPMB+AOwgi9kD1SDQxRR2wL
 XExFMIPkUdIJ1UyqeWlfGN3d7yDFesWl6PAWrbJDtpkI9LQgVNz9vDX6BGyUXvbkiTPx
 jvYzLr6+ry7kVexReyydLvPvNKDKJmByDHdNEzb1pTtX8PsS0i3+R/piz+3PFDguQlfT
 A6NGBbMkqUMJkGkfDCAC62NHLPrzxfsF7NEeuAPDYrboblh6CbxqtV/Mq5zCO1yTbw/H
 ISGw==
X-Gm-Message-State: AGi0PuaXtm8Q83uwleexGBdFDYDrprmMDhwI3BGTyhCR4paiYY8IG8K4
 S7roui6TH8dHX5Eijx5H/g/hdk4rfp1gkSGyATFRUg==
X-Google-Smtp-Source: APiQypLNUtStA5nMDnbX6HOFM0LGQaCEcidSi5vAAWVsLC9SK3lN1UJfYxfdDKcoZRx18eT3Y5ExcVKLSk6kP1N3Arw=
X-Received: by 2002:aca:1812:: with SMTP id h18mr2665993oih.133.1588776497531; 
 Wed, 06 May 2020 07:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-4-robert.foss@linaro.org>
 <20200505101729.GF18755@pengutronix.de>
In-Reply-To: <20200505101729.GF18755@pengutronix.de>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 6 May 2020 16:48:06 +0200
Message-ID: <CAG3jFyvvzk8n1+fkfS5h6TPpqMQ3sGXuJ1_yot1MKFRTcDkhnQ@mail.gmail.com>
Subject: Re: [PATCH v7 3/3] media: ov8856: Implement sensor module revision
 identification
To: Marco Felsch <m.felsch@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_074818_522230_422F78A0 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Ben Kao <ben.kao@intel.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Marco,

On Tue, 5 May 2020 at 12:17, Marco Felsch <m.felsch@pengutronix.de> wrote:
>
> Hi Robert,
>
> On 20-05-05 12:01, Robert Foss wrote:
> > Query the sensor for its module revision, and compare it
> > to known revisions.
> >
> > Currently 2A and 1B revision indentification is supported.
> >
> > Signed-off-by: Robert Foss <robert.foss@linaro.org>
> > ---
> >
> > - Changes since v3:
> >   * Actually add module revision 2A
> >
> > - Changes since v2:
> >   * Add module revision 2A
> >   * Sakari: Remove ov8856_check_revision()
> >   * Sakari: Stop EEPROM streaming mode
> >
> >  drivers/media/i2c/ov8856.c | 53 ++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 53 insertions(+)
> >
> > diff --git a/drivers/media/i2c/ov8856.c b/drivers/media/i2c/ov8856.c
> > index e6418a79801e..3c82c3e588d7 100644
> > --- a/drivers/media/i2c/ov8856.c
> > +++ b/drivers/media/i2c/ov8856.c
> > @@ -32,6 +32,19 @@
> >  #define OV8856_MODE_STANDBY          0x00
> >  #define OV8856_MODE_STREAMING                0x01
> >
> > +/* module revisions */
> > +#define OV8856_2A_MODULE             0x01
> > +#define OV8856_1B_MODULE             0x02
> > +
> > +/* the OTP read-out buffer is at 0x7000 and 0xf is the offset
> > + * of the byte in the OTP that means the module revision
> > + */
> > +#define OV8856_MODULE_REVISION               0x700f
> > +#define OV8856_OTP_MODE_CTRL         0x3d84
> > +#define OV8856_OTP_LOAD_CTRL         0x3d81
> > +#define OV8856_OTP_MODE_AUTO         0x00
> > +#define OV8856_OTP_LOAD_CTRL_ENABLE  BIT(0)
> > +
> >  /* vertical-timings from sensor */
> >  #define OV8856_REG_VTS                       0x380e
> >  #define OV8856_VTS_MAX                       0x7fff
> > @@ -1152,6 +1165,46 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
> >               return -ENXIO;
> >       }
> >
> > +     ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> > +                            OV8856_REG_VALUE_08BIT, OV8856_MODE_STREAMING);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret = ov8856_write_reg(ov8856, OV8856_OTP_MODE_CTRL,
> > +                            OV8856_REG_VALUE_08BIT, OV8856_OTP_MODE_AUTO);
> > +     if (ret) {
> > +             dev_err(&client->dev, "failed to set otp mode");
> > +             return ret;
> > +     }
> > +
> > +     ret = ov8856_write_reg(ov8856, OV8856_OTP_LOAD_CTRL,
> > +                            OV8856_REG_VALUE_08BIT,
> > +                            OV8856_OTP_LOAD_CTRL_ENABLE);
> > +     if (ret) {
> > +             dev_err(&client->dev, "failed to enable load control");
> > +             return ret;
> > +     }
> > +
> > +     ret = ov8856_read_reg(ov8856, OV8856_MODULE_REVISION,
> > +                           OV8856_REG_VALUE_08BIT, &val);
> > +     if (ret) {
> > +             dev_err(&client->dev, "failed to read module revision");
> > +             return ret;
> > +     }
> > +
> > +     dev_info(&client->dev, "OV8856 revision %x (%s) at address 0x%02x\n",
> > +             val,
> > +             val == OV8856_2A_MODULE ? "2A" :
> > +             val == OV8856_1B_MODULE ? "1B" : "unknown revision",
> > +             client->addr);
>
> Pls check the alignment here too.

Ack.

>
> Regards,
>   Marco
>
> > +
> > +     ret = ov8856_write_reg(ov8856, OV8856_REG_MODE_SELECT,
> > +                            OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY);
> > +     if (ret) {
> > +             dev_err(&client->dev, "failed to exit streaming mode");
> > +             return ret;
> > +     }
> > +
> >       return 0;
> >  }
> >
> > --
> > 2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
