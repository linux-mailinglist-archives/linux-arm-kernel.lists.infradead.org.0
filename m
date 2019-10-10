Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C129D3422
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 01:01:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CSgWdQFmmipRfkbY0mKNVIILPZLc1g0Mx2salmPKNEs=; b=c41ajAptKV6/cp
	rizTS1bu3DcVsKCgTZw4airQ4uPFE/QDl5mqfXxhLhmHG/ceZR6RxFBqDg5UQcD8WQrMhuk331DFR
	PKRWC/tUH9J//QiP+Ln375TUT6WC5cYEpEQBdzHmfR0t1Ywlsp3bBBGgz5KrVu5XW/gHt5/bkqIbq
	gffSVLj6KUacFPHM6YpqHes0J1DzSxx8KuRGiZX7Q2m4Uihk0aJghMkmforN3iW9Jn5idlS2/UPbe
	ejcFcz9JZXh+fcHYQrO6WsBtFkwze2A4RePYJkt7jAI61xYJzjHsJKMmzDNB/v9BPdKHPo9annXdn
	BXdjHSVigxvOlNjCvk+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIhR4-0001f9-DS; Thu, 10 Oct 2019 23:01:30 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIhQv-0001eJ-FB
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 23:01:22 +0000
Received: by mail-qt1-x841.google.com with SMTP id u40so11134143qth.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 16:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=hKb1hJiJoZr7sDzi9awmt+z6YG7rgK/yyFTSM1pIHvc=;
 b=rBl0cx6+eIElwhvMYT30TfWDTrbVzMZqR9vc1u08+8UkgRFWwsWJItiHPlbIz75bbO
 yjErSPaO+d+mOXOukCkpOiBJnqGmHKu50/Uyz9FW/epJCtKe8478nPgRPB6CcvAY1a1I
 Ceuu7vL7cH8gJEFTgdiOM8xNWMPqzJ4hpm14bppd6CQU3FROOOIgnoJhKh5GJ4rvJ7G7
 trLU5f3s1a3fEC2JtQtzqks393lZwdH9IdblrWwCQZ01vQ7JRdlrHsiigbRxkJSzRSvm
 +LnPGfJbwjrZh5kS1fHLpLjgKlFwoFNpuGaKfGkNdVIg8LEUr2UFHovhiakkDrFMacbh
 yd9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=hKb1hJiJoZr7sDzi9awmt+z6YG7rgK/yyFTSM1pIHvc=;
 b=PN500sZUxxLJPDToaLMxk3gjykUYUD03U4teFcuapC+1H0sNg06hiXWb8c4RtEmWE+
 LW4RmywKf/xoZB1X7i9FDOobmBWwuXBqZA1wBVDIoIZ8ylWYiXqaHuC6TpGiTwllSQ9l
 aIvsoWjPchVtSOBd7AAd+I4CokfszBSeijdsK1LArItpzsdCChMH/VjrkR8aZwjqwc0e
 cGEx9h9x8q9XOJPRx6fwbliIETKjL0XNV+MQNiv+8vNNed1HQD5CdpBKp9IYSsuqlQic
 Caox1nreqvz1NdpGN+468DlIue36GCzIzRFUWsJoNPo1uBICVWznhzUHp4lwE8auuHb5
 8J4g==
X-Gm-Message-State: APjAAAXlh6s+HlfLfKO5xaWzSUliD8DD0OkkHnFIEJTSjmqfgBzmhohv
 GOzClOEfBvhnr8j6WV10fWNLLA==
X-Google-Smtp-Source: APXvYqzlvVcUTrNNKzaif/kXN8GZwkAMecaGfYJIaGrr9Y2IjFLnQDpHQHTA/hY/Sd8K4BincCEN3w==
X-Received: by 2002:a0c:f8cd:: with SMTP id h13mr12808457qvo.53.1570748480202; 
 Thu, 10 Oct 2019 16:01:20 -0700 (PDT)
Received: from cakuba.netronome.com ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id 64sm3058098qkk.63.2019.10.10.16.01.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 16:01:20 -0700 (PDT)
Date: Thu, 10 Oct 2019 16:01:03 -0700
From: Jakub Kicinski <jakub.kicinski@netronome.com>
To: Biao Huang <biao.huang@mediatek.com>
Subject: Re: [PATCH] net: stmmac: disable/enable ptp_ref_clk in
 suspend/resume flow
Message-ID: <20191010160103.63c3c0ed@cakuba.netronome.com>
In-Reply-To: <20191009085649.6736-1-biao.huang@mediatek.com>
References: <20191009085649.6736-1-biao.huang@mediatek.com>
Organization: Netronome Systems, Ltd.
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_160121_572679_23B4056A 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com,
 Alexandre Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, yt.shen@mediatek.com,
 Jose Abreu <joabreu@synopsys.com>, linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 9 Oct 2019 16:56:49 +0800, Biao Huang wrote:
> disable ptp_ref_clk in suspend flow, and enable it in resume flow.
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index c7c9e5f162e6..b592aeecc3dd 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4469,6 +4469,8 @@ int stmmac_suspend(struct device *dev)
>  		stmmac_mac_set(priv, priv->ioaddr, false);
>  		pinctrl_pm_select_sleep_state(priv->device);
>  		/* Disable clock in case of PWM is off */
> +		if (priv->plat->clk_ptp_ref)
> +			clk_disable_unprepare(priv->plat->clk_ptp_ref);

I don't know much embedded, but it seems like this should perhaps just
be clk_disable() without the unprepare? stmmac_hw_teardown() is called
when driver is removed so it needs to unprepare as well.

Please feel free to explain to me why this needs to be
clk_disable_unprepare(), as I said - not an expert.

Also - if this is a bug fix and you'd like to have it backported to
older releases you need to add a Fixes tag.

Thanks!

>  		clk_disable(priv->plat->pclk);
>  		clk_disable(priv->plat->stmmac_clk);
>  	}
> @@ -4535,6 +4537,8 @@ int stmmac_resume(struct device *dev)
>  		/* enable the clk previously disabled */
>  		clk_enable(priv->plat->stmmac_clk);
>  		clk_enable(priv->plat->pclk);
> +		if (priv->plat->clk_ptp_ref)
> +			clk_prepare_enable(priv->plat->clk_ptp_ref);
>  		/* reset the phy so that it's ready */
>  		if (priv->mii)
>  			stmmac_mdio_reset(priv->mii);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
