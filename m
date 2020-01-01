Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8E112DE2D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 09:20:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vYNMu1LDimoYDP51CMLUGyXT25ejRlX6e5wh+PjsuL8=; b=Qy7
	hUeV4ZbDtuE5Kr1zRgD+/HtFNNoLlyujoxMJ1aMqTSbv0rAePUFyRY1TBY+29smO+9Jr4uyr9TDQz
	VmCyEkTXE8b2b2raJPCSDvoFtvX0yJxX9Lf4yAU9zEl87wnvEl7ZSwCyyNkvS3qSbj1C+Zs2s/2w2
	eKgJDwSsDOn2XeOfM0nDwvek/SNZk2zv/8r8bOrlQvORgCjJhguC+I8SMWS7SGde7by41TaZzQbai
	h3pav5/ju+Nl7+Lyg6D1FSJWAsXjl7PlUXh6SSFjl3sNSi0w8MDaAfU4E4+4cKhS0f1pRV+jL/MUK
	lwtAtzXL/3sOp6KJU+CqR/EPa6l7JLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imZEy-00026J-10; Wed, 01 Jan 2020 08:20:28 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imZEn-0000pj-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 08:20:19 +0000
X-IronPort-AV: E=Sophos;i="5.69,382,1571695200"; d="scan'208";a="429578748"
Received: from palace.rsr.lip6.fr (HELO palace.lip6.fr) ([132.227.105.202])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA256;
 01 Jan 2020 09:20:08 +0100
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: [PATCH 00/16] constify copied structure
Date: Wed,  1 Jan 2020 08:43:18 +0100
Message-Id: <1577864614-5543-1-git-send-email-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_002017_433158_1CB4E536 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-fbdev@vger.kernel.org, alsa-devel@alsa-project.org,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-gpio@vger.kernel.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, netdev@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-nfs@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make const static structures that are just copied into other structures.

The semantic patch that detects the opportunity for this change is as
follows: (http://coccinelle.lip6.fr/)

<smpl>
@r disable optional_qualifier@
identifier i,j;
position p;
@@
static struct i j@p = { ... };

@upd@
position p1;
identifier r.j;
expression e;
@@
e = j@p1

@ref@
position p2 != {r.p,upd.p1};
identifier r.j;
@@
j@p2

@script:ocaml depends on upd && !ref@
i << r.i;
j << r.j;
p << r.p;
@@
if j = (List.hd p).current_element
then Coccilib.print_main i p
</smpl>

---

 arch/powerpc/sysdev/mpic.c                          |    4 ++--
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-ahb-audio.c |    2 +-
 drivers/media/i2c/mt9v111.c                         |    2 +-
 drivers/media/platform/davinci/isif.c               |    2 +-
 drivers/media/usb/cx231xx/cx231xx-dvb.c             |    2 +-
 drivers/media/usb/dvb-usb-v2/anysee.c               |    4 ++--
 drivers/pinctrl/nuvoton/pinctrl-npcm7xx.c           |    2 +-
 drivers/pinctrl/qcom/pinctrl-ssbi-gpio.c            |    2 +-
 drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c             |    2 +-
 drivers/ptp/ptp_clockmatrix.c                       |    2 +-
 drivers/usb/gadget/udc/atmel_usba_udc.c             |    2 +-
 drivers/video/fbdev/sa1100fb.c                      |    2 +-
 net/sunrpc/xdr.c                                    |    2 +-
 sound/isa/ad1816a/ad1816a_lib.c                     |    2 +-
 sound/pci/hda/hda_controller.c                      |    2 +-
 sound/soc/qcom/qdsp6/q6asm-dai.c                    |    2 +-
 16 files changed, 18 insertions(+), 18 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
