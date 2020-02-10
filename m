Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F231583B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:31:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/j43SP1ePEpkTqbCh4hULoCsLNTXO25Ipofj1JGQMZA=; b=AsxZ6ZR/OJsMnI
	FaHweDP1teoMpT5nWObd+bls2YPCPcIW9gQw+Dmt8ntNHO4fXsM62Lt16HsmpfQe5FO58UYvNhevY
	ImbGUzWCfUOe6aY8T+c4xGZuYIHHPscK4XDgh9nD0M4ff5vtl6uqoWmuHaXb8ojTMdyIShAXvnL6X
	D5KEPl/zLjbwDQypbeNktFNQ+5bkW7sxbCwn/gUpqToOHunIXpyU43fqiPtaJNOhIkOYkaCLaVjXy
	9Xm4oGeptZi1eUcbY29Kba7GgoI99Ch1+5tXaAOxDnlvuIdi8Vok+LtpnNJN03YEPKf20bSCzbPEn
	6AR+mPsCeyAc2waZKveA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EmS-0005sl-Q5; Mon, 10 Feb 2020 19:31:40 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Elp-0005T0-RO
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:31:03 +0000
Received: by mail-oi1-x241.google.com with SMTP id c16so10367327oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:31:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hedv3uQpLYtG/8d40iSwsTwWwbRFJKr8vrN4ZiDg04Q=;
 b=mqEHj3cJctfFXlmy16cRdbd3ZRwBg+PBoqBPYVmqQH/qHbN5NUcjIYDQxGJmRKQ7wa
 Gh/oTcwv3s+WJTQGeN5oXvRGmYE52sD2Oy62uw9zNjtHK9oLi+CKMUz2V13jB1bNCceN
 HKebkK1prPWHrTSh29Rcs3l4gWJQcq2tOzhxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hedv3uQpLYtG/8d40iSwsTwWwbRFJKr8vrN4ZiDg04Q=;
 b=E5il49I+2wW6VgEqB6swkeOCC/OssrQ0Gcj95Zx7RR8lK9hopu0Fv/h4rzHXtOOozK
 6ROq2K3IE2K1FZZPQjxWgNLGkO52KxGFp+ZB6btnx9XDPOMavtBtJ+HkffG5mbW0RjJd
 d+ocbTujgjdxlyGqI9q04UcYQP9EH21ZhyHFszZqKmQeb25alG3ZFNO/hoTWT0MhJvez
 LVwh/lhPi0faMev6GzmWuVUTjOVXtnyyRANsmEuynKp0yRE+mPuCISx+mQe8L6tOi9u4
 ITpbrSnlY5ZynARpbXXXcxqraByBFVGTsb/k4akMiNYd/vBa7dxk7ErokCuv8qunOimA
 YJqw==
X-Gm-Message-State: APjAAAWgUUYHRDIe8RHlafvrPbhGRe5M8m3xg4woYOD6NbvJnRXa+TmS
 kgrSHSl73M7Zv/5xUCi9xiWeTw==
X-Google-Smtp-Source: APXvYqxzrrMjKkyUG9U1mzxeIF/mXf4CdliJjd23xPg8Q25YEpKS/E/iAhQV5XTWVKedZ6gqCTRpxg==
X-Received: by 2002:aca:be57:: with SMTP id o84mr419172oif.138.1581363061318; 
 Mon, 10 Feb 2020 11:31:01 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id v23sm359350otj.61.2020.02.10.11.30.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:30:58 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Subject: [PATCH v3 3/7] x86/elf: Disable automatic READ_IMPLIES_EXEC for
 64-bit address spaces
Date: Mon, 10 Feb 2020 11:30:45 -0800
Message-Id: <20200210193049.64362-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210193049.64362-1-keescook@chromium.org>
References: <20200210193049.64362-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_113101_882248_E67F4DF9 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

V2l0aCBtb2Rlcm4geDg2IDY0LWJpdCBlbnZpcm9ubWVudHMsIHRoZXJlIHNob3VsZCBuZXZlciBi
ZSBhIG5lZWQgZm9yCmF1dG9tYXRpYyBSRUFEX0lNUExJRVNfRVhFQywgYXMgdGhlIGFyY2hpdGVj
dHVyZSBpcyBpbnRlbmRlZCB0byBhbHdheXMKYmUgZXhlY3V0ZS1iaXQgYXdhcmUgKGFzIGluLCB0
aGUgZGVmYXVsdCBtZW1vcnkgcHJvdGVjdGlvbiBzaG91bGQgYmUgTlgKdW5sZXNzIGEgcmVnaW9u
IGV4cGxpY2l0bHkgcmVxdWVzdHMgdG8gYmUgZXhlY3V0YWJsZSkuCgpUaGVyZSB3ZXJlIHZlcnkg
b2xkIHg4Nl82NCBzeXN0ZW1zIHRoYXQgbGFja2VkIHRoZSBOWCBiaXQsIGJ1dCBmb3IgdGhvc2Us
CnRoZSBOWCBiaXQgaXMsIG9idmlvdXNseSwgdW5lbmZvcmNlYWJsZSwgc28gdGhlc2UgY2hhbmdl
cyBzaG91bGQgaGF2ZQpubyBpbXBhY3Qgb24gdGhlbS4KClN1Z2dlc3RlZC1ieTogSGVjdG9yIE1h
cmNvLUdpc2JlcnQgPGhlY21hcmdpQHVwdi5lcz4KU2lnbmVkLW9mZi1ieTogS2VlcyBDb29rIDxr
ZWVzY29va0BjaHJvbWl1bS5vcmc+Ci0tLQogYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmggYi9hcmNoL3g4Ni9pbmNsdWRl
L2FzbS9lbGYuaAppbmRleCBhNzAzNTA2NTM3N2MuLmM5YjdiZTBiY2FkMyAxMDA2NDQKLS0tIGEv
YXJjaC94ODYvaW5jbHVkZS9hc20vZWxmLmgKKysrIGIvYXJjaC94ODYvaW5jbHVkZS9hc20vZWxm
LmgKQEAgLTI4Nyw3ICsyODcsNyBAQCBleHRlcm4gdTMyIGVsZl9od2NhcDI7CiAgKiDCoCDCoCDC
oCDCoCDCoCDCoCDCoENQVTogfCBsYWNrcyBOWCogwqB8IGhhcyBOWCwgaWEzMiDCoCDCoCB8IGhh
cyBOWCwgeDg2XzY0IHwKICAqIEVMRjogwqAgwqAgwqAgwqAgwqAgwqAgwqB8IMKgIMKgIMKgIMKg
IMKgIMKgfCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqB8CiAgKiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tfC0tLS0tLS0tLS0tLS0tLS0t
LXwtLS0tLS0tLS0tLS0tLS0tfAotICogbWlzc2luZyBHTlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8
IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1hbGwgwqAgwqAgwqAgfAorICogbWlzc2luZyBH
TlVfU1RBQ0sgfCBleGVjLWFsbCDCoCB8IGV4ZWMtYWxsIMKgIMKgIMKgIMKgIHwgZXhlYy1ub25l
wqAgwqAgwqAgfAogICogR05VX1NUQUNLID09IFJXWCDCoHwgZXhlYy1zdGFjayB8IGV4ZWMtc3Rh
Y2sgwqAgwqAgwqAgfCBleGVjLXN0YWNrIMKgIMKgIHwKICAqIEdOVV9TVEFDSyA9PSBSVyDCoCB8
IGV4ZWMtbm9uZSDCoHwgZXhlYy1ub25lIMKgIMKgIMKgIMKgfCBleGVjLW5vbmUgwqAgwqAgwqB8
CiAgKgpAQCAtMzAzLDcgKzMwMyw3IEBAIGV4dGVybiB1MzIgZWxmX2h3Y2FwMjsKICAqCiAgKi8K
ICNkZWZpbmUgZWxmX3JlYWRfaW1wbGllc19leGVjKGV4LCBleGVjdXRhYmxlX3N0YWNrKQlcCi0J
KGV4ZWN1dGFibGVfc3RhY2sgPT0gRVhTVEFDS19ERUZBVUxUKQorCShtbWFwX2lzX2lhMzIoKSAm
JiBleGVjdXRhYmxlX3N0YWNrID09IEVYU1RBQ0tfREVGQVVMVCkKIAogc3RydWN0IHRhc2tfc3Ry
dWN0OwogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
