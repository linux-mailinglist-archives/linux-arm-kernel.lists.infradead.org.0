Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2390C15A8F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/c8C7TSjyQP+VLPAXprhLcoMXp7QER3mNWNGZMxP4E=; b=CzQaLVuU74b2gY
	iGlv5mkMC1VAqrDVZtzku8N0byWpLURx9R3Vu+9WeG/OjT1JInfKsavnR5vE0P5m/0nDZ/yGg0tP8
	M35Tz1RrOtT6xU9/Q1xygxd3HoL3h9wxUkpm2F0cN2u4mvece/FhXipcmDdfAE5nMdZr4zPRE9qFN
	jXODbyKL6pIX+dP3mB0B8nFczhjJjMeWa3xyyE/gnf2CjfV/DtPzFs5vepEsmK4Eg8FJplhgfDb1C
	rrO4fa9Te2IMbriErWNWxspIrPXabyoI+l8rS9Wy15oeJPiilBzyKWUEXjT5EYqC9S6FFbf7qzGQU
	9p/HI/S0OqdPVpg7dHFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qy6-0008Nu-KH; Wed, 12 Feb 2020 12:18:14 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qxs-0008Hp-UT; Wed, 12 Feb 2020 12:18:02 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so2046704wrw.8;
 Wed, 12 Feb 2020 04:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=R2NyxXoUW9Cj8Ba0zPl8bE0kVh7j7MxxmAH4rY3eAb0=;
 b=DKa6qf/3AypN6lR+wJ+uw5bX/Rb8qi0D5CaEMOISzOAfVqMC70VprqQt7jiq3t2Iaj
 /IBtXI+V+RtI+4HA7LdrnQScPp5WsAgFnmnk7/CyMzz34ehkA/9I6GZjDVcj0ou2NghX
 U4KkNq1VvKA3UfWnMGwaHLCq8EbTL1YHwvrhhgL0V7/0X2zPS+a0gs9vNWxNv7f7rMbG
 u5Rja/L/jYv8SqfFk2Moss7QB0fFfCCznPANsRzxLjUoNEyA4H+TgcQnOX86tU1MHGyY
 RBqnLxD4jKnL5rFF3IsE0DruSaWk6sKel19G2TcfvFIc4D6dih3bBO5Z95aCORzzvNPZ
 7aUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=R2NyxXoUW9Cj8Ba0zPl8bE0kVh7j7MxxmAH4rY3eAb0=;
 b=uGPLejQ/D7PklQUxB6BrSP4TcgNIYiwS1Hs7sJiHiGpw2CNnfqAxznGeozOZPyLkx3
 I1rMf5kme+3h5+wS0LvKPEyqV5FZkVLQXLbf2PbGVgWrFWvlWBu/GTVnWkxFpka5pcHA
 /eIuipkmSBKlhqyyOBxipN6O31QfVAUgEzTIk+y9jEU4s+0b95LRGp4e6Qn/CiifaGVx
 MdsbakeWwv6cxM1MSR40NGIfjvL9LmBdEEjvPv6ERlu2v2XDQxEkjy66FoKpabYRKwoB
 Vyr8wtrFlP1tqqy2ItqM5p7DURCuqlvbeEQYDJVlFwRBR4yhag7jm0S84N6hyj7hHfdi
 Q3Cg==
X-Gm-Message-State: APjAAAVE2oqXPVK9urNIFm9MpQrC6su1wv2XyZSXSuyZ/Dvn5n4ytO7o
 sf5DDLpc9iMKZYz08jcEB3c=
X-Google-Smtp-Source: APXvYqy8Ixendg6h+Wzo2zUp/DpV5IBsEPJdcKgJb6PuS1+L4DvaPzdDknAyVLAmJLxUUXACm09w7w==
X-Received: by 2002:adf:db84:: with SMTP id u4mr15284660wri.317.1581509879181; 
 Wed, 12 Feb 2020 04:17:59 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id k13sm388830wrx.59.2020.02.12.04.17.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Feb 2020 04:17:57 -0800 (PST)
Subject: Re: [PATCH v3 3/3] memory: mtk-smi: Add bandwidth initial golden
 setting
To: Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>
References: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
 <1578465691-30692-5-git-send-email-ming-fan.chen@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <8d168fcc-3b85-a893-316b-8d7b4d29dea4@gmail.com>
Date: Wed, 12 Feb 2020 13:17:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1578465691-30692-5-git-send-email-ming-fan.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_041801_172990_A2E4B175 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 08/01/2020 07:41, Ming-Fan Chen wrote:
> SMI bandwidth initial golden setting for MT6779 make sure
> better performance of memory control for multimedia modules.
> 
> changelog since v2:
> Define local variable from long to short
> Merge writel_relaxed into one line
> Remove SMI_LARB_SW_FLAG in smi-larb
> 
> Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
> ---
>  drivers/memory/mtk-smi.c |  118 +++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 117 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
> index d0b747a..222ac7e 100644
> --- a/drivers/memory/mtk-smi.c
> +++ b/drivers/memory/mtk-smi.c
> @@ -41,21 +41,47 @@
>  #define SMI_LARB_NONSEC_CON(id)	(0x380 + ((id) * 4))
>  #define F_MMU_EN		BIT(0)
>  
> +#define SMI_LARB_CMD_THRT_CON	 0x24
> +#define SMI_LARB_OSTDL_PORT	 0x200
> +#define SMI_LARB_OSTDL_PORTx(id) (SMI_LARB_OSTDL_PORT + (((id) & 0x1f) << 2))
> +
>  /* SMI COMMON */
> +#define SMI_L1LEN			0x100
> +#define SMI_L1ARB0			0x104
> +#define SMI_L1ARB(id)			(SMI_L1ARB0 + (((id) & 0x7) << 2))
> +
>  #define SMI_BUS_SEL			0x220
>  #define SMI_BUS_LARB_SHIFT(larbid)	((larbid) << 1)
>  /* All are MMU0 defaultly. Only specialize mmu1 here. */
>  #define F_MMU1_LARB(larbid)		(0x1 << SMI_BUS_LARB_SHIFT(larbid))
>  
> +#define SMI_M4U_TH			0x234
> +#define SMI_FIFO_TH1			0x238
> +#define SMI_FIFO_TH2			0x23c
> +#define SMI_DCM				0x300
> +#define SMI_DUMMY			0x444
> +
> +#define SMI_LARB_PORT_NR_MAX		32
> +#define SMI_LARB_MISC_NR		1
> +
>  enum mtk_smi_gen {
>  	MTK_SMI_GEN1,
>  	MTK_SMI_GEN2
>  };
>  
> +struct mtk_smi_reg_pair {
> +	u16	offset;
> +	u32	value;
> +};
> +
>  struct mtk_smi_common_plat {
>  	enum mtk_smi_gen gen;
>  	bool             has_gals;
>  	u32              bus_sel; /* Balance some larbs to enter mmu0 or mmu1 */
> +	bool                          has_bwc;

bwc = bandwith configuration ?

> +	u8                            larb_nr;
> +	const u16                     *l1arb;
> +	const struct mtk_smi_reg_pair *misc;

maybe encapsulate this in a new struct mtk_smi_common_bwidth_config or something
like this?

>  };
>  
>  struct mtk_smi_larb_gen {
> @@ -63,6 +89,9 @@ struct mtk_smi_larb_gen {
>  	void (*config_port)(struct device *);
>  	unsigned int			larb_direct_to_common_mask;
>  	bool				has_gals;
> +	bool				has_bwc;
> +	const u8			(*ostdl)[SMI_LARB_PORT_NR_MAX];

array of pointers? maybe:
const u8		*ostdl[SMI_LARB_PORT_NR_MAX];

or even better
const u8		**ostdl;


> +	const struct mtk_smi_reg_pair	(*misc)[SMI_LARB_MISC_NR];

Same here.

>  };
>  
>  struct mtk_smi {
> @@ -159,6 +188,8 @@ void mtk_smi_larb_put(struct device *larbdev)
>  static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
>  {
>  	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
> +	const struct mtk_smi_reg_pair *misc;
> +	const u8 *ostdl;
>  	u32 reg;
>  	int i;
>  
> @@ -170,6 +201,18 @@ static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
>  		reg |= F_MMU_EN;
>  		writel(reg, larb->base + SMI_LARB_NONSEC_CON(i));
>  	}
> +
> +	if (!larb->larb_gen->has_bwc)

I'd prefer
if (larb->larb_gen->has_bwc) {
...
}

> +		return;
> +
> +	for (i = 0, ostdl = larb->larb_gen->ostdl[larb->larbid];
> +		i < SMI_LARB_PORT_NR_MAX; i++)

ostdl = larb->larb_gen->ostdl[larb->larbid];

for (i = 0, ; i < SMI_LARB_PORT_NR_MAX; i++)


> +		writel_relaxed(ostdl[i], larb->base + SMI_LARB_OSTDL_PORTx(i));
> +
> +	for (i = 0, misc = larb->larb_gen->misc[larb->larbid];
> +		i < SMI_LARB_MISC_NR; i++)

same here.

> +		writel_relaxed(misc[i].value, larb->base + misc[i].offset);

new line here.

> +	wmb(); /* make sure settings are written */
>  }
>  
>  static void mtk_smi_larb_config_port_mt8173(struct device *dev)
> @@ -239,11 +282,53 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
>  	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
>  };
>  
> +static const u8 mtk_smi_larb_mt6779_ostdl[][SMI_LARB_PORT_NR_MAX] = {

static const u8 mtk_smi_larb_mt6779_ostdl[MTK_LARB_NR_MAX][SMI_LARB_PORT_NR_MAX]

otherwise if we forget a line, the driver could access random memory.


> +	{0x28, 0x28, 0x01, 0x28, 0x01, 0x01, 0x0a, 0x0a, 0x28,},
> +	{0x28, 0x01, 0x28, 0x28, 0x0a, 0x01, 0x01, 0x0d, 0x0d, 0x07,
> +	 0x01, 0x07, 0x01, 0x28,},
> +	{0x18, 0x01, 0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02,
> +	 0x01, 0x01},
> +	{0x01, 0x03, 0x02, 0x01, 0x01, 0x01, 0x01, 0x04, 0x02, 0x01,
> +	 0x04, 0x01, 0x01, 0x01, 0x01, 0x04, 0x0b, 0x13, 0x14,},
> +	{},
> +	{0x13, 0x0f, 0x0d, 0x07, 0x07, 0x04, 0x03, 0x01, 0x03, 0x01,
> +	 0x05, 0x0c, 0x01, 0x01, 0x08, 0x06, 0x02, 0x01, 0x08, 0x08,
> +	 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,},
> +	{0x01, 0x01, 0x01,},
> +	{0x01, 0x01, 0x01, 0x01,},
> +	{0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,},
> +	{0x1f, 0x1a, 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x1f, 0x04,
> +	 0x04, 0x01, 0x01, 0x01, 0x02, 0x02, 0x04, 0x02, 0x01, 0x02,
> +	 0x04, 0x02, 0x02, 0x01,},
> +	{0x1f, 0x1a, 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x1f, 0x1a,
> +	 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x01, 0x02, 0x02, 0x04,
> +	 0x02, 0x0a, 0x02, 0x02, 0x04, 0x02, 0x0a, 0x02, 0x04, 0x02, 0x04,},
> +	{0x01, 0x01, 0x01, 0x01, 0x01,},
> +};
> +
> +static const struct mtk_smi_reg_pair
> +mtk_smi_larb_mt6779_misc[][SMI_LARB_MISC_NR] = {

same here.

> +	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
> +	{},
> +	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
> +	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
> +};
> +
>  static const struct mtk_smi_larb_gen mtk_smi_larb_mt6779 = {
>  	.config_port  = mtk_smi_larb_config_port_gen2_general,
>  	.larb_direct_to_common_mask =
>  		BIT(4) | BIT(6) | BIT(11) | BIT(12) | BIT(13),
>  		/* DUMMY | IPU0 | IPU1 | CCU | MDLA */
> +	.has_bwc = true,
> +	.ostdl   = mtk_smi_larb_mt6779_ostdl,
> +	.misc    = mtk_smi_larb_mt6779_misc,
>  };
>  
>  static const struct mtk_smi_larb_gen mtk_smi_larb_mt8183 = {
> @@ -397,11 +482,30 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
>  	.gen = MTK_SMI_GEN2,
>  };
>  
> +static const u16 mtk_smi_common_mt6779_l1arb[] = {
> +	0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000,
> +};
> +
> +static const struct
> +mtk_smi_reg_pair mtk_smi_common_mt6779_misc[SMI_COMMON_MISC_NR] = {
> +	{SMI_L1LEN, 0xb},
> +	{SMI_M4U_TH, 0xe100e10},
> +	{SMI_FIFO_TH1, 0x506090a},
> +	{SMI_FIFO_TH2, 0x506090a},
> +	{SMI_DCM, 0x4f1},
> +	{SMI_DUMMY, 0x1},
> +};
> +
>  static const struct mtk_smi_common_plat mtk_smi_common_mt6779 = {
>  	.gen		= MTK_SMI_GEN2,
>  	.has_gals	= true,
>  	.bus_sel	= F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
>  			  F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
> +	.has_bwc	= true,
> +	.larb_nr	= ARRAY_SIZE(mtk_smi_common_mt6779_l1arb),
> +	.l1arb		= mtk_smi_common_mt6779_l1arb,
> +	.misc_nr	= ARRAY_SIZE(mtk_smi_common_mt6779_misc),
> +	.misc		= mtk_smi_common_mt6779_misc,
>  };
>  
>  static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
> @@ -506,7 +610,7 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
>  {
>  	struct mtk_smi *common = dev_get_drvdata(dev);
>  	u32 bus_sel = common->plat->bus_sel;
> -	int ret;
> +	int i, ret;
>  
>  	ret = mtk_smi_clk_enable(common);
>  	if (ret) {
> @@ -516,6 +620,18 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
>  
>  	if (common->plat->gen == MTK_SMI_GEN2 && bus_sel)
>  		writel(bus_sel, common->base + SMI_BUS_SEL);
> +
> +	if (!common->plat->has_bwc)
> +		return 0;
> +

if (common->plat->has_bwc) {
...
}
return 0;

> +	for (i = 0; i < common->plat->larb_nr; i++)
> +		writel_relaxed(common->plat->l1arb[i],
> +			       common->base + SMI_L1ARB(i));
> +
> +	for (i = 0; i < common->plat->misc_nr; i++)
> +		writel_relaxed(common->plat->misc[i].value,
> +			       common->base + common->plat->misc[i].value);
> +	wmb(); /* make sure settings are written */
>  	return 0;
>  }
>  
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
