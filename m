Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F677138DB2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 10:24:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMAMmmY8aZ3u2/1MMZMRKbf6uIwa5uDxK4Kateoj1Pg=; b=RDLJ7FW7EeWkaq
	1G5/Vrp+YTQkdpD7W4UGx5WRgHNe8JQbNJNiELN2nFjmNniDb2xET08VmZhnFEd0dUxykwADlC2VU
	XT7kHg9hJ3lIYcUSDw1unA9tYCnqynzFWS0Bwv9VSu4/Zk1Mcv5MP2ynRHJ0Gjt2KlOeSE64cDImt
	aQYgvWWRKCiK2Ntle8Vlkk9zZpHBnOdJ1TmiQiBmTz97kgzAB8ka4dgAelin9F3NyX9oo9uzpD/PZ
	1bl9kvClq9eXbbyS+gaQZWfuD+uZWHA+MTmCJQDKcfLXJdHEUVspZVeg9UCbgK8riQEnIp7ZmI2cZ
	SC5c3gj+RIGiOW+C277A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvxF-0006QW-Tq; Mon, 13 Jan 2020 09:24:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvx6-0006Ps-MI; Mon, 13 Jan 2020 09:24:05 +0000
Received: from wf0253.dip.tu-dresden.de ([141.76.180.253] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1iqvx3-0001zw-Vv; Mon, 13 Jan 2020 10:24:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Mon, 13 Jan 2020 10:24:01 +0100
Message-ID: <1821445.7jhtsCTu8y@phil>
In-Reply-To: <20200110142128.13522-1-jbx6244@gmail.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012404_875530_A487465E 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 10. Januar 2020, 15:21:28 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> rk3399-firefly.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-orangepi.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-captain.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> rk3399-khadas-edge-v.dt.yaml: dwmmc@fe310000: wifi@1:
> 'reg' is a required property
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
