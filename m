Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CDA55089
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTqeuf1J4LPH6p+vv8EyQXhejJSllA16aFb9iAi7Zo4=; b=mTrLeYgIBS7PqU
	or+BaNPOhAqo12JDh7OPATJ+Hm+MjMQpI8fMaSP5ekrpyIcv6YqSsS104Ce1v6OAzI+95ja9B+tZA
	FLcM2u3wllUXDe9mNWpacuYp0wuBaUzGp9S8sslDKBmk2oqHdBQWiHwT4rkGD1ktm0V/VLze3v7Nc
	fNvxXvPQUEqeDRDXOWU2/sTfLo60fdz+ptqiyOMqjUUUJOYSb7IJtjHvB/HNWV7kIhXy5GeckrGZY
	6NVC1Z7L5Kwr/PwxqnP7X/HUp0LRz4cAOQPm54D/jicKKJ9angE5K41lR7P+n8oQoGJRDCe2gIie2
	dbbjox4Kd/vWdeA8mg/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflfD-0004in-3W; Tue, 25 Jun 2019 13:39:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hflf1-0004hk-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:39:01 +0000
Received: from arch-x1c3 (unknown [IPv6:2a00:5f00:102:0:9665:9cff:feee:aa4d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: evelikov)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 706A9260D5B;
 Tue, 25 Jun 2019 14:38:56 +0100 (BST)
Date: Tue, 25 Jun 2019 14:36:39 +0100
From: Emil Velikov <emil.velikov@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Subject: Re: [PATCH 0/2] Associate ddc adapters with connectors
Message-ID: <20190625133639.GA16031@arch-x1c3>
References: <cover.1561452052.git.andrzej.p@collabora.com>
 <20190625100351.52ddptvb2gizaepi@shell.armlinux.org.uk>
 <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <817ccfba-754c-6a28-8d75-63f70605fd43@collabora.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_063900_024388_5F6769F5 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org,
 Inki Dae <inki.dae@samsung.com>, David Airlie <airlied@linux.ie>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/06/25, Andrzej Pietrasiewicz wrote:
> Hi Russell,
> =

> W dniu 25.06.2019 o=A012:03, Russell King - ARM Linux admin pisze:
> > On Tue, Jun 25, 2019 at 11:46:34AM +0200, Andrzej Pietrasiewicz wrote:
> > > It is difficult for a user to know which of the i2c adapters is for w=
hich
> > > drm connector. This series addresses this problem.
> > > =

> > > The idea is to have a symbolic link in connector's sysfs directory, e=
.g.:
> > > =

> > > ls -l /sys/class/drm/card0-HDMI-A-1/i2c-2
> > > lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/i=
2c-2 \
> > > 	-> ../../../../soc/13880000.i2c/i2c-2
> > =

> > Don't you want the symlink name to be "i2c" or something fixed, rather
> > than the name of the i2c adapter?  Otherwise, you seem to be encumbering
> > userspace with searching the directory to try and find the symlink.
> > =

> =

> Thank you for your comment. So you imagine something on the lines of:
> =

> lrwxrwxrwx 1 root root 0 Jun 24 10:42 /sys/class/drm/card0-HDMI-A-1/ddc \
>  	-> ../../../../soc/13880000.i2c/i2c-2
> =

> ?
> =

Fwiw my Intel machine lists a number of i2c devices:
/sys/class/drm/card0-DP-1/i2c-6
/sys/class/drm/card0-DP-2/i2c-7
/sys/class/drm/card0-eDP-1/i2c-5

Note: I haven't looked _if_ they relate to ones you're proposing here.

One thing worth mentioning is, the ones I've seen are not symlinks to
another sysfs entries. And there aren't any i2c nodes in /dev ...

Just a random food for thought :-)

HTH
Emil





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
