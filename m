Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0327B18EB7F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 19:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WMbOBOLkMzQclUQJa/52ZwfvdSulzDhokKFYN3fNeaQ=; b=E4X
	QvEDpkMR+wMSevhr8bQ+7V0H8YuxzKyKj4x/RoTt2FMVPfypScqxJezl3nIzTV6yaekKm1ZLzBZZ7
	8YUBKRYPsrej47Eiic270ez8dYFkYzu+fRsd/GjDCyIhbTOMw0MyCJupT+qDIKh3S9i9x6RgeUEkJ
	x+0QGU5oP9vI3F1s19l9DTYmL+ffCp5T5YOOlEy1epx+j20VwkRbccpUIUYKjwYp3CfVEBnal3nN8
	+I+vD08r2er+DgWix4NavbRSIH0SeqjVHxqyXm46E5NsEKUIqVXjsckcbwEZriXpulBy1v6U3Kc6c
	SZd166AH4S2P5nTwMZauFdbuKrKc38w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG5GD-0007L2-1P; Sun, 22 Mar 2020 18:23:45 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG5G4-0007K3-9x
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Mar 2020 18:23:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id f3so13987709wrw.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 22 Mar 2020 11:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=mJxJlTV4kRRQdamwDKjoIvHLdlpESFc+S0X+geSNFqE=;
 b=BJaiKVHOu3AzckjfTNAW7nWLG7qzRP4YevQaBhi1qM6EFEruYms/H447/JaITaOGmy
 1NjCsotimSOEddJqoP6QIXKRGQS/GVnQkV/q5uejX4Q1Eg5S7Xe2QCGoMp48pR5WNb06
 un+BC6TI3OSW80qWsCZGdBwj6SRhdLm9D702g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=mJxJlTV4kRRQdamwDKjoIvHLdlpESFc+S0X+geSNFqE=;
 b=itRuYC+Lm9bbQITIRKy1vNTdeh7Dh1mMBoAm/LsJ1vPaRsIFftqNVTCweTUq1nXS4C
 oAdm69GBDw4EpIhNLYAfU3Cklk/1DUG++IKS7eliD9QThinA5IB62tucVNVpdVymWxrd
 Qie4fb0CyWUwIh8tdEAQPTHlzhW1eCh1PXrC9Zs1MsJaPZcRyy0Q2Y0h5fze8k7bKpXJ
 oz+DlHDAik/O2gObqbFjOmCgrGF4xcKnXwrmyn08oYWo8eEZZ5E/ic5ICd3YZ9TYNapm
 578iLSlo4HG3FeKRqTjPRNCPSvpgfFqdyDsxzCBReFMHjir/WBlfQCRjumozO6ZzTy7e
 A6uw==
X-Gm-Message-State: ANhLgQ1N1t7jjp5hHqao+D3u/lIHmtxDTmj6YFtb41afmwngapTxT5kB
 UbxvKwzcb47S9u1aD5jmtXLaeQ==
X-Google-Smtp-Source: ADFU+vvcdR4iaQTCyJEtVWF44e2sCFqWNQLkGn043JRn0pdCuYAclM13FTmoxf09QPwSxZnocF2WGQ==
X-Received: by 2002:adf:b1c1:: with SMTP id r1mr23574240wra.337.1584901414969; 
 Sun, 22 Mar 2020 11:23:34 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z6sm18498640wrp.95.2020.03.22.11.23.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 11:23:34 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Wolfram Sang <wsa@the-dreams.de>,
 Lori Hikichi <lori.hikichi@broadcom.com>,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] i2c: iproc: add support for SMBUS quick cmd
Date: Sun, 22 Mar 2020 23:53:22 +0530
Message-Id: <20200322182322.32743-1-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_112336_348584_3435A37A 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for SMBUS quick command.

SMBUS quick command passes single bit of information to the
slave (target) device. Can be used to turn slave device on or off.

By default i2c_detect tool uses the smbus quick cmd to try and
detect devices. Without this support it will not detect some slaves.

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/i2c/busses/i2c-bcm-iproc.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm-iproc.c b/drivers/i2c/busses/i2c-bcm-iproc.c
index 30efb7913b2e..6a461e06e6dd 100644
--- a/drivers/i2c/busses/i2c-bcm-iproc.c
+++ b/drivers/i2c/busses/i2c-bcm-iproc.c
@@ -79,6 +79,7 @@
 #define M_CMD_STATUS_RX_FIFO_FULL    0x6
 #define M_CMD_PROTOCOL_SHIFT         9
 #define M_CMD_PROTOCOL_MASK          0xf
+#define M_CMD_PROTOCOL_QUICK         0x0
 #define M_CMD_PROTOCOL_BLK_WR        0x7
 #define M_CMD_PROTOCOL_BLK_RD        0x8
 #define M_CMD_PROTOCOL_PROCESS       0xa
@@ -765,7 +766,11 @@ static int bcm_iproc_i2c_xfer_internal(struct bcm_iproc_i2c_dev *iproc_i2c,
 	 * number of bytes to read
 	 */
 	val = BIT(M_CMD_START_BUSY_SHIFT);
-	if (msg->flags & I2C_M_RD) {
+
+	if (msg->len == 0) {
+		/* SMBUS QUICK Command (Read/Write) */
+		val |= (M_CMD_PROTOCOL_QUICK << M_CMD_PROTOCOL_SHIFT);
+	} else if (msg->flags & I2C_M_RD) {
 		u32 protocol;
 
 		iproc_i2c->rx_bytes = 0;
@@ -827,8 +832,7 @@ static uint32_t bcm_iproc_i2c_functionality(struct i2c_adapter *adap)
 {
 	u32 val;
 
-	/* We do not support the SMBUS Quick command */
-	val = I2C_FUNC_I2C | (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
+	val = I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
 
 	if (adap->algo->reg_slave)
 		val |= I2C_FUNC_SLAVE;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
