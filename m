Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4956A51E18
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 00:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pZ4lWwxNSX3iSSGrbQoSUtMz7+GLTRWyjXRJWpId+5s=; b=De9
	hICr3uVCMJ9HF64mqdARRKXLqBMi85tC4LHoOtzHM3RV+H9ci2Le55P7omHm7Yexo43W0Wko4kaPH
	I7tMpiA/5CYW7ZAHjla3mxLEMLMSPFwYqBufuR1/uS3vK9+Hgo7oDVhN7Yn5qAtAZfY+8LT69pryi
	8yetpp6upD56usJT/1aV92r4F07oF/sMdP7cAHOLGl30vKZPt3LQhfYranu0A4HFbzFdCbkjjGTdp
	gGRUMaGkoQYiDmD4x5mDTsJX7czSSpRM11kcnxCmP6U6Hy47tXSNnaIFyFX7ZNQtYA2id9LKdq9jk
	4ru0cwPcvfDiKLWysBsVJN7nPIacCYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfXIr-0000Kg-Qk; Mon, 24 Jun 2019 22:19:09 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfXIh-0000KK-QL
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 22:19:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561414736;
 bh=GysLsYTuZsd/CXGs4HdO1VCTJil5RrdvuS6/TiPl2bY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=gU0KSa1e5eyFsVnSCujOiYDvflXyoskJ0tc60c59NJ4k7CL076dwvum1oH1DIzsmh
 kYOWRAvu4FZu33Bcxdtv84pgSNSHQt3P9oT0/hULw264uwuuzyjRqjnljK+4ObsjaK
 3VE9Nt7wobpNaeXddwRKPy0VwPBPS9Cyi6Ype8YA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.111]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MKYpv-1hguWc2RVf-001wNW; Tue, 25 Jun 2019 00:13:21 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
Date: Tue, 25 Jun 2019 00:13:15 +0200
Message-Id: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:LGa8UAO+GzmbgvlLItsNffmxnvrhpUjzzhEbaoSn7FwAXOkBTQT
 CXW3GFoFMF7ihP2FNuGybonNAe4XC1IG1wlefi99zYppeICDE1DXNEfp72vJtW+hdWbIWTv
 rQGf9V1DQzVE6avn/XMprdK5kasTgjwFYL1ePyQdxClEBcHaYQFYCkmYu3B0wvQkayY3VwX
 I5OkkpT21gvRetaja00uw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jQ7kLM3btHE=:Vw0mHeUG2/OLYWx2xsMv86
 BDj9ACSIdpZZdSkWv37UT7mHK3JlRySOYYM5m/IzfAyzlNxXvPH0NCmzMLpF7RVotI9/DU3MN
 sK7g5b3yd5sxlNf03d9ryZUUFRAlj2jydoVyVgTJzSvYhV34nomQaX3H8i3y2hWm0IIk5OMXK
 2W48wL4meZ5yWH9Ixh5R3/XIuyvaa4ehoTOBhaSaNMJw6zMZdNid+HWdNCSQ3Qy0lb+qhrPRI
 +Aw/9ucDR4FkJYdUV5yYt4QhAmTY0sRxRWvTHRlqSr1+I++L5aT77BsWGKsbXq97GcpDLrEHF
 lbRPDeDeo0kL5i51A+gQ+0DzV38h/rQ7yz54At+uEHw/9AcnW9w4AkZitDqjHy9F9lJ2obV4P
 jGslvavwp3O4vJrISGoxpX/OuJFfPraVf3B2KNhBIw95jWA7R0fmAp10p1S+roCwkGKEDyuha
 /TVFLsCmVpe3/3vJyll11l2miG60XHLl0aShILfChHlnWWacTi9O8bQoU9XTigvALJBxYpjo+
 SqG1z9IYnUYpUx15qXt4hc6UJvCeCFG+Jz9B/QBPuxlmcylDZ/31PnF1GbqrwpBmYePNYBBtU
 6nWLKLb/7VfmDxG/5VEaBgI0tt/DiXQ5owRmtV19r0sdzqeWRtUvdj3/TMMULZi28PHQfz7Q8
 nEbF/nUtSRUEZK/wCDWgEq4x2qfG9Yz1Kwi2l4KDsWFezbQtdH5H9UsyOYQiYZhztDskEIol7
 dtHt9qF75NElTmLOI9vXl/mYGvYfCj04DQqqVvTDxYncRewKBFWr603hweU/nY/IDsFs6F/cV
 BdBRS6XR/PxROK/NLOBscMDwwEw7qdKbc7Eqv7OTjynQ9yt1KcS7oIYXUyKrd4BvaQdFqMDrs
 Km3scWeKBdfeJaLKCLPitZYVTPG8PJwPgi5SqUMqgJkGbYxeUP+kgZmvXRz+vu35sYGftgV/t
 vo2FKmWeEtPyAbDBEbV6LgIA+tQkwk0M=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_151900_149791_318B5C68 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 52c4dfcead49 ("Staging: vc04_services: Cleanup in
ctrl_set_bitrate()") changed the return behavior of ctrl_set_bitrate().
This breaks probing of bcm2835-camera:

    bcm2835-v4l2: mmal_init: failed to set all camera controls: -3
    Cleanup: Destroy video encoder
    Cleanup: Destroy image encoder
    Cleanup: Destroy video render
    Cleanup: Destroy camera
    bcm2835-v4l2: bcm2835_mmal_probe: mmal init failed: -3
    bcm2835-camera: probe of bcm2835-camera failed with error -3

So restore the old behavior and fix this issue.

Fixes: 52c4dfcead49 ("Staging: vc04_services: Cleanup in ctrl_set_bitrate()")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index d60e378..1c4c9e8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -610,9 +610,11 @@ static int ctrl_set_bitrate(struct bm2835_mmal_dev *dev,

 	encoder_out = &dev->component[MMAL_COMPONENT_VIDEO_ENCODE]->output[0];

-	return vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
-					     mmal_ctrl->mmal_id, &ctrl->val,
-					     sizeof(ctrl->val));
+	vchiq_mmal_port_parameter_set(dev->instance, encoder_out,
+				      mmal_ctrl->mmal_id, &ctrl->val,
+				      sizeof(ctrl->val));
+
+	return 0;
 }

 static int ctrl_set_bitrate_mode(struct bm2835_mmal_dev *dev,
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
