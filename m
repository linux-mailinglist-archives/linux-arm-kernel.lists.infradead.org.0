Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 635E1E3246
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PRxT9VJhoM6wFUD99bZTa0yZimyciPw36ho+9Vcl2zo=; b=fZL
	RuAkK+Ix42aSaJFInBDB/4JFr52wWE9aec+wTq8PqTppkW+cd/ASZ/atC81TePJFqmAuN+jHqEV2w
	sUIoEoKwjwQhCMNuolT3sxabDK7k4qvTfuRYKYcbjJgnUX+mWTKo8PcWxZ1LKwhIswCJe0y69NL5E
	b9hgt0H3MoSLtN3j5/chkvcYbVQjtMcXI+UxxdGMYF9PFq7qPpPM7FYlD+YBLPVte/QqSa/oBhFGb
	fsodP4tB/ja55DzraviOuggLIIdp+sdAenxzmJ2EXP14a5N7Iu4CgQGUSXExO5mu8hWNOlMRKdX+i
	ObkQAbRsiu7Go+plBhK1Qnx6WMwMbLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcBz-00026D-7i; Thu, 24 Oct 2019 12:26:15 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcBp-000256-Od
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:26:07 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id HQRt210075USYZQ06QRtSn; Thu, 24 Oct 2019 14:25:56 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNcBd-0005rB-2D; Thu, 24 Oct 2019 14:25:53 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNcBd-00039t-0F; Thu, 24 Oct 2019 14:25:53 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH v3] ARM: Add missing newline terminators to kernel messages
Date: Thu, 24 Oct 2019 14:25:49 +0200
Message-Id: <20191024122549.12090-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_052605_959109_EB975450 
X-CRM114-Status: GOOD (  11.41  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Before commit 874f9c7da9a4acbc ("printk: create pr_<level> functions"),
pr_*() calls without a trailing newline characters would be printed with
a newline character appended, both on the console and in the output of
the dmesg command.

After that commit, no new line character is appended, and the output of
the next pr_*() call of the same type may be appended:

    -No ATAGs?
    -hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 watchpoint registers.
    +No ATAGs?hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 watchpoint registers.

While this commit has been reverted in commit a0cba2179ea4c182 ("Revert
"printk: create pr_<level> functions""), it's still good practice to
terminate kernel messages with newlines.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v3:
  - Dropped changes to code removed in commit 460c82c475f96de6 ("ARM:
    8636/1: Cleanup sanity_check_meminfo"),
  - Included references to 874f9c7da9a4acbc and its reversal in the
    commit description itself,

v2:
  - Rebased.
---
 arch/arm/kernel/atags_proc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/atags_proc.c b/arch/arm/kernel/atags_proc.c
index 312cb89ec3648e7a..f7af535f092f038d 100644
--- a/arch/arm/kernel/atags_proc.c
+++ b/arch/arm/kernel/atags_proc.c
@@ -42,7 +42,7 @@ static int __init init_atags_procfs(void)
 	size_t size;
 
 	if (tag->hdr.tag != ATAG_CORE) {
-		pr_info("No ATAGs?");
+		pr_info("No ATAGs?\n");
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
