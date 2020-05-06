Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F70A1C6CE0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK45FsB56x2WoxmNpWh3PN7zWXSbO+epq/Bqkp6hehQ=; b=TuB2d5Cav9M44t
	AN0mDve6YxKYu6PqCClN7efw42ccyxgF1RGWVG3cB9C954/IkY8VMnTrld88ArZmk8v662S/erZ+R
	XJxvEC23V6aM6CKW9tkQEnLeK67V2IiiEKS2How++WNEoDdZpiE2/0cjsTEzS8Ar539Lw+UumZEuh
	wcjGG2OuxxhXqC+MLmujMX5cFrqumYhWdbKuQiqqyUmU/k4EJOK+Ne0PB2ZYFJW4OxGdtFdKUwvxj
	FPDqZFeL6jR3UQChBkt4q8WK8AsJQ7xQwfpopaLch2bGNrJF0qCs2ZqEfgtV/L36I/oimWL8MDCpq
	CAk8qqcDxnnAEzfYxW+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGKc-0002Bu-C6; Wed, 06 May 2020 09:27:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGKD-00023F-SX
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:26:48 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jWGK5-0000MG-HH; Wed, 06 May 2020 11:26:37 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jWGK2-0004UH-Q5; Wed, 06 May 2020 11:26:34 +0200
Message-ID: <b1af9917885ee3da60de1385edd2d8094ecb3b7d.camel@pengutronix.de>
Subject: Re: [PATCH v2 22/91] reset: Move reset-simple header out of
 drivers/reset
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Maxime Ripard <maxime@cerno.tech>, Nicolas Saenz Julienne
 <nsaenzjulienne@suse.de>, Eric Anholt <eric@anholt.net>
Date: Wed, 06 May 2020 11:26:34 +0200
In-Reply-To: <6f7651682a6dab539bd89c80704c8303bbae68bd.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <6f7651682a6dab539bd89c80704c8303bbae68bd.1587742492.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_022645_926453_64DC75BC 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-04-24 at 17:34 +0200, Maxime Ripard wrote:
> The reset-simple code can be useful for drivers outside of drivers/reset
> that have a few reset controls as part of their features. Let's move it to
> include/linux/reset.
> 
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

Do you need the reset patches applied together with this series, or can
I pick them up individually?

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
