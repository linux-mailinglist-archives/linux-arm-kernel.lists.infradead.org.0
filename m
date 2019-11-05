Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A51EFE30
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrLAlNHyV8qD7bAXPDSRsrIyvW0Iz3u4Rote/kUB2Fk=; b=UYZDrHfUvrKluD
	VrEUxucVU0TTWNXPWPdDEaX0DnAhP+JqvP7zrGLojeNZDlva8UTnZNQrWZ824ZNWmTxu9K+OOSVMi
	H9rDLJ7i4IOJd8ZwZYYnIGiwr5yTwbbr8cLNrNLYJ5xEbXlNNhbXpsAutTfd+M/XeGN2auVae6I45
	sQ0xy5YsLwBQY/27wvmK8b4buTOBGWE+5Uo3AjcuhEuhFgMm6lPn6aJUfxgB8MbYWHafPRPAPeP0c
	08HDF5L3LJ6on8ZyJPfzeeiUsvwOWaZgjOWuCtVvLCp0ysJPPYz43LWlDqH+4gyvxZBCqS+AcYC/z
	RnawnppmfdQ2JKICQNYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRygv-0003Lc-QS; Tue, 05 Nov 2019 13:16:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfp-0001Vz-Fx
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:08 +0000
Received: by mail-wm1-x342.google.com with SMTP id z19so15909332wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xt6+YnHhbZbK7S4nwP8vGudUXXjwmJXOlHYfRvq7dDU=;
 b=b82PUhZdaCHspXDf476oBCr7LWRwa2nNrQGnyHJooYVLOdqhoJy2e9rnqbwZnWnXQ5
 u4SfbtZP8saEAUXq3Sr7xz4ElQvFJKrlJXOkRONQjW+dGM1covE4o/ZS2ObmjsxMfBxf
 mezsG2nmZXXMwWEbw28rdAlP5axhZCQnPbDDLW8useI38aBaQlFwIjjI7C3bil/xvV/V
 MBoX7x0JT+sQtGPXqRTMi5oPdCCfrDP1jwhgnE5tMMvP2hbzZpj2srlP2nS5Eia8aJPj
 Yf2oGNeJCVMCIN1BzsIMsTVDSc9+q+0S16LGcjkC+j2JssXhSguBQIR9vPSof6leQye+
 25qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xt6+YnHhbZbK7S4nwP8vGudUXXjwmJXOlHYfRvq7dDU=;
 b=HxMqV4BlkanhIRnc5DZn0fNB8QBFKwT6mX3QLFMFMorAkyv5eJftiZVhaS+Rmvg2Jt
 figeRQ+t9z3svmCv8/gy7NQUZVM9FajKgZEz61DMASat4mqh6NmIwvda5aNYdv2q0Rvt
 I0zw1OlSyV+HR+CMVKdMZVVLKRPV6NcjiS8PlUSGOHoLYHiCzFgh+9VwfbNqJYyM+/6P
 XxGr9atNiocEijszY8JcQGcJeLTHcNGx163uGxUtaikfDqzXcdxLuZ/dwuYp/AKO7OGo
 MyVQIuFoMGEOfvkHTgknz5V6WzMGBDC1pxyry2/8V2wWIhCgwkFjQZxDx9wO66ZvqV6+
 OZVw==
X-Gm-Message-State: APjAAAV4rDZElsb4bvRDa1Dg3D8x9R9EysOx+2RYylJl9W+1f66qJICn
 0N9Sl58N0b9GbZFML200umA74arM4UKolQ==
X-Google-Smtp-Source: APXvYqwmAQr34KTYKExdiiUMK+I3NRAd7G+ntwNMztShxd52M8uAfLlZrBw5n55jwsNDDz327arL0w==
X-Received: by 2002:a1c:a751:: with SMTP id q78mr4415744wme.129.1572959704075; 
 Tue, 05 Nov 2019 05:15:04 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:03 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 4/7] pwm: sun4i: Add support to output source clock directly
Date: Tue,  5 Nov 2019 14:14:53 +0100
Message-Id: <20191105131456.32400-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051505_559444_1DE1A463 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKUFdNIGNvcmUg
aGFzIGFuIG9wdGlvbiB0byBieXBhc3Mgd2hvbGUgbG9naWMgYW5kIG91dHB1dCB1bmNoYW5nZWQg
c291cmNlCmNsb2NrIGFzIFBXTSBvdXRwdXQuIFRoaXMgaXMgYWNoaWV2ZWQgYnkgZW5hYmxpbmcg
YnlwYXNzIGJpdC4KCk5vdGUgdGhhdCB3aGVuIGJ5cGFzcyBpcyBlbmFibGVkLCBubyBvdGhlciBz
ZXR0aW5nIGhhcyBhbnkgbWVhbmluZywgbm90CmV2ZW4gZW5hYmxlIGJpdC4KClRoaXMgbW9kZSBv
ZiBvcGVyYXRpb24gaXMgbmVlZGVkIHRvIGFjaGlldmUgaGlnaCBlbm91Z2ggZnJlcXVlbmN5IHRv
CnNlcnZlIGFzIGNsb2NrIHNvdXJjZSBmb3IgQUMyMDAgY2hpcCB3aGljaCBpcyBpbnRlZ3JhdGVk
IGludG8gc2FtZQpwYWNrYWdlIGFzIEg2IFNvQy4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3Jh
YmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDM4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdl
ZCwgMzcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggNTRlMTlmYTU2
YTRlLi44MTBhYmY0N2MyNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisr
KyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC0zLDYgKzMsMTAgQEAKICAqIERyaXZlciBm
b3IgQWxsd2lubmVyIHN1bjRpIFB1bHNlIFdpZHRoIE1vZHVsYXRpb24gQ29udHJvbGxlcgogICoK
ICAqIENvcHlyaWdodCAoQykgMjAxNCBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxv
bmlAZnJlZS1lbGVjdHJvbnMuY29tPgorICoKKyAqIExpbWl0YXRpb25zOgorICogLSBXaGVuIG91
dHB1dGluZyB0aGUgc291cmNlIGNsb2NrIGRpcmVjdGx5LCB0aGUgUFdNIGxvZ2ljIHdpbGwgYmUg
YnlwYXNzZWQKKyAqICAgYW5kIHRoZSBjdXJyZW50bHkgcnVubmluZyBwZXJpb2QgaXMgbm90IGd1
YXJhbnRlZWQgdG8gYmUgY29tcGxldGVkCiAgKi8KIAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5o
PgpAQCAtNzMsNiArNzcsNyBAQCBzdGF0aWMgY29uc3QgdTMyIHByZXNjYWxlcl90YWJsZVtdID0g
ewogCiBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewogCWJvb2wgaGFzX3ByZXNjYWxlcl9ieXBhc3M7
CisJYm9vbCBoYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0OwogCXVuc2lnbmVkIGludCBucHdtOwog
fTsKIApAQCAtMTE4LDYgKzEyMywyMCBAQCBzdGF0aWMgdm9pZCBzdW40aV9wd21fZ2V0X3N0YXRl
KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwKIAogCXZhbCA9IHN1bjRpX3B3bV9yZWFkbChzdW40aV9w
d20sIFBXTV9DVFJMX1JFRyk7CiAKKwkvKgorCSAqIFBXTSBjaGFwdGVyIGluIEg2IG1hbnVhbCBo
YXMgYSBkaWFncmFtIHdoaWNoIGV4cGxhaW5zIHRoYXQgaWYgYnlwYXNzCisJICogYml0IGlzIHNl
dCwgbm8gb3RoZXIgc2V0dGluZyBoYXMgYW55IG1lYW5pbmcuIEV2ZW4gbW9yZSwgZXhwZXJpbWVu
dAorCSAqIHByb3ZlZCB0aGF0IGFsc28gZW5hYmxlIGJpdCBpcyBpZ25vcmVkIGluIHRoaXMgY2Fz
ZS4KKwkgKi8KKwlpZiAoKHZhbCAmIEJJVF9DSChQV01fQllQQVNTLCBwd20tPmh3cHdtKSkgJiYK
KwkgICAgc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KSB7CisJCXN0
YXRlLT5wZXJpb2QgPSBESVZfUk9VTkRfVVBfVUxMKE5TRUNfUEVSX1NFQywgY2xrX3JhdGUpOwor
CQlzdGF0ZS0+ZHV0eV9jeWNsZSA9IHN0YXRlLT5wZXJpb2QgLyAyOworCQlzdGF0ZS0+cG9sYXJp
dHkgPSBQV01fUE9MQVJJVFlfTk9STUFMOworCQlzdGF0ZS0+ZW5hYmxlZCA9IHRydWU7CisJCXJl
dHVybjsKKwl9CisKIAlpZiAoKFBXTV9SRUdfUFJFU0NBTCh2YWwsIHB3bS0+aHdwd20pID09IFBX
TV9QUkVTQ0FMX01BU0spICYmCiAJICAgIHN1bjRpX3B3bS0+ZGF0YS0+aGFzX3ByZXNjYWxlcl9i
eXBhc3MpCiAJCXByZXNjYWxlciA9IDE7CkBAIC0yMDMsNyArMjIyLDggQEAgc3RhdGljIGludCBz
dW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3QgcHdtX2RldmljZSAq
cHdtLAogewogCXN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtID0gdG9fc3VuNGlfcHdt
X2NoaXAoY2hpcCk7CiAJc3RydWN0IHB3bV9zdGF0ZSBjc3RhdGU7Ci0JdTMyIGN0cmw7CisJdTMy
IGN0cmwsIGNsa19yYXRlOworCWJvb2wgYnlwYXNzOwogCWludCByZXQ7CiAJdW5zaWduZWQgaW50
IGRlbGF5X3VzOwogCXVuc2lnbmVkIGxvbmcgbm93OwpAQCAtMjE4LDYgKzIzOCwxNSBAQCBzdGF0
aWMgaW50IHN1bjRpX3B3bV9hcHBseShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21f
ZGV2aWNlICpwd20sCiAJCX0KIAl9CiAKKwkvKgorCSAqIEFsdGhvdWdoIGl0IHdvdWxkIG1ha2Ug
bXVjaCBtb3JlIHNlbnNlIHRvIGNoZWNrIGZvciBieXBhc3MgaW4KKwkgKiBzdW40aV9wd21fY2Fs
Y3VsYXRlKCksIHZhbHVlIG9mIGJ5cGFzcyBiaXQgYWxzbyBkZXBlbmRzIG9uICJlbmFibGVkIi4K
KwkgKi8KKwljbGtfcmF0ZSA9IGNsa19nZXRfcmF0ZShzdW40aV9wd20tPmNsayk7CisJYnlwYXNz
ID0gc3RhdGUtPmVuYWJsZWQgJiYKKwkJIChzdGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNF
Q19QRVJfU0VDKSAmJgorCQkgKHN0YXRlLT5kdXR5X2N5Y2xlICogMiA9PSBzdGF0ZS0+cGVyaW9k
KTsKKwogCXNwaW5fbG9jaygmc3VuNGlfcHdtLT5jdHJsX2xvY2spOwogCWN0cmwgPSBzdW40aV9w
d21fcmVhZGwoc3VuNGlfcHdtLCBQV01fQ1RSTF9SRUcpOwogCkBAIC0yNjUsNiArMjk0LDEzIEBA
IHN0YXRpYyBpbnQgc3VuNGlfcHdtX2FwcGx5KHN0cnVjdCBwd21fY2hpcCAqY2hpcCwgc3RydWN0
IHB3bV9kZXZpY2UgKnB3bSwKIAkJY3RybCAmPSB+QklUX0NIKFBXTV9DTEtfR0FUSU5HLCBwd20t
Pmh3cHdtKTsKIAl9CiAKKwlpZiAoc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtf
b3V0cHV0KSB7CisJCWlmIChieXBhc3MpCisJCQljdHJsIHw9IEJJVF9DSChQV01fQllQQVNTLCBw
d20tPmh3cHdtKTsKKwkJZWxzZQorCQkJY3RybCAmPSB+QklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+
aHdwd20pOworCX0KKwogCXN1bjRpX3B3bV93cml0ZWwoc3VuNGlfcHdtLCBjdHJsLCBQV01fQ1RS
TF9SRUcpOwogCiAJc3Bpbl91bmxvY2soJnN1bjRpX3B3bS0+Y3RybF9sb2NrKTsKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
