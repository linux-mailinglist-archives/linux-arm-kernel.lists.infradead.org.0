Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 098B329FB1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t3oVHj5rvr7HX2UxF3l/GKbVwJ9fAuBjvDDYap4nI8Y=; b=smkalcsE3El1qN
	2ujmvnPmwklylnSc5CXZojE7oaVwGjDDU3NtsrwPWaRxc2YDWRdiaOEJkNTRNbQQP3+cu+cZBFdY4
	4XDsptCNHKXDjv7LbPAqcz5rrpsFOooeVEn2EqU2t+wo7u3ME1yoATr+leF+c+aRZjJT4uUl4Skr2
	qmOmoK89fFdGyVb4opj8k/bA9dOxl1pvPteN18M9Y4Mtr1LAGUR1hfvJvJyrk3Tcm0QS/liD0F7WV
	ogBAZGa0h7hP4ciGmUHXLY1ZQSIirLVrzBuZoKrHXSrP0RiCy6mJb3Isoy2DKnGbtY2oZ9ni8R+D9
	zlH3GUveBWLGc1gNY/GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGeQ-0002uE-80; Fri, 24 May 2019 20:18:50 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGeI-0002tW-EI
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:18:43 +0000
Received: by mail-ot1-x34a.google.com with SMTP id z1so5008521oth.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=kiqJqxPa9FMe/un09kYlU9XPk6LJGKycCrLcq9tmZfQ=;
 b=Anfhow4oytGvhechQ9zPhynVUXijYqC90xGhkZDEgzZrQtziN47vmJAFkY94UCCIlA
 E3qo07I2DuK8VltI8krl/Mr380pl9cVobAYKmPCQ8fX8j1oOllILv+h8K5OlKVThjhQF
 TYSW7SHHMtlyDYgMrLILBQWOFLnGHQqi59qGRQlissn8Zrdz1UcQTFNRTRMWTzhda2kY
 jhmhOf2/lrgpO2q1kI6LDYQ42Y1PjL1IOMK1qscDlGQghyyI22DkZpOb+IdpvJWvkhHt
 aZVl3QpJRqrdcWDJ+9apVpJxVpnt7P5DLhApX2wc2H+XwVkS1Ap2zKuruVCdYtnN/Yas
 ptng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=kiqJqxPa9FMe/un09kYlU9XPk6LJGKycCrLcq9tmZfQ=;
 b=KG4+qf0DKtZTKIvn6KCWF+59ThclRLwxmqB/nr2Ek/9nglXNC7qhUH9ddoEhdBojP3
 VtD8AwjlE6N4J/6/KBmv2d+3Q/OykNvVRTOWqkDZoBKoZF9UoseEr62OR59skAOIdA5w
 lWrwj6VWqECdJlO8CecSW/HmGC3FeDGCBiIo51u01hoYHPwLm2HL4MhRML89IUzTmeEI
 4m3KSHPNNnfVVR2+Nd3QS97GRuHhe+MLfuQnSIvLXc0do69hFzebdxIT3v6nd2wmd78L
 fkeXqDbLqlJfTTb6feQ8HUIGc4bhuOQ2V84T35oQ+I7JJiOFQatOONpSH/uUn80V2mZ6
 k4Kg==
X-Gm-Message-State: APjAAAVJa7CdnKoE3a7sOTn8wPRwkt2BJNL0ZeIrJGN1WaaStIk4ouJO
 45ANkA6oPmnx0XEpZ3SlgezHcH/nhQ==
X-Google-Smtp-Source: APXvYqyxUrB2uWTPtatgkJdyTUHWio2wNv9xxBoB86a//J6xgGeH5e//FZbxRkGNMNApVpTcG5ZuCsGfTQ==
X-Received: by 2002:a9d:7987:: with SMTP id h7mr2154729otm.284.1558729118905; 
 Fri, 24 May 2019 13:18:38 -0700 (PDT)
Date: Fri, 24 May 2019 22:18:17 +0200
Message-Id: <20190524201817.16509-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
Subject: [PATCH] binfmt_flat: make load_flat_shared_library() work
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>, jannh@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_131842_506284_9440CAE7 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-m68k@lists.linux-m68k.org,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>, linux-fsdevel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

load_flat_shared_library() is broken: It only calls load_flat_file() if
prepare_binprm() returns zero, but prepare_binprm() returns the number of
bytes read - so this only happens if the file is empty.

Instead, call into load_flat_file() if the number of bytes read is
non-negative. (Even if the number of bytes is zero - in that case,
load_flat_file() will see nullbytes and return a nice -ENOEXEC.)

In addition, remove the code related to bprm creds and stop using
prepare_binprm() - this code is loading a library, not a main executable,
and it only actually uses the members "buf", "file" and "filename" of the
linux_binprm struct. Instead, call kernel_read() directly.

Cc: stable@vger.kernel.org
Fixes: 287980e49ffc ("remove lots of IS_ERR_VALUE abuses")
Signed-off-by: Jann Horn <jannh@google.com>
---
I only found the bug by looking at the code, I have not verified its
existence at runtime.
Also, this patch is compile-tested only.
It would be nice if someone who works with nommu Linux could have a
look at this patch.
akpm's tree is the right one for this patch, right?

 fs/binfmt_flat.c | 23 +++++++----------------
 1 file changed, 7 insertions(+), 16 deletions(-)

diff --git a/fs/binfmt_flat.c b/fs/binfmt_flat.c
index 82a48e830018..e4b59e76afb0 100644
--- a/fs/binfmt_flat.c
+++ b/fs/binfmt_flat.c
@@ -856,9 +856,14 @@ static int load_flat_file(struct linux_binprm *bprm,
 
 static int load_flat_shared_library(int id, struct lib_info *libs)
 {
+	/*
+	 * This is a fake bprm struct; only the members "buf", "file" and
+	 * "filename" are actually used.
+	 */
 	struct linux_binprm bprm;
 	int res;
 	char buf[16];
+	loff_t pos = 0;
 
 	memset(&bprm, 0, sizeof(bprm));
 
@@ -872,25 +877,11 @@ static int load_flat_shared_library(int id, struct lib_info *libs)
 	if (IS_ERR(bprm.file))
 		return res;
 
-	bprm.cred = prepare_exec_creds();
-	res = -ENOMEM;
-	if (!bprm.cred)
-		goto out;
-
-	/* We don't really care about recalculating credentials at this point
-	 * as we're past the point of no return and are dealing with shared
-	 * libraries.
-	 */
-	bprm.called_set_creds = 1;
+	res = kernel_read(bprm.file, bprm.buf, BINPRM_BUF_SIZE, &pos);
 
-	res = prepare_binprm(&bprm);
-
-	if (!res)
+	if (res >= 0)
 		res = load_flat_file(&bprm, libs, id, NULL);
 
-	abort_creds(bprm.cred);
-
-out:
 	allow_write_access(bprm.file);
 	fput(bprm.file);
 
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
