Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FC683784
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 19:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EbnTWKHq6Sa9a7ZDg6ijCfe9640VZ8MGb7UvO6a0Qyo=; b=X/fH7TarQJbjCd
	EoPSgQwwcmYFj1UKXVZjTNjS7ql8oiT5s18JVbkktWm/8tApZ8qUeoWD0VNN16GN/wjrgIhjJq4Bx
	m/svlVn3CsTVDmNS1Yde0P6JVM9a3o+aH1gpKh+seB0YuqyhfYny9AIGEaKY/2SWnTeplqqvezkwN
	YO92o6rCL0pghs1RgrHqZ8ArwiVNA+8yUiEgUvtenJzWXgTka6dxOW1yWdCgtOne8Sv0ODSBx0Uua
	ZSV1W3MWE2fIfLIk+epwuBcAk2afjweiiVXzeXqHQnZ+cOTmootUGbtHOYDrGzAHucJ2KAGqyIgGC
	ZnlUSzntaLjHmT06zy6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2py-00028Y-1C; Tue, 06 Aug 2019 17:01:26 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2pq-00027t-VW
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 17:01:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xos6GYKevpSkmiaV/OI2XpONmX8VAZEHjA5gp4m4vic=; b=dgUY8eYLdeV8TPaNtgOo1Ukq4
 tkyrQAgOMm+CIUAsX1mi/m/PAOaGW9i9MjDkEsMeNBOzdSdNXoECWBJJksiLG/aQtVvfr7vMmUqVu
 +Iikxnq1gEVkyHI9iRXxXEmucBFLXlL6dJ4JlKZ0QLKMM8TdOfEIvQ7CMneacQHMWlkII=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hv2pn-0005CG-BU; Tue, 06 Aug 2019 17:01:15 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 870EE2742B67; Tue,  6 Aug 2019 18:01:14 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH] arm64: Clarify when cpu_enable() is called
Date: Tue,  6 Aug 2019 18:00:43 +0100
Message-Id: <20190806170043.35588-1-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_100119_021407_8939731D 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Strengthen the wording in the documentation for cpu_enable() to make it
more obvious to readers not already familiar with the code when the core
will call this callback and that this is intentional.

Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm64/include/asm/cpufeature.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index cf65a47ee6b4..3d8afcf687d9 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -289,9 +289,9 @@ struct arm64_cpu_capabilities {
 	u16 type;
 	bool (*matches)(const struct arm64_cpu_capabilities *caps, int scope);
 	/*
-	 * Take the appropriate actions to enable this capability for this CPU.
-	 * For each successfully booted CPU, this method is called for each
-	 * globally detected capability.
+	 * Take the appropriate actions to configure this capability for this
+	 * CPU.  This will be called on all CPUs in the system if the
+	 * capability is detected anywhere in the system.
 	 */
 	void (*cpu_enable)(const struct arm64_cpu_capabilities *cap);
 	union {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
