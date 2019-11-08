Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF00F5231
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:06:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UurscdnAqf2x5TzkWUYACoixLH+mzHg4fT1H8V28jw=; b=GhHjwUTcIJeg/2
	aJiY7e2XlIq+4/mWMUBuLGvIDXxiPkpAvAwrPtejYcaE4XTMdauCL8DzVSNzpXcAggqgJXzEHMaiu
	54BO3lIPbtz2YRulG5CDO4tMjmeQyGRn2hEPk1uAthiL0XfZcTWwXMO174oOqIlGaxm/OnzAsBAgR
	TPdSUQdxPFvyobmzEVxhvfsGnxtfOwvIRTm1EI742wfaYt+AYeD1qeMUNR/fnxhEnkePFDsCGqVbc
	szts92aUoMS/ynohsn9zacpRLBBDf+fXb7fhI2DgpgB9s43pbQYdeptn7ZVwU5wU9dSaxWWeAje/R
	aPEhn9ASArImWStvpJ3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT7io-0000s1-5i; Fri, 08 Nov 2019 17:06:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT7if-0000rd-Fu
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:06:46 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id BBC8480D4;
 Fri,  8 Nov 2019 17:07:20 +0000 (UTC)
Date: Fri, 8 Nov 2019 09:06:41 -0800
From: Tony Lindgren <tony@atomide.com>
To: Benoit Parrot <bparrot@ti.com>
Subject: Re: [Patch v2 3/5] ARM: dts: dra7: add vpe clkctrl node
Message-ID: <20191108170641.GI5610@atomide.com>
References: <20191104203841.3628-1-bparrot@ti.com>
 <20191104203841.3628-4-bparrot@ti.com>
 <20191108165554.GF5610@atomide.com>
 <20191108170231.ubwfu2nvcwjfabas@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108170231.ubwfu2nvcwjfabas@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_090645_569882_169EE919 
X-CRM114-Status: UNSURE (   8.89  )
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
Cc: Tero Kristo <t-kristo@ti.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Benoit Parrot <bparrot@ti.com> [191108 17:00]:
> Tony Lindgren <tony@atomide.com> wrote on Fri [2019-Nov-08 08:55:54 -0800]:
> > Hi,
> > 
> > * Benoit Parrot <bparrot@ti.com> [191104 20:39]:
> > > Add clkctrl nodes for VPE module.
> > 
> > Can you please add a comment describing that we currently need to
> > use custom node names here instead of the standard naming?
> 
> Tony, what do you mean "custom node name" here?
> I followed the exact same syntax that was already there... confused..

Oh sorry for being unclear. Yeah so the conclusion of the discussion was
that we still need custom node names for now.

And for patch "[PATCH] clk: ti: add clkctrl data dra7 sgx" I added you to
Cc, and it has this in the patch description:

"Note that because of the current dts node name dependency for mapping to
 clock domain, we must still use "gpu-clkctrl@" naming instead of generic
 "clock@" naming for the node. And because of this, it's probably best to
 apply the dts node addition together along with the other clock changes."

So can you please add something similar to your clock node patches too
to explain why we cannot use standard node names there?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
