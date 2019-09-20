Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62132B91CC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 16:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZODXXB4SjKknZRf2vBZF6ZS/TXdXKrfmq6pbfcXLCE=; b=H+mnEZpoOzM5Q9
	0T19sB71Hu/0p6UXRYkNPkMjjAa/ysv//VK7nRmEwiLAAA3/viobghEHYC4vE3XIgHFG7GWGUOjG/
	gnGtuNylxx5sy/UW5Bj1I4FxKwgO9s3xjQ6OZ0Etj6rc6gJiWWiPEO54ryrZX5dtqisZUuO27xvbV
	RsktS5xEsDRHcbXPKxepvtaSVFH+jGEe5IVPSp5Q39vVLsS/K2/nw/qBENB6GNDcu9nQiOp7CdsA1
	R8iOA0rZPrpZuu7SIpX3aYe6p4PW/il5P1CHLuKFV+RPEE9Yt8R793N4+4k9x+qtYQUrMmrfDQg+9
	dVFhdC9+ZKyw1bJ8HVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBJrl-0004Wt-TO; Fri, 20 Sep 2019 14:26:33 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBJrY-0004Uq-FV
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 14:26:21 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 1B04780AA;
 Fri, 20 Sep 2019 14:26:49 +0000 (UTC)
Date: Fri, 20 Sep 2019 07:26:14 -0700
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCHv6 01/10] dt-bindings: omap: add new binding for PRM
 instances
Message-ID: <20190920142614.GQ5610@atomide.com>
References: <20190917174817.GA27938@bogus>
 <20190919123001.23081-1-t-kristo@ti.com>
 <CAL_Jsq+x93K9=L4s6ZdmsDb__==kP36WbM_WY1pB-_QNPOhsGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+x93K9=L4s6ZdmsDb__==kP36WbM_WY1pB-_QNPOhsGw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_072620_561201_BD91AC45 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: devicetree@vger.kernel.org, Tero Kristo <t-kristo@ti.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 linux-omap <linux-omap@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Rob Herring <robh+dt@kernel.org> [190919 19:55]:
> On Thu, Sep 19, 2019 at 7:30 AM Tero Kristo <t-kristo@ti.com> wrote:
> >
> > Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> > of these will act as a power domain controller and potentially as a reset
> > provider.
> >
> > Signed-off-by: Tero Kristo <t-kristo@ti.com>
> > ---
> > v6: added common compatible as per request from Tony Lindgren. This is
> >     to simplify the support code in patch #10 of the series slightly
> >
> >  .../devicetree/bindings/arm/omap/prm-inst.txt | 30 +++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Looks good to me too:

Reviewed-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
