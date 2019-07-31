Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F917CD8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 22:02:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yuw3iVWuM6lNqov+OwKX7lJqu5TJFMU0P2uWerBU/EI=; b=FQtfhjBt0BApY+
	YAFNPmUBApUvvw0CIwsWmOvSFwMJ0G+Z40HHoCIOnmGsoRAqTfdVTP3IKcxUY00NyH7udnhGuXJRA
	YyBottfZKfAH/GQ/ERUHUIRdCGpkuDthjqvZJjwzbQCtYiq38yTt/7t7ueDbiR43RoxCLGFVubmsA
	SKDostKQddVhbjjejQsApkBRkKZaHaMaGW70xCea13fT+73Vj09/0BpTIGeQQaiWpBpGu9sbmS7TS
	lQTV/8W+aZTOzddHpnZTRHcJ7GH8jjzdBDP18mxs0LUX733V4KmFvGkFi2RtrPKXw4g+rbmnZjo1e
	ZlxZBlXwWEglKsevdgpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsund-0002Xp-GF; Wed, 31 Jul 2019 20:02:13 +0000
Received: from atlmailgw2.ami.com ([63.147.10.42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsunN-0002Ls-BF
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 20:01:59 +0000
X-AuditID: ac10606f-d11ff70000003324-8e-5d41f3b03e75
Received: from atlms1.us.megatrends.com (atlms1.us.megatrends.com
 [172.16.96.144])
 (using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by atlmailgw2.ami.com (Symantec Messaging Gateway) with SMTP id
 A3.A0.13092.0B3F14D5; Wed, 31 Jul 2019 16:01:52 -0400 (EDT)
Received: from hongweiz-Ubuntu-AMI.us.megatrends.com (172.16.98.93) by
 atlms1.us.megatrends.com (172.16.96.144) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 31 Jul 2019 16:01:51 -0400
From: Hongwei Zhang <hongweiz@ami.com>
To: Andrew Jeffery <andrew@aj.id.au>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
Subject: [v7 0/2] gpio: aspeed: Add SGPIO driver
Date: Wed, 31 Jul 2019 16:01:35 -0400
Message-ID: <1564603297-1391-1-git-send-email-hongweiz@ami.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [172.16.98.93]
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHLMWRmVeSWpSXmKPExsWyRiBhgu6Gz46xBiuaDCx2Xeaw+DL3FIvF
 /CPnWC1+n//LbDHlz3Imi02Pr7FaNK8+x2yxef4fRovLu+awWSy9fpHJonXvEXYHbo+r7bvY
 PdbMW8Po8f5GK7vHxY/HmD02repk87hzbQ+bx+Yl9R7nZyxk9Pi8SS6AM4rLJiU1J7MstUjf
 LoEro/vcBPaCp+wV/9+fZWxgbGXrYuTkkBAwkbi3A8Tm4hAS2MUkMevfBWYI5zCjxISf35hA
 qtgE1CT2bp4DZosI5EkcXv+WFaSIWeAUk8SMfZ2sIAlhAQOJee1zmUFsFgFViXN774A18ArY
 S2z7t54JYp2cxM1zncwQcUGJkzOfsIDYzAISEgdfvACLCwnIStw69BiqXkHied9jlgmMfLOQ
 tMxC0rKAkWkVo1BiSU5uYmZOermRXmJupl5yfu4mRkiY5+9g/PjR/BAjEwfjIUYJDmYlEd7F
 4vaxQrwpiZVVqUX58UWlOanFhxilOViUxHlXrfkWIySQnliSmp2aWpBaBJNl4uCUamBMaLqf
 pOM6K2tCuYtvEJNQYAuvlt7pF3e95T/kJbtu27Pxy7fUhyXM3Hy3s2q9Fx11KzBwkpD+umnN
 eReHLWoJjx69ei3C1pt0pae8k/2X0v5cfnOJnh8n2W55Fs1eeG+X1cNuMbY910UL//x1lvL4
 3yv4Z5V+wC6+vywlPtPl+t1LVFN/dymxFGckGmoxFxUnAgB+9vPoYQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130157_475208_53C90A17 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [63.147.10.42 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Hongwei Zhang <hongweiz@ami.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This short series introduce dt-binding document and a driver for the 
Aspeed AST2500 SGPIO controller. Please review.

[v7]:   Changes between v6 and v7:
        - fix missing variable 'reg' assign issue in aspeed_sgpio_set()
        - v6 feedback updates

[v6]:   Changes between v5 and v6:
        - fix a bug in aspeed_sgpio_dir_out()
        - v5 feedback updates, some comments cleanup

The related SGPM pinmux dt-binding document, dts, and pinctrl driver
updates have been accepted and merged:
_http://patchwork.ozlabs.org/patch/1110210/

Hongwei Zhang (2):
  dt-bindings: gpio: aspeed: Add SGPIO support
  gpio: aspeed: Add SGPIO driver

 .../devicetree/bindings/gpio/sgpio-aspeed.txt      |  55 +++
 drivers/gpio/sgpio-aspeed.c                        | 530 +++++++++++++++++++++
 2 files changed, 585 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/gpio/sgpio-aspeed.txt
 create mode 100644 drivers/gpio/sgpio-aspeed.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
