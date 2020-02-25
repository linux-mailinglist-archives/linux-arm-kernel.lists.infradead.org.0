Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EB316B8E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 06:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Tl0unxSCCxZ5migwPqkB0y2Eyz6PXixbSKzmZq6Jp0=; b=oPXJ6JdKN/VzKZ
	YbN/e2xGTSTN5gVju1OTTJ+nRZhqPR1ubuAuyCS7DDpD8AoEnliBrW4WWh/IBw+J1tigEuqRQtc/v
	U715JrI2XJa+e9dO9DLLkD0VoqxYFTJduRH1ABG/rDqW+m/Sw/AizOwVSms98zE36jETjpJzJ3e6O
	vMIhQHveuB4I3rYglgtidsaLnmggfn0c2QJid5DJtD4fOqoUZp0Hwt/li1gANLZE6kOCiRkWjQays
	YyXF3FEfc3hdrGkdXjAEz7il94Hvj+gHw7MDEAg9MbZTkwPyfsbGKnRtD224yagaUhADX6pvWI/h9
	IIFVaN55LJoKJo05Lz1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6SYD-0007V0-8D; Tue, 25 Feb 2020 05:14:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6SWx-0006aC-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 05:13:17 +0000
Received: by mail-pl1-x642.google.com with SMTP id t14so4993275plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 21:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YYkEUMiwoqC9g5twl30uamAlKq3Tsh5NtF9u9M+qrn4=;
 b=avzQkIzWP11XHI9dfw+sintU7jSdYyOmCfUcrZbVfI3neNkexyxVoipAlC0aEClJyH
 aCOUDg37itfNNyo5WKHg3hVZ3VCLg6AxDzjoOQ4lSK1OaOhtw93wixoun6PIjwoxoYId
 BANd3swsVOiMeZkStF0wE5AKrSqy5u7EzvUzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YYkEUMiwoqC9g5twl30uamAlKq3Tsh5NtF9u9M+qrn4=;
 b=br9FtAsOFzGrOox+2LOboGjgjtfN1Egdu41+mv273nR6D8PmuCUe1nkOav/fA3AJ2N
 xmjlHoyrbh0MtVMdNagGFD7ZSMhOBigElHmBcPHfLA/50YZznm6KAMV5tUjenhQlMgSk
 ZbRdzZVv7SvABIjXC3VfcvjAxyo7XgzacOhrAcmB1Xuw0DOW60C0eU4lhqgV7xord7ob
 HDvpigY1NGy459Hro/TVCBKGx6/npLIB3Ifntl9yspONMBdqnsH7L4pqtkdOj4I2h6bt
 zkRb/yAPjEQzoKV2KPeyUTJoVqhdFLO8HjcgBVmvFQNzHEKXmGMCxb27UhxBEFVA5fGZ
 5l1g==
X-Gm-Message-State: APjAAAXo9yueCxNvIJ/hN1tGhsfnuhEVJSa8zSiV9xL+MrqMhPnhna8U
 JKGZzIlK6jt5QjL/R+NoB94NBb57Fsw=
X-Google-Smtp-Source: APXvYqzBUEzonruL33z1bqgvonSPWOcLoIk/bYLtdQnry1U+j3ClgjvqG2nmE0zuEw4fCLKGWa37Yw==
X-Received: by 2002:a17:902:b617:: with SMTP id
 b23mr54721739pls.285.1582607594502; 
 Mon, 24 Feb 2020 21:13:14 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id l69sm14547852pgd.1.2020.02.24.21.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Feb 2020 21:13:11 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v4 1/6] x86/elf: Add table to document READ_IMPLIES_EXEC
Date: Mon, 24 Feb 2020 21:13:02 -0800
Message-Id: <20200225051307.6401-2-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200225051307.6401-1-keescook@chromium.org>
References: <20200225051307.6401-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_211315_277112_62D17F53 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

QWRkIGEgdGFibGUgdG8gZG9jdW1lbnQgdGhlIGN1cnJlbnQgYmVoYXZpb3Igb2YgUkVBRF9JTVBM
SUVTX0VYRUMgaW4KcHJlcGFyYXRpb24gZm9yIGNoYW5naW5nIHRoZSBiZWhhdmlvci4KClNpZ25l
ZC1vZmYtYnk6IEtlZXMgQ29vayA8a2Vlc2Nvb2tAY2hyb21pdW0ub3JnPgpSZXZpZXdlZC1ieTog
SmFzb24gR3VudGhvcnBlIDxqZ2dAbWVsbGFub3guY29tPgotLS0KIGFyY2gveDg2L2luY2x1ZGUv
YXNtL2VsZi5oIHwgMTkgKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE5IGlu
c2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaCBiL2Fy
Y2gveDg2L2luY2x1ZGUvYXNtL2VsZi5oCmluZGV4IDY5YzBmODkyZTMxMC4uNzMzZjY5YzJiMDUz
IDEwMDY0NAotLS0gYS9hcmNoL3g4Ni9pbmNsdWRlL2FzbS9lbGYuaAorKysgYi9hcmNoL3g4Ni9p
bmNsdWRlL2FzbS9lbGYuaApAQCAtMjgxLDYgKzI4MSwyNSBAQCBleHRlcm4gdTMyIGVsZl9od2Nh
cDI7CiAvKgogICogQW4gZXhlY3V0YWJsZSBmb3Igd2hpY2ggZWxmX3JlYWRfaW1wbGllc19leGVj
KCkgcmV0dXJucyBUUlVFIHdpbGwKICAqIGhhdmUgdGhlIFJFQURfSU1QTElFU19FWEVDIHBlcnNv
bmFsaXR5IGZsYWcgc2V0IGF1dG9tYXRpY2FsbHkuCisgKgorICogVGhlIGRlY2lzaW9uIHByb2Nl
c3MgZm9yIGRldGVybWluaW5nIHRoZSByZXN1bHRzIGFyZToKKyAqCisgKiDCoCDCoCDCoCDCoCDC
oCDCoCDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8IGhhcyBOWCwg
eDg2XzY0IHwKKyAqIEVMRjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKgIMKg
fCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8Cisg
KiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0tLXwtLS0t
LS0tLS0tLS0tLS0tfAorICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMt
YWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogR05VX1NUQUNLID09IFJX
WCDCoHwgZXhlYy1hbGwgwqAgfCBleGVjLWFsbCDCoCDCoCDCoCDCoCB8IGV4ZWMtYWxsIMKgIMKg
IMKgIHwKKyAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8IGV4ZWMtbm9uZSDCoHwgZXhlYy1ub25lIMKg
IMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8CisgKgorICogIGV4ZWMtYWxsICA6IGFsbCBQ
Uk9UX1JFQUQgdXNlciBtYXBwaW5ncyBhcmUgZXhlY3V0YWJsZSwgZXhjZXB0IHdoZW4KKyAqICAg
ICAgICAgICAgICBiYWNrZWQgYnkgZmlsZXMgb24gYSBub2V4ZWMtZmlsZXN5c3RlbS4KKyAqICBl
eGVjLW5vbmUgOiBvbmx5IFBST1RfRVhFQyB1c2VyIG1hcHBpbmdzIGFyZSBleGVjdXRhYmxlLgor
ICoKKyAqICAqdGhpcyBjb2x1bW4gaGFzIG5vIGFyY2hpdGVjdHVyYWwgZWZmZWN0OiBOWCBtYXJr
aW5ncyBhcmUgaWdub3JlZCBieQorICogICBoYXJkd2FyZSwgYnV0IG1heSBoYXZlIGJlaGF2aW9y
YWwgZWZmZWN0cyB3aGVuICJ3YW50cyBYIiBjb2xsaWRlcyB3aXRoCisgKiAgICJjYW5ub3QgYmUg
WCIgY29uc3RyYWludHMgaW4gbWVtb3J5IHBlcm1pc3Npb24gZmxhZ3MsIGFzIGluCisgKiAgIGh0
dHBzOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTA0MTgwNTU3NTkuR0EzMTU1QG1lbGxhbm94LmNv
bQorICoKICAqLwogI2RlZmluZSBlbGZfcmVhZF9pbXBsaWVzX2V4ZWMoZXgsIGV4ZWN1dGFibGVf
c3RhY2spCVwKIAkoZXhlY3V0YWJsZV9zdGFjayAhPSBFWFNUQUNLX0RJU0FCTEVfWCkKLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
