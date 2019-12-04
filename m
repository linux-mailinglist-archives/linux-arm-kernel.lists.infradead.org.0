Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB21112D79
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 15:32:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5axuHPW9XsJUeHt7GriSJDhhdBozsT1l9aLIEMKP0EM=; b=e87utiua+TiAAr
	E6kUvnDYudK8d36CtCCu20Eg2QewT2Hhx4LcemlssMnHHQ31JaYMdV27eOmn02LnBg18GDNFZOJ93
	tTQs33131yKruZ4NF8248HOBxQQkUjIlf/OSTpwpFkF4emxH0JIum3+crwiM8m3UWtyii6U6Ik0Ww
	o/xHyGpK2xdMCpHGYGSX8PmFhCDGz99s3+wQhp6DaYZz3yNLPrAM+43VAnP7jkKaTI1V8yzw3J5dt
	aCEOzvOIw+DC184i/m7Xh6xsI7vhYkIhoLwWwqzslco3YgRTkvkL53/rzBMZS7ez73kIFfmhm3Xu5
	RP3TSGjgvAowWmK+z8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVhe-0006WV-MZ; Wed, 04 Dec 2019 14:32:30 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVhY-0006Rf-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 14:32:25 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 256E520106;
 Wed,  4 Dec 2019 15:30:15 +0100 (CET)
Date: Wed, 4 Dec 2019 15:30:14 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Jyri Sarha <jsarha@ti.com>
Subject: Re: [PATCH] drm/tilcdc: Switch to using GPIO descriptors
Message-ID: <20191204143014.GB20926@ravnborg.org>
References: <20191203130916.155779-1-linus.walleij@linaro.org>
 <b3e3e44b-3061-7531-4e88-7ee9b44f40a7@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b3e3e44b-3061-7531-4e88-7ee9b44f40a7@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=BTXFA4sy8_DcFOhKg4MA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_063224_598405_8E879273 
X-CRM114-Status: GOOD (  16.43  )
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
Cc: David Lechner <david@lechnology.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jyri.

On Tue, Dec 03, 2019 at 08:29:45PM +0200, Jyri Sarha wrote:
> On 03/12/2019 15:09, Linus Walleij wrote:
> > The TI LCDC picks a GPIO line from the device tree to use
> > for DPMS power on/off. We can switch this to use a GPIO
> > descriptor pretty easily. Make sure to request the GPIO
> > "as is" so that the DPMS state that we start (boot) in is
> > preserved.
> > 
> 
> Hmmm, I have been considering ditching this driver all together since no
> mainline platform has ever used it. Also, if anybody ever wants to
> connect tfp410 to tilcdc, he should use drm/bridge/ti-tfp410.c instead.
> 
> But since the patch is there, maybe I should pick it up, and remove the
> bundled driver later a bit later.

IMO much better to just get rid of it now - as there is anyway no users.
No reason to patch code that is essential dead.
You just postpone the task for no gain.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
