Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B70195192
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ibTFjPZfDa23pv1kaYnJG4lIFQCTSHC7ra3KkyL6XE=; b=DPZ1kXs9XXmy2k
	LnQzgHtDYie+JgSdKW8K+xIxhFBOSOQ4booxQGBb7XqGt+smHPv04cZ0Wxk108BLsqSIxMoSrnw5c
	epWmQoOSkLTpN9gXiT1Y6cgVM/Cmkk3ynAkAXvIJpN+XMnxfFzxRndPV9b3qdoyH0oh+wAmZJBKsZ
	2kLeSSHyq9mUP0z1bwQhNXPeYdaJ1A6JoxSYo9u2jMS8DrtKQuoXO5ate/d5sZTI8JvaRFlJ3w9jS
	CKCBgaFGvkukes4hCW1JblpOym4V8ggCSTobJyfqWQry9QS0ehU2FYbwduoM1cR18IrTJLzUdlpT0
	s7Mrumqhjm2YUoavmWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHioA-0001rC-D4; Fri, 27 Mar 2020 06:49:34 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin5-00013N-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:29 +0000
Received: by mail-pj1-x1043.google.com with SMTP id jz1so4080922pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aCXQQNfM2EQYbGhE+c3i+WsEzSS1B+0KzErDD9Q3cJQ=;
 b=OCjXlmIoxfrnMcD6Fm7EqmFltbx9NqQHpjse+YKgPYhkHv6iZLLG1nlt7oUVP9C15G
 lQ19ipXBCR2dhvNCDNSaYaRpGtODDqGFdCxyjvW+VnHhSDXeSovFoVqIX6sa8HSy/zUS
 Tzoj2lH+NFiAotmdBSTAOMN6FsQCteguppeiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aCXQQNfM2EQYbGhE+c3i+WsEzSS1B+0KzErDD9Q3cJQ=;
 b=Q5xVSdpJlzlL17IqkUirmHTVXy2MyWVz4s9zKSbtuXcwnsWI01DG/LxZrfx+8GGpt/
 iN6VeMOhRbDRRDVOxpNkAkbjCSJ/UGjzY47/Cld3+90uRGnpAdLNIJDDLvMdSKdmvbKg
 NIU0vmaaWUdbqXfSg60j9gfLdnVdSI0aovDFVmAeW3ZB1GK+9XFcJdtRUaJFEyeAujPM
 pGHFrFaKQc7fU6Kxg2mKRCD2bOhiq941gWwoE/5Ei1hXyHiA4kMvyeTj1XcHc7hUlp1E
 vo00ovpbwCP2gC36qE9MhFX1FsLeDP7hsFsrrhmFa9QWv/wuYSDkiJdfZDuIBaL5D4dd
 9vXQ==
X-Gm-Message-State: ANhLgQ1+dKchVKgkVoj+ylK68odS9Racm105Sdn4cobrZwS5VJlicYr1
 IpMGH/m3qDPgIOzYYuvw/CthVA==
X-Google-Smtp-Source: ADFU+vuRG/7CwdAL7Hz1xKA5Bt+/nzzdYx30lzuff91wl0WePMdT+P2vk/HnJix1tQIiabhGWyh6wg==
X-Received: by 2002:a17:90a:eb03:: with SMTP id
 j3mr4340967pjz.72.1585291706769; 
 Thu, 26 Mar 2020 23:48:26 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z37sm3106644pgl.68.2020.03.26.23.48.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:23 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 1/6] x86/elf: Add table to document READ_IMPLIES_EXEC
Date: Thu, 26 Mar 2020 23:48:15 -0700
Message-Id: <20200327064820.12602-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234827_697127_550B55E8 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

QWRkIGEgdGFibGUgdG8gZG9jdW1lbnQgdGhlIGN1cnJlbnQgYmVoYXZpb3Igb2YgUkVBRF9JTVBM
SUVTX0VYRUMgaW4KcHJlcGFyYXRpb24gZm9yIGNoYW5naW5nIHRoZSBiZWhhdmlvci4KClNpZ25l
ZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgpSZXZpZXdlZC1ieTog
SmFzb24gR3VudGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgotLS0KIGFyY2gveDg2L2luY2x1ZGUv
YXNtL2VsZi5oIHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaCBiL2Fy
Y2gveDg2L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IDY5YzBmODkyZTMxMC4uZWU0NTlkNGMzYjQ1
IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaAorKysgYi9hcmNoL3g4Ni9p
bmNsdWRlL2FzbS9lbGYuaApAQCAtMjgxLDYgKzI4MSwyNSBAQCBleHRlcm4gdTMyIGVsZl9od2Nh
cDI7CiAvKgogICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1wbGllc19leGVj
KCkgcmV0dXJucyBUUlVFIHdpbGwKICAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNv
bmFsaXR5IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lzaW9uIHByb2Nl
c3MgZm9yIGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDCoCDCoCDCoCDC
oCDCoCAgICDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8IGhhcyBO
WCwgeDg2XzY0IHwKKyAqIEVMRjogwqAgwqAgwqAgwqAgICAgwqAgwqAgwqB8IMKgIMKgIMKgIMKg
IMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB8CisgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0t
LS0tLXwtLS0tLS0tLS0tLS0tLS0tfAorICogbWlzc2luZyBQVF9HTlVfU1RBQ0sgfCBleGVjLWFs
bCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogUFRf
R05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCDCoCDCoCDCoCB8
IGV4ZWMtYWxsIMKgIMKgIMKgIHwKKyAqIFBUX0dOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9u
ZSDCoHwgZXhlYy1ub25lIMKgIMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8CisgKgorICog
IGV4ZWMtYWxsICA6IGFsbCBQUk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwg
ZXhjZXB0IHdoZW4KKyAqICAgICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMt
ZmlsZXN5c3RlbS4KKyAqICBleGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdz
IGFyZSBleGVjdXRhYmxlLgorICoKKyAqICAqdGhpcyBjb2x1bW4gaGFzIG5vIGFyY2hpdGVjdHVy
YWwgZWZmZWN0OiBOWCBtYXJraW5ncyBhcmUgaWdub3JlZCBieQorICogICBoYXJkd2FyZSwgYnV0
IG1heSBoYXZlIGJlaGF2aW9yYWwgZWZmZWN0cyB3aGVuICJ3YW50cyBYIiBjb2xsaWRlcyB3aXRo
CisgKiAgICJjYW5ub3QgYmUgWCIgY29uc3RyYWludHMgaW4gbWVtb3J5IHBlcm1pc3Npb24gZmxh
Z3MsIGFzIGluCisgKiAgIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTku
R0EzMTU1QG1lbGxhbm94LmNvbQorICoKICAqLwogI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4
ZWMoZXgsIGV4ZWN1dGFibGVfc3RhY2spCVwKIAkoZXhlY3V0YWJsZV9zdGFjayAhPSBFWFNUQUNL
X0RJU0FCTEVfWCkKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
