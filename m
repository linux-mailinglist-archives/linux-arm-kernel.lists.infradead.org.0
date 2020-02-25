Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2165516B8E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:15:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmdIdE7J75w/wL6MMwhqD+VMoKQgriCLh4uLnS34zyg=; b=rP2LKrvIL7X1ZX
	GvfoTFRCNEmfg4C/EuJRDjx/0xNPmiJKIn3SmgE7MGa3CG4iMXZ7mXhIAV0g1/BF4p1/pKZa2zmoT
	wj1SjbTjHVoj1uQL6vw3KsyZnPbq3+UK9xg3t4ZYkZmWtrVNnZmFCTOGTpbPvouX5WC9QlwJJyyor
	3UEaAv28W4KzO4lj8sR5uBqCXP8kzW1NERFvxTZsQPhS1HHa4cEXZMF6JeV7vCrvhAcrutrKtr3oj
	kpzXffCl0kjDWBprMoge6PEtiZ6xpMCS9xgi+NivaWyhz7BVmh/r7nfrUsSigx2nZKYRj3SVDCnMG
	2DUTZK6BSAjHv10v816A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SYi-00081F-Oc; Tue, 25 Feb 2020 05:15:04 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWz-0006bu-P2
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:19 +0000
Received: by mail-pg1-x542.google.com with SMTP id d6so6294812pgn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2lIWrB2rl2fls1DP3gLk6fTzwbihtKCjsTFZYdDbGQ4=;
 b=DPDiTUn9mHAJPUVeuO6O/4+ZWGT7CXMflUkvN2DOGwNzNVpUoWmOyBDAPPODhXWKny
 NAGKI6c4hPVF4ebdPpwklU4evW4Jv0T46fb90WvXFEfUBpzH+zSH2ffMjDvLcQk8cmtw
 yow7naoX3eK49OZ2mSrrxi/CmK2iPRw64SR2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2lIWrB2rl2fls1DP3gLk6fTzwbihtKCjsTFZYdDbGQ4=;
 b=Cd/PzsLObq+7lTt7pkE8fHxP6ynHayJUyG3JGtXe4L3x1HjJ3Y/4Sgw5mRLoRs05+f
 51PEyNT+Ny39xow9p4K4JdEWHMOXEUH4jeDPeXijTOk4vm4r9DN/iw2rsgC4IbxnZ7+v
 2xueRgF6Ruvmn4tuoJAZXov8YCJMmTZdCZVWgt4ECU2macckcAmudAs82jsdAj1b4BB/
 t/EVcenmjEgY+ZwSlTCSkgAPbbqA6rf2pSiCdiqjKGofk6fV13cN3KJIkJeuqi19w4Px
 tKXjCefu+QJT/lG9w7XwgiLLx0+ObxhUZR16GvPKJ1mqvDD9aW9ZuQ4izxsmPS8HITBP
 uRfQ==
X-Gm-Message-State: APjAAAX6FINLEZ2zxxYiNoAsfYB6atn8Kq2RuQHQmy2nqVdjiZsLXq3h
 kRdQ9gOrqeDpW0uJuVZeZ7QYjQ==
X-Google-Smtp-Source: APXvYqypIEhUi0EJIgMKTYt0m4YMRHeIhF58LfEi+94S8qvARJ0jimCVUlM03w63T/gtF6c3CH2Xsg==
X-Received: by 2002:aa7:8101:: with SMTP id b1mr56045649pfi.105.1582607596919; 
 Mon, 24 Feb 2020 21:13:16 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 23sm15084529pfh.28.2020.02.24.21.13.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:15 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 5/6] arm32/64,
 elf: Split READ_IMPLIES_EXEC from executable GNU_STACK
Date: Mon, 24 Feb 2020 21:13:06 -0800
Message-Id: <20200225051307.6401-6-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211317_838401_2630AF55 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

VGhlIFJFQURfSU1QTElFU19FWEVDIHdvcmstYXJvdW5kIHdhcyBkZXNpZ25lZCBmb3Igb2xkIHRv
b2xjaGFpbnMgdGhhdApsYWNrZWQgdGhlIEVMRiBQVF9HTlVfU1RBQ0sgbWFya2luZyB1bmRlciB0
aGUgYXNzdW1wdGlvbiB0aGF0IHRvb2xjaGFpbnMKdGhhdCBjb3VsZG4ndCBzcGVjaWZ5IGV4ZWN1
dGFibGUgcGVybWlzc2lvbiBmbGFncyBmb3IgdGhlIHN0YWNrIG1heSBub3QKa25vdyBob3cgdG8g
ZG8gaXQgY29ycmVjdGx5IGZvciBhbnkgbWVtb3J5IHJlZ2lvbi4KClRoaXMgbG9naWMgaXMgc2Vu
c2libGUgZm9yIGhhdmluZyBhbmNpZW50IGJpbmFyaWVzIGNvZXhpc3QgaW4gYSBzeXN0ZW0Kd2l0
aCBwb3NzaWJseSBOWCBtZW1vcnksIGJ1dCB3YXMgaW1wbGVtZW50ZWQgaW4gYSB3YXkgdGhhdCBl
cXVhdGVkIGhhdmluZwphIFBUX0dOVV9TVEFDSyBtYXJrZWQgZXhlY3V0YWJsZSBhcyBiZWluZyBh
cyAiYnJva2VuIiBhcyBsYWNraW5nIHRoZQpQVF9HTlVfU1RBQ0sgbWFya2luZyBlbnRpcmVseS4g
VGhpbmdzIGxpa2UgdW5tYXJrZWQgYXNzZW1ibHkgYW5kIHN0YWNrCnRyYW1wb2xpbmVzIG1heSBj
YXVzZSBQVF9HTlVfU1RBQ0sgdG8gbmVlZCBhbiBleGVjdXRhYmxlIGJpdCwgYnV0IHRoZXkKZG8g
bm90IGltcGx5IGFsbCBtYXBwaW5ncyBtdXN0IGJlIGV4ZWN1dGFibGUuCgpUaGlzIGNvbmZ1c2lv
biBoYXMgbGVkIHRvIHNpdHVhdGlvbnMgd2hlcmUgbW9kZXJuIHByb2dyYW1zIHdpdGggZXhwbGlj
aXRseQptYXJrZWQgZXhlY3V0YWJsZSBzdGFjayBhcmUgZm9yY2VkIGludG8gdGhlIFJFQURfSU1Q
TElFU19FWEVDIHN0YXRlIHdoZW4Kbm8gc3VjaCB0aGluZyBpcyBuZWVkZWQuIChBbmQgbGVhZHMg
dG8gdW5leHBlY3RlZCBmYWlsdXJlcyB3aGVuIG1tYXAoKWluZwpyZWdpb25zIG9mIGRldmljZSBk
cml2ZXIgbWVtb3J5IHRoYXQgd2lzaCB0byBkaXNhbGxvdyBWTV9FWEVDWzFdLikKCkluIGxvb2tp
bmcgZm9yIG90aGVyIHJlYXNvbnMgZm9yIHRoZSBSRUFEX0lNUExJRVNfRVhFQyBiZWhhdmlvciwg
SmFubgpIb3JuIG5vdGVkIHRoYXQgZ2xpYmMgdGhyZWFkIHN0YWNrcyBoYXZlIGFsd2F5cyBiZWVu
IG1hcmtlZCBSV1ggKHVudGlsCjIwMDMgd2hlbiB0aGV5IHN0YXJ0ZWQgdHJhY2tpbmcgdGhlIFBU
X0dOVV9TVEFDSyBmbGFnIGluc3RlYWRbMl0pLiBBbmQKbXVzbCBkb2Vzbid0IHN1cHBvcnQgZXhl
Y3V0YWJsZSBzdGFja3MgYXQgYWxsWzNdLiBBcyBzdWNoLCBubyBicmVha2FnZQpmb3IgbXVsdGl0
aHJlYWRlZCBhcHBsaWNhdGlvbnMgaXMgZXhwZWN0ZWQgZnJvbSB0aGlzIGNoYW5nZS4KClRoaXMg
Y2hhbmdlcyBhcm0zMiBhbmQgYXJtNjQgY29tcGF0IHRvZ2V0aGVyLCB0byBrZWVwIGJlaGF2aW9y
IHRoZSBzYW1lLgoKWzFdIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTku
R0EzMTU1QG1lbGxhbm94LmNvbQpbMl0gaHR0cHM6Ly9zb3VyY2V3YXJlLm9yZy9naXQvP3A9Z2xp
YmMuZ2l0O2E9Y29tbWl0ZGlmZjtoPTU0ZWUxNGIzODgyClszXSBodHRwczovL2xrbWwua2VybmVs
Lm9yZy9yLzIwMTkwNDIzMTkyNTM0LkdOMjM1OTlAYnJpZ2h0cmFpbi5hZXJpZmFsLmN4CgpTdWdn
ZXN0ZWQtYnk6IEhlY3RvciBNYXJjby1HaXNiZXJ0IDxoZWNtYXJnaUB1cHYuZXM+ClNpZ25lZC1v
ZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgpSZXZpZXdlZC1ieTogSmFz
b24gR3VudGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgpSZXZpZXdlZC1ieTogQ2F0YWxpbiBNYXJp
bmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4KLS0tCiBhcmNoL2FybS9rZXJuZWwvZWxmLmMg
ICAgICAgIHwgNSArKystLQogYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaCB8IDUgKysrLS0K
IDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtL2tlcm5lbC9lbGYuYyBiL2FyY2gvYXJtL2tlcm5lbC9lbGYuYwppbmRl
eCAyZjY5Y2Y5NzhmZTMuLjY5NjVhNjczYTE0MSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0va2VybmVs
L2VsZi5jCisrKyBiL2FyY2gvYXJtL2tlcm5lbC9lbGYuYwpAQCAtODcsMTIgKzg3LDEzIEBAIEVY
UE9SVF9TWU1CT0woZWxmX3NldF9wZXJzb25hbGl0eSk7CiAgKiBFTEY6IMKgIMKgIMKgIMKgIMKg
IMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgIHwKICAqIC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfAogICogbWlzc2luZyBHTlVfU1RB
Q0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsICDCoHwKLSAqIEdOVV9TVEFDSyA9PSBSV1ggwqB8
IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgIMKgfAorICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhl
Yy1hbGwgwqAgfCBleGVjLXN0YWNrwqB8CiAgKiBHTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLWFs
bCAgwqB8IGV4ZWMtbm9uZSAgfAogICoKICAqICBleGVjLWFsbCAgOiBhbGwgUFJPVF9SRUFEIHVz
ZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4Y2VwdCB3aGVuCiAgKiAgICAgICAgICAgICAg
YmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZpbGVzeXN0ZW0uCiAgKiAgZXhlYy1ub25lIDog
b25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZS4KKyAqICBleGVjLXN0
YWNrOiBvbmx5IHRoZSBzdGFjayBhbmQgUFJPVF9FWEVDIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1
dGFibGUuCiAgKgogICogICp0aGlzIGNvbHVtbiBoYXMgbm8gYXJjaGl0ZWN0dXJhbCBlZmZlY3Q6
IE5YIG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CiAgKiAgIGhhcmR3YXJlLCBidXQgbWF5IGhhdmUg
YmVoYXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRzIFgiIGNvbGxpZGVzIHdpdGgKQEAgLTEwMiw3
ICsxMDMsNyBAQCBFWFBPUlRfU1lNQk9MKGVsZl9zZXRfcGVyc29uYWxpdHkpOwogICovCiBpbnQg
YXJtX2VsZl9yZWFkX2ltcGxpZXNfZXhlYyhpbnQgZXhlY3V0YWJsZV9zdGFjaykKIHsKLQlpZiAo
ZXhlY3V0YWJsZV9zdGFjayAhPSBFWFNUQUNLX0RJU0FCTEVfWCkKKwlpZiAoZXhlY3V0YWJsZV9z
dGFjayA9PSBFWFNUQUNLX0RFRkFVTFQpCiAJCXJldHVybiAxOwogCWlmIChjcHVfYXJjaGl0ZWN0
dXJlKCkgPCBDUFVfQVJDSF9BUk12NikKIAkJcmV0dXJuIDE7CmRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2VsZi5oIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaAppbmRl
eCA3ZmM3NzllM2YxZWMuLjAzYWRhMjk5ODRhNyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9lbGYuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oCkBAIC0xMDYs
MTcgKzEwNiwxOCBAQAogICogRUxGOiDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAg
wqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfAogICogLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLXwtLS0tLS0tLS0tLS18CiAgKiBtaXNzaW5nIEdOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwg
ZXhlYy1hbGwgwqAgfAotICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVj
LWFsbCDCoCB8CisgKiBHTlVfU1RBQ0sgPT0gUldYIMKgfCBleGVjLXN0YWNrIHwgZXhlYy1zdGFj
ayB8CiAgKiBHTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLW5vbmUgIHwgZXhlYy1ub25lICB8CiAg
KgogICogIGV4ZWMtYWxsICA6IGFsbCBQUk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0
YWJsZSwgZXhjZXB0IHdoZW4KICAqICAgICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBu
b2V4ZWMtZmlsZXN5c3RlbS4KICAqICBleGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1h
cHBpbmdzIGFyZSBleGVjdXRhYmxlLgorICogIGV4ZWMtc3RhY2s6IG9ubHkgdGhlIHN0YWNrIGFu
ZCBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZS4KICAqCiAgKiAgKmFsbCBh
cm02NCBDUFVzIHN1cHBvcnQgTlgsIHNvIHRoZXJlIGlzIG5vICJsYWNrcyBOWCIgY29sdW1uLgog
ICoKICAqLwotI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsc3RrKQkoc3RrICE9IEVY
U1RBQ0tfRElTQUJMRV9YKQorI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsc3RrKQko
c3RrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogI2RlZmluZSBDT1JFX0RVTVBfVVNFX1JFR1NFVAog
I2RlZmluZSBFTEZfRVhFQ19QQUdFU0laRQlQQUdFX1NJWkUKLS0gCjIuMjAuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
