Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D412A1913
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRo2mbnO7e+3/A6KcGW/h5g7JjqN03BUaJGAAvbC3EM=; b=DOTNFcqb+VxNTs
	IcrtFV8lCYrUcv8n+1noo7CnX/wV4uelYEBxIoeW227OK3VjNFaunrQUaYX12fSerbbctaf6hdJ4r
	Pszce9OBI+5+xQZY9oWSak5mLwYTMM029ALgSpR9CbYeYc9kF9qxmyDk0orrbbY+PvhWb0cFogu98
	iuAPWkTjDoI1ILlWkYb3i4zPiHGMGekBsukWIVpILikgfO7xdU9azPOCJZEWVa4N2Hk9ep8qmBIlP
	dnfWO6AsXbY08rlxBgcxhr63gR3G7SAQrtNqKiVJvnBj7CwQf3HpIj+RIJUPA0XB9ieLkMdVVWx/8
	iHS7xi2WM+z49FKYpTgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IoD-0003yr-51; Thu, 29 Aug 2019 11:41:45 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IiT-0006dT-Mx
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:51 +0000
Received: by mail-pf1-x441.google.com with SMTP id d85so1881150pfd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=L+Gdnz2jFF65J3PIUhAk0AHlnEqUM/+ROCtumKJNSeI=;
 b=Oe6Dz4153ltyD3BOVv2Y24vo+UtKfPsfPZvYFyr5fhxeB35Rbu8aymhVcDzOji8XSu
 7JIvGaxHIMY4EXvUznwSkztpEswYQ2WD/XqHg1Z9aye/Mt6Oh9a2vy5UrkWv5t457CgF
 x8b0CUqFARciHqOI3I/UFAchPFXRplP3lCdMz8/SNk2EDLelih/T0i3/ZyofTZ1L/mkS
 evSDeJfPr8ec36CGg7Y/rNsY9VDOg2HDzsEsbnbgzULvX+nyus4K/F8jQ8hQb9HZD37y
 Bp1I/ewwTABB/GzOgP/4hzZ7fVlk0mOQ166/7eWgZoKkdFSJW3x1qiyKtFaS4qmO2qKU
 C/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=L+Gdnz2jFF65J3PIUhAk0AHlnEqUM/+ROCtumKJNSeI=;
 b=LBYiqO53nEQr4N4aHTmw82CwD85Ei7nJk62liIt4C64RY+dn/2xScEzjxrocPUlCMt
 szvT9XjfbdjdpjWyxbQzX9ladfNHqx6MLBPcCEhegJ1rWgavbEutbfOcWZeNSf0bb8xO
 uNnFbpm/YgjR+OKTxHx8EWwbGxRTzI2d2wIld+Ky3U/O4f7f0BmU8UNvOOMnJPtauQGE
 bgI8TsOSMUO/MbrYVmfOmG3PQPwRnswcDdU896mqspTMN5BNvfF5ew+IVV8+ILzfv6c/
 3CaVXmeWAGH5J0LVhEBfBHIssfCl+FclCPR7EDs9aNDu/GPsNXeCRV63zZGvzyNpAVrX
 gcGA==
X-Gm-Message-State: APjAAAWkXsVvAb+/6ipW7wQjjHkzgQn8X5W5kiEXaQlLwZzCl6fH+mpX
 WiATtrwD6mDMzZ+5plEhHoj1Qw==
X-Google-Smtp-Source: APXvYqzdg9Ft56ac/COsE0vS4n0KUA7PrXu5NfXzsUUdMGAYAbcwFRDp/NY2ss27Ut2nNF+0Zr0Egg==
X-Received: by 2002:a62:f245:: with SMTP id y5mr10845178pfl.156.1567078548910; 
 Thu, 29 Aug 2019 04:35:48 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id z24sm3727353pfr.51.2019.08.29.04.35.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:35:48 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 21/44] arm64: cpufeature: Pass capability
 structure to ->enable callback
Date: Thu, 29 Aug 2019 17:04:06 +0530
Message-Id: <fa88efee3142609dedecc00a58e31bc8583d49b9.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043550_022791_1091EECF 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit 0a0d111d40fd1dc588cc590fab6b55d86ddc71d3 upstream.

In order to invoke the CPU capability ->matches callback from the ->enable
callback for applying local-CPU workarounds, we need a handle on the
capability structure.

This patch passes a pointer to the capability structure to the ->enable
callback.

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
[ v4.4: Use &caps[i] instead as caps isn't incremented ]
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/cpufeature.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index c74df3ca000e..474b34243521 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -832,7 +832,7 @@ void enable_cpu_capabilities(const struct arm64_cpu_capabilities *caps)
 			 * uses an IPI, giving us a PSTATE that disappears when
 			 * we return.
 			 */
-			stop_machine(caps[i].enable, NULL, cpu_online_mask);
+			stop_machine(caps[i].enable, (void *)&caps[i], cpu_online_mask);
 }
 
 #ifdef CONFIG_HOTPLUG_CPU
@@ -881,7 +881,7 @@ static void verify_local_cpu_capabilities(void)
 			cpu_die_early();
 		}
 		if (caps[i].enable)
-			caps[i].enable(NULL);
+			caps[i].enable((void *)&caps[i]);
 	}
 
 	for (i = 0, caps = arm64_hwcaps; caps[i].matches; i++) {
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
