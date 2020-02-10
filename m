Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1201583A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:31:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RzG+RaqrwRKRIUxbaXErOpQy9Oh+Wx2UcOFxpcZWSg=; b=R16xe4ao/Fjndk
	d6sDBmM66gmX4+19cfw9CSn5WRlaAyjevTnjv01cnaA3tc0aFW7YQQaU0leTWmpoWV8/MJNdG5xlL
	FbFYGhoj72twRAjWZBEaFOjlaVWuKxXFnv1W/LN5hC8R0maysjvlmdJB22dK2P18VFy28XPw1b0FM
	wGDWJbbNAqCpUt2KKqRHIbOs/+rRdp/8U+qzdSggJAqP/0cGT6YFA1GfzXOque6SHbffrNZmURKLm
	bVO+/YDV3AdGjwcDYrpD724xSc2c8jwDHwG0BMi+txFgYQ7sEkdIcdVpvq9R7sMFVmc2Ns/9cLqaQ
	jYT6yUmJbwFesgNmzesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Em0-0005Uv-Pi; Mon, 10 Feb 2020 19:31:12 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elo-0005SK-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id g64so7521586otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6noGYPwM3SA0qSn1DjhC04WI3GU5Jbgm29601EFLQxY=;
 b=hvrKfX5YTyjWi1ypYrma3QUvOIzzwx5eP1e5SWnVM7fYdEB7cTXp0VLscQZXxlorII
 KASkYlwnUbwRoj+rvzhAZPJR542QwWgAtt0bf9LEgpg4gV9JV9tO3B0r5MmgGnJbfqjc
 KS/hLBOlgW90PWNOGQmPIgcyzMg0ZELj7LhF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6noGYPwM3SA0qSn1DjhC04WI3GU5Jbgm29601EFLQxY=;
 b=Y0GnAvs1/sOwppgVhYtuKWZkbpQH8NBayeGJV2BXqhqF6oOFO1gAOl7ZKKMNghmycz
 2cIS+BsktCuvfMB48SlyPcojYhm7ZVI0i3XXQQtSSfm2ess7thw541qgsxkCeOcMaj8Y
 B60RiXPM3gG02W6TTJBPY7AumNvkTMThgKC4qM2npM5+GHBc04byNvYFZe6m+Cl+Lmo8
 3WUJt3ZXuCQGt/APD88kAXPfUTagtkjr5V4UuIUdbt2BxfSHRrDiXtl7CqgihWrBp+HW
 OnioBDspuldtWT8ngrvLqU7PEarvN5KO3GbcHSqNqbS/BVQnJT+jF+n7XqSkXtmEwgds
 p7UA==
X-Gm-Message-State: APjAAAXxKIZEfR0F99LiSUKIaUVFIxdNOo6m26/xPs9I/kgiq/vKwtUH
 TF6VZj9P86DkBUEJ2a4PE7XsEA==
X-Google-Smtp-Source: APXvYqzRvao2CNFFWbyoxZWSuc7lKKPgMkVudeHRv3oBDW5/WpFR518lDppuCkgzALOGlW3N5WFORw==
X-Received: by 2002:a9d:6289:: with SMTP id x9mr2292404otk.8.1581363059840;
 Mon, 10 Feb 2020 11:30:59 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id y6sm359826oti.44.2020.02.10.11.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:30:58 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 1/7] x86/elf: Add table to document READ_IMPLIES_EXEC
Date: Mon, 10 Feb 2020 11:30:43 -0800
Message-Id: <20200210193049.64362-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113100_803464_C3879A16 
X-CRM114-Status: GOOD (  12.34  )
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

QWRkIGEgdGFibGUgdG8gZG9jdW1lbnQgdGhlIGN1cnJlbnQgYmVoYXZpb3Igb2YgUkVBRF9JTVBM
SUVTX0VYRUMgaW4KcHJlcGFyYXRpb24gZm9yIGNoYW5naW5nIHRoZSBiZWhhdmlvci4KClNpZ25l
ZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgotLS0KIGFyY2gveDg2
L2luY2x1ZGUvYXNtL2VsZi5oIHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9l
bGYuaCBiL2FyY2gveDg2L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IDY5YzBmODkyZTMxMC4uNzMz
ZjY5YzJiMDUzIDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaAorKysgYi9h
cmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaApAQCAtMjgxLDYgKzI4MSwyNSBAQCBleHRlcm4gdTMy
IGVsZl9od2NhcDI7CiAvKgogICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1w
bGllc19leGVjKCkgcmV0dXJucyBUUlVFIHdpbGwKICAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19F
WEVDIHBlcnNvbmFsaXR5IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lz
aW9uIHByb2Nlc3MgZm9yIGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDC
oCDCoCDCoCDCoCDCoCDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8
IGhhcyBOWCwgeDg2XzY0IHwKKyAqIEVMRjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKg
IMKgIMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB8CisgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0t
LS0tLXwtLS0tLS0tLS0tLS0tLS0tfAorICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDC
oCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogR05VX1NU
QUNLID09IFJXWCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCDCoCDCoCDCoCB8IGV4ZWMt
YWxsIMKgIMKgIMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSDCoHwgZXhl
Yy1ub25lIMKgIMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8CisgKgorICogIGV4ZWMtYWxs
ICA6IGFsbCBQUk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0IHdo
ZW4KKyAqICAgICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5c3Rl
bS4KKyAqICBleGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVj
dXRhYmxlLgorICoKKyAqICAqdGhpcyBjb2x1bW4gaGFzIG5vIGFyY2hpdGVjdHVyYWwgZWZmZWN0
OiBOWCBtYXJraW5ncyBhcmUgaWdub3JlZCBieQorICogICBoYXJkd2FyZSwgYnV0IG1heSBoYXZl
IGJlaGF2aW9yYWwgZWZmZWN0cyB3aGVuICJ3YW50cyBYIiBjb2xsaWRlcyB3aXRoCisgKiAgICJj
YW5ub3QgYmUgWCIgY29uc3RyYWludHMgaW4gbWVtb3J5IHBlcm1pc3Npb24gZmxhZ3MsIGFzIGlu
CisgKiAgIGh0dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTkuR0EzMTU1QG1l
bGxhbm94LmNvbQorICoKICAqLwogI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsIGV4
ZWN1dGFibGVfc3RhY2spCVwKIAkoZXhlY3V0YWJsZV9zdGFjayAhPSBFWFNUQUNLX0RJU0FCTEVf
WCkKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
