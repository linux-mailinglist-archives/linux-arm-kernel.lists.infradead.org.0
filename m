Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76146EFF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 18:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+HEnEk5aWaJFbgZZMHOKqMPttFhdS/99dNbBlm8gHU=; b=YyVfpsWTK0CKE3
	joAXcswJDCg2x0Hm1iPprSZlATNC9gmupcj5nhYcRROGf5Tvu0yzYqQErgNzDTycMQYq78hccsnA0
	CVKknbMiJSBL37i5dGVhAdx6e2jLwXsEK5I9J92vQcUd/mNqgDt/YwC5FhV6u0ntA5HiKnZDetFRz
	EmhTmLiAMJENETekDI3f3BEzIji4G+yXIbMNyjKk0P8Ef7VhB5qBwNlutnLpO1AIEAYYqhBvoNK74
	TfHffd97Rjg49/OVi6RlJCniz55gn/UoZSGB+5EBS1BQhdAe4I3y+ep2DaqyOkASCwIEYGJIhuUej
	R0qZuI3fAwWuGvmiwodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1horqI-0002Fp-Pd; Sat, 20 Jul 2019 16:04:15 +0000
Received: from mailoutvs52.siol.net ([185.57.226.243] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1horpl-0002Ee-Ir
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 16:03:43 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6EE635207E5;
 Sat, 20 Jul 2019 18:03:32 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id N2-Axw94Gu4C; Sat, 20 Jul 2019 18:03:32 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 22AFF52066B;
 Sat, 20 Jul 2019 18:03:32 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id ED72F520CD1;
 Sat, 20 Jul 2019 18:03:29 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 0/3] drm/sun4i: Add support for color encoding and range
Date: Sat, 20 Jul 2019 18:03:29 +0200
Message-ID: <10088719.p65GSun1Qg@jernej-laptop>
In-Reply-To: <20190720054255.vyma2lyiu2tohl74@flea>
References: <20190713120346.30349-1-jernej.skrabec@siol.net>
 <20190720054255.vyma2lyiu2tohl74@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190720_090341_785753_D01B4FCE 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.243 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sobota, 20. julij 2019 ob 07:42:55 CEST je Maxime Ripard napisal(a):
> On Sat, Jul 13, 2019 at 02:03:43PM +0200, Jernej Skrabec wrote:
> > In order to correctly convert image between YUV and RGB, you have to
> > know color encoding and color range. This patch set adds appropriate
> > properties and considers them when choosing CSC conversion matrix for
> > DE2 and DE3.
> > 
> > Note that this is only the half of needed changes when using HDMI output.
> > DW HDMI bridge driver has to be extended to have a property to select
> > limited (TVs) or full (PC monitors) range. But that will be done at a
> > later time.
> > 
> > Please take a look.
> 
> Sorry for the delay, I applied all three.

No problem. Thanks!

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
