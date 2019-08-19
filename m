Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2901924A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:19:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyEi1MziWqCZWa3U0jytmx4qofY6h40lxxGPcEo4CKA=; b=KRlO+oJgZhgTAI
	BRHc3P6g4BI+YJDl1ly9fF7Q+ZUZveoctMu31PYvryLWmcm0YYlGRxssz+44uKgKWXQxJyC+1+AA/
	CY8TCi8F5MMKyeAOJOkavYnWg7lgwpaKgI8XamK+q05cPLtYdp+KT809pDZMC8EhIrvrOteBM/vbG
	RrVkqgfvgBTyf/S6N6cpLr4DdewF8R6Wh46iQWKndRS6Ep6VNoodmuTLZdczUQo0AhPNXBTsrNMN0
	YyM2wPPf47c367ART9DOup/q6bNCXZHZqdEk/FsPMxHynnOK4V4gJRvIhf/ZffbWEwQKzkWkWErP6
	I8RNGGb5mO2cFc1yRavA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhZ6-0000kV-4Z; Mon, 19 Aug 2019 13:19:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhYz-0000k5-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:19:10 +0000
Received: from X250 (37.80-203-192.nextgentel.com [80.203.192.37])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D8CEB20843;
 Mon, 19 Aug 2019 13:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566220748;
 bh=8TTzp+tZN5RuUVBzoIrpfSJN79i1Vr6tzgGxPMsL4Fk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wQEddTicyf/YOArp1KmESJ9ELJxt+uWGJkWyU7dhIk3BZBKtS1gLwxlUhoMlB8qip
 sloB7FJuzUdkNLqiA/V/iu4Jf2s9dpeYkVHh7aWTP9gurGuoqRyAz3msXMwmdvbGlQ
 sK8B76xe2H7nDJSfLN1FiQgTkuDSRaVcFAfPdXq0=
Date: Mon, 19 Aug 2019 15:18:56 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Hui Song <hui.song_1@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: ls1088a: fix gpio node
Message-ID: <20190819131854.GI5999@X250>
References: <20190813020457.45370-1-hui.song_1@nxp.com>
 <20190819114358.GX5999@X250>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819114358.GX5999@X250>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_061909_337649_99E11C05 
X-CRM114-Status: GOOD (  11.77  )
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 01:43:59PM +0200, Shawn Guo wrote:
> On Tue, Aug 13, 2019 at 10:04:57AM +0800, Hui Song wrote:
> > From: Song Hui <hui.song_1@nxp.com>
> > 
> > Update the nodes to include little-endian
> > property to be consistent with the hardware
> > and add ls1088a gpio specify compatible.
> > 
> > Signed-off-by: Song Hui <hui.song_1@nxp.com>
> 
> Applied, thanks.

Just noticed there is a new version, so dropped this one.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
