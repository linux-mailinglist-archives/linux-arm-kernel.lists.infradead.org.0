Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A50195196
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ek550kLOx6UZVyRMyHxYPSCyMDI7t6Qcc7FWpOmZWIE=; b=DLVOWPaOCmNqzQ
	CkMTiPyEFG9S6GfAiO/9S0xGfUX/hBi0MMBSVFCa5ulYmC+o8SYEEzem/AAcLwJpdaKQ8Pm8oBL21
	h+uaEkfU519dmkXCjs18zwPy/sOLB9NdE/q2aca1NV1nIq6/j4Rr6JaJ16AhDNkk7pVrynGhPBxLo
	jn9kbaFz/kPkbC0n70qXQk8+Dzxn1S7rOuvt8R8QxFcDnkRQEw73qv1miI7d3JcUlaP/0y4NTnGLO
	jhjT7JFcH9dIn+OvpKIM+rgaGObwTat2OI7by4+JdsoDRqiaGGIymP6cUrIFWOJKZiJeHVz0Ddyy8
	pPB8EFeCTeXzDUeCIVUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHioy-0002YR-NC; Fri, 27 Mar 2020 06:50:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHin8-00015c-8i
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 06:48:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id i13so4057784pfe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 23:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9LO2LzsxD2r9Xv+srqALdfcgB8lxU6x5iZM1oUedN0w=;
 b=JROchnuoQhF2R/Mx5z01GK7uJjfXpDKE0LvGoYpHwUfQ1LM+YDoX9iNWypkcK6H8ga
 Y52O13oWS8BcrW5QYSCbprsyCVbOVMXojnxUDi6FH0Bi6Y3Zq7JyhA+8mCT1Z1cEBymy
 PJxdNR/1VyMhsLDwzYotBhML4MtN9DLzspX50=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9LO2LzsxD2r9Xv+srqALdfcgB8lxU6x5iZM1oUedN0w=;
 b=hTQohRp2484DAVhxp2GIiUcY1ElAItAu187zMT0+OKv2PJOFcCacGOw4vz7vHBXd9B
 vJc1de/YcrqCNJHc4nrtWA74suA6creIryvkWmoCRaS/dSMslpQ70GmNl7tH/pyX03yi
 WCvzLqPKootqE2E2Io1HeXe+XJgcj2SrkIPJBfuL++FT0ZHXTWYlw++z9YMaoMU36CNM
 LZaCB4IIEB5M9MBvk7h0r4WlEBA4cLZz+BF18cQdnTuW6v0D7i13O5vW9O43qfpJ8D4C
 ntFT5Z0FyEwPUcYb/+paOQlwrOe/NgK3YtvwLUi+iA5FElYYjGVHu1MOQJDUVDSZdWbM
 yc2Q==
X-Gm-Message-State: ANhLgQ1AC/8TcrhJaQ4vqbDKoGk/nt83GIXBu/ctvJRcxwMDYmPBSUQi
 TVE4I7jiXDqGE4kIpsUk4FfUhQ==
X-Google-Smtp-Source: ADFU+vuA1LFfImtyYtbDmLUlKIzpXJoC5cD77qNyfHDvBSDw6ezHZbSgFf8tN7H3qURKXYRhUoj5iA==
X-Received: by 2002:a62:2c8c:: with SMTP id
 s134mr13352706pfs.253.1585291709337; 
 Thu, 26 Mar 2020 23:48:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n22sm2975913pjq.36.2020.03.26.23.48.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 23:48:27 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v5 5/6] arm32/64,
 elf: Split READ_IMPLIES_EXEC from executable PT_GNU_STACK
Date: Thu, 26 Mar 2020 23:48:19 -0700
Message-Id: <20200327064820.12602-6-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327064820.12602-1-keescook@chromium.org>
References: <20200327064820.12602-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_234830_347491_897D43BD 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
eCA1Y2NkNGFjZWQ2Y2MuLjI1NGFiNzEzOGM4NSAxMDA2NDQKLS0tIGEvYXJjaC9hcm0va2VybmVs
L2VsZi5jCisrKyBiL2FyY2gvYXJtL2tlcm5lbC9lbGYuYwpAQCAtODcsMTIgKzg3LDEzIEBAIEVY
UE9SVF9TWU1CT0woZWxmX3NldF9wZXJzb25hbGl0eSk7CiAgKiBFTEY6IMKgIMKgIMKgIMKgICAg
IMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgIHwKICAqIC0tLS0t
LS0tLS0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS18LS0tLS0tLS0tLS0tfAogICogbWlzc2luZyBQ
VF9HTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsICDCoHwKLSAqIFBUX0dOVV9TVEFD
SyA9PSBSV1ggwqB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgIMKgfAorICogUFRfR05VX1NUQUNL
ID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLXN0YWNrwqB8CiAgKiBQVF9HTlVfU1RBQ0sg
PT0gUlcgwqAgfCBleGVjLWFsbCAgwqB8IGV4ZWMtbm9uZSAgfAogICoKICAqICBleGVjLWFsbCAg
OiBhbGwgUFJPVF9SRUFEIHVzZXIgbWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUsIGV4Y2VwdCB3aGVu
CiAgKiAgICAgICAgICAgICAgYmFja2VkIGJ5IGZpbGVzIG9uIGEgbm9leGVjLWZpbGVzeXN0ZW0u
CiAgKiAgZXhlYy1ub25lIDogb25seSBQUk9UX0VYRUMgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0
YWJsZS4KKyAqICBleGVjLXN0YWNrOiBvbmx5IHRoZSBzdGFjayBhbmQgUFJPVF9FWEVDIHVzZXIg
bWFwcGluZ3MgYXJlIGV4ZWN1dGFibGUuCiAgKgogICogICp0aGlzIGNvbHVtbiBoYXMgbm8gYXJj
aGl0ZWN0dXJhbCBlZmZlY3Q6IE5YIG1hcmtpbmdzIGFyZSBpZ25vcmVkIGJ5CiAgKiAgIGhhcmR3
YXJlLCBidXQgbWF5IGhhdmUgYmVoYXZpb3JhbCBlZmZlY3RzIHdoZW4gIndhbnRzIFgiIGNvbGxp
ZGVzIHdpdGgKQEAgLTEwMiw3ICsxMDMsNyBAQCBFWFBPUlRfU1lNQk9MKGVsZl9zZXRfcGVyc29u
YWxpdHkpOwogICovCiBpbnQgYXJtX2VsZl9yZWFkX2ltcGxpZXNfZXhlYyhpbnQgZXhlY3V0YWJs
ZV9zdGFjaykKIHsKLQlpZiAoZXhlY3V0YWJsZV9zdGFjayAhPSBFWFNUQUNLX0RJU0FCTEVfWCkK
KwlpZiAoZXhlY3V0YWJsZV9zdGFjayA9PSBFWFNUQUNLX0RFRkFVTFQpCiAJCXJldHVybiAxOwog
CWlmIChjcHVfYXJjaGl0ZWN0dXJlKCkgPCBDUFVfQVJDSF9BUk12NikKIAkJcmV0dXJuIDE7CmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oIGIvYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9lbGYuaAppbmRleCA5ODZlY2Y0MWZjMGYuLjAwNzRlOWZkNjQzMSAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaAorKysgYi9hcmNoL2FybTY0L2luY2x1ZGUv
YXNtL2VsZi5oCkBAIC0xMDYsMTcgKzEwNiwxOCBAQAogICogRUxGOiDCoCDCoCDCoCAgICDCoCDC
oCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKgfAogICogLS0tLS0t
LS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLXwtLS0tLS0tLS0tLS18CiAgKiBtaXNzaW5nIFBU
X0dOVV9TVEFDSyB8IGV4ZWMtYWxsIMKgIHwgZXhlYy1hbGwgwqAgfAotICogUFRfR05VX1NUQUNL
ID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCB8CisgKiBQVF9HTlVfU1RBQ0sg
PT0gUldYIMKgfCBleGVjLXN0YWNrIHwgZXhlYy1zdGFjayB8CiAgKiBQVF9HTlVfU1RBQ0sgPT0g
UlcgwqAgfCBleGVjLW5vbmUgIHwgZXhlYy1ub25lICB8CiAgKgogICogIGV4ZWMtYWxsICA6IGFs
bCBQUk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0IHdoZW4KICAq
ICAgICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5c3RlbS4KICAq
ICBleGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxl
LgorICogIGV4ZWMtc3RhY2s6IG9ubHkgdGhlIHN0YWNrIGFuZCBQUk9UX0VYRUMgdXNlciBtYXBw
aW5ncyBhcmUgZXhlY3V0YWJsZS4KICAqCiAgKiAgKmFsbCBhcm02NCBDUFVzIHN1cHBvcnQgTlgs
IHNvIHRoZXJlIGlzIG5vICJsYWNrcyBOWCIgY29sdW1uLgogICoKICAqLwotI2RlZmluZSBlbGZf
cmVhZF9pbXBsaWVzX2V4ZWMoZXgsc3RrKQkoc3RrICE9IEVYU1RBQ0tfRElTQUJMRV9YKQorI2Rl
ZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsIHN0aykJKHN0ayA9PSBFWFNUQUNLX0RFRkFV
TFQpCiAKICNkZWZpbmUgQ09SRV9EVU1QX1VTRV9SRUdTRVQKICNkZWZpbmUgRUxGX0VYRUNfUEFH
RVNJWkUJUEFHRV9TSVpFCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
