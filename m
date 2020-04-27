Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987EF1BAE40
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 21:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRawNhX2IZDdXGhpVdK6v5G5/qOFDnV7NLMYXB9Pd0U=; b=EvfH4vHz3uLJBm
	tbwuuzkUZCcBWXUiwLGfS1OY/phqj3p8dWNIbdkKYXh/QmVH1/QOogqaII6C/I7Gwkl34Kk8rCkKO
	VwxrWliDL17NikaHNyC3AWSnuDb5JS3DTOERcuG0jKOHynEtz0iSjumYydq/OL5C0mPnEPGC73TFM
	/3q2ch8L5SyQd21FgxreEn7Wbjley64COTexbBpp5t1P0nEPYTPsD1P2hf9kw8fvBJwrxQibG99q+
	xnCkG0ftdvz5QgAebSZDneeMzu7fOW7g18HaVf2ATjpR1LtQG2VlydzfNhOn+X5PacfMmSIorR/3E
	B7YET4aKE8T6LbYq7j0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9ew-0003As-53; Mon, 27 Apr 2020 19:43:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9eC-0002j5-RR; Mon, 27 Apr 2020 19:42:34 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jT9eB-00007W-C8; Mon, 27 Apr 2020 21:42:31 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: fix pinctrl sub nodename for spi in
 rk322x.dtsi
Date: Mon, 27 Apr 2020 21:42:26 +0200
Message-Id: <158801649141.50507.14560694452002330366.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200424123923.8192-1-jbx6244@gmail.com>
References: <20200424123923.8192-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_124232_891936_B5974B86 
X-CRM114-Status: UNSURE (   8.22  )
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

On Fri, 24 Apr 2020 14:39:23 +0200, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-0:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-1:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-0:
> '#address-cells' is a required property
> arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-1:
> '#address-cells' is a required property
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: fix pinctrl sub nodename for spi in rk322x.dtsi
      commit: 855bdca1781c79eb661f89c8944c4a719ce720e8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
