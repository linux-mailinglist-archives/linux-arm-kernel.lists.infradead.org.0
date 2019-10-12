Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885E1D50A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 17:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cGc7vFAd0kZpEVeQb3gr04SVRs6Bh4WEAKaHhy0Osz0=; b=nf10XSy2q5l+hH
	LkXwX25MVqwuW6wnhRRFhnurlTUfk5Ad4sjb4lenzA8UYaMTfP2lgLOdBy2mHt+LvYHJbQ3r6On8M
	hqDUxdr3uzO2RSMJzj+DSr2k0JPIpKZexX0dMdCT2BxoDLvFIlj0fBx9Ormu23MeAJfCjNTY3nVG7
	P8Isc31tpWDiKUian02XLxeUI7mDQ0RT0lECD/3weBZUIubM/jpizR+ihfVQfj6Eii1bEQS48GWTS
	BbIzx0MywIxth6JMXwB+o7qfNwX9fVB8kzbwG2XPIALrdqxgJiFmdW6S3zILUvb7k0t12VG/Ku8kj
	E+eBlZD/dBBpu2RhPDFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJJAG-0004g5-Di; Sat, 12 Oct 2019 15:18:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJJA9-0004fa-Aw; Sat, 12 Oct 2019 15:18:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id 7so13060373wme.1;
 Sat, 12 Oct 2019 08:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
 b=Waq0KdUP+gUillAGvOrqIDV7D5eG2F9ALA4QqXAzfIOgYzTT56gi3H2MpNWLS/L+SM
 oOuw+//6TfcIPR8s3qgncPPOF+LCmyAP8DjyoVmVFrqocGMgZhcCBhnTAqtYxy465J3M
 7AFMTO8KgBXIjw4NxeolNqSmoUamAFYABqIfno1lzjodIxUvpMz2Dnu4wgonaBEWeoEF
 zd116TwtaRxUIkE6ens1iMVMs0m9HfGR9qy7EC9mBihL5cO9040fojglCebTZ5AnElyx
 QeYHcf+EZUiFEcSJsN+EYAOOfvL/rBXKD/0JsM1BgAdNMuksdQSKn8eja89736elYizz
 24FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=00wbDsxYMw5kLcHoK10nqGz2XPnCpxBhd7bVGwk+FAw=;
 b=hyj/kWwLCJ4rtc06YdQyK/xaLMGMJmfvp5bI2V+DCkyJKk+jj1AbYi9fz5lbEW23/7
 VAmIEFPOxTh+/ncaneGryfZx0vkG/t2I867ZCsJJPWbgPo5jrrnrsbLbKn0KraECkGEY
 Cm71iZQXPGJeDwlLN84rK7uAvaXegUCfEfLmnKxLWIwgQQii/IxZ7ILB3qccik8eP5u9
 +2FVI/z2+6RHL40GgdeZJ04SYtCscdbzpSsbgUfrxyxxZB046jhprRNnRy7word0Hrcw
 hVLC2W8A+wYmQwFZ7oQOlCUbo8u6k3tXsI6EvjFR+sUdN86+SDRwStyX33vIq2Xj7v5Q
 O6dg==
X-Gm-Message-State: APjAAAVzpwaKoxXu1ehsYD5tO09wYllSHW9P9mOAPbtvE0tfmH2XEdpQ
 J5H9wzloLgpIt4SrLEZfeg==
X-Google-Smtp-Source: APXvYqxdj2hI3aRsv91CVNxyxSaFgMHBIQAShwl9NmW/jf+ZJ/6OMqamZpcspf8MkIU6rGhvDZebHA==
X-Received: by 2002:a05:600c:2185:: with SMTP id
 e5mr7887447wme.78.1570893509733; 
 Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id r6sm13905017wmh.38.2019.10.12.08.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Oct 2019 08:18:29 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: vc04_services: place the AND operator at the end
 of the previous line
Date: Sat, 12 Oct 2019 16:18:05 +0100
Message-Id: <20191012151805.17988-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_081833_402920_5ED9CC92 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 f.fainelli@gmail.com, sbranden@broadcom.com, mchehab+samsung@kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 daniela.mormocea@gmail.com, bcm-kernel-feedback-list@broadcom.com,
 wahrenst@gmx.net, dave.stevenson@raspberrypi.org, rjui@broadcom.com,
 hverkuil-cisco@xs4all.nl, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Place the AND logical operator at the end of the previous line;
to fix warning of "Logical continuations should be on the previous line".
 Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index d4d1e44b16b2..beb6a0063bb8 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1090,8 +1090,8 @@ static int mmal_setup_components(struct bm2835_mmal_dev *dev,
 
 	ret = vchiq_mmal_port_set_format(dev->instance, camera_port);
 
-	if (!ret
-	    && camera_port ==
+	if (!ret &&
+	    camera_port ==
 	    &dev->component[COMP_CAMERA]->output[CAM_PORT_VIDEO]) {
 		bool overlay_enabled =
 		    !!dev->component[COMP_PREVIEW]->enabled;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
