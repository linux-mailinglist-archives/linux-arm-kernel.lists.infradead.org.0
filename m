Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F20100181
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAQoqCDwVIeomtHdSvs7brSi5lfsXdMoymtFrDz5FTQ=; b=D/g+LxylD/nhKO
	X6fhlPB7q2N7vmH7g2ErIqY8c+PSxUgjqMjxaNTPJKeMcL0aGZD6kXmObgEIJ9T26r9+Aan1M0Hwu
	YKTeurpAl+YL8w6LD2ZtYBLjQ23NZRheSfczVxxFvjLHJeXK1HwSa/5u3QiMg7/4NvfG3Zb9RnbBJ
	Ptnp3Vd0Hlg+NmnfwE17dezR1DgsLALMFR7l+du1PYdqRuFZ1GQ3tM9G8uVfqW89uJE1OPzEex7rO
	b75IbNfuyRWffeOh3J3CBp/aj36BbJJruNS8h2WZ3J5EbOjD2EZg3nOGST5AFw0D68IN40s9BkzTR
	z/X5e7LYIloo3uXzLNUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdV8-0005ID-PK; Mon, 18 Nov 2019 09:39:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTg-00047H-50
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id t1so18550508wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W5bXqrIjuWnRPljMAMXu9KqQKUGPcEz+PkaSRuI1ExA=;
 b=Az5+tvswXbvmz0HeEAtt2I2L3bhgy+u1mRpAd/GTF55zJWIkj4blVtjePK93mA4FKV
 vYv8Xjf0ZT7CfkevgldTJQ42mnRhDLpePzrpvLIe8xvXOgSynLWThLrTYhVQkTvaLQ6A
 eHG9bIEPHlKWVpOIxTCTRLGjw3RdV/wG1U4hBh3O9K/uw6AWDfL9ZgZI1pW9+ivUoB/b
 8R0AZFGbFR1+no3ZDLdr2oJ97Ln2jpeXK62jO/a5CHWkFQMzALcOIHVODDp6zNnOb3m/
 u5j+m0ossmM+c9heb6swprZskVDMzi5B/8K9vXdUYmy17osLjkgXKbLhdvkxVRUvRaiR
 ohQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W5bXqrIjuWnRPljMAMXu9KqQKUGPcEz+PkaSRuI1ExA=;
 b=ZBhfT+ogZTyPVRoCmeryUAdl6SI2lbHveKIECiUdoelr+4wcBfaukYcmdzUgnUCi5b
 A4vEl399sWbU1tZpoPkW6SuYe1iJ+j+G7588PSEQVkpEP4KhsC0ebXnSx8PVus+2EF4X
 eNY7/Z3JOfMBDqaA6qVzaC3DJvItgroXmLUyqo13RKjV36aVNqkQG69c0kRsxPtWpzGr
 emUdR3wN7Tfw07lhKPr8hasw+2B7lWuV1kuN7CDwshIZi5zrQe5RA9EVSUwIDWnJqlgX
 pJ9pbHMzexufYbgHrAXWqzSUrynZK8T6bJReEJ6fZCWbEXl2t+hRMnBUw50IMcGTSEzy
 BesQ==
X-Gm-Message-State: APjAAAUGxOeTciVEJIVDxG/v7Fr69Okzca+TUW7WPb+KcwjuoXaf269K
 iDwNmFoizW3dHgFSjUVEnQQ=
X-Google-Smtp-Source: APXvYqxwdhYMF82bItahGWRsWafBgu/DOH+ZN5cArMrkQvd3gVfhaSL84Pb234f0SxbwfO13R5r23g==
X-Received: by 2002:adf:f607:: with SMTP id t7mr28746843wrp.390.1574069866687; 
 Mon, 18 Nov 2019 01:37:46 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:46 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 5/8] pwm: sun4i: Add support to output source clock directly
Date: Mon, 18 Nov 2019 10:37:24 +0100
Message-Id: <20191118093727.21899-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013748_237143_1FCF915B 
X-CRM114-Status: GOOD (  21.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-sunxi@googlegroups.com,
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
IDkyICsrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCA5M2Y0
ZDQ0ZTlmYTguLmI2NDI1MGI3ZTJiZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTMsNiArMywxMCBAQAogICogRHJp
dmVyIGZvciBBbGx3aW5uZXIgc3VuNGkgUHVsc2UgV2lkdGggTW9kdWxhdGlvbiBDb250cm9sbGVy
CiAgKgogICogQ29weXJpZ2h0IChDKSAyMDE0IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUu
YmVsbG9uaUBmcmVlLWVsZWN0cm9ucy5jb20+CisgKgorICogTGltaXRhdGlvbnM6CisgKiAtIFdo
ZW4gb3V0cHV0aW5nIHRoZSBzb3VyY2UgY2xvY2sgZGlyZWN0bHksIHRoZSBQV00gbG9naWMgd2ls
bCBiZSBieXBhc3NlZAorICogICBhbmQgdGhlIGN1cnJlbnRseSBydW5uaW5nIHBlcmlvZCBpcyBu
b3QgZ3VhcmFudGVlZCB0byBiZSBjb21wbGV0ZWQKICAqLwogCiAjaW5jbHVkZSA8bGludXgvYml0
b3BzLmg+CkBAIC03Myw2ICs3Nyw3IEBAIHN0YXRpYyBjb25zdCB1MzIgcHJlc2NhbGVyX3RhYmxl
W10gPSB7CiAKIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiAJYm9vbCBoYXNfcHJlc2NhbGVyX2J5
cGFzczsKKwlib29sIGhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQ7CiAJdW5zaWduZWQgaW50IG5w
d207CiB9OwogCkBAIC0xMTgsNiArMTIzLDIwIEBAIHN0YXRpYyB2b2lkIHN1bjRpX3B3bV9nZXRf
c3RhdGUoc3RydWN0IHB3bV9jaGlwICpjaGlwLAogCiAJdmFsID0gc3VuNGlfcHdtX3JlYWRsKHN1
bjRpX3B3bSwgUFdNX0NUUkxfUkVHKTsKIAorCS8qCisJICogUFdNIGNoYXB0ZXIgaW4gSDYgbWFu
dWFsIGhhcyBhIGRpYWdyYW0gd2hpY2ggZXhwbGFpbnMgdGhhdCBpZiBieXBhc3MKKwkgKiBiaXQg
aXMgc2V0LCBubyBvdGhlciBzZXR0aW5nIGhhcyBhbnkgbWVhbmluZy4gRXZlbiBtb3JlLCBleHBl
cmltZW50CisJICogcHJvdmVkIHRoYXQgYWxzbyBlbmFibGUgYml0IGlzIGlnbm9yZWQgaW4gdGhp
cyBjYXNlLgorCSAqLworCWlmICgodmFsICYgQklUX0NIKFBXTV9CWVBBU1MsIHB3bS0+aHdwd20p
KSAmJgorCSAgICBzdW40aV9wd20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsK
KwkJc3RhdGUtPnBlcmlvZCA9IERJVl9ST1VORF9VUF9VTEwoTlNFQ19QRVJfU0VDLCBjbGtfcmF0
ZSk7CisJCXN0YXRlLT5kdXR5X2N5Y2xlID0gRElWX1JPVU5EX1VQX1VMTChzdGF0ZS0+cGVyaW9k
LCAyKTsKKwkJc3RhdGUtPnBvbGFyaXR5ID0gUFdNX1BPTEFSSVRZX05PUk1BTDsKKwkJc3RhdGUt
PmVuYWJsZWQgPSB0cnVlOworCQlyZXR1cm47CisJfQorCiAJaWYgKChQV01fUkVHX1BSRVNDQUwo
dmFsLCBwd20tPmh3cHdtKSA9PSBQV01fUFJFU0NBTF9NQVNLKSAmJgogCSAgICBzdW40aV9wd20t
PmRhdGEtPmhhc19wcmVzY2FsZXJfYnlwYXNzKQogCQlwcmVzY2FsZXIgPSAxOwpAQCAtMTQ5LDEz
ICsxNjgsMjMgQEAgc3RhdGljIHZvaWQgc3VuNGlfcHdtX2dldF9zdGF0ZShzdHJ1Y3QgcHdtX2No
aXAgKmNoaXAsCiAKIHN0YXRpYyBpbnQgc3VuNGlfcHdtX2NhbGN1bGF0ZShzdHJ1Y3Qgc3VuNGlf
cHdtX2NoaXAgKnN1bjRpX3B3bSwKIAkJCSAgICAgICBjb25zdCBzdHJ1Y3QgcHdtX3N0YXRlICpz
dGF0ZSwKLQkJCSAgICAgICB1MzIgKmR0eSwgdTMyICpwcmQsIHVuc2lnbmVkIGludCAqcHJzY2xy
KQorCQkJICAgICAgIHUzMiAqZHR5LCB1MzIgKnByZCwgdW5zaWduZWQgaW50ICpwcnNjbHIsCisJ
CQkgICAgICAgYm9vbCAqYnlwYXNzKQogewogCXU2NCBjbGtfcmF0ZSwgZGl2ID0gMDsKIAl1bnNp
Z25lZCBpbnQgcHZhbCwgcHJlc2NhbGVyID0gMDsKIAogCWNsa19yYXRlID0gY2xrX2dldF9yYXRl
KHN1bjRpX3B3bS0+Y2xrKTsKIAorCSpieXBhc3MgPSBzdGF0ZS0+ZW5hYmxlZCAmJgorCQkgIChz
dGF0ZS0+cGVyaW9kICogY2xrX3JhdGUgPj0gTlNFQ19QRVJfU0VDKSAmJgorCQkgIChzdGF0ZS0+
cGVyaW9kICogY2xrX3JhdGUgPCAyICogTlNFQ19QRVJfU0VDKSAmJgorCQkgIChzdGF0ZS0+ZHV0
eV9jeWNsZSAqIGNsa19yYXRlICogMiA+PSBOU0VDX1BFUl9TRUMpOworCisJLyogU2tpcCBjYWxj
dWxhdGlvbiBvZiBvdGhlciBwYXJhbWV0ZXJzIGlmIHdlIGJ5cGFzcyB0aGVtICovCisJaWYgKCpi
eXBhc3MgJiYgc3VuNGlfcHdtLT5kYXRhLT5oYXNfZGlyZWN0X21vZF9jbGtfb3V0cHV0KQorCQly
ZXR1cm4gMDsKKwogCWlmIChzdW40aV9wd20tPmRhdGEtPmhhc19wcmVzY2FsZXJfYnlwYXNzKSB7
CiAJCS8qIEZpcnN0LCB0ZXN0IHdpdGhvdXQgYW55IHByZXNjYWxlciB3aGVuIGF2YWlsYWJsZSAq
LwogCQlwcmVzY2FsZXIgPSBQV01fUFJFU0NBTF9NQVNLOwpAQCAtMjAyLDEwICsyMzEsMTEgQEAg
c3RhdGljIGludCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlwLCBzdHJ1Y3Qg
cHdtX2RldmljZSAqcHdtLAogewogCXN0cnVjdCBzdW40aV9wd21fY2hpcCAqc3VuNGlfcHdtID0g
dG9fc3VuNGlfcHdtX2NoaXAoY2hpcCk7CiAJc3RydWN0IHB3bV9zdGF0ZSBjc3RhdGU7Ci0JdTMy
IGN0cmw7CisJdTMyIGN0cmwsIHBlcmlvZCwgZHV0eSwgdmFsOwogCWludCByZXQ7Ci0JdW5zaWdu
ZWQgaW50IGRlbGF5X3VzOworCXVuc2lnbmVkIGludCBkZWxheV91cywgcHJlc2NhbGVyOwogCXVu
c2lnbmVkIGxvbmcgbm93OworCWJvb2wgYnlwYXNzOwogCiAJcHdtX2dldF9zdGF0ZShwd20sICZj
c3RhdGUpOwogCkBAIC0yMjAsNDMgKzI1MCw0OCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9hcHBs
eShzdHJ1Y3QgcHdtX2NoaXAgKmNoaXAsIHN0cnVjdCBwd21fZGV2aWNlICpwd20sCiAJc3Bpbl9s
b2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7CiAJY3RybCA9IHN1bjRpX3B3bV9yZWFkbChzdW40
aV9wd20sIFBXTV9DVFJMX1JFRyk7CiAKLQlpZiAoKGNzdGF0ZS5wZXJpb2QgIT0gc3RhdGUtPnBl
cmlvZCkgfHwKLQkgICAgKGNzdGF0ZS5kdXR5X2N5Y2xlICE9IHN0YXRlLT5kdXR5X2N5Y2xlKSkg
ewotCQl1MzIgcGVyaW9kLCBkdXR5LCB2YWw7Ci0JCXVuc2lnbmVkIGludCBwcmVzY2FsZXI7CisJ
cmV0ID0gc3VuNGlfcHdtX2NhbGN1bGF0ZShzdW40aV9wd20sIHN0YXRlLCAmZHV0eSwgJnBlcmlv
ZCwgJnByZXNjYWxlciwKKwkJCQkgICZieXBhc3MpOworCWlmIChyZXQpIHsKKwkJZGV2X2Vycihj
aGlwLT5kZXYsICJwZXJpb2QgZXhjZWVkcyB0aGUgbWF4aW11bSB2YWx1ZVxuIik7CisJCXNwaW5f
dW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7CisJCWlmICghY3N0YXRlLmVuYWJsZWQpCisJ
CQljbGtfZGlzYWJsZV91bnByZXBhcmUoc3VuNGlfcHdtLT5jbGspOworCQlyZXR1cm4gcmV0Owor
CX0KIAotCQlyZXQgPSBzdW40aV9wd21fY2FsY3VsYXRlKHN1bjRpX3B3bSwgc3RhdGUsCi0JCQkJ
CSAgJmR1dHksICZwZXJpb2QsICZwcmVzY2FsZXIpOwotCQlpZiAocmV0KSB7Ci0JCQlkZXZfZXJy
KGNoaXAtPmRldiwgInBlcmlvZCBleGNlZWRzIHRoZSBtYXhpbXVtIHZhbHVlXG4iKTsKLQkJCXNw
aW5fdW5sb2NrKCZzdW40aV9wd20tPmN0cmxfbG9jayk7Ci0JCQlpZiAoIWNzdGF0ZS5lbmFibGVk
KQotCQkJCWNsa19kaXNhYmxlX3VucHJlcGFyZShzdW40aV9wd20tPmNsayk7Ci0JCQlyZXR1cm4g
cmV0OworCWlmIChzdW40aV9wd20tPmRhdGEtPmhhc19kaXJlY3RfbW9kX2Nsa19vdXRwdXQpIHsK
KwkJaWYgKGJ5cGFzcykgeworCQkJY3RybCB8PSBCSVRfQ0goUFdNX0JZUEFTUywgcHdtLT5od3B3
bSk7CisJCQkvKiBXZSBjYW4gc2tpcCBhcHBseSBvZiBvdGhlciBwYXJhbWV0ZXJzICovCisJCQln
b3RvIGJ5cGFzc19tb2RlOworCQl9IGVsc2UgeworCQkJY3RybCAmPSB+QklUX0NIKFBXTV9CWVBB
U1MsIHB3bS0+aHdwd20pOwogCQl9CisJfQogCi0JCWlmIChQV01fUkVHX1BSRVNDQUwoY3RybCwg
cHdtLT5od3B3bSkgIT0gcHJlc2NhbGVyKSB7Ci0JCQkvKiBQcmVzY2FsZXIgY2hhbmdlZCwgdGhl
IGNsb2NrIGhhcyB0byBiZSBnYXRlZCAqLwotCQkJY3RybCAmPSB+QklUX0NIKFBXTV9DTEtfR0FU
SU5HLCBwd20tPmh3cHdtKTsKLQkJCXN1bjRpX3B3bV93cml0ZWwoc3VuNGlfcHdtLCBjdHJsLCBQ
V01fQ1RSTF9SRUcpOwotCi0JCQljdHJsICY9IH5CSVRfQ0goUFdNX1BSRVNDQUxfTUFTSywgcHdt
LT5od3B3bSk7Ci0JCQljdHJsIHw9IEJJVF9DSChwcmVzY2FsZXIsIHB3bS0+aHdwd20pOwotCQl9
CisJaWYgKFBXTV9SRUdfUFJFU0NBTChjdHJsLCBwd20tPmh3cHdtKSAhPSBwcmVzY2FsZXIpIHsK
KwkJLyogUHJlc2NhbGVyIGNoYW5nZWQsIHRoZSBjbG9jayBoYXMgdG8gYmUgZ2F0ZWQgKi8KKwkJ
Y3RybCAmPSB+QklUX0NIKFBXTV9DTEtfR0FUSU5HLCBwd20tPmh3cHdtKTsKKwkJc3VuNGlfcHdt
X3dyaXRlbChzdW40aV9wd20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7CiAKLQkJdmFsID0gKGR1dHkg
JiBQV01fRFRZX01BU0spIHwgUFdNX1BSRChwZXJpb2QpOwotCQlzdW40aV9wd21fd3JpdGVsKHN1
bjRpX3B3bSwgdmFsLCBQV01fQ0hfUFJEKHB3bS0+aHdwd20pKTsKLQkJc3VuNGlfcHdtLT5uZXh0
X3BlcmlvZFtwd20tPmh3cHdtXSA9IGppZmZpZXMgKwotCQkJdXNlY3NfdG9famlmZmllcyhjc3Rh
dGUucGVyaW9kIC8gMTAwMCArIDEpOwotCQlzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3bS0+aHdw
d21dID0gdHJ1ZTsKKwkJY3RybCAmPSB+QklUX0NIKFBXTV9QUkVTQ0FMX01BU0ssIHB3bS0+aHdw
d20pOworCQljdHJsIHw9IEJJVF9DSChwcmVzY2FsZXIsIHB3bS0+aHdwd20pOwogCX0KIAorCXZh
bCA9IChkdXR5ICYgUFdNX0RUWV9NQVNLKSB8IFBXTV9QUkQocGVyaW9kKTsKKwlzdW40aV9wd21f
d3JpdGVsKHN1bjRpX3B3bSwgdmFsLCBQV01fQ0hfUFJEKHB3bS0+aHdwd20pKTsKKwlzdW40aV9w
d20tPm5leHRfcGVyaW9kW3B3bS0+aHdwd21dID0gamlmZmllcyArCisJCXVzZWNzX3RvX2ppZmZp
ZXMoY3N0YXRlLnBlcmlvZCAvIDEwMDAgKyAxKTsKKwlzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3
bS0+aHdwd21dID0gdHJ1ZTsKKwogCWlmIChzdGF0ZS0+cG9sYXJpdHkgIT0gUFdNX1BPTEFSSVRZ
X05PUk1BTCkKIAkJY3RybCAmPSB+QklUX0NIKFBXTV9BQ1RfU1RBVEUsIHB3bS0+aHdwd20pOwog
CWVsc2UKIAkJY3RybCB8PSBCSVRfQ0goUFdNX0FDVF9TVEFURSwgcHdtLT5od3B3bSk7CiAKIAlj
dHJsIHw9IEJJVF9DSChQV01fQ0xLX0dBVElORywgcHdtLT5od3B3bSk7CisKIAlpZiAoc3RhdGUt
PmVuYWJsZWQpIHsKIAkJY3RybCB8PSBCSVRfQ0goUFdNX0VOLCBwd20tPmh3cHdtKTsKIAl9IGVs
c2UgaWYgKCFzdW40aV9wd20tPm5lZWRzX2RlbGF5W3B3bS0+aHdwd21dKSB7CkBAIC0yNjQsNiAr
Mjk5LDcgQEAgc3RhdGljIGludCBzdW40aV9wd21fYXBwbHkoc3RydWN0IHB3bV9jaGlwICpjaGlw
LCBzdHJ1Y3QgcHdtX2RldmljZSAqcHdtLAogCQljdHJsICY9IH5CSVRfQ0goUFdNX0NMS19HQVRJ
TkcsIHB3bS0+aHdwd20pOwogCX0KIAorYnlwYXNzX21vZGU6CiAJc3VuNGlfcHdtX3dyaXRlbChz
dW40aV9wd20sIGN0cmwsIFBXTV9DVFJMX1JFRyk7CiAKIAlzcGluX3VubG9jaygmc3VuNGlfcHdt
LT5jdHJsX2xvY2spOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
