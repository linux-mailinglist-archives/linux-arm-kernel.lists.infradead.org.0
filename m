Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F9242B38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:46:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j1D59lGjGVJUEFmQPPVs44Z2pAV9regBD0QDipX2Goc=; b=XsqZHhhqz1bp8W
	6nUtPeDdneKpDMN/2rMtyacOfXPMysNurQTJIh1gq7KFGkEcXwinm77zhcMU3Zkpo0pUmx0ohS7Gk
	QtR6xcInE3GiT2C2PdzoVNTTRY2r1HJjSjl3agXg2OvVCFv9LiAO2X9OQbx00t9wedqacjbvkJ2ks
	5HsKGaxyu07zznRHdYcfah1q8iChFhQYFLCJpXUkNO31oSJTRwgiHi0IjtG61EYh378rrlESCNOyw
	U1ef/Al2FeKNWUhIAE3z+cJuaK5dvw9sB5w7vvMwAFZtg3oPQbQ6mCrkbGGOdVMkOqVK7MbzMyy3/
	yCLkGfYEiw8AP+LS4Uuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb5SG-0007qB-1p; Wed, 12 Jun 2019 15:46:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb5S6-0007pn-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:46:19 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 75034215EA;
 Wed, 12 Jun 2019 15:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560354378;
 bh=TIygE0O6LC4Ys2s3ExLOdVvORDBsWuNaYO31kRNy4aI=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=giDlRfYo8kFsbPi9YfCWwmNp5OujByMMzyQIEf70Cfv9ywvyY2EJ/QkTDdp/ujRdi
 Jl9tGdnDpFtZvu5sLysOoeAgTN8+NWyHnqS0mw77VVUx3uBPxRA3oU8AznYVR/z5PL
 MJpNFOuCqxfiNYUt2vRJDz2iS4sSDn2Nbd1R76Ro=
MIME-Version: 1.0
In-Reply-To: <68c0d022-569c-c529-047a-a0bfae17994d@free.fr>
References: <68c0d022-569c-c529-047a-a0bfae17994d@free.fr>
To: Marc Gonzalez <marc.w.gonzalez@free.fr>,
 Michael Turquette <mturquette@baylibre.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v1] clk: xgene: Don't build COMMON_CLK_XGENE by default
User-Agent: alot/0.8.1
Date: Wed, 12 Jun 2019 08:46:17 -0700
Message-Id: <20190612154618.75034215EA@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_084618_914161_EA16155E 
X-CRM114-Status: UNSURE (   5.24  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Feng Kan <fkan@apm.com>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Marc Gonzalez (2019-06-12 08:03:56)
> Building COMMON_CLK_XGENE is pointless, unless we're building for
> an XGENE system.
> 
> Signed-off-by: Marc Gonzalez <marc.w.gonzalez@free.fr>
> ---

Applied to clk-next


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
