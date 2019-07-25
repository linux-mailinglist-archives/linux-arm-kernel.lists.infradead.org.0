Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 095237525F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 17:18:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhpdCCe5RXcPVydCIiaaMXsG8pctP37gcqcnWbnSTkk=; b=BkgH53t40tPbmy
	FA15RNrc6EV9D96tK9oF2wWNFvr0INGrSH7gW8nCLbEwsoTgNFdww07tj20Jo98uGCrtAwd8TBZ1L
	AZuPX6HtEdoeqcoxHZr3b8t4ARP809TLwu929Rd+HN0uJXnNQC422xla86aYlBGVcIr/TblMdcYPH
	NTQr2OITR626MoIuOdUudLzypQrrk2DFNaT3hTGiMjwq3Cp4+uqm/rrGaf8/ZspuzAWVRSP6KQVDk
	JbJVu1wlk2NQPfSPEdUXF58RTFqbkg/HcuiflVdLDK6AVFiFRMnvNfRRZqPhNxogB3TTywfnvzE2L
	XI3M70CzkPpDpmtKu6Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqfVK-00056A-I8; Thu, 25 Jul 2019 15:18:02 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqfV7-00055J-0j
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 15:17:50 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 532AC68B02; Thu, 25 Jul 2019 17:17:42 +0200 (CEST)
Date: Thu, 25 Jul 2019 17:17:42 +0200
From: Torsten Duwe <duwe@lst.de>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v3 6/7] dt-bindings: Add ANX6345 DP/eDP transmitter binding
Message-ID: <20190725151742.GA4820@lst.de>
References: <20190722151202.5506768B20@verein.lst.de>
 <CA+E=qVdu3Hf7ufst-t_CiWkquximGFX8B2RcoQ1x0m++cc8n8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVdu3Hf7ufst-t_CiWkquximGFX8B2RcoQ1x0m++cc8n8Q@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_081749_214838_6B994782 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 11:51:36AM -0700, Vasily Khoruzhick wrote:
> On Mon, Jul 22, 2019 at 8:12 AM Torsten Duwe <duwe@lst.de> wrote:
> >
> > The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> > for portable devices.
> >
> > Add a binding document for it.
> 
> I believe you'll have to convert it to yaml format.

Right. Thanks for the reminder.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
