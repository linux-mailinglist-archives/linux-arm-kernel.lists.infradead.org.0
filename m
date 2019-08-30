Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C16A2BE1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:52:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/8C6+sjST09q327YcAiiR5y7I9m5TwpkXhXo4Zika8Q=; b=lkHqCQHVfeydoorWlW8JmxmJPH
	Jph8cUgwZvQUav4VYiLIYc4AzkqhhPUvyBXDk6UndQv3kHnLMlVlEqCLIVi4T22ixO0SQPbpcLD4L
	Te5/ROgZAul6Ss4jqicL4qzRSSgxq/pIMzOceUgs+uvhgHHDw1bRZc7wVWx8cGy16QUA6EGXxASsn
	6UQRSkr7ANeKZu6nFq1nlkRREx93urY7VXEMeZpHDZx4SOl7K+vI8QJEyC3jLapxDzYwDVp0RdQ2P
	/q9nRSt6sK9c+6viTL2pmha1wZbnovILRyf+j0X26xAcp/gfIZ2qQs88g86rJIDkCIIF9AQC0obj5
	3ZpCzmNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V9j-0002p5-Ts; Fri, 30 Aug 2019 00:52:48 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7q-0001Qs-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:52 +0000
Received: by mail-lj1-x242.google.com with SMTP id h15so4785721ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jGmbuQhjfybpgV20Mr6h/vZA852gJhY9ROLsc2sx8l8=;
 b=pWeUz6Fu6QfaqIpkcQ5NkN8S1IH2Rw5H5SVVq3jN6Pe8GO4Z0AVQ8kjAJ1nWq/suUY
 iy5IGz6OJY/dKJgiOzw4G0pKMu1jIKXgSEsnZrYt8T+GOll/c7PoRUL0YOgbZSy9nloJ
 xQxd5OltyxyzW8UXtE9De6EMr0kC0GBlbZxjYBn+ldgJ4QDJW8JzaEcfhzz1wiSK9Dz5
 oXvnGjkb0/kodZDij7wbzY6bjZCsk+fZ1wdt4Hs8Okzlc+qRp1IHk7T8NLEWCvIR0xTc
 MloaK1lal5Wj6DiZQlLT3eOYVu3I68zMpgnlI+8rf0f0TnmBXaCq/zCKadOxwP6syzE7
 hEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jGmbuQhjfybpgV20Mr6h/vZA852gJhY9ROLsc2sx8l8=;
 b=gw93o7OqALHRDnEt4+QR20KBQyStyeJYAfJrLOqpUoGcWhQRUZv8OdBatOyGrAeSRe
 YZ9L6dh++OUhB4Gc/rCrV4T85HLPLF398DTCWIjdCEY3dUoQwVpyUWSeGvpQX2h/mpYb
 jiXHzKkc1ISQL6iCZV6pqCow11bYSp7rz0TEGtMf9/r7wcaXhaOrLufP1sTQqflSSutu
 dyKj0VyJ7X/INTAAVzAWPTRoK4axeWvKLEDvnsyYejW2cHESyxWoTqxoO4afphjEin1q
 BwUxcmBzELuyal8cqsg30Dnnz7bexKD1woK5n2AnW49JvR/EC6iaqy0UXopHMZmUvkmV
 ZJkA==
X-Gm-Message-State: APjAAAVjwQORe1KlGvU0aEqxPQ+bEJlOSTSVe9MsJ3trpZjWNr/1fxIP
 EsQYB+VRo1APxcClRsaveICENA==
X-Google-Smtp-Source: APXvYqzI74aR/DPSKUQJi5BEbDzth7mLHwQxtSOpKT4d/woWDnrSZxBkUNITdgyD5sT4M1zqAQ6tfw==
X-Received: by 2002:a2e:b004:: with SMTP id y4mr6683248ljk.124.1567126249466; 
 Thu, 29 Aug 2019 17:50:49 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 06/10] samples: bpf: makefile: fix HDR_PROBE
Date: Fri, 30 Aug 2019 03:50:33 +0300
Message-Id: <20190830005037.24004-7-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175051_011963_EAA7B964 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

echo should be replace on echo -e to handle \n correctly, but instead,
replace it on printf as some systems can't handle echo -e.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index 9232efa2b1b3..043f9cc14cdd 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -208,7 +208,7 @@ endif
 
 # Don't evaluate probes and warnings if we need to run make recursively
 ifneq ($(src),)
-HDR_PROBE := $(shell echo "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
+HDR_PROBE := $(shell printf "\#include <linux/types.h>\n struct list_head { int a; }; int main() { return 0; }" | \
 	$(HOSTCC) $(KBUILD_HOSTCFLAGS) -x c - -o /dev/null 2>/dev/null && \
 	echo okay)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
