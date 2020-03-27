Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2942B195193
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:49:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbQXPAeMJUoxXPZXdMsGwqreqVX2tmBQiBj3L8wC4yw=; b=texkYK1hu0pv+u
	NRLO8im+zW+rjC/2SEygixzPRttYsPtOuYEnNhQ+At8eRnZC2Igl96ppRfV+/w6V6q+mBD4d56Ct8
	RPVRg0s99c6AbqC3/J11aWkO1Qw9jSatGIqbHEEyk7DyP++hA1UMRroY7Jd3IGSGrlge9BAwrEpsQ
	jKcvG+lS9C+liBeSZxmvCNltjvd9cp84f2F99Yuyn+OGefuEa0B/eGOSV1WRSO7oIxzlq9R0VaHh0
	snfVQevsnyGRmd544EGpHHDGNaAw/Xcop58yEuiPLXvt0P5wBGqbNnpUlM8XsNKYlhmDRbpZnKMim
	9zxe8db9uhLfieR0xEtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHioK-000272-E1; Fri, 27 Mar 2020 06:49:44 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin6-00013m-H9
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id i13so4057756pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZTdPh9cpqKAayj+42mk/55nYw+jDQf8ejhb0i9ICEnI=;
 b=EN7/Lyg4dzcL5ijfnBiELInv0uwpf9cILpg/iZy1MhtJP1dlI3p/fZu6C0tEtWRcDT
 ciM1ErpmM6twLHmMQ5krksVL0jrw2o1Sla9jBavUg7zJVC/sMQ1TuM1swfQeu6hgQTqQ
 uBfbOptJ0cLByC0Y+tB/fdPP50WYBdQ1ETwDM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZTdPh9cpqKAayj+42mk/55nYw+jDQf8ejhb0i9ICEnI=;
 b=CsnFPXB8/VtDLrbhr5iwz79129c2RotMXUF3g2H4YX4gpcxx2sQCkXBrBGR4Rd1EGD
 MRLo9zxdL+wFOGGOt9A/l+XU07JfmoU8nQWVG2uox/6KtNhiF0VW8OE3tDyhLCxzHjQq
 Rj9VysNUgPJvvOIwzkz4awsyVKuvnXqf8L/GA5BpDfMJ9aIcPM9sgHHcmRWZ0eIPnXQd
 BGQmjvD43HfhdMwcTQeb9fbBx4x2bF6dYM98QC7bZvVouKqBpZgp0X8QLnsBKZ6qfcJ2
 vWP1fdU5mu6ui4IyCK0rGSYOS0I64gZJqIv9E+UqB1f5eHAueaZSzCoEqDoTSZt8C5uX
 U4uQ==
X-Gm-Message-State: ANhLgQ2kFRKD/yAIlBJYSK70tDSAFSGOvTkHbeHRJQbF+Yx80Ylxx6se
 zKdhTUomZ5J3jB9+HgjbYWUQpA==
X-Google-Smtp-Source: ADFU+vt7GOdG4GJrRj468GubEkFUve/2A0teR6lM1LEYtLCojGHgXFTocsSWpD7m1gRNKoJs8FD9zw==
X-Received: by 2002:a62:170f:: with SMTP id 15mr12765680pfx.12.1585291707764; 
 Thu, 26 Mar 2020 23:48:27 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a18sm3314835pfr.109.2020.03.26.23.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 2/6] x86/elf: Split READ_IMPLIES_EXEC from executable
 PT_GNU_STACK
Date: Thu, 26 Mar 2020 23:48:16 -0700
Message-Id: <20200327064820.12602-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234828_573755_6643E13B 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
bGYuaAppbmRleCBlZTQ1OWQ0YzNiNDUuLjM5N2ExYzc0NDMzZSAxMDA2NDQKLS0tIGEvYXJjaC94
ODYvaW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKQEAg
LTI4OCwxMiArMjg4LDEzIEBAIGV4dGVybiB1MzIgZWxmX2h3Y2FwMjsKICAqIEVMRjogwqAgwqAg
wqAgwqAgICAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0t
LS18LS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS0tLS0tfAogICog
bWlzc2luZyBQVF9HTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKg
IHwgZXhlYy1hbGwgwqAgwqAgwqAgfAotICogUFRfR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1h
bGwgwqAgfCBleGVjLWFsbCDCoCDCoCDCoCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIHwKKyAqIFBU
X0dOVV9TVEFDSyA9PSBSV1ggwqB8IGV4ZWMtc3RhY2sgfCBleGVjLXN0YWNrIMKgIMKgIMKgIHwg
ZXhlYy1zdGFjayDCoCDCoCB8CiAgKiBQVF9HTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLW5vbmUg
wqB8IGV4ZWMtbm9uZSDCoCDCoCDCoCDCoHwgZXhlYy1ub25lIMKgIMKgIMKgfAogICoKICAqICBl
eGVjLWFsbCAgOiBhbGwgUFJPVF9SRUFEIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4
Y2VwdCB3aGVuCiAgKiAgICAgICAgICAgICAgYmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZp
bGVzeXN0ZW0uCiAgKiAgZXhlYy1ub25lIDogb25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBh
cmUgZXhlY3V0YWJsZS4KKyAqICBleGVjLXN0YWNrOiBvbmx5IHRoZSBzdGFjayBhbmQgUFJPVF9F
WEVDIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUuCiAgKgogICogICp0aGlzIGNvbHVtbiBo
YXMgbm8gYXJjaGl0ZWN0dXJhbCBlZmZlY3Q6IE5YIG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CiAg
KiAgIGhhcmR3YXJlLCBidXQgbWF5IGhhdmUgYmVoYXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRz
IFgiIGNvbGxpZGVzIHdpdGgKQEAgLTMwMiw3ICszMDMsNyBAQCBleHRlcm4gdTMyIGVsZl9od2Nh
cDI7CiAgKgogICovCiAjZGVmaW5lIGVsZl9yZWFkX2ltcGxpZXNfZXhlYyhleCwgZXhlY3V0YWJs
ZV9zdGFjaykJXAotCShleGVjdXRhYmxlX3N0YWNrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQorCShl
eGVjdXRhYmxlX3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogc3RydWN0IHRhc2tfc3RydWN0
OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
