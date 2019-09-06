Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61317ABCB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3pEL755IXXgiVSw+06/KZYuXSBEN+KSzFML3fyIvJ2Y=; b=HZvx8i79LC19Ik
	7TmD0VpE3CsnOrlDIE0U9gTsFppoaVJXeih3XzHA/FcZCLYhSum/ofkFC+d5PyQ/u5F/pNb1AfUBm
	l3OOKvUn/uWUQooBBBPowEK5r4CUHH8A83rH3Eu38uWQQeHpyhH+mVNoV1ShTwIjb3BqvQSvjC3w/
	CQzCgor9f/89q1EQxQ7YFbVnMzetPjy0nkXlLdKEzMNKrhZqDFKP2zbVj6UGvI5wlPAj//bVkPgz9
	F+VKqBIfvr62OLe17ODRALECoPjv4RzG+Sh5iehpTwWAYs3JgDVRZ4rurUY53pGwsOnbmqDVjBHYw
	7MydvWSTER7p46iDY6sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GIT-00046c-UX; Fri, 06 Sep 2019 15:37:13 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GII-00046C-GQ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:37:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 7BB3880CC;
 Fri,  6 Sep 2019 15:37:31 +0000 (UTC)
Date: Fri, 6 Sep 2019 08:36:58 -0700
From: Tony Lindgren <tony@atomide.com>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCHv4 01/10] dt-bindings: omap: add new binding for PRM
 instances
Message-ID: <20190906153658.GB52127@atomide.com>
References: <20190830121816.30034-2-t-kristo@ti.com>
 <20190906103558.17694-1-t-kristo@ti.com>
 <CAL_JsqLHTsEz6RJSi3rZ9AKyTBc00abyAxqwG8B9zAqL6cnv+w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqLHTsEz6RJSi3rZ9AKyTBc00abyAxqwG8B9zAqL6cnv+w@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_083702_964565_5358BBD5 
X-CRM114-Status: UNSURE (   9.42  )
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

* Rob Herring <robh+dt@kernel.org> [190906 12:57]:
> On Fri, Sep 6, 2019 at 11:36 AM Tero Kristo <t-kristo@ti.com> wrote:
> >
> > Add new binding for OMAP PRM (Power and Reset Manager) instances. Each
> > of these will act as a power domain controller and potentially as a reset
> > provider.
> >
> > Signed-off-by: Tero Kristo <t-kristo@ti.com>
> > ---
> > v4:
> > - renamed nodes as power-controller
> > - added documentation about hierarchy
> >
> >  .../devicetree/bindings/arm/omap/prm-inst.txt | 31 +++++++++++++++++++
> >  1 file changed, 31 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/omap/prm-inst.txt
> 
> Reviewed-by: Rob Herring <robh@kernel.org>

Looks good to me too:

Reviewed-by: Tony Lindgren <tony@atomide.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
