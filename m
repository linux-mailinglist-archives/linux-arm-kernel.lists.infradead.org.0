Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3872C17BA18
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 11:21:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IrgAnUq9dkhJeLj7IseFnmAyVQFufOvepqhjasdZWjM=; b=GWHsNnTUrSBE2S
	cSMVbOAI8d/VVicOrYtrm78t7nyPaI+6l6unRLgPSUzP5ZWplaO53p8kDJAAK92ZSEQ78T7YE/N3Y
	J/29vYWWAdveZjYRav+dPMSzgtUlgAyUL+zHWiv6pbuqZPFCX9Cy3J8bQMOzvEvsb9Rn3Ng3iqulU
	WtqUdQ3w52+m8eVKuD6Tg+cPxOLwheaVnqri4i0rlKkK91gpoJtRIQb7S9z1xFz6xBZHwVryitYoi
	yJi8xktFOxjJP3YvFPgNHHRkbxUtNu0K3Lkz0fP6nOzV6T/Hm4i+37PQyTE7ytQ8AGqeAXQHyKYwG
	nmvHICS5/dWmTQwZsebg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAA6P-0001Dp-UP; Fri, 06 Mar 2020 10:21:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAA6G-0001Am-Ui
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 10:21:03 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jAA68-00018D-KZ; Fri, 06 Mar 2020 11:20:52 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jAA67-0007hp-HB; Fri, 06 Mar 2020 11:20:51 +0100
Message-ID: <69903c69a95902c0ddc8fb9e7a6762abf28aa034.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/4] drm/imx: Add initial support for DCSS on iMX8MQ
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, Lucas Stach
 <l.stach@pengutronix.de>
Date: Fri, 06 Mar 2020 11:20:51 +0100
In-Reply-To: <20200306095830.sa5eig67phngr3fa@fsr-ub1864-141>
References: <1575625964-27102-1-git-send-email-laurentiu.palcu@nxp.com>
 <1575625964-27102-3-git-send-email-laurentiu.palcu@nxp.com>
 <03b551925d079fcc151239afa735562332cfd557.camel@pengutronix.de>
 <20200306095830.sa5eig67phngr3fa@fsr-ub1864-141>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_022100_986635_0F88FAFC 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 lukas@mntmn.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Laurentiu Palcu <laurentiu.palcu@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 agx@sigxcpu.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurentiu,

On Fri, 2020-03-06 at 11:58 +0200, Laurentiu Palcu wrote:
> On Wed, Feb 26, 2020 at 02:19:11PM +0100, Lucas Stach wrote:
[...]
> > > +/* This function will be called from interrupt context. */
> > > +void dcss_scaler_write_sclctrl(struct dcss_scaler *scl)
> > > +{
> > > +	int chnum;
> > > +
> > > +	for (chnum = 0; chnum < 3; chnum++) {
> > > +		struct dcss_scaler_ch *ch = &scl->ch[chnum];
> > > +
> > > +		if (ch->scaler_ctrl_chgd) {
> > > +			dcss_ctxld_write_irqsafe(scl->ctxld, scl->ctx_id,
> > > +						 ch->scaler_ctrl,
> > > +						 ch->base_ofs +
> > > +						 DCSS_SCALER_CTRL);
> > 
> > Why is this using the _irqsafe variant without any locking? Won't this
> > lead to potential internal state corruption? dcss_ctxld_write is using
> > the _irqsave locking variants, so it fine with being called from IRQ
> > context.
> 
> This is only called from __dcss_ctxld_enable() which is already protected
> by lock/unlock in dcss_ctxld_kick().

You could add a lockdep_assert_held() line to the top of this function
to make it clear this depends on the lock being held.

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
