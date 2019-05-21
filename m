Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99CA254CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:04:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gdlay2lBI9a+kFgFsMVzZVH8BlZM/caLcsQFT9GMRYE=; b=F+/kulampmgHsU
	MTHk02DaAiHx64BPRkmZ1Rpga0ddNE3Q3H+NIKfn2wAfZ8kiXr+nrlrzUPFLjA4KHi5Doci2hba5E
	W1duQNAEIly7H4xQOFgnUmJIuoi98zvE8wtWZfUVfx6rRJOu9ZMquN87EoNtZRsEvmeU1LG9snys2
	QkgYtQGo/W1T6LZ/ssYkaftr6bv9zzFf8QaPbiLzvio19hEekOl8Qsd5kxAiiDNJrfXPskKot1Leb
	+YtaKYGGknoswDbX+AXyo4givxiA29UsnCK+0VRjAnFvFm+ww8MM7kr1+OY4pQSBJb4p++7Gb1f65
	N62J0sHLofnOh0UH1OKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7FL-000111-Qe; Tue, 21 May 2019 16:04:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7Er-0000YS-UT
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:03:43 +0000
Received: by mail-wr1-x443.google.com with SMTP id d18so19271502wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QpDXZXYym29zoRjsqduFr5nvO56XxhEiJtjU9uFwgpA=;
 b=myg0kVbvmbZMg4wMSNJNjqjThk/atZjhPgsXft0HcYvA6F/Wb2aqyb7pgjdU5vd1Uq
 Oa0OVzB8LMhxHE1skUKFmESOAnmFvl6LyhmTnZD9Z/nFkLIem17t1B6wBLYvfXjQVafR
 62coFzNMdQw2UgoOJ4MNRlOmQIddli7ELBYACmyOipYaBIrlVVhrdp+mHL/gJMDl7tA8
 ZA63gsCPHuVZ5zHSqSTV9eEj5Skt649vHWcJR8RKNu3ujkGmls609fiShQfRpjEB8y83
 Zvnpa1dosXnvxbI2GfTxha4jbl0jNivujYxmlqw7VYOlU4y7WMFkhACfFexmxVLcEDpp
 2QIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QpDXZXYym29zoRjsqduFr5nvO56XxhEiJtjU9uFwgpA=;
 b=HGeoXmYP1Pgh7udPAqx4JIM58mNQAKz1PgYcaBt+RQg4ChQoM/pXGjXZ41LjX2xZEa
 9MmsxWUQnxosg0oa3tN0VI1u3j7w0x1jiVf4KcxcAnpcqU0bVNL8yLhYsFqpQAY6QZgK
 Zl1u1ZaluJICIHt3H2X9ulBsiVkAIEiBLlrKYSApXb+BAknO5NE91/nEfE0fFrrd1txP
 iy99c+g2JAynB71qrh8BTjsDNzcztH8eWB6+a5O735Mp6FEtbsa7cqDHM6NmhT+Xguc7
 Hx7+OuoQd17jPK0vnsSkHrHjSziZ+0zsw2hSDj00lKdamuVu5/9pJhUiji7CDHmbZbVI
 DeCQ==
X-Gm-Message-State: APjAAAWpGFaemutwOZUIfSX/dHISQMkcYmE6KbTHdMyO3+8GNgszU0tp
 HE1ZyE0SUOes9VaywoJbnK4=
X-Google-Smtp-Source: APXvYqyG8Z9Cg25S9tECJteAsXvRH4P6r7/DZmyURD8DPwh2PqxPxWbojqBz44LdbbuIcGGMG56h8w==
X-Received: by 2002:adf:f351:: with SMTP id e17mr197313wrp.113.1558454620199; 
 Tue, 21 May 2019 09:03:40 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id g11sm6853811wrq.89.2019.05.21.09.03.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:03:39 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
 Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 2/5] arm64: dts: allwinner: h6: add watchdog node
Date: Tue, 21 May 2019 18:03:27 +0200
Message-Id: <20190521160330.28402-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521160330.28402-1-peron.clem@gmail.com>
References: <20190521160330.28402-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_090341_978841_1D100B5C 
X-CRM114-Status: GOOD (  11.88  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIHdhdGNob2cgbm9kZSB3aGljaCBzZWVtcyBicm9rZW4Kb24gc29t
ZSBib2FyZHMuCgpUZXN0IGhhcyBiZWVuIHBlcmZvcm1lZCBvbiBzZXZlcmFsIGJvYXJkcy4KCkNo
ZW4tWXUgVHNhaSBib2FyZHM6ClBpbmUgSDY0IC0gSDY0NDhCQSA3NzgyID0+IE9LCk9yYW5nZVBp
IExpdGUgMiAtIEg4MDY4QkEgNjFDMiA9PiBLTwoKTWFydGluIEF5b3R0ZSBib2FyZHM6ClBpbmUg
SDY0IC0gSDgwNjlCQSA2ODkyID0+IE9LCk9yYW5nZVBpIDMgLSBIQTA0N0JBIDY5VzIgPT4gS08K
T3JhbmdlUGkgT25lIFBsdXMgLSBINzMxMEJBIDY4NDIgPT4gS08KT3JhbmdlUGkgTGl0ZTIgLSBI
NjQ0OEJBIDY2NjIgPT4gS08KCkNsw6ltZW50IFDDqXJvbiBib2FyZDoKQmVlbGluayBHUzEgLSBI
NzMwOUJBIDY4NDIgPT4gS08KCkFzIGl0IHNlZW1zIG5vdCBmaXhhYmxlIGZvciBub3csIGRlY2xh
cmUgdGhlIG5vZGUKYnV0IGxlYXZlIGl0IGRpc2FibGUgd2l0aCBhIGNvbW1lbnQuCgpTaWduZWQt
b2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIHwgOSArKysrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDE2YzVjM2QwZmQ4MS4uMTNlNzBhZWJkZGJlIDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQor
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAtMjA4
LDYgKzIwOCwxNSBAQAogCQkJcmVnID0gPDB4MDMwMDYwMDAgMHg0MDA+OwogCQl9OwogCisJCXdh
dGNoZG9nOiB3YXRjaGRvZ0AzMDA5MGEwIHsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1
bjUwaS1oNi13ZHQiLAorCQkJCSAgICAgImFsbHdpbm5lcixzdW42aS1hMzEtd2R0IjsKKwkJCXJl
ZyA9IDwweDAzMDA5MGEwIDB4MjA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDUwIElSUV9U
WVBFX0xFVkVMX0hJR0g+OworCQkJLyogQnJva2VuIG9uIHNvbWUgSDYgYm9hcmRzICovCisJCQlz
dGF0dXMgPSAiZGlzYWJsZWQiOworCQl9OworCiAJCXBpbzogcGluY3RybEAzMDBiMDAwIHsKIAkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1waW5jdHJsIjsKIAkJCXJlZyA9IDww
eDAzMDBiMDAwIDB4NDAwPjsKLS0gCjIuMTcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
