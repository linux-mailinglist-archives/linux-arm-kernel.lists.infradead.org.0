Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0417FFBA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 15:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WOoyn20viPqjkGqYNoR2SoH9yI7O9qR+gIbqv3nLyC8=; b=dsmdncTyCSN4o8
	tGfJZkzjCGjVoqaI86T2zP+fIow3b7KlPVhBLDPDUGeSzhN0gvxizLrt8bRDIB/Rf9/dTmG1kw7+j
	npPGAPOSdcxOeXJzKV27QIGqLltEx7uY9J7ljn0y+rHIbfBFCqCdJ4ZQri2A970U7ne+9v3wF2vl3
	xyexFAqWkC+MrXSWx2pYQe48CuL7aL3OKWU6HYfqicdWQG9xHFeVxgnhNanDauUCdj69t/8WqP7Qo
	Do/Osv8iJUyBckG5GDL+27/lLZuiASz+lUaPGAM1xvnq24tq6w5Sz9risW3/lqeqwWnsVHnni3Qlo
	6eUvpjUZuC2jrFQhhRKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBfTw-0002ZG-Bu; Tue, 10 Mar 2020 14:03:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBfTo-0002YX-Vz; Tue, 10 Mar 2020 14:03:34 +0000
Received: by mail-lj1-x241.google.com with SMTP id d23so3665134ljg.13;
 Tue, 10 Mar 2020 07:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ifhb6WixgJc6nnbKnnyQJ5Lzp6hUyVHScR9nCG2Gpbs=;
 b=u/Co4rThARQN6d7BB1WsDIguEHyOZRCEDSZ0aRzABmG4KiGoaSXNCxJ58kdF8RglmZ
 gUnmXg+cCZPlIcy4f7UEKRTBY7kdnb3tx26a30cChFyc+0UooSQdco73Ea02bzTBSO8O
 in29jyjpDTvoX8UYVBipDQUTb9Y6gMpRm2hD8BbIWsLyHqSXtZ0qUkTSOKIzI6PN7Qyx
 9LgqsrUYKEoiBPLBabe7csVgtNEvCdfHfnowfQn+zzUqDW/3AWI8rdEhkj7Hvwys5CGI
 /OHIfDVPS1k+NrLNmhYuEci+squRepbPr1LlncIJb+KxKdbTn4ecJv8+hqK+J321emRy
 S3uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ifhb6WixgJc6nnbKnnyQJ5Lzp6hUyVHScR9nCG2Gpbs=;
 b=ixJyfCHwUIkd7kEcevsZkfRTFtG/O4QAvWbhihgn+6t+3dy6mg2gY+tNEhyQpd1kJM
 ERc5CDR0VUIihaTl+5GWK7YHTvH1/C4rUtcMkNDi8c8/DFkeJs/zRqT2ruEOnqRRRSKp
 Uioe4ceN57k3wMpV8tinvlMMVtbT+ipxbNY8CjtknoDa4RPWSklLUEcqN/2aEVNHqx4H
 jAte1iJFVpSchmMSxsrEaPRLKwxS5XiURCaXbAF1bKFT3cDJh17U5D1DFpOEsgyGalKk
 InQ0WYnm+T+07sMDJOaK0HQMY5G4PgVNPSqXHntawCVYaQNtGFhEt99PTNO6xPHzhg8j
 eenA==
X-Gm-Message-State: ANhLgQ33oN+mh83DLkP1xZY/p/3iiRwI9z38hP6woj5MJ3nXzCO2o8h1
 kMaOAckB3LTYZy9/q/lWaKbjbEFmz+xsRsAjLWk=
X-Google-Smtp-Source: ADFU+vsNLzcIjQvDxrS1HICTwW6HgMn3cbq+aL6cnnKZeK97nAmGn2kplnEXtqTHoWwA5L+xcBE8jylw4kWIQlYByr4=
X-Received: by 2002:a2e:86d0:: with SMTP id n16mr12557218ljj.117.1583849010466; 
 Tue, 10 Mar 2020 07:03:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
In-Reply-To: <20200310134603.30260-3-robert.foss@linaro.org>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 10 Mar 2020 11:03:21 -0300
Message-ID: <CAOMZO5D7N6FfPMiycGun-eui-G-tbp15stwRWBWs4L98JHFfGA@mail.gmail.com>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
To: Robert Foss <robert.foss@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_070333_054076_BCA319A6 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 ben.kao@intel.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 10:47 AM Robert Foss <robert.foss@linaro.org> wrote:

> +static int __ov8856_power_on(struct ov8856 *ov8856)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> +       int ret;
> +
> +       ret = clk_prepare_enable(ov8856->xvclk);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable xvclk\n");
> +               return ret;
> +       }
> +
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> +
> +       ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to enable regulators\n");
> +               goto disable_clk;
> +       }
> +
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);

To power it up you probably only need:

gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, 0);

And use reset-gpios as active low in your device tree. Assuming the
reset-gpios is active low like other OmniVision sensors.

> +
> +       usleep_range(1500, 1800);
> +
> +       return 0;
> +
> +disable_clk:
> +       clk_disable_unprepare(ov8856->xvclk);
> +
> +       return ret;
> +}
> +
> +static void __ov8856_power_off(struct ov8856 *ov8856)
> +{
> +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> +       regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> +       clk_disable_unprepare(ov8856->xvclk);
> +}
> +
> +

Unneede extra blank line.

>         v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> +       ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> +       if (IS_ERR(ov8856->xvclk)) {
> +               dev_err(&client->dev, "failed to get xvclk\n");
> +               return -EINVAL;

You should better return the real error insteald
PTR_ERR(ov8856->xvclk). This way defer probe could work.

> +       }
> +
> +       ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> +       if (ret < 0) {
> +               dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> +               return ret;
> +       }
> +
> +       ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> +                                              GPIOD_OUT_LOW);
> +       if (IS_ERR(ov8856->n_shutdn_gpio)) {
> +               dev_err(&client->dev, "failed to get reset-gpios\n");
> +               return -EINVAL;

Please return the real error.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
