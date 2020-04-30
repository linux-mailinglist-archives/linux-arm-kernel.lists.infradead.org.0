Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AC31BFF53
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:55:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgsOdgn4BOqE2S1GM5AZ6oUem2azLyoC4j+NUtSrQfs=; b=rYzaKRDp0QuJm+
	8N1gKhlTV+a2h1mZ9M64pBQqRIgv4QRnLDi+f3pPlgei5h0bHUnJ9ab51dM7Xx+nYQXrfexDaAlKn
	7i4YAULltRx3gWH22ya4WUq6OJNFw3S7toT/PW5rq05Qo8sihXZHqLgYmTBlJDQfrqTQkyoyxPINc
	g3rgOHXRk+y8B0F4V2sHOItU8OdP9MLx9GVtCnriM68+e6G1zQUarXt90NnPMVJ47RTGj54T1gC0f
	zsgeF8ucVM8/+UnachC4bRTY82RqTB1XYeY+dGVHpbYEzG6SS/rfQi6Cn5g7JRVg0hIixgLfDLkiy
	cFX5nerZ6lrXSoywvkAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAar-0002M8-Lr; Thu, 30 Apr 2020 14:55:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAV0-00046R-Ey
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:24 +0000
Received: by mail-wm1-x344.google.com with SMTP id x25so2194742wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g7eYSMAp+jVN9aeMCPrBnn3TIBRQFFZukfwsZjZglmQ=;
 b=OA5l7aPTjb+/faLVms3XE72y8w1jxluq6N84GtC94alO2aDBpgsSDm1VINExf6U31K
 9tqr3waTe0vuItea2ZK+4FQY33rrwYVdlFm66/zz3Cbebio6W/zJw+cuzPwy6n+iuVO1
 Qv5Txcaf0FBe7wgFuL7AbtE7IOV5EsWHhF+AbyMKfvo6KM8oDXgrOneyRlflh3kUpYDW
 E4uoX+Djh2ULGNXS229plrMBCBOviGp/3ySosN9wHOowtX6bdb+p566EJDb6/lYWICXS
 WRk4yWH7ivHkDHxhIfzZpbxIlPohMJP1LV+ksBsadHK0LHqwXShd8qhbrbm5BovWgXrw
 ++DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g7eYSMAp+jVN9aeMCPrBnn3TIBRQFFZukfwsZjZglmQ=;
 b=R87V7ma1a2aeWV/URXUDkFnJKhguzhrJAONeK2TDVEfqLrDyQ2/dBtD9L6j/5M+Ybt
 hT39d4Q3+AvGOllOdswka5Dn6HPME4zOVJEStv3DlRBJ3aeaIbkbhkW31fpyrwwRdyOY
 N9o5a+HL1Z4zU228IXHOIC7PbHD65Scn1wxrri22nCn7Wm/JzivTix3OC6Qo3MNmsVem
 p6l923o5nGGfQXYPiwsVEV7f4zqGPA9bHva/f2DFrJUdTr1cGUFXVwaLO1bCCCSZksaq
 MV8RQE+NQp98FBbWQZLdoNuil8g+0p5KxPXCbbZ3rLE2qeB3y6aKhx67BDXmU2ssl8Ch
 ANFw==
X-Gm-Message-State: AGi0PuYPVuYv06uYX/f//Md3aZu0P/nhW4ZLEP7xYkIDlBKAVOPTlB6W
 57phowd9Lv7RebIE9KXH+Gotdg==
X-Google-Smtp-Source: APiQypITD1jhHlRSJgCpCChsFN8ZYowBb0ctI7WS8xvFw5N4p+kZxrBFEWIMXyQBlBl3+nKP5Z4Cvw==
X-Received: by 2002:a7b:c306:: with SMTP id k6mr3287632wmj.40.1588258152859;
 Thu, 30 Apr 2020 07:49:12 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id f2sm4557427wro.59.2020.04.30.07.49.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:49:12 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 15/15] arm64: kvm: Lift instrumentation restrictions on VHE
Date: Thu, 30 Apr 2020 15:48:31 +0100
Message-Id: <20200430144831.59194-16-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074914_607377_7D607966 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With VHE and nVHE executable code completely separated, remove build config
that disabled GCOV/KASAN/UBSAN/KCOV instrumentation for VHE as these now
execute under the same memory mappings as the rest of the kernel.

No violations are currently being reported by either KASAN or UBSAN.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/kvm/hyp/Makefile | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index a6883f4fed9e..f877ac404b46 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -10,11 +10,3 @@ obj-$(CONFIG_KVM) += vhe.o nvhe/
 
 vhe-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
 	 debug-sr.o entry.o switch.o fpsimd.o tlb.o hyp-entry.o
-
-# KVM code is run at a different exception code with a different map, so
-# compiler instrumentation that inserts callbacks or checks into the code may
-# cause crashes. Just disable it.
-GCOV_PROFILE	:= n
-KASAN_SANITIZE	:= n
-UBSAN_SANITIZE	:= n
-KCOV_INSTRUMENT	:= n
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
