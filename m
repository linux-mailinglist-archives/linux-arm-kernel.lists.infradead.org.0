Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742761CEA3A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 03:48:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SkDR+GdHhuXd3U8QkEqtOTXtXkFmvTOVpGlgO2kmcaQ=; b=ksmBfRbBa0UySR
	fUefHspjwm5MsPvQEx9dk88dKum/iCKzLX3cgu65I5vgOXM+1fH2Y/r6iN5pwEJxb/FdZ/mmk0BiF
	HI2MiRqdM693/+oznzHnQ8rzZmnjfuiQusJ5rjPuaJTkj0IZWZCTF4Nnf8pMFQGziDPMadNAv0WGL
	BwcfB8cYHmV74JIGBsy6snOrA7tRHt9l92R5z0c4Ol5xw6366LBeebzZlN+hg2+Prt99uPAA7lOJS
	2OT4FQ2wH9Ct4LP4H8icTq/2nZSRI369uTZJSFEywCSX6ajQxKWdk/L3UX6QccWbcLSzyRNT58/An
	qH/ESPMqRJt7hMKS0zUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYK1b-0007uR-6C; Tue, 12 May 2020 01:48:03 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYK1U-0007to-BE
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 01:47:57 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A8C7AAC5FB96935151DD;
 Tue, 12 May 2020 09:47:51 +0800 (CST)
Received: from ubuntu.huawei.com (10.175.100.98) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Tue, 12 May 2020 09:47:47 +0800
From: Ma Feng <mafeng.ma@huawei.com>
To: <linux@armlinux.org.uk>
Subject: [PATCH] ARM: kexec: make machine_crash_nonpanic_core static
Date: Tue, 12 May 2020 09:55:34 +0800
Message-ID: <1589248534-29900-1-git-send-email-mafeng.ma@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.175.100.98]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_184756_544735_9873897A 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix sparse warning:

arch/arm/kernel/machine_kexec.c:82:6: warning: symbol
'machine_crash_nonpanic_core' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Ma Feng <mafeng.ma@huawei.com>
---
 arch/arm/kernel/machine_kexec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/machine_kexec.c b/arch/arm/kernel/machine_kexec.c
index 76300f3..2456215 100644
--- a/arch/arm/kernel/machine_kexec.c
+++ b/arch/arm/kernel/machine_kexec.c
@@ -79,7 +79,7 @@ void machine_kexec_cleanup(struct kimage *image)
 {
 }

-void machine_crash_nonpanic_core(void *unused)
+static void machine_crash_nonpanic_core(void *unused)
 {
 	struct pt_regs regs;

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
