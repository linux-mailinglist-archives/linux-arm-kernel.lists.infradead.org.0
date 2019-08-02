Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E29B802D6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  3 Aug 2019 00:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FenRsKrTONLEglmIp2qsfAX5LaMJfQ7QyCen7zIpsPM=; b=krJWwIHHg3vqw6
	65rjuq48G73x5o3mQBHeDhFuBo/ALL7aCshJc5JoU2J033by3QKPFQifEMUE68m7PZZD9ImwXWfCa
	nkRrdy/g6Hhmi8lJ/zI/CjivyAJ22VMmWR4E0lPvlL3J87F85FUq97JF8thv/bNy2+h12yUdPgPE0
	VuEaoVwtYNQgq8lgueJXt8jNvw5KkpoKWh0krjnXwcdzfh9ITtgOjODGX/7jLZ+fZmoaDepuUrf6/
	GKjGo6X/MdbcKb5tIrWSdZQB430mCzudeEYhacTPkndT2NKXyVbPjKXh/C/m5LZNy50x3f7w/DtsC
	sUxMkPU18s0ugzDK1uPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htg9Y-0006Hy-1e; Fri, 02 Aug 2019 22:36:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htg9N-0006Hd-DF; Fri, 02 Aug 2019 22:35:50 +0000
Received: from p508fd160.dip0.t-ipconnect.de ([80.143.209.96]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1htg9I-0005Md-SO; Sat, 03 Aug 2019 00:35:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Matthias Kaehlcke <mka@chromium.org>
Subject: Re: [PATCH] ARM: dts: rockchip: Add pin names for rk3288-veyron fievel
Date: Sat, 03 Aug 2019 00:35:42 +0200
Message-ID: <4665278.n1QAv4Vui5@phil>
In-Reply-To: <20190801220354.142933-1-mka@chromium.org>
References: <20190801220354.142933-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_153549_600992_CD6C45A0 
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
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Freitag, 2. August 2019, 00:03:54 CEST schrieb Matthias Kaehlcke:
> This is like commit 0ca87bd5baa6 ("ARM: dts: rockchip: Add pin names
> for rk3288-veyron-jerry") and other similar commits, but for the
> veyron fievel board (and tiger, which includes the fievel .dtsi).
> 
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
