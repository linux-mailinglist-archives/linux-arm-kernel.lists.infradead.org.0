Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBB916B8DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PpO8TkNGRZSHHS1/KHAwGBYtYvGB6ZmRVToNk2o6Hhk=; b=msc96tXMZVx58h
	xInIR82cqMeDmJvRY5BQIubIa4kKzH7p6ibpxuNAseXfVzALh6gO2fiHym5Pr7Zf75LkmT2kAGfDy
	yLSS5bBydoKmb4GgqdkQUQte2KLXpcChYt37ssdQMRMJXpf7D8MgwjQqf5rOB0oys0APrkSOEjBJ+
	uFFFEoaq29/sQ6XmEJfksxR1mnu57TCM9fqdiT3NXKUNHa/VEfQ9vYU+qjTzNKtSU8UGj01Bk1rRH
	ErU66HMDgQLlAmYOo/UHZdZial6H0V4bYnecPSMVxJdi0qF4W8Hj0iTELnjSt0hOaIyS7YtaChXgB
	PxNVRzJVxzKE7TOVnIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SXh-00072h-EM; Tue, 25 Feb 2020 05:14:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWw-0006Zw-TE
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:17 +0000
Received: by mail-pg1-x543.google.com with SMTP id y30so6259045pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xtFhZmUGg25ckYL+Nj/gQvxOaU7nm2sSSfbBJDheRi8=;
 b=cYoKF8t4ZKo9npvA7QP9XflS8FuxXhlRBK6xAEmgOI8SDB3qsyrUamZa+IZxIQeHEl
 hic9kuq1J+X/MvlwBhVTB5UE5AibQJRe0f4VCVIgnILVgGTTdcdSXyNKEVybEbiEpVNI
 KIqP3vXsNrYdk9Oin86blNR1kimWfFn+e1wBs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xtFhZmUGg25ckYL+Nj/gQvxOaU7nm2sSSfbBJDheRi8=;
 b=HNCfUDDm0y6wkAEoZhpAGVJmTr5/Mstx7oiXIgU8AF7UUfDfT3A0zFg26E1TB9xiSh
 Z8Xdgi5LgBXDKEpuN2L/HTqeDljv9DcraUdoDJJjsoZKuSiFLfoKE/TBQnrT8rqCVnlF
 K0doJxJx/VE0T606uk+ctM7OU9shduqNs6nv/kQul7sVGbbNt7o0x4Eim73hx6j+6WSj
 k/7CPCYZLtSumes9Us9oO54CvmiBv6/E7qRJkKHm+5/+1dvdkoKHvslstvDx7JA9h8L1
 Ngk2mn4SjUCVrsSKevDNJbt5TGRhyHUtGtcHRxsKXpRv0ycNcOa43gwH5/KXQixGKkXx
 5KXg==
X-Gm-Message-State: APjAAAWm/Q/AR8+SmxARVRb5bDqk+HGLT691q5ZJL/i066zbKI3YZhUV
 +8NP+2cWylYOmjj2oFjE7aBcGQ==
X-Google-Smtp-Source: APXvYqwODtU4FUfT5WxcMcB9c17YZwUi3dfzZeLH4lgWsLytNLFPaPcQmbSyyLc8Ik4xhECJhuDusg==
X-Received: by 2002:a63:d40d:: with SMTP id a13mr57785788pgh.9.1582607593779; 
 Mon, 24 Feb 2020 21:13:13 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c19sm15219696pfc.144.2020.02.24.21.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:11 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 2/6] x86/elf: Split READ_IMPLIES_EXEC from executable
 GNU_STACK
Date: Mon, 24 Feb 2020 21:13:03 -0800
Message-Id: <20200225051307.6401-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211314_941264_15501F69 
X-CRM114-Status: GOOD (  14.10  )
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
aHJlYWRlZCBhcHBsaWNhdGlvbnMgaXMgZXhwZWN0ZWQgZnJvbSB0aGlzIGNoYW5nZS4KClsxXSBo
dHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMTkwNDE4MDU1NzU5LkdBMzE1NUBtZWxsYW5veC5j
b20KWzJdIGh0dHBzOi8vc291cmNld2FyZS5vcmcvZ2l0Lz9wPWdsaWJjLmdpdDthPWNvbW1pdGRp
ZmY7aD01NGVlMTRiMzg4MgpbM10gaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDQyMzE5
MjUzNC5HTjIzNTk5QGJyaWdodHJhaW4uYWVyaWZhbC5jeAoKU3VnZ2VzdGVkLWJ5OiBIZWN0b3Ig
TWFyY28tR2lzYmVydCA8aGVjbWFyZ2lAdXB2LmVzPgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sg
PGtlZXNjb29rQGNocm9taXVtLm9yZz4KUmV2aWV3ZWQtYnk6IEphc29uIEd1bnRob3JwZSA8amdn
QG1lbGxhbm94LmNvbT4KLS0tCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaCB8IDUgKysrLS0K
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9l
bGYuaAppbmRleCA3MzNmNjljMmIwNTMuLmE3MDM1MDY1Mzc3YyAxMDA2NDQKLS0tIGEvYXJjaC94
ODYvaW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKQEAg
LTI4OCwxMiArMjg4LDEzIEBAIGV4dGVybiB1MzIgZWxmX2h3Y2FwMjsKICAqIEVMRjogwqAgwqAg
wqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tfAogICogbWlzc2lu
ZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1h
bGwgwqAgwqAgwqAgfAotICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVj
LWFsbCDCoCDCoCDCoCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBS
V1ggwqB8IGV4ZWMtc3RhY2sgfCBleGVjLXN0YWNrIMKgIMKgIMKgIHwgZXhlYy1zdGFjayDCoCDC
oCB8CiAgKiBHTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLW5vbmUgwqB8IGV4ZWMtbm9uZSDCoCDC
oCDCoCDCoHwgZXhlYy1ub25lIMKgIMKgIMKgfAogICoKICAqICBleGVjLWFsbCAgOiBhbGwgUFJP
VF9SRUFEIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4Y2VwdCB3aGVuCiAgKiAgICAg
ICAgICAgICAgYmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZpbGVzeXN0ZW0uCiAgKiAgZXhl
Yy1ub25lIDogb25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZS4KKyAq
ICBleGVjLXN0YWNrOiBvbmx5IHRoZSBzdGFjayBhbmQgUFJPVF9FWEVDIHVzZXIgbWFwcGluZ3Mg
YXJlIGV4ZWN1dGFibGUuCiAgKgogICogICp0aGlzIGNvbHVtbiBoYXMgbm8gYXJjaGl0ZWN0dXJh
bCBlZmZlY3Q6IE5YIG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CiAgKiAgIGhhcmR3YXJlLCBidXQg
bWF5IGhhdmUgYmVoYXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRzIFgiIGNvbGxpZGVzIHdpdGgK
QEAgLTMwMiw3ICszMDMsNyBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7CiAgKgogICovCiAjZGVm
aW5lIGVsZl9yZWFkX2ltcGxpZXNfZXhlYyhleCwgZXhlY3V0YWJsZV9zdGFjaykJXAotCShleGVj
dXRhYmxlX3N0YWNrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQorCShleGVjdXRhYmxlX3N0YWNrID09
IEVYU1RBQ0tfREVGQVVMVCkKIAogc3RydWN0IHRhc2tfc3RydWN0OwogCi0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
