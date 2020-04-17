Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B641AE471
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kFNMI1EVZN3TrQ69bSklmwNlYiXss+8zBM8nPEZvKS4=; b=plBWrTaSh11H4PLMIpLVNbdc6L
	+sXR5n7zvgddG5+1TlG1pX32YGbSYGjjrb3wHg2x46pnBSdVBMMnYyZK1LTkbSLVPDumNLZX5rGt8
	jq0eLrfXWnoW4MgDo9ome06zD5oih88CgGeNaItO54EAyr533GcJMEGS/uGurAQRuBDSMsH+rhPu3
	d9OP7VplOOW7UVXuuk0KXi6pFPFzVEp8HTELJ7bPgY6YaaWSOBDImtyxScf/xF6IRV3vW8JYfs4AG
	M5Ou1lYTCUOtVGmL3Y1bhP0kb8s6X5WHak7xHklsGxOYvuUeLJ9M/7cSCc74mixDdrZGne1tGqLgX
	pv+VsULw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVSR-0001gO-6e; Fri, 17 Apr 2020 18:11:19 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVRQ-0000vX-Ao
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:10:18 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200417181013epoutp01716ecddada8922c9584375e564547193~GrczL-i470233302333epoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 18:10:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200417181013epoutp01716ecddada8922c9584375e564547193~GrczL-i470233302333epoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587147013;
 bh=DqSF9x36JnCrwXNXLN1VtdVDDQpr3y9q4CeEzRJrh/A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VDwOoFYeh4zeELijWwhBipwqFiX+EvFSP+Fg3wRsWypvxlfAvQWLJABhw+jpmOfAf
 2CWRhOm/SA7gkczRaXrxfb6QBnD95KJf4BNJpp4d1kMh6hbbhZTZwRL/eIDOJ0h06m
 lCcGSoq3PaZY2FfvAW+H1CeEKHoayNRAxN0nb41Y=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200417181013epcas5p277e44d8eb071fd712e328470cc00592c~Grcy5mis22908329083epcas5p25;
 Fri, 17 Apr 2020 18:10:13 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 CF.16.04778.501F99E5; Sat, 18 Apr 2020 03:10:13 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
 20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68~GrcxwJ7U30105401054epcas5p21;
 Fri, 17 Apr 2020 18:10:12 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200417181012epsmtrp1c3af0db4e3a01abba4b71324b43a8ae1~GrcxvTh0U0669906699epsmtrp1H;
 Fri, 17 Apr 2020 18:10:12 +0000 (GMT)
X-AuditID: b6c32a4a-33bff700000012aa-1b-5e99f1051ed0
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2E.D0.04024.401F99E5; Sat, 18 Apr 2020 03:10:12 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200417181010epsmtip1f8adc674424ac2d5a079d95e71b81f79~Grcv4frBm2251122511epsmtip1l;
 Fri, 17 Apr 2020 18:10:10 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: robh@kernel.org
Subject: [PATCH v6 03/10] scsi: ufs: add quirk to enable host controller
 without hce
Date: Fri, 17 Apr 2020 23:29:37 +0530
Message-Id: <20200417175944.47189-4-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200417175944.47189-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7bCmhi7rx5lxBhOnS1g8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujHP/rrIVXJGtWNiygaWB8Yd4FyMnh4SAicTP/bPZuxi5OIQEdjNKHJv5F8r5
 xCgx9Ws7G4TzjVFi4bWLrDAt7z/PZYJI7GWU6L56nxnCaWGSeLpoFQtIFZuAtsTd6VuYQGwR
 AWGJI9/aGEFsZoEbTBIPVrqA2MICYRK/p2xlB7FZBFQlDs86BGbzCthINPR9ZYLYJi+xesMB
 ZhCbU8BWoq1lKdhmCYHbbBJr+s+xQBS5SCxpeswOYQtLvDq+BcqWknjZ3wZkcwDZ2RI9u4wh
 wjUSS+cdg2q1lzhwZQ4LSAmzgKbE+l36EGfySfT+fsIE0ckr0dEmBFGtKtH87ipUp7TExO5u
 aJh4SOyYAhIHBcMERontu66zT2CUnYUwdQEj4ypGydSC4tz01GLTAqO81HK94sTc4tK8dL3k
 /NxNjOCEouW1g3HZOZ9DjAIcjEo8vB19M+OEWBPLiitzDzFKcDArifAedAMK8aYkVlalFuXH
 F5XmpBYfYpTmYFES553EejVGSCA9sSQ1OzW1ILUIJsvEwSnVwLhH0ENLfF5S7LplGtt2rPl7
 ks9m4t2rU8LiPGpVFebd2CoobHT7z9IjgiuKbSylbX2+GT2pXOKS/rN7lpnEgcmKzQvzvXIV
 GXweMGfpy8cHfOJNunR7Mbd+4Oxe411zdzF+MK+Ld9/m9O3//mcv+opLmmUEbK5tv3wkSdTi
 Rs75/FZH25T9O5RYijMSDbWYi4oTATfuvXskAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPLMWRmVeSWpSXmKPExsWy7bCSnC7Lx5lxBj8fslk8mLeNzeLlz6ts
 Fp/WL2O1mH/kHKvF+fMb2C1ubjnKYrHp8TVWi8u75rBZzDi/j8mi+/oONovlx/8xWfzfs4Pd
 YunWm4wOvB6X+3qZPDat6mTz2Lyk3qPl5H4Wj49Pb7F49G1ZxejxeZOcR/uBbqYAjigum5TU
 nMyy1CJ9uwSujHP/rrIVXJGtWNiygaWB8Yd4FyMnh4SAicT7z3OZuhi5OIQEdjNKLP7UwwSR
 kJa4vnECO4QtLLHy33N2iKImJonH7ZuZQRJsAtoSd6dvAWsQASo68q2NEcRmFnjGJHHqYSmI
 LSwQInHgZScLiM0ioCpxeNYhsKG8AjYSDX1foZbJS6zecABsJqeArURby1KgOAfQMhuJDU9i
 JjDyLWBkWMUomVpQnJueW2xYYJiXWq5XnJhbXJqXrpecn7uJERzMWpo7GC8viT/EKMDBqMTD
 a9AzM06INbGsuDL3EKMEB7OSCO9BN6AQb0piZVVqUX58UWlOavEhRmkOFiVx3qd5xyKFBNIT
 S1KzU1MLUotgskwcnFINjGZtDS/jajb2l+p3fvUV1/cTc5e22XL3bUWm0z57mae95UyeVZf2
 CDN8iVo5o4jdxbIu5FeWzMmrB2ZxL/GueK20+gLP37v7tL5c+qZo6T0l6nT24Ygc55x+i3WH
 5Auqzvzs3v3G9ehSTfGlgRXbUtssqpO74ivPPplelvaSb/6xuap1XR83KbEUZyQaajEXFScC
 ADNExlNiAgAA
X-CMS-MailID: 20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68
References: <20200417175944.47189-1-alim.akhtar@samsung.com>
 <CGME20200417181012epcas5p2004ac8f0d793abd4d58c096ff490da68@epcas5p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_111016_559631_B8DD5C2C 
X-CRM114-Status: GOOD (  18.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, kwmad.kim@samsung.com,
 avri.altman@wdc.com, cang@codeaurora.org,
 Alim Akhtar <alim.akhtar@samsung.com>, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some host controllers don't support host controller enable via HCE.

Signed-off-by: Seungwon Jeon <essuuj@gmail.com>
Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 drivers/scsi/ufs/ufshcd.c | 76 +++++++++++++++++++++++++++++++++++++--
 drivers/scsi/ufs/ufshcd.h |  6 ++++
 2 files changed, 80 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 0e9704da58bd..ee30ed6cc805 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -3534,6 +3534,52 @@ static int ufshcd_dme_link_startup(struct ufs_hba *hba)
 			"dme-link-startup: error code %d\n", ret);
 	return ret;
 }
+/**
+ * ufshcd_dme_reset - UIC command for DME_RESET
+ * @hba: per adapter instance
+ *
+ * DME_RESET command is issued in order to reset UniPro stack.
+ * This function now deal with cold reset.
+ *
+ * Returns 0 on success, non-zero value on failure
+ */
+static int ufshcd_dme_reset(struct ufs_hba *hba)
+{
+	struct uic_command uic_cmd = {0};
+	int ret;
+
+	uic_cmd.command = UIC_CMD_DME_RESET;
+
+	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
+	if (ret)
+		dev_err(hba->dev,
+			"dme-reset: error code %d\n", ret);
+
+	return ret;
+}
+
+/**
+ * ufshcd_dme_enable - UIC command for DME_ENABLE
+ * @hba: per adapter instance
+ *
+ * DME_ENABLE command is issued in order to enable UniPro stack.
+ *
+ * Returns 0 on success, non-zero value on failure
+ */
+static int ufshcd_dme_enable(struct ufs_hba *hba)
+{
+	struct uic_command uic_cmd = {0};
+	int ret;
+
+	uic_cmd.command = UIC_CMD_DME_ENABLE;
+
+	ret = ufshcd_send_uic_cmd(hba, &uic_cmd);
+	if (ret)
+		dev_err(hba->dev,
+			"dme-reset: error code %d\n", ret);
+
+	return ret;
+}
 
 static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
 {
@@ -4251,7 +4297,7 @@ static inline void ufshcd_hba_stop(struct ufs_hba *hba, bool can_sleep)
 }
 
 /**
- * ufshcd_hba_enable - initialize the controller
+ * ufshcd_hba_execute_hce - initialize the controller
  * @hba: per adapter instance
  *
  * The controller resets itself and controller firmware initialization
@@ -4260,7 +4306,7 @@ static inline void ufshcd_hba_stop(struct ufs_hba *hba, bool can_sleep)
  *
  * Returns 0 on success, non-zero value on failure
  */
-int ufshcd_hba_enable(struct ufs_hba *hba)
+static int ufshcd_hba_execute_hce(struct ufs_hba *hba)
 {
 	int retry;
 
@@ -4308,6 +4354,32 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 
 	return 0;
 }
+
+int ufshcd_hba_enable(struct ufs_hba *hba)
+{
+	int ret;
+
+	if (hba->quirks & UFSHCI_QUIRK_BROKEN_HCE) {
+		ufshcd_set_link_off(hba);
+		ufshcd_vops_hce_enable_notify(hba, PRE_CHANGE);
+
+		/* enable UIC related interrupts */
+		ufshcd_enable_intr(hba, UFSHCD_UIC_MASK);
+		ret = ufshcd_dme_reset(hba);
+		if (!ret) {
+			ret = ufshcd_dme_enable(hba);
+			if (!ret)
+				ufshcd_vops_hce_enable_notify(hba, POST_CHANGE);
+			if (ret)
+				dev_err(hba->dev,
+					"Host controller enable failed with non-hce\n");
+		}
+	} else {
+		ret = ufshcd_hba_execute_hce(hba);
+	}
+
+	return ret;
+}
 EXPORT_SYMBOL_GPL(ufshcd_hba_enable);
 
 static int ufshcd_disable_tx_lcc(struct ufs_hba *hba, bool peer)
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 53096642f9a8..f8d08cb9caf7 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -529,6 +529,12 @@ enum ufshcd_quirks {
 	 * that the interrupt aggregation timer and counter are reset by s/w.
 	 */
 	UFSHCI_QUIRK_SKIP_RESET_INTR_AGGR		= 1 << 7,
+
+	/*
+	 * This quirks needs to be enabled if host controller cannot be
+	 * enabled via HCE register.
+	 */
+	UFSHCI_QUIRK_BROKEN_HCE				= 1 << 8,
 };
 
 enum ufshcd_caps {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
