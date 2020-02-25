Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90916B8E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6V4hGdkXO39cpZgM3Usb0bpvTRWhmJtC32I0YgAwlo=; b=gEB86GVhvudgcQ
	KXqAjw01RmA3Fiw9qFfbN7l1VLSIUEdeEF+76pTdLRb05DmKkRmZYgNO5WQNtXFgWKYowl/xN7xxV
	akm+1rlqMHIOk69jh0kGEPeWx/T9rG0hKsQaN8XG2OpG4mzYKD4pERQVGHjaXM/wE3XDNkJuGiToS
	i7KPU0Njj+03sjUyWvoS1EQd6wxoamS4dpRJE91mDKqHA+0DC8SzXUM6JF7ZL7KmygIYB6F3xVeo0
	rIIxBeNYKjXWWRBjSH0q30kz5jhxM136H3DLcofo83RRs+JO5tKROlCBdb/ofNM3Vs0SHEwDxUbIy
	p8wfrExtO1HaaqLYgf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SYO-0007iS-3C; Tue, 25 Feb 2020 05:14:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWy-0006aq-2J
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id u12so6271795pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QU6tarMcleK7JZEKv6NGFcAaaMn8J85o/O86pl2boI8=;
 b=DcHSUo+5uhomdqc7fCqlU3p2aWJnrlaigJaUEKSmf+9FQuRxJNZKzo7AgMVRkj+enj
 PYAibvmj1Z4N2moDH7SYmegC9w9CQ+j3GWVpJV9v6+s1bSScng2s38DzUzJ80Wqsf+5R
 8k71AqQfgLS9wzWOi0XFRsHjemnvNdL8m/Jzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QU6tarMcleK7JZEKv6NGFcAaaMn8J85o/O86pl2boI8=;
 b=HpUHZe4lWFwYRF6B+tqJau7qNOoTeQSGIepKdUWbKgU02fF8eJD+C8YR5Na8pltPYh
 30yf4vE9UPSn4D9PW7KfCUYbVXf34NsNENPUyPdjExBJd0iWFjrR/FeUzFA3frhwjJF3
 ZOMfk70cn/HdP2tDQ2x+RRvTS99GsFWhvbL/FnuAfKdeMh8AbVLNh+r0fHFdCZtJc+wF
 j08Nxj2fYkAZd6oPx4JZ2o4Waf9c/aIVRPyB3XrNQvY8sgPrX8iGorjYaHu7OLEMDVkA
 WpyB/vbVrIZ7sUHj9gJL/ZD0S9vdKqn/yVfdIzG8oKwX5TiCYLnz17nUj4zlmubzKqFI
 q3Cg==
X-Gm-Message-State: APjAAAUN/b/aLRpRUAwJubabvbpQBs0Yvp1XXvmKZhJAIyIOHlhP6BQp
 nXabc+LAcuqmfn5TvTh2uRu8pQ==
X-Google-Smtp-Source: APXvYqzirNh6rCEGPBMMTd96cFvNHpeUqARTXcwmJmqfs1UtEUIGNuIRJqZRDNbnRdSDNFi3a6YNbQ==
X-Received: by 2002:aa7:9e0b:: with SMTP id y11mr57940549pfq.182.1582607595420; 
 Mon, 24 Feb 2020 21:13:15 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id s14sm14472732pgv.74.2020.02.24.21.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:11 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 4/6] arm32/64, elf: Add tables to document READ_IMPLIES_EXEC
Date: Mon, 24 Feb 2020 21:13:05 -0800
Message-Id: <20200225051307.6401-5-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211316_103795_710D479A 
X-CRM114-Status: GOOD (  12.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

QWRkIHRhYmxlcyB0byBkb2N1bWVudCB0aGUgY3VycmVudCBiZWhhdmlvciBvZiBSRUFEX0lNUExJ
RVNfRVhFQyBpbgpwcmVwYXJhdGlvbiBmb3IgY2hhbmdpbmcgdGhlIGJlaGF2aW9yIGZvciBib3Ro
IGFybTY0IGFuZCBhcm0uCgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9t
aXVtLm9yZz4KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdnQG1lbGxhbm94LmNvbT4K
UmV2aWV3ZWQtYnk6IENhdGFsaW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+Ci0t
LQogYXJjaC9hcm0va2VybmVsL2VsZi5jICAgICAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysr
Ky0tLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaCB8IDIwICsrKysrKysrKysrKysrKysr
KysrCiAyIGZpbGVzIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm0va2VybmVsL2VsZi5jIGIvYXJjaC9hcm0va2VybmVsL2VsZi5j
CmluZGV4IDE4MjQyMjk4MTM4Ni4uMmY2OWNmOTc4ZmUzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9r
ZXJuZWwvZWxmLmMKKysrIGIvYXJjaC9hcm0va2VybmVsL2VsZi5jCkBAIC03OCw5ICs3OCwyNyBA
QCB2b2lkIGVsZl9zZXRfcGVyc29uYWxpdHkoY29uc3Qgc3RydWN0IGVsZjMyX2hkciAqeCkKIEVY
UE9SVF9TWU1CT0woZWxmX3NldF9wZXJzb25hbGl0eSk7CiAKIC8qCi0gKiBTZXQgUkVBRF9JTVBM
SUVTX0VYRUMgaWY6Ci0gKiAgLSB0aGUgYmluYXJ5IHJlcXVpcmVzIGFuIGV4ZWN1dGFibGUgc3Rh
Y2sKLSAqICAtIHdlJ3JlIHJ1bm5pbmcgb24gYSBDUFUgd2hpY2ggZG9lc24ndCBzdXBwb3J0IE5Y
LgorICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1wbGllc19leGVjKCkgcmV0
dXJucyBUUlVFIHdpbGwKKyAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNvbmFsaXR5
IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lzaW9uIHByb2Nlc3MgZm9y
IGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDCoCDCoCDCoCDCoCDCoCDC
oENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCAgICAgfAorICogRUxGOiDCoCDCoCDCoCDCoCDC
oCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgICB8CisgKiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwKKyAqIG1pc3NpbmcgR05VX1NU
QUNLIHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCAgwqB8CisgKiBHTlVfU1RBQ0sgPT0gUldYIMKg
fCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsICDCoHwKKyAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4
ZWMtYWxsICDCoHwgZXhlYy1ub25lICB8CisgKgorICogIGV4ZWMtYWxsICA6IGFsbCBQUk9UX1JF
QUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0IHdoZW4KKyAqICAgICAgICAg
ICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5c3RlbS4KKyAqICBleGVjLW5v
bmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxlLgorICoKKyAq
ICAqdGhpcyBjb2x1bW4gaGFzIG5vIGFyY2hpdGVjdHVyYWwgZWZmZWN0OiBOWCBtYXJraW5ncyBh
cmUgaWdub3JlZCBieQorICogICBoYXJkd2FyZSwgYnV0IG1heSBoYXZlIGJlaGF2aW9yYWwgZWZm
ZWN0cyB3aGVuICJ3YW50cyBYIiBjb2xsaWRlcyB3aXRoCisgKiAgICJjYW5ub3QgYmUgWCIgY29u
c3RyYWludHMgaW4gbWVtb3J5IHBlcm1pc3Npb24gZmxhZ3MsIGFzIGluCisgKiAgIGh0dHBzOi8v
bGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTkuR0EzMTU1QG1lbGxhbm94LmNvbQorICoK
ICAqLwogaW50IGFybV9lbGZfcmVhZF9pbXBsaWVzX2V4ZWMoaW50IGV4ZWN1dGFibGVfc3RhY2sp
CiB7CmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oIGIvYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9lbGYuaAppbmRleCBiNjE4MDE3MjA1YTMuLjdmYzc3OWUzZjFlYyAxMDA2
NDQKLS0tIGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaAorKysgYi9hcmNoL2FybTY0L2lu
Y2x1ZGUvYXNtL2VsZi5oCkBAIC05Niw2ICs5NiwyNiBAQAogICovCiAjZGVmaW5lIGVsZl9jaGVj
a19hcmNoKHgpCQkoKHgpLT5lX21hY2hpbmUgPT0gRU1fQUFSQ0g2NCkKIAorLyoKKyAqIEFuIGV4
ZWN1dGFibGUgZm9yIHdoaWNoIGVsZl9yZWFkX2ltcGxpZXNfZXhlYygpIHJldHVybnMgVFJVRSB3
aWxsCisgKiBoYXZlIHRoZSBSRUFEX0lNUExJRVNfRVhFQyBwZXJzb25hbGl0eSBmbGFnIHNldCBh
dXRvbWF0aWNhbGx5LgorICoKKyAqIFRoZSBkZWNpc2lvbiBwcm9jZXNzIGZvciBkZXRlcm1pbmlu
ZyB0aGUgcmVzdWx0cyBhcmU6CisgKgorICogwqAgwqAgwqAgwqAgwqAgwqDCoENQVSo6IHwgYXJt
MzLCoCDCoCAgIHwgYXJtNjQgICAgICB8CisgKiBFTEY6IMKgIMKgIMKgIMKgIMKgIMKgIMKgfCDC
oCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqB8CisgKiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwKKyAqIG1pc3NpbmcgR05VX1NUQUNLIHwgZXhl
Yy1hbGwgwqAgfCBleGVjLWFsbCDCoCB8CisgKiBHTlVfU1RBQ0sgPT0gUldYIMKgfCBleGVjLWFs
bCDCoCB8IGV4ZWMtYWxsIMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSAg
fCBleGVjLW5vbmUgIHwKKyAqCisgKiAgZXhlYy1hbGwgIDogYWxsIFBST1RfUkVBRCB1c2VyIG1h
cHBpbmdzIGFyZSBleGVjdXRhYmxlLCBleGNlcHQgd2hlbgorICogICAgICAgICAgICAgIGJhY2tl
ZCBieSBmaWxlcyBvbiBhIG5vZXhlYy1maWxlc3lzdGVtLgorICogIGV4ZWMtbm9uZSA6IG9ubHkg
UFJPVF9FWEVDIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUuCisgKgorICogICphbGwgYXJt
NjQgQ1BVcyBzdXBwb3J0IE5YLCBzbyB0aGVyZSBpcyBubyAibGFja3MgTlgiIGNvbHVtbi4KKyAq
CisgKi8KICNkZWZpbmUgZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LHN0aykJKHN0ayAhPSBFWFNU
QUNLX0RJU0FCTEVfWCkKIAogI2RlZmluZSBDT1JFX0RVTVBfVVNFX1JFR1NFVAotLSAKMi4yMC4x
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
