Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F4A2BDE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kK4aIYkRhjGx0lRlrvmWulYiytZaFZqLePU9rMr7TvM=; b=ZZwhjLQKMj8PBXnrItb+8cyQbr
	jML17lFSVbqM/4qKY3EAvSkiUbeNpi+GqRh+TlWqP/QOtyVbfBAWI92h5g7tjMYjdTAz7JXFf1qY0
	jqaKPynFRBMwcbfHJbps9dORhZ4ZNfYo9o1pmDRrH5jLzaOm6c7J/grQQfTWQHo2lSW5Uc91bhySn
	FCivd8I5x+5l7qE+qtDD9ahiQbEWLt6DanZ3nJX6K/LjgZA3qjrxvA08tnE5T+nCRMLBAiuexNgCC
	GlfaHFG/gWKxfknAhhVOh4H2iduDjiPlMwbW+4ubvXHH7gNEjkgeIAs8PApxVHlO/EShPFbWn2dx5
	laYMX6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V8r-00027D-PM; Fri, 30 Aug 2019 00:51:53 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7n-0001Mu-0g
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:48 +0000
Received: by mail-lj1-x244.google.com with SMTP id h15so4785629ljg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=baF6/BEW5KEVo2LOFkZZTRTkQs3Veu82MyQ6XaftpOU=;
 b=biPM7KPdLtnr+xQRNp5xESVEeouLUJKehD24Gd9ioxx2OUh6OIbrndSWFIo+qFylSI
 kWdpwF+J69U+3pO4IuT7c63y1CwY11q0cXDK5OXsQnG4N+5QSF0rdTNyreizSd4oQ8ux
 Am84VUumVDcjZ1RoEaa413ZVsTrv4I2GuzRZa59p3t9MedXqHlG7BxfFeXGP1smCN1Rm
 pj+FEwpD4ZadSIML4/3wTI9ldsdEy1/4SBL2pH8rHBRmKHSJVdGhBCPlnrs46hM1tr7p
 VF5+0TZbcNTyjM8g81MSG9ZbEwNHniA392B0IqMVwrg9G2ma9dMcEqh7oNjuVlu+1z81
 Z/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=baF6/BEW5KEVo2LOFkZZTRTkQs3Veu82MyQ6XaftpOU=;
 b=TVHPT4BIuzQ+E/tW4+8xPSr/K6Eh1vbtlTOzGbUVkLZcyWnUheX+NeZ1HvUPdoT6TW
 n6Hq6Dxq/2vLYZPkS2xNhwMVYAiK7chwKw2i+djP8uI3ctiTSlKCW3ll41B184asnXs6
 d0no5aMo9WDiTZqm2NmGnZL/6Ob8ONOqRrhwJVExnr8ffWY6UU/TAZ7Yq4Suj3tlefkg
 VvkJczy+SIdf6HSA6IjT3M6Y73E1hfET/xkHxavBEnP9hz7jV/yAjWH3yK9pxyO3yRL5
 eqCLJ1TvRLCfbczrOInbPwe5t+GycMbUXZDXgunoxZ9Xi+AAFf+PbdFTAZpTYDabEQEb
 Jb4g==
X-Gm-Message-State: APjAAAWVIrI02h0E6wGsDVfd1sVIQwCX9Vfj4NrV7+6B0H61jmQPbYBY
 DNCNRxkgUqEz9tWFu4wb3tbv2w==
X-Google-Smtp-Source: APXvYqwlf7D/N+8AETmyrADFpsR/4uDHEHGgehGXXJJxn9PraZ2fAYxITTtvWqzPcr0SP5k+C+brcg==
X-Received: by 2002:a2e:900c:: with SMTP id h12mr6901426ljg.151.1567126245707; 
 Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:45 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 03/10] libbpf: Makefile: add C/CXX/LDFLAGS to
 libbpf.so and test_libpf targets
Date: Fri, 30 Aug 2019 03:50:30 +0300
Message-Id: <20190830005037.24004-4-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175047_059215_FE5FDAE3 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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

In case of LDFLAGS and EXTRA_CC flags there is no way to pass them
correctly to build command, for instance when --sysroot is used or
external libraries are used, like -lelf. In follow patches this is
used for samples/bpf cross-compiling.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 tools/lib/bpf/Makefile | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
index 844f6cd79c03..d606d249e334 100644
--- a/tools/lib/bpf/Makefile
+++ b/tools/lib/bpf/Makefile
@@ -99,6 +99,10 @@ else
   CFLAGS := -g -Wall
 endif
 
+ifdef EXTRA_CXXFLAGS
+  CXXFLAGS := $(EXTRA_CXXFLAGS)
+endif
+
 ifeq ($(feature-libelf-mmap), 1)
   override CFLAGS += -DHAVE_LIBELF_MMAP_SUPPORT
 endif
@@ -179,8 +183,9 @@ $(BPF_IN): force elfdep bpfdep
 $(OUTPUT)libbpf.so: $(OUTPUT)libbpf.so.$(LIBBPF_VERSION)
 
 $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
-	$(QUIET_LINK)$(CC) --shared -Wl,-soname,libbpf.so.$(VERSION) \
-				    -Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
+	$(QUIET_LINK)$(CC) $(LDFLAGS) \
+		--shared -Wl,-soname,libbpf.so.$(VERSION) \
+		-Wl,--version-script=$(VERSION_SCRIPT) $^ -lelf -o $@
 	@ln -sf $(@F) $(OUTPUT)libbpf.so
 	@ln -sf $(@F) $(OUTPUT)libbpf.so.$(VERSION)
 
@@ -188,7 +193,7 @@ $(OUTPUT)libbpf.a: $(BPF_IN)
 	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
 
 $(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
-	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
+	$(QUIET_LINK)$(CXX) $(CXXFLAGS) $(LDFLAGS) $(INCLUDES) $^ -lelf -o $@
 
 $(OUTPUT)libbpf.pc:
 	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
