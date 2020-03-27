Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 376A419518C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhE11tuDrEbm8Jb0P9d2i/fLALA/1BJAzrf7NHzCwN8=; b=m+BDGWrAHI58nS
	IGQH8WLlDafnsgkkGb/qJXv4GTxqdtgZBIgMxsMCLKK1ZEZFyxqmNfENNNbdGmZVP83WcXb13pigc
	oB/GMbhQw10B+QCguqwX/B3Kju+S83WHp5/x4vzoNPYyhbPKwsasrRfZ/hfo7jmDkHn2sRpQn2GjR
	jPmJxSnI4D3TJnIDF2rKd49bgy3SOud0wvFwItD37Qwinvw5bfXpxSV3BH6oTK3fqSBauY36xBDYo
	qC5YzaRktEvvcl2huSleSNxh/KxUwSocJSKXecn7AqQIgL0Y6UKFBD22NX2uvCduPqKYgWwLcMWF1
	+p98cIqqFrT2MG6U5noQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHinc-0001G5-FS; Fri, 27 Mar 2020 06:49:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin4-00012k-30
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:27 +0000
Received: by mail-pl1-x641.google.com with SMTP id s23so3091862plq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mgxC9d4qXy1U6S4xZZ93iQn9OATjbx+7aDsjHxYmoto=;
 b=Tm4FMyfyM+cogSruDE6HvsM+6ZwmCpC70VZfPJPeA0p+kq4CJe5z5I2DHZ9LX+tWXU
 +NQzb1bYQeo9YhPAv4Z4oabDJ4d38VX5KW8GF7YKk2UeP4oHUqCJe3joDSiC6v18w10H
 Kq7G4OI4gxFxFK+ZrGvyhlubqD/l0vQZ9EUtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mgxC9d4qXy1U6S4xZZ93iQn9OATjbx+7aDsjHxYmoto=;
 b=cvGvrLqOVQBJQGWSqOOzmJ+m2p9IIMYU+JOlGM/IUsvnbt9n1yE5g4Sl/Fv/aSnFse
 ZLh1xQO/tmqipjekOHLh7JbYrOUOWNvBI6he1u5fcjV8ezh3nWd9N756XkACDzqjiIM1
 zWCZY1IR8xQwPzPDxaF7u5uZyGSEVL04Dl2qJDydvetT8ZbyY7nvM1zAXFw2sK8WO0f4
 fCVF/LDOpb+fURfPsYA69I17Q+oScuQfuu2/nGpEjwbEFsP76eRCXnZRvmmbOaDLOmre
 rj6DNRxu/XmXTXtIAcU5O7oxgNeKq1KzurBXrv7ZhunAXzlQ6MoNvdvn8XWX44oCh03y
 ebaQ==
X-Gm-Message-State: ANhLgQ2tzBkOjMC7i+J+5o87ifIzqRoWLlp7+qCGzIy2yL3+S0pGMhRx
 NOIftQBg84yJpXN6kgnFGHJ/ug==
X-Google-Smtp-Source: ADFU+vvUCTEaE7rTCmfqpNAlHIP1Nzssf0r27kJDIMaQrHcgZSr12IA4FWWsjvLo1vxI4YLA34ar7w==
X-Received: by 2002:a17:90a:33c1:: with SMTP id
 n59mr4125261pjb.4.1585291705258; 
 Thu, 26 Mar 2020 23:48:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g12sm3330621pfo.200.2020.03.26.23.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 4/6] arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
Date: Thu, 26 Mar 2020 23:48:18 -0700
Message-Id: <20200327064820.12602-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234826_125618_9EBB26E7 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jason Gunthorpe <jgg@mellanox.com>, kernel-hardening@lists.openwall.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRhYmxlcyB0byBkb2N1bWVudCB0aGUgY3VycmVudCBiZWhhdmlvciBvZiBSRUFEX0lNUExJ
RVNfRVhFQyBpbgpwcmVwYXJhdGlvbiBmb3IgY2hhbmdpbmcgdGhlIGJlaGF2aW9yIGZvciBib3Ro
IGFybTY0IGFuZCBhcm0uCgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9t
aXVtLm9yZz4KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94LmNvbT4K
UmV2aWV3ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Ci0t
LQogYXJjaC9hcm0va2VybmVsL2VsZi5jICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysr
Ky0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaCB8IDIwICsrKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL2VsZi5jIGIvYXJjaC9hcm0va2VybmVsL2VsZi5j
CmluZGV4IDE4MjQyMjk4MTM4Ni4uNWNjZDRhY2VkNmNjIDEwMDY0NAotLS0gYS9hcmNoL2FybS9r
ZXJuZWwvZWxmLmMKKysrIGIvYXJjaC9hcm0va2VybmVsL2VsZi5jCkBAIC03OCw5ICs3OCwyNyBA
QCB2b2lkIGVsZl9zZXRfcGVyc29uYWxpdHkoY29uc3Qgc3RydWN0IGVsZjMyX2hkciAqeCkKIEVY
UE9SVF9TWU1CT0woZWxmX3NldF9wZXJzb25hbGl0eSk7CiAKIC8qCi0gKiBTZXQgUkVBRF9JTVBM
SUVTX0VYRUMgaWY6Ci0gKiAgLSB0aGUgYmluYXJ5IHJlcXVpcmVzIGFuIGV4ZWN1dGFibGUgc3Rh
Y2sKLSAqICAtIHdlJ3JlIHJ1bm5pbmcgb24gYSBDUFUgd2hpY2ggZG9lc24ndCBzdXBwb3J0IE5Y
LgorICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1wbGllc19leGVjKCkgcmV0
dXJucyBUUlVFIHdpbGwKKyAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNvbmFsaXR5
IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lzaW9uIHByb2Nlc3MgZm9y
IGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDCoCDCoCDCoCDCoCDCoCAg
ICDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCAgICAgfAorICogRUxGOiDCoCDCoCDCoCDC
oCAgICDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgICB8CisgKiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwKKyAqIG1pc3Np
bmcgUFRfR05VX1NUQUNLIHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCAgwqB8CisgKiBQVF9HTlVf
U1RBQ0sgPT0gUldYIMKgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsICDCoHwKKyAqIFBUX0dOVV9T
VEFDSyA9PSBSVyDCoCB8IGV4ZWMtYWxsICDCoHwgZXhlYy1ub25lICB8CisgKgorICogIGV4ZWMt
YWxsICA6IGFsbCBQUk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0
IHdoZW4KKyAqICAgICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5
c3RlbS4KKyAqICBleGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBl
eGVjdXRhYmxlLgorICoKKyAqICAqdGhpcyBjb2x1bW4gaGFzIG5vIGFyY2hpdGVjdHVyYWwgZWZm
ZWN0OiBOWCBtYXJraW5ncyBhcmUgaWdub3JlZCBieQorICogICBoYXJkd2FyZSwgYnV0IG1heSBo
YXZlIGJlaGF2aW9yYWwgZWZmZWN0cyB3aGVuICJ3YW50cyBYIiBjb2xsaWRlcyB3aXRoCisgKiAg
ICJjYW5ub3QgYmUgWCIgY29uc3RyYWludHMgaW4gbWVtb3J5IHBlcm1pc3Npb24gZmxhZ3MsIGFz
IGluCisgKiAgIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTkuR0EzMTU1
QG1lbGxhbm94LmNvbQorICoKICAqLwogaW50IGFybV9lbGZfcmVhZF9pbXBsaWVzX2V4ZWMoaW50
IGV4ZWN1dGFibGVfc3RhY2spCiB7CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNt
L2VsZi5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaAppbmRleCBiNjE4MDE3MjA1YTMu
Ljk4NmVjZjQxZmMwZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaAor
KysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCkBAIC05Niw2ICs5NiwyNiBAQAogICov
CiAjZGVmaW5lIGVsZl9jaGVja19hcmNoKHgpCQkoKHgpLT5lX21hY2hpbmUgPT0gRU1fQUFSQ0g2
NCkKIAorLyoKKyAqIEFuIGV4ZWN1dGFibGUgZm9yIHdoaWNoIGVsZl9yZWFkX2ltcGxpZXNfZXhl
YygpIHJldHVybnMgVFJVRSB3aWxsCisgKiBoYXZlIHRoZSBSRUFEX0lNUExJRVNfRVhFQyBwZXJz
b25hbGl0eSBmbGFnIHNldCBhdXRvbWF0aWNhbGx5LgorICoKKyAqIFRoZSBkZWNpc2lvbiBwcm9j
ZXNzIGZvciBkZXRlcm1pbmluZyB0aGUgcmVzdWx0cyBhcmU6CisgKgorICogwqAgwqAgwqAgwqAg
wqAgwqAgICDCoENQVSo6IHwgYXJtMzLCoCDCoCAgIHwgYXJtNjQgICAgICB8CisgKiBFTEY6IMKg
IMKgIMKgICAgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAg
wqB8CisgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwK
KyAqIG1pc3NpbmcgUFRfR05VX1NUQUNLIHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCB8Cisg
KiBQVF9HTlVfU1RBQ0sgPT0gUldYIMKgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIHwKKyAq
IFBUX0dOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSAgfCBleGVjLW5vbmUgIHwKKyAqCisg
KiAgZXhlYy1hbGwgIDogYWxsIFBST1RfUkVBRCB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxl
LCBleGNlcHQgd2hlbgorICogICAgICAgICAgICAgIGJhY2tlZCBieSBmaWxlcyBvbiBhIG5vZXhl
Yy1maWxlc3lzdGVtLgorICogIGV4ZWMtbm9uZSA6IG9ubHkgUFJPVF9FWEVDIHVzZXIgbWFwcGlu
Z3MgYXJlIGV4ZWN1dGFibGUuCisgKgorICogICphbGwgYXJtNjQgQ1BVcyBzdXBwb3J0IE5YLCBz
byB0aGVyZSBpcyBubyAibGFja3MgTlgiIGNvbHVtbi4KKyAqCisgKi8KICNkZWZpbmUgZWxmX3Jl
YWRfaW1wbGllc19leGVjKGV4LHN0aykJKHN0ayAhPSBFWFNUQUNLX0RJU0FCTEVfWCkKIAogI2Rl
ZmluZSBDT1JFX0RVTVBfVVNFX1JFR1NFVAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
