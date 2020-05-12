Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6FD1CF542
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 15:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/alh/BN4yKGEnyj+LmA1sXJrofmH2oD/LUb1H9+1ZU=; b=ZIrHPM9nKdWaxP
	QlAsE23WKEmSRdSEzSeYtZkQAqZL1Aqls3J2zgQ3EBFt1ExN7qVDfKMJtSot5uE/hsTQtBeZ9Kd6f
	BLoQu4GUAv99AsuqIz7lJBODK7GDy700mYq0l45heZgbAYJdcANJyOAEQ8Nuq9jhExlYDu7eje9OO
	1QbzEbHCS7tIps0xFP1uGfM2KgWbvPclsOuDoxLZXzjXBPGxG0t+0Rdhre9WvVsdmYlsjdhBHFFm0
	Eq2wAMC5rbPgEPsT4cdcbTTwphEjDCRhfkzz0nXM6gHs0SNQNAQg0XrfTle7Fuhou9FTNZOwotL5L
	b3AyRmyBKUC3vb2yiE2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYUfL-0005Bk-HH; Tue, 12 May 2020 13:09:47 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYUfD-0005BO-Ay
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 13:09:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6FB5F68BEB; Tue, 12 May 2020 15:09:36 +0200 (CEST)
Date: Tue, 12 May 2020 15:09:36 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH v4 01/38] dma-mapping: add generic helpers for mapping
 sgtable objects
Message-ID: <20200512130936.GA24428@lst.de>
References: <20200512085710.14688-1-m.szyprowski@samsung.com>
 <CGME20200512090107eucas1p13a38ce5ce4c15cd0033acaea7b26c9b0@eucas1p1.samsung.com>
 <20200512090058.14910-1-m.szyprowski@samsung.com>
 <20200512121808.GA20393@lst.de>
 <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a80255d-81de-2c5d-6d06-ea126fd7f994@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_060939_524598_CFE4C2CA 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 iommu@lists.linux-foundation.org, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 03:00:31PM +0200, Marek Szyprowski wrote:
> > 	if (n <= 0)
> > 		return -EINVAL;
> > 	sgt->nents = n;
> > 	return 0;
> >
> Indeed this version looks much better. I will resend it in a few minutes.

I could also just fix it up when applying the patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
