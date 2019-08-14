Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2528CFAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:33:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZhGSCl7QBKGHPlBJBECTWvIGOiPIc9PUQ1c6V30R4Y=; b=YKXs8EfvKfnPG5
	JHaH6Bxtffg3NQhNh3aRUDnejS4weT013171u1KiioC+zTSYq1hkgC0c2/k+hKcidBG4VNws/SkOI
	gOlta1bVwRZAHnkJmCtbhnL9AnTHIFsCw42T8Lh94yBlF8ymEHbgCBuAbGNEVLfpVI0gEOluAEuhh
	u/f8CC8uIL3zTlZ/Y8yRxvJAJufhbpgSQ+jFmbVsIOuSpnBGsFkL9BZZsgI/iq7obqLSQTx6rd8aP
	bLBW1hQOB+nJ5pp6J1+GYABvufrAJYFBXR5wJ0yUxP3hDD2JZzvX1V1q8lfcUq+y7opUrfIkuo25V
	o/j8J8tBEgI4JS1yo0YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpeq-0006zh-FA; Wed, 14 Aug 2019 09:33:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpec-0006zO-St
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:33:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 73B64344;
 Wed, 14 Aug 2019 02:33:14 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 70F8B3F694; Wed, 14 Aug 2019 02:33:13 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:33:11 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Message-ID: <20190814093311.GE50688@arrakis.emea.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-6-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813170149.26037-6-will@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_023314_974981_1802AC53 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 06:01:46PM +0100, Will Deacon wrote:
> Rather than subtracting from -1 and then adding 1, we can simply
> subtract from 0.
> 
> Cc: Steve Capper <steve.capper@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
