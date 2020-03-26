Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 915D4193958
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 08:08:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5iIlmLKka9jSRS4lCOnFm+ijcyi6WuNCqTzEwa822lM=; b=DYSSxZYG7csxzRpfxlsu55bb6Z
	eDvtWKZeitajRU02mGZHfkQ+q6pr+sBdzMXmPl5qLDDtQcogBvGB6yFy/6xPvi+JiMC9ZvPh/RpGJ
	zv7hB0rYI4MWGmcJCa0wHsyNfIz8SabG/i8SyvVU4IjO9Wm2A92nyNraFWN9gw5mYHWh1O9oBsmpL
	/zxOYiEAUb6nr73z8y9dR32NZJOspx98gLdw8mL4kliGDcl09AcnljQ9YVkp5YFOvzSgaScU8negN
	oO0FUKfpbyJaSpST4HQ6nai5dqD9dVFZLtclfRPYuJAUYy6htVO7A3HRKHB+C65AdJj5py4B/8GUF
	638VPX3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMdB-0008Ic-3C; Thu, 26 Mar 2020 07:08:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMca-0007tz-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 07:08:10 +0000
Received: by mail-wm1-x342.google.com with SMTP id d1so5777372wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 00:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jPRrwsRUkZnW1BFu5Zfyz0cjxU3qvYq6Y7T8MRQYSdQ=;
 b=efWdxf0xIIzGwlTo3B7F4lTNocP3UhjzgR/Sd9/0GFBKhpHka8s/Y9kODVon2GS7vJ
 pq9EHgDW6S9M0akfRcUHx/NMcDKKRj6juykMcA7D3uVqJmxsJ+efqUgMmf6D0sjPFBmO
 kqALyIdMWtBPhTz/J0uQ2VxJsTEyd22LRi0eI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jPRrwsRUkZnW1BFu5Zfyz0cjxU3qvYq6Y7T8MRQYSdQ=;
 b=hrbl8glgkllMqKXg8TmmVk7RA8zxLk7h95aEFE+XaEuHtYCO97bdXU8+Efxr2xjk5T
 lC2VmbYMlf9EnrXw4A/6YCLfaOQanc55KfZ/CUwRiWXnXebUlqlGa0h1/DL5v/AiOytX
 zdtZj3wJ5kBbTyHH5ZyAmyTCo+DJS0gVlS7lNyuC9SvYIv1+mv6qcm2RLyKPBMgO/pwn
 dEMiXomIcsb7UM8pYcwiHRPL8LPiHuvaGeO0N0dIUxq1Gfm+6yBRx+cRkA2N5vBJY/vw
 XrftQqR4QNIQZagSqNvimzi0aSss10j9himpEnjPRY1+ag+zQaxjVsWASE3Duno/C45k
 cfmw==
X-Gm-Message-State: ANhLgQ1An1j30h8/mdNXjOOC8QXQYtYO7mFN3OPLbiC6D4Hxq1vSodTl
 lc7cfPzDcBNwE4fjEu0q+2fKHw==
X-Google-Smtp-Source: ADFU+vuUW1y4Zx4fXihxBF7h/Mv+t1RFz2WFLCdyXsWOwZrkM3bG2jv3jmghxHL5EtVY9/HxmunywA==
X-Received: by 2002:a1c:7d08:: with SMTP id y8mr1529567wmc.67.1585206487385;
 Thu, 26 Mar 2020 00:08:07 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id u8sm2129446wrn.69.2020.03.26.00.08.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 26 Mar 2020 00:08:06 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Andrew Murray <andrew.murray@arm.com>
Subject: [PATCH 2/3] PCI: iproc: fix invalidating PAXB address mapping
Date: Thu, 26 Mar 2020 12:37:26 +0530
Message-Id: <1585206447-1363-3-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585206447-1363-1-git-send-email-srinath.mannam@broadcom.com>
References: <1585206447-1363-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_000809_055353_185B8592 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pci@vger.kernel.org, Roman Bacik <roman.bacik@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Bacik <roman.bacik@broadcom.com>

Second stage bootloader prior to Linux boot may use all inbound windows
including IARR1/IMAP1. We need to ensure all previous configuration of
inbound windows are invalidated during the initialization stage of the
Linux iProc PCIe driver. Add fix to invalidate IARR1/IMAP1 because it was
missed in previous patch.

Fixes: 9415743e4c8a ("PCI: iproc: Invalidate PAXB address mapping")
Signed-off-by: Roman Bacik <roman.bacik@broadcom.com>
---
 drivers/pci/controller/pcie-iproc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/pcie-iproc.c b/drivers/pci/controller/pcie-iproc.c
index 6972ca4..e7f0d58 100644
--- a/drivers/pci/controller/pcie-iproc.c
+++ b/drivers/pci/controller/pcie-iproc.c
@@ -351,6 +351,8 @@ static const u16 iproc_pcie_reg_paxb_v2[IPROC_PCIE_MAX_NUM_REG] = {
 	[IPROC_PCIE_OMAP3]		= 0xdf8,
 	[IPROC_PCIE_IARR0]		= 0xd00,
 	[IPROC_PCIE_IMAP0]		= 0xc00,
+	[IPROC_PCIE_IARR1]		= 0xd08,
+	[IPROC_PCIE_IMAP1]		= 0xd70,
 	[IPROC_PCIE_IARR2]		= 0xd10,
 	[IPROC_PCIE_IMAP2]		= 0xcc0,
 	[IPROC_PCIE_IARR3]		= 0xe00,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
