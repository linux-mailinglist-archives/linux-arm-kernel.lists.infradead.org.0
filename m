Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0EB5452AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:19:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYqtYuhHl4/o54n2QKOVooy+a9jqsUwunRWlifnsV7w=; b=VZVwPdPn6rJ6eV
	AGXzFmDCHDN4EhhRvzyOkOLeOngnE6kd23nqY1aFbKscpvRAXnoggwsZiBcm2MkbMzQUmmmOcx712
	gqzVYpqp/f/nZQKYoidrRY/9ooEwQ/bSU16HCbKJfiSnsAlUKj/WYuSNDo6rbnmvVMsg06FzdA94m
	C1OQ0G1pQ9N7TF0J2zYvmIhMeMoozTrxZlan9L2JhJnxJp4/4V1/BlRiNDrphKD91Bjfyv2/GGr2V
	nFZr6NcgIRQv+teG3mG/1aNU892pqaRMwDHYUpz4+LCM03YRbGKhsl/9jOmbRM7OLPL4hk6pTJpml
	sx9qUkBampR1Ilvol8Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbckm-0007WQ-3a; Fri, 14 Jun 2019 03:19:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcdz-0000Y2-Mr
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:12:49 +0000
Received: by mail-pg1-x544.google.com with SMTP id f25so662639pgv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EmoJPia4REdmsbQ4H3ol9/VbnaPc01q7ugk/yi36Irk=;
 b=PkSwe6ZM+84aZssqC9yjuM9KdfFBu/kwlLo5pJlTemrHl3tbpWb2jFu9oCwjIJLbjZ
 +R2sV3v4Svb7AGgxYSENh7WQ/BsSqkO3SrL6i1rAA8K9jGSppUSeagoCqZ7kApJZrdmN
 Ut75sba5qxz1fnQrw+BDywqbPFjsmoNKEmHjhAV+153MleaDr7XY+6okqraszIUYzqRX
 yRGdmp4jlswT+ElJ/Br6Q9ooyShdDsSjoot+sJxssHE/ZFb7kM+znGZgY02db3aviW/3
 qBfzYmNrPIFScOHk+93wZHDGvUVHziCN41rErxUmySN2LDp2wy1cJYAsbuOtFZOVECLc
 6YPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EmoJPia4REdmsbQ4H3ol9/VbnaPc01q7ugk/yi36Irk=;
 b=Jb9ri5kGCwRastFdQ2tHZEPz5O+Bki2vNlz4FF0b6bh9wZopaX1FfH3ZTiTifSEe/x
 h1Q05YR+UGVZAToMJ+h40aHvZjTtONKoDj4XpEXrbfeTUX+z7bJONmViRC/nJVhXEWXN
 IoKkKOYpi9fSVhE5ourY2odGaNhVXL194Qb4jFRsQEAQ31l6KTo1DQ/niqvi+BEXHlwL
 Ho2LtTDiouQQc7kLdB27qSuR+pPNosLt4Ge94qkNXlufn/efaxT3/i3uSBxJqlNil2ny
 fAtC1Slt4rA2GN3stM4/D/Of17F1sHSg6/xriHObd9ty8Xk/JlEKP3e+0f9ZIlmD2jrg
 R6Lw==
X-Gm-Message-State: APjAAAU5NFSniP1s6yXac01tfU9mkHE2ao8A5BwaSitiSV3qxQc5rONp
 uvKHE1hmSxxTOWO4kutt2NASSRjNSKI=
X-Google-Smtp-Source: APXvYqzFJ5M7fhmGROMUgYHr4HeztcDrQP1Hyg2FauE3GQtu6eOZ00AU7ushEX3OlWUqiKLJAas35g==
X-Received: by 2002:aa7:825a:: with SMTP id e26mr98018300pfn.255.1560481966986; 
 Thu, 13 Jun 2019 20:12:46 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id o13sm1237168pje.28.2019.06.13.20.12.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:12:46 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 20/45] mm: Introduce lm_alias
Date: Fri, 14 Jun 2019 08:38:03 +0530
Message-Id: <8500aeb27596eef7bd952f988c8db0a4b2f655c6.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201247_816675_692A9EBA 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Laura Abbott <labbott@redhat.com>

commit 568c5fe5a54f2654f5a4c599c45b8a62ed9a2013 upstream.

Certain architectures may have the kernel image mapped separately to
alias the linear map. Introduce a macro lm_alias to translate a kernel
image symbol into its linear alias. This is used in part with work to
add CONFIG_DEBUG_VIRTUAL support for arm64.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Tested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Laura Abbott <labbott@redhat.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 include/linux/mm.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 251adf4d8a71..f86fdf015c74 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -59,6 +59,10 @@ extern int sysctl_legacy_va_layout;
 #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
 #endif
 
+#ifndef lm_alias
+#define lm_alias(x)	__va(__pa_symbol(x))
+#endif
+
 /*
  * To prevent common memory management code establishing
  * a zero page mapping on a read fault.
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
