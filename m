Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868F71A2EAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 07:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z1Mnauy0ymp1UGn3C6pMRuIVxUZyOd2fYpVTX45c/Ps=; b=JIsap42UHCFP27
	24HHWINvl1x1mFSysVxABJQZzA9QBx+ccK7wr01bMzmBMa1X+sSB2fwbPHOvdAp9HtN4MT9OqHims
	KdVagBg5xE2DWa76Y2h/23ja1/oRWXZv4LnnAM+3fmYFvC2OFmPHHswkTbNQVlnx97wkciCA0m7At
	vthhb4J0lzPlgY3UXBgm7nvzvYZsnLA8/i97A8yBayiRCNL5LI8sSaqoFVJ+1/BLvm0Nm3zDtFJ5c
	IYumkvBe2cwQPCx5wid/Rw7sG2SurG7Bpvg0aRzsW1Rr8DNGRb/jxmUIlAXi+k+JX4BtcPqK4Fmtu
	nDtnEVFjUc2yJ7Gb693Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMPNZ-0006jD-Qc; Thu, 09 Apr 2020 05:05:29 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMPNS-0006io-Vv
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 05:05:24 +0000
Received: by mail-pf1-x443.google.com with SMTP id u65so3575394pfb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 22:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9PjCOJ0l6G0/mtWD7X1D6e3DIyjjPpviDaac3o0fAck=;
 b=dQMT9Zsqf/uIAjQL3q4aVMWGj+DXkMtlFfKgYpD1t/LC+mqpudR8ln8peurICtyuxu
 MD4ZrIyGw0iqicb8qgBayNDJmcpytposMGB93678nsTnjui5XSsR+NozhqO2oaKPgTcg
 69oUSTsrT/YlrxzHoymQHDaSQP9PxWdm/1yFKSt4u/sUmyRQoWJycGXfD2zZsp7fGGWx
 IGzowPfgRAq9FRK7Cb6JK9Pz9d0cizTJ7XCnmEZl0MH/nEjuGwU9g7UOqiNQBylKlsDg
 sbaFkzexI3UnFPbRYP4NOMtdqlYTqHxlQLyeobCbD16GWSCD3oyi1JRqFa/cBqzwlRZF
 rSaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9PjCOJ0l6G0/mtWD7X1D6e3DIyjjPpviDaac3o0fAck=;
 b=eJeVjMpctSiyDSiOQQpNfJF2gFMeheS5iRk9vgUAJ4KjVw4WbrHgtayoPDJiAUJSuk
 Tv9x0vR+Sdd8obDEgUBW3MGx6zPFS9pdseGu8mynlOBIRrO10nys5mvT9BmXrMFuU+gM
 oW7YbatXqwPKut8kpYUVH0BSf87USr7aAj8c7agX6dOq1rkvqWtw1g6SuxRRxjeDrawh
 XOKmriWUAHiy7Pmqu0jwsE63xONIOPStZNbIh0r+ZK0X07bWWIYe9Z2r0xnwmYvT6PYX
 Id+zB6X6gpUEPuKAxUgP0PMem96TCr8enPHuyw2jWvLCYtXmba2uPugFP8w/6xeSBJuT
 2Pew==
X-Gm-Message-State: AGi0PubBvJUNQGpVWZ84PUhgtmrWVgNtvzAHuuICSLtggxpkw+nuJ2dB
 rX7Lxs1r0m9aNj2f3eT0W5ilgRPz
X-Google-Smtp-Source: APiQypJkjgSG2F3AzrIOyokvtbaIhwIqwkyf8JJKhbxUSaUw4imoesMZZjzaGQq1MS9JVcnsDYwekg==
X-Received: by 2002:a63:c44b:: with SMTP id m11mr10649599pgg.313.1586408721564; 
 Wed, 08 Apr 2020 22:05:21 -0700 (PDT)
Received: from localhost.localdomain ([59.18.189.181])
 by smtp.gmail.com with ESMTPSA id y207sm18474238pfb.189.2020.04.08.22.05.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Apr 2020 22:05:20 -0700 (PDT)
From: Jaedon Shin <jaedon.shin@gmail.com>
To: Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: VDSO: Fix incorrect clock_gettime64
Date: Thu,  9 Apr 2020 14:05:08 +0900
Message-Id: <20200409050508.96753-1-jaedon.shin@gmail.com>
X-Mailer: git-send-email 2.24.1 (Apple Git-126)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_220523_051720_F5BDA514 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jaedon Shin <jaedon.shin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

__vdso_*() should be removed and fallback used if CNTCVT is not
available by cntvct_functional(). __vdso_clock_gettime64 when added
previous commit is using the incorrect CNTCVT value in that state.
__vdso_clock_gettime64 is also added to remove it's symbol.

Fixes: 74d06efb9c2f ("ARM: 8932/1: Add clock_gettime64 entry point")
Signed-off-by: Jaedon Shin <jaedon.shin@gmail.com>
---
 arch/arm/kernel/vdso.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/kernel/vdso.c b/arch/arm/kernel/vdso.c
index e0330a25e1c6..28cfe7bad1bf 100644
--- a/arch/arm/kernel/vdso.c
+++ b/arch/arm/kernel/vdso.c
@@ -184,6 +184,7 @@ static void __init patch_vdso(void *ehdr)
 	if (!cntvct_ok) {
 		vdso_nullpatch_one(&einfo, "__vdso_gettimeofday");
 		vdso_nullpatch_one(&einfo, "__vdso_clock_gettime");
+		vdso_nullpatch_one(&einfo, "__vdso_clock_gettime64");
 	}
 }
 
-- 
2.24.1 (Apple Git-126)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
