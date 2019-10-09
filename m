Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ED6D17A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 20:39:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKtwA6mz/OFql0WRdFSLzJZTdXEBTaTgDPzRYI5FiDE=; b=hJ3bE1tHpS9mB5
	/re3U9ku8TFXH9StLRhckMPHkAXi2y7Jm7AABWFjvAqAuuoEbRYp/Uy6rRcwpYYx77IOJ+oT2xpLh
	Ti1aT9QAzItDCBDdaaXESPSbiDhFvqQ41tSC6k3QTUuiGCgjHeiPBzofw9/JIUmNpv3+aI3g3wmT0
	5OFASybdoFR/071KAAZQS1P1O+YS8ANpPi546yataOlhvZUwAUZvpjNjfMgoWfx2k+NBSOs/iYHbG
	QfnyubB4bNjqqRdQvkBRH00+8JIa6axFEv5Eoz8XWQen6iMz46hxokj0u729P4Hdky6+4PYDShB2Z
	01kvXeQZDwkDJjeoqpTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIGrs-0008Sh-Ab; Wed, 09 Oct 2019 18:39:24 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIGrl-0008SD-PI
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 18:39:19 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7CAEC8140;
 Wed,  9 Oct 2019 18:39:48 +0000 (UTC)
Date: Wed, 9 Oct 2019 11:39:11 -0700
From: Tony Lindgren <tony@atomide.com>
To: "santosh.shilimkar@oracle.com" <santosh.shilimkar@oracle.com>
Subject: Re: [PATCHv8 0/9] soc: ti: add OMAP PRM driver (for reset)
Message-ID: <20191009183911.GN5610@atomide.com>
References: <20191008125544.20679-1-t-kristo@ti.com>
 <20191008140002.GY5610@atomide.com>
 <5e10f95c-7ec9-d3a7-6862-f6f07a9c1495@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e10f95c-7ec9-d3a7-6862-f6f07a9c1495@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_113917_859763_A964C728 
X-CRM114-Status: GOOD (  10.30  )
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
Cc: devicetree@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 p.zabel@pengutronix.de, ssantosh@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* santosh.shilimkar@oracle.com <santosh.shilimkar@oracle.com> [191009 09:02]:
> On 10/8/19 7:00 AM, Tony Lindgren wrote:
> > * Tero Kristo <t-kristo@ti.com> [191008 05:56]:
> > > Hi,
> > > 
> > > Hopefully this is the final revision of the series. Just a repost of v7
> > > with the single comment from Philipp fixed, and added reviewed by tags
> > > from him for couple of the patches.
> > 
> > Santosh, when applying these, can you please provide me an immutable
> > branch maybe against v5.4-rc1 that I can use as the base for the related
> > dts changes?
> > 
> > For the whole series where not already done, please feel free to add:
> > 
> > Reviewed-by: Tony Lindgren <tony@atomide.com>
> > 
> Pushed a branch out with series and your reviewed-by tag. I have tagged
> it yet in case Peter's soc patches get ready.
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/ssantosh/linux-keystone.git
> for_5.5/driver-soc

Great, thanks!

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
