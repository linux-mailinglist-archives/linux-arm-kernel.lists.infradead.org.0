Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFECB9CC8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 11:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPC8RvGCBfB4hgoXBWmKSTtLFloMHLNDRdL4sGek/9Q=; b=ulVr2tiThw65n8
	4DrHFE8NS7mHxZY1KOtSCmZ3zyOq765KEg/XaQ1vu8K20UMOfVG3MDu4ynFlrQzsHq+XT29ODyF3N
	vSfnLMsputXIxc0jtG4G8iZP7CODjDebO1Le4x3WAVHE5LQiQ7tr/t7Hb+IUrAzay10cZoSFG/gVP
	0XdUxwtvwySSeAJRdUKjljfbHPb6Orj0wJ+dhPHz90zP6GFf42sVcNuqldg/CIYQsEODuPiHDakvi
	WsgBpXwfupGmUHIp6U15JJOTcIyUnMwAL0Wd8oWQ8h0A+Q689FswL2QlB3EkcHEsAz19vGE0Gk6kX
	Y7TW6HBLS6DXZWySfUuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BFT-0006CN-8t; Mon, 26 Aug 2019 09:25:15 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BFF-0005n4-GT; Mon, 26 Aug 2019 09:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566811473;
 bh=WPm8X1ChJ0p/RZOC+rkk0PdvK8NnGje9cQ3dIxTdJIc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=SxbLIwR5cB4Cnp/Peqdd1D7ppiU0h1VWCMGDT9kWiwjFScV4QyPLPxaCuJuMYcVi0
 VlXstiUA0+OSvDhWir8vlpyGrv1nCrxqWad0eJv6Z1GTH/jMEhXssX+tTqelJRJE6L
 A0JoPWsokLnp8fXbo0Qd9mK54ZxXTx/4/2eQiNXg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [185.75.74.250] ([185.75.74.250]) by web-mail.gmx.net
 (3c-app-gmx-bs57.server.lan [172.19.170.141]) (via HTTP); Mon, 26 Aug 2019
 11:24:32 +0200
MIME-Version: 1.0
Message-ID: <trinity-6b3ee2ed-957b-405d-83db-84d7bccf2fb9-1566811472863@3c-app-gmx-bs57>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>
Subject: Aw: [PATCH net-next v4 0/3] net: ethernet: mediatek: convert to
 PHYLINK
Date: Mon, 26 Aug 2019 11:24:32 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190825174341.20750-1-opensource@vdorst.com>
References: <20190825174341.20750-1-opensource@vdorst.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:86Ct19xn0B1fqyZ7orUtEMSW3w64xKQU3Hnx+X8RdbwRpEVO6B/9KE3Ek2J6+1swlTVPe
 deEKC8gY2MDrQuaj8ONAP9FIivSj+XSiawtQfyu1Tu3r5octtCP3D9DoNA2gB03XdyKlRmc1kILu
 ETDmLKNl5GPmGlvhnD5kRF31vJK+A7aC2MBPV0n32YJlJyQvnf8AojevyQVJfjzGjChHIYGgf6vJ
 Twx8seQGwwANm/LHCQBeM/D/cTElxvT1wR6GwObYgFUtNhc1yCzNlD8DslfpMLeMtvY6EIytfHw8
 Jw=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:T3D1PvKgRWo=:EoSCKcOlaQEGzHM2Ytsthg
 4f0qLEOIGzMqI8bjUfKMtYNWpHR+B3i8eqICHnexdvv/kCsX/cs43Dr2V9DYKgcCNcPChH5yi
 siGW/VLviBu1u+f875CxHS9Hm9E07v2NPV4GQOMMdJ4kCL7wMc45Ei9dtduQx7hEkke+yXiat
 B77YwJ7qTmLIAmQdO+fJByWIQ2moUU/cXMm0R7S1e/JSmwkssbzZCpUiNwvGQOoEJxDNj1zgQ
 NmTpk57NZ8GuLhtY+Qs00XUfjl42fXIWrrlhw3i99MsjM+k8GN2DYVol1X1awtSly/bJf0+e4
 trlfZbXvJdzHKfNBsQ2GHvhhgXRHYrSQN8/eGMgQ1XIJos+mzkSNTeGIPhiLtsyWWtqOvHDo2
 frlaK3AKk4C8BU5j2luIutrkvVqwEBroDOo35htrrqBi8E4KsrUGTUfu+vZSOoXekOlSmHuLt
 ik1RASajtTlqWDzoO6mreg7HAIj2HUOIGTwOI1rJqx1eA6Abanm4Oy285H3Rq/+O3yJWbwFPu
 aZbxyADTQRJZ9izUAzTTWYw9pq7jNEenjhWe3gkvc2X0xLREGAjI0YtNlO+3VxzB5HdQa7t/1
 NUqGmJ2GU5e59HhAloupT/ZG3tP18WpDlz3jfJPpe7KD3GTcZv3RVkkrJwQPiCHhtdz83Gr88
 FJ8Y+n99kx6CzYVtnqsNXaa55KyapZoYzMFtkZ365rk3JGA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_022501_895275_7D25A671 
X-CRM114-Status: UNSURE (   4.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nelson Chang <nelson.chang@mediatek.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org, Russell
 King <linux@armlinux.org.uk>,
 =?UTF-8?Q?=22Ren=C3=A9_van_Dorst=22?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Stefan Roese <sr@denx.de>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tested on Bananapi-R2 (mt7623+mt7530) and Bananapi-R64 v0.1 (mt7622+rtl8367)

Tested-by: Frank Wunderlich <frank-w@public-files.de>

regards Frank


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
