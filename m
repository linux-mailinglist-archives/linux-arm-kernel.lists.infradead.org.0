Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5393A8A4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 19:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyGwnR9H7sOTNQJFQE1IKW9Wl9AUwld1YJK+ti3JDa4=; b=RLpe5gPPXbsPFN
	VqfDZo29jP/WX7rwnHzdJoOgBfw+JLJlm9mj+38iYnjAuykY5wQmnU4/Ug33Dnotk7eDzd2mCf5QP
	cWb82EiRS/CzJ89OrQC8X7wTkcVcBss1hzEt4/xwtTMHrvlTAxvWOrrsRd2b2ag/tqFXMdcygg7rb
	60iG+kUyfivGsBKIYBhgmMCLjXup8gE1NssWMv/5x4E1bsj2HNX007oktDr0ElnJm7svYGl/JImlm
	TtO8ubqXe+Um3VikSBaAIvqYYbCu2KiHLv3U7MlGe18pK9Zldqp69/UQ8XjgewLNUhLqWXQZ1h5qi
	v5phY/wqcLuDJp/3fxdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha1DZ-000812-Ch; Sun, 09 Jun 2019 17:02:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha1DS-00080R-Rz
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 17:02:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7FC7204EC;
 Sun,  9 Jun 2019 17:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560099766;
 bh=HvJL7t2idgccN7TE0yztFjS3HveqVYCdJcj2hPPEAWo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cwEDYWt8fLq5kPQI4b+vWeaIDurasVakP8bm6/VSUZuXX3Ggs2MIxlkiXB72MDMV6
 StAK67VsVGkh8Oi0oLWYm7u/17Ryg/eV9W6dAPY+A7MbAXV+HyjSI3a7KZtPYjd3J6
 F9NsVxOtZV/IIFtiXLfhBGbV9F4HQ3FQGeIetC28=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.4 158/241] arm64: cpu_ops: fix a leaked reference by adding
 missing of_node_put
Date: Sun,  9 Jun 2019 18:41:40 +0200
Message-Id: <20190609164152.326381415@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190609164147.729157653@linuxfoundation.org>
References: <20190609164147.729157653@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_100246_925485_154A05EA 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit 92606ec9285fb84cd9b5943df23f07d741384bfc ]

The call to of_get_next_child returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
  ./arch/arm64/kernel/cpu_ops.c:102:1-7: ERROR: missing of_node_put;
  acquired a node pointer with refcount incremented on line 69, but
  without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/kernel/cpu_ops.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
index b6bd7d4477683..fbd6aead48e10 100644
--- a/arch/arm64/kernel/cpu_ops.c
+++ b/arch/arm64/kernel/cpu_ops.c
@@ -73,6 +73,7 @@ static const char *__init cpu_read_enable_method(int cpu)
 				pr_err("%s: missing enable-method property\n",
 					dn->full_name);
 		}
+		of_node_put(dn);
 	} else {
 		enable_method = acpi_get_enable_method(cpu);
 		if (!enable_method)
-- 
2.20.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
