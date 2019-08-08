Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3363F866BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIaZ4PH923YUdtwKLh/K0y2xB5r/v7Jc2VB7FpDiYlE=; b=gkcX8x8vwcJ7A2
	3RjkpqWMxksArKiP5GrS80J2px6jNLqC+CqbHjX9mYlRK+4JfAM6VkLnfo9DTrrVl85xW9qIWt6UZ
	mKqcHWIrjEgytGE9Jwgv4q1p8KxhdQ63cefkm6jyvHM+TYn2BvzeBgjWq7pmOn/1UXqKOxZ3Mmy1I
	Ug92Gxr6rdsOEXwiLPvipLG6NhGAPc2iFlcwG3w7mBVijWWyRlSinwAkXCaI9HR9vue/2oDmU2qSr
	KhAvKz/3HCeAeqieNguABbK6UfxNPGXDmRfBKDT5MVCvgrVmRgbB4sV2F//PquMnhCBAJrffCfG6q
	Zvbg4o+0z4pnstJ6VhQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvl1o-0004Sj-QE; Thu, 08 Aug 2019 16:12:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvl1R-0004Ah-RM
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:12:15 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 735072184E;
 Thu,  8 Aug 2019 16:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565280733;
 bh=y/0sRj7Yzk0Y5XU6X4a1WKbMI5VCh4dXaTuh3u8iH9Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=wt4j4AzheUzaLwKqE5wyxurd+BbWg67YU+HGSKjE/MNhkxk+tEgMMb8luesRCV4rI
 htV7pB5zHZxCBVVIlcVmsRB9S3UmdHVSFa8MwgvQW1dPN3IoAq1U20zXjSP9FoirGE
 KTjRmrrnpLoKPuYc4mwNxvIgZXyjhqI7IaX5gka4=
MIME-Version: 1.0
In-Reply-To: <20190710134346.30239-3-gregory.clement@bootlin.com>
References: <20190710134346.30239-1-gregory.clement@bootlin.com>
 <20190710134346.30239-3-gregory.clement@bootlin.com>
Subject: Re: [PATCH v7 2/6] clk: mvebu: add helper file for Armada AP and CP
 clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>,
 Mike Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org
User-Agent: alot/0.8.1
Date: Thu, 08 Aug 2019 09:12:12 -0700
Message-Id: <20190808161213.735072184E@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_091213_908822_46D817BF 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>, Antoine Tenart <antoine.tenart@bootlin.com>, Gregory CLEMENT <gregory.clement@bootlin.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, Rob Herring <robh+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Miquèl Raynal <miquel.raynal@bootlin.com>, linux-arm-kernel@lists.infradead.org, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Gregory CLEMENT (2019-07-10 06:43:42)
> Clock drivers for Armada AP and Armada CP use the same function to
> generate unique clock name. A third drivers is coming with the same
> need, so it's time to move this function in a common file.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
