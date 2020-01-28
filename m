Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED79014AE06
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:To:From:
	MIME-Version:Message-Id:Date:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZQYnvTJYfmlqdRSxpUatNsL7EdH/a7FS+TYm7gvclc=; b=QslNmxBzZ6kEIU
	q20er8Dbh2xsGqOdZVaVDHGRJbzPphTOLKCT5QnjW+0gQO2KDIW0QG8y+O8Lpt80ZopWKYSCWPDLQ
	/EmPnAc1uxTq7xyq60FAf0JnsVyM+alQE7Trj/PVLbTwQovuX9A/zaLDhc1mElzXFQGkCgbSx/hHU
	EDj/+71E0lNQn0Tiv0vGrULum2G6Iur8rGKCfEXkYGyNMMBZbvFPQgD+kdf6+M6h2TpeEHGj0fldv
	oyiHWwLky0q00kYyVXc4T/R12cSy9ykV3d7cRqeaWEdWZq7DT5B7jisBvWZ4zx/GMVRmvFvnitjSE
	OjARewai8z/R80kNPlgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGPa-00007N-RG; Tue, 28 Jan 2020 02:15:30 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGOw-0008C1-As
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 02:14:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so6152867pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 18:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=subject:date:message-id:mime-version:content-transfer-encoding:cc
 :from:to:in-reply-to:references;
 bh=B26eSG9gMaHSxZUV5pLyS5i7Lt3Ya0fKdNJyMPYapJg=;
 b=rnj6yTltwKWYN3+9NJAw5sCB/fR2AAcye4lYI+VlXhtsAeDA2BY21GJ8k8CnQf7aQY
 VdJ1qPrTM3EARaQkNVyPlmwk3OR0FZ1qhmjPYmqj747Fi6+MIUvvEt3r/xG932neiZRZ
 G3MOKgdSY//mdAPafDURRAFv84ghi6Xg6+OIs6B82gN1iNzgi4TCJIbiKMAjvWHnWsI8
 LfD/uSlWuMSGAOZ40hPJMvwD5XkCAeqbt+356MQtEucaALw0rbVlR+5ifj9W6OqwPggu
 K+WgKDD0Sf0RDg9+u3AIFA8wMp9WAsRV6SFb5qwxtu0Spb25cBn4ycpFAc+FS2vQBAxJ
 dq0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to:in-reply-to:references;
 bh=B26eSG9gMaHSxZUV5pLyS5i7Lt3Ya0fKdNJyMPYapJg=;
 b=ZSzu28Ng5gFjhJcjD94YTxNlruIbcHb0r4/vsU5cuk9Zky8kJJcVlK9SqMVYF0Imd5
 0VeYCOyHp4mvbi6Vz/UsuvmA6UEeIhPDe8GWG1LfC2r/8scpZFfzoXe1uUEpQqsWqxW2
 GxCUf6C/a0Fs5ckHpOOc++920TJfT+f78VzMqoqCEQMpUBnNK+UUs8OEqH3y/Yq3vKDK
 WlXDjywbSjEuRnqYjk/A2HfOW8xvdw3jnj8MjLP/4wg61Q9tv1wfBHl1xcCPknvopr9+
 G1rwf/bRyhUG7z2F+uF7GL7LrXGgb4Zue8h4gItmnqsqp9DksKgF5gFWfbJIzz/EPg3C
 DQww==
X-Gm-Message-State: APjAAAUxCwPEc2Qj+TNXrN2ekIihkCPBf56eim1+q7suTqk3JH2Z/kRD
 vTfBfNWHSp1Ux2i6Ht703l8MqQ==
X-Google-Smtp-Source: APXvYqxWbxJsMQEFqUcP7zhlWCZa48n0RUY+fa4pHyARk3jQS+HZxuwfqCKurzNjpNa6tqaE0J+XAw==
X-Received: by 2002:a62:2b8a:: with SMTP id r132mr1588482pfr.56.1580177689517; 
 Mon, 27 Jan 2020 18:14:49 -0800 (PST)
Received: from localhost ([216.9.110.6])
 by smtp.gmail.com with ESMTPSA id x21sm10370389pfq.76.2020.01.27.18.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 18:14:48 -0800 (PST)
Subject: [PATCH 1/4] selftests/bpf: Elide a check for LLVM versions that can't
 compile it
Date: Mon, 27 Jan 2020 18:11:42 -0800
Message-Id: <20200128021145.36774-2-palmerdabbelt@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Bjorn Topel <bjorn.topel@gmail.com>
In-Reply-To: <20200128021145.36774-1-palmerdabbelt@google.com>
References: <20200128021145.36774-1-palmerdabbelt@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_181450_369973_0F937D5A 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: songliubraving@fb.com, andriin@fb.com, daniel@iogearbox.net,
 kernel-team@android.com, zlim.lnx@gmail.com, shuah@kernel.org,
 Palmer Dabbelt <palmerdabbelt@google.com>, ast@kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 netdev@vger.kernel.org, linux-kselftest@vger.kernel.org,
 catalin.marinas@arm.com, yhs@fb.com, bpf@vger.kernel.org, will@kernel.org,
 kafai@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current stable LLVM BPF backend fails to compile the BPF selftests
due to a compiler bug.  The bug has been fixed in trunk, but that fix
hasn't landed in the binary packages I'm using yet (Fedora arm64).
Without this workaround the tests don't compile for me.

This patch triggers a preprocessor warning on LLVM versions that
definitely have the bug.  The test may be conservative (ie, I'm not sure
if 9.1 will have the fix), but it should at least make the current set
of stable releases work together.

See https://reviews.llvm.org/D69438 for more information on the fix.  I
obtained the workaround from
https://lore.kernel.org/linux-kselftest/aed8eda7-df20-069b-ea14-f06628984566@gmail.com/T/

Fixes: 20a9ad2e7136 ("selftests/bpf: add CO-RE relocs array tests")
Signed-off-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 .../testing/selftests/bpf/progs/test_core_reloc_arrays.c  | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
index bf67f0fdf743..c9a3e0585a84 100644
--- a/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
+++ b/tools/testing/selftests/bpf/progs/test_core_reloc_arrays.c
@@ -40,15 +40,23 @@ int test_core_arrays(void *ctx)
 	/* in->a[2] */
 	if (BPF_CORE_READ(&out->a2, &in->a[2]))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->b[1][2][3] */
 	if (BPF_CORE_READ(&out->b123, &in->b[1][2][3]))
 		return 1;
+#endif
 	/* in->c[1].c */
 	if (BPF_CORE_READ(&out->c1c, &in->c[1].c))
 		return 1;
+#if defined(__clang__) && (__clang_major__ < 10) && (__clang_minor__ < 1)
+# warning "clang 9.0 SEGVs on multidimensional arrays, see https://reviews.llvm.org/D69438"
+#else
 	/* in->d[0][0].d */
 	if (BPF_CORE_READ(&out->d00d, &in->d[0][0].d))
 		return 1;
+#endif
 
 	return 0;
 }
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
