Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9328ABCE3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JBtGMFCg9wQbrqduWPDxgdyE0sv4Vc9mMdpx/eTU6wA=; b=sS/XKYJPETZ9h5
	4RladGRss2n1kBtMPij+LuRwXk3YQn/BGWGSskbMIC4xiJIoAHYstELMop/dDMX1SsrNR0ozUxtOM
	bDX+v3Zztrf80zjXkOKAogHkwZ8ZQepcqvJOoO7YT5NfM/WlH8OwKxgFDiowW/d+8pNBMn2fq/efq
	9N/CE2etvajBxgFAl0Vrqqt9ie4KT2/ljbCNuSqFI6BqIcTFdyggqvQTayo5DfRLtmojAgAnsYBz3
	RRa7b7xDVp2g3PMyH4QmN2/SB4donfAiZ7oYtFOdp73rQuZyEqwho0Dah5wIGsoNaVMY2SWeIe9hx
	0/slbtZSyrFewz07agVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6GSP-0000ge-7c; Fri, 06 Sep 2019 15:47:29 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6GSE-0000gE-S8
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 15:47:20 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MiaLn-1ic0673Twl-00fnCZ; Fri, 06 Sep 2019 17:47:08 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] ARM: don't export unused return_address()
Date: Fri,  6 Sep 2019 17:46:55 +0200
Message-Id: <20190906154706.2449696-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:KxXBdm+ZdB2njEOuHI0sI2x2LTlMTwa/9hKBgBDFyvjWMqurBar
 1eeQnRx0c2Ox7iIBg3bLDT3e+A5wv8//Hw8vhKUVdHCQTetfQSdrjrsU4gUPPAVUYMq8iZT
 KWgNizZG8M5JX8N3+1xp6Vcd4jLYGRQ83Jo27tXlyvYsVLbkW7W6om1aPaGGEKSRE9rkBZj
 QoIsM81fh05SMxn2RkQuw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vdoyMlLfLcU=:2DVor/2vufbs+2xiNNaRoY
 fWU05+ahmmEOb9gMmRI4XWFn9VIEylv0+DmficJNI3Krbstw87f3wOIrlEFkWOCdWdG/YRvnS
 EfZPjYBJQAsFo5UkRNXPQDFrwKcCOcZGJI56UApZdhCAysBgKjHEHx6mFAagdxE4/0MprqVsr
 rKFOPTuBJO2JtHEXCAHRQg8X2Ihiy7pvRV9AvOgm3OhbCzC87ZVsqJdqCVaQdxheA5hBRvSA6
 EGZuy18hFF2+RyjHnFKf0Gj65cAdfGMbkh9S83qBMI26tBaEV0UmjELm3sgXfv0t2D7aiA0xH
 HjwNLRQATNkk+YjodkxGlK4Jez+3kgbFtFHXLEkl4u0+zZFouJJ7K8gBrvaNXTVQUeYes5nQs
 vxi6Pn5vXCsFjGbL/Syj9H+9jI548oYiMo4IGvb7TwV5CjKQnJ473bKpWcXxEGhfm5I1wdOEq
 fe+G5UgO+xo7nfXQymwg+GugThSksgQKEp6nScmJq7dwoGb2yYASvI3IxRPLu3NMshjgpFan8
 6RqnYGncFrUL0qfG/sdsAbuCnt2h+XwfSHIrotMJGF7XBex2CmX9x9oXFQH832A8U7RQc30sY
 DiWK9WZn2kQsl6Vw8NTd9bADyW6qob4mDnQtJkrHSbMO8qxY4TPYCgLk9TA1fHggPxk6C5FJR
 1blQiqgk244xS49SOFkqL94iruf3zffktlDkzjDwKq5jP3KBQlf8ZvXDLt5BXO2gQKqhdaM0n
 zNCKzIdwQvS3SDWlGgbtA9XQuvo7yXs2lXMToBNNodcqmUfc0uQfgfCZ5EapqjXq8YVFCWxiV
 +JNrPBbpP6nuUpksqgzACYDRugBpQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_084719_205392_3A1CBD33 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Without the frame pointer enabled, return_address() is an inline
function and does not need to be exported, as shown by this warning:

WARNING: "return_address" [vmlinux] is a static EXPORT_SYMBOL_GPL

Move the EXPORT_SYMBOL_GPL() into the #ifdef as well.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/kernel/return_address.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/kernel/return_address.c b/arch/arm/kernel/return_address.c
index b0d2f1fe891d..fb0fc1910102 100644
--- a/arch/arm/kernel/return_address.c
+++ b/arch/arm/kernel/return_address.c
@@ -53,6 +53,7 @@ void *return_address(unsigned int level)
 		return NULL;
 }
 
+EXPORT_SYMBOL_GPL(return_address);
+
 #endif /* if defined(CONFIG_FRAME_POINTER) && !defined(CONFIG_ARM_UNWIND) */
 
-EXPORT_SYMBOL_GPL(return_address);
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
