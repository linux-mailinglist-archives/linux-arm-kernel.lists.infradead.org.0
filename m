Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D798E1B2158
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rxhDWLq96mcC/8MmWIc2CsXlTMScRR8TN0M2wwOzQTk=; b=PbsFvTX8Ym4/u5
	CAfHl8tOOnK8LtiScu003E3gm9NfPh7LsOG9znSnJ8SmnFhns+uq5Plgf8Kco+FC2m0FijvyyTGlK
	E81+zxE/dJT2I3L0eFDn/aadi3nhmQa98rcajn/geC/VwWy07jhPsSzN8UhteeUYhmsQLKz6c+xxs
	ILwF1Wm7qE/UTm+Ut0R3g7dWZ3iyUMjBpNhKlNgJ1qP2OVeb8mmu04Ips+xKBlJL0pVyG1Grxza3Q
	dHEF+EJ3YsZ5SPe5iTL6seKn0hnHK44H63d/gqBG527Z6GZPyeFaNBiqL6sMve0y1MftR6KzIt83D
	A3+oAYDKLs9KvreTD6Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQo6S-0007fm-30; Tue, 21 Apr 2020 08:18:00 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQo5u-0007OU-3g
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 08:17:28 +0000
Received: by mail-pj1-x1041.google.com with SMTP id my1so950858pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 01:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fIbpi7O6WJugTXFmCQCTQurXX9axhW0Esg76IWWTzRM=;
 b=maGq02KdAVVk27vQzcEjc+9Aj6eXZN5V2r9JEffWU+jLG6K5d3N6SCP/HPXtkbM6AK
 RhIjAxrGcbKW+dxQcT37HVZbsVXOjfjTQmpLWjKW209TaIKpir/7hJPTkkBmCv3Rfcls
 Md48rNfmNv79Zp4dZ//dMeuzz0fSSFNgW57QglHqXwr3A1P3Xk0/wcC0wb6mJa4hkW37
 c05pY5whmZVrBy3NEhbbYVPdXi5F6QCxP3xEheuk3vt5UkgEocij/Srp/xIeqjVJCj5+
 gS5hzy/yP4GJRnptmpCjpcdIj8LFjzEWpsJv9d+HgnD8+ovaGjhh0AH59EP3jfZtHWP/
 6/zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fIbpi7O6WJugTXFmCQCTQurXX9axhW0Esg76IWWTzRM=;
 b=JgYWVJKjRsC3MmubhCUgxEBgn7i31b0Dkr1ML6IgB1CeKCJXjmHWs4Yi0A4aoBsfp8
 Hfa3EiOUDKqosspUTrhggudjZFI3U3q53fcrdResSP4Lpar8AnzJB1nF9KryQrQMNFhU
 Zh6rrLRNarH5RV+cM44J3zR0EcCoKP6SvtAwtPNBJ4tx8niwhtQY//G8kyE/tYHlfrhS
 ld887ssw4zTdZdWHRAxHS+/6rcM3gjcF7f2NCZpraLUHzXDe8zqIidG8MagyD2NXJEyo
 O2WpmnqgJoQtHHSxCsqh/OxqMg2uSKQ5MJhUAGkuTyZgDyfC3j/2vit+81Uu/+YHYNAY
 bRbg==
X-Gm-Message-State: AGi0Pua7dVrBTGw8RvbiIGD0daj84RU5pnBw63HvRBAY++VxvUY7MnCq
 j/thR2blUxoFBtShXR2FAq0M+w==
X-Google-Smtp-Source: APiQypLLHyb++yTAlD6wehS7jB/h9oebLCuGheJNM864LJqIFw1n0PbffrUmSWn8iBeylKnoopk9/Q==
X-Received: by 2002:a17:90a:498a:: with SMTP id
 d10mr4369781pjh.194.1587457045415; 
 Tue, 21 Apr 2020 01:17:25 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id v9sm1610067pju.3.2020.04.21.01.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 01:17:24 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: akpm@linux-foundation.org, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, tglx@linutronix.de, mingo@redhat.com,
 bp@alien8.de, x86@kernel.org, hpa@zytor.com, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] Extract DEBUG_WX to shared use.
Date: Tue, 21 Apr 2020 16:17:11 +0800
Message-Id: <cover.1587455584.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_011726_699559_7301C3B2 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Zong Li <zong.li@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some architectures support DEBUG_WX function, it's verbatim from each
others, so extract to mm/Kconfig.debug for shared use.

PPC and ARM ports don't support generic page dumper yet, so we only
refine x86 and arm64 port in this patch series.

For RISC-V port, the DEBUG_WX support depends on other patches which
be merged already:
  - RISC-V page table dumper
  - Support strict kernel memory permissions for security

Zong Li (4):
  mm: add DEBUG_WX support
  riscv: support DEBUG_WX
  x86: mm: use ARCH_HAS_DEBUG_WX instead of arch defined
  arm64: mm: use ARCH_HAS_DEBUG_WX instead of arch defined

 arch/arm64/Kconfig              |  1 +
 arch/arm64/Kconfig.debug        | 29 -----------------------------
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/ptdump.h |  6 ++++++
 arch/riscv/mm/init.c            |  3 +++
 arch/x86/Kconfig                |  1 +
 arch/x86/Kconfig.debug          | 27 ---------------------------
 mm/Kconfig.debug                | 33 +++++++++++++++++++++++++++++++++
 8 files changed, 45 insertions(+), 56 deletions(-)

-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
