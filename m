Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E85E111D44A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 18:43:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NpgTMECnpqOWLdzqJkgHxuF5I7DiV8MP+LeFfOfuaF4=; b=BNEbt3KgfKGIhZ
	Y7nRDc+it95g3MmjKjA9kRshSoGgvqg+YM/zxDSpTVg7m33bcFarEfDK7LPTaE3H/yEOz6qgkoxaj
	ha0zeyTtKvodohE//yMsmhA20igXVC6WPBh1HwyCVib0J4VllgeFbv2Meen/NZW2BF5li2ITot54b
	UVjGDgNSZf4aPBiWLSdSQduWds+7MnwLovASO/X1DyQ2N+4dRz79CiYehW79nZjGugNwBXNGKdVOm
	dqwxaOphJKUQ1l3DafYfmpQjxurTlfb3B809nq2yx8pDzsCZOz+zABlh/f0GKSkt7x9cn5z8U4yfQ
	Jgd8YjsJb0H/XorBwmdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifSUW-0003bm-99; Thu, 12 Dec 2019 17:43:08 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifSUO-0003bU-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 17:43:01 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 63E1B80C0;
 Thu, 12 Dec 2019 17:43:38 +0000 (UTC)
Date: Thu, 12 Dec 2019 09:42:56 -0800
From: Tony Lindgren <tony@atomide.com>
To: Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH] ARM: OMAP2+: am43xx: Add lcdc clockdomain
Message-ID: <20191212174256.GG35479@atomide.com>
References: <20191211202558.5988-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211202558.5988-1-d-gerlach@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_094300_543071_60E995AA 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Dave Gerlach <d-gerlach@ti.com> [191211 12:25]:
> As described in AM437x TRM, spruhl7h, Revised January 2018, there is
> an LCDC clockdomain present in the PER power domain. Although it is
> entirely unused on AM437x, it should be defined along with the other
> clockdomains so it can be shut off by Linux as there are no users.

Thanks applying into omap-for-v5.6/soc.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
