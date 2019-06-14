Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A9845B81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 13:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+hOEHMgmRvkuRsRRX2SYU7uJ8qAz4p08vgyRnAGIw/c=; b=qZ64TNribl9AT9
	Q9u+2Y7uXiDnW1mMP6ilPh/bTOVvWQESxtZR/X7sV9zoW8Pes6xaBV/gnewVlmlSq47GoPwD4LxOQ
	BE6ung0DjubX14rt/5i5nsic8ZxvizA/mPlD0Hby30YNU6i6FhFVlR6IetBVUIkdYlkYCEUeqIkYb
	JCaVQEHY35m7RK4BH+iP/xran4xglAov/WeO0tjTwROtPERMI/3Ts/jeXhdf7/2HBeZy1vYqmgTuy
	OCou0vkTG66getbDuX7m0zHIdvBo+v5Wno1AcSqyljM+0WuZ59BNCuXuUkxiBQFTq+VaxCRZyFnYF
	OzQFcDXFZxmR3pJuVmJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbkS2-00023C-NE; Fri, 14 Jun 2019 11:32:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbkRq-00022g-Si; Fri, 14 Jun 2019 11:32:48 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbkRm-0004mJ-74; Fri, 14 Jun 2019 13:32:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: xieqinick@gmail.com
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 14 Jun 2019 13:32:41 +0200
Message-ID: <4566563.QzcLDyM7tj@phil>
In-Reply-To: <1560153473-17190-1-git-send-email-xieqinick@gmail.com>
References: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
 <1560153473-17190-1-git-send-email-xieqinick@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_043247_079954_B3DD97E8 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, nick@khadas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 10. Juni 2019, 09:57:53 CEST schrieb xieqinick@gmail.com:
> From: Nick Xie <nick@khadas.com>
> 
> Add devicetree support for Khadas Edge/Edge-V/Captain boards.
> Khadas Edge is an expandable Rockchip RK3399 board with goldfinger.
> Khadas Captain is the carrier board for Khadas Edge.
> Khadas Edge-V is a Khadas VIM form factor Rockchip RK3399 board.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>

applied for 5.3 after doing some style-fixes to the edge.dtsi
(2 missing gpio constants, some newlines and sdio-regulator
references were missing "<..>")

Please double-check the result


Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
