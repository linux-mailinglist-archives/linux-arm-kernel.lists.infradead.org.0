Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BF621BFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qbkLBVEZCuSB7BcOV+WwiJb9IMOlV4QTbJ8+j5H1EFA=; b=JZsUiM6F9fSDUy
	htHvLmpUCbcbq1v1taTiwbMwLuUvAPiv57JOp3X+k1N3yU2CETdioteaReidjl5HEW917BTZC9YK/
	yMQxHVnJ2MbvxG7lKkAdI2uM4XvtWOvIpk+gc9IOoaWPE9CY8TgOa43lgJGVZYFtlZNdhcAeGYsli
	Pl5Bi52y6icbHwEdgPcZL4ps6OrN247FhI/vM80n8ThwybiLRpEBY042DWIY1J0BKk6tUt0XB8vcp
	9cFDYzCxLvPEa6AHzJLT3ZLbCXPgBhMa5wFuFbyCLEzln+KluegE7aTxx9ixoaPLaMzh0GzWtu/wj
	wFoMkvOpKuRxcwQZSjEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg2E-0008KL-RC; Fri, 17 May 2019 16:48:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1S-0007TH-Vd
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id g3so3954382pfi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hE0fe9lMVv6/FQxLkF3fQ4UQY6bw1uWnd2q8EpUNjIc=;
 b=ZhDwx/7uQqUnTIHD1PA1Upu1Y8Z3YXS3B9HztVGpVhQ1tAXH449NhmdQCurju4ZJB9
 vNhIXcRedwThXY2BekwHNiWsmcH7xI5RXQTxVxFuMqKhuiq90bGAcOc8hj9Vd5FEss09
 u6kj7HIYJx12jSex16z82pa6RCUW1/cmEbwHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hE0fe9lMVv6/FQxLkF3fQ4UQY6bw1uWnd2q8EpUNjIc=;
 b=J/Rs7RezeMueBXpddu6yhi+MnCPlw4xpagZfYJoAD17oX65JUl0fs22Tcb0wSp8U6I
 SlOvIGrsR37N0jZVXcFBgJ+9mfWiyNlnJ6JrXz9SID57Y0nlS9dyWtB+IYwduGGGGMyn
 RpZnsp2+9KgRqEJhVY0FwKkbH0uOJeq8ao5NwwqearuKtYCZIiJYiM7JZR9xq6EY7sML
 Cg5j8TUzXEGYRHqvadg+uQw92xzkjRIKK7tzCPw05r1o5y/zm9YPPFshiOaxb7kW4MNr
 DByj5wZLza2ciq6pLn1PPg3z4AZZYomeWxWmzuwtgyaaTyOr0sFL3L1pu4mmpEPHuTVt
 3++w==
X-Gm-Message-State: APjAAAWrZGrWeSvGTHC8U/6cIP8W6FASrthu/+Cl12cTVTwBFHPwENZz
 l058uCXyEs6waJb6utDw64s2uw==
X-Google-Smtp-Source: APXvYqzuCXeovIOaR4RbpVXx1csND1I5sP1Zmc0ZU68p58V4I5232ilFAA9A/gPdohyIIkl9VXHhPQ==
X-Received: by 2002:a63:785:: with SMTP id 127mr54984321pgh.230.1558111674612; 
 Fri, 17 May 2019 09:47:54 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:54 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 4/5] arm64: Add support for arch_memremap_ro()
Date: Fri, 17 May 2019 09:47:45 -0700
Message-Id: <20190517164746.110786-5-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094755_195541_8F2C4E1D 
X-CRM114-Status: GOOD (  11.82  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pass in PAGE_KERNEL_RO to the underlying IO mapping mechanism to get a
read-only mapping for the MEMREMAP_RO type of memory mappings that
memremap() supports.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 arch/arm64/include/asm/io.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/include/asm/io.h b/arch/arm64/include/asm/io.h
index 8bb7210ac286..245bd371e8dc 100644
--- a/arch/arm64/include/asm/io.h
+++ b/arch/arm64/include/asm/io.h
@@ -185,6 +185,7 @@ extern void __iomem *ioremap_cache(phys_addr_t phys_addr, size_t size);
 #define ioremap_nocache(addr, size)	__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
 #define ioremap_wc(addr, size)		__ioremap((addr), (size), __pgprot(PROT_NORMAL_NC))
 #define ioremap_wt(addr, size)		__ioremap((addr), (size), __pgprot(PROT_DEVICE_nGnRE))
+#define arch_memremap_ro(addr, size)	__ioremap((addr), (size), PAGE_KERNEL_RO)
 #define iounmap				__iounmap
 
 /*
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
