Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E479A1EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIcAUFYVGWWjdr9n3aHSB2GtCRwEBWOiTORLWtEf6xY=; b=Rlu8ujMGLYNfnS
	7/+DGpoFao3S497qKk8yzb+Lx20yNauzhC8Z9f3BHXS51Mmz/6HvYy7FdfLxXKuYSdrnyaQdFKAtu
	P6DVj4mx13JbDnx2zvX/t+K1uWqee3mo5g6ELASMwMwBV8VaEJ7UoOJhAM3k/vgvWUjGys2A64Rk0
	jHtnm6aqlpH9OtKWXzirMuHZNYC4BWr9CiJaoy/Qbo+jTP3ekaDlqW4kaFQb3FLJSE9oQ8JrSMymG
	khq7dp5YlG2Uo4cN1s27gxPwwqXcgi6JCvOYQBbLJMkDLTpLTVQHQPTt+jc/W/k1ZYHH2kFoeo3f8
	ExLIpo3aGYrTSdrWiWOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0uRG-0006xy-Jk; Thu, 22 Aug 2019 21:16:10 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0uR5-0006wx-Oo
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 21:16:01 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 3128960002;
 Thu, 22 Aug 2019 21:15:48 +0000 (UTC)
Date: Thu, 22 Aug 2019 23:15:47 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: megous@megous.com
Subject: Re: [PATCH v2 1/3] dt-bindings: Add compatible for H6 RTC
Message-ID: <20190822211547.GE27031@piout.net>
References: <20190820151934.3860-1-megous@megous.com>
 <20190820151934.3860-2-megous@megous.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820151934.3860-2-megous@megous.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_141559_959424_360DCB97 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/08/2019 17:19:32+0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
> 
> RTC on H6 is similar to the one on H5 SoC, but incompatible in small
> details. See the driver for description of differences. For example
> H6 RTC needs to enable the external low speed oscillator. Add new
> compatible for this RTC.
> 
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  .../bindings/rtc/allwinner,sun6i-a31-rtc.yaml       | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
