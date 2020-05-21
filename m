Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A781DC37D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 02:17:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cVAmg7HRZSe6mzBJa7BSJ1LXYimuaXlL1qbQu1HFHxE=; b=kVOuzSpRWXfQ1/
	xIK+6WkybSqEkBmDA60vXaTyoKC+01XlBrcWwSrEjRmx6Y2xFXO6UEdBllX3SK+K0x3nS6lxcKE0g
	8Ci5r/fDtasddx9I9HrZcd3sroIZ+DTb/Xpd/QAO9cWH3H3ZshyoMg2z/l6/uKhXK+92O+TP7zkru
	VHb249RnPHPize95i6iugknGIg22bDUK1rJsl0WJ49ihUyzN3a2d6Nq7pEs/0R85gySslJp/xsBdH
	YsFKhNrnzppNZ14xNDNigSnhDeKU//L4Gh73s/Um/x69XI5tgfpgq+T6CuISiXyrBtaqnmlIAEDfS
	nojBEctOu8w2d9oeFttQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbYu6-00045r-0g; Thu, 21 May 2020 00:17:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbYtu-00044G-5n; Thu, 21 May 2020 00:17:31 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jbYtq-0005Re-SD; Thu, 21 May 2020 02:17:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix pinctrl-names for gpio-leds
 node on rk3326-odroid-go2
Date: Thu, 21 May 2020 02:17:25 +0200
Message-Id: <159002021954.2754417.8270198597807714801.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200519111444.2208-1-jbx6244@gmail.com>
References: <20200519111444.2208-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_171730_216786_2DE122EB 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 19 May 2020 13:14:44 +0200, Johan Jonker wrote:
> The 'pinctrl-names' property should contain a list of names
> to the assigned states. The value 'led_pins' in the gpio-leds
> node on rk3326-odroid-go2 is not a state that is normally used,
> so change it the common name 'default'.

Applied, thanks!

[1/1] arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2
      commit: b2cb68e864222eb3cc1d7c3c06edc40469699983

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
