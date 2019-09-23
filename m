Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CAABBAB4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XgIiS99qTixbyxrI73S8UN9PE2/JdcIImwgvVlSZ3I=; b=dfFHTSX18YvLss
	oc8HD6wR09v1Z+e9vtUQTChHkWyCTRg2pkG329sn1VVc9l/namYFG8qlUBzDJ/uVNlLFIfaDEt74M
	BgSmegzXz9RfybJ1lHsh1y/DIkpxVe7J8wPDAtRXBqLFBT+3PgZcGmDae3BiJ2eOkKVtiFENoaNGF
	GxlogP829uWWE59oubICtlz7LnjYQd6RDLivrhYRKR8Cd7CRDacT4dyhaeT7G1dLHsSphsjgAmKpr
	btGz+SE2z3KI/QRbmr0oXwWisPUtwQMmUH1MEAMVtV6g1HBKF2aQawgmPxlor1Tv1qxwJqmSNUVf9
	DDSfGiM8ftY5bDviN/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSQq-0005Z6-Q7; Mon, 23 Sep 2019 17:47:28 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSQc-0005Ye-B3
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:47:15 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 8F9E4809F;
 Mon, 23 Sep 2019 17:47:44 +0000 (UTC)
Date: Mon, 23 Sep 2019 10:47:09 -0700
From: Tony Lindgren <tony@atomide.com>
To: santosh.shilimkar@oracle.com
Subject: Re: [PATCHv5 00/10] soc: ti: add OMAP PRM driver (for reset)
Message-ID: <20190923174709.GY5610@atomide.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
 <20190920142849.GS5610@atomide.com>
 <13a77bd8-72bd-6a44-9141-d5492be82d82@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13a77bd8-72bd-6a44-9141-d5492be82d82@oracle.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_104714_421257_76E313FD 
X-CRM114-Status: GOOD (  12.05  )
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
 robh+dt@kernel.org, p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* santosh.shilimkar@oracle.com <santosh.shilimkar@oracle.com> [190920 19:20]:
> On 9/20/19 7:28 AM, Tony Lindgren wrote:
> > * Tero Kristo <t-kristo@ti.com> [190912 04:39]:
> > > Hi,
> > > 
> > > V5 of the series, re-sent the whole series as one patch was dropped.
> > > Changes compared to v3/v4:
> > > 
> > > - removed dependency towards clock driver (patch #5 was completely
> > >    dropped compared to v3/v4)
> > > - dropped clocks property from dt binding
> > > - re-added the pdata patch which was accidentally dropped out (it has
> > >    dependency towards this series.)
> > > 
> > > The new implementation (without clock driver dependency) relies on the
> > > bus driver to sequence events properly, otherwise some timeouts will
> > > occur either at clock driver or reset driver end.
> > 
> > With the two updated patches seems like we're done with this
> > series?
> > 
> > If so, I suggest either Santosh or me sets up an immutable
> > branch against v5.3 or v5.4-rc1 that we all can merge in.
> > I will need it for the related dts changes at least.
> > 
> I will pick this up Tony and apply it once v5.4-rc1 is out.

OK thanks.

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
