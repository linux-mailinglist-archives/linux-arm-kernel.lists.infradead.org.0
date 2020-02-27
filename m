Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0EE171835
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 14:06:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4xisn99Ci+u+P8x8esUQh+kPBy2XCMm2su2kHYn7NB4=; b=LJfaTKMqRXi63v
	QLzYVmOKrXgdARBGK02gjEyvdQamMS5y3pNwW3lBoiAAxEmKOtU2kKXXXfViWMwz/T8l/dqMSBCG+
	TofdQrYgt44WGQKX43AT52zmYQYkHUf2lxj+4Fl/SvYp5B/B6oA73xFS7rSvTCxBrbS2OfHIlh6Pm
	0hJn33oZC692HWaAd8l7QtgMaHDYgRLDbG03yT+wG8nkDGvhen6hzvx8pUp7Wc/tOWgjYCdNDurQ9
	wrJBBJPRhH8CyaCSYK13fHYsDjKzt5NBCjZK9bXVXb2UsqeP5EaOVff+YRDsovQRoIQFZiSM6I14F
	n7LQHK8+fZ1XTjmox5eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7IsG-00026v-2Y; Thu, 27 Feb 2020 13:06:44 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Is3-00026P-No
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 13:06:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id l5so3271155wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 05:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=r9UDArMRXs4Mmuh86mluCWMWz6S3F8bHKkTAV4tquwc=;
 b=dQtnK7x6rc9gwoWqwwCtjeX8IKsQYwxhnvCkjo7OaAfutwqX0KNKbfwdp90f9Xt2JE
 6jkxdR4yQYViWKAnnbjnOCs4ErCCNZBCX58u7Vdwj5KzuFhtoBhPVA/JnVW8FvZSVTlL
 5xZHiiUroijt74+FaCpVBJbmW0IdHZJ9yGhrwAwakr/dQhf2Y381D4kSf7R4mxqDWBsI
 xE8GwMEoj5UJgWPit/Os7rqW1NLdKv9SOpMZNScmbQy7B0INsrEs0UWouJ1nadIQc8Nb
 fFIeGrX6SvSfWwjkDO9/kl43hxybXGEUOeJfdQMEgQ0/Np0GyRFfwgVboVmaPb9VpqU7
 1k2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=r9UDArMRXs4Mmuh86mluCWMWz6S3F8bHKkTAV4tquwc=;
 b=BrM0nd5/ier/+4zUYl5s+k2t46R8HbjYuCCo7FI8szsE/OjiKP/bc+q2rMcCHlzLQI
 wMd1Q/9aP5IXTXSdCmnrSYJ824ftPOpjrqbyXOMIWBGi2ZAitPrmVQaEGbAKD6Piku/u
 ZhBhVJi/oc87ZCrxQAwLakAu8xaQsNBaOvLfS8nPzf8j25MxxVtRX73ZVpJFRrC0yszH
 9CyM69Dy5huNut4tp3hayQGK6nfxY/LxXCDTOR39+E2pIbulLA2WS90zzyjDaNaHrEtK
 Upwu1wOLnim9dyddmQ53IVLzCo8P+IvmvcAH9cLSQK7clBdQJD/7+8IveJsV6J7UX74G
 y60w==
X-Gm-Message-State: APjAAAW+doM+fkluPEso0CPnWI/uuJbC+PT9pRRPPqr0iyOupnyTQF6t
 id8U6pIHzoRXOcUG09B4jJo=
X-Google-Smtp-Source: APXvYqwyWG0bYHyhxsK+EnYYgz3YtoQiRKQcnmffBH+PsYQCzSZ2hjB04mCUtyT7ifXoL+j5W1XJ1g==
X-Received: by 2002:a05:6000:14d:: with SMTP id
 r13mr4793931wrx.63.1582808789241; 
 Thu, 27 Feb 2020 05:06:29 -0800 (PST)
Received: from localhost (dslb-002-207-138-002.002.207.pools.vodafone-ip.de.
 [2.207.138.2])
 by smtp.gmail.com with ESMTPSA id p16sm7151635wrw.15.2020.02.27.05.06.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 05:06:28 -0800 (PST)
Date: Thu, 27 Feb 2020 13:57:43 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: aisheng.dong@nxp.com, anson.huang@nxp.com
Subject: RFC: imx8qm: imx-scu-clk: probe of clk failed
Message-ID: <20200227125743.GC16310@optiplex>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_050631_800023_74ADF9F6 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:430 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oliver.graute[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-imx@nxp.com,
 leonard.crestez@nxp.com, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Aisheng,
Hello Anson,

I get the following imx-scu errors when using Linux version
5.6.0-rc1-next-20200214 with scfw Build 3353, Commit 494c97f3

It seems that important clocks are off somehow and that lpspi isn't
working because of that. What is the best way to debug such issues?

[    1.103799] imx-scu scu: NXP i.MX SCU Initialized
[    1.111383] a35_clk: failed to get clock rate -22
[    1.122843]  lcd0-pwm0: failed to power up resource 188 ret -22
[    1.128438] imx-scu-clk: probe of pwm_clk failed with error -22
[    1.134746]  lcd0: failed to power up resource 187 ret -22
[    1.139898] imx-scu-clk: probe of lcd_clk failed with error -22
[    1.151177] mipi_csi0_core_clk: failed to attached the power domain -2
[    1.157581] mipi_csi0_esc_clk: failed to attached the power domain -2
[    1.163985] mipi_csi0_i2c0_clk: failed to attached the power domain -2
[    1.170524] mipi_csi0_pwm0_clk: failed to attached the power domain -2
[    1.181817] imx8qm-pinctrl scu:pinctrl: initialized IMX pinctrl driver
[    1.211140] random: fast init done
[    1.216039] 5a060000.serial: ttyLP0 at MMIO 0x5a060000 (irq = 8, base_baud = 5000000) is a FSL_LPUAR[    1.225100] printk: console [ttyLP0] enabled
[    1.225100] printk: console [ttyLP0] enabled
[    1.233543] printk: bootconsole [lpuart32] disabled
[    1.233543] printk: bootconsole [lpuart32] disabled
[    1.243549] fsl-lpuart 5a060000.serial: DMA tx channel request failed, operating without tx DMA
[    1.252275] fsl-lpuart 5a060000.serial: DMA rx channel request failed, operating without rx DMA
[    1.261868] 5a070000.serial: ttyLP1 at MMIO 0x5a070000 (irq = 9, base_baud = 0) is a FSL_LPUART
[    1.270767] fsl-lpuart 5a070000.serial: DMA tx channel request failed, operating without tx DMA
[    1.279481] fsl-lpuart 5a070000.serial: DMA rx channel request failed, operating without rx DMA
[    1.289310] fb_st7789v spi0.0: fbtft_property_value: buswidth = 9
[    1.296105] fsl_lpspi 5a010000.lpspi: failed to enable clock
[    1.301771] spi_master spi0: failed to prepare transfer hardware: -13
[    1.308231] fb_st7789v spi0.0: write() failed and returned -13


Best regards,

Oliver

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
