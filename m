Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82361876CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 01:26:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVnlxwf0hi9kIe1eJcmHtQSaSMlYt0VcPoZtGJJ7NYo=; b=RfWM4w1LsW/uhn
	fW8N9kc1gQNDNe4+TmmSE6nIFMPiohIYsQUD2Xx2Oynm9tqtFrlAtXEXPK3tbzM5aeHip8wWTAe9i
	om3HH/bdIV+pAD4fn260E9WAYl8rNhjmwZjkmpTIMMb5Udflr+Vk54ztpN6HB8myjGjgRvJBJiDdk
	ft/i95Ktp48YOHq/Dz56JGUdxIG7Q6Xqpp72bFDhhDhxHXUW/QarGuv88d5rXtWiP6M+YFkQB8fWC
	cCp5Bsl0Mu64nJKHjk6ZYI+qpFDTft7THS4VcLEzLwONRMMqjpsQTDYrtX93++PNzXwsDklhiQtEg
	j8Mz/va3jGtHbu6BXsiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE043-0006l9-G6; Tue, 17 Mar 2020 00:26:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE03s-0006f9-35; Tue, 17 Mar 2020 00:26:25 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jE03p-0004NN-Kj; Tue, 17 Mar 2020 01:26:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Subject: Re: [PATCH] ARM: dts: rockchip: use DMA channels for UARTs for RK3288
Date: Tue, 17 Mar 2020 01:26:21 +0100
Message-ID: <2031112.Bdp2p14rd6@phil>
In-Reply-To: <20200315095115.10106-1-katsuhiro@katsuster.net>
References: <20200315095115.10106-1-katsuhiro@katsuster.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_172624_280344_892592B7 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 15. M=E4rz 2020, 10:51:15 CET schrieb Katsuhiro Suzuki:
> This patch enables to use DMAC for all UARTs that are connected to
> dmac_peri core for Rochchip RK3288.
> =

> Only uart2 is connected different DMAC (dmac_bus_s) so keep current
> settings on this patch.
> =

> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>

applied for 5.7

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
