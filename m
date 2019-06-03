Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E1233BD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 01:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cMc4p1QWwJ30HKEEtm8Hm0Xi56HfamO//Nz95rD0Ado=; b=WLOH3LBJ1ABKMksnlffBPkZ3uC
	FBR72aRrN1N6KizVkjDPOvFqMCDD0a8LBizkCxUksHa6XwE/3mqf3k5wtopRvL9Azt6w+Za0d6VGV
	PT5VeWTm43J2j/sXPieiUtTCkkn9wfkevHiDCJnJau+3N9yKluby3soHi/rwCBXthzd/ZLkInH1xH
	cmqprP51JehMAlAlO0xewFnjhKEuK0fmn3bmpYARUisEmKnyMClhXp3AhVESkLssYPS5EfVlSze9Q
	gl9GjkzQZ5DzCU/25K0fSO2dSMz+TK9QSVXgjw72TgAy1gJlK+YVaEheaLP9O/VbydlZrfGlvbcBe
	/FL84swA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXwFh-00086B-4L; Mon, 03 Jun 2019 23:20:29 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXwFF-0006Zv-ML
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 23:20:04 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so9139872pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 16:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h4T+U/8TbuerdJ9T+PIwJr+AsgCnk93w+4V0fRYDj/0=;
 b=DLR3sftfc4blBJP/VPCJ77k0R7fxa0BXTclfKSebuAgMGEOpt3mfsFhIta5LbsuK92
 mHUN5DAFajTo+ozCIwNKkCC3JnLnJaGUYtWK3XsBXsfwF0jnMg8iXRllg+lEFpXpF2C7
 3kpWokmVJCiJPRGDLjEe8mnPdXemwJs34ZmFpmMoVpXFy6kzQqw3Bcgsx7Zc7TalRC78
 vrtBZLdzJiIdEYNQKSZZdYY7qYG8LuqEbqFvMVsYQ7WIzNtj63K8oAht8vy/H6Iqh+i4
 wWNiXL1dZeaYoBuEfNj28ohPJjk7UDYEdeHSBXGd7/ScnLyCShvcT6mcNvgEYPAJ/a/T
 bzBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h4T+U/8TbuerdJ9T+PIwJr+AsgCnk93w+4V0fRYDj/0=;
 b=q6rVnboHleG2J14fA5Mo/sk6zbWI7XnwpJJiJm04t+XMs5BjwPd9dMlxViXga/ro0R
 i2Kidh3WFzn15CTOrtGY5d2D81niw7ozqYM5jyg1yBOG5heGf3oX3upT7+DJ0pMs10k1
 qHqa++VmatZLEMxAHGHSRtc23QaoNu5YTe36Ad/Hgcttqr7+qExoDpPOxIe8VffskEGu
 eImAoiKaQwAcQM8LWg9LhnaOb0gqWzF+Q9YJENB2USxYJ+P222oe56WTrwz52YUUa/mz
 eREjn0x7cZQk13fhPM0CmAhD/tnAgsAOZoZDZazbPXV3QpKvLbQ2VzEagHOKFAzEAAcq
 ck6g==
X-Gm-Message-State: APjAAAWyS2dqDM9lenbXvQ1R+2do6EoUugfSCsjeiGJWv6VkovpvrkEi
 Q/K7LxzPmAYBNjxfUEpF7By8vuFF
X-Google-Smtp-Source: APXvYqwl2gxrcOEMEZNo4B3s4crG6no+t0Xfk5Bt4ktRQPsXt2yywQdZP/9R/yN0ZUtgpLES9UgsOQ==
X-Received: by 2002:a63:4826:: with SMTP id v38mr31703087pga.417.1559604000699; 
 Mon, 03 Jun 2019 16:20:00 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a64sm12666564pgc.53.2019.06.03.16.19.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 16:19:59 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: smp: Moved cpu_logical_map[] to smp.h
Date: Mon,  3 Jun 2019 16:18:30 -0700
Message-Id: <20190603231830.24129-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603231830.24129-1-f.fainelli@gmail.com>
References: <20190603231830.24129-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_162001_900153_BC7EF5BA 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, rmk+kernel@armlinux.org.uk
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

asm/smp.h is included by linux/smp.h and some drivers, in particular
irqchip drivers can access cpu_logical_map[] in order to perform SMP
affinity tasks. Make arm64 consistent with other architectures here.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/include/asm/smp.h      | 6 ++++++
 arch/arm/include/asm/smp_plat.h | 5 -----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/arch/arm/include/asm/smp.h b/arch/arm/include/asm/smp.h
index 451ae684aaf4..112d78e82f35 100644
--- a/arch/arm/include/asm/smp.h
+++ b/arch/arm/include/asm/smp.h
@@ -20,6 +20,12 @@
 
 #define raw_smp_processor_id() (current_thread_info()->cpu)
 
+/*
+ * Logical CPU mapping.
+ */
+extern u32 __cpu_logical_map[];
+#define cpu_logical_map(cpu)	__cpu_logical_map[cpu]
+
 struct seq_file;
 
 /*
diff --git a/arch/arm/include/asm/smp_plat.h b/arch/arm/include/asm/smp_plat.h
index f2c36acf9886..ca6b91d400cf 100644
--- a/arch/arm/include/asm/smp_plat.h
+++ b/arch/arm/include/asm/smp_plat.h
@@ -66,11 +66,6 @@ static inline int cache_ops_need_broadcast(void)
 }
 #endif
 
-/*
- * Logical CPU mapping.
- */
-extern u32 __cpu_logical_map[];
-#define cpu_logical_map(cpu)	__cpu_logical_map[cpu]
 /*
  * Retrieve logical cpu index corresponding to a given MPIDR[23:0]
  *  - mpidr: MPIDR[23:0] to be used for the look-up
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
