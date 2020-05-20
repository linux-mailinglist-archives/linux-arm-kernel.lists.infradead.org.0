Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A59C31DB8D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLrLqXQpAhi1WSmClZG88fA2fOakXnmxOlYGRGEXHl4=; b=N14L9FS6fRcYso
	DFFJ+L2xCFU71o3p39vwbvC++sh5t1/UYzVqHIz2h6uKpiumUu5sYsGuMCV0qWTGLTNkySRrI3kIa
	d4GYD3f9FriiBTxBFZru1QD1qSXRhl3MLGJRcJidfptw0MtMEf/Awdf2TYFCsqG+SuE0ysK0PbJuP
	M8o6oy7SoxqRNgF09uaP1gi8u0yfbUa2UJZoxjJwqi07/cI+ADt++Ow1wD7l3Q+k6pg9jiehN9pBN
	MgLMAaX5lutB+F+H0RPVQRAmd4JA5LB246NZ84sN2cSX9XO8DRIAHwyaVjpaKF50ugvPK+Iby8+VE
	0qrrdrK8/9Gy+guNziJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbR6a-0004ud-IX; Wed, 20 May 2020 15:58:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbR6M-0004u0-O7; Wed, 20 May 2020 15:57:51 +0000
Received: from kernel.org (unknown [87.71.47.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39A8B20671;
 Wed, 20 May 2020 15:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589990270;
 bh=dyM+tK9H4/jk7pTbjNgGxP0ZUddj2kYd/1wdgIKNWSc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VsLtS79HWRN19PUB99ZLXgO2mU0/W9GPWWQi60AkvrvCoQIglg2Dt0z2XWLOvacbf
 9UeOcnBWA5TZhonPflDchQYmxWK5BVFp7elu1xhP1+mi0XP3lJDRpeknKs+lzbTPun
 41cMmp6vFgobMY9POhClbsS1z2IOyeSOqRz+x/J8=
Date: Wed, 20 May 2020 18:57:35 +0300
From: Mike Rapoport <rppt@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 1/3] ARM: pxa: remove Compulab pxa2xx boards
Message-ID: <20200520155735.GF1118872@kernel.org>
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2+auSWBROZR-hobM_qSWtKiG1DRYP3Y7uvbCy_ZLy+gg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_085750_808731_21CE9877 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd <linux-mtd@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 05:21:51PM +0200, Arnd Bergmann wrote:
> On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
> >
> > As these boards have no more users nor testers, and patching them has
> > become a burden, be that because of the PCI part or the MTD NAND
> > support, let's remove them.
> >
> > The cm-x300 will for now remain and represent Compulab boards at its
> > best in the PXA department.
> >
> > Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
> 
> Acked-by: Arnd Bergmann <arnd@arndb.de>

I've not been PXA development for a while, so FWIW

Acked-by: Mike Rapoport <rppt@kernel.org>


> Should we take the series through the soc tree? If so, please
> send them to soc@kernel.org if there are no objections;
> or along with other patches you might have in the pull requests.
> 
>       Arnd

-- 
Sincerely yours,
Mike.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
