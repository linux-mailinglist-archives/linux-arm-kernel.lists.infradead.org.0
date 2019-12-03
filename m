Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3814D11018D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 16:52:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Z/BKcYG2SNMRhPLvHBDxx319bRLxDrKR6uMwYWYKPA=; b=iyXnqNQvba7dKcWP5IjQGfspx
	Ye4UARZwL7qi3f0+PQuKhuX0yaIt98Fj3SwnDvLJY28PgQqYieuC+xbbCMcG3WsjlAWnGWE9mPTpF
	ARAiH2jLYe/1w1aNeC/wGTFfYcWu9szUSvrHgXq4c2abrjRd44GoX6RVD6INBtpkLtwcpwwUuTt+y
	YSeInn+AFcCcGs/GfP02X1dDxwDAoHghngLK8yzJ9/mVyt9LfJh40JyLFoYFC1qVQ9Oz6cjXvYYtD
	D2ePSd0Lkj4c5bIiEwQYlsoDAAfKicxJWSsSgSVg1kOGM1e3W0CCdqNQdfl64nKiwNM8KxziWdxHh
	kOzAPXWQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icASu-0001Xp-0f; Tue, 03 Dec 2019 15:51:52 +0000
Received: from vern.gendns.com ([98.142.107.122])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icASj-0001UX-6S
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 15:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k4ubicwl4xi4YAB8T5V3DHddTb4XYl0UzCbYytMk0o8=; b=X0wdBF1ejD/ar1wSbog59xa8Qy
 lk/jijFI8dtisoC3rdjRWGcGPx75cm/NuLPqNGZ4f2ixoU8R/d2W5X5OoCN11JaVWe6ls7aB2ZaMx
 O+6vr0VmZWKg89Ayc1U833YpwpwhcQ+jXJU2EDGjA1rBW1xHzBxN+dB094O2an2jqbC2or6FBlsr3
 O2gJnoB7wXRqIzNt5Ht72GasPEa2n2eOl4sJCDc0exDi555lN77z7QDKur/A7p/5UblDw3sAdl8UN
 Eb1tsEWGQCimu10X3dhhRLDP23K7uHcc/NXprS5H3do91GWaDaER3+2lAxLU+iCX6SmTj1HmYopES
 m6PFTpxg==;
Received: from [2600:1700:4830:165f::fb2] (port=38088)
 by vern.gendns.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <david@lechnology.com>)
 id 1icAS0-0005u7-Px; Tue, 03 Dec 2019 10:50:56 -0500
Subject: Re: [PATCH] drm/tilcdc: Switch to using GPIO descriptors
To: Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
References: <20191203130916.155779-1-linus.walleij@linaro.org>
From: David Lechner <david@lechnology.com>
Message-ID: <06a3071b-7a2d-d5f6-1b17-e66a1c03fb0d@lechnology.com>
Date: Tue, 3 Dec 2019 09:50:55 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191203130916.155779-1-linus.walleij@linaro.org>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id:
 davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_075141_399822_1D8F5621 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/3/19 7:09 AM, Linus Walleij wrote:
> The TI LCDC picks a GPIO line from the device tree to use
> for DPMS power on/off. We can switch this to use a GPIO
> descriptor pretty easily. Make sure to request the GPIO
> "as is" so that the DPMS state that we start (boot) in is
> preserved.
> 
> Cc: Jyri Sarha <jsarha@ti.com>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: David Lechner <david@lechnology.com>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Reviewed-by: David Lechner <david@lechnology.com>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
