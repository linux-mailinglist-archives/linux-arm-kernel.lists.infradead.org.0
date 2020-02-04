Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0710515239B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 00:52:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=d7EQSo7WT1SXoAb2T7R6LLfWWJ9VbnRPap287TwHrbw=; b=EVZDr0HvWk3ZudOS05B22FnRN0
	6AyVeFmDQF/9UNIuwItSb/J1VyUl0n5LST8SFXDvsOm87Ih24DgoRWx6D7QzjqLpFcdiqTYZwwXlt
	e7vN9F2RiKlUiyiu5CjroosRAd/kOmPQjR73ZpL5IZhcP7Wgh92CBU30CHEO3trSc9qm4MSXf28Mf
	MrX7leLGd66XBcMCcPrEWKTtjVQ7H0/xEvBuZX84CaKrSzDMOngRrgrrvLzBejmVz9I9VUsMuyJAW
	JOWHSSwz4qavwIoZPv7kGzGVYIvLHn2OM/Fz9PjqpgAclnaHNVoj/WxI4VB0aGo1kQWbevgljJB+F
	dZCeWq/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz7zh-0008SR-Le; Tue, 04 Feb 2020 23:52:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz7xD-0004nV-1H
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 23:50:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id s1so163887pfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Feb 2020 15:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=hYh6UQglDyvaKYQeoKHsdmWZDC9Ai1KCxDg3WYXA9VUoIowzCd1/P6UT9SMrmLJ9J6
 zmZLaE8LW+fcVnqRkgciwC0EHLKMyKBa62O/YFOfRpFD5vCgBpHzvkxHAMwjOUVIgnXn
 +cen+/dstiaG4sNS5cmApv/Gx6wAY7OwnfcsrC6Pir6ldHJIq9apbj31QSKJ6KbBlhFa
 boTTc75UybNSR9VaCqbdiRREHhq0s1gEshNYeWi8W1CG6zZkLHM3rYmQKCkR63OvtH6N
 ITzHMiADkTEhkwjX73xm3W2sOmqCQi+pgqx0kPpGobHhWbGeU3dXVaqJf/pQtTLGolZu
 Tm1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AS+AHCuMQWIyLmWzD2RHQ/sZnkJFO9p0vLnea6pI0u8=;
 b=ryntT8x7g8GcjEdv1DskkcGp1l8HovUAZlCTBCZ+V6h3E4hh923sxskgSNjy17XVk/
 Hj2cRQYSeM1gyLRlXAMmfCPlKWXO1rOv2yq/jvkzqoirQXK0xfTULC9YUgd0zdrXQPLy
 g2foiqIIWMesKkz9zC9zQFnYcu8hov0jUeVOb76vn7MEuFh+2ZMMTGXHrbgXzLk5j6G/
 RxveGB3KCiSL1ZbXU1/K7xCpdkT5Nx7V0BBHJB9gqiQDwwvqnhKvAva1TNhnSMXOUT3l
 43Jmwz0cE4wZySuu4oJRu1tNcN9X1JiewlILYVs/Fqd9aFgk4mGKUdja7tIySALa2lyl
 zOhA==
X-Gm-Message-State: APjAAAUKHzdhhmQDkL3PumJyvkbPIZUcLDqkH/BCRDPH6nYxXfmLunnd
 1bBcQjGmuvvLW4qwYetiW7Q=
X-Google-Smtp-Source: APXvYqw+LeZ+qTjjKIp+K4eK8tkRC8y+Os5q6ehTK/O9/49qCRcVeb3fbdOVA6rXi8JN5rFy3XdDeA==
X-Received: by 2002:a63:7949:: with SMTP id u70mr33314977pgc.233.1580860200115; 
 Tue, 04 Feb 2020 15:50:00 -0800 (PST)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id u2sm24607929pgj.7.2020.02.04.15.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 15:49:59 -0800 (PST)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org, Rui Miguel Silva <rmfrfs@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH v3 17/17] media: imx: TODO: Remove media link creation todos
Date: Tue,  4 Feb 2020 15:49:18 -0800
Message-Id: <20200204234918.20425-18-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200204234918.20425-1-slongerbeam@gmail.com>
References: <20200204234918.20425-1-slongerbeam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_155003_599817_5226CCCA 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [slongerbeam[at]gmail.com]
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the TODO items regarding media link creation, these issues are
resolved by moving media link creation to individual entity bound
callbacks and the implementation of the get_fwnode_pad operation.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/TODO | 29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/drivers/staging/media/imx/TODO b/drivers/staging/media/imx/TODO
index 6f29b5ca5324..a371cdedcdb0 100644
--- a/drivers/staging/media/imx/TODO
+++ b/drivers/staging/media/imx/TODO
@@ -17,35 +17,6 @@
   decided whether this feature is useful enough to make it generally
   available by exporting to v4l2-core.
 
-- After all async subdevices have been bound, v4l2_fwnode_parse_link()
-  is used to form the media links between the devices discovered in
-  the OF graph.
-
-  While this approach allows support for arbitrary OF graphs, there
-  are some assumptions for this to work:
-
-  1. If a port owned by a device in the graph has endpoint nodes, the
-     port is treated as a media pad.
-
-     This presents problems for devices that don't make this port = pad
-     assumption. Examples are SMIAPP compatible cameras which define only
-     a single output port node, but which define multiple pads owned
-     by multiple subdevices (pixel-array, binner, scaler). Or video
-     decoders (entity function MEDIA_ENT_F_ATV_DECODER), which also define
-     only a single output port node, but define multiple pads for video,
-     VBI, and audio out.
-
-     A workaround at present is to set the port reg properties to
-     correspond to the media pad index that the port represents. A
-     possible long-term solution is to implement a subdev API that
-     maps a port id to a media pad index.
-
-  2. Every endpoint of a port owned by a device in the graph is treated
-     as a media link.
-
-     Which means a port must not contain mixed-use endpoints, they
-     must all refer to media links between V4L2 subdevices.
-
 - i.MX7: all of the above, since it uses the imx media core
 
 - i.MX7: use Frame Interval Monitor
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
