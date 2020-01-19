Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA85514203B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 22:38:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkd9v39YLZU6/ZT8/C8MX/MbX3uxXbeIsgvUric3v7E=; b=LSbBLh0TSe+cR5
	6LvpUZuu2MwTOfDvAw5aHV4MIGKZ1PDoElsumUffaZLROgkNOab5KtRA4ADQmql9R9GxlKvQxMGjZ
	qmv7tE/QkCcsVHo0sXpDVovV8kHL+oLBlj5qZRKUV26MFZiCOhS+wNJHLbk2z8G67LxnRdgo2M7K1
	FaB1nQfXwcp0+F1raUkxPLlA50qK1LrV9GrxEEmFo2xNTJUCkWP3Ns9FJLOR56T9EouwJ+PXju/79
	Zsm2Bj4kZRQiFSLkSkcMu5CoOy9+SRqMt1ZpbbthIXZnUxiiuQZ+pbMhDnXnJYvMzMPw66Zd7GFvl
	m/8+YDBRKLnBcjL5iFAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itIHC-0002EY-6E; Sun, 19 Jan 2020 21:38:34 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itIH3-0002DH-Bz
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 21:38:27 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 95E5780402;
 Sun, 19 Jan 2020 22:38:17 +0100 (CET)
Date: Sun, 19 Jan 2020 22:38:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: display: panel: add bindings for
 logic technologies displays
Message-ID: <20200119213815.GA3363@ravnborg.org>
References: <20191027142609.12754-1-marcel@ziswiler.com>
 <20191027142609.12754-3-marcel@ziswiler.com>
 <20191030142835.GA31293@bogus>
 <db84ef6c90a9f327bc32c4948109c759b572a2af.camel@toradex.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db84ef6c90a9f327bc32c4948109c759b572a2af.camel@toradex.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=m8ToADvmAAAA:8
 a=k76NmfXvAAAA:8 a=mQzObvnkkXBxZI0lgikA:9 a=jNJEgBlmj-K6qGMv:21
 a=WmImvuMBWUKtNAjK:21 a=CjuIK1q_8ugA:10 a=kCrBFHLFDAq2jDEeoMj9:22
 a=xklTzJp5TIrWR6y8xC-k:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_133825_768298_C98F6C15 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "j.bauer@endrich.com" <j.bauer@endrich.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "info@logictechno.com" <info@logictechno.com>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marcel.

On Sun, Jan 19, 2020 at 09:25:02PM +0000, Marcel Ziswiler wrote:
> Sorry, just noticed that this has not gone through yet.
> 
> On Wed, 2019-10-30 at 09:28 -0500, Rob Herring wrote:
> > On Sun, Oct 27, 2019 at 03:26:09PM +0100, Marcel Ziswiler wrote:
> > > From: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > 
> > > Add bindings for the following 3 previously added display panels
> > > manufactured by Logic Technologies Limited:
> > > 
> > > - LT161010-2NHC e.g. as found in the Toradex Capacitive Touch
> > > Display
> > > 7" Parallel [1]
> > > - LT161010-2NHR e.g. as found in the Toradex Resistive Touch
> > > Display 7"
> > > Parallel [2]
> > > - LT170410-2WHC e.g. as found in the Toradex Capacitive Touch
> > > Display
> > > 10.1" LVDS [3]
> > > 
> > > Those panels may also be distributed by Endrich Bauelemente
> > > Vertriebs
> > > GmbH [4].
> > > 
> > > [1] 
> > > https://docs.toradex.com/104497-7-inch-parallel-capacitive-touch-display-800x480-datasheet.pdf
> > > [2] 
> > > https://docs.toradex.com/104498-7-inch-parallel-resistive-touch-display-800x480.pdf
> > > [3] 
> > > https://docs.toradex.com/105952-10-1-inch-lvds-capacitive-touch-display-1280x800-datasheet.pdf
> > > [4] 
> > > https://www.endrich.com/isi50_isi30_tft-displays/lt170410-1whc_isi30
> > > 
> > > Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> > > 
> > > ---
> > > 
> > > Changes in v2:
> > > - New patch adding display panel bindings as well as suggested by
> > > Rob.
> > > 
> > >  .../panel/logictechno,lt161010-2nhc.yaml      | 44
> > > +++++++++++++++++++
> > >  .../panel/logictechno,lt161010-2nhr.yaml      | 44
> > > +++++++++++++++++++
> > >  .../panel/logictechno,lt170410-2whc.yaml      | 44
> > > +++++++++++++++++++
> > >  3 files changed, 132 insertions(+)
> > >  create mode 100644
> > > Documentation/devicetree/bindings/display/panel/logictechno,lt16101
> > > 0-2nhc.yaml
> > >  create mode 100644
> > > Documentation/devicetree/bindings/display/panel/logictechno,lt16101
> > > 0-2nhr.yaml
> > >  create mode 100644
> > > Documentation/devicetree/bindings/display/panel/logictechno,lt17041
> > > 0-2whc.yaml
> > 
> > I would just put these into 1 document as the compatible is the only 
> > difference.
> 
> No, not quite just the compatible are different as the first and last
> panel feature capacitive touch while the middle one is resistive and
> the first two panels are parallel RGB ones while the last one is an
> LVDS panel.

We have recently introduced panel-simple.yaml.
This is for dumb panels - where some of your panels could be candidates.
Please see the file in drm-misc-next, which is also where we will apply
you patch in the end.
So base the patch on drm-misc-next so we do not get conflicts when applying.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
