Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0C01AAB9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 17:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3FMhNIG0Cdnq5gDW5VgSdzf2r/YvoAukyjLgWxunDp8=; b=dAoFlN4woGWCtW
	fqk8uC8lIPnzFdPNXVP0mIRVTSfRHOCLb54FGeLnG5WJZh3rQZcUkZKR4JlThqdxv6/PWVPOgeh4B
	EgvQz2o6s91mVBoG0LXFESneOC44qpyZYlWo6xdA+H3DxLFhc59ekHS1aj9nsxDhAYntwFld6EYbF
	Rsh2SYaKPEn4ekxdYf2kcS/ktHqRe1uwzmtdvhZbO6JP76onY+mR9SJ0pt6uP8lV2CzLiE6AfyG/q
	CO6cW0qHIWkIAO83MEiA/w2lkB+bdG4LLyA7egNuw6TgZPXUa4p6+pCxjN9IZbdoRRFKMAlg+G5b9
	qxmpwlhC62NAx3+uTGEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjod-0000yo-0i; Wed, 15 Apr 2020 15:19:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjoW-0000Nl-P6
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 15:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lx1N0Zkft6kq22PfDipT5rnrsOu23cXoPD/0VO3ur2g=; b=k2uZZZgZ1n4dB3hCYPPJmmZ5ij
 ijiIwuEK/qieV9n9xLZnQi4/2g2OW8h2gg9yZLWZBSn+X9PN55Va2QhhHopK7GtFmFM5YM4rPNzTQ
 MmCqOao3TcCMmPW+4doh4MxO9B/qMhXakN9nkdnsr52AHNBIRHlE8BOAb/ictbQr9cNUeQJGgEb8I
 JRBisp5FeKW1Lw+8VghZucyZN4/R5AQkr3/+NHg/GzUIbMYoKeABMpMLb5hH/x0WrnhLsu/hnZ6RH
 v/ZlXW5QYKl3R74nslfprWwi2CdGuTBGMOa69n5ttm0m5/Uwx/sS6XdLaI4wP3N3nvGOvOfenfeEv
 4WQQmsGg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:39258 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jOjmT-0007AV-BY; Wed, 15 Apr 2020 16:16:49 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jOjmS-0005r0-MD; Wed, 15 Apr 2020 16:16:48 +0100
From: Russell King <rmk+kernel@armlinux.org.uk>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: compat: remove KERNEL_DS usage in sys_oabi_epoll_ctl()
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jOjmS-0005r0-MD@rmk-PC.armlinux.org.uk>
Date: Wed, 15 Apr 2020 16:16:48 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_081856_816818_0CC31065 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We no longer need to switch to KERNEL_DS mode in sys_oabi_epoll_ctl()
as we can use do_epoll_ctl() to avoid the additional copy.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/kernel/sys_oabi-compat.c | 15 +++++----------
 1 file changed, 5 insertions(+), 10 deletions(-)

diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
index 17bd32b22371..0203e545bbc8 100644
--- a/arch/arm/kernel/sys_oabi-compat.c
+++ b/arch/arm/kernel/sys_oabi-compat.c
@@ -253,20 +253,15 @@ asmlinkage long sys_oabi_epoll_ctl(int epfd, int op, int fd,
 {
 	struct oabi_epoll_event user;
 	struct epoll_event kernel;
-	mm_segment_t fs;
-	long ret;
 
-	if (op == EPOLL_CTL_DEL)
-		return sys_epoll_ctl(epfd, op, fd, NULL);
-	if (copy_from_user(&user, event, sizeof(user)))
+	if (ep_op_has_event(op) &&
+	    copy_from_user(&user, event, sizeof(user)))
 		return -EFAULT;
+
 	kernel.events = user.events;
 	kernel.data   = user.data;
-	fs = get_fs();
-	set_fs(KERNEL_DS);
-	ret = sys_epoll_ctl(epfd, op, fd, &kernel);
-	set_fs(fs);
-	return ret;
+
+	return do_epoll_ctl(epfd, op, fd, &kernel, false);
 }
 
 asmlinkage long sys_oabi_epoll_wait(int epfd,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
