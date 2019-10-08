Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A98CFC02
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 16:09:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lpbiDLpb4FwyMGjjsigXLLyaBy+3SFRrc5aU/f7lzt8=; b=pLkLVAZwiYi32J
	yQISmhu1fPSHzpRMByISUe8KlXfwJDm0+BFXeqy+VPRKwLgARHQd/KOfw5+HlPID7FTxwn+gBaRAm
	jmZ+8oJCKz35qi2K9fa+Ag/aVrmU8TwkEh2b/wHgjccUBnm3mnV+BxN4AxT2/+FEfq0AaOM/UiWXE
	nit8H1g5GDGdoGdjhz/78TjhpZWh8O8upYOPO6qW/Eu4ZlWT3HWrDwDvTsj95/7+u6dRZlL9VpBge
	AWaA4a69uB6Llqg11mUA+NU1HtxIUX2Oi6V+bAkLUFzyQnd5oaTvwlKmMXKq6sb7HPdyFa7qN5m4T
	8xlARh6UcHMlT1ZPHiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqBL-0003hK-Kv; Tue, 08 Oct 2019 14:09:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqB8-0003gQ-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 14:09:31 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 222338081;
 Tue,  8 Oct 2019 14:10:04 +0000 (UTC)
Date: Tue, 8 Oct 2019 07:09:27 -0700
From: Tony Lindgren <tony@atomide.com>
To: Tero Kristo <t-kristo@ti.com>
Subject: Re: [PATCH 0/3] bus: ti-sysc: fix reset sequencing
Message-ID: <20191008140927.GA5610@atomide.com>
References: <20191007122931.18668-1-t-kristo@ti.com>
 <20191007163807.GU5610@atomide.com>
 <32031606-23da-2e0b-6d75-7225a082eb6b@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <32031606-23da-2e0b-6d75-7225a082eb6b@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_070930_693650_E2D8BF6B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Tero Kristo <t-kristo@ti.com> [191007 19:00]:
> On 07/10/2019 19:38, Tony Lindgren wrote:
> > * Tero Kristo <t-kristo@ti.com> [191007 12:30]:
> > > Hi,
> > > 
> > > These three patches make sure that IOMMU/remoteprocs work across
> > > all devices with the latest OMAP PRM series for reset support [1].
> > > The last dangling issues were caused by the removal of the hardlink
> > > between the reset + clock drivers.
> > 
> > OK. I presume these are safe to wait for v5.5 since we don't
> > have the rstctrl driver yet?
> 
> Yeah, they are safe to wait.

OK applying into omap-for-v5.5/ti-sysc thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
