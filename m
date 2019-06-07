Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3B83999E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:13:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UaBkIFxQs6cyfqZoRRiPw4RENsWBN7LO4uwx73rUXRc=; b=CwuLvVSXr17XrD
	qlHSTMcsZryUyX4b2dkGMlohV+Afbn7m4Do48EXVHyy3K/GfyHv+Ytm8govVETCBXCF0ObrrabvhL
	wsVvH5sMNtCGr4PySEZH4tdWDtp0aDY59AiwKS7AQ3ijlKJ5sKoL15EPaKKyrDtjIEAcjkYHyL7UO
	q4w1WvQje5YvXYKu91LJY89G7xVuD5qnJGwV83DibQFodiXG+oJm8NAnhAqC/2iVG96yXXQZhWnWc
	Vhy4jPuAHnvSA71qvTVwz7cPgiWstJH1pChtjTEuhVn7tpPwSgYUXOyVQOC74UJyrPIlYfRf1nLq4
	9O7hGKy5kMbYCRzHrudQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO2u-0002bs-Ae; Fri, 07 Jun 2019 23:13:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0y-0000xs-23
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so971157wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E4E30xpqxw1cyUThhqcs8LcBlilNIoX4BY+l8x9uJrk=;
 b=nS21om+sxmgQhlX01Uzu3VcogD22hZ1kHhzDLmgBxs0AswjQws9aI3nyYVsa+trWaj
 LTimR/IkxY73JBSpn1aE21GzZneJv0mp0uCeLh/Zy+51tc6xkWmUXNtqxlxKp1lbhS+a
 1Zt0xuip8BIrCtufL1kMLDesoB/OM1g0yj8JpJqRpzuezZOr0/TJNIIlTMUMc2+NRW6W
 C1yhY3acXuSv1RhNg87OREdA6FILarBltHh+S0FbvQUYxiDEgHPuKMQHrRSfUwzx7fI/
 ZGkXhoLcGX/7zqrSCxKpJsagbXNVYQQgfArtSuvdPGRYtlW02QzG8MD8oaY8GgF8NJzm
 fItQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E4E30xpqxw1cyUThhqcs8LcBlilNIoX4BY+l8x9uJrk=;
 b=ifE00tnxB2LpLJjbll8bMd+0TsuZ+BgBlgmUczCnk8eAROGYLUwgYoMvi9OGHjpknP
 +PmLTwX64sIAGPAbZNyMuNDzt8iybl1D5+TgV4HZjAI+WghpvgsZMGQqAZotwbJLpKqF
 vN0MKtQiBYyHiDLhFdTYCH6Djdm5IPm/Yejnyy42i199INM62m32v6i6x82JA97UJLCj
 +wrpgQECuPh0gdKdCo4+MACPfSi6SBuYKTCNt3M9p+jr+TxIXQsQpzGVDGxCOGPgFtac
 h5zC+g3tDAiQNIpd5BUHz38ijfO+c2C2EsXwzxDsb1kMjtpgWOpvH0l057QsecyUeGMP
 MAmQ==
X-Gm-Message-State: APjAAAXoRrgjTPmaWO0kEeXp9w2NQGvZrw6LlZEtPqu6/4S0nUjWiCNo
 RZhjQJlPkM5yn4NXl/Qvhf0=
X-Google-Smtp-Source: APXvYqzVT3Th7VqkSyB0yRD4rbflOI8dOw1Wivvjx5R6t+uE5NXQaKKRFZa88frNgIUrvmk5iiRhfg==
X-Received: by 2002:a5d:4087:: with SMTP id o7mr21805064wrp.277.1559949074312; 
 Fri, 07 Jun 2019 16:11:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:13 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 05/13] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Sat,  8 Jun 2019 01:10:52 +0200
Message-Id: <20190607231100.5894-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161116_186946_CDAF5914 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
