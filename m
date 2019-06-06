Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF1037328
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 13:42:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:To:
	Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BEbUNIxl61E8gbGQlHGZLmnSW/t+JNNCORMbS0rExLE=; b=US8Dc/mDZNomHc9sbXfZZvq0o
	jAh8VmU/rondkokMLkGOCn+lHBIPxf8QtVLiSq1/1wNeImO0260BQ+9iQQCpCO8gRRw8ZgkxMzZfq
	SitU+dEBl9oOJLVkYU5oHoEQapGoWOZe2VOPbxav6BbhU7b6yUQ2JQE38EzEzqk5zotn/qL7Etv8Z
	P6aPZy2JVT1Ed1Z5Ts/d8dWkrvQ6Gh/D+TmHrMh/3AYySoR9wm+EmmPu2wbKqNUuxkqawa8jS+ph4
	cmtKHzYP2QIVaYFV+BgFpYSf5oB1MseDvG2nGk9xCqDcBpsBIcxTMQ6A5VizrBxTwggqCwCNwihz2
	HwuOhTk7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYqmw-0002VT-KQ; Thu, 06 Jun 2019 11:42:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYqmp-0002Uh-BR; Thu, 06 Jun 2019 11:42:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so2083574wrs.3;
 Thu, 06 Jun 2019 04:42:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:subject:to:cc:message-id:in-reply-to:references
 :mime-version; bh=Hm8jnVKj/49pMZ/YRr3G6M11770UiUWVYtiApy3hGqI=;
 b=A19pqkikhBtY++OguCINEbIXI3xRn5Ebn3irMyP+Nosg1P/LybZCNSeGYOe/78wG1e
 xZ/b4FDwheBSJPdKvqwbZLY/SI7f8B5LHaBg6eML1m+yBTLhkFm4J2gTFXe9VX+vbUWY
 1Y/wldH9+tuz2h1zbO32ODLH+4KupTa3TjlXA9vGnjn/iFVHj+Umka/15AnyCXQMFa0A
 pWHN1IHZnNuNNLOUHUgHmdStCiWEQRWjxzUgrZPBcVFAw6ogfA0zj8pL+tSeC32JvLEN
 laviVO8m1ZlBYh7UHsJZQfrXfOeQdLbuS+FSbEuuxQNoAYMcJU0MPt2oAxZOOZC1Z0UQ
 FoGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:to:cc:message-id:in-reply-to
 :references:mime-version;
 bh=Hm8jnVKj/49pMZ/YRr3G6M11770UiUWVYtiApy3hGqI=;
 b=n8wxqsmgKrP7mBNEqhSsorLk/krXagchQjozPwCJtvuHD8mWpOs7mN/TAT0LtwRdyQ
 2MW5B8RpmDUvt+dizqh8I1p9aneDbck1zTIqZfy88+Ls0FUEbkDTzMhAajP51+DuExhl
 huvX3FKBwfoLrXbr80mguSXNG9uIa2EgeG6nfFs/pEu/hJjKjQ1urMh51j1ePZ7IuAMd
 qglZCzN7F8a6uUjze1Na+HJNFa/0zJlS5iJ0C8Yus6il0HAiG+2gyq+wwkW9YRs7xHDW
 1aAFFJkEPOpS6Ekj4FLAt44I+/QGBS4UP1J5FtbdvqFCDq5ubMctoUOtY5OQ2m0ifFWu
 RsLA==
X-Gm-Message-State: APjAAAXbPPqvL3AIgPV/PnEa4OHPCgmjNu0iAkxeI78CbypRsv90V6+r
 bX0NYVLHKpnkN/Doezp27jk=
X-Google-Smtp-Source: APXvYqyGbeHxc8tZuXHRIYqtw0Bip3jMlyDlc5AEJHsdIvkmwwkH5eFtA6b2PyG0LPf5PvclT2dA+Q==
X-Received: by 2002:adf:9003:: with SMTP id h3mr6206679wrh.172.1559821345407; 
 Thu, 06 Jun 2019 04:42:25 -0700 (PDT)
Received: from X555LD ([2a02:85f:1501:7500:4d25:7f51:1663:c28f])
 by smtp.gmail.com with ESMTPSA id o6sm1509958wmc.15.2019.06.06.04.42.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 04:42:24 -0700 (PDT)
Date: Thu, 06 Jun 2019 14:42:20 +0300
From: "Leonidas P. Papadakos" <papadakospan@gmail.com>
Subject: Re: [PATCH 1/2] clk: rockchip: add clock for the watchdog pclk on
 rk3328
To: Heiko Stuebner <heiko@sntech.de>
Message-Id: <1559821340.1384.0@gmail.com>
In-Reply-To: <3485393.4UdOu2YNQE@phil>
References: <20190605235714.22432-1-papadakospan@gmail.com>
 <3485393.4UdOu2YNQE@phil>
X-Mailer: geary/3.32.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_044227_396652_5ECE8F8D 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (papadakospan[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 itdaniher@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi,
> 
> Am Donnerstag, 6. Juni 2019, 01:57:13 CEST schrieb Leonidas P. 
> Papadakos:
>>  From: <itdaniher@gmail.com>
> 
> Why is the From different from the Signed-off-by? Would also need a 
> full name.
> If the patch is from you, please just use the same From as for the 
> Signed-off-by.
> 

I mistakenly though this was the way to credit someone for a patch, but 
it seems to be different.
I'll Cc: the author of this patch

>> 
>>  Following the discussion here:
>>  https://github.com/rockchip-linux/kernel/issues/123
>> 
>>  it can be seen that these are the changes needed to enable the use 
>> of the hardware watchdog in the rk3328 SoC.
>> 
>>  This is in line with past changes for the rk3288:
>>  
>> http://lists.infradead.org/pipermail/linux-rockchip/2015-January/002314.html
>> 
>>  Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
>>  ---
>>   drivers/clk/rockchip/clk-rk3328.c      | 9 +++++++++
>>   include/dt-bindings/clock/rk3328-cru.h | 1 +
>>   2 files changed, 10 insertions(+)
>> 
>>  diff --git a/drivers/clk/rockchip/clk-rk3328.c 
>> b/drivers/clk/rockchip/clk-rk3328.c
>>  index 076b9777a..546ee0ab7 100644
>>  --- a/drivers/clk/rockchip/clk-rk3328.c
>>  +++ b/drivers/clk/rockchip/clk-rk3328.c
>>  @@ -876,6 +876,8 @@ static const char *const 
>> rk3328_critical_clocks[] __initconst = {
>> 
>>   static void __init rk3328_clk_init(struct device_node *np)
>>   {
>>  +	struct clk *clk;
>>  +
>>   	struct rockchip_clk_provider *ctx;
>>   	void __iomem *reg_base;
>> 
>>  @@ -892,6 +894,13 @@ static void __init rk3328_clk_init(struct 
>> device_node *np)
>>   		return;
>>   	}
>> 
>>  +	clk = clk_register_fixed_factor(NULL, "pclk_wdt", "pclk_bus", 0, 
>> 1, 1);
>>  +	if (IS_ERR(clk))
>>  +		pr_warn("%s: could not register clock pclk_wdt: %ld\n",
>>  +			__func__, PTR_ERR(clk));
>>  +	else
>>  +		rockchip_clk_add_lookup(ctx, clk, PCLK_WDT);
>>  +
> 
> I've just Cc'ed you on 2 patches adding a SGRF_GATE clock-type. Please
> use that as base for you rk3328-wdt-clock, so that we don't introduce 
> more
> boilderplate code.
> 
> 
>>   	rockchip_clk_register_plls(ctx, rk3328_pll_clks,
>>   				   ARRAY_SIZE(rk3328_pll_clks),
>>   				   RK3328_GRF_SOC_STATUS0);
> 
>>  diff --git a/include/dt-bindings/clock/rk3328-cru.h 
>> b/include/dt-bindings/clock/rk3328-cru.h
>>  index afb811340..555b4ff66 100644
>>  --- a/include/dt-bindings/clock/rk3328-cru.h
>>  +++ b/include/dt-bindings/clock/rk3328-cru.h
>>  @@ -164,6 +164,7 @@
>>   #define PCLK_DCF		233
>>   #define PCLK_SARADC		234
>>   #define PCLK_ACODECPHY		235
>>  +#define PCLK_WDT		236
>> 
>>   /* hclk gates */
>>   #define HCLK_PERI		308
> 
> please split the addition of the clock-id into a separate patch only 
> adding
> said id.
> 
> 
> Thanks
> Heiko
> 

I know less than him on this, but I want the feedback to be visible in 
the Cc:



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
