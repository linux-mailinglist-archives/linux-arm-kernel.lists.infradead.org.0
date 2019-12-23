Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ACD12921A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 08:10:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIDLllrRliN2xITcohF3tkIO/ZAULpsGHpKLGm5t+TM=; b=KKv4bA/hhHywsi
	H2YRGGw52VhMOEukjXps+TpAn+6j4fMQI/iqjKZMFNey8Tj/eO8opd+Fm7FPm1pM9H6BsBQyZ2J7H
	ROWUxuLOoxD0UyTJGePexNSxx45sNNoNDPHBK6VJkMRoDGkJeHPhOuLdJu2B4EJybnMzfkI8IVX6m
	E6V9HijS1ZPIFndXkqn0Dwzsw4/lIeTZ8B/kKL51DNZoc/iZz+5Je1MCAZXhWlzAto8ofFixLJMaC
	RbjVNp5lP6XtCyKJ5A1fgYON3/1ovKjkDyO2l/Nn9k+klf3HLByK6jvbO5vzYbDknQtGmPawvU8Gi
	wdbMxOHelYAd3JIr2EFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHr8-0008KE-Bs; Mon, 23 Dec 2019 07:10:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHqw-0007An-N2; Mon, 23 Dec 2019 07:10:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 79C76283E20
Subject: Re: [PATCH v22 2/2] drm/bridge: Add I2C based driver for ps8640 bridge
To: Nicolas Boichat <drinkcat@chromium.org>
References: <20191220081738.1895-1-enric.balletbo@collabora.com>
 <20191220081738.1895-3-enric.balletbo@collabora.com>
 <CANMq1KBHsc8oqcjWnjLPCpRToyOm16X6EcQqmqPjZf=D7wA2-Q@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <05db638b-02a6-0e3a-43ed-44a0a1458d87@collabora.com>
Date: Mon, 23 Dec 2019 08:09:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CANMq1KBHsc8oqcjWnjLPCpRToyOm16X6EcQqmqPjZf=D7wA2-Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_231007_028103_0627CFD2 
X-CRM114-Status: GOOD (  22.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ulrich Hecht <uli@fpond.eu>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Jitao Shi <jitao.shi@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 lkml <linux-kernel@vger.kernel.org>, Daniel Kurtz <djkurtz@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Many thanks for you review. Just preparing a new version with your comments
addressed.

On 20/12/19 9:44, Nicolas Boichat wrote:
> On Fri, Dec 20, 2019 at 4:17 PM Enric Balletbo i Serra
> <enric.balletbo@collabora.com> wrote:
>>
>> From: Jitao Shi <jitao.shi@mediatek.com>
>>
>> This patch adds drm_bridge driver for parade DSI to eDP bridge chip.
>>
>> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
>> Reviewed-by: Daniel Kurtz <djkurtz@chromium.org>
>> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>> [uli: followed API changes, removed FW update feature]
>> Signed-off-by: Ulrich Hecht <uli@fpond.eu>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>> ---
>> [snip]
>>
>>  drivers/gpu/drm/bridge/Kconfig         |  11 +
>>  drivers/gpu/drm/bridge/Makefile        |   1 +
>>  drivers/gpu/drm/bridge/parade-ps8640.c | 354 +++++++++++++++++++++++++
> 
> Half the size! Sounds great.
> 
> Mostly nits below.
> 
>>  3 files changed, 366 insertions(+)
>>  create mode 100644 drivers/gpu/drm/bridge/parade-ps8640.c
>>
>> diff --git a/drivers/gpu/drm/bridge/parade-ps8640.c b/drivers/gpu/drm/bridge/parade-ps8640.c
>> new file mode 100644
>> index 000000000000..aa0045037f44
>> --- /dev/null
>> +++ b/drivers/gpu/drm/bridge/parade-ps8640.c
>> @@ -0,0 +1,354 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2016 MediaTek Inc.
>> + */
>> +
>> +#include <linux/delay.h>
>> +#include <linux/err.h>
>> +#include <linux/gpio/consumer.h>
>> +#include <linux/i2c.h>
>> +#include <linux/module.h>
>> +#include <linux/of_graph.h>
>> +#include <linux/regulator/consumer.h>
>> +
>> +#include <drm/drm_bridge.h>
>> +#include <drm/drm_mipi_dsi.h>
>> +#include <drm/drm_of.h>
>> +#include <drm/drm_panel.h>
>> +#include <drm/drm_print.h>
>> +
>> +#define PAGE2_GPIO_H           0xa7
>> +#define PS_GPIO9               BIT(1)
>> +#define PAGE2_I2C_BYPASS       0xea
>> +#define I2C_BYPASS_EN          0xd0
>> +#define PAGE2_MCS_EN           0xf3
>> +#define MCS_EN                 BIT(0)
>> +#define PAGE3_SET_ADD          0xfe
>> +#define VDO_CTL_ADD            0x13
>> +#define VDO_DIS                        0x18
>> +#define VDO_EN                 0x1c
>> +
>> +/*
>> + * PS8640 uses multiple addresses:
>> + * page[0]: for DP control
>> + * page[1]: for VIDEO Bridge
>> + * page[2]: for control top
>> + * page[3]: for DSI Link Control1
>> + * page[4]: for MIPI Phy
>> + * page[5]: for VPLL
>> + * page[6]: for DSI Link Control2
>> + * page[7]: for SPI ROM mapping
>> + */
>> +enum page_addr_offset {
>> +       PAGE0_DP_CNTL = 0,
>> +       PAGE1_VDO_BDG,
>> +       PAGE2_TOP_CNTL,
>> +       PAGE3_DSI_CNTL1,
>> +       PAGE4_MIPI_PHY,
>> +       PAGE5_VPLL,
>> +       PAGE6_DSI_CNTL2,
>> +       PAGE7_SPI_CNTL,
>> +       MAX_DEVS
>> +};
>> +
>> +struct ps8640 {
>> +       struct drm_bridge bridge;
>> +       struct drm_bridge *panel_bridge;
>> +       struct mipi_dsi_device *dsi;
>> +       struct i2c_client *page[MAX_DEVS];
>> +       struct regulator_bulk_data supplies[2];
>> +       struct gpio_desc *gpio_reset;
>> +       struct gpio_desc *gpio_powerdown;
>> +};
>> +
>> +static inline struct ps8640 *bridge_to_ps8640(struct drm_bridge *e)
>> +{
>> +       return container_of(e, struct ps8640, bridge);
>> +}
>> +
>> +static int ps8640_bridge_unmute(struct ps8640 *ps_bridge)
>> +{
>> +       struct i2c_client *client = ps_bridge->page[PAGE3_DSI_CNTL1];
>> +       u8 vdo_ctrl_buf[] = { VDO_CTL_ADD, VDO_EN };
> 
> nit: const?
> 
>> +       int ret;
>> +
>> +       ret = i2c_smbus_write_i2c_block_data(client, PAGE3_SET_ADD,
>> +                                            sizeof(vdo_ctrl_buf),
>> +                                            vdo_ctrl_buf);
>> +       if (ret < 0)
>> +               return ret;
>> +
>> +       return 0;
>> +}
>> +
>> +static int ps8640_bridge_mute(struct ps8640 *ps_bridge)
>> +{
>> +       struct i2c_client *client = ps_bridge->page[PAGE3_DSI_CNTL1];
>> +       u8 vdo_ctrl_buf[] = { VDO_CTL_ADD, VDO_DIS };
> 
> ditto
> 
>> +       int ret;
>> +
>> +       ret = i2c_smbus_write_i2c_block_data(client, PAGE3_SET_ADD,
>> +                                            sizeof(vdo_ctrl_buf),
>> +                                            vdo_ctrl_buf);
>> +       if (ret < 0)
>> +               return ret;
>> +
>> +       return 0;
>> +}
> 
> Since the 2 functions are almost the same, you could shrink the driver
> a bit further by merging them into one with a boolean parameter? (then
> maybe give up on the const u8 comment).
> 

I decided to merge the two functions and use and enum instead of a boolean
parameter, so the "bool" value is more understandable.

>> +
>> +static void ps8640_pre_enable(struct drm_bridge *bridge)
>> +{
>> +       struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
>> +       struct i2c_client *client = ps_bridge->page[PAGE2_TOP_CNTL];
>> +       unsigned long timeout;
>> +       int ret, status;
>> +
>> +       ret = regulator_bulk_enable(ARRAY_SIZE(ps_bridge->supplies),
>> +                                   ps_bridge->supplies);
>> +       if (ret < 0) {
>> +               DRM_ERROR("cannot enable regulators %d\n", ret);
>> +               return;
>> +       }
>> +
>> +       gpiod_set_value(ps_bridge->gpio_powerdown, 1);
>> +       gpiod_set_value(ps_bridge->gpio_reset, 0);
>> +       usleep_range(2000, 2500);
>> +       gpiod_set_value(ps_bridge->gpio_reset, 1);
>> +
>> +       /*
>> +        * Wait for the ps8640 embedded MCU to be ready
>> +        * First wait 200ms and then check the MCU ready flag every 20ms
>> +        */
>> +       msleep(200);
>> +
>> +       timeout = jiffies + msecs_to_jiffies(200) + 1;
>> +
>> +       while (time_is_after_jiffies(timeout)) {
>> +               status = i2c_smbus_read_byte_data(client, PAGE2_GPIO_H);
>> +               if (status < 0) {
>> +                       DRM_ERROR("failed read PAGE2_GPIO_H: %d\n", status);
>> +                       goto err_regulators_disable;
>> +               }
>> +               if ((status & PS_GPIO9) == PS_GPIO9)
>> +                       break;
>> +
>> +               msleep(20);
>> +       }
>> +
>> +       msleep(50);
>> +
>> +       /*
>> +        * The Manufacturer Command Set (MCS) is a device dependent interface
>> +        * intended for factory programming of the display module default
>> +        * parameters. Once the display module is configured, the MCS shall be
>> +        * disabled by the manufacturer. Once disabled, all MCS commands are
>> +        * ignored by the display interface.
>> +        */
>> +       status = i2c_smbus_read_byte_data(client, PAGE2_MCS_EN);
>> +       if (status < 0) {
>> +               DRM_ERROR("failed read PAGE2_MCS_EN: %d\n", status);
>> +               goto err_regulators_disable;
>> +       }
>> +
>> +       ret = i2c_smbus_write_byte_data(client, PAGE2_MCS_EN,
>> +                                       status & ~MCS_EN);
>> +       if (ret < 0) {
>> +               DRM_ERROR("failed write PAGE2_MCS_EN: %d\n", ret);
>> +               goto err_regulators_disable;
>> +       }
>> +
>> +       ret = ps8640_bridge_unmute(ps_bridge);
>> +       if (ret)
>> +               DRM_ERROR("failed to enable unmutevideo: %d\n", ret);
> 
> failed to unmute? Or failed to enable?
> 

failed to unmute sound more clear to me.

>> +
>> +       /* Switch access edp panel's edid through i2c */
>> +       ret = i2c_smbus_write_byte_data(client, PAGE2_I2C_BYPASS,
>> +                                       I2C_BYPASS_EN);
>> +       if (ret < 0) {
>> +               DRM_ERROR("failed write PAGE2_I2C_BYPASS: %d\n", ret);
>> +               goto err_regulators_disable;
>> +       }
>> +
>> +       return;
>> +
>> +err_regulators_disable:
>> +       regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
>> +                              ps_bridge->supplies);
>> +}
>> +
>> +static void ps8640_post_disable(struct drm_bridge *bridge)
>> +{
>> +       struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
>> +       int ret;
>> +
>> +       ret = ps8640_bridge_mute(ps_bridge);
>> +       if (ret < 0)
>> +               DRM_ERROR("failed to unmutevideo: %d\n", ret);
> 
> ditto
> 

Done.

>> +
>> +       gpiod_set_value(ps_bridge->gpio_reset, 0);
>> +       gpiod_set_value(ps_bridge->gpio_powerdown, 0);
>> +       ret = regulator_bulk_disable(ARRAY_SIZE(ps_bridge->supplies),
>> +                                    ps_bridge->supplies);
>> +       if (ret < 0)
>> +               DRM_ERROR("cannot disable regulators %d\n", ret);
>> +}
>> +
>> +int ps8640_bridge_attach(struct drm_bridge *bridge)
>> +{
>> +       struct ps8640 *ps_bridge = bridge_to_ps8640(bridge);
>> +       struct device *dev = &ps_bridge->page[0]->dev;
>> +       struct device_node *in_ep, *dsi_node;
>> +       struct mipi_dsi_device *dsi;
>> +       struct mipi_dsi_host *host;
>> +       int ret;
>> +       const struct mipi_dsi_device_info info = { .type = "ps8640",
>> +                                                  .channel = 0,
>> +                                                  .node = NULL,
>> +                                                };
>> +       /* port@0 is ps8640 dsi input port */
>> +       in_ep = of_graph_get_endpoint_by_regs(dev->of_node, 0, -1);
>> +       if (!in_ep)
>> +               return -ENODEV;
>> +
>> +       dsi_node = of_graph_get_remote_port_parent(in_ep);
>> +       of_node_put(in_ep);
>> +       if (!dsi_node)
>> +               return -ENODEV;
>> +
>> +       host = of_find_mipi_dsi_host_by_node(dsi_node);
>> +       of_node_put(dsi_node);
>> +       if (!host)
>> +               return -ENODEV;
>> +
>> +       dsi = mipi_dsi_device_register_full(host, &info);
>> +       if (IS_ERR(dsi)) {
>> +               dev_err(dev, "failed to create dsi device\n");
>> +               ret = PTR_ERR(dsi);
>> +               return ret;
>> +       }
>> +
>> +       ps_bridge->dsi = dsi;
>> +
>> +       dsi->host = host;
>> +       dsi->mode_flags = MIPI_DSI_MODE_VIDEO |
>> +                         MIPI_DSI_MODE_VIDEO_SYNC_PULSE;
>> +       dsi->format = MIPI_DSI_FMT_RGB888;
>> +       dsi->lanes = 4;
>> +       ret = mipi_dsi_attach(dsi);
>> +       if (ret)
>> +               goto err_dsi_attach;
>> +
>> +       /* Attach the panel-bridge to the dsi bridge */
>> +       return drm_bridge_attach(bridge->encoder, ps_bridge->panel_bridge,
>> +                                &ps_bridge->bridge);
>> +
>> +err_dsi_attach:
>> +       mipi_dsi_device_unregister(dsi);
>> +       return ret;
>> +}
>> +
>> +static const struct drm_bridge_funcs ps8640_bridge_funcs = {
>> +       .attach = ps8640_bridge_attach,
>> +       .post_disable = ps8640_post_disable,
>> +       .pre_enable = ps8640_pre_enable,
>> +};
>> +
>> +static int ps8640_probe(struct i2c_client *client)
>> +{
>> +       struct device *dev = &client->dev;
>> +       struct device_node *np = dev->of_node;
>> +       struct ps8640 *ps_bridge;
>> +       struct drm_panel *panel;
>> +       int ret;
>> +       u32 i;
>> +
>> +       ps_bridge = devm_kzalloc(dev, sizeof(*ps_bridge), GFP_KERNEL);
>> +       if (!ps_bridge)
>> +               return -ENOMEM;
>> +
>> +       /* port@1 is ps8640 output port */
>> +       ret = drm_of_find_panel_or_bridge(np, 1, 0, &panel, NULL);
>> +       if (ret < 0)
>> +               return ret;
>> +       if (!panel)
>> +               return -ENODEV;
>> +
>> +       panel->connector_type = DRM_MODE_CONNECTOR_eDP;
>> +
>> +       ps_bridge->panel_bridge = devm_drm_panel_bridge_add(dev, panel);
>> +       if (IS_ERR(ps_bridge->panel_bridge))
>> +               return PTR_ERR(ps_bridge->panel_bridge);
>> +
>> +       ps_bridge->supplies[0].supply = "vdd33";
>> +       ps_bridge->supplies[1].supply = "vdd12";
>> +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ps_bridge->supplies),
>> +                                     ps_bridge->supplies);
>> +       if (ret)
>> +               return ret;
>> +
>> +       ps_bridge->gpio_powerdown = devm_gpiod_get(&client->dev, "powerdown",
>> +                                                  GPIOD_OUT_LOW);
>> +       if (IS_ERR(ps_bridge->gpio_powerdown))
>> +               return PTR_ERR(ps_bridge->gpio_powerdown);
>> +
>> +       /*
>> +        * Request the reset pin low to avoid the bridge being
>> +        * initialized prematurely
>> +        */
>> +       ps_bridge->gpio_reset = devm_gpiod_get(&client->dev, "reset",
>> +                                              GPIOD_OUT_LOW);
>> +       if (IS_ERR(ps_bridge->gpio_reset))
>> +               return PTR_ERR(ps_bridge->gpio_reset);
>> +
>> +       ps_bridge->bridge.funcs = &ps8640_bridge_funcs;
>> +       ps_bridge->bridge.of_node = dev->of_node;
>> +
>> +       ps_bridge->page[PAGE0_DP_CNTL] = client;
>> +
>> +       for (i = 1; i < ARRAY_SIZE(ps_bridge->page); i++) {
>> +               ps_bridge->page[i] = devm_i2c_new_dummy_device(&client->dev,
>> +                                                            client->adapter,
>> +                                                            client->addr + i);
>> +               if (IS_ERR(ps_bridge->page[i])) {
>> +                       dev_err(dev, "failed i2c dummy device, address%02x\n",
> 
> Space after address?
> 

Ack and done.

>> +                               client->addr + i);
>> +                       return PTR_ERR(ps_bridge->page[i]);
>> +               }
>> +       }
>> +
>> +       i2c_set_clientdata(client, ps_bridge);
>> +
>> +       drm_bridge_add(&ps_bridge->bridge);
>> +
>> +       return 0;
>> +}
>> +
>> +static int ps8640_remove(struct i2c_client *client)
>> +{
>> +       struct ps8640 *ps_bridge = i2c_get_clientdata(client);
>> +
>> +       drm_bridge_remove(&ps_bridge->bridge);
>> +
>> +       return 0;
>> +}
>> +
>> +static const struct of_device_id ps8640_match[] = {
>> +       { .compatible = "parade,ps8640" },
>> +       { }
>> +};
>> +MODULE_DEVICE_TABLE(of, ps8640_match);
>> +
>> +static struct i2c_driver ps8640_driver = {
>> +       .probe_new = ps8640_probe,
>> +       .remove = ps8640_remove,
>> +       .driver = {
>> +               .name = "ps8640",
>> +               .of_match_table = ps8640_match,
>> +       },
>> +};
>> +module_i2c_driver(ps8640_driver);
>> +
>> +MODULE_AUTHOR("Jitao Shi <jitao.shi@mediatek.com>");
>> +MODULE_AUTHOR("CK Hu <ck.hu@mediatek.com>");
> 
> Since you just did a major refactor, do you want to add your name here?
> 

Sure.

Thanks,
 Enric

>> +MODULE_DESCRIPTION("PARADE ps8640 DSI-eDP converter driver");
>> +MODULE_LICENSE("GPL v2");
>> --
>> 2.20.1
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
