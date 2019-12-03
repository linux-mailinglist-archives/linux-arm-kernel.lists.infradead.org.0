Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E44310F7AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 07:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MR3J2DQe6s99luH+iFvFLPUkwQGzrZJ5LrcBDAQsqow=; b=aMJi0txq+8VIKZ
	thloUsME8aqCtFmM9d+2j5y0LmCeOQUdCXXKbyPs/BGK20pZZ1jHzxTr4QLcvGka2Fcsvff4NfMCA
	whzqnSJVMQydievSphFlEkT3JXvfEnzpKwA5YCzPD9yC6pfWThkB9yDBSq/Dj5Z2BTp7XX6jegyyM
	8Nc5L6t1m0uVyOXthpxUcnY1poM3Z74A3hAlivHUBSvX4aznT5XvrDa8sd3iRrD/HhRqj+qulS696
	fZRCmyZCZuQAV2Zt4nZy6yEfj6r/KF1LmDg+OIeQufT1kOqIfal81D7Ke8hv3Te9VrKUsogl3IyeP
	rrxryH27l1sLj3YxrdkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic1Pk-00072g-Vk; Tue, 03 Dec 2019 06:12:00 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic1Pe-00071K-81
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 06:11:55 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 03 Dec 2019 15:11:50 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id C34CB18010B;
 Tue,  3 Dec 2019 15:11:50 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 3 Dec 2019 15:12:15 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 569C840361;
 Tue,  3 Dec 2019 15:11:50 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 2AB0B12044A;
 Tue,  3 Dec 2019 15:11:50 +0900 (JST)
Date: Tue, 03 Dec 2019 15:11:50 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH] reset: uniphier: Add SCSSI reset control for each channel
In-Reply-To: <12f11e521a41d9f1e0e916fcbe413f6d0390bb3c.camel@pengutronix.de>
References: <1575001159-19648-1-git-send-email-hayashi.kunihiko@socionext.com>
 <12f11e521a41d9f1e0e916fcbe413f6d0390bb3c.camel@pengutronix.de>
Message-Id: <20191203151149.52A8.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_221154_404026_6E4243D4 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Philipp,

On Mon, 2 Dec 2019 14:06:20 +0100 <p.zabel@pengutronix.de> wrote:

> On Fri, 2019-11-29 at 13:19 +0900, Kunihiko Hayashi wrote:
> > SCSSI has reset controls for each channel in the SoCs newer than Pro4,
> > so this adds missing reset controls for channel 1, 2 and 3. And more, this
> > moves MCSSI reset ID after SCSSI.
> 
> Just to be sure, there are no device trees in circulation that already
> use the MCSSI reset?

Yes, currently no device trees refer to MCSSI reset,
so I think MCSSI reset ID can be moved.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
