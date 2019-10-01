Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E5AC31CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 12:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lkXISB2D4tF7ZEDipbfWzcxL/PeuCYu4C/Hua6jPRMk=; b=Xl2QQXMxEgVc98YTPlM08VTiw
	uRL7+vGQdumfnVF25LlpkTqb2JQc2B8TQIkZS+yyi9hZivgujTDddrM7bwQAxJpxE4DBI6Se4vb+2
	TN98KlDaPFmASqrChFu9zj2e9ueIw5sT6oTKylCvsZbf7FhmFTMEVCamKDxaBHKMjIEr3q9VZFf1u
	V1HqZCXlN0ZdkXQbPBqbR90UmmOLqjZOBdfWLzt/wi9azXsPISyw/TocZYAYerpT9zVk7sXS5Cei3
	S2uuEaDnH73O/VLi71wb/o8XLppwAz0uUqroAG8QkdgkBE4jqBuz/DVkVh75TYSk0hcCsOMXXoCSK
	BVFeJcYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFFl6-0005Jz-Cw; Tue, 01 Oct 2019 10:51:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFFkw-0005H8-TO
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 10:51:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id i16so2805613wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 03:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=11Y9sQX+eb9GF4F1UDONqS64lFuXR8qyFbPK80C0W8w=;
 b=iIPMmsHlAy5gKQihIvA5qiHMk6Js0RHLWIQxmphyGR2+1R91fpucsgliEVdH3hWB74
 fgAFgsrHWUnzxrrkxc9SZ4VWe+zJtspWncB11otPuc0IeAA5Xq7s/fg1Ue0n9oG9Vkqz
 Mz09M6NWymF2JEkfjwAFZoxNOmspnI+C6iJKnjUUHrSXHNSlKrbx+mtxcnzuqVp+Hw7c
 AD5XQcBu6zbwwaO45Dk8WkS3tecH+Q0760/WsppkK1kQp5O8f7R6C2XWEMvjYoVErg3J
 r6S743eTGZtzdRjsyH6GLY4cLRu2HUtZXJm2+QO4DZEplS5rsP3GlfUW6+OwFI2zCVtv
 B8aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=11Y9sQX+eb9GF4F1UDONqS64lFuXR8qyFbPK80C0W8w=;
 b=IkziksMkmuJdvaJVgLfIfA7HW07pjnXILdLFw2+lnldqMLZPJBSERHB+oYBCjkhdTe
 9DLSE4nuZqiJc4TxrI/nV9787yllzHQLzGGvDRVUfpGgv5shU0wrDJb5N8ApqQ7YcFnx
 v5kNdkpeJDCvdrE9nvMljm/1W19H7+PsPbACKaymcb/7bXLn7R18TDrjTQPvXnsjekp5
 GoSp6NgOl5Bnj/BctbhuhzSOKptX5ezX+D1AZMTHeBlt3qrSzlGPAhWih0gubWCHEgyp
 ctitLQ4YrQBEitVPoDaaopFmqinwIjL5PRxMB2xO0va0WooIsQMFNSDjmhORQgyxRLTB
 rOHA==
X-Gm-Message-State: APjAAAUVjUkT+u23PcBjagVNVyCUK7q6XrjJ2NX7ddshQfsrCMaannBq
 aFkOYsyIMPMrwLFJYMNdwJFIBg==
X-Google-Smtp-Source: APXvYqxIfsShJ3NMic/lzdVzWqys5lwB0Yg/F24Ean9ceMdZ2I2EOZ3d1iGBr29wEyby3o75terisQ==
X-Received: by 2002:a1c:3904:: with SMTP id g4mr3314812wma.116.1569927105100; 
 Tue, 01 Oct 2019 03:51:45 -0700 (PDT)
Received: from [192.168.86.34]
 (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
 by smtp.googlemail.com with ESMTPSA id z125sm4404947wme.37.2019.10.01.03.51.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 03:51:43 -0700 (PDT)
Subject: Re: [PATCH 2/2] nvmem: add Rockchip OTP driver
To: Heiko Stuebner <heiko@sntech.de>
References: <20190925184957.14338-1-heiko@sntech.de>
 <20190925184957.14338-2-heiko@sntech.de>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <4161b77d-e323-f0dc-88f1-0eb660cd2c66@linaro.org>
Date: Tue, 1 Oct 2019 11:51:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190925184957.14338-2-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_035146_947029_619B130C 
X-CRM114-Status: GOOD (  28.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Finley Xiao <finley.xiao@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 25/09/2019 19:49, Heiko Stuebner wrote:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Newer Rockchip socs like the px30 use a different one-time-programmable
> memory controller for things like cpu-id and leakage information,
> so add the necessary driver for it.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [ported from vendor 4.4, converted to clock-bulk API and cleanups]
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>   drivers/nvmem/Kconfig        |  11 ++
>   drivers/nvmem/Makefile       |   2 +
>   drivers/nvmem/rockchip-otp.c | 268 +++++++++++++++++++++++++++++++++++
>   3 files changed, 281 insertions(+)
>   create mode 100644 drivers/nvmem/rockchip-otp.c

Patch itself looks good for me,
I will wait for Rob's Ack on bindings before I apply.

thanks,
srini
> 
> diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
> index c2ec750cae6e..80b7e5d9c448 100644
> --- a/drivers/nvmem/Kconfig
> +++ b/drivers/nvmem/Kconfig
> @@ -119,6 +119,17 @@ config ROCKCHIP_EFUSE
>   	  This driver can also be built as a module. If so, the module
>   	  will be called nvmem_rockchip_efuse.
>   
> +config ROCKCHIP_OTP
> +	tristate "Rockchip OTP controller support"
> +	depends on ARCH_ROCKCHIP || COMPILE_TEST
> +	depends on HAS_IOMEM
> +	help
> +	  This is a simple drive to dump specified values of Rockchip SoC
> +	  from otp, such as cpu-leakage.
> +
> +	  This driver can also be built as a module. If so, the module
> +	  will be called nvmem_rockchip_otp.
> +
>   config NVMEM_BCM_OCOTP
>   	tristate "Broadcom On-Chip OTP Controller support"
>   	depends on ARCH_BCM_IPROC || COMPILE_TEST
> diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
> index e5c153d99a67..bbdbb929470f 100644
> --- a/drivers/nvmem/Makefile
> +++ b/drivers/nvmem/Makefile
> @@ -30,6 +30,8 @@ obj-$(CONFIG_QCOM_QFPROM)	+= nvmem_qfprom.o
>   nvmem_qfprom-y			:= qfprom.o
>   obj-$(CONFIG_ROCKCHIP_EFUSE)	+= nvmem_rockchip_efuse.o
>   nvmem_rockchip_efuse-y		:= rockchip-efuse.o
> +obj-$(CONFIG_ROCKCHIP_OTP)	+= nvmem-rockchip-otp.o
> +nvmem-rockchip-otp-y		:= rockchip-otp.o
>   obj-$(CONFIG_NVMEM_SUNXI_SID)	+= nvmem_sunxi_sid.o
>   nvmem_stm32_romem-y 		:= stm32-romem.o
>   obj-$(CONFIG_NVMEM_STM32_ROMEM) += nvmem_stm32_romem.o
> diff --git a/drivers/nvmem/rockchip-otp.c b/drivers/nvmem/rockchip-otp.c
> new file mode 100644
> index 000000000000..9f53bcce2f87
> --- /dev/null
> +++ b/drivers/nvmem/rockchip-otp.c
> @@ -0,0 +1,268 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Rockchip OTP Driver
> + *
> + * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/io.h>
> +#include <linux/iopoll.h>
> +#include <linux/module.h>
> +#include <linux/nvmem-provider.h>
> +#include <linux/reset.h>
> +#include <linux/slab.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +
> +/* OTP Register Offsets */
> +#define OTPC_SBPI_CTRL			0x0020
> +#define OTPC_SBPI_CMD_VALID_PRE		0x0024
> +#define OTPC_SBPI_CS_VALID_PRE		0x0028
> +#define OTPC_SBPI_STATUS		0x002C
> +#define OTPC_USER_CTRL			0x0100
> +#define OTPC_USER_ADDR			0x0104
> +#define OTPC_USER_ENABLE		0x0108
> +#define OTPC_USER_Q			0x0124
> +#define OTPC_INT_STATUS			0x0304
> +#define OTPC_SBPI_CMD0_OFFSET		0x1000
> +#define OTPC_SBPI_CMD1_OFFSET		0x1004
> +
> +/* OTP Register bits and masks */
> +#define OTPC_USER_ADDR_MASK		GENMASK(31, 16)
> +#define OTPC_USE_USER			BIT(0)
> +#define OTPC_USE_USER_MASK		GENMASK(16, 16)
> +#define OTPC_USER_FSM_ENABLE		BIT(0)
> +#define OTPC_USER_FSM_ENABLE_MASK	GENMASK(16, 16)
> +#define OTPC_SBPI_DONE			BIT(1)
> +#define OTPC_USER_DONE			BIT(2)
> +
> +#define SBPI_DAP_ADDR			0x02
> +#define SBPI_DAP_ADDR_SHIFT		8
> +#define SBPI_DAP_ADDR_MASK		GENMASK(31, 24)
> +#define SBPI_CMD_VALID_MASK		GENMASK(31, 16)
> +#define SBPI_DAP_CMD_WRF		0xC0
> +#define SBPI_DAP_REG_ECC		0x3A
> +#define SBPI_ECC_ENABLE			0x00
> +#define SBPI_ECC_DISABLE		0x09
> +#define SBPI_ENABLE			BIT(0)
> +#define SBPI_ENABLE_MASK		GENMASK(16, 16)
> +
> +#define OTPC_TIMEOUT			10000
> +
> +struct rockchip_otp {
> +	struct device *dev;
> +	void __iomem *base;
> +	struct clk_bulk_data	*clks;
> +	int num_clks;
> +	struct reset_control *rst;
> +};
> +
> +/* list of required clocks */
> +static const char * const rockchip_otp_clocks[] = {
> +	"otp", "apb_pclk", "phy",
> +};
> +
> +struct rockchip_data {
> +	int size;
> +};
> +
> +static int rockchip_otp_reset(struct rockchip_otp *otp)
> +{
> +	int ret;
> +
> +	ret = reset_control_assert(otp->rst);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to assert otp phy %d\n", ret);
> +		return ret;
> +	}
> +
> +	udelay(2);
> +
> +	ret = reset_control_deassert(otp->rst);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to deassert otp phy %d\n", ret);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int rockchip_otp_wait_status(struct rockchip_otp *otp, u32 flag)
> +{
> +	u32 status = 0;
> +	int ret;
> +
> +	ret = readl_poll_timeout_atomic(otp->base + OTPC_INT_STATUS, status,
> +					(status & flag), 1, OTPC_TIMEOUT);
> +	if (ret)
> +		return ret;
> +
> +	/* clean int status */
> +	writel(flag, otp->base + OTPC_INT_STATUS);
> +
> +	return 0;
> +}
> +
> +static int rockchip_otp_ecc_enable(struct rockchip_otp *otp, bool enable)
> +{
> +	int ret = 0;
> +
> +	writel(SBPI_DAP_ADDR_MASK | (SBPI_DAP_ADDR << SBPI_DAP_ADDR_SHIFT),
> +	       otp->base + OTPC_SBPI_CTRL);
> +
> +	writel(SBPI_CMD_VALID_MASK | 0x1, otp->base + OTPC_SBPI_CMD_VALID_PRE);
> +	writel(SBPI_DAP_CMD_WRF | SBPI_DAP_REG_ECC,
> +	       otp->base + OTPC_SBPI_CMD0_OFFSET);
> +	if (enable)
> +		writel(SBPI_ECC_ENABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
> +	else
> +		writel(SBPI_ECC_DISABLE, otp->base + OTPC_SBPI_CMD1_OFFSET);
> +
> +	writel(SBPI_ENABLE_MASK | SBPI_ENABLE, otp->base + OTPC_SBPI_CTRL);
> +
> +	ret = rockchip_otp_wait_status(otp, OTPC_SBPI_DONE);
> +	if (ret < 0)
> +		dev_err(otp->dev, "timeout during ecc_enable\n");
> +
> +	return ret;
> +}
> +
> +static int rockchip_otp_read(void *context, unsigned int offset,
> +			     void *val, size_t bytes)
> +{
> +	struct rockchip_otp *otp = context;
> +	u8 *buf = val;
> +	int ret = 0;
> +
> +	ret = clk_bulk_prepare_enable(otp->num_clks, otp->clks);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "failed to prepare/enable clks\n");
> +		return ret;
> +	}
> +
> +	ret = rockchip_otp_reset(otp);
> +	if (ret) {
> +		dev_err(otp->dev, "failed to reset otp phy\n");
> +		goto disable_clks;
> +	}
> +
> +	ret = rockchip_otp_ecc_enable(otp, false);
> +	if (ret < 0) {
> +		dev_err(otp->dev, "rockchip_otp_ecc_enable err\n");
> +		goto disable_clks;
> +	}
> +
> +	writel(OTPC_USE_USER | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +	udelay(5);
> +	while (bytes--) {
> +		writel(offset++ | OTPC_USER_ADDR_MASK,
> +		       otp->base + OTPC_USER_ADDR);
> +		writel(OTPC_USER_FSM_ENABLE | OTPC_USER_FSM_ENABLE_MASK,
> +		       otp->base + OTPC_USER_ENABLE);
> +		ret = rockchip_otp_wait_status(otp, OTPC_USER_DONE);
> +		if (ret < 0) {
> +			dev_err(otp->dev, "timeout during read setup\n");
> +			goto read_end;
> +		}
> +		*buf++ = readb(otp->base + OTPC_USER_Q);
> +	}
> +
> +read_end:
> +	writel(0x0 | OTPC_USE_USER_MASK, otp->base + OTPC_USER_CTRL);
> +disable_clks:
> +	clk_bulk_disable_unprepare(otp->num_clks, otp->clks);
> +
> +	return ret;
> +}
> +
> +static struct nvmem_config otp_config = {
> +	.name = "rockchip-otp",
> +	.owner = THIS_MODULE,
> +	.read_only = true,
> +	.stride = 1,
> +	.word_size = 1,
> +	.reg_read = rockchip_otp_read,
> +};
> +
> +static const struct rockchip_data px30_data = {
> +	.size = 0x40,
> +};
> +
> +static const struct of_device_id rockchip_otp_match[] = {
> +	{
> +		.compatible = "rockchip,px30-otp",
> +		.data = (void *)&px30_data,
> +	},
> +	{
> +		.compatible = "rockchip,rk3308-otp",
> +		.data = (void *)&px30_data,
> +	},
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, rockchip_otp_match);
> +
> +static int rockchip_otp_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct rockchip_otp *otp;
> +	const struct rockchip_data *data;
> +	struct nvmem_device *nvmem;
> +	int ret, i;
> +
> +	data = of_device_get_match_data(dev);
> +	if (!data) {
> +		dev_err(dev, "failed to get match data\n");
> +		return -EINVAL;
> +	}
> +
> +	otp = devm_kzalloc(&pdev->dev, sizeof(struct rockchip_otp),
> +			   GFP_KERNEL);
> +	if (!otp)
> +		return -ENOMEM;
> +
> +	otp->dev = dev;
> +	otp->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(otp->base))
> +		return PTR_ERR(otp->base);
> +
> +	otp->num_clks = ARRAY_SIZE(rockchip_otp_clocks);
> +	otp->clks = devm_kcalloc(dev, otp->num_clks,
> +				     sizeof(*otp->clks), GFP_KERNEL);
> +	if (!otp->clks)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < otp->num_clks; ++i)
> +		otp->clks[i].id = rockchip_otp_clocks[i];
> +
> +	ret = devm_clk_bulk_get(dev, otp->num_clks, otp->clks);
> +	if (ret)
> +		return ret;
> +
> +	otp->rst = devm_reset_control_get(dev, "phy");
> +	if (IS_ERR(otp->rst))
> +		return PTR_ERR(otp->rst);
> +
> +	otp_config.size = data->size;
> +	otp_config.priv = otp;
> +	otp_config.dev = dev;
> +	nvmem = devm_nvmem_register(dev, &otp_config);
> +
> +	return PTR_ERR_OR_ZERO(nvmem);
> +}
> +
> +static struct platform_driver rockchip_otp_driver = {
> +	.probe = rockchip_otp_probe,
> +	.driver = {
> +		.name = "rockchip-otp",
> +		.of_match_table = rockchip_otp_match,
> +	},
> +};
> +
> +module_platform_driver(rockchip_otp_driver);
> +MODULE_DESCRIPTION("Rockchip OTP driver");
> +MODULE_LICENSE("GPL v2");
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
