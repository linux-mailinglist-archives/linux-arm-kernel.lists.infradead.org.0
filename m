Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C41CF160EB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 10:36:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f/gFIyrWnM87dfi/Pf7Ss5So1tme0r0BplFNvCbJNYs=; b=lvPYbkZCct//PP
	vS45ghfLSx53nPcA1JyzlyG6VOl/Q4CJWfMCCN2VpjjdhlEjJhnUkXXr9AcIJRoIBcMlDnzfpudw3
	vGyHdFW66bh38YNK50VHyn+9nd17NEg0UB6KgDbSkORLvs2YGzcBxwq+EUhrfNuBn6vYfC4XpFXCO
	+B3UCLHpVixE0vITU56GWmBgpwRiBrAl2kw58q8M6ljtfgaR+vFgrpzW6V/byTK6qGm4T4d0Ftzlz
	IS3eIWHojaXd5LkX0XzUjQWQdoZlsrGSgX3ND4CxwYG5hzDJKKYEeiILjr5kr+0LUy+Ezkv9Vu4R3
	QIQyDDVHlj1Up20h0Y6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3coy-0005C6-Qo; Mon, 17 Feb 2020 09:36:08 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3cor-0005BE-Ag
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 09:36:02 +0000
Received: from martin by viti.kaiser.cx with local (Exim 4.89)
 (envelope-from <martin@viti.kaiser.cx>)
 id 1j3cod-0001mS-3d; Mon, 17 Feb 2020 10:35:47 +0100
Date: Mon, 17 Feb 2020 10:35:47 +0100
From: Martin Kaiser <martin@kaiser.cx>
To: PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>
Subject: Re: [PATCH 3/6] hwrng: imx-rngc - use devres for registration
Message-ID: <20200217093547.3an3bzqfutcewe2i@viti.kaiser.cx>
References: <20200128110102.11522-1-martin@kaiser.cx>
 <20200128110102.11522-4-martin@kaiser.cx>
 <CANc+2y6Scy1=S7zeQ4gVowRoWmzsq4wiNXbLVeY1Qvu0oo9cUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANc+2y6Scy1=S7zeQ4gVowRoWmzsq4wiNXbLVeY1Qvu0oo9cUw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_013601_521886_BCEE40E3 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi PrasannaKumar,

Thus wrote PrasannaKumar Muralidharan (prasannatsmkumar@gmail.com):

> After imx_rngc_remove function hwrng_unregister will get called. This
> leaves a window where the clock to rng hardware block is disabled but
> still user space can access it via /dev/hwrng.

thanks for spotting this issue. I see that in __device_release_driver,
the driver's remove function is called before the devres cleanup.

> This does not look right, please revisit the patch.

I checked again how other hwrng drivers use devres. Some don't have to
disable a clock and need no remove function at all. Others enable the
clock in the hwrng init routine and disable it in the cleanup routine.

Both of these approaches don't work here. I should disable the clock
eventually and I need it in the probe function to run the selftest
before hwrng init is called.

Therefore, I suggest to drop this patch, at least for the moment.
Herbert, should I resend the series without this patch or is it ok for
you to take the remaining patches as-is?

BTW, 3e75241be808 ("hwrng: drivers - Use device-managed registration
API") makes the same change that I proposed here for a couple of other
hwrng drivers and seems to introduce the same race condition in som
drivers e.g. drivers/char/hw_random/exynos-trng.c. Should we try to fix
this?

Thanks,
Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
