Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 365B97D782
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=maqIrOrzBhoLpo+JdH6pRvSTUSnuPHvn5eYJbs/nNEo=; b=WWcs96TmtJmdEA
	9Q5UMDk37B2rtQ+cwIDmiRgqyG3dVB6YwfqlelMAnKwJxArnwric2RXVV0tkLCw/9NvzZAgRtgdWd
	mDfe3KIMJTxU0hbEzEVPV9HE80IOO1mzQt77Ophu9od4/lr2xc2J3JvIdMrBLxSi3CEeiukSH2yxa
	OzUS+/Ynxz8xcFDHyxJ1t7EncXwasBEvZBdA/K2IHd8StXrd9uNDrlOjOK5nSpTwTxtA70QsU1ign
	bqn079fRlLQwJKD0+EPdDsldzGrtHidUbs9/ff/dkLiNMFsR2SuLUV+JwNSVBEt5BuU0J+MT+FM1a
	c0YYb9IpdfFeUvFi+G8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6PC-0001mS-QT; Thu, 01 Aug 2019 08:25:46 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KT-0002sK-KU
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so33593011pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PM+p9F/paBphnvI0O8YGjV0kMD9bw/jop01RC1tBzqU=;
 b=o0bXhyKqYt8kp2xyqrJN+d5+L6zWOZoysvGTEc4rppHnRpkoPu+T4rnS3m4Jm+aRvI
 sQXJ7oKpn5ETzHEMDgshVmw84/LTRr+AG+d5lPhYx3vl/8kjEcoUyTb+f9Z/tE7ck1xs
 7gTkMJKkIt5Gx64KSQCHK+McwRAZN35KWlv8Vp1mb2L75q5NBI1Dan3JB+63h+6B54iV
 4ZSBYc8+5DRo4yXMnBg4TH9/kpVbi9ZyAJwa3DEeIQ25dhha1DKlODyU2IetZUpvOG+n
 DfzIRtDFj4vaEK47flZLyQXsqnbGm9K47CBqs2fPmZj8wswO1/GL3Dn4eFaSjhCw6PAR
 y49Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PM+p9F/paBphnvI0O8YGjV0kMD9bw/jop01RC1tBzqU=;
 b=m1TopebXncqxyjKxQw1vl8dA6AaV547P01I19G5QuYKYfVotxbbmY62KHvuXwcwxAU
 Uf1r3lJj0ruaUg8qMrJ6w1utb6gvsZ5jv4vtfKvytmnIjOhfEEald7GO2gEoTr1Gkold
 n/diGr56hRrWaq7XfFNMvgpP+X6XylbPztg4bN54WfxbVb9ClXkLAyUiaFfRErtg8oqu
 A9H5WiKCk2qjW0MJ3pY5UAnqfbQ8JM3QRzMGriYXrSKB+QaKlHqfmUxQAeAT0txYY83I
 A/rploSx9T7D4SGa9bScKabXx3y0SgXkRqHlR+HGEKiyECD7THurYN1F+GsMjrsf+Urh
 1z6Q==
X-Gm-Message-State: APjAAAX9eFKNExo91C2OJ1FoT2I9n4EUkhmY/4dIDpE8UToCoE9/oB8N
 35ebAUuOgxFrlF5FSHEIwnQFmw==
X-Google-Smtp-Source: APXvYqz3GWx2N/m/nhcWkCouY4H1qYVElKKIkdNdyN42eDSqTyXd8YO3BZzcYLEcjj5aC3TXCQvy/A==
X-Received: by 2002:a62:7552:: with SMTP id q79mr52190761pfc.71.1564647652996; 
 Thu, 01 Aug 2019 01:20:52 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id o14sm4069908pjp.29.2019.08.01.01.20.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:52 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 30/47] ARM: 8792/1: oabi-compat: copy oabi
 events using __copy_to_user()
Date: Thu,  1 Aug 2019 13:46:14 +0530
Message-Id: <ea31022b55593a34417b2045fef8bf474fc80e16.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012053_882950_0E2C0AEE 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Julien Thierry <Julien.Thierry@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, guohanjun@huawei.com,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Julien Thierry <julien.thierry@arm.com>

Commit 319508902600c2688e057750148487996396e9ca upstream.

Copy events to user using __copy_to_user() rather than copy members of
individually with __put_user_error().
This has the benefit of disabling/enabling PAN once per event intead of
once per event member.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/sys_oabi-compat.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
index 640748e27035..d844c5c9364b 100644
--- a/arch/arm/kernel/sys_oabi-compat.c
+++ b/arch/arm/kernel/sys_oabi-compat.c
@@ -276,6 +276,7 @@ asmlinkage long sys_oabi_epoll_wait(int epfd,
 				    int maxevents, int timeout)
 {
 	struct epoll_event *kbuf;
+	struct oabi_epoll_event e;
 	mm_segment_t fs;
 	long ret, err, i;
 
@@ -294,8 +295,11 @@ asmlinkage long sys_oabi_epoll_wait(int epfd,
 	set_fs(fs);
 	err = 0;
 	for (i = 0; i < ret; i++) {
-		__put_user_error(kbuf[i].events, &events->events, err);
-		__put_user_error(kbuf[i].data,   &events->data,   err);
+		e.events = kbuf[i].events;
+		e.data = kbuf[i].data;
+		err = __copy_to_user(events, &e, sizeof(e));
+		if (err)
+			break;
 		events++;
 	}
 	kfree(kbuf);
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
