Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AE1180F4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:08:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LftpvoGF7qffi8P/CklvkrTGmXneOIZ8+6LVderkkYQ=; b=g5xDqU4VtPw0sM
	7W7jSQNQzaThNyhmpPx4KF+Q87orXjRWvcTBTYm4fL4pLCdtmxaBapCpEAZOBmPNJmao9UMN01Rcc
	rMFdmT45gUxjktcYrKnn9iioLvPL9ilnMyrhaJySona+tr2f9DRwJrf8rkyxNnued035NlDRgThkh
	lhH/Fdvt0ItHhu9KfgwQEHHFNECDSGjTBOjRxe+UOIE+VdE17HjZ22XMLysrk6BAQ3YixeVOdRqUG
	+1XOsswBDYIGzOohCsouWhdNzM+16XPUgkwJi04nL+MHZZ3XSN0qvkE+EanEP+C30O3XV6xN3usY/
	iAVq0ARa/cGsy6Nk7Ing==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtb2-0007mX-QD; Wed, 11 Mar 2020 05:07:56 +0000
Received: from smtprelay0242.hostedemail.com ([216.40.44.242]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBta3-00077R-Hh
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:06:57 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay02.hostedemail.com (Postfix) with ESMTP id 73E108410;
 Wed, 11 Mar 2020 05:06:52 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:541:800:960:967:973:982:988:989:1260:1311:1314:1345:1359:1437:1515:1534:1543:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3865:3866:3867:3870:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6261:9025:9592:10004:10848:11026:11473:11658:11914:12043:12297:12438:12555:12679:12895:12986:13095:13894:14096:14181:14394:14721:21080:21433:21451:21627:21811:21939:30045:30046:30054:30075,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: hose56_1ec53cd19b31a
X-Filterd-Recvd-Size: 4270
Received: from joe-laptop.perches.com (unknown [47.151.143.254])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Wed, 11 Mar 2020 05:06:51 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH -next 006/491] ARM/RISCPC ARCHITECTURE: Use fallthrough;
Date: Tue, 10 Mar 2020 21:51:20 -0700
Message-Id: <fb956ff22b89ac7a7f97489b29ecf13a32de8d06.1583896348.git.joe@perches.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <cover.1583896344.git.joe@perches.com>
References: <cover.1583896344.git.joe@perches.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_220655_663539_6D517BE3 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.242 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [216.40.44.242 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the various uses of fallthrough comments to fallthrough;

Done via script
Link: https://lore.kernel.org/lkml/b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe.com/

Signed-off-by: Joe Perches <joe@perches.com>
---
 arch/arm/mach-rpc/riscpc.c |  2 +-
 drivers/scsi/arm/fas216.c  | 17 ++++++-----------
 2 files changed, 7 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mach-rpc/riscpc.c b/arch/arm/mach-rpc/riscpc.c
index ea2c842..d23970b 100644
--- a/arch/arm/mach-rpc/riscpc.c
+++ b/arch/arm/mach-rpc/riscpc.c
@@ -46,7 +46,7 @@ static int __init parse_tag_acorn(const struct tag *tag)
 	switch (tag->u.acorn.vram_pages) {
 	case 512:
 		vram_size += PAGE_SIZE * 256;
-		/* Fall through - ??? */
+		fallthrough;	/* ??? */
 	case 256:
 		vram_size += PAGE_SIZE * 256;
 	default:
diff --git a/drivers/scsi/arm/fas216.c b/drivers/scsi/arm/fas216.c
index 6c68c230..bb18be 100644
--- a/drivers/scsi/arm/fas216.c
+++ b/drivers/scsi/arm/fas216.c
@@ -603,8 +603,7 @@ static void fas216_handlesync(FAS216_Info *info, char *msg)
 		msgqueue_flush(&info->scsi.msgs);
 		msgqueue_addmsg(&info->scsi.msgs, 1, MESSAGE_REJECT);
 		info->scsi.phase = PHASE_MSGOUT_EXPECT;
-		/* fall through */
-
+		fallthrough;
 	case async:
 		dev->period = info->ifcfg.asyncperiod / 4;
 		dev->sof    = 0;
@@ -916,8 +915,7 @@ static void fas216_disconnect_intr(FAS216_Info *info)
 			fas216_done(info, DID_ABORT);
 			break;
 		}
-		/* else, fall through */
-
+		fallthrough;
 	default:				/* huh?					*/
 		printk(KERN_ERR "scsi%d.%c: unexpected disconnect in phase %s\n",
 			info->host->host_no, fas216_target(info), fas216_drv_phase(info));
@@ -1413,8 +1411,7 @@ static void fas216_busservice_intr(FAS216_Info *info, unsigned int stat, unsigne
 	case STATE(STAT_STATUS, PHASE_DATAOUT): /* Data Out     -> Status       */
 	case STATE(STAT_STATUS, PHASE_DATAIN):  /* Data In      -> Status       */
 		fas216_stoptransfer(info);
-		/* fall through */
-
+		fallthrough;
 	case STATE(STAT_STATUS, PHASE_SELSTEPS):/* Sel w/ steps -> Status       */
 	case STATE(STAT_STATUS, PHASE_MSGOUT):  /* Message Out  -> Status       */
 	case STATE(STAT_STATUS, PHASE_COMMAND): /* Command      -> Status       */
@@ -1426,8 +1423,7 @@ static void fas216_busservice_intr(FAS216_Info *info, unsigned int stat, unsigne
 	case STATE(STAT_MESGIN, PHASE_DATAOUT): /* Data Out     -> Message In   */
 	case STATE(STAT_MESGIN, PHASE_DATAIN):  /* Data In      -> Message In   */
 		fas216_stoptransfer(info);
-		/* fall through */
-
+		fallthrough;
 	case STATE(STAT_MESGIN, PHASE_COMMAND):	/* Command	-> Message In	*/
 	case STATE(STAT_MESGIN, PHASE_SELSTEPS):/* Sel w/ steps -> Message In   */
 	case STATE(STAT_MESGIN, PHASE_MSGOUT):  /* Message Out  -> Message In   */
@@ -1581,8 +1577,7 @@ static void fas216_funcdone_intr(FAS216_Info *info, unsigned int stat, unsigned
 			fas216_message(info);
 			break;
 		}
-		/* else, fall through */
-
+		fallthrough;
 	default:
 		fas216_log(info, 0, "internal phase %s for function done?"
 			"  What do I do with this?",
@@ -1964,7 +1959,7 @@ static void fas216_kick(FAS216_Info *info)
 	switch (where_from) {
 	case TYPE_QUEUE:
 		fas216_allocate_tag(info, SCpnt);
-		/* fall through */
+		fallthrough;
 	case TYPE_OTHER:
 		fas216_start_command(info, SCpnt);
 		break;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
