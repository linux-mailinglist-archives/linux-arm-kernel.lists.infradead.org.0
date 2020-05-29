Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D723D1E748E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 06:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5UYdmSAfqJqU/xTBWoVcFOfuCxpAuOROjAtFiQz4uw=; b=qD8G+/QDKgScBr
	W800XQFZj+Ngq/eBLfT/FFNED5955NpZ8VTBBgvkRC21cpwjKBCcU9mgNG1UHMT7tbz6LN41dvtwC
	n4u+lrT/mHu7HPY6N/uOSKNnHCP+EQGZTB9L9rd+niAryPRXVdS0r5vtFGzukt3bJTPnssGC/7Uas
	/8IDHBcoN0Vnqcop0srTAeJMouYGUjQ1CEUOWya3yPTemfuNpPRa2aRiHqLQNwiJnpnP34KeX3/bj
	I2/1RU/Ew1GsXx640arAYEOd7290Ilmy/7mqVCEcA7fwgX7IlDSWw2PGsJTvV6ojUkd68qlKMevuL
	rOSG0GcxMXbte0BMQfNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeWYr-0001Gd-JP; Fri, 29 May 2020 04:24:01 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeWYh-0001GC-NL
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 04:23:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 75CD8FB03;
 Fri, 29 May 2020 06:23:47 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWWfHe7cer4i; Fri, 29 May 2020 06:23:46 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id A09C644AF9; Fri, 29 May 2020 06:23:45 +0200 (CEST)
Date: Fri, 29 May 2020 06:23:45 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 3/6] dt-bindings: display/bridge/nwl-dsi: Drop mux
 handling
Message-ID: <20200529042345.GA2876@bogon.m.sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
 <9884c56219e9bdbeec179c27ea2b734dbb5f1289.1589548223.git.agx@sigxcpu.org>
 <20200528195914.GB568887@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528195914.GB568887@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_212351_913977_1C9DDEFF 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Anson Huang <Anson.Huang@nxp.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
On Thu, May 28, 2020 at 01:59:14PM -0600, Rob Herring wrote:
> On Fri, May 15, 2020 at 03:12:12PM +0200, Guido G=FCnther wrote:
> > No need to encode the SoC specifics in the bridge driver. For the
> > imx8mq we can use the mux-input-bridge.
> =

> You can't just change bindings like this. You'd still have to support =

> the "old" way. But IMO, this way is the right way.

My understanding is that binding stability only applies to released
kernels and this binding never was in released kernel yet. Does it still
apply in this case?
Cheers,
 -- Guido

> =

> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../devicetree/bindings/display/bridge/nwl-dsi.yaml         | 6 ------
> >  1 file changed, 6 deletions(-)
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
