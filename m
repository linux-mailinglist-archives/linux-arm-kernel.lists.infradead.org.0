Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F249A1811FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 08:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=v6VTSiCgJ8wbbizsp5ewQILOHkqCRR8xZpVJ5u7KOfE=; b=TWb
	dBj3x1dlKKlfD4svSyt7L+Q26kWbHR02ArmZk2Irvn9K4P53NB4FDv35xZDH2NFmQvSZzWWamIkOa
	9j/hciABJ3lk1Sd0q7/VvGvprnYFGlZlZrb9oJ+U6O6unVg3ebNd+oUPAPZaLO9A/UBCg9IDWrDiD
	atFtAfqhPdPXjgahddQ7zWSSi597ic0pRmgziMweu2RXtu7XFpM4VjAyAswIXAVP60NV7tNcBfhRq
	mFjS8j6c2Qin6uwlBCY7u0kjyyJ2oSUmfEpC0foUbG3xexBFaxQ6rjAdw3rfzWAoHnGykLQ5fRKZd
	d3NLZ/mLZTKD03jH6omEF8xLriiN37Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvqy-0007B0-L2; Wed, 11 Mar 2020 07:32:32 +0000
Received: from m177134.mail.qiye.163.com ([123.58.177.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvqr-0007AV-8x
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 07:32:26 +0000
Received: from ubuntu.localdomain (unknown [58.251.74.226])
 by m17618.mail.qiye.163.com (Hmail) with ESMTPA id 4719C4E207F;
 Wed, 11 Mar 2020 15:32:16 +0800 (CST)
From: Li Tao <tao.li@vivo.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 James Morse <james.morse@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: kexec_file: Fixed code style.
Date: Wed, 11 Mar 2020 15:31:55 +0800
Message-Id: <20200311073156.125251-1-tao.li@vivo.com>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUlXWQgYFAkeWUFZQ1VKTklCQkNCSU9JTk5ITFlXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nio6FCo4EDgyODMNQxkQT0w4
 Ah8aFD5VSlVKTkNIQkpKQkhCSUxOVTMWGhIXVQ8aFFUXEjsNEg0UVRgUFkVZV1kSC1lBWU5DVUlO
 SlVMT1VJSU1ZV1kIAVlBSkNJSTcG
X-HM-Tid: 0a70c88222989376kuws4719c4e207f
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_003225_568063_4DFAAABA 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.58.177.134 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [123.58.177.134 listed in wl.mailspike.net]
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
Cc: wenhu.pku@gmail.com, Li Tao <tao.li@vivo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unnecessary blank.

Signed-off-by: Li Tao <tao.li@vivo.com>
---
 arch/arm64/kernel/machine_kexec_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
index dd3ae80..b40c3b0 100644
--- a/arch/arm64/kernel/machine_kexec_file.c
+++ b/arch/arm64/kernel/machine_kexec_file.c
@@ -121,7 +121,7 @@ static int setup_dtb(struct kimage *image,
 
 	/* add kaslr-seed */
 	ret = fdt_delprop(dtb, off, FDT_PROP_KASLR_SEED);
-	if  (ret == -FDT_ERR_NOTFOUND)
+	if (ret == -FDT_ERR_NOTFOUND)
 		ret = 0;
 	else if (ret)
 		goto out;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
