Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA857D776
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 10:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVnfQvCWYfdtib91pCW9lo9JKOAndyznDwNS87BSLLo=; b=tD3n5efzvrYmTS
	A3LEREcGwpfulyl0THUoUANxhuWv6oFEyDu56hBtxSsbOhzPzJLn0H0rO3fkge6/BHf+WQJ9L8Iij
	OUoNKYnNoCoZETHP4xV8hSZcpI2kJBWPOFtkRK4UMY3piMGQx634JEQWy9AUDG1yGJAY6qnDANFG0
	/oMSG8onD8UDVoNnGiSYYagG4oM+BepT9xPZIbQZAX0HV7Apq16bLQOSn/XIf8pd5+qBYaHW9tjQk
	Rx+mDv0wBlfXr2HPpV/1X+CkDRxpgjVcjp4xyWqwc3KDWX8HamMUBBit+dSDZqGGRuqityLjM68r4
	1UrswaW1MfsPfHRoAh3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6Nx-0007Zb-AR; Thu, 01 Aug 2019 08:24:29 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6KE-0002ZY-Ly
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 08:20:40 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so33592627pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 01 Aug 2019 01:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cd+CJgxpyw48wYexEQLN0Ryuy346dGX9j+MO3rZWGCA=;
 b=Z2hoeeYKddLvWgzkdCUEz+2ekNkZhKgcRMApcaKIJ7G2CIMAm1cubhuNLH0vwcT8P8
 DmxIMWPwhRX603RJVjktdRBeAM4BzKt+1c16yhRSV52OElcwQ2L6MNZDgJZKJ2XoR/Vr
 qgiyoHQNvVUb7Nc+j7L1Iqm1RRpCH+xuPcVYNz1OUQYngmWAZuAlPcPICZa557bjJoeQ
 30kRgnzcmBqKpvWjBhMv9oMvtu6dj7gKLZofh36CdRU9/n0nfWQvp2xA3iJPXLxub6cc
 3Db/fga6lj3CgKI85yaJQhvd5i4Z9vn/+aPJLHb392RWMyFDVdH5e/2+Gp5+p1LbBpvR
 4qMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cd+CJgxpyw48wYexEQLN0Ryuy346dGX9j+MO3rZWGCA=;
 b=ZaevSJpGpybIbbiN5VSOktr6Pl5R0Nr78awu1oFZLEh0bddiqDeARYGjicedq2LVGP
 NSdTvQC457YajvS51AWEH/Gr73G64QvGT1dwI5Bv/B0Gzt7d0IOqJBOEd1xzS6E5mYqf
 yaPqHu0v2fbkSphIL0eLSnNlSyDYyo14vd5cMrJA0D3WKNKT5tMLtf1s7kABLId2+XTJ
 6+n5x8Cgv4MNE4nHhkw3yoJUQyMHjt5RQDyYRoLGNHUogx1NlxDn4I1ZRsHPre8UrCqy
 ScMj/aKVsjw4TMmslvtWlxCQxcf6x14IMqMdwp4Y86yJgZY5e2HTA4Zd6H2mBWPBUJqW
 KvJw==
X-Gm-Message-State: APjAAAWgjIeJ5Vtivv/dOjTwROuU5UvT3xGdmadD7cL8NtPHD52U1ZLN
 8WHGb6dyR1heIPKU9qLufPZ8lw==
X-Google-Smtp-Source: APXvYqwtcDCmIxl5mkdh/47SacWqkNbX1MQ0IltsOO1s27+NiUNuJFRU7Slh4TpJoMf4kw0ZVjpeAw==
X-Received: by 2002:a63:1046:: with SMTP id 6mr120820447pgq.111.1564647638075; 
 Thu, 01 Aug 2019 01:20:38 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id e189sm56924368pgc.15.2019.08.01.01.20.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Aug 2019 01:20:37 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org
Subject: [PATCH ARM32 v4.4 V2 24/47] ARM: oabi-compat: copy semops using
 __copy_from_user()
Date: Thu,  1 Aug 2019 13:46:08 +0530
Message-Id: <bb0db44ea44afc9defa2aefa3b1ecf6e4c81d988.1564646727.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1564646727.git.viresh.kumar@linaro.org>
References: <cover.1564646727.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_012038_788384_AAD4F722 
X-CRM114-Status: GOOD (  13.45  )
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

From: Russell King <rmk+kernel@armlinux.org.uk>

Commit 8c8484a1c18e3231648f5ba7cc5ffb7fd70b3ca4 upstream.

__get_user_error() is used as a fast accessor to make copying structure
members as efficient as possible.  However, with software PAN and the
recent Spectre variant 1, the efficiency is reduced as these are no
longer fast accessors.

In the case of software PAN, it has to switch the domain register around
each access, and with Spectre variant 1, it would have to repeat the
access_ok() check for each access.

Rather than using __get_user_error() to copy each semops element member,
copy each semops element in full using __copy_from_user().

Acked-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: David A. Long <dave.long@linaro.org>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm/kernel/sys_oabi-compat.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/kernel/sys_oabi-compat.c b/arch/arm/kernel/sys_oabi-compat.c
index 5f221acd21ae..640748e27035 100644
--- a/arch/arm/kernel/sys_oabi-compat.c
+++ b/arch/arm/kernel/sys_oabi-compat.c
@@ -328,9 +328,11 @@ asmlinkage long sys_oabi_semtimedop(int semid,
 		return -ENOMEM;
 	err = 0;
 	for (i = 0; i < nsops; i++) {
-		__get_user_error(sops[i].sem_num, &tsops->sem_num, err);
-		__get_user_error(sops[i].sem_op,  &tsops->sem_op,  err);
-		__get_user_error(sops[i].sem_flg, &tsops->sem_flg, err);
+		struct oabi_sembuf osb;
+		err |= __copy_from_user(&osb, tsops, sizeof(osb));
+		sops[i].sem_num = osb.sem_num;
+		sops[i].sem_op = osb.sem_op;
+		sops[i].sem_flg = osb.sem_flg;
 		tsops++;
 	}
 	if (timeout) {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
