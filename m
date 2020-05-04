Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF9F1C340B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 10:07:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eh37Gt8FRzEYLm2QujEN05nAjmfz8QpiuFAbmCciDno=; b=BhNndTRSQdUa5o
	rlte3CuXfOF0r8CAU4L5p/WX7aDDT6YmBPEK64zuuTrKQb4wMnnbUNGsWiIeTo+iMb0aBMvzyZCOU
	xr+kpXYDJaHDZ5cACgfiVNk76HwyH72y8KMSHzavELHTv1QiZmaH9zbt7BaiA35EPVnlR4nOwXKch
	dpt2fRKXUxCmaLfNHSk8+KRrZbNGtEEwzmdHsGPFZBqBaECEsg0p/xC30TVQfsqCrOJuEpkz6JEdn
	VoN5luvpeA4PHHARKf1u7i3dZ3ydq/Me/vI7n4nNpLB/V4Zy6ufGNggwVdeT+3Kh31HlGfHOQo9jU
	cxuRRCwVJ78GBOUdocbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVW8b-0006Gz-10; Mon, 04 May 2020 08:07:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVW8U-0006G7-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 08:07:35 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jVW8B-0007yE-Il; Mon, 04 May 2020 10:07:15 +0200
Message-ID: <bf758b2ce26ba8f1b94f1f8fbd1c506d84759a5f.camel@pengutronix.de>
Subject: Re: [RFC PATCH 4/4] arm64: dts: imx8mm: Add GPU nodes for 2D and 3D
 core using Etnaviv
From: Lucas Stach <l.stach@pengutronix.de>
To: Adam Ford <aford173@gmail.com>, Schrempf Frieder
 <frieder.schrempf@kontron.de>
Date: Mon, 04 May 2020 10:07:14 +0200
In-Reply-To: <CAHCN7xJ=srZxygtG6hW_+us=qH1heY-k=EosavYH9tDk-KG0Bw@mail.gmail.com>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-5-frieder.schrempf@kontron.de>
 <CAHCN7xJ=srZxygtG6hW_+us=qH1heY-k=EosavYH9tDk-KG0Bw@mail.gmail.com>
User-Agent: Evolution 3.36.1 (3.36.1-1.fc32) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_010734_751673_346F23D9 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, den 03.05.2020, 09:49 -0500 schrieb Adam Ford:
> On Thu, Apr 30, 2020 at 7:46 AM Schrempf Frieder
> <frieder.schrempf@kontron.de> wrote:
> > From: Frieder Schrempf <frieder.schrempf@kontron.de>
> > 
> > According to the documents, the i.MX8M-Mini features a GC320 and a
> > GCNanoUltra GPU core. Etnaviv detects them as:
> > 
> >         etnaviv-gpu 38000000.gpu: model: GC600, revision: 4653
> >         etnaviv-gpu 38008000.gpu: model: GC520, revision: 5341
> > 
> > This seems to work fine more or less without any changes to the HWDB,
> > which still might be needed in the future to correct some features,
> > etc.
> > 
> > Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
> > ---
> Since not everyone uses the 3D or 2D, would it make sense to mark them
> as disabled by default and let people who need the 3D and 2D enable
> them at their respective board files?

No, devices on the SoC with no external dependencies should be always
enabled.

The board has much less influence over whether the GPU is being used
than the specific use-case. While the board designer may not even think
about using the GPUs (because no display connector present or something
like that) people using the board may still find uses for the GPU, like
doing video pipeline color space conversions or something lie that.

Regards,
Lucas


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
