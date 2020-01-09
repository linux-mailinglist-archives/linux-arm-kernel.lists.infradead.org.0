Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565C7135E1F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rstr0bQmnbiVAKQoXLcR+jNPmgW7ZIpYI79pcjescPs=; b=U9yC7Av0/GPm3D
	01U7kU2Wj/6tM2CgvTl27v4RbM0wPXzw22nz0DsBVat6a6zb88isTbTbi8Ms+5gPHh3qNn13y0qQn
	A840+DXEpnOAiG8+tyi/6tDa9a6rBanmHRLy+MK62tyAoxZMlU0VSxzt41AX/plMXwatIPQyK9/9d
	ho5wway3VoGVUtF3+SPcSRJ3j087s65H0XcmNfW0LuZ79GuS3ZLBr9DV4YfimNWNIWxqCCeWssL1N
	pyTGSbWP/QaMlDJ0cQKh2wb0wgaJGBJWD1uYn0mROe91qcDEnyAPCgOMOmSv5rpBBuevxzVZfmgal
	DN1c2waXhySuJrxy6OWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaZY-0000DE-2g; Thu, 09 Jan 2020 16:22:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaNy-0004Dm-7G
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:10:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578586213;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+i3Z5hWXW12eDu4B56KhWBmac7Q2y5XMkxb+3N11Qwo=;
 b=Wc9VQur51J0ug+Urdh1GgWnoOqal7IHMJWQt2qGLn9cVcBATUp/aWTFnR+gHLnKgv3z64w
 8YaBEnC0NWC3rETZM9OivUNFbOP7Bqs7i1fo/0ILK0oIBg1HkfNZOszk6JawNJD3VVqrBH
 km3A0eCXMCqLbg8aEoV5bPnAfJUEvyI=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-bRcJlu6vMziG5nxC_F4RMw-1; Thu, 09 Jan 2020 11:10:11 -0500
Received: by mail-wr1-f70.google.com with SMTP id b13so3033175wrx.22
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:10:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DAmIKVrG0XTaKJJzMfiZimG349dykVofBy5TCpIMs8E=;
 b=hInq3S1Yvl4xSA2+lKJiEIBVxTfQliD9xoEDENxme819qkcOXg0uKrFK0VPZuafeLP
 GfWneaoJNkgpBcUr48w0H3uJ/8PEIsKWlTutfRPtjdjsJxcPT9oPEPw6C79NGvVXCInJ
 VcXPnRSXQGuWKQkKN5FA1cOngDunQvb4oKJ8ybT8FW/on/MjHgxQNgoVX8Jj/spa1L7V
 NYBQ+ZWviSslrtSv+xrHj/ouFquDYPoxmtSj5tP/IO4nvxf2aC+DkICu6EKIWSnkeXWt
 EZayPBm8/wya0B1ELwyRc8VRwKyIsheim5VYGWXmCaE2/450vzTyzv/q5SvHY3tVhALq
 EYUQ==
X-Gm-Message-State: APjAAAUqBQmdlu4YiJXpE8g33imH/XevBIiWi4Nra8ysHcvo08cJDjgB
 u7jBwGVpXHihapaG9Dne7exMvzMCaF6VYEqFDN6a883cAr2ap3Hf5dv0TjyOk5blCekkSBQD1Vy
 q2NaXbW1mNb1Ll/xTBVGQdX++80g6Z7QIU0g=
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr5844660wmi.146.1578586210076; 
 Thu, 09 Jan 2020 08:10:10 -0800 (PST)
X-Google-Smtp-Source: APXvYqyFva8eO8YAHVsY7yqkadvzeSK9FfRmzCmEmBFRtKNIs9P8qgXGmLAvH+I97ylIV2hDbJg/RA==
X-Received: by 2002:a7b:cb91:: with SMTP id m17mr5844651wmi.146.1578586209923; 
 Thu, 09 Jan 2020 08:10:09 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id y17sm2820948wma.36.2020.01.09.08.10.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:10:09 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 55/57] arm64: Mark sigreturn32.o as containing non standard
 code
Date: Thu,  9 Jan 2020 16:02:58 +0000
Message-Id: <20200109160300.26150-56-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: bRcJlu6vMziG5nxC_F4RMw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_081014_360076_6F2BEC1B 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

sigreturn32.o contains aarch32 getting copied to the VDSO for
compat user tasks.

This code shouldn't get validated by arm64 objtool.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 arch/arm64/kernel/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index f5994679db5f..b978026ea368 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -31,6 +31,7 @@ obj-$(CONFIG_COMPAT)			+= sys32.o signal32.o			\
 					   sys_compat.o
 ifneq ($(CONFIG_COMPAT_VDSO), y)
 obj-$(CONFIG_COMPAT)			+= sigreturn32.o
+OBJECT_FILES_NON_STANDARD_sigreturn32.o := y
 endif
 obj-$(CONFIG_KUSER_HELPERS)		+= kuser32.o
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
