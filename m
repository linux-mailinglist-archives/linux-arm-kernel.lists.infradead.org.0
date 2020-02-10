Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB0C1583B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTTISZ2ObW2b9QCnxEbB5Ab3oHZtGdY9JsX8FuBudE4=; b=llcnP6xM/g0re6
	paPgZI/e5JfuVxuuhTHPIvfuoplwhG5Ymw1DSkTvf7sLJAZdg59Djbyqq4+IlxCATkd7OUDJYRdZs
	rdtNyQO2VMt0BeWz4kN0z04OaDrR8lAFIm1NDsR9jL5d7eEpElr/UVvdfUsq34pEHUTT2e6KC0tAG
	vPXw+Gn1aMGCn2h7nb+prjl2et+coSrxKY1j18eRK7jFr36K0Us8Ubmqr+kXQFV8oE25FRyMcX34v
	uX61TaxR4zuBj1WqkExrGHIvaNpl1q1lyFgjuJIZhUHmpmr4bFMGa6eFmj+TsS8YI5vL/fLujyowU
	j6Fv2kF02z0tbHayvOFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Ems-0006OX-Pu; Mon, 10 Feb 2020 19:32:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elq-0005TK-EQ
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:04 +0000
Received: by mail-ot1-x342.google.com with SMTP id j20so7571029otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SoMlqkPW6d6t+DyvhcmYwhC/CLbcIQw6Iq6GyurXq7I=;
 b=T33oewBV6LwB0gLY4Y/wgyTFEjrMO+tsNjLjNsIx462NvY6k878hEut+t0Dxl2+T2m
 qFIdoyfwpqsSACJuHqubYuHgW9i9yCone4feFBOegL9ifmir/GKpPSzwOTAIQnR0UiIU
 XYJjaM8SHWaBn2q9MVLaVWC/Ev/hNh/61qVfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SoMlqkPW6d6t+DyvhcmYwhC/CLbcIQw6Iq6GyurXq7I=;
 b=qQL5+a5WLMdyHLV34HuGnfRfWtbRqpwnLHoim8WeUxHxyH2zAT1wba6ehbuEVJL6C/
 H6qv4A7TUQnulw/46XW89I4V/Pg8kRwMFiAAVjKo168HfKMEkFoIysduATJ+J8IU2drm
 q4gdLIJjFbkMlL97uXwiJUaW4K2Rizv5NE4ZzPC31ciD8NUDiukION9i6Wu39n3gU2Ud
 7rzJml7BmL4Dm6bP4dlx1YLv9ja9bdnJ7SQlXldHvhSiVuGZLENQNeSyUNTqnLgo4ZgF
 FaKl6ZaxifGZTPb5kXjZbgS5Z9kmXmqcO5GXO4lk44duKfhg0PI38cRJP/5AvF87t7j3
 U1uw==
X-Gm-Message-State: APjAAAVI44QpPkmz8waQygoRymp8W7gplPlROZFlBCFG45WJmMxzOE9H
 554crI0lH477R/8wuqfzAhcepw==
X-Google-Smtp-Source: APXvYqzYj09UqOIqVmchmtjHU0/10JBletVlAeKEV0PL33eea4MKTG5zvEVavNY7MuTpo2yAvLV8pg==
X-Received: by 2002:a05:6830:1353:: with SMTP id
 r19mr2298000otq.288.1581363061874; 
 Mon, 10 Feb 2020 11:31:01 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m19sm362991otn.47.2020.02.10.11.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:30:58 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 2/7] x86/elf: Split READ_IMPLIES_EXEC from executable
 GNU_STACK
Date: Mon, 10 Feb 2020 11:30:44 -0800
Message-Id: <20200210193049.64362-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113102_482018_9EE26685 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Hector Marco-Gisbert <hecmargi@upv.es>, Russell King <linux@armlinux.org.uk>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Jason Gunthorpe <jgg@mellanox.com>, linux-kselftest@vger.kernel.org,
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org
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
PGtlZXNjb29rQGNocm9taXVtLm9yZz4KLS0tCiBhcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaCB8
IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNs
dWRlL2FzbS9lbGYuaAppbmRleCA3MzNmNjljMmIwNTMuLmE3MDM1MDY1Mzc3YyAxMDA2NDQKLS0t
IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20v
ZWxmLmgKQEAgLTI4OCwxMiArMjg4LDEzIEBAIGV4dGVybiB1MzIgZWxmX2h3Y2FwMjsKICAqIEVM
RjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tfAog
ICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKg
IHwgZXhlYy1hbGwgwqAgwqAgwqAgfAotICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1hbGwg
wqAgfCBleGVjLWFsbCDCoCDCoCDCoCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIHwKKyAqIEdOVV9T
VEFDSyA9PSBSV1ggwqB8IGV4ZWMtc3RhY2sgfCBleGVjLXN0YWNrIMKgIMKgIMKgIHwgZXhlYy1z
dGFjayDCoCDCoCB8CiAgKiBHTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLW5vbmUgwqB8IGV4ZWMt
bm9uZSDCoCDCoCDCoCDCoHwgZXhlYy1ub25lIMKgIMKgIMKgfAogICoKICAqICBleGVjLWFsbCAg
OiBhbGwgUFJPVF9SRUFEIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4Y2VwdCB3aGVu
CiAgKiAgICAgICAgICAgICAgYmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZpbGVzeXN0ZW0u
CiAgKiAgZXhlYy1ub25lIDogb25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0
YWJsZS4KKyAqICBleGVjLXN0YWNrOiBvbmx5IHRoZSBzdGFjayBhbmQgUFJPVF9FWEVDIHVzZXIg
bWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUuCiAgKgogICogICp0aGlzIGNvbHVtbiBoYXMgbm8gYXJj
aGl0ZWN0dXJhbCBlZmZlY3Q6IE5YIG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CiAgKiAgIGhhcmR3
YXJlLCBidXQgbWF5IGhhdmUgYmVoYXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRzIFgiIGNvbGxp
ZGVzIHdpdGgKQEAgLTMwMiw3ICszMDMsNyBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7CiAgKgog
ICovCiAjZGVmaW5lIGVsZl9yZWFkX2ltcGxpZXNfZXhlYyhleCwgZXhlY3V0YWJsZV9zdGFjaykJ
XAotCShleGVjdXRhYmxlX3N0YWNrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQorCShleGVjdXRhYmxl
X3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogc3RydWN0IHRhc2tfc3RydWN0OwogCi0tIAoy
LjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
