Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C011583BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:32:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JNDGcdt9ZOJEeU1teKrxid0+7o7S+RJxdGjQxtQldEE=; b=s0IML3bPI2GfzP
	iY/N++FZeP0gz9i09IqhjgXR+wpM6pmUqKQVXCRaOxXHomCzQDe1DCXh8XwMbFby+wdt1u0U497eh
	nMWZdJJLYqo1b5vmIib6YKsZmhyvQS3B+FMVb99a3QXacStgyL1PJKqi/eetVZpbOI7jPP1cXCChz
	pkBAIZ4ZmJzD0tEPJs+BzsQCDvRG6WvwR9VNOxE6qZWcjo8oprMZBJN8BYvGh2ZfZ0NPMikzQoiDs
	le9VF+gxgkI8qMK4K6hHpmot/3ycoxtdaes5uVJla4JwwOsl6mPvMpD3erG0th2jnFvwWMF4WRIkm
	zTmTTNnBEFyxeQBfl4OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1En4-0006cx-Rl; Mon, 10 Feb 2020 19:32:18 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Els-0005U7-6w
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:05 +0000
Received: by mail-ot1-x343.google.com with SMTP id j20so7571124otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DhYTjIJlfhAdVkQDwNkbgCuN+O7kJMRLXmPZSNfrFMQ=;
 b=Dq23bl6vQ5GYWu+qXbbm3ywpJuoquMABzduG3ja8SrHuEWakgb5g99LQjU9/o1Dasx
 BSdy+vt620n5X/zV49LCGyY1+af2KOLd6H9OKdhofiuqC49AzF8MrE82v122cbzl6q+1
 5NFBliiePxKLKssh2fiNiQKRiSvwHByvjxNnY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DhYTjIJlfhAdVkQDwNkbgCuN+O7kJMRLXmPZSNfrFMQ=;
 b=I0axvocIfql2857eNJEuc5k6qxv2+pSOsO8+7YhDxh5/ElcbGVQs6K+Wwpo4GLEM5x
 He45CaVWfPWh3b7oOo4vnaGQb6LCUjET/QNKG766zQI9FXsa5sA6/+qpQ5GUa2oqJNUG
 DK6SZDbzVseQg8kai+NK3p78y+QuA9bgkqKiNiOasR4vVarXxwBWLKniQEnh5Bb+AGMq
 WGy3VG2xk8HMEKC+HJIFY2nNAs/1UI4n7GSDXrGj99JmpYBHqUKvq7J+uGa46ZyQHyLZ
 RVhJDlyIBxr2t1kNu44+FMiwx9bh++7AuHXj3cyfSxitP8XOromVDCmlKYA6Tek784Qn
 B0FQ==
X-Gm-Message-State: APjAAAU/WxRSNkS1i3k9nxQevxOQ6oD2SzzKn4Hg7jiIY+HYYb5XhA60
 rFaA4mDRHaJPbvP4PYMh0Xohaw==
X-Google-Smtp-Source: APXvYqwa0CUBeygnsizZAtkXo0YElyu1+Z7uLDxN7c38yNFFZ5699HBdDmcdJAXUU7zBCJHjZcCrcA==
X-Received: by 2002:a9d:7508:: with SMTP id r8mr2262030otk.116.1581363063188; 
 Mon, 10 Feb 2020 11:31:03 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t22sm416199otq.18.2020.02.10.11.31.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:31:01 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 6/7] arm64,
 elf: Disable automatic READ_IMPLIES_EXEC for 64-bit address spaces
Date: Mon, 10 Feb 2020 11:30:48 -0800
Message-Id: <20200210193049.64362-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113104_252714_764EF2F0 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
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

V2l0aCBhcm02NCA2NC1iaXQgZW52aXJvbm1lbnRzLCB0aGVyZSBzaG91bGQgbmV2ZXIgYmUgYSBu
ZWVkIGZvciBhdXRvbWF0aWMKUkVBRF9JTVBMSUVTX0VYRUMsIGFzIHRoZSBhcmNoaXRlY3R1cmUg
aGFzIGFsd2F5cyBiZWVuIGV4ZWN1dGUtYml0IGF3YXJlCihhcyBpbiwgdGhlIGRlZmF1bHQgbWVt
b3J5IHByb3RlY3Rpb24gc2hvdWxkIGJlIE5YIHVubGVzcyBhIHJlZ2lvbgpleHBsaWNpdGx5IHJl
cXVlc3RzIHRvIGJlIGV4ZWN1dGFibGUpLgoKU3VnZ2VzdGVkLWJ5OiBIZWN0b3IgTWFyY28tR2lz
YmVydCA8aGVjbWFyZ2lAdXB2LmVzPgpTaWduZWQtb2ZmLWJ5OiBLZWVzIENvb2sgPGtlZXNjb29r
QGNocm9taXVtLm9yZz4KLS0tCiBhcmNoL2FybTY0L2luY2x1ZGUvYXNtL2VsZi5oIHwgNCArKy0t
CiBmcy9jb21wYXRfYmluZm10X2VsZi5jICAgICAgIHwgNSArKysrKwogMiBmaWxlcyBjaGFuZ2Vk
LCA3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9lbGYuaCBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vZWxmLmgKaW5kZXgg
MDNhZGEyOTk4NGE3Li5lYTkyMjFlZDY4YTEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvaW5jbHVk
ZS9hc20vZWxmLmgKKysrIGIvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9lbGYuaApAQCAtMTA1LDcg
KzEwNSw3IEBACiAgKiDCoCDCoCDCoCDCoCDCoCDCoMKgQ1BVKjogfCBhcm0zMsKgIMKgICAgfCBh
cm02NCAgICAgIHwKICAqIEVMRjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKgIMKg
IMKgfCDCoCDCoCDCoCDCoCDCoCDCoHwKICAqIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS18LS0tLS0tLS0tLS0tfAotICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4
ZWMtYWxsIMKgIHwKKyAqIG1pc3NpbmcgR05VX1NUQUNLIHwgZXhlYy1hbGwgwqAgfCBleGVjLW5v
bmXCoCB8CiAgKiBHTlVfU1RBQ0sgPT0gUldYIMKgfCBleGVjLXN0YWNrIHwgZXhlYy1zdGFjayB8
CiAgKiBHTlVfU1RBQ0sgPT0gUlcgwqAgfCBleGVjLW5vbmUgIHwgZXhlYy1ub25lICB8CiAgKgpA
QCAtMTE3LDcgKzExNyw3IEBACiAgKiAgKmFsbCBhcm02NCBDUFVzIHN1cHBvcnQgTlgsIHNvIHRo
ZXJlIGlzIG5vICJsYWNrcyBOWCIgY29sdW1uLgogICoKICAqLwotI2RlZmluZSBlbGZfcmVhZF9p
bXBsaWVzX2V4ZWMoZXgsc3RrKQkoc3RrID09IEVYU1RBQ0tfREVGQVVMVCkKKyNkZWZpbmUgY29t
cGF0X2VsZl9yZWFkX2ltcGxpZXNfZXhlYyhleCwgc3RrKQkoc3RrID09IEVYU1RBQ0tfREVGQVVM
VCkKIAogI2RlZmluZSBDT1JFX0RVTVBfVVNFX1JFR1NFVAogI2RlZmluZSBFTEZfRVhFQ19QQUdF
U0laRQlQQUdFX1NJWkUKZGlmZiAtLWdpdCBhL2ZzL2NvbXBhdF9iaW5mbXRfZWxmLmMgYi9mcy9j
b21wYXRfYmluZm10X2VsZi5jCmluZGV4IGFhYWQ0Y2ExMjE3ZS4uMzA2OGQ1NzQzNmIzIDEwMDY0
NAotLS0gYS9mcy9jb21wYXRfYmluZm10X2VsZi5jCisrKyBiL2ZzL2NvbXBhdF9iaW5mbXRfZWxm
LmMKQEAgLTExMyw2ICsxMTMsMTEgQEAKICNkZWZpbmUJYXJjaF9zZXR1cF9hZGRpdGlvbmFsX3Bh
Z2VzIGNvbXBhdF9hcmNoX3NldHVwX2FkZGl0aW9uYWxfcGFnZXMKICNlbmRpZgogCisjaWZkZWYJ
Y29tcGF0X2VsZl9yZWFkX2ltcGxpZXNfZXhlYworI3VuZGVmCWVsZl9yZWFkX2ltcGxpZXNfZXhl
YworI2RlZmluZQllbGZfcmVhZF9pbXBsaWVzX2V4ZWMgY29tcGF0X2VsZl9yZWFkX2ltcGxpZXNf
ZXhlYworI2VuZGlmCisKIC8qCiAgKiBSZW5hbWUgYSBmZXcgb2YgdGhlIHN5bWJvbHMgdGhhdCBi
aW5mbXRfZWxmLmMgd2lsbCBkZWZpbmUuCiAgKiBUaGVzZSBhcmUgYWxsIGxvY2FsIHNvIHRoZSBu
YW1lcyBkb24ndCByZWFsbHkgbWF0dGVyLCBidXQgaXQKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
