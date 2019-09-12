Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF1DB0886
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 08:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDX0Q8bazDS1l1k+eMaXFhXPp/ISCbScmlpkViVrfgc=; b=T1DlSIPgmUg0j5
	qTpKzY0YI/YjAXuCa44DDT+nT2lYx9SHjeLzP2y1WwRH/3N9XxlnRurHr9xadLQgtEJXzviTellHn
	G4wwHRLWbtNnL7vXgdLi5CsK8CgeLyjzj7tCjwrGk4ZrX0xTlqtIEA/0G7j+2fzjTut2K4CzptLid
	v2w4fvhozHhp9IZ0QvOyF8BG1Jf7qKye9saLjjZ4HnVOt1+xRw42Rpjn1IGjqrL0I5tJhGodabBTa
	bdu5+X8I8niYX5plMwcdNk5XLSd7VLPAeBk5e+cryLT1MhDg9vSH8z16ULdWpA0YO69CNKEp/A31x
	egz+Fn/xECxzHBsuaqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I9Q-0001gZ-92; Thu, 12 Sep 2019 06:00:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I8t-0001RQ-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 05:59:44 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so15228482pfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 22:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9duNwvJ16wl6i9JK0JxmwLCbqMy/YOSDsatt/Ugxhh0=;
 b=FRbBT6xdaywYm1Eq4QN4D3bijixSYoPo3VEn4SC9G8XRTVtx2IkVj9TcOA0JSqYwGl
 TZhqsDfWYc/B6ydJEVo85YRRqO0oBLCkTVGABfLCd3Yw0QbYOivmnkXkchJlRi5w05QU
 cf7Mr1+lci9lrE1CT9JzMyKmO2hXvEAZt1d9KCFMO1vEiq7HQs8wF8P1cWcwyLkFkizJ
 kcvzVym1tbRJ2YW7GPmoOmaaomsJZDqyMOere0qiKofATuSvBD2jm092/SbxUyDChRrl
 p7niPQNlxz8L7+QJv/3dbYqXZSh1Rb6TpIuA6UdXL2JcyE4kjkMZ8RLIJAG85VMQm1tC
 6NlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9duNwvJ16wl6i9JK0JxmwLCbqMy/YOSDsatt/Ugxhh0=;
 b=K34rV1S4fHuwV7R5KLpvbW/xEnBpH8F7Tp9S6uVNDL1D8k61zKKwap8aDXs6FvVwZ7
 LhN0OJUlBZxLNcvF1/f1VeupEAL/aQ2fYYrX4UKbvf9euBtxhxV7UwMJNhmBn6LTnO2Z
 ELvFKGF9scNLJN7X3FSPfOmsP2wM3DQoL9sfQEYIkbvCHtVoPA36V82VRQPw9MFOKyoz
 j9YFX85DEVEICMfFC+VZkpjDN9nrSuMRLMQsQ/X8O0y4nuCPmY7an5PqCZIQEZgBZO9h
 rcoTMSC82Qn++866wzVq575Q2vFOQ1rn72OhkHx4OB7HvCsVcu4VrlMUbkpIPydPBnuZ
 JQ0g==
X-Gm-Message-State: APjAAAU3noV7mPQT9i6iIaf1cQmr8bt+1UeETMlZI7+SJ9mm0J8kcuES
 hh2nicR4kQ+2Z7KWkFjw0nZyvOt1etk=
X-Google-Smtp-Source: APXvYqwRT/QyokAzKYSkNXb9bPY58QTKW/gzk7wHl7wSKXMyR2OixJVa29yltPDRmZGoDv813RK/bA==
X-Received: by 2002:a62:e10a:: with SMTP id q10mr47211817pfh.236.1568267982763; 
 Wed, 11 Sep 2019 22:59:42 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id z12sm4461135pjp.11.2019.09.11.22.59.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:59:42 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH 2/3] libfdt: include fdt_addresses.c
Date: Thu, 12 Sep 2019 15:01:49 +0900
Message-Id: <20190912060150.10818-3-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225943_147992_061CFE53 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In the implementation of kexec_file_loaded-based kdump for arm64,
fdt_appendprop_addrrange() will be needed.

So include fdt_addresses.c in making libfdt.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 lib/Makefile        | 2 +-
 lib/fdt_addresses.c | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 lib/fdt_addresses.c

diff --git a/lib/Makefile b/lib/Makefile
index 29c02a924973..59f082727503 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -224,7 +224,7 @@ KASAN_SANITIZE_stackdepot.o := n
 KCOV_INSTRUMENT_stackdepot.o := n
 
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
-	       fdt_empty_tree.o
+	       fdt_empty_tree.o fdt_addresses.o
 $(foreach file, $(libfdt_files), \
 	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
 lib-$(CONFIG_LIBFDT) += $(libfdt_files)
diff --git a/lib/fdt_addresses.c b/lib/fdt_addresses.c
new file mode 100644
index 000000000000..23610bcf390b
--- /dev/null
+++ b/lib/fdt_addresses.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_addresses.c"
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
