Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A9199B58
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:23:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eThEnWYKucTwNHkkJjqMkNl1U/CCkjofV/6j9gPK/wc=; b=LFN6xNzeZT8kcu
	diFvdvefqryqLRM/dByC/W50ngZF3BNVc/915oy2wIybSJrpLBD+Jj+Ng+TMcdVpXW72X+WYhPtVr
	UEZfxcAKHtifl2VxLec1aVmxpW+Mp7JYXuY3KulaNGO59zYt28YaEQe3qrH5WX472I7v+ueK79a8o
	lv17azkd8VARYabE+YqCCNd4tj0YyCeEdJR08HT3f086WKs7Rl6KXsCD05HBfh4HBOhnCqF9CNDqE
	3rlk+rKeZPIrNTuP3/dLvXT8DBceEFZiPBHTWKVzpoLDqlL8K02qQYTc9H/Mmjg3JjEBMyS44A5cl
	CAq7PlXQw5vXCHmqLsbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJfP-0001xu-Ak; Tue, 31 Mar 2020 16:23:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJfF-0001we-Hg
 for linux-arm-kernel@bombadil.infradead.org; Tue, 31 Mar 2020 16:22:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=N+Tl45ndhVJiEiul/0jy6YG03MqQHP64g2T1iK2qlEc=; b=PECuIpU3q6u+/pmrEsHpHQnbwt
 HGTf8HPDXW8Hde419CZFT3pv7xRvoadkrP3f0kekeh7jCuChiWq399J2o6F47FgYEwwReVnvCCArT
 4wS/aEYuqnjE4hjWPRpUI8Wr7ixPPKK8ztFZFh4R4jn9e/grVied4lCwu8h6o1mpl+C8/mykD+Hjk
 W4xFTYOmZ3ZjFRROzb5nOxEVL83VEOrOzCMdODujc55YXXGWx9UIjMNLYuzguQw6Y71uSf1Q6ZKkJ
 A5AQmGhu4X2bDHBKX4b6B6n6l3EC7mVSCfA0/Y1l0tm9dhaVMn4cSMvN1nOCEldSiyL55QVOb/zL1
 AhAEcnjQ==;
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJFjL-0000B6-MR
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 12:10:56 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id C76CD3C0579;
 Tue, 31 Mar 2020 14:03:55 +0200 (CEST)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ctrubKkXli8i; Tue, 31 Mar 2020 14:03:50 +0200 (CEST)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 576853C00C0;
 Tue, 31 Mar 2020 14:03:50 +0200 (CEST)
Received: from lxhi-065.adit-jv.com (10.72.94.51) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.487.0; Tue, 31 Mar
 2020 14:03:50 +0200
Date: Tue, 31 Mar 2020 14:03:46 +0200
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77961: Add SCIF and HSCIF nodes
Message-ID: <20200331120346.GA27351@lxhi-065.adit-jv.com>
References: <20200327125926.22927-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327125926.22927-1-geert+renesas@glider.be>
X-Originating-IP: [10.72.94.51]
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Eugeniu Rosca <roscaeugeniu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Many thanks for your contribution.

On Fri, Mar 27, 2020 at 01:59:26PM +0100, Geert Uytterhoeven wrote:
> Add the device nodes for all SCIF and HSCIF serial ports on R-Car M3-W+.
> Add the missing DMA properties to the already-present SCIF2 node.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Eugeniu Rosca <erosca@de.adit-jv.com>

Boot-testing the M3-W+ Salvator-XS on renesas-devel-2020-03-23-v5.6-rc7:

* before the patch, I get:
e6e88000.serial: ttySC0 at MMIO 0xe6e88000 (irq = 103, base_baud = 0) is a scif

* after the patch:
e6550000.serial: ttySC1 at MMIO 0xe6550000 (irq = 26, base_baud = 0) is a hscif
e6e88000.serial: ttySC0 at MMIO 0xe6e88000 (irq = 104, base_baud = 0) is a scif

-- 
Best regards,
Eugeniu Rosca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
