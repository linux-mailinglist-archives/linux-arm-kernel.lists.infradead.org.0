Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE6E1AFA19
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 14:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JumBJrA9H5/1v3KeJvPSpcx02V7XmZcnGqGl6VX0sjM=; b=aqqyZI8QjpALmu
	tYdUFPBeIbPvZs9rQkxc+A9/HWM2WpP4ugjXBfd7E+YuWbFJSGd+kzbsc6NcnusbGX6tLrobWdM/r
	YyuCcC8vm8nbblMvyltzsvKEYMEAdNH9C4qOqgfViwVHa3je5W+l6hoKvjnqp1S6umuLGsm65QhYS
	b0OMcoQ3st39qoEspwGX6v1AsB1rn89PYZY/wa9Eri2o7CtK3GxMEoMu2irsI2UdEGkPmUvO3F10j
	nrTYexaw1MKxqQBqbiGWZAKNIYD39W18OyUmk6yHa/n2MNm7werfr3eJQsWKKAvGIOzOgreLtvaF4
	MabJ3HIvbKkZ6LtkMxKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ9CZ-0003kN-2z; Sun, 19 Apr 2020 12:37:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ9BE-0002hI-Dv; Sun, 19 Apr 2020 12:36:13 +0000
Received: from p508fcedd.dip0.t-ipconnect.de ([80.143.206.221]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jQ9BB-0006k5-Ie; Sun, 19 Apr 2020 14:36:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in
 rk3308-roc-cc.dts
Date: Sun, 19 Apr 2020 14:35:57 +0200
Message-Id: <158729964648.70529.8094316995318301220.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415131057.2366-1-jbx6244@gmail.com>
References: <20200415131057.2366-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_053612_498074_7B931FC2 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 15:10:57 +0200, Johan Jonker wrote:
> The 'bus-width' property for mmc nodes is defined both in
> 'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
> 'bus-width' and pinctrl containing the bus-pins
> should be in the same file, so remove all entries
> from mmc nodes in 'rk3308-roc-cc.dts'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc
      commit: 051083dddf07a4472bc1720d5c2b1909e0865890

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
