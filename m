Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C37A6983
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 15:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wLhbUXSyxEHqcZaQgvI1XQP6HTepcZqtIN1bhMGajw=; b=VJsKj44d1tsNm4
	4c9VygUyiapqPg1ixy+XLkK12GWXDGoYIM3i6DZwygChvWSZsqoKo41ejctgRZn+MhiOu8luAQIxA
	oUaCXCKnQ/Sl1F7MGYCP88y2uZLjupLO2yG9sIAV/rZsV9R0vv8p1eSWqfGBW3xRT/xiMabJCHIB/
	WlLD/Py5rbwMPj6AphfDzGcD0GLJC3du2QAyOW5P2+djNySIRGalspVUR0VKYvlniqa4C/7DitjMV
	OPnscJIUY0/TQp48gWrsGTdZpmgFyL4C7yTM4sTj5TFxpe5Qkn5kTPpMTou031IkI2PoFUy2564qk
	m044VY/LdJbQs0lffu+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i58g0-0000TC-Ux; Tue, 03 Sep 2019 13:16:53 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i58fp-0000SZ-35
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 13:16:42 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id AA52280CF;
 Tue,  3 Sep 2019 13:17:05 +0000 (UTC)
Date: Tue, 3 Sep 2019 06:16:32 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCHv3 01/10] dt-bindings: omap: add new binding for PRM
 instances
Message-ID: <20190903131632.GL52127@atomide.com>
References: <20190830121816.30034-1-t-kristo@ti.com>
 <20190830121816.30034-2-t-kristo@ti.com>
 <20190902042631.GA22055@bogus>
 <e8d700cd-8f3c-5cea-a022-b20a595fc1e1@ti.com>
 <CAL_Jsq+AJj1bgOQYG=c86A5HC_g2UZph387oVEKZyP4M18kURw@mail.gmail.com>
 <7c2c8a4d-d24e-ceec-afc1-04cdc4d5d952@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7c2c8a4d-d24e-ceec-afc1-04cdc4d5d952@ti.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_061641_178424_E070478F 
X-CRM114-Status: UNSURE (   9.28  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [190903 08:15]:
> On 03/09/2019 11:10, Rob Herring wrote:
> > I prefer that bindings be complete as possible even if driver support
> > is not there yet. Adding power domain support may only mean adding
> > '#power-domain-cells'.
> > 
> > The location is fine then.
> 
> Yeah, I assume just adding power-domain-cells should be enough. I am not too
> sure before I start trying this out though so did not want to add it yet.

Should we call the device tree node name power-controller instead of
reset controller though? Most of the PRM instances do not have a
separate rstctrl reset control functionality.

Anybody got better any better naming in mind?

Regards,

Tony



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
