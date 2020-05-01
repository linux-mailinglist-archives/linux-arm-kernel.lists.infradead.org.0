Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CB21C19F4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRkS4m36XAyywkrvU1IScqFVkf3V88d43Wj2twQMgYk=; b=DLkwjTNTYndX8P
	oqjgOZB/YQPUUAN4Ba8ZZTwGZReA3S0ndK3oTTg0NVBy7BCyDgXWvRdutZ6WT5WtWrmXCWmU5P0lj
	hJcv+qcUQaTv1sppTim/Occ95v76+h/tZrcYK8x7ySldYjJQbmFwyT5gFzb8AmBg51O4YsEyY5gS9
	tA6WVCIFfsl169JKjnxnIbhUx+wNl3jzhWPI3EhjD0Yv5JTSNE5S6p+t4Yp6agGckcHV5H0o/t5+d
	tAvx4TvPvnwoZIKdxHuHT8ZdVuwrKJrEkZhFQ+wsDbfI5lCaa+t+DXc5+PZdDDO8uC458g14xAVqN
	q0sy88NXRBmNHBUW5oug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXqm-0003B8-K1; Fri, 01 May 2020 15:45:16 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXqR-00039C-IT; Fri, 01 May 2020 15:44:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zq53wD1ebttWy9Fs+bAkUBp+KMkAbk1gvP4L0POpNiA=; b=g9Y63QfCt8YuvaP45/GWgzLNj8
 no//b6ULwxrn4pBY9MHOk89RSiunJY/l98hVSjVfsLNrIuLgM/KQfMzLn1fYX+lQW0qRLzMOvy1Ta
 lFnR3/T4p7PWi6B/VbYak39g5tqWm4oIXxzQB5PjCtHV+QNLsdO/I3HQoav+YkAlNQd4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jUXqK-000YMy-7n; Fri, 01 May 2020 17:44:48 +0200
Date: Fri, 1 May 2020 17:44:48 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [PATCH RFC v2 08/11] net: stmmac: dwmac-meson8b: add support for
 the RX delay configuration
Message-ID: <20200501154448.GH128733@lunn.ch>
References: <20200429201644.1144546-1-martin.blumenstingl@googlemail.com>
 <20200429201644.1144546-9-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200429201644.1144546-9-martin.blumenstingl@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_084455_608300_A478717E 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, jianxin.pan@amlogic.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +	if (rx_dly_config & PRG_ETH0_ADJ_ENABLE) {
> +		/* The timing adjustment logic is driven by a separate clock */
> +		ret = meson8b_devm_clk_prepare_enable(dwmac,
> +						      dwmac->timing_adj_clk);
> +		if (ret) {
> +			dev_err(dwmac->dev,
> +				"Failed to enable the timing-adjustment clock\n");
> +			return ret;
> +		}
> +	}

Hi Martin

It is a while since i used the clk API. I thought the get_optional()
call returned a NULL pointer if the clock does not exist.
clk_prepare_enable() passed a NULL pointer is a NOP, but it also does
not return an error. So if the clock does not exist, you won't get
this error, the code keeps going, configures the hardware, but it does
not work.

I think you need to check dwmac->timing_adj_clk != NULL here, and
error out if DT has properties which require it.

      Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
