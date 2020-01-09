Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7127D1360D9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 20:16:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rys6AwtrJoVsP8/R4Sj1VyzOtoVbEhT6btVNh9CdyNM=; b=Exz88aMc794wsW
	T3wyRULWXTclnxI3HnddW9zA+o5mWcI711wX6BQ6XEZxTPiMRvJ7cfEwFoOCEG54r06PetjrgalUQ
	xPe30sO2vY9aELdJaATapp0mRDjL5nKhrf6I9TlCsuaHMFI7UWPEI0I9WYqYnFrot5o+OF19zsIt9
	AROkmSw85QUsA1g/G5daZGwWzk8pYXTfN1E5wTT9HE6QW7bNeNkPaQbz2tg2n/Zyps9LMqyHduf+N
	C5pH5x9uhnJL+JCAcuIIfJ1hLjZLCt47IsD2B5EAQjXN66rv9MAz5JuuI8Uy6/7fdOnXdkgH6wxNE
	aTN64xk0VcYQu/PEnbvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipdHl-0000j1-Ny; Thu, 09 Jan 2020 19:16:01 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipdGp-0007F8-Ru; Thu, 09 Jan 2020 19:15:05 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id DBC1920003;
 Thu,  9 Jan 2020 19:14:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [RFT] mtd: onenand: samsung: Fix iomem access with regular memcpy
Date: Thu,  9 Jan 2020 20:14:50 +0100
Message-Id: <20200109191450.10775-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200103164158.4265-1-krzk@kernel.org>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 14ebf24175df0f216256c8483ee2974f35a1a89c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_111504_054681_8B6CAB7D 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-01-03 at 16:41:58 UTC, Krzysztof Kozlowski wrote:
> The __iomem memory should be copied with memcpy_fromio.  This fixes
> Sparse warnings like:
> 
>     drivers/mtd/nand/onenand/samsung_mtd.c:678:40: warning: incorrect type in argument 2 (different address spaces)
>     drivers/mtd/nand/onenand/samsung_mtd.c:678:40:    expected void const *from
>     drivers/mtd/nand/onenand/samsung_mtd.c:678:40:    got void [noderef] <asn:2> *[assigned] p
>     drivers/mtd/nand/onenand/samsung_mtd.c:679:19: warning: incorrect type in assignment (different address spaces)
>     drivers/mtd/nand/onenand/samsung_mtd.c:679:19:    expected void [noderef] <asn:2> *[assigned] p
>     drivers/mtd/nand/onenand/samsung_mtd.c:679:19:    got unsigned char *
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/fixes, thanks.

Miquel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
