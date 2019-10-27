Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B0BE64BE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 18:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoWb09cTaB3BJ5GBU1NRmhIMcnr4LiMwNYo+jlJ2dWs=; b=TlpUcWpCeq/tI5
	rzbrb29UA74rrGKysgW/vFGhBssydxWNJL6lMbvD5WmX9SI1MTvlWhZgl/Ou9k7UAqxxGLWDg7ZEX
	lvOajeVpn6qEnsfUicSA3IZ13mR8GCIaLaijHgeq1ifziCRxayqowS01xLNBlmJsdFl8d6IDUxZck
	H2DHn4JFJy9I/G0Gqj9OqNRQua0L+YaVgUWz+YMJAM4kMR+PF0n2YZbKlRBjtl3gvjS62lKI3V54A
	9ZJzzMwrd+Wz9nUUj2Ame0nAiFtGGIWz10thrpIs+pmepdDoOpVWQI4BWJfhxQNFBHMFecop59IzP
	6vRTAlwGIWZX2iyiG53g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOmlj-0001XU-Sn; Sun, 27 Oct 2019 17:55:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOmlV-0001Ws-8N; Sun, 27 Oct 2019 17:55:47 +0000
Received: from [46.218.74.72] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iOmlR-0008C3-MT; Sun, 27 Oct 2019 18:55:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add basic dts for RK3308 EVB
Date: Sun, 27 Oct 2019 18:55:40 +0100
Message-ID: <2097189.7Le80tXmf3@phil>
In-Reply-To: <20191021084657.28629-1-andy.yan@rock-chips.com>
References: <20191021084437.28279-1-andy.yan@rock-chips.com>
 <20191021084657.28629-1-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_105545_945393_FE45D569 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, kever.yang@rock-chips.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 21. Oktober 2019, 10:46:57 CET schrieb Andy Yan:
> This board use uart4 as debug port and arm core voltage
> is modulated by pwm, logic voltage is fixed to 1.05V.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied for 5.5

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
