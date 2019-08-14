Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 930CD8CE40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 10:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gba07isp9jul38aU2KK5tUIy9q+rGBJGhMHZgoVSqDE=; b=Tryrbs213iYvIw
	IRDzzgCjwWJF7GHo/UoBun6j62Ts2IoWrA+aLC3lToK5fpk4uIY1IBOclevgGCn7uiiQr8Oolnk9Q
	v1Ab3kZlWVZeS0BstikpIonOpWf08A9OzYlgiAsZSRqJc8vNBg9YR8MX6wd6bxfgh+iXjvjvZS4Us
	dEJ7VNq2mT7LH88SkwsRjHTINdYxPxM1LO59hLiTp8SksD435M1rgKguAbdkdpTbwNkyskxejI5Q8
	T5gUt1jhWJOtySlY0vG/Y/9OPVmsngozaHVjPDrmc6xNxzPJKNouDhiGhZZVMw3Rnna8GUc3dCYo8
	i98hxvZ8dnioS1I9aAwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxoXb-0001Yi-T4; Wed, 14 Aug 2019 08:21:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoXP-0001YM-3N
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 08:21:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D66D2205F4;
 Wed, 14 Aug 2019 08:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565770902;
 bh=0SRQvKfJI3KkDlXjXO2Kc45qqR2l8qAvwyBNJ3EauSg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VqwKYA4dxWwl5KdIgbbEGxSbzBCtTPc8D7OA4hW+38+nBOg3nvYBm0l4OYM24arDQ
 03ylO7A2ZW3aqU+Blbj0SLEXQjAdCChO/fmggrlqvm7gYfAYOrfS7usUPyhTboA4JP
 sTgYJDLr5AtEAHr+2QWJElTlITPDw0JLK0nQjFBo=
Date: Wed, 14 Aug 2019 09:21:37 +0100
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH V5 00/12] 52-bit kernel + user VAs
Message-ID: <20190814082137.mnk242lp2vw5b4ot@willie-the-truck>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190809164716.qtt7zizfbqyjukwe@willie-the-truck>
 <CAMuHMdWvkWGoNC5HbWoZwtpg5VXxTZqRZqQy4BLPgQXZJtKnsQ@mail.gmail.com>
 <20190813131013.vpc5a2vlxwghizxa@willie-the-truck>
 <CAMuHMdXr+S2QeOSEXZoGGDOB_PrgENPbVXFjS=pEfbHfvN2zhw@mail.gmail.com>
 <CACi5LpNhh0a0ktLeDDCO4K3-mBx0D8QZ344juAzbHeP4QFtGDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpNhh0a0ktLeDDCO4K3-mBx0D8QZ344juAzbHeP4QFtGDw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_012143_165919_2349B222 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christoph von Recklinghausen <crecklin@redhat.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Steve Capper <steve.capper@arm.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, maz@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 01:34:49PM +0530, Bhupesh Sharma wrote:
> I still see the following issue on a 48-bit hardware (i.e. _non_
> ARMv8.2 hardware) with branch 'for-next/52-bit-kva' with commit
> d2d73d2fef421ca0d4 as the HEAD:

Have you tried the patches I posted here:

http://lists.infradead.org/pipermail/linux-arm-kernel/2019-August/673315.html

?

Whilst they're being reviewed, I've dropped the 52-bit branch from
linux-next (for-next/core) so that people don't keep running into this.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
