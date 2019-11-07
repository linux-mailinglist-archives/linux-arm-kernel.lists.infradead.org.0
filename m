Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA9CF3970
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 21:19:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5MdAUJa56Xtm7xBWcBVcLuapE8XGs4TgYjrhYrSNfkQ=; b=J/xIQg24Z1/z7T
	Z2bau0Rx2wGg+kJ7zB2cpfhUd3anzCDnuw/GGWzUXcpBv8oB16oa89OKAmdPMIfZ358nVZfitia+X
	lt1Fk9COi0PIFza0cXgMhVLH5WGV5Hdbia6rdQ7pvmq6Cys40D2KUZLvjuI7psLYZVWEuYdv46JPm
	dE11cg29MkUhpCh1DMSKGig6yI3x9arBEKzmVgApXfXSm1Ec6K1/x6WMeekASyQzzSkdZk3fQvN6X
	nyKs5D12qqrbCHI9ZIyMToA5YAq7Y8daOBTPILt6EQwVFNBegQkvZtGrfc2KS/hkFA/RtGcXmoUYI
	5ixQNPtiYDQ9N+tE3yRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSoFE-0007ta-Gu; Thu, 07 Nov 2019 20:19:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSoDS-0006Dm-Lj
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 20:17:16 +0000
Received: by mail-wr1-x442.google.com with SMTP id e6so4605875wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 12:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Qa6zPAo+YKu4/swyBIVIn4JlZMDMbBdI4/pSMmOsjVY=;
 b=UYGqinQHyqZIppvIcVqUyOQCgWCGngK6A/7+UHZglau2c8Oz6o2jzn0pUp/AczP1Ir
 JdegspDcYdAdzHIIGNKfyq1e0o3xm6PHtc6DyzYMqhCQz9FlSk06ALhiLY0HN9F4pSg5
 fVr9dizjSL1GRn4AvPgL71JHOBSG8NWS+y8bL6j63ZHDLGafFgapbMFEuZR3xE1qgekI
 H5sQGa/mQvD9Yfan4oOqnLq/IonTJazCq19dkJlFFCH6AICdlsy5Jh5vxGqGbhi5zqa6
 WR0MMzImLZmxr6M6nfTGO/tgLKV0Ty536p5nbF+igIw0CkFrVeSAY3zEy0lmjOosuCAu
 D4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qa6zPAo+YKu4/swyBIVIn4JlZMDMbBdI4/pSMmOsjVY=;
 b=pBGJLxDANcQA4PUGZbJedpPpQqgf4FHmNSL04C2uAuYowgqF8AbYTQmw5AKkrVsLw4
 T+EhYrQsy31Yr3s/Gxq62wVRUqhIpo9kSXI+KTHX1QywmyCSS4qWu1EwT820evzMhqcW
 7hccDIXfawe8c+h1T5eAMyhGL6zhNA6DbJnXa0dxfQJlaSVpltIJqJ4UJRL4awAiSTJy
 19r1OnBpaIZhwoBKA4B+v3wu+jYT6G/NManerK8AvgHQ5otbtioVlVbZAPKBxCLaPJVJ
 /zrCpnuNsZ77yjX1u2Jyyey/QJtGwUzZTbhdM1d8Uq9Q9ffpuePWtN+dP8G3EGG2+OF6
 DYgQ==
X-Gm-Message-State: APjAAAXLR8G3Sk5VhkHgRzVbdI+C6EMBxAwuUDOpRbaXo2Yy+jMNwGmU
 dHNe9z0vmjy5iiCXBv7LDX+RnVB+LOw=
X-Google-Smtp-Source: APXvYqyIDYZki3Hcy87XKUSJcJYOnIsQ54TNVpbKrjvGilXExqgL+p8sbIRuF7xsxoxBfxy89BNs+g==
X-Received: by 2002:adf:fd4b:: with SMTP id h11mr4595221wrs.191.1573157833238; 
 Thu, 07 Nov 2019 12:17:13 -0800 (PST)
Received: from localhost.localdomain ([95.147.198.88])
 by smtp.gmail.com with ESMTPSA id d11sm3215162wrn.28.2019.11.07.12.17.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 12:17:12 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: gregkh@google.com
Subject: [PATCH 08/10] bnx2x: Check if transceiver implements DDM before access
Date: Thu,  7 Nov 2019 20:17:00 +0000
Message-Id: <20191107201702.27023-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107201702.27023-1-lee.jones@linaro.org>
References: <20191107201702.27023-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121714_788921_8BD0600C 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>,
 linux-kernel@vger.kernel.org, Sudarsana Reddy Kalluru <skalluru@marvell.com>,
 Lee Jones <lee.jones@linaro.org>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Mauro S. M. Rodrigues" <maurosr@linux.vnet.ibm.com>

[ Upstream commit cf18cecca911c0db96b868072665347efe6df46f ]

Some transceivers may comply with SFF-8472 even though they do not
implement the Digital Diagnostic Monitoring (DDM) interface described in
the spec. The existence of such area is specified by the 6th bit of byte
92, set to 1 if implemented.

Currently, without checking this bit, bnx2x fails trying to read sfp
module's EEPROM with the follow message:

ethtool -m enP5p1s0f1
Cannot get Module EEPROM data: Input/output error

Because it fails to read the additional 256 bytes in which it is assumed
to exist the DDM data.

This issue was noticed using a Mellanox Passive DAC PN 01FT738. The EEPROM
data was confirmed by Mellanox as correct and similar to other Passive
DACs from other manufacturers.

Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
Acked-by: Sudarsana Reddy Kalluru <skalluru@marvell.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
Signed-off-by: Lee Jones <lee.jones@linaro.org>
Change-Id: I4cae3b2ae3a298d6c0a7dd3fbf6fe97c1acba239
---
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c | 3 ++-
 drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.h    | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
index 2a518c998ecc..57014e89a3c6 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_ethtool.c
@@ -1531,7 +1531,8 @@ static int bnx2x_get_module_info(struct net_device *dev,
 	}
 
 	if (!sff8472_comp ||
-	    (diag_type & SFP_EEPROM_DIAG_ADDR_CHANGE_REQ)) {
+	    (diag_type & SFP_EEPROM_DIAG_ADDR_CHANGE_REQ) ||
+	    !(diag_type & SFP_EEPROM_DDM_IMPLEMENTED)) {
 		modinfo->type = ETH_MODULE_SFF_8079;
 		modinfo->eeprom_len = ETH_MODULE_SFF_8079_LEN;
 	} else {
diff --git a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.h b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.h
index d9cce4c3899b..e909275ff2af 100644
--- a/drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.h
+++ b/drivers/net/ethernet/broadcom/bnx2x/bnx2x_link.h
@@ -60,6 +60,7 @@
 #define SFP_EEPROM_DIAG_TYPE_ADDR		0x5c
 #define SFP_EEPROM_DIAG_TYPE_SIZE		1
 #define SFP_EEPROM_DIAG_ADDR_CHANGE_REQ		(1<<2)
+#define SFP_EEPROM_DDM_IMPLEMENTED		(1<<6)
 #define SFP_EEPROM_SFF_8472_COMP_ADDR		0x5e
 #define SFP_EEPROM_SFF_8472_COMP_SIZE		1
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
