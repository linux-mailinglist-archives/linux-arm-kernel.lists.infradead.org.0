Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E83BE369C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 17:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kr8GeRxFHrTOGgfxgR2gbSGZbHXzptSJTESCE2FuYfA=; b=tkX
	6y+PPUowAVJ4OfAhmyiCTLA74mNXgzxfZZ2MtSGMN2jUawhRLymXtrpbpfc7xOCIXaIetGm8hvUTE
	11tneFU4HYCI20CX1+64c3okXjCH9KUAO0J4sw2GTv6UBPC0G44tCphXihywYTjFPBkt5e8nIxDJv
	5bQAY7wzActULmbfUey7uDjO0OnfeTf3Zd8dZONYd2ufNVb8p9vCKQvEsBYiqCMldcl3L+dJnxUi5
	XrAhWfNIm8KmJBdPETEnzAbabupxBaobmOnt/Lc6zzntC+QTfNJQZ5NVTU+UCaxCyVhf4yzS/Pbog
	JRBbRHWeOUP/ca+ZoMXX+KYywfrP37Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNf0y-0000DG-G1; Thu, 24 Oct 2019 15:27:04 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNf0X-0008QI-T2
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 15:26:39 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id HTSa2100D5USYZQ06TSaTu; Thu, 24 Oct 2019 17:26:35 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNf0U-00077A-IL; Thu, 24 Oct 2019 17:26:34 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNf0U-0007vR-Fq; Thu, 24 Oct 2019 17:26:34 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Russell King <linux@armlinux.org.uk>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 GOTO Masanori <gotom@debian.or.jp>,
 YOKOTA Hiroshi <yokota@netlab.is.tsukuba.ac.jp>,
 Jiri Kosina <trivial@kernel.org>
Subject: [PATCH trivial] scsi: Fix various misspellings of "connect"
Date: Thu, 24 Oct 2019 17:26:33 +0200
Message-Id: <20191024152633.30404-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_082638_098246_3F195F37 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-scsi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix misspellings of "disonnect", "reconnect", "connection", "connected",
and "disconnection".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/scsi/arm/acornscsi.c          | 4 ++--
 drivers/scsi/bnx2fc/57xx_hsi_bnx2fc.h | 2 +-
 drivers/scsi/isci/remote_device.c     | 2 +-
 drivers/scsi/ncr53c8xx.c              | 2 +-
 drivers/scsi/nsp32.c                  | 2 +-
 drivers/scsi/qedf/qedf_dbg.h          | 2 +-
 drivers/scsi/qedi/qedi_dbg.h          | 2 +-
 7 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/scsi/arm/acornscsi.c b/drivers/scsi/arm/acornscsi.c
index d12dd89538df2990..ddb52e7ba6226b51 100644
--- a/drivers/scsi/arm/acornscsi.c
+++ b/drivers/scsi/arm/acornscsi.c
@@ -1067,7 +1067,7 @@ void acornscsi_dma_setup(AS_Host *host, dmadir_t direction)
  * Purpose : ensure that all DMA transfers are up-to-date & host->scsi.SCp is correct
  * Params  : host - host to finish
  * Notes   : This is called when a command is:
- *		terminating, RESTORE_POINTERS, SAVE_POINTERS, DISCONECT
+ *		terminating, RESTORE_POINTERS, SAVE_POINTERS, DISCONNECT
  *	   : This must not return until all transfers are completed.
  */
 static
@@ -1816,7 +1816,7 @@ int acornscsi_reconnect(AS_Host *host)
 }
 
 /*
- * Function: int acornscsi_reconect_finish(AS_Host *host)
+ * Function: int acornscsi_reconnect_finish(AS_Host *host)
  * Purpose : finish reconnecting a command
  * Params  : host - host to complete
  * Returns : 0 if failed
diff --git a/drivers/scsi/bnx2fc/57xx_hsi_bnx2fc.h b/drivers/scsi/bnx2fc/57xx_hsi_bnx2fc.h
index e4469df9c4695ab9..698f5ebaa0c29f98 100644
--- a/drivers/scsi/bnx2fc/57xx_hsi_bnx2fc.h
+++ b/drivers/scsi/bnx2fc/57xx_hsi_bnx2fc.h
@@ -813,7 +813,7 @@ struct fcoe_confqe {
 
 
 /*
- * FCoE conection data base
+ * FCoE connection data base
  */
 struct fcoe_conn_db {
 #if defined(__BIG_ENDIAN)
diff --git a/drivers/scsi/isci/remote_device.c b/drivers/scsi/isci/remote_device.c
index 49aa4e657c44fc65..cd1e4b4d95bbbba0 100644
--- a/drivers/scsi/isci/remote_device.c
+++ b/drivers/scsi/isci/remote_device.c
@@ -1504,7 +1504,7 @@ static enum sci_status isci_remote_device_construct(struct isci_port *iport,
  * This function builds the isci_remote_device when a libsas dev_found message
  *    is received.
  * @isci_host: This parameter specifies the isci host object.
- * @port: This parameter specifies the isci_port conected to this device.
+ * @port: This parameter specifies the isci_port connected to this device.
  *
  * pointer to new isci_remote_device.
  */
diff --git a/drivers/scsi/ncr53c8xx.c b/drivers/scsi/ncr53c8xx.c
index e0b427fdf81800c3..11a2cb844ecb3782 100644
--- a/drivers/scsi/ncr53c8xx.c
+++ b/drivers/scsi/ncr53c8xx.c
@@ -1722,7 +1722,7 @@ struct ncb {
 	**	Miscellaneous configuration and status parameters.
 	**----------------------------------------------------------------
 	*/
-	u_char		disc;		/* Diconnection allowed		*/
+	u_char		disc;		/* Disconnection allowed	*/
 	u_char		scsi_mode;	/* Current SCSI BUS mode	*/
 	u_char		order;		/* Tag order to use		*/
 	u_char		verbose;	/* Verbosity for this controller*/
diff --git a/drivers/scsi/nsp32.c b/drivers/scsi/nsp32.c
index 70db79254155677d..b6e04d14292d2f90 100644
--- a/drivers/scsi/nsp32.c
+++ b/drivers/scsi/nsp32.c
@@ -1542,7 +1542,7 @@ static void nsp32_scsi_done(struct scsi_cmnd *SCpnt)
  * with ACK reply when below condition is matched:
  *	MsgIn 00: Command Complete.
  *	MsgIn 02: Save Data Pointer.
- *	MsgIn 04: Diconnect.
+ *	MsgIn 04: Disconnect.
  * In other case, unexpected BUSFREE is detected.
  */
 static int nsp32_busfree_occur(struct scsi_cmnd *SCpnt, unsigned short execph)
diff --git a/drivers/scsi/qedf/qedf_dbg.h b/drivers/scsi/qedf/qedf_dbg.h
index d979f095aeda06a8..2386bfb73c4616aa 100644
--- a/drivers/scsi/qedf/qedf_dbg.h
+++ b/drivers/scsi/qedf/qedf_dbg.h
@@ -42,7 +42,7 @@ extern uint qedf_debug;
 #define QEDF_LOG_LPORT		0x4000		/* lport logs */
 #define QEDF_LOG_ELS		0x8000		/* ELS logs */
 #define QEDF_LOG_NPIV		0x10000		/* NPIV logs */
-#define QEDF_LOG_SESS		0x20000		/* Conection setup, cleanup */
+#define QEDF_LOG_SESS		0x20000		/* Connection setup, cleanup */
 #define QEDF_LOG_TID		0x80000         /*
 						 * FW TID context acquire
 						 * free
diff --git a/drivers/scsi/qedi/qedi_dbg.h b/drivers/scsi/qedi/qedi_dbg.h
index 243acc8b520a44a5..37d084086fd43410 100644
--- a/drivers/scsi/qedi/qedi_dbg.h
+++ b/drivers/scsi/qedi/qedi_dbg.h
@@ -44,7 +44,7 @@ extern uint qedi_dbg_log;
 #define QEDI_LOG_LPORT		0x4000		/* lport logs */
 #define QEDI_LOG_ELS		0x8000		/* ELS logs */
 #define QEDI_LOG_NPIV		0x10000		/* NPIV logs */
-#define QEDI_LOG_SESS		0x20000		/* Conection setup, cleanup */
+#define QEDI_LOG_SESS		0x20000		/* Connection setup, cleanup */
 #define QEDI_LOG_UIO		0x40000		/* iSCSI UIO logs */
 #define QEDI_LOG_TID		0x80000         /* FW TID context acquire,
 						 * free
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
