Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0C71D8AD3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ilfJZN2Sq9uwGaYSiX2IpW2Tc24tptX0TaGC7P4aY2E=; b=Th/lTjuOTN3DYc
	tHoEIsSMxr2jz0yOaO6hgSXZn7XZPSfB5hZa0JFMXilmqVYyZWMB832ZCM1Q5kX2zaXSo4/GhLORw
	u2+T5Nc2W+RjDJO1thB9E/OUbexOKXBsArUIjghqYCYZMCB3g0RcS0PGq9qYJUQO0SEWJ2nAq61VG
	wk9fg1nhNj8updZds08TlGP5LzvDcfgacnf6F3+3UYduQBLywUk/zLX+RRHuUclsD6EuqiUlSz3u6
	iFDq7XNZHt9604e0eJx6HFn4Ozyto1f2v+5fGxg7BvuLOgaWVu3oWESOrBArQWroC/9gs16zvL6xd
	0kpQcRtBhHYQSEjMOx4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoFM-0008RV-Bt; Mon, 18 May 2020 22:28:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0008OB-49; Mon, 18 May 2020 22:28:11 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEv-00005F-Ff; Tue, 19 May 2020 00:28:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/2] ARM: dts: rockchip: rename and label gpio-led
 subnodes
Date: Tue, 19 May 2020 00:27:59 +0200
Message-Id: <158984064169.2259329.4243090830868839814.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428144933.10953-1-jbx6244@gmail.com>
References: <20200428144933.10953-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_152810_166914_6E02A2CD 
X-CRM114-Status: UNSURE (   8.90  )
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

On Tue, 28 Apr 2020 16:49:32 +0200, Johan Jonker wrote:
> Current dts files with 'gpio-led' nodes were manually verified.
> In order to automate this process leds-gpio.txt
> has been converted to yaml. With this conversion a check
> for pattern properties was added. A test with the command
> below gives a screen full of warnings like:
> 
> arch/arm/boot/dts/rk3188-radxarock.dt.yaml: gpio-leds:
> 'blue', 'green', 'sleep'
> do not match any of the regexes:
> '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
> 
> [...]

Applied, thanks!


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
