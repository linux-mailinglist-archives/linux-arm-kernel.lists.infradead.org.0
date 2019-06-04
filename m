Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2061434D7A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaBkIFxQs6cyfqZoRRiPw4RENsWBN7LO4uwx73rUXRc=; b=NDpJ0US4j6TRL9
	KipSwlSW5YGRi6F5LPLDWu4U3SFah8hMVjRa0N5mdgVUOS6py3qj4xfXfiCE9F8UnO6v6rcP16FoC
	rF3/rEQ5NoshGux9kWICJ2KDKcePyLdd8G1RMZ8uvw0AP2hOK0kLAcRhbfb5yj8qWV5Ju7zXtXc/W
	NRRIm2x837vP/M6a/xD63BhcsBtbk34dCbbN0wKKUv0rZ7A0eggeQNanYA8lV3VgIesoQ2i849fo8
	3ax3geHpCfVwUpO416HhvOkmjV4g+Gm69IBXhtqEZZMLG1bMUXn9uiuPXEzsV9fJwZX5n84Q93XrT
	Wzd4ELTYolWxoX11vaJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCLc-0007y2-JA; Tue, 04 Jun 2019 16:31:40 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKC-0006LE-OE
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id n4so13484421wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E4E30xpqxw1cyUThhqcs8LcBlilNIoX4BY+l8x9uJrk=;
 b=WOubF3Lko3LWSDIpWvmPAXAAhm2TuHCaP4QPXH2488QmNOENFFYoAgMqN5DzcwyL81
 BgNWnnfwKGgPjXQp6DeX9jYpb03pAyoIBRiBwncmw7FGhCieHwtPhAE93HKy1V36SzpH
 MwxGiuBokritpXqReXZHO6xYRgAeU2b7cXRE+9bKJIpA9u6coE64Zz07PGYX1Zk7S0f1
 gPjmLgC28L9L+F+ZgF4FP+sKykC9vJ/ynlvoO/Aa2gwkGCS4f/jhdB4AngnI+hJZSo9Z
 gf4FzgXmJK1T09TyPrSiWRd3/LZwQP2bHy2eSOnymIcNSBkbaEgvcsM9i2xOLLrgzMG4
 aJbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E4E30xpqxw1cyUThhqcs8LcBlilNIoX4BY+l8x9uJrk=;
 b=AHhDgOOl3rFK9dEhwFInIU6LvBQTHqlEi0t2gFUwR14birpX1DVTHZXVVuDByzF6uv
 X71iuLgM5gqJA8CZ4Vx8UNvbEbJpwNYqbxQYJQt20pWrSqAFympR9e7oCzjnAnoHbVWg
 LwKKc5OV5TWQOmW5qchCe3otfEeWpP8/d/05dk2fI9Ug1B+LikFp/7NwBt4Zh3aeLbmA
 tiHFZNq++QKmA88kacB8wpht16un36VbzhBJggS41GQMapxyK1mJLKiLh5knAJ0YD+gS
 FShttQ7OUsoEKRYNHcZP4tkwyo9se2VQ8HsA+qd0U4fdCGrDbDjur2ZEAOC9lHZti270
 nC3Q==
X-Gm-Message-State: APjAAAVWphAz6ql4q98bAQv9HJmHM/S3yVOvU3qnJAK0b1iYmyasup3R
 XQhHUqinM/H3N22fT7Qi7gLD6QZEL4sN0g==
X-Google-Smtp-Source: APXvYqzAdmrYB00nq1AF6bb6WEBSVA5fc135x0zqnHQocdDVwGW9tJVeQEfsQVvvFzBzsVsHaTBAzw==
X-Received: by 2002:adf:c60e:: with SMTP id n14mr7423912wrg.255.1559665811137; 
 Tue, 04 Jun 2019 09:30:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:10 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 05/13] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Tue,  4 Jun 2019 18:29:51 +0200
Message-Id: <20190604162959.29199-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093013_118619_CEBD8F94 
X-CRM114-Status: GOOD (  14.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpBY2tlZC1ieTogU2VhbiBZb3Vu
ZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaSAg
fCAyICstCiBhcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgfCAyICstCiBhcmNoL2Fy
bS9ib290L2R0cy9zdW45aS1hODAuZHRzaSAgfCAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0
cy9zdW42aS1hMzEuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpCmluZGV4
IGMwNGVmYWQ4MWJiYy4uMTEwNjIyYjMwNzk2IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0
cy9zdW42aS1hMzEuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW42aS1hMzEuZHRzaQpA
QCAtMTM1MSw3ICsxMzUxLDcgQEAKIAkJfTsKIAogCQlpcjogaXJAMWYwMjAwMCB7Ci0JCQljb21w
YXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiOworCQkJY29tcGF0aWJsZSA9ICJhbGx3
aW5uZXIsc3VuNmktYTMxLWlyIjsKIAkJCWNsb2NrcyA9IDwmYXBiMF9nYXRlcyAxPiwgPCZpcl9j
bGs+OwogCQkJY2xvY2stbmFtZXMgPSAiYXBiIiwgImlyIjsKIAkJCXJlc2V0cyA9IDwmYXBiMF9y
c3QgMT47CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kgYi9h
cmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKaW5kZXggMzkyYjBjYWJiZjBkLi44ZDYw
M2YzMzA5ZjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaQor
KysgYi9hcmNoL2FybS9ib290L2R0cy9zdW44aS1hODN0LmR0c2kKQEAgLTEwNjcsNyArMTA2Nyw3
IEBACiAKIAkJcl9jaXI6IGlyQDFmMDIwMDAgewogCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIs
c3VuOGktYTgzdC1pciIsCi0JCQkJImFsbHdpbm5lcixzdW41aS1hMTMtaXIiOworCQkJCSJhbGx3
aW5uZXIsc3VuNmktYTMxLWlyIjsKIAkJCWNsb2NrcyA9IDwmcl9jY3UgQ0xLX0FQQjBfSVI+LCA8
JnJfY2N1IENMS19JUj47CiAJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOwogCQkJcmVzZXRz
ID0gPCZyX2NjdSBSU1RfQVBCMF9JUj47CmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9z
dW45aS1hODAuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNpCmluZGV4IDBj
MWVlYzkwMDBlMy4uMzEwY2Q5NzJlZTViIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9z
dW45aS1hODAuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW45aS1hODAuZHRzaQpAQCAt
MTE2Nyw3ICsxMTY3LDcgQEAKIAkJfTsKIAogCQlyX2lyOiBpckA4MDAyMDAwIHsKLQkJCWNvbXBh
dGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJCQljb21wYXRpYmxlID0gImFsbHdp
bm5lcixzdW42aS1hMzEtaXIiOwogCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDM3IElSUV9UWVBF
X0xFVkVMX0hJR0g+OwogCQkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJCXBpbmN0cmwt
MCA9IDwmcl9pcl9waW5zPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
