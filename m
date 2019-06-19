Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2768D4B76C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 13:52:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+TZFRbwJpGjlPpVXdKoDC0L6gAVvwrJDNzhTjea5as=; b=lkg9PN3Cr1C5qU
	kDi1iKP5hGLIeVcvonGK3W0IiayHdh4QoYTbYqGEict3Q0cKAeJacO4reuGKqeOgEH2iSe8lgdFPl
	nWyOPNOHcdxwaUcjgusHH4mODTZwqbfFIFNtqdSW1VA8iFyanRWmvjplG+wetqFNquCXnAEiLohRu
	hZfXTqLCNve9OEvs2XGgVU1ufLOxHHuWYAneNnwcsQ+aRIwek2wZTvnGAv85GmuN54Bq2r6fKgnL9
	KDTCDJ8RS/IUogsPErv5anFQIM9ZfmCYQBHGc6sbE1Z7AcHQjqM/C1XacnAGxptmqQRgaYBpud9a6
	bSURBb8t3SU9gL2ZS8ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZ89-0003id-KT; Wed, 19 Jun 2019 11:51:57 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZ7y-0003hd-LK
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 11:51:48 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5F7BE25B262;
 Wed, 19 Jun 2019 21:51:43 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 5F64D9409FF; Wed, 19 Jun 2019 13:51:41 +0200 (CEST)
Date: Wed, 19 Jun 2019 13:51:41 +0200
From: Simon Horman <horms@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: shmobile: defconfig: Refresh for v5.2-rc1
Message-ID: <20190619115141.wwze45px5qinll2j@verge.net.au>
References: <20190618124714.15120-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618124714.15120-1-geert+renesas@glider.be>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_045146_848792_56873B59 
X-CRM114-Status: UNSURE (   8.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 02:47:14PM +0200, Geert Uytterhoeven wrote:
> Update the defconfig for Renesas ARM boards:
>   - Drop CONFIG_GENERIC_PHY=y (selected by PHY_RCAR_GEN3_USB2).
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Hi Geert,

I believe this duplicates the following patch which is present
in renesas-next.

b995421faef5 ("ARM: shmobile: Remove GENERIC_PHY from shmobile_defconfig")

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
