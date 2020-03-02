Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC3D17660E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:34:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TTp6e4xErLtFaMZw+bsGwxjZrkwM3G7j4+maqYTpJZs=; b=mvF144LwQ6+CoK
	yCCcHJ6TQ4uOiN95w4go5MFHkpYFkmhoxrOat+27ejAtJhGrEZ3kMrPFnzCR9hoWBeO5EmAN9NY2+
	bVbGPz7s+jV6PfPw6f97zsc8ETfVDXMxNvVmG5p9x9kd1lwoTsQI+DoDKi01o6/74xdog+ulNH09Z
	2TdfxUrIlSgMVf3OzufeuknvoZCz1olUXdKTH7MuZZO+h+7IdwJF8FSjTRr8S7CwaJK8VtnQQZe4D
	u990anct7OWgHGlcZjb08UrAAkc/QeqBG11TGO8t6UP6OhhDsVYKm6nM6YA2zl/HeGE+vxiXlwMHE
	GiXNrqvoHrK1CIA6DFIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8shu-0007Qp-Ek; Mon, 02 Mar 2020 21:34:34 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8shk-0007Pu-Io
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:34:28 +0000
Received: by mail-ot1-x341.google.com with SMTP id i14so851472otp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 13:34:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I6ClrHJCDNehdRwS/y+69ocK05bWUHG0fpm4Y3ogQMg=;
 b=al25Ucu2Xvqlcka3jbLAcCOKotduTm2FFbbXOqn9KbMySnDy4wnIl+NPtL0S1pWkU7
 caNnGcCoHb/wAZVNKaYFlHYQw8t3Lviym7agQi5JyryS+mW3kXGsNT110isIDpycpI+s
 9U0B41qhuBQ0491XYM3K/Tq/B7/p6nnblL6xZ7gKB+CmQt9+2MzFFf7TleRsqCThQZHg
 IktBo4UMv1SdUNKacekdQpSspTS2mXuBcZfxIGLyTxRatn6dg1/jIqcXMtWXq8MJ7MiC
 wYDIMROKG1f0LOlZtTtQgZjwmDIZwojxsKjtz5SjuQidXnXSH/9qleZAMuWK6BwUeqZR
 jRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=I6ClrHJCDNehdRwS/y+69ocK05bWUHG0fpm4Y3ogQMg=;
 b=HuLTDZ6IfjAWKdsUIdXd8dCvEldLTAjpFSWpq4KHLsXykvxJUgnn4yyIdDj1rPsQzK
 tv9UaQseJCBGu6TTnqYsEfXzUFtDguqdbzgs7kZMePjgJQkVPLAZrCfXO5nZZCog96/3
 Sc04xr2WxybLD3hyRFmvhBcPtQDUkyU+3Q/8lTOylvfmLI7jqEtNeHaSpUt5I76PslWI
 pQdR+RMXvZmeaJ2GGXwU4yna+OHI/Eb6vrIR7f+ZQcHV9qHj685clxkN3zo+AjzjJIZX
 qpAUORD/ob21lAwjp/YzkSDbwMrn93mEu6Ce0JRMCAhVq1/jgI4pIML46JJBpW/pHhOd
 oS3Q==
X-Gm-Message-State: ANhLgQ3v9IouTvd0HZLzizgQ52EnW6sXHFsy+14NgUYUFkVdpQYkMfTz
 raFTGJDkwmI5ZxiNCVOL7WdoPv8p
X-Google-Smtp-Source: ADFU+vv/dsAfj+I3v6er9aIU2nKtO/wQ5/JQlq1sKIQOIzhf8z5bRmfp21cvf0h20av/H5hD/WHeDA==
X-Received: by 2002:a9d:3f5:: with SMTP id f108mr953744otf.103.1583184862374; 
 Mon, 02 Mar 2020 13:34:22 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id e206sm6809252oia.24.2020.03.02.13.34.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 13:34:21 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH] coresight: cti: Remove unnecessary NULL check in
 cti_sig_type_name
Date: Mon,  2 Mar 2020 14:34:02 -0700
Message-Id: <20200302213402.9650-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133424_621068_82C30695 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang warns:

drivers/hwtracing/coresight/coresight-cti-sysfs.c:948:11: warning:
address of array 'grp->sig_types' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (grp->sig_types) {
        ~~  ~~~~~^~~~~~~~~
1 warning generated.

sig_types is at the end of a struct so it cannot be NULL.

Fixes: 85b6684eab65 ("coresight: cti: Add connection information to sysfs")
Link: https://github.com/ClangBuiltLinux/linux/issues/914
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/hwtracing/coresight/coresight-cti-sysfs.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-cti-sysfs.c b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
index abb7f492c2cb..214d6552b494 100644
--- a/drivers/hwtracing/coresight/coresight-cti-sysfs.c
+++ b/drivers/hwtracing/coresight/coresight-cti-sysfs.c
@@ -945,10 +945,8 @@ cti_sig_type_name(struct cti_trig_con *con, int used_count, bool in)
 	int idx = 0;
 	struct cti_trig_grp *grp = in ? con->con_in : con->con_out;
 
-	if (grp->sig_types) {
-		if (used_count < grp->nr_sigs)
-			idx = grp->sig_types[used_count];
-	}
+	if (used_count < grp->nr_sigs)
+		idx = grp->sig_types[used_count];
 	return sig_type_names[idx];
 }
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
