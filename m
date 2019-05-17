Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7782C2162B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpu6dq+7xBhWuUjQJUUAH/8pP0AwLQn6egemBEwEAhc=; b=J/P6v2YtGS0D9W
	VsqvmprRKl9t4sdfRZWBNPPQXesHsqJ4vUSYDuTpYObWkrqJxTv8F1tIgtWIQlqNYzOt8XWxwaT9q
	emudIjLnGIqG6yfeEvvivToX5FKJX9G1GXagcEVE/ume/XoOqr2041fjn3WwIIlxm1HyZpPZ0w5Qe
	k9Lq201OHdsnJyoH/xJz389hbBuSkLrGB5r+2zLNpJ3TEJVJzgZleZubcSMhvCJVYbFhhtD4FtY7x
	9OuPe5Le6v4xKm+/khZGYLjDD+j4KyxaKuqhT19Af7TXqRIQ2sVtt0vB1eYXo3OO75qvIVjo6Y8hj
	Z5CS1k3tvNCASQ4ReSWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZ4E-0007gm-7F; Fri, 17 May 2019 09:22:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZ45-0007fJ-7g; Fri, 17 May 2019 09:22:10 +0000
Received: from we0524.dip.tu-dresden.de ([141.76.178.12] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hRZ42-0001Ab-69; Fri, 17 May 2019 11:22:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] arm64: dts: rockchip: add PCIe nodes on rk3399-rockpro64
Date: Fri, 17 May 2019 11:22:05 +0200
Message-ID: <45858032.MVTSb7sYM0@phil>
In-Reply-To: <20190509170314.12806-1-katsuhiro@katsuster.net>
References: <20190509170314.12806-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_022209_423451_C61229B6 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 9. Mai 2019, 19:03:14 CEST schrieb Katsuhiro Suzuki:
> This patch adds PCIe, PCIe phy and pinctrl (for PERST#) nodes for
> RockPro64 board.
> 
> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 5.3 after a bit of alphabetical sorting
- num-lanes above pinctrl properties
- pcie-perst above pcie-pwr-on pinctrl entry


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
