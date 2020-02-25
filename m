Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F7616B8D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:13:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUQ15I7ispokS1ot/j1nX8jkIZGaWY4d6jC8meirghA=; b=C6sv+8mUJTygWS
	xwGSh9elOYd7RgOgpnFyQekD2yOgIIxLEG1vPtZeiYknEH72GP2Y+tSzMfNJT56Tmg40/dmbTYIZY
	LGxOTYQoZEuVSfwUik1pJYjm89F3gcHc0oCIXWImwsuFhJwxP1zllMvB/90I//htfELLtLTGCqNJU
	mCRfjQywF199Vss9yORMJW/EgvPkYRTRnBCIPPqaS25MegaoqlPvOERMCZ6VDRTOcVIx2CDipap5T
	zy+wbMbsJ0GYdjZfmU9vr7u2NPV0iRIXYbj4DI6cuL9sFjNnHjrQN1h/SdaBbX6TyF32030guVpHm
	E+uTr94NRHYaicXYJPkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SX7-0006bW-E1; Tue, 25 Feb 2020 05:13:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWw-0006Zs-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so6301662pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZNLE8qanU9tB+qprhCqb5JhCmvZIHAS4t1qFulujc3c=;
 b=gdPEq+JjTnrTNZqPxDtXj3Xt27Obpw016njmHmr0gwgR2L0EhflW7LupjRtFxw9Gzn
 d6sOQ9k8yYEGUOhzaE7ZBqcsy7EJW5gT+CjF9zvaZkZkitVMHy3UQiBPck0XAuOlr352
 foYbhGhFwUKbexhzLsmgLzdkttIU4h/cxj6PY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZNLE8qanU9tB+qprhCqb5JhCmvZIHAS4t1qFulujc3c=;
 b=SUMAKuZkI456EF3euHMSykYXaejxBW7P8Ct9OG3Xt9GLIpkERN6i/4FLBShTPX3LJ0
 CgDlVv//i/PDVOJS0Vn6j0o4twELJcbz7x43sLJJVyr7l38bbe++Kwc1Ll9rmJ+RPYnJ
 RrdUqcCFQpsIHz9bFXHIYCj0o0Ac9FalFb28bkJrg6+LdSrMKOPpGUIkzqyiFqXs0hop
 M7144dL9A5I5lxw97LbtK9THKOXd9sNN66j6LXOqMetw8gvQFxA1Zh9TVf/iAvArnDAq
 YnfA3oO3a6l2KVgMSycw0ILkWU8Hz286FvOQAymsp3EfR/8X4L+Z1ndm8VYxN/KqSFwi
 ekfQ==
X-Gm-Message-State: APjAAAX32rf+3Ue8+dypUglRCT2/Yw4iBvi/Lvbc+upZImLZxsCSLCvs
 8UV3+/L3Gcyp4nHUUHu0RAniBw==
X-Google-Smtp-Source: APXvYqzhhwjL9Yg+ZfnqgfEq+io+9jGp/eGcRcIoZfPqoFZ+RQ/M8xfh20Jez7PEOAC4j9RETiwkqw==
X-Received: by 2002:aa7:8703:: with SMTP id b3mr53336326pfo.67.1582607593189; 
 Mon, 24 Feb 2020 21:13:13 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z13sm14462509pge.29.2020.02.24.21.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:11 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 3/6] x86/elf: Disable automatic READ_IMPLIES_EXEC for
 64-bit address spaces
Date: Mon, 24 Feb 2020 21:13:04 -0800
Message-Id: <20200225051307.6401-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211314_884170_AB11AA33 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

V2l0aCBtb2Rlcm4geDg2IDY0LWJpdCBlbnZpcm9ubWVudHMsIHRoZXJlIHNob3VsZCBuZXZlciBi
ZSBhIG5lZWQgZm9yCmF1dG9tYXRpYyBSRUFEX0lNUExJRVNfRVhFQywgYXMgdGhlIGFyY2hpdGVj
dHVyZSBpcyBpbnRlbmRlZCB0byBhbHdheXMKYmUgZXhlY3V0ZS1iaXQgYXdhcmUgKGFzIGluLCB0
aGUgZGVmYXVsdCBtZW1vcnkgcHJvdGVjdGlvbiBzaG91bGQgYmUgTlgKdW5sZXNzIGEgcmVnaW9u
IGV4cGxpY2l0bHkgcmVxdWVzdHMgdG8gYmUgZXhlY3V0YWJsZSkuCgpUaGVyZSB3ZXJlIHZlcnkg
b2xkIHg4Nl82NCBzeXN0ZW1zIHRoYXQgbGFja2VkIHRoZSBOWCBiaXQsIGJ1dCBmb3IgdGhvc2Us
CnRoZSBOWCBiaXQgaXMsIG9idmlvdXNseSwgdW5lbmZvcmNlYWJsZSwgc28gdGhlc2UgY2hhbmdl
cyBzaG91bGQgaGF2ZQpubyBpbXBhY3Qgb24gdGhlbS4KClN1Z2dlc3RlZC1ieTogSGVjdG9yIE1h
cmNvLUdpc2JlcnQgPGhlY21hcmdpQHVwdi5lcz4KU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+ClJldmlld2VkLWJ5OiBKYXNvbiBHdW50aG9ycGUgPGpnZ0Bt
ZWxsYW5veC5jb20+Ci0tLQogYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggfCA0ICsrLS0KIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYu
aAppbmRleCBhNzAzNTA2NTM3N2MuLmM5YjdiZTBiY2FkMyAxMDA2NDQKLS0tIGEvYXJjaC94ODYv
aW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKQEAgLTI4
Nyw3ICsyODcsNyBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7CiAgKiDCoCDCoCDCoCDCoCDCoCDC
oCDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8IGhhcyBOWCwgeDg2
XzY0IHwKICAqIEVMRjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0t
LS0tLS0tLS0tfAotICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxs
IMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogbWlzc2luZyBHTlVfU1RBQ0sg
fCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1ub25lwqAgwqAgwqAg
fAogICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1zdGFjayB8IGV4ZWMtc3RhY2sgwqAgwqAg
wqAgfCBleGVjLXN0YWNrIMKgIMKgIHwKICAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9u
ZSDCoHwgZXhlYy1ub25lIMKgIMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8CiAgKgpAQCAt
MzAzLDcgKzMwMyw3IEBAIGV4dGVybiB1MzIgZWxmX2h3Y2FwMjsKICAqCiAgKi8KICNkZWZpbmUg
ZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LCBleGVjdXRhYmxlX3N0YWNrKQlcCi0JKGV4ZWN1dGFi
bGVfc3RhY2sgPT0gRVhTVEFDS19ERUZBVUxUKQorCShtbWFwX2lzX2lhMzIoKSAmJiBleGVjdXRh
YmxlX3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogc3RydWN0IHRhc2tfc3RydWN0OwogCi0t
IAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
