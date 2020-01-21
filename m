Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597014411A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 16:59:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfStePQOYlu6zNOwIzSMspVZ1uzxXH64DrZwkBD9VN8=; b=IaBs1PkV+eI+dO
	8VAE5GinG88K2fJksKqte56uxkEi03AK9xzNn/cuS+DW6VckVe+s5AE/KvT/PahCWdSbPK4tfhdPS
	e2u+a/IVMRh6LevsTcOMfXL01GuRcVpuOPavlOqpXiSUzyz6bDKW4rldwJS3EQbYZIAs1iMzwIUDI
	IB2/dDYTQ7YGIBrocN1VfMdVyEy9MPaBLzVSte1sA7ajfkVa12dWGir641PDdPLEPRTOgaXuXk0o0
	U3TfRbq/a6WP38Ke2pPynW2trvAK5xGjGre3CxvMbzysoUCEalPAuWVy6yE4duA31+wjcPpv0hn4R
	QtaEDgnV5yXAp/g3qtkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvvq-0001NL-BC; Tue, 21 Jan 2020 15:59:10 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvva-0001M2-68
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 15:59:00 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id 9485E3C04C1;
 Tue, 21 Jan 2020 16:58:52 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nrM6_Rn9nnvl; Tue, 21 Jan 2020 16:58:47 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 760973C00C5;
 Tue, 21 Jan 2020 16:58:47 +0100 (CET)
Received: from lxhi-065.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Tue, 21 Jan
 2020 16:58:47 +0100
Date: Tue, 21 Jan 2020 16:58:44 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH] arm64: kbuild: remove compressed images on 'make
 ARCH=arm64 (dist)clean'
Message-ID: <20200121155844.GA1284@lxhi-065.adit-jv.com>
References: <20200121134739.22879-1-erosca@de.adit-jv.com>
 <CAK7LNASm=7P3cJ=SB3hmPjqWTii1Lv2pf3p0xc-hx0XNTdaJHw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK7LNASm=7P3cJ=SB3hmPjqWTii1Lv2pf3p0xc-hx0XNTdaJHw@mail.gmail.com>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_075854_378575_B492EB59 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dirk Behme <dirk.behme@de.bosch.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eugeniu Rosca <erosca@de.adit-jv.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Yamada-san,

On Wed, Jan 22, 2020 at 12:23:45AM +0900, Masahiro Yamada wrote:
> Please change Cc with my
> 
> Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Updated in https://lore.kernel.org/linux-arm-kernel/20200121155439.1061-1-erosca@de.adit-jv.com/

Thank you for reviewing the patch.

-- 
Best Regards
Eugeniu Rosca

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
