Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD29D1D8ADD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qlWW8CIUQxxNMS7hGICVmQJkZchv43KVO9ILykCD7g=; b=rgJMuYjYTwBtsn
	rHiVn3CBJnVza4KcHp/24e4Q3j8+kjyzXSjHJ+ufNTBMUQRGSA1aADamUR3SVH04udUloX8lhr9YQ
	7FSFPkaaaUlNrWyakmrfwJ8cj8uQFyekWh+dEuNNCxBHTtSMcraMYGJSfAhM0yiemvB+YJ+lbTwvX
	Ba41Kfcee8nsUn8TJNHS3E8YF+vs9PN7eufcYlwtyhrHLhlh8lFa38vXJ/oA3YQXLzeaXy1PnCqXZ
	kj/AFs1m1ShJH9djgMzd1Q45GWLgKoZkSXlioEhX5hh7qdFZD/+46aPjnSyqwF0HfUauNaG90K7Dt
	PRfLaqiOBxc3jBAqki2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoGM-00011N-Mn; Mon, 18 May 2020 22:29:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0008OD-3W; Mon, 18 May 2020 22:28:12 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEv-00005F-7R; Tue, 19 May 2020 00:28:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: remove disable-wp from
 rk3308-roc-cc emmc node
Date: Tue, 19 May 2020 00:27:58 +0200
Message-Id: <158984064169.2259329.2215953121884920884.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20191219121954.2450-1-jbx6244@gmail.com>
References: <20191219121954.2450-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152810_161116_AE5EEC3F 
X-CRM114-Status: UNSURE (   8.02  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 19 Dec 2019 13:19:54 +0100, Johan Jonker wrote:
> The mmc-controller.yaml didn't explicitly say disable-wp is
> for SD card slot only, but that is what it was designed for
> in the first place.
> Remove all disable-wp from emmc or sdio controllers.

Applied, thanks!

[1/1] arm64: dts: rockchip: remove disable-wp from rk3308-roc-cc emmc node
      commit: 1fab4cf51e48e9525cf70a9604e90dd3dd666a2f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
