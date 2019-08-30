Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C4AA2BDF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 02:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lkQH8zL+N7toJK7awPE2+ZD6Z2mYs7g0LbefKsACui4=; b=TCDJBDPy15h4Jmwmf85HZsVG99
	z2D0/o5zqHYXmCgN7TTx1shuslI19mCiwMpEqUxrzmQjPSCh9Wq/adfRRe024EMP6Q4Ut3LqkTHTl
	iC4Xm8r0CVBWAflaG01dTZ01SL6yokZ1y083ujEhV1/J1/ww6j+aa/2DWjP0bPuqYPmTidH4czPU4
	zkB/A5FPQVpcQEcpm0uTgiXUDKSTL4NQoMm78fedMRkhbuSpyHF1SK9J/4l/BgI3OALLrfs9plrTC
	aYm94u29kvulcGXtY/cXxIzSpzpNmd0mkRPVKDoWANcVvh0gwvVfMWCcSpb+9Uvhgk86ITzIuRGz6
	E1jPsmAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3V9C-0002Lh-Pg; Fri, 30 Aug 2019 00:52:14 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3V7o-0001O6-Q7
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 00:50:50 +0000
Received: by mail-lf1-x142.google.com with SMTP id g9so4001600lfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 17:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Q+vZM4cZektdF572TqWkVl3QkOoJAXjpmJXjWwwbKzE=;
 b=LEYfqXzZUPeIuy93SH8GAssQsvlBou/hIWteBhvmXq1F9JVWj2wTkzeZdfRJclvOXa
 Ml9kVrTIeDyM2A/3eaEvzVK9/pGt5qEqzLTWvJqdBmLcHkvvh07Ut09wAvSKXrIMNobx
 r2RNchETr9Z4KWTcRDbMNJ6rLBGv3sDWxx1Z8Z5O54FYC/zPoXMdoQJR1eWto+H3GBER
 DlMphrpkhbPZGMzNxrWnt0/mC94HVFKOY0k+/6wVxcaRK9ftaqDrp/Dypqjz3DpeV74s
 5LHndEkamECTgyLl93XSkTDSnp9E79AvMzRJuicO+St87f2BsjM+kyYugZH0KcXkbFhW
 G9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Q+vZM4cZektdF572TqWkVl3QkOoJAXjpmJXjWwwbKzE=;
 b=OIdPm/oFqbRXvmIOKSob0OKwBGGyI+DnNngN/7nWtz145nnNJ+jV1LQyfMApldVTAz
 PBTEznkGmOflqn8vv7V5RaUOkZ/VY83tseCHwc3u7f77PobbPhKf2ycTdFTsIxu20waM
 3KVxWfxCal2poo3OmdICv/mKeHN4hPbALy3ZpkMbkGOdBAIS3EkT3HHMLg83Al7Ag20y
 MAJGb1XqSdLNT+HWpKbh5F99E538gjhcicULFDn+nh1RnLf7P9Ku0MYO2YFBXGfAYYv0
 USIU5Q4gFAVaMg942c5oIkNUVRspdU4TxGrXRAYm2iiTWJFDV3DFt8tQ06gdomNZkflt
 Aazg==
X-Gm-Message-State: APjAAAUAlqaew8Obeeiv67wzg0Zm4kVkr3PK7J8P74+vxFZCf9KkKLzO
 2PpMsHIlttD7++xBRdiRu6KOMg==
X-Google-Smtp-Source: APXvYqyihXTROPMaQ2wywc9lmAKFZbgnRCz1760bakTi1cPbibvD2WXzoa2W4G39kM/s/BUv/T280g==
X-Received: by 2002:a19:ae0b:: with SMTP id f11mr2637945lfc.28.1567126246924; 
 Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net.
 [178.94.200.168])
 by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 17:50:46 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, yhs@fb.com,
 davem@davemloft.net, jakub.kicinski@netronome.com, hawk@kernel.org,
 john.fastabend@gmail.com
Subject: [PATCH RFC bpf-next 04/10] samples: bpf: use own EXTRA_CFLAGS for
 clang commands
Date: Fri, 30 Aug 2019 03:50:31 +0300
Message-Id: <20190830005037.24004-5-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
References: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175048_957151_5713C17F 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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

It can overlap with CFLAGS used for libraries built with gcc if
not now then in following patches. Correct it here for simplicity.

Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
---
 samples/bpf/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/samples/bpf/Makefile b/samples/bpf/Makefile
index a2953357927e..cdd742c05200 100644
--- a/samples/bpf/Makefile
+++ b/samples/bpf/Makefile
@@ -219,10 +219,10 @@ BTF_LLVM_PROBE := $(shell echo "int main() { return 0; }" | \
 			  /bin/rm -f ./llvm_btf_verify.o)
 
 ifneq ($(BTF_LLVM_PROBE),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 else
 ifneq ($(and $(BTF_LLC_PROBE),$(BTF_PAHOLE_PROBE),$(BTF_OBJCOPY_PROBE)),)
-	EXTRA_CFLAGS += -g
+	CLANG_EXTRA_CFLAGS += -g
 	LLC_FLAGS += -mattr=dwarfris
 	DWARF2BTF = y
 endif
@@ -281,8 +281,8 @@ $(obj)/hbm_edt_kern.o: $(src)/hbm.h $(src)/hbm_kern.h
 # useless for BPF samples.
 $(obj)/%.o: $(src)/%.c
 	@echo "  CLANG-bpf " $@
-	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(EXTRA_CFLAGS) -I$(obj) \
-		-I$(srctree)/tools/testing/selftests/bpf/ \
+	$(Q)$(CLANG) $(NOSTDINC_FLAGS) $(LINUXINCLUDE) $(CLANG_EXTRA_CFLAGS) \
+		-I$(obj) -I$(srctree)/tools/testing/selftests/bpf/ \
 		-D__KERNEL__ -D__BPF_TRACING__ -Wno-unused-value -Wno-pointer-sign \
 		-D__TARGET_ARCH_$(SRCARCH) -Wno-compare-distinct-pointer-types \
 		-Wno-gnu-variable-sized-type-not-at-end \
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
