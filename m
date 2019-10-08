Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE109CFA03
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SXr/7ZYP+6lQnUR3qw/irzD3wmQyy+AQPZBEx9gKE1o=; b=V+7ei1I4Y+bFUE
	/wv8IU8Duf8ILfGTWKumht+tDzgU75xQkvL7mqf7WJWPkDhUoWMJ3QI7vPhKbQNoc7blUMrQuaghW
	tq2ZxfDg47XqCN2bN2DxgmSADmbiC+W3EN00BADI9zgo0+/0EM23qwZY9cov21nHy0GnUfwoLFoNu
	qClduqnV1vTS7XkHVXSyiU1Oppkma3aK0emFeLP7534jwr6zIewdsD4c08cz/jfKQJEXdDsRBsQrn
	4S2lhrWXzuEtHNeE9tRZRDdflP6o82g5J5f/QbqJxh8rXUcA40ULcln96xdMm82EQAkADsfelsd4+
	M3ZOUWa1DbEbI0RLmLzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHokk-0003Rc-Sb; Tue, 08 Oct 2019 12:38:10 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHohc-0007ry-SP
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:35:01 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iHoha-00013P-Ne; Tue, 08 Oct 2019 13:34:54 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iHohZ-0000Rc-VG; Tue, 08 Oct 2019 13:34:53 +0100
From: Ben Dooks <ben.dooks@codethink.co.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/11] ARM: OMAP2+: do not export am43xx_control functions
Date: Tue,  8 Oct 2019 13:34:48 +0100
Message-Id: <20191008123453.1651-6-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
References: <20191008123453.1651-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_053457_090067_96B3E66B 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, Tony Lindgren <tony@atomide.com>,
 linux-omap@vger.kernel.org, Ben Dooks <ben.dooks@codethink.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Do not export am43xx_control_{save,restore}_context to avoid
the foloowing warnings:

arch/arm/mach-omap2/control.c:687:6: warning: symbol 'am43xx_control_save_context' was not declared. Should it be static?
arch/arm/mach-omap2/control.c:701:6: warning: symbol 'am43xx_control_restore_context' was not declared. Should it be static?

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Tony Lindgren <tony@atomide.com>
Cc: linux-omap@vger.kernel.org
---
 arch/arm/mach-omap2/control.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap2/control.c b/arch/arm/mach-omap2/control.c
index c84b5e260617..73338cf80d76 100644
--- a/arch/arm/mach-omap2/control.c
+++ b/arch/arm/mach-omap2/control.c
@@ -684,7 +684,7 @@ static u32 am33xx_control_vals[ARRAY_SIZE(am43xx_control_reg_offsets)];
  *
  * Save the wkup domain registers
  */
-void am43xx_control_save_context(void)
+static void am43xx_control_save_context(void)
 {
 	int i;
 
@@ -698,7 +698,7 @@ void am43xx_control_save_context(void)
  *
  * Restore the wkup domain registers
  */
-void am43xx_control_restore_context(void)
+static void am43xx_control_restore_context(void)
 {
 	int i;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
