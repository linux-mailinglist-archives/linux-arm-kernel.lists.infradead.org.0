Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC672BB12
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:10:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D809F/hD2ZtlDi7zoEW8qnQq5SjQjmLsAwQ+89Eq/OQ=; b=k9SdehCv6sirBZ
	0Ym5CzMtGlCn/dGHO7W2KyNwCkmt39+Dnn89Jr3u9myOOZe0o56rdiE/n0ugiPYztviQ3jOOsoWtJ
	wdQsT7aQuA7oQH7NSDD2B9DxnXhqKoXh4POgFlf0b64/pm6WXlwMJog8W6qomdjcZM2oRhVnJiAqR
	R33nFrDlZWzwLRCDTApNBZQ9Pdh6h0weiV/X2GOQQpVvNBPsaKMaJXkVvE2NcBqOdGNglOXMNfGAg
	NjF7yOjQk+DxFcsJPrQusnHKaQz/m6Kybj0KZg1lRdyc2HLz/TwKsZ+/O6+AL7gFYKurLcaqbyMhW
	7B3GS5O0FlA+pD4b+TIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLxG-0003Ci-GU; Mon, 27 May 2019 20:10:46 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwn-0002nU-3Z
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:19 +0000
Received: by mail-wm1-x344.google.com with SMTP id f204so539416wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t6VdND5amN3StrhVc/zIi7Y91LySYgcr3YUPE2udaNw=;
 b=GLpFAL4wu2OrqSDvxzgInDtXCuimTNOqaHJziuaMoWOTVLMYBrJEbzRCGIVqQinpIS
 xeY0389EDmZ4JpQYjVNdRo2DtKE9/Sje54FrxlxZOIAZjV5knm+sTOp68PqqNyDPvRM0
 uUlLytSd2Zs/FxFU282CMHz4nx3Ha+th8GVF+13SuZEv+hndX+zmy/6zrIN3IOvfl3nN
 ESYjm3YPKgBkqSRFMUY0WbkxdAwez86GmY6zf4rd+HFypmxYWV4uBcLvxwwLmC1CKgQ/
 Giaiz+t2+C6sdmd3naO9c85x13RVAeqjMaFoN5fgp9LGewHYfwcRQNUvtO1D1lfa/zyB
 ivog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t6VdND5amN3StrhVc/zIi7Y91LySYgcr3YUPE2udaNw=;
 b=X98X8qrcZbVyeZbuTzm/IlUrqihx0i1On8BNa6wLY8xtM55g5vgxixM9zCbum5Jq2T
 Bz3zyD2RU+6tsAY5X+CLJy/5/0+AqidnC0ihfd4QmV0nXSdG7mgIHaglGrROYvAqJzao
 7KJy0KaA7XS96V+mgcZCBRoKeT2qPYX7lGV/f9z0HRGkDEWWqXZnqYxs7wUeAtvv4WAb
 XKKNG/LFwlRxu5BKyKaBKvQuk4lj0mETB/2iysq5Ohi3SwSnql0P29jU9x6CpurkeilI
 XyYBzqhnQQvEzYXyQUWkATTd5Fc1+lBLjTpIZRmq+jheGYgSsgK7SpXydp3vZ6T5rMmV
 zbng==
X-Gm-Message-State: APjAAAX4lAWdKwrjsyLfim/I7ZOgxzjZMj8hBP0yzWx6L9RJOjjqhCLS
 92XcjqPkaP3uNTro9XzV42A=
X-Google-Smtp-Source: APXvYqwhDPRjhw9OpYYCmRvpl9ZRKHy8xPORapsR6gjT3JrkGdCqImbpQ0zkOtaRtG4S2cd9sPO+9w==
X-Received: by 2002:a7b:c549:: with SMTP id j9mr453146wmk.122.1558987814935;
 Mon, 27 May 2019 13:10:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:13 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 2/7] ASoC: sun4i-spdif: Move quirks to the top
Date: Mon, 27 May 2019 22:06:22 +0200
Message-Id: <20190527200627.8635-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131017_266024_F02677A7 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIHF1aXJrcyBhcmUgYWN0dWFsbHkgZGVmaW5lcyBpbiB0aGUgbWlkZGxlIG9mIHRoZSBmaWxl
IHdpdGgKc2hvcnQgZXhwbGFuYXRpb24uCgpNb3ZlIHRoaXMgYXQgdGhlIHRvcCBhbmQgYWRkIGEg
c2VjdGlvbiB0byBoYXZlIGNvaGVyZW5jeSB3aXRoCnN1bjRpLWkycy4KClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+CkFja2VkLWJ5OiBNYXhpbWUg
UmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPgotLS0KIHNvdW5kL3NvYy9zdW54aS9z
dW40aS1zcGRpZi5jIHwgMTYgKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc291bmQvc29jL3N1bnhp
L3N1bjRpLXNwZGlmLmMgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktc3BkaWYuYwppbmRleCBiNGFm
NGFhYmVhZDEuLmI2YzY2YTYyZTkxNSAxMDA2NDQKLS0tIGEvc291bmQvc29jL3N1bnhpL3N1bjRp
LXNwZGlmLmMKKysrIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMKQEAgLTE2MSw2ICsx
NjEsMTcgQEAKICNkZWZpbmUgU1VONElfU1BESUZfU0FNRlJFUV8xNzZfNEtIWgkJMHhjCiAjZGVm
aW5lIFNVTjRJX1NQRElGX1NBTUZSRVFfMTkyS0haCQkweGUKIAorLyoqCisgKiBzdHJ1Y3Qgc3Vu
NGlfc3BkaWZfcXVpcmtzIC0gRGlmZmVyZW5jZXMgYmV0d2VlbiBTb0MgdmFyaWFudHMuCisgKgor
ICogQHJlZ19kYWNfdHhfZGF0YTogVFggRklGTyBvZmZzZXQgZm9yIERNQSBjb25maWcuCisgKiBA
aGFzX3Jlc2V0OiBTb0MgbmVlZHMgcmVzZXQgZGVhc3NlcnRlZC4KKyAqLworc3RydWN0IHN1bjRp
X3NwZGlmX3F1aXJrcyB7CisJdW5zaWduZWQgaW50IHJlZ19kYWNfdHhkYXRhOworCWJvb2wgaGFz
X3Jlc2V0OworfTsKKwogc3RydWN0IHN1bjRpX3NwZGlmX2RldiB7CiAJc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldjsKIAlzdHJ1Y3QgY2xrICpzcGRpZl9jbGs7CkBAIC00MDUsMTEgKzQxNiw2
IEBAIHN0YXRpYyBzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVyIHN1bjRpX3NwZGlmX2RhaSA9IHsK
IAkubmFtZSA9ICJzcGRpZiIsCiB9OwogCi1zdHJ1Y3Qgc3VuNGlfc3BkaWZfcXVpcmtzIHsKLQl1
bnNpZ25lZCBpbnQgcmVnX2RhY190eGRhdGE7CS8qIFRYIEZJRk8gb2Zmc2V0IGZvciBETUEgY29u
ZmlnICovCi0JYm9vbCBoYXNfcmVzZXQ7Ci19OwotCiBzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRp
X3NwZGlmX3F1aXJrcyBzdW40aV9hMTBfc3BkaWZfcXVpcmtzID0gewogCS5yZWdfZGFjX3R4ZGF0
YQk9IFNVTjRJX1NQRElGX1RYRklGTywKIH07Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
