Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A68D06B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 06:47:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHQSJXFNee9aiV4CAbtWq6d5th4T1foDMzHM49q08D8=; b=S0zCiPT4j/mZmO
	VT9hZap21+/vOfqkq+3lu4rUYiomApbc+XS6vc6hF+5EvVz/wxcJZ3AiQ8ytvtCOuAWBdzIbZLlaq
	4BaVsxlqVVreH4eCuYjkd6NKbcB5DLWs/nlITvAomGWUSvSq92ipBhpXr3jQF9v6WXrISTNMTsYF5
	xUbVNsA0wwMdTscRFmt17pL3iBIFpTNGFnEzfJCgjzxSrD4cmVZZlUVB9mmGMZQfHAq/xjRfRJH9a
	TTV7obaCB76abAnLCX6A2JUfQgEPLx1M7MY2ZfOvtLtIRdvJAH5mP31hBt0kqJH15BDHRzuhOzgzt
	of3qddwGE7ylaaFtiJ+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI3sj-0003hF-NT; Wed, 09 Oct 2019 04:47:25 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI3sc-0003gW-GW
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 04:47:20 +0000
Received: by mail-ed1-x544.google.com with SMTP id c4so798838edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 21:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mCig5kgLkC+F5fuhEJGg04MH+YglNUctBHKrOOKma9M=;
 b=S8y8Gz2QhYzsjljUGQOUyUFRPAoMO8uF9ZLL+t8vGZgW5Ml6gm4Im86UTJ5w5cpKTd
 kNcdzQhH44b6gx7NrfrVHMdzzkYtp9dEc65X/MxihS7s5TvcVuf1ILC4z1eCkqOI6C5z
 zFbfFbFpQGGlxuPUGeS7XtJI8Gj8i2w/eFtBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mCig5kgLkC+F5fuhEJGg04MH+YglNUctBHKrOOKma9M=;
 b=Vuz7qKzZmLPPvlfEt1vTZIkkcLv3HI/fRDMvUu8tLzuC3v9sbL7AbCLgtUvFdoAeQM
 OFbWnoYxQY5BH51Zmkvm5+LKztyyZQ/8gwgc2mF+hY5xsKQxgj22X1P0DDqFzvuRJFcq
 ELrnx84hhBFS4BMVx/mpRv1uutnwtirZihD3EnXb+GT+nGeSaG2U2HYIeSWeKh1xLbmJ
 lB86GY6BZq1GGhhj0CltU9w2CtvgmXQPQt7td27XCseC7IHcP0gEQQlIlCLYGsFyNyZN
 j/o4384PvPclhnv7fcsn+evRtS+10GVVBqkZrL40i6TlGEcY1smjrJKQIkWBNRGr9ieC
 MvnA==
X-Gm-Message-State: APjAAAUh32Aw8ovp2vODp1ezFgFnAs2BRH3zkVgRairhRczEdrR+xh5o
 Wi3qLVk/RO3juzK69LW78IzvbmXn5Q3NAw==
X-Google-Smtp-Source: APXvYqx1uW0tLl9RhByFqq9KZg/0aAnZEl0ZcWAlr0mwDNggUfPEVghPCPizs85yB5EG20F6U0KmeQ==
X-Received: by 2002:a05:6402:134e:: with SMTP id
 y14mr1294935edw.55.1570596436700; 
 Tue, 08 Oct 2019 21:47:16 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id k22sm106363eja.56.2019.10.08.21.47.16
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Oct 2019 21:47:16 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id r5so890507wrm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 21:47:16 -0700 (PDT)
X-Received: by 2002:adf:dd8b:: with SMTP id x11mr1053323wrl.113.1570596018449; 
 Tue, 08 Oct 2019 21:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
In-Reply-To: <20190905072142.14606-3-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 9 Oct 2019 13:40:07 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A9mn+695CZdYoXzuQodQqC=p8dstbdFAkOCCHKMUtg-w@mail.gmail.com>
Message-ID: <CAAFQd5A9mn+695CZdYoXzuQodQqC=p8dstbdFAkOCCHKMUtg-w@mail.gmail.com>
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_214718_576830_DFA10D6D 
X-CRM114-Status: GOOD (  21.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Thu, Sep 5, 2019 at 4:22 PM <dongchun.zhu@mediatek.com> wrote:
>
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
>
> This patch adds a V4L2 sub-device driver for DW9768 lens voice coil,
> and provides control to set the desired focus.
>
> The DW9768 is a 10 bit DAC with 100mA output current sink capability
> from Dongwoon, designed for linear control of voice coil motor,
> and controlled via I2C serial interface.
>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  MAINTAINERS                |   1 +
>  drivers/media/i2c/Kconfig  |  10 ++
>  drivers/media/i2c/Makefile |   1 +
>  drivers/media/i2c/dw9768.c | 349 +++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 361 insertions(+)
>  create mode 100644 drivers/media/i2c/dw9768.c
>

Please see my further comments inline.

[snip]
> +struct regval_list {
> +       unsigned char reg_num;
> +       unsigned char value;

nit: Since we have strictly sized values here, should we use u8 for
both fields instead?

> +};
> +
> +static struct regval_list dw9768_init_regs[] = {
> +       {0x02, 0x02},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +       {0x06, 0x41},
> +       {0x07, 0x39},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static struct regval_list dw9768_release_regs[] = {
> +       {0x02, 0x00},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +       {0x01, 0x00},
> +       {DW9768_CMD_DELAY, DW9768_CMD_DELAY},
> +};
> +
> +static int dw9768_write_smbus(struct dw9768 *dw9768, unsigned char reg,
> +                             unsigned char value)

Should we use u8 for the last two arguments here as well?

> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       int ret;
> +
> +       if (reg == DW9768_CMD_DELAY  && value == DW9768_CMD_DELAY)
> +               usleep_range(DW9768_CTRL_DELAY_US,
> +                            DW9768_CTRL_DELAY_US + 100);

ret will be uninitialized if we go this path.

> +       else
> +               ret = i2c_smbus_write_byte_data(client, reg, value);
> +       return ret;
> +}
> +
> +static int dw9768_write_array(struct dw9768 *dw9768, struct regval_list *vals,
> +                             u32 len)

Since len is an array size, should we use size_t instead?

> +{
> +       unsigned int i;

size_t?

> +       int ret;
> +
> +       for (i = 0; i < len; i++) {
> +               ret = dw9768_write_smbus(dw9768, vals->reg_num, vals->value);

This should refer to vals[i] instead.

> +               if (ret < 0)
> +                       return ret;
> +       }
> +       return 0;
> +}
> +
> +static int dw9768_set_position(struct dw9768 *dw9768, u16 val)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       u8 addr[2];
> +
> +       addr[0] = (val >> DW9768_DAC_SHIFT) & DW9768_REG_MASK_MSB;
> +       addr[1] = val & DW9768_REG_MASK_LSB;
> +
> +       return i2c_smbus_write_block_data(client, DW9768_SET_POSITION_ADDR,
> +                                         ARRAY_SIZE(addr), addr);

As we discovered earlier, i2c_smbus_write_block_data() uses a
different protocol from what we expected. Please change to
i2c_smbus_write_word_data(), as per our downstream changes.

> +}
> +
> +static int dw9768_release(struct dw9768 *dw9768)
> +{
> +       return dw9768_write_array(dw9768, dw9768_release_regs,
> +                                 ARRAY_SIZE(dw9768_release_regs));
> +}
> +
> +static int dw9768_init(struct dw9768 *dw9768)
> +{
> +       return dw9768_write_array(dw9768, dw9768_init_regs,
> +                                 ARRAY_SIZE(dw9768_init_regs));
> +}
> +
> +/* Power handling */
> +static int dw9768_power_off(struct dw9768 *dw9768)
> +{
> +       struct i2c_client *client = v4l2_get_subdevdata(&dw9768->sd);
> +       int ret;
> +
> +       ret = dw9768_release(dw9768);
> +       if (ret)
> +               dev_err(&client->dev, "dw9768 release failed!\n");
> +
> +       ret = regulator_disable(dw9768->vin);
> +       if (ret)
> +               return ret;
> +
> +       return regulator_disable(dw9768->vdd);
> +}
> +
> +static int dw9768_power_on(struct dw9768 *dw9768)
> +{
> +       int ret;
> +
> +       ret = regulator_enable(dw9768->vin);
> +       if (ret < 0)
> +               return ret;
> +
> +       ret = regulator_enable(dw9768->vdd);
> +       if (ret < 0)
> +               return ret;

There is at least T_opr = 200 us of delay needed here. Would you be
able to add a comment and a corresponding usleep_range() call? I guess
the range of (300, 400) would be enough on the safe side.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
