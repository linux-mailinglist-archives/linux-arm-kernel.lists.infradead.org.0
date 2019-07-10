Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C5064444
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:18:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUfCNKyzQlbwzS6YevmnFPkkYzrCkJN8Lp6ShbdJHzc=; b=IDVo/dGcr0P8rG
	KA4gaoar9E7YHFsPk/iiCvvU55j1jfvgRhAgyGpdM6axUesaSv9ByeKWXhUp8r7PN+bICOtZUnHN9
	+R7X5oYaw1lICwbOViNtdeUItxEX8krNME5xf4dpK5uIpYEMYwL0AlbzUSyen7mpybgRphw4vFi9Q
	q08nij6DEPBe6jG2C0I6B9b7K4KsOm8Esj4QO3NDgNCNRxW9ofk/WQygKD3KXHaZICD3aV7lDznn0
	GYNJP0FhxbgCt3IsfnQehN4wtiIA1kzlhIN2RQ8yF/hoDAIDB3ohEzglUX0k6RO4XVwidX8KnadsE
	mSlUhHIsIdU8wOgLqVnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8jt-0006Gp-Rr; Wed, 10 Jul 2019 09:18:13 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8jT-0006G2-5p; Wed, 10 Jul 2019 09:17:48 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1hl8jF-0002Ji-QK; Wed, 10 Jul 2019 11:17:33 +0200
Message-ID: <5fa1fa6998332642c49e2d5209193ffe2713f333.camel@sipsolutions.net>
Subject: Re: [PATCH 00/12] treewide: Fix GENMASK misuses
From: Johannes Berg <johannes@sipsolutions.net>
To: Joe Perches <joe@perches.com>, Andrew Morton
 <akpm@linux-foundation.org>,  Patrick Venture <venture@google.com>, Nancy
 Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>,  Andrew
 Jeffery <andrew@aj.id.au>, openbmc@lists.ozlabs.org,
 linux-kernel@vger.kernel.org,  linux-aspeed@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org,  linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org,  linux-mediatek@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,  linux-wireless@vger.kernel.org,
 linux-media@vger.kernel.org
Date: Wed, 10 Jul 2019 11:17:31 +0200
In-Reply-To: <cover.1562734889.git.joe@perches.com>
 (sfid-20190710_070546_627944_047EEDD0)
References: <cover.1562734889.git.joe@perches.com>
 (sfid-20190710_070546_627944_047EEDD0)
X-Mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_021747_216383_2E80E633 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 alsa-devel@alsa-project.org, linux-mmc@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-07-09 at 22:04 -0700, Joe Perches wrote:
> These GENMASK uses are inverted argument order and the
> actual masks produced are incorrect.  Fix them.
> 
> Add checkpatch tests to help avoid more misuses too.
> 
> Joe Perches (12):
>   checkpatch: Add GENMASK tests

IMHO this doesn't make a lot of sense as a checkpatch test - just throw
in a BUILD_BUG_ON()?

johannes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
