Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0895B9071F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+p/hkHbHy3BUw1/aIm0ooNCoHwR8NMYP7pGtKYswEU=; b=mnc4XauN2tOUCJ
	jVrdY6fRA3mhQqkCW7Aik3c10Wa15NfCukdY3bL8HwBdP4N1nfNwwrqZ8hGnwcpGkDzVZn0wAwqgY
	pfKDVD7cA/UZ4ijS8M1WZ47fWtJ51loKGPjHRU7wVtcIPlKo0Uzh9uoC20O424URZkUdijz2PCjWd
	LA3ueqO+PayLLQSWR/G0EzCWmAchg2dq8aVv/ktfOEvB6Tn2zisggKi2rFoxwMiZs/A8haTZFJK+M
	+J0rCszyt+6xVvuKjHf+lRWLQQCldKM+pS00RqNHxDM8M/Yz6gl3vh6UQsnUi1GUHfkvrm8ksSNMH
	w8N3X8eqlEbRUjCQVsaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygEL-0004XC-V4; Fri, 16 Aug 2019 17:41:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygE3-0004W1-5n; Fri, 16 Aug 2019 17:41:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AFDC9205F4;
 Fri, 16 Aug 2019 17:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565977278;
 bh=J8VYVOIVhLsJYaE9Qe6vQ2Z5DlEIP+q7HLw3LXz0pdw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=r+NcP6Zo2WaFxxjfOrzu1OcBsSI7xkZRAZ2ckjcFwdRkgTXWl9jzVThZ/LE6ofjIp
 K5csCPhO32Izmydl7rNNVr1p8UvKYNGmKrplexjeehky77JBeBUkpwoiBKqpezVOvB
 G5yfofaobHKdYulWTjzD3noBQWhxY3c4ruC7aDZ4=
MIME-Version: 1.0
In-Reply-To: <1565713248-4906-4-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-4-git-send-email-wahrenst@gmx.net>
Subject: Re: [PATCH V2 03/13] dt-bindings: bcm2835-cprman: Add bcm2711 support
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Wolfram Sang <wsa@the-dreams.de>
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 10:41:17 -0700
Message-Id: <20190816174118.AFDC9205F4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_104119_238798_73055673 
X-CRM114-Status: UNSURE (   9.03  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stefan Wahren (2019-08-13 09:20:38)
> The new BCM2711 supports an additional clock for the emmc2 block.
> So we need an additional compatible.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---

If you want, just send the clk patches (this and the next three) to me
and linux-clk list as a series. I will apply them directly once the
minor comments are fixed.

>  Documentation/devicetree/bindings/clock/brcm,bcm2835-cprman.txt | 4 +++-
>  include/dt-bindings/clock/bcm2835.h                             | 2 ++
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
