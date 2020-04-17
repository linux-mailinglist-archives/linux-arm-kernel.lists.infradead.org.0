Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AFD1ADFC6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:27:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6I5Ze1mlQRkdyGcHKSKdYblQSnXJ/DSDHKi3Opxkz4Y=; b=HXdoyDIedbrYZw
	gwovzAL3bZPbCsyI9Kw0JCeGTPpDm3PYk748UqwMn5jrcWzWNCVkCJhVpxen23UqHKhHiA7ujuSDn
	T4enCaWrV/t7AX70pxtPjUxcQDRJLfMmcMWt8+HZULb/GgzhFrIlIh+S41b+GzooIV48foEQ5Dp0j
	VerjqOlvJy9hb9ldRx7wO0hML18+OkOSehhurjlIxSJ0JpGIYfXV+Mf7jZ5hUmqMDDNHAO96otAR9
	uYYcW+fBkFIs0a93f0qftJwPJOmVaOXUHGITU3UM6UpM+D74Pe5vcanC6BhxN1FbTDJnruRtuERyk
	I60c55aC+lxxgPdiSj5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRxn-0005Br-4X; Fri, 17 Apr 2020 14:27:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRxN-00053G-ER
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:27:03 +0000
Received: by mail-wr1-x441.google.com with SMTP id t14so3231168wrw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 07:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PHFxusB8wA5WqPB2sIr0XZtrSers8hydd/1i7jfoyIM=;
 b=QShcQD3/K5G7PhsyLb+vZfLdWTAN41ha5G6ulcEMrf8GhM4uaK8YsBVonWPtth9WWd
 6oTIBmj5FiXyMmvQAPoHg8pNnBD2gXKAYBOIlXjMYEIjzC7LvvtX1KetO0yjpjteIS/B
 S318g17YhYlnT4VwdAqdus2oUwoYJE0KnO3JZ8Fi/kZcUmY5o/ictTKsVa+uH2IOCogP
 YaYD0eN6kpvhE+TwSaXN1MwETTHUaNqEPQVdAg2eEOec0cc48M33gkY3vEE0dZDrcXby
 n9+QDI02e/PYKnPObUk1C8WZ0LtUtNeThWDUVy8icysQamXRYzki1uCbUNlXk0w89lLL
 W8Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PHFxusB8wA5WqPB2sIr0XZtrSers8hydd/1i7jfoyIM=;
 b=HSrBF2SWJy8WN/IXyQdwd9z2udPgJz5j17U0WPmF+BQwg1oyqJ2rwee8bDjJXOMqdu
 jIjHlh7S8Io9J45tQhLikutus2hizy+XPxc+r99axPum7SC97XRkwvteKpwLySuVLNwb
 k5EVq9j9FNBNghKXEE+/3x8cWIbreD/X6XYDvMMyfxxkeGuOqk3JfdoWDzIJkk6MNYma
 hfJlH74SNh0IZJP7nBA6XAWMWEgy/72OgChJpJQ8CY3UOy5R8DREX6fpjjIY6gl6fAAN
 EFZSn2P8O5a2F/DJYgzMaMkF7TtCWgaOQo37mc6aQ1CXC8UHwenQbiya/kOGS9VuOaha
 eIqw==
X-Gm-Message-State: AGi0Pub3tXJMpHpo231GOLcwl3mV3QI6p6YFqt08eLwfTu5+ghuZbueO
 1TPTPQjXGQG2AbshEyQlF/eDvA==
X-Google-Smtp-Source: APiQypIQeo4qw1hhOGPpOoyM89JM24bpa+h+F3bZbfjwtpTKTN/uPVbfWNixkdcH2WIW7Jp6P6/ENA==
X-Received: by 2002:adf:97ce:: with SMTP id t14mr4271829wrb.263.1587133619437; 
 Fri, 17 Apr 2020 07:26:59 -0700 (PDT)
Received: from localhost.localdomain
 ([2001:171b:226b:54a0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id a205sm7863556wmh.29.2020.04.17.07.26.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 07:26:58 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: linux-mtd@lists.infradead.org
Subject: [PATCH] mtd: cfi_cmdset_0001: Support the absence of protection
 registers
Date: Fri, 17 Apr 2020 16:23:26 +0200
Message-Id: <20200417142325.2931423-1-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_072702_011176_0440C3B1 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, vigneshr@ti.com,
 richard@nod.at, miquel.raynal@bootlin.com, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZsYXNoIGNvbnRyb2xsZXIgaW1wbGVtZW50ZWQgYnkgdGhlIEFybSBCYXNlIHBsYXRmb3Jt
IGJlaGF2ZXMgbGlrZQp0aGUgSW50ZWwgU3RyYXRhRmxhc2ggSjMgZGV2aWNlLCBidXQgb21pdHMg
c2V2ZXJhbCBmZWF0dXJlcy4gSW4KcGFydGljdWxhciBpdCBkb2Vzbid0IGltcGxlbWVudCBhIHBy
b3RlY3Rpb24gcmVnaXN0ZXIsIHNvICJOdW1iZXIgb2YKUHJvdGVjdGlvbiByZWdpc3RlciBmaWVs
ZHMiIGluIHRoZSBQcmltYXJ5IFZlbmRvci1TcGVjaWZpYyBFeHRlbmRlZApRdWVyeSwgaXMgMC4K
ClRoZSBJbnRlbCBTdHJhdGFGbGFzaCBKMyBkYXRhc2hlZXQgb25seSBsaXN0cyAxIGFzIGEgdmFs
aWQgdmFsdWUgZm9yCk51bVByb3RlY3Rpb25GaWVsZHMuIEl0IGRlc2NyaWJlcyB0aGUgZmllbGQg
YXM6CgoJIk51bWJlciBvZiBQcm90ZWN0aW9uIHJlZ2lzdGVyIGZpZWxkcyBpbiBKRURFQyBJRCBz
cGFjZS4KCeKAnDAwaCzigJ0gaW5kaWNhdGVzIHRoYXQgMjU2IHByb3RlY3Rpb24gYnl0ZXMgYXJl
IGF2YWlsYWJsZSIKCldoaWxlIGEgdmFsdWUgb2YgMCBtYXkgYXJndWFibHkgbm90IGJlIGFyY2hp
dGVjdHVyYWxseSB2YWxpZCwgdGhlCmRyaXZlcidzIGN1cnJlbnQgYmVoYXZpb3IgaXMgY2VydGFp
bmx5IHdyb25nOiBpZiBOdW1Qcm90ZWN0aW9uRmllbGRzIGlzCjAsIHJlYWRfcHJpX2ludGVsZXh0
KCkgYWRkcyBhIG5lZ2F0aXZlIHZhbHVlIHRvIHRoZSB1bnNpZ25lZCBleHRyYV9zaXplLAphbmQg
ZW5kcyB1cCBpbiBhbiBpbmZpbml0ZSBsb29wLgoKRml4IGl0IGJ5IGlnbm9yaW5nIGEgTnVtUHJv
dGVjdGlvbkZpZWxkcyBvZiAwLgoKU2lnbmVkLW9mZi1ieTogSmVhbi1QaGlsaXBwZSBCcnVja2Vy
IDxqZWFuLXBoaWxpcHBlQGxpbmFyby5vcmc+Ci0tLQpJIGd1ZXNzIHRoaXMgZmxhc2ggZGV2aWNl
IGhhcyBuZXZlciBiZWVuIHRlc3RlZCBvbiBMaW51eC4gVGhlIGJ1ZyBzaG93ZWQKdXAgd2hlbiB0
cnlpbmcgdG8gYm9vdCB0aGUgbGF0ZXN0IGFybTY0IGRlZmNvbmZpZywgd2hpY2ggZW5hYmxlZApD
T05GSUdfTVREX1BIWVNNQVBfT0YsIG9uIHRoZSBSZXZDIEZhc3RNb2RlbC4gV2l0aG91dCB0aGlz
IGNvbmZpZyBvcHRpb24KdGhlIGRldmljZSBpc24ndCBwcm9iZWQuCi0tLQogZHJpdmVycy9tdGQv
Y2hpcHMvY2ZpX2NtZHNldF8wMDAxLmMgfCAxMyArKysrKysrKy0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bXRkL2NoaXBzL2NmaV9jbWRzZXRfMDAwMS5jIGIvZHJpdmVycy9tdGQvY2hpcHMvY2ZpX2NtZHNl
dF8wMDAxLmMKaW5kZXggMTQyYzBmOTQ4NWZlMS4uNDIwMDFjNDk4MzNiOSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9tdGQvY2hpcHMvY2ZpX2NtZHNldF8wMDAxLmMKKysrIGIvZHJpdmVycy9tdGQvY2hp
cHMvY2ZpX2NtZHNldF8wMDAxLmMKQEAgLTQyMCw4ICs0MjAsOSBAQCByZWFkX3ByaV9pbnRlbGV4
dChzdHJ1Y3QgbWFwX2luZm8gKm1hcCwgX191MTYgYWRyKQogCQlleHRyYV9zaXplID0gMDsKIAog
CQkvKiBQcm90ZWN0aW9uIFJlZ2lzdGVyIGluZm8gKi8KLQkJZXh0cmFfc2l6ZSArPSAoZXh0cC0+
TnVtUHJvdGVjdGlvbkZpZWxkcyAtIDEpICoKLQkJCSAgICAgIHNpemVvZihzdHJ1Y3QgY2ZpX2lu
dGVsZXh0X290cGluZm8pOworCQlpZiAoZXh0cC0+TnVtUHJvdGVjdGlvbkZpZWxkcykKKwkJCWV4
dHJhX3NpemUgKz0gKGV4dHAtPk51bVByb3RlY3Rpb25GaWVsZHMgLSAxKSAqCisJCQkJICAgICAg
c2l6ZW9mKHN0cnVjdCBjZmlfaW50ZWxleHRfb3RwaW5mbyk7CiAJfQogCiAJaWYgKGV4dHAtPk1p
bm9yVmVyc2lvbiA+PSAnMScpIHsKQEAgLTY5NSwxNCArNjk2LDE2IEBAIHN0YXRpYyBpbnQgY2Zp
X2ludGVsZXh0X3BhcnRpdGlvbl9maXh1cChzdHJ1Y3QgbXRkX2luZm8gKm10ZCwKIAkgKi8KIAlp
ZiAoZXh0cCAmJiBleHRwLT5NYWpvclZlcnNpb24gPT0gJzEnICYmIGV4dHAtPk1pbm9yVmVyc2lv
biA+PSAnMycKIAkgICAgJiYgZXh0cC0+RmVhdHVyZVN1cHBvcnQgJiAoMSA8PCA5KSkgeworCQlp
bnQgb2ZmcyA9IDA7CiAJCXN0cnVjdCBjZmlfcHJpdmF0ZSAqbmV3Y2ZpOwogCQlzdHJ1Y3QgZmxj
aGlwICpjaGlwOwogCQlzdHJ1Y3QgZmxjaGlwX3NoYXJlZCAqc2hhcmVkOwotCQlpbnQgb2Zmcywg
bnVtcmVnaW9ucywgbnVtcGFydHMsIHBhcnRzaGlmdCwgbnVtdmlydGNoaXBzLCBpLCBqOworCQlp
bnQgbnVtcmVnaW9ucywgbnVtcGFydHMsIHBhcnRzaGlmdCwgbnVtdmlydGNoaXBzLCBpLCBqOwog
CiAJCS8qIFByb3RlY3Rpb24gUmVnaXN0ZXIgaW5mbyAqLwotCQlvZmZzID0gKGV4dHAtPk51bVBy
b3RlY3Rpb25GaWVsZHMgLSAxKSAqCi0JCSAgICAgICBzaXplb2Yoc3RydWN0IGNmaV9pbnRlbGV4
dF9vdHBpbmZvKTsKKwkJaWYgKGV4dHAtPk51bVByb3RlY3Rpb25GaWVsZHMpCisJCQlvZmZzID0g
KGV4dHAtPk51bVByb3RlY3Rpb25GaWVsZHMgLSAxKSAqCisJCQkgICAgICAgc2l6ZW9mKHN0cnVj
dCBjZmlfaW50ZWxleHRfb3RwaW5mbyk7CiAKIAkJLyogQnVyc3QgUmVhZCBpbmZvICovCiAJCW9m
ZnMgKz0gZXh0cC0+ZXh0cmFbb2ZmcysxXSsyOwotLSAKMi4yNi4wCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
