Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2EC41FC1C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 00:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZCLb+wcKyXbKq3Q7w8yNy/QDESnxkm2EK/UhgAVFJmA=; b=UNwIB64NWlLoXs
	dAkgpEOVsdEEfEoKer8dRUaq5uSmznCUYMRv4qTZxz1mscDKf+fhS/C7pzhmBm5CrR1XOp+DSRQ3o
	qsR0wSGhAPgIzmK47/7O/P/pUeVhHp0KSj4TBZ7dJfxfQEv4gbkZOsjzpLJoBPBOjJYJ8Lr22QUMW
	ZjUEf4hEEITKP/5kLV+O1pPFUex9Hm9OWg9IRNmbtqycBjtloz7idjHubHF6zlOPcxlLDh3uLz5hJ
	C7qxiZpQ2pCMBCYJWfhO+B2ymwBe6QSya4HwWiaXG63zgfIeUsgxEt8imiu8JQj1+uk2Ih44gXXso
	ldPyBFnKtnDNYk2R81fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlKCV-0004Lz-85; Tue, 16 Jun 2020 22:37:03 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlKCM-0004LV-88
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 22:36:56 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id e82so269424ybh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 15:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=cHSpMAjXfyGfwJeb9KkrKwdJRoh7Aq/xdZj4zd+a3E4=;
 b=HheB+LyCA6QLhPuMgTXI9D4bM/sjHW46HrcniylyQpWYVvVz0VvbgMrMwmtT/VTMSn
 ozdxEbd4FiuD1Vz2/vxIo70UD+65D7QAeN3ds6hUUgEgYyIkK+Pj1QgwXUx6QytmEvLt
 DT+PNGSewXZi9ezwE2rkJRb3fvvRV8MpWXByslv2PBIba6elzAF0EoAUwGexIfUqUksw
 3PAPYtIzAHEWJ0hrQcDp9/La/txp56hLNX0CufNivY+1H9y093X05ti4+rGg08OsiWEK
 rUbmcjGkW8rDJ/PCllYvS/jtXtiMv2tSdKhTcN9BDVdfFlEaABGDXNcskFfD6tY/O02Q
 4fnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=cHSpMAjXfyGfwJeb9KkrKwdJRoh7Aq/xdZj4zd+a3E4=;
 b=eOmA6fjXdOQ4VbF7GUSopkBzUh2rUsZlL9c6MT20HIQG0l/4It9p/x1XEnKmwu7p70
 5mFmkqd/eFUzP8WVNclVJ5+GbBju9JsxdobaKoD9aPR6Wc2oer0RkPHjPhVhXP3gwwlM
 WI90HfVGKtXVuWYpubSB2QCAsgqdO1XWCXN1dB3MEgcyO2FcwN4ZbWo3Dm7V8k/QuUiO
 DsRCo1ef5zK3Ll02KszCdPZfCOc+UPkpRqbLN5nC3ThchKGIe6iYUET1pV5OsxM4SDAa
 CEHk7EArh5drN6qQ3ZZeUEr2+UTwuFaLVMdRCbHiNeLnHmvEStXjTdShBtatu9aYcfAx
 hNnA==
X-Gm-Message-State: AOAM532X8JFEm3uEJ7+6ozwlgRjrYqYWU1AmaafU6h8ILQc8ZY2tcNVB
 9IJ5JbfCwuX0by0o1XxIr9tG0dabgA==
X-Google-Smtp-Source: ABdhPJz97JiuiNeTxt8V2AAsnvn1Ge3fjw/Spk4/6TFwHd5hb2O+4+a0e1D7100P4MNwrcg15aJ7cqhRsA==
X-Received: by 2002:a25:d8cd:: with SMTP id p196mr8176207ybg.55.1592347012784; 
 Tue, 16 Jun 2020 15:36:52 -0700 (PDT)
Date: Tue, 16 Jun 2020 22:36:33 +0000
Message-Id: <20200616223633.73971-1-nhuck@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.27.0.290.gba653c62da-goog
Subject: [PATCH] Fix unwind_frame for clang-built kernels
From: Nathan Huckleberry <nhuck@google.com>
To: linux@armlinux.org.uk, vincent.whitchurch@axis.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_153654_452167_51AF105B 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Nathan Huckleberry <nhuck@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since clang does not push pc and sp in function prologues, the current
implementation of unwind_frame does not work. By using the previous
frame's lr/fp instead of saved pc/sp we get valid unwinds on clang-built
kernels.

The bounds check on next frame pointer must be changed as well since
there are 8 less bytes between frames.

This fixes /proc/<pid>/stack.

Link: https://github.com/ClangBuiltLinux/linux/issues/912
Signed-off-by: Nathan Huckleberry <nhuck@google.com>
---
 arch/arm/kernel/stacktrace.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/kernel/stacktrace.c b/arch/arm/kernel/stacktrace.c
index cc726afea023..76ea4178a55c 100644
--- a/arch/arm/kernel/stacktrace.c
+++ b/arch/arm/kernel/stacktrace.c
@@ -22,6 +22,19 @@
  * A simple function epilogue looks like this:
  *	ldm	sp, {fp, sp, pc}
  *
+ * When compiled with clang, pc and sp are not pushed. A simple function
+ * prologue looks like this when built with clang:
+ *
+ *	stmdb	{..., fp, lr}
+ *	add	fp, sp, #x
+ *	sub	sp, sp, #y
+ *
+ * A simple function epilogue looks like this when built with clang:
+ *
+ *	sub	sp, fp, #x
+ *	ldm	{..., fp, pc}
+ *
+ *
  * Note that with framepointer enabled, even the leaf functions have the same
  * prologue and epilogue, therefore we can ignore the LR value in this case.
  */
@@ -34,6 +47,16 @@ int notrace unwind_frame(struct stackframe *frame)
 	low = frame->sp;
 	high = ALIGN(low, THREAD_SIZE);
 
+#ifdef CONFIG_CC_IS_CLANG
+	/* check current frame pointer is within bounds */
+	if (fp < low + 4 || fp > high - 4)
+		return -EINVAL;
+
+	frame->sp = frame->fp;
+	frame->fp = *(unsigned long *)(fp);
+	frame->pc = frame->lr;
+	frame->lr = *(unsigned long *)(fp + 4);
+#else
 	/* check current frame pointer is within bounds */
 	if (fp < low + 12 || fp > high - 4)
 		return -EINVAL;
@@ -42,6 +65,7 @@ int notrace unwind_frame(struct stackframe *frame)
 	frame->fp = *(unsigned long *)(fp - 12);
 	frame->sp = *(unsigned long *)(fp - 8);
 	frame->pc = *(unsigned long *)(fp - 4);
+#endif
 
 	return 0;
 }
-- 
2.27.0.290.gba653c62da-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
