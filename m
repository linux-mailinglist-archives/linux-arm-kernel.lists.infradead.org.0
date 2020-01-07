Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AFD133551
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 22:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IQ8aScv1rRoNsv9TeJblDgmGHovsHiInZ5ZW0sj4/pw=; b=ifwpTJLD1aqT+t
	DtUtUIu82ErHxlzlli4kemrZPY1mmgHjEJZa/MCm13J044v5bEr7Fu7A6kM8TYht782SulrJPQmQm
	a+LiytEFlbvEe0S4EMJTBCojg2vIT4Ax0RKw2Dq9s7nIdjatR3N+N6ZHWxuCaH9Xufcl5aBouV3As
	hC7/c/NaBrK1MfgYMOy5+WkZsd8f1ugXZq6jFrl1NJlWztLvh9uV+2lzdocGVGxUpAG4bUfMj6pTG
	OsoPG30kU1X+FauzU2DKhuEuA6iNAnZQRBcc6gjGcJVDYEAqpMUW50j+iQYIE7bf+we/tF/xh5ea0
	eJtjGyaIl7Y/jl1GbHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iowou-0001vV-1C; Tue, 07 Jan 2020 21:55:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iowok-0001u9-W5; Tue, 07 Jan 2020 21:55:16 +0000
Received: from ip5f5a5f74.dynamic.kabel-deutschland.de ([95.90.95.116]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iowoh-0004t9-Ha; Tue, 07 Jan 2020 22:55:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for write protect pin on
 veyron fievel/tiger
Date: Tue, 07 Jan 2020 22:55:10 +0100
Message-ID: <3032277.n0uFTgx7BP@phil>
In-Reply-To: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
References: <20200106135142.1.I3f99ac8399a564c88ff48ae6290cc691b47c16ae@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_135515_182576_F7372C59 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 6. Januar 2020, 22:52:13 CET schrieb Matthias Kaehlcke:
> The flash write protect pin is currently named 'FW_WP_AP', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'AP_FLASH_WP_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.6

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
