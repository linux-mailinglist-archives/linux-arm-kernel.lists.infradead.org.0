Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19E138D83
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:17:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sRvnRmKDJ2NENA6Bc5+WVdnF2VMCRuaWxKX0s1aZNY=; b=LdVAs2FYZThB1z
	UjrlMZo4uKVhYteeUVq77GmrzQ+1fXbiGo3TfaH/Okm01tuUcI/cUyNM4N9VxgKbvqq+4S/SyQl+0
	RMqNsqrQ309ZgSk9kABIAQIhTXKVpgOX8BPtntpVpYDyGBPHQG9VW8yWCHDDjLT/67KQ7zZVTKVU1
	1mjvPo+9HRGjdcNPF3adBJCeiflepXQGEM+Swy51r8i5XpffB5zj6IS1PTfs5LPfs+HcCJbayW0Sw
	BqG4NSXZ8CWSL5C7r+2DbeOTik7ZIXEqTYljih+nCVUyqhWdEs0PU2aeiL3mgkJeweGl+t3EZAi0P
	rR6PhquLwPyGnP5BFB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvqD-0001pZ-E5; Mon, 13 Jan 2020 09:16:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvpT-0001UM-Qb
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 09:16:16 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iqvpJ-0000eB-1E; Mon, 13 Jan 2020 10:16:01 +0100
Message-ID: <a4ff0a8571895c65ed5c20abd0c332b0d92defab.camel@pengutronix.de>
Subject: Re: [PATCH v6 2/6] mailbox: sun6i-msgbox: Add a new mailbox driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Samuel Holland <samuel@sholland.org>, Maxime Ripard
 <mripard@kernel.org>,  Chen-Yu Tsai <wens@csie.org>, Jassi Brar
 <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>, Vasily
 Khoruzhick <anarsoul@gmail.com>
Date: Mon, 13 Jan 2020 10:15:58 +0100
In-Reply-To: <20200113051852.15996-3-samuel@sholland.org>
References: <20200113051852.15996-1-samuel@sholland.org>
 <20200113051852.15996-3-samuel@sholland.org>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_011611_886127_31E05EC7 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, 2020-01-12 at 23:18 -0600, Samuel Holland wrote:
> Allwinner sun6i, sun8i, sun9i, and sun50i SoCs contain a hardware
> message box used for communication between the ARM CPUs and the ARISC
> management coprocessor. This mailbox contains 8 unidirectional
> 4-message FIFOs.
> 
> Add a driver for it, so it can be used for SCPI or other communication
> protocols.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
>  drivers/mailbox/Kconfig        |   9 +
>  drivers/mailbox/Makefile       |   2 +
>  drivers/mailbox/sun6i-msgbox.c | 332 +++++++++++++++++++++++++++++++++
>  3 files changed, 343 insertions(+)
>  create mode 100644 drivers/mailbox/sun6i-msgbox.c
> 
[...]
> diff --git a/drivers/mailbox/sun6i-msgbox.c b/drivers/mailbox/sun6i-msgbox.c
> new file mode 100644
> index 000000000000..15d6fd522dc5
> --- /dev/null
> +++ b/drivers/mailbox/sun6i-msgbox.c
> @@ -0,0 +1,332 @@
[...]
> +	reset = devm_reset_control_get_exclusive(dev, NULL);
> +	if (IS_ERR(reset)) {
> +		ret = PTR_ERR(reset);
> +		dev_err(dev, "Failed to get reset control: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}
> +
> +	/*
> +	 * NOTE: We rely on platform firmware to preconfigure the channel
> +	 * directions, and we share this hardware block with other firmware
> +	 * that runs concurrently with Linux (e.g. a trusted monitor).
> +	 *
> +	 * Therefore, we do *not* assert the reset line if probing fails or
> +	 * when removing the device.
> +	 */
> +	ret = reset_control_deassert(reset);
> +	if (ret) {
> +		dev_err(dev, "Failed to deassert reset: %d\n", ret);
> +		goto err_disable_unprepare;
> +	}

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
