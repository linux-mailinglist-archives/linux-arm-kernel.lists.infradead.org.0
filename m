Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346D214583B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 15:54:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFzK90DcR7HzHCjK/RMrAcpwI3tcp8F+grRHkIUOEec=; b=TBDhThHukaCbPC
	/wUXGOTnOhgp4kF5uF7vdi2tXii4IN7RnAMlgb36ITdulVqz4BBISdDULTxRAJzdQnLgaa6txxgaI
	ZLvI2wErQRmjqnlYQWM5iqm7mvl1PFy0Db+Ica+2NlNe9dqTKWlW2AfGdKKYn7fjt+XEchywwp4uQ
	DxQtp9x53B5pQk+8xrUiv6zrz9U9tkk/DeVrf6kxQZNAGB+zUooiuwmvLCez7KHr0Qq5/kffm4FKJ
	6mI786KICV7WCnAdB80lZGDWmJYCwofo+c4jGn8T7n/yxe9qdiO8QtzvLsGAUZksGnpL0jMi1fj3C
	zdVC1L/utz3NTyHYQSmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuHOb-000795-Co; Wed, 22 Jan 2020 14:54:17 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuHOQ-00077n-MO
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 14:54:08 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200122145402epoutp0198869e609aca218918624717d4003a85~sPS9PdSt_2485424854epoutp01G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 14:54:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200122145402epoutp0198869e609aca218918624717d4003a85~sPS9PdSt_2485424854epoutp01G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1579704842;
 bh=4itLcJd9TovgkIJA4En20KBiCbGG4bMhv7WMq/yt9qs=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=U4RQaPc5GK99iRyuoOoQ86PvMPg6xZONm++S2v9H3QDPcr2RXbd/Q62zgzehQXVKv
 75c40NYvV743+KMyPhHjyUb/GMCMl/g/FmWUcfUsAjC2No9A2q3tCSL2XGxCwFtfe0
 FpVa3SyEHQr2Gw1x4KtsmxiCFRzokrFopo9RJN54=
Received: from epsmges5p3new.samsung.com (unknown [182.195.42.75]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTP id
 20200122145402epcas5p4502ef8824947d257531b08ebb14484e1~sPS8506Za1067910679epcas5p4v;
 Wed, 22 Jan 2020 14:54:02 +0000 (GMT)
Received: from epcas5p1.samsung.com ( [182.195.41.39]) by
 epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
 05.FC.19629.A02682E5; Wed, 22 Jan 2020 23:54:02 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200122145401epcas5p28907c5b3800ca5410955a856bcd82c8e~sPS72sQu91038710387epcas5p2m;
 Wed, 22 Jan 2020 14:54:01 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200122145401epsmtrp22cfbc217f006f370bdfa6a2d304687c8~sPS710jVu1347513475epsmtrp2V;
 Wed, 22 Jan 2020 14:54:01 +0000 (GMT)
X-AuditID: b6c32a4b-345ff70000014cad-2f-5e28620acae9
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 60.A8.10238.902682E5; Wed, 22 Jan 2020 23:54:01 +0900 (KST)
Received: from sriramdash03 (unknown [107.111.85.29]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200122145358epsmtip174221b741edcd5e2af6c3e4345ad2752~sPS5vIs6s2722127221epsmtip1L;
 Wed, 22 Jan 2020 14:53:58 +0000 (GMT)
From: "Sriram Dash" <sriram.dash@samsung.com>
To: "'Faiz Abbas'" <faiz_abbas@ti.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <netdev@vger.kernel.org>,
 <linux-can@vger.kernel.org>
In-Reply-To: <20200122080310.24653-3-faiz_abbas@ti.com>
Subject: RE: [PATCH 2/3] can: m_can: m_can_platform: Add support for
 enabling transceiver through the STB line
Date: Wed, 22 Jan 2020 20:23:57 +0530
Message-ID: <002101d5d133$c8352100$589f6300$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQL34jRp8ckpa4Ru5doAY/bQkCNITwHmOWfLAkdTAPClkTT7kA==
Content-Language: en-in
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIKsWRmVeSWpSXmKPExsWy7bCmui5Xkkacwet3/Bbvl/UwWsw538Ji
 Mf/IOVaL7tNbWC2+LG1mttj0+BqrxarvU5ktLu+aw2ax9PpFJov1i6awWBxbIGbx5sdZJovW
 vUfYLZY87QBK3tvJ6sDvsWbeGkaPLStvMnl8vHSb0WPTqk42j81L6j36/xp4HL+xncnj8ya5
 AI4oLpuU1JzMstQifbsErozmi43sBe/5Kt7vOc/cwNjF08XIySEhYCLxpvMYK4gtJLCbUaLv
 uEYXIxeQ/YlR4v7EKewQzjdGiQ97ZzLCdCxY+p0FIrGXUaJpzX0o5xWjxMMTd8BmsQnoSpy9
 0cQGkhAROMko8ejaSVYQh1ngMNCSjuVgVZwC5hJHf59kArGFBQok3n25wg5iswioSpz79Bxo
 HwcHr4ClxKIuGZAwr4CgxMmZT1hAbGYBeYntb+cwQ5ykIPHz6TKwkSICThL9p3ewQdSISxz9
 2cMMsldC4Bi7xMfnn9ggGlwkenshLpUQEJZ4dXwLO4QtJfH53V6ommyJy33PoRaUSMx4tZAF
 wraXOHBlDgvIbcwCmhLrd+lD7OKT6P39hAkkLCHAK9HRJgRRrSrx6vZmqOnSEgfWnmaCsD0k
 XvxawDyBUXEWks9mIflsFpIPZiEsW8DIsopRMrWgODc9tdi0wDgvtVyvODG3uDQvXS85P3cT
 IzjhaXnvYNx0zucQowAHoxIPr4OlRpwQa2JZcWXuIUYJDmYlEd4FTapxQrwpiZVVqUX58UWl
 OanFhxilOViUxHknsV6NERJITyxJzU5NLUgtgskycXBKNTC6Lf9kvLTv9UYliV8O3j3SNxr1
 eop/CHy8bP3o0IPI37/Cghk+bNFLCH732cK6KurW38Rtpntabyy++71GsVRIs/Cv0vIz6of5
 Jmocz/0xcVvphj0TrvIVqoYphcx3mdu0V0iSp8oz8O+PvS/d75+Zdk306woNjosTnv1VXDj5
 27EER81iDbn3SizFGYmGWsxFxYkAnY/IZXQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrEIsWRmVeSWpSXmKPExsWy7bCSnC5nkkacQccVVov3y3oYLeacb2Gx
 mH/kHKtF9+ktrBZfljYzW2x6fI3VYtX3qcwWl3fNYbNYev0ik8X6RVNYLI4tELN48+Msk0Xr
 3iPsFkuedgAl7+1kdeD3WDNvDaPHlpU3mTw+XrrN6LFpVSebx+Yl9R79fw08jt/YzuTxeZNc
 AEcUl01Kak5mWWqRvl0CV0bzxUb2gvd8Fe/3nGduYOzi6WLk5JAQMJFYsPQ7SxcjF4eQwG5G
 iQ9v17F3MXIAJaQlft7VhagRllj57zk7iC0k8IJR4s5SVRCbTUBX4uyNJjaQXhGBs4wSG24s
 YgdxmAXOM0pMm/qLEWLqZkaJ3V9XMYG0cAqYSxz9fRLMFhbIk9i+qocVxGYRUJU49+k5I8hm
 XgFLiUVdMiBhXgFBiZMzn7CAhJkF9CTaNjKChJkF5CW2v53DDHGcgsTPp8vApogIOEn0n97B
 BlEjLnH0Zw/zBEbhWUgmzUKYNAvJpFlIOhYwsqxilEwtKM5Nzy02LDDMSy3XK07MLS7NS9dL
 zs/dxAiOWS3NHYyXl8QfYhTgYFTi4XWw1IgTYk0sK67MPcQowcGsJMK7oEk1Tog3JbGyKrUo
 P76oNCe1+BCjNAeLkjjv07xjkUIC6YklqdmpqQWpRTBZJg5OqQbGSfO0Px0N+dYZ4L7+2OSb
 S56JTxDd9fk2j/kihvlGPkJHj7ruD0/YuFxg3cb62dbz1BY+Vb9vbP+y7Uj8jMq0Lx2vlEqN
 zKs+GGx0vMT669AeGV2pU5mx7i+1d2gXC824kbHiKUfNo+DiW5zOsw9MFF3h84Hp7IRll2ZL
 VT7eGP5nV7ldxpKcHUosxRmJhlrMRcWJAMWcZMnVAgAA
X-CMS-MailID: 20200122145401epcas5p28907c5b3800ca5410955a856bcd82c8e
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200122080213epcas5p46e361ac6fa299521c1bab3ab20862b46
References: <20200122080310.24653-1-faiz_abbas@ti.com>
 <CGME20200122080213epcas5p46e361ac6fa299521c1bab3ab20862b46@epcas5p4.samsung.com>
 <20200122080310.24653-3-faiz_abbas@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_065407_154108_0EBDB917 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, nm@ti.com, catalin.marinas@arm.com, t-kristo@ti.com,
 robh+dt@kernel.org, mkl@pengutronix.de, dmurphy@ti.com, davem@davemloft.net,
 wg@grandegger.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: linux-can-owner@vger.kernel.org <linux-can-owner@vger.kernel.org> On
> Behalf Of Faiz Abbas
> Subject: [PATCH 2/3] can: m_can: m_can_platform: Add support for enabling
> transceiver through the STB line
> 
> CAN transceivers on some boards have an STB (standby) line which can be
> toggled to enable/disable the transceiver. Add support for enabling the
> transceiver using a GPIO connected to the STB line.
> 

Looks good to me. 
Other than Dan's concern on stb  as standby,
Acked-by: Sriram Dash <sriram.dash@samsung.com>

> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
> ---
>  drivers/net/can/m_can/m_can_platform.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/can/m_can/m_can_platform.c
> b/drivers/net/can/m_can/m_can_platform.c
> index 38ea5e600fb8..b4e1423bd5d8 100644
> --- a/drivers/net/can/m_can/m_can_platform.c
> +++ b/drivers/net/can/m_can/m_can_platform.c
> @@ -6,6 +6,7 @@
>  // Copyright (C) 2018-19 Texas Instruments Incorporated -
http://www.ti.com/
> 
>  #include <linux/platform_device.h>
> +#include <linux/gpio/consumer.h>
> 
>  #include "m_can.h"
> 
> @@ -57,6 +58,7 @@ static int m_can_plat_probe(struct platform_device
*pdev)
> {
>  	struct m_can_classdev *mcan_class;
>  	struct m_can_plat_priv *priv;
> +	struct gpio_desc *stb;
>  	struct resource *res;
>  	void __iomem *addr;
>  	void __iomem *mram_addr;
> @@ -111,6 +113,16 @@ static int m_can_plat_probe(struct platform_device
> *pdev)
> 
>  	m_can_init_ram(mcan_class);
> 
> +	stb = devm_gpiod_get_optional(&pdev->dev, "stb", GPIOD_OUT_HIGH);
> +	if (IS_ERR(stb)) {
> +		ret = PTR_ERR(stb);
> +		if (ret != -EPROBE_DEFER)
> +			dev_err(&pdev->dev,
> +				"gpio request failed, ret %d\n", ret);
> +
> +		goto failed_ret;
> +	}
> +
>  	ret = m_can_class_register(mcan_class);
> 
>  failed_ret:
> --
> 2.19.2



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
