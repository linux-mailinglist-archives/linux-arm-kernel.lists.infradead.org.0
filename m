Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0BCD3341
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 23:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vxk83vKr+9U5S30+4BmOJXl8Ya6shgvcWvT7UR85Cx4=; b=eYpnGGR++Gb+hk
	3ClLZm19tGvPt1XeTaVWFzxYhWn5Idhj+EOmsI4W7hhmsb0u4etZ/G/QfKGYeRfPoV0Quup50GO59
	ZXHWPjdcwlWHdLsjdSAqaZ+T686thtnHBqTrI4aHyrv5wJyz9QuNFHfZ6IwzghmaH0w9rO+vkCPM6
	bfDAy7vDvSp418jgqd1Qvq/UGhsEQ/13sPe6giFAZiFcrylgBgH3D4iS8DTwBe/Fi/FQVaQPrNXkD
	7rP7Xaf4KmsIfK03J7egXifVORJAYKElGwyG9waT/N4gvuvwNZrQcjjPxmM87gJVEPmkGfgJKk7ay
	XJhTw9r0RXBJA9DxgekQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIfsE-0004FH-NA; Thu, 10 Oct 2019 21:21:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIfs5-0004ER-Q5; Thu, 10 Oct 2019 21:21:19 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iIfs2-000772-7z; Thu, 10 Oct 2019 23:21:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add cr50 tpm to rk3399-gru scarlet
 and bob
Date: Thu, 10 Oct 2019 23:21:13 +0200
Message-ID: <1981411.DENka8z7px@phil>
In-Reply-To: <20180822120925.12388-1-heiko@sntech.de>
References: <20180822120925.12388-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_142117_995954_F820BA7D 
X-CRM114-Status: UNSURE (   8.52  )
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
Cc: amstan@chromium.org, sboyd@kernel.org, briannorris@chromium.org,
 dianders@chromium.org, smbarber@chromium.org, apronin@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 22. August 2018, 14:09:25 CEST schrieb Heiko Stuebner:
> Scarlet and Bob use the Google-developed cr50 chip to do things
> like TPM and closed-case-debugging.
> 
> Add the nodes describing the cr50 and its spi-connection.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

with the cr50 now having reached a maintainer tree,
applied for 5.5



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
