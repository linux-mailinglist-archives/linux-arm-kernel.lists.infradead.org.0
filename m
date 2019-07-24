Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0747972A2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fwedH9swNWtsDZOVKVrqLE6DSMOLhMfbENfFQDTDoEw=; b=QCm
	b+bUR7AEFwnNYyLK75bLX6pKkdFyIHiTKexz6u+UElFP015mkB823CwvFimQqozFXqV9HoiH/Smax
	+PT1yTMWO60F6vd6A2ZxyeQwXD8n89kFOWvLxMNwPKEXrMXLMYhSM+1JbfBKsFO78mxRd/jG99x/Y
	QWW18a9FM5FGanKtyYsVPEQJduYjhvg3JylLBANBlOQZx81EvH00l5GlFWFLL97UQmPMiDtk8nM4W
	YuWtZZvDJwOzcYJCUaO0/6eJkCz1AXCJOs7/0tV927DMn3nNdckSF3zC7YwyfGZwFXAceCF2ajwvH
	P0n9y3WzRmu6iugJocqu7yKJeezDMKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCiN-0003wJ-Sw; Wed, 24 Jul 2019 08:33:36 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCi0-0003ru-D2
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:33:13 +0000
Received: by mail-pg1-x544.google.com with SMTP id t132so20837929pgb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=3mpFcJm52vqDHrD294AKdjpEOxw1VpKoEQduQjdZ2L0=;
 b=aP58wc/2YXAfkX+FuNWDMlnhsNNEHFzP+2c9ml9eyP9dsH8O2zrW8VgKkX0U27kQok
 5PZkqjYKRV4mtv49n+YdTe545LnKECNwSbDAHqSKQjj+suwiYOvHIOjiJWoxPWoX5n7u
 Y34+2axR8FY2IfI4L4AAFMlxsdd3ah+OaExm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3mpFcJm52vqDHrD294AKdjpEOxw1VpKoEQduQjdZ2L0=;
 b=XYGpFq5YJtMdgwcZxadZqoa1xTD/Lq/Yx0HOLA9f/UJzeC7PMPVnChhGbAjv2x2HU2
 Qz8jYUxuleA7Hd5laOEYSQaFH7TE2cJ+ujzce2Q+72i4XAh2bps3hsyS6QDIgWFvvjgn
 f+Qy1DBGwwonNVT3Cza/3cXotlz3FNWvC0rrW8JET9L6kqQdmbh9RVkkS+dIst96DuAF
 eecge1SMUVEA8QUkmMz4bT6m+xHWzuv4mBwiBXFiuuW2Pk4u1q4WEC4aRYd1CY+HRh07
 a0qWm/+co9XV0tr/WvVuXFYFWXbO9C9AzwcosKpPC5/spuaBxz+6nCpiUS2XcHn3VzUd
 isOA==
X-Gm-Message-State: APjAAAWKxIlXgcgapBAAu9VIkQIatoV15mlw7zSkA6F1A195ty2uYnx+
 xSPtkCieIB8mBEDUjZztY+lNug==
X-Google-Smtp-Source: APXvYqxs7n3SvBSpEfhTxVDDL+ugCuHHYVOhhtmhsxZtMi/aqCqQ5OTABjBfpafmHW8kNT3gZ4b7jQ==
X-Received: by 2002:a63:4f58:: with SMTP id p24mr16283806pgl.50.1563957190508; 
 Wed, 24 Jul 2019 01:33:10 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id u128sm52437425pfu.48.2019.07.24.01.33.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 24 Jul 2019 01:33:09 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Wolfram Sang <wsa@the-dreams.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1 1/1] i2c: iproc: Fix i2c master read more than 63 bytes
Date: Wed, 24 Jul 2019 13:58:27 +0530
Message-Id: <1563956907-21255-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_013312_591933_8F1608E9 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 linux-kernel@vger.kernel.org, Ray Jui <ray.jui@broadcom.com>,
 linux-i2c@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use SMBUS_MASTER_DATA_READ.MASTER_RD_STATUS bit to check for RX
FIFO empty condition because SMBUS_MASTER_FIFO_CONTROL.MASTER_RX_PKT_COUNT
is not updated for read >= 64 bytes. This fixes the issue when trying to
read from the I2C slave more than 63 bytes.

Fixes: c24b8d574b7c ("i2c: iproc: Extend I2C read up to 255 bytes")

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index 2c7f145..d7fd76b 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -392,16 +392,18 @@ static bool bcm_iproc_i2c_slave_isr(struct bcm_iproc_i2c_dev *iproc_i2c,
 static void bcm_iproc_i2c_read_valid_bytes(struct bcm_iproc_i2c_dev *iproc_i2c)
 {
 	struct i2c_msg *msg = iproc_i2c->msg;
+	uint32_t val;
 
 	/* Read valid data from RX FIFO */
 	while (iproc_i2c->rx_bytes < msg->len) {
-		if (!((iproc_i2c_rd_reg(iproc_i2c, M_FIFO_CTRL_OFFSET) >> M_FIFO_RX_CNT_SHIFT)
-		      & M_FIFO_RX_CNT_MASK))
+		val = iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET);
+
+		/* rx fifo empty */
+		if (!((val >> M_RX_STATUS_SHIFT) & M_RX_STATUS_MASK))
 			break;
 
 		msg->buf[iproc_i2c->rx_bytes] =
-			(iproc_i2c_rd_reg(iproc_i2c, M_RX_OFFSET) >>
-			M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
+			(val >> M_RX_DATA_SHIFT) & M_RX_DATA_MASK;
 		iproc_i2c->rx_bytes++;
 	}
 }
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
