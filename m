Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74C991E13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 09:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mw8QGrrlFV3uO/RiWV+4UGQm4CBGn/dksSb4MdcxLxw=; b=nLgQmo3P0YluGf
	EiNPBsTSqtpDalERKZaoz17xZYEarv654ZY5STFZscjDV6X2p2GPnmkqSACGPxpFEo8yxKcUtzsD3
	5KdA0R+UEAyZRVOKUfUzOWs6+qRFHSgIXL9CaC5yCY3FX7oQnUaPI/MGaFo70voNLYzR4urmT069P
	5x60bmA1ScdVjd0HijtzEXelrRIKyPntNDXcSp1PSbAPkH/ofMA1rUIQg477trgMjbSQb+5kYSXzG
	/VTfa4/ej5y39FMDLVE40nfNm34WUlzPllrCpGgLorvAu2elQVSFWMRcvRtE/0N+sTX5QVdRcHVQ0
	TIF6zOq9wDCYkwPnRWUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzcHL-0004NY-7A; Mon, 19 Aug 2019 07:40:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzcH4-0004Mw-TR
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 07:40:20 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D72A52186A;
 Mon, 19 Aug 2019 07:40:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566200418;
 bh=SSwGoyQjtxQyIG+L12Fa79RfIeakkTxJQkrFw8MwzFo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0fxXKqzZ27SPO5MQzxrckPFMQvlzrVgisB9+HTtPvm8PaVOSNkPuzDRurwscI4s1Z
 7upOTcs8GamBB1WmW34ZnG17cylcGhhGOMhvSCadorBrnmXrTYAHbj/Sw+30sE0c+C
 +OOfuwbRv2Gz5lUfZkk34G5rQwVDgGZVAc+F34kE=
Date: Mon, 19 Aug 2019 09:40:06 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1028a: fix gpio nodes
Message-ID: <20190819074005.GC5999@X250>
References: <20190805065700.7601-1-hui.song_1@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805065700.7601-1-hui.song_1@nxp.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_004018_976107_9AEEF8D4 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-gpio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Li Yang <leoyang.li@nxp.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 02:57:00PM +0800, Hui Song wrote:
> From: Song Hui <hui.song_1@nxp.com>
> 
> Update the nodes to include little-endian
> property to be consistent with the hardware.
> 
> Signed-off-by: Song Hui <hui.song_1@nxp.com>

Applied, thanks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
