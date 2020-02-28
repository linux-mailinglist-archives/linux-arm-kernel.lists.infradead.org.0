Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80179172D29
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:23:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6b3jrOVN040EEtiUAZjwIFjFVo5YI/nOmoeCH6aVda4=; b=WsMJYAHSqUUPGP
	RIXaZOWM4DhBvtp2J95WxyUQFHsMwgBQmwxB8tSPMOIVt/4jdhI/AbNLHfLCMoRo+Vv3ZFniVjOIy
	Mo3KbaueUlATPGTamxTOj/XYODD9voKAMRgSEhHUAP2C0IJbxvSsu9Birxdx82fjfKLPHxckHQXkX
	9AWsWIVxBysA0jc/StfVWx+88TT7Vx7wzwHfRab1lHpz173VzEihxtmcCOHmTdaQzg6iDva4jADtb
	iZICakseMQ87PVFpzjZ8fkb1tqbRkm3fbMXXkiiDhERPJ0D5dVQw/D7HY+CIG1qvZpD+rLsHsK/72
	WhxxKO4eRkXtAEAFw3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TR8-0001H6-Rt; Fri, 28 Feb 2020 00:23:26 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQY-0000zg-No
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:52 +0000
Received: by mail-pl1-x644.google.com with SMTP id j7so499122plt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ez79u0H95d7ehsU8Q6LXSGZw/ZiYxtURwwXuqb7McBM=;
 b=JT0Br7NKTOUA+nKOUR3kxByruQX68VKIehHVXqVVhKCbfrDUGawo16Sa3Z6WcHnQZE
 y1biceMyRdxWDQk+6EXypwYNBPqlrWDKMmnCqpMw9cnF2nSNIF6WOmlDvRjSHvtm0AYe
 cUNtMHvTvp1pA6un7KPrhVESojEL+IC+Da808=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ez79u0H95d7ehsU8Q6LXSGZw/ZiYxtURwwXuqb7McBM=;
 b=Hkn5I2ZoapXTlFnwxXDTOX72EhM6JoUduL1KttE1+YzACrbd848qsSkK6AXedDDOew
 1vbIGM/OBnWqn/SRAbgsI0UPv6gJgiGXGacYyikY9OrhEbakwg/0zo303WHc5dQvx2ij
 938vdiBrqo/I+b/CtDRK1CkpuZOgUl7+GbbPGoyqjNzdG5b1en1dgayYhAXhuLp1sS93
 zow0jT61kGn7fNLgETSy6qtf+NMgIiAIvmOeBtdC0LZ/5uWDjb1+UCZ+SP0POoZYCpxn
 s1RiFJhz9ALNbTlcIevBAoKm9kWnhDU/yxwVIYxL/YN5LRcusJ2LQQCVm1ihZRlrlcd7
 PlXA==
X-Gm-Message-State: APjAAAUJQSq83sCYbURmMMvRvoEmWx76dY27lyaquMaTpqQiZPxayasy
 c+boa0sUs9txPHRUKRIjrsrFKQ==
X-Google-Smtp-Source: APXvYqzYAj+CjU1Xxuv+xsBd/M7yvFwmBBzsC7seqTL50y8NxU4tBl30dNubdcD9vIp3lpLiWut6dg==
X-Received: by 2002:a17:90a:be03:: with SMTP id
 a3mr1544230pjs.99.1582849369865; 
 Thu, 27 Feb 2020 16:22:49 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 196sm8572448pfy.86.2020.02.27.16.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 1/9] scripts/link-vmlinux.sh: Delay orphan handling warnings
 until final link
Date: Thu, 27 Feb 2020 16:22:36 -0800
Message-Id: <20200228002244.15240-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162250_772264_D4E44415 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Right now, powerpc adds "--orphan-handling=warn" to LD_FLAGS_vmlinux
to detect when there are unexpected sections getting added to the kernel
image. There is no need to report these warnings more than once, so it
can be removed until the final link stage.

This helps pave the way for other architectures to enable this, with the
end goal of enabling this warning by default for vmlinux for all
architectures.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 scripts/link-vmlinux.sh | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
index 1919c311c149..416968fea685 100755
--- a/scripts/link-vmlinux.sh
+++ b/scripts/link-vmlinux.sh
@@ -255,6 +255,11 @@ info GEN modules.builtin
 tr '\0' '\n' < modules.builtin.modinfo | sed -n 's/^[[:alnum:]:_]*\.file=//p' |
 	tr ' ' '\n' | uniq | sed -e 's:^:kernel/:' -e 's/$/.ko/' > modules.builtin
 
+
+# Do not warn about orphan sections until the final link stage.
+saved_LDFLAGS_vmlinux="${LDFLAGS_vmlinux}"
+LDFLAGS_vmlinux="$(echo "${LDFLAGS_vmlinux}" | sed -E 's/ --orphan-handling=warn( |$)/ /g')"
+
 btf_vmlinux_bin_o=""
 if [ -n "${CONFIG_DEBUG_INFO_BTF}" ]; then
 	if gen_btf .tmp_vmlinux.btf .btf.vmlinux.bin.o ; then
@@ -306,6 +311,7 @@ if [ -n "${CONFIG_KALLSYMS}" ]; then
 	fi
 fi
 
+LDFLAGS_vmlinux="${saved_LDFLAGS_vmlinux}"
 vmlinux_link vmlinux "${kallsymso}" ${btf_vmlinux_bin_o}
 
 if [ -n "${CONFIG_BUILDTIME_TABLE_SORT}" ]; then
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
