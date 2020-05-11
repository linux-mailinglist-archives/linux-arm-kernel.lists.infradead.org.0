Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A761CE29B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fjdU4tAu9dIo2jfN2NAFIXN6pLKAoUnHWrdF8b7Eq38=; b=eMa
	C9xI5a+A2qzAUnIXfF+DlYza6QbJurkexA+aGbfF28Th8/zVBpxC+orl0pU9L+L9klUgGO7Phe7pE
	JkRvD6CbPr8cFBm8jC4s/ESmkVveXZGg2NysMr4sANiW//BltlkFSUbnEmy1P+W9o4VsB+69bJclN
	ZeSp6q8XOxNGm6TIwJVx9kv0BXEtXyj6usztKTAiw9Ac5pX8ahXMNhP8NRTBvuKLPX9Xqo60HutOj
	0bjobJ/I0ePLTVCDxZPkG6aJ1lzKf6VHG4qwQahUOK7tAncjslFRk3zKlBiLFbmWsrGX3K2FCLUC3
	b56luyIBQXx+edtdiNDfwpBinS91kNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYD94-0006v3-S0; Mon, 11 May 2020 18:27:18 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYD8w-0006uY-4e
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:27:11 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589221630; h=Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=4tojzUk0+KKF9I2AVQ6mA8PuzXqs6EPae9bRmzGTpvM=;
 b=tMMXsDjtJPf1qw9W/X9X31rzdIfbDfCBGcfk66jaZuhiGKJgg4Zq2O746+tFXAH6wlRTZZFq
 7VIQTtQBKI49IztMsHJS1Q5HfFbUjHEJjR2fUx8V4fiaqrlxm/yZCYF42QEgtxjkx7cXuWRf
 Scc40x6HgHnpZIq/F5DrMosEEo4=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb998fc.7f8bea323df8-smtp-out-n05;
 Mon, 11 May 2020 18:27:08 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 681FFC43636; Mon, 11 May 2020 18:27:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from eberman-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: eberman)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 0B77DC433F2;
 Mon, 11 May 2020 18:27:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 0B77DC433F2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=eberman@codeaurora.org
From: Elliot Berman <eberman@codeaurora.org>
To: Jason Baron <jbaron@akamai.com>,
	Joe Perches <joe@perches.com>
Subject: [PATCH] Revert "dynamic_debug: Remove unnecessary __used"
Date: Mon, 11 May 2020 11:26:58 -0700
Message-Id: <1589221618-21808-1-git-send-email-eberman@codeaurora.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112710_411043_F70FB911 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.26 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Trilok Soni <tsoni@codeaurora.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit c0d2af637863940b1a4fb208224ca7acb905c39f.

Some compilers[1] may break dynamic_hex_dump by optimizing the
DYNAMIC_DEBUG_BRANCH check inside __dynamic_func_call_no_desc and completely
removing the dynamic debug metadata. Thus, there is no dynamic_debug control
site to enable or disable. The if condition is optimized away based on the
initial value of flags (i.e. if DEBUG macro is present).

[1]: This behavior is present on [aarch64-gnu-linux-gcc (Ubuntu/Linaro
5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609] and [Android Common Kernel
toolchain: "Android (6051079 based on r370808) clang version
10.0.1"] using arm64 default defconfig + DYNAMIC_DEBUG enabled.

Change-Id: I28e9b86088eee5d5ed2384fbcea2ac2e7337a559
Signed-off-by: Elliot Berman <eberman@codeaurora.org>
---
 include/linux/dynamic_debug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/dynamic_debug.h b/include/linux/dynamic_debug.h
index abcd5fd..7518db4f 100644
--- a/include/linux/dynamic_debug.h
+++ b/include/linux/dynamic_debug.h
@@ -79,7 +79,7 @@ void __dynamic_ibdev_dbg(struct _ddebug *descriptor,
 			 const char *fmt, ...);
 
 #define DEFINE_DYNAMIC_DEBUG_METADATA(name, fmt)		\
-	static struct _ddebug  __aligned(8)			\
+	static struct _ddebug __used __aligned(8)		\
 	__attribute__((section("__verbose"))) name = {		\
 		.modname = KBUILD_MODNAME,			\
 		.function = __func__,				\
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
