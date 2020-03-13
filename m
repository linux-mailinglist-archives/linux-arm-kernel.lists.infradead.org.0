Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE14184A05
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:54:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YqBqv3DY2JRQpsxh70rPl1AINgb4ZYopBR6JMM3plDs=; b=POU
	xEo5WgiPOdenQ1cIAynSniOBWblzyBlgvS2Q/MqGIeR7SVG9xRGuHz0Lvy27Tvwn+3iDyFtrY37t0
	VNvgzb9xc3rN5gpU8R/34z0irKktwZiEfBzftckzrV+Flzx7ycB1DLXC9M72CvUjGR61Wqxm+HgW8
	wwpaJmTNr/vRja5DnoswvJDgE6dHSgKX368I4CLxRU9DewlczEj6yjrScXwsi0X28GjNpTFtBSIcH
	6CI6jwMJ7IbZn4pJIQGgqRouHExnHyj9t2XEcxw6uQyl6nZhnhoDCtwJb2txGtqLUBBoUssw6OsVE
	aMYceloSH2ywf2eljdvM5eOqTtrRWzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCli0-0003Z7-ET; Fri, 13 Mar 2020 14:54:44 +0000
Received: from m176115.mail.qiye.163.com ([59.111.176.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jClhr-0003Y0-6J
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:54:37 +0000
Received: from localhost.localdomain (unknown [58.251.74.227])
 by m176115.mail.qiye.163.com (Hmail) with ESMTPA id 975B066499B;
 Fri, 13 Mar 2020 22:54:19 +0800 (CST)
From: Zheng Wei <wei.zheng@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Enrico Weigelt <info@metux.net>,
 Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Zheng Wei <wei.zheng@vivo.com>, Thomas Gleixner <tglx@linutronix.de>,
 Yunfeng Ye <yeyunfeng@huawei.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: add blank after 'if'
Date: Fri, 13 Mar 2020 22:54:02 +0800
Message-Id: <20200313145403.6395-1-wei.zheng@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VCTktCQkJMSE1MQ05DQllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ME06SQw5Lzg0MDArFipCUVY4
 SjcwCh9VSlVKTkNPSkpKSU1LSkJKVTMWGhIXVQweElUBEx4VHDsNEg0UVRgUFkVZV1kSC1lBWU5D
 VUlOSlVMT1VJSUxZV1kIAVlBSUpPSjcG
X-HM-Tid: 0a70d46391c29373kuws975b066499b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_075435_392119_01961516 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.115 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel@vivo.com, wenhu.wang@vivo.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add blank after 'if' for armv8_deprecated_init()
to make it comply with kernel coding style.

Signed-off-by: Zheng Wei <wei.zheng@vivo.com>
---
 arch/arm64/kernel/armv8_deprecated.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index 7832b3216370..4cc581af2d96 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -630,7 +630,7 @@ static int __init armv8_deprecated_init(void)
 		register_insn_emulation(&cp15_barrier_ops);
 
 	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
-		if(system_supports_mixed_endian_el0())
+		if (system_supports_mixed_endian_el0())
 			register_insn_emulation(&setend_ops);
 		else
 			pr_info("setend instruction emulation is not supported on this system\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
