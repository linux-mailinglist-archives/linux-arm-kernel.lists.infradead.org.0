Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FC8346C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:31:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZUisqUwo7oA40oVdCQH4HTyhbtfmvvRPliqcQZu1R8=; b=rCoBm3Kdm93FAs
	X/iVTrCZnN0rhsFx12g/8q0meszNfEakMH3YX34UJiqXtGnI+6Qv5yvEP0+AUdr0y7yRMsD71yPBW
	glEaJi5bu11acvWXITWdyJt9Sr5yJo9/p34CtMxOnYJ0YYxJXWJJBh7D4IRPhKZSvTwp/0Lk+BS1+
	u62AohsTbKcoIwXdJEPOFYBiGkAH8uZ5zonFnHb6RLGvCdWFVqqfuaayu7Jd06Z8h0uqLWvp55yIC
	RIcLuJTU2LrGOD+5JBqAd7OHVXSCX+97o8gVEyRHNAxKUXmf4IrD5O6L+RKjgkPeQ0iuVlG2ziLuw
	+ewMm4863r11PK7t6XAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8aj-0006lY-Ct; Tue, 04 Jun 2019 12:31:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8ac-0006k9-2c
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:30:55 +0000
Received: from localhost (unknown [117.99.94.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20C9923E30;
 Tue,  4 Jun 2019 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559651453;
 bh=45jFT3bO3LDQqlcK98w69o2olZTNGbYc2kEV2SUpkMY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DaEYm7N1o5qEnLuEoHLYA2E5Ojvf1GQphaB/nUB8nAglb91wPG/aeUQM9SceIBO0U
 SUSBI92+uhCZ3FSuPEKVEx0Xv92JIfItMEbMIzXSlx3KCwpm/HASXM41txltfoB0nd
 dkTq38O0JWunC+v8D4MCT/fu8Kolmp+Xh/XAWCTY=
Date: Tue, 4 Jun 2019 17:57:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 2/7] dmaengine: sun6i: Add a quirk for additional mbus
 clock
Message-ID: <20190604122746.GA15118@vkoul-mobl>
References: <20190527201459.20130-1-peron.clem@gmail.com>
 <20190527201459.20130-3-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527201459.20130-3-peron.clem@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053054_129611_4006A060 
X-CRM114-Status: UNSURE (   8.42  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-05-19, 22:14, Cl=E9ment P=E9ron wrote:
> From: Jernej Skrabec <jernej.skrabec@siol.net>
> =

> H6 DMA controller needs additional mbus clock to be enabled.
> =

> Add a quirk for it and handle it accordingly.

Applied, thanks

-- =

~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
