Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 988AB1F15AD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRgt7fRqthK61/KbTi+N4D/o/giR9xoz62RyFNXzkSA=; b=KC/yQetkMhCF0F
	FcwOO0t59bvccXgge67CGJ3q/wYbUjc9678jUJ9Gcg8gcd8oWPKoNqjeLA3BFASz4A+c4tnrsOfzx
	FFV+/ekQDIrnnx/r2JUdUAbyjzbHxK+yeZg/hMBQK80Bk+0TjFHlvc9tY92I82oVFyvQuiXTuvmpW
	rCXVPElYCW0Jcr93bLe7t2rXJyZc72foIEtpvau4bEmw1u74Yy1xWN6onLIKJGq3BZJnP5+qZ/vnO
	tc1WbXu+npezHMVy/xhwJ0R+THM8/jgO9twKkYWos3gfWGKzzithjmk2m4Js8vb0C4zoZtEGCoNo6
	usUdx/Z5W0EvSYJb1zRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEIA-0003fe-Ej; Mon, 08 Jun 2020 09:42:06 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEH6-0002n7-C9; Mon, 08 Jun 2020 09:41:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id t18so16636995wru.6;
 Mon, 08 Jun 2020 02:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iutKVuNQT00nZYTrm/7dqkO57UE+CiDX2Zw0XM5T/bs=;
 b=FH9R6PgLpY/xfk9Y1umYU9fO4KCushpyvjjDhM6GJ3nbePEUfx9CV9RGHkeRSKEsHj
 zCXHp+4Ck8VAOggyeM3SPuTEOA6yYqQlAiHqlJeK+Tw08h17No6y1uCKK92+EdzuRSD9
 iYmyshNqAE33+CC7ezVX90kkXloMBdNxYKKkXuvntSmd4Vfv9P53HbLszP3pvtFAQ4u+
 WY/fTwy4fFDibyaS6xNI8Dh5SvXgvY6twrbNPfSRkwQk/SmbbnRdzcxIy5mfqVenF3jH
 ioqEmx/A1cA7WMxoRwDOzRHXszwdyy3dYKEVTAZDtqV0lOVXw93sqf2pulgQUzOnACOx
 1j3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iutKVuNQT00nZYTrm/7dqkO57UE+CiDX2Zw0XM5T/bs=;
 b=pYFrZZqOTOKMSZk1qD6T1izBeT7oK8sNusj/WMm7WNTgUZGElVlHWo21fpZIRvVPT9
 2SOUA4QAK+7wbcIgRPWBac7q+eOHymRrnKIL4YBU34zoUKPbbBMbQSdNAcLX6RDE2g7O
 GKWvwRGNgxjkQEwyoIVcIQUTxCkujuQYwj6ygVYxss4+BNh91fNAHSviO5H5rHlGGmud
 9qNZyCmESk0LbSyYiIY/85gl95Mxj1qU66C7VNzawT1orLx5Luw0LcFLb379GSGe2jf5
 r7GsjtuFsfGZZkgkMLzPo2c4ZuQ8KJj21AKxHXt8KOvm1udTegyOdHWTQRiTNCB9dkIa
 z0QA==
X-Gm-Message-State: AOAM530dnO2G1I+rz0TMm9txUZwQb+tqBvGaZfUcwGrkELR/jNFqP/fC
 lCf33hAPqlwRXW4bFpFjjuk=
X-Google-Smtp-Source: ABdhPJxGkVz4sfW8YmjuDWuFHym9WXb7hrNJ4E1wx771qRgJ70vSanVuzdsFBsv1+hLGrALaJ6L1Rw==
X-Received: by 2002:adf:a283:: with SMTP id s3mr21368789wra.147.1591609258686; 
 Mon, 08 Jun 2020 02:40:58 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id a3sm22096479wrp.91.2020.06.08.02.40.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:40:58 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH 2/2] mtd: parsers: bcm63xx: simplify CFE detection
Date: Mon,  8 Jun 2020 11:40:53 +0200
Message-Id: <20200608094053.3381512-3-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608094053.3381512-1-noltari@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_024100_413287_479FFAE9 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SW5zdGVhZCBvZiB0cnlpbmcgdG8gcGFyc2UgQ0ZFIHZlcnNpb24gc3RyaW5nLCB3aGljaCBpcyBj
dXN0b21pemVkIGJ5IHNvbWUKdmVuZG9ycywgbGV0J3MganVzdCBjaGVjayB0aGF0ICJDRkUxIiB3
YXMgcGFzc2VkIG9uIGFyZ3VtZW50IDMuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5k
ZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb25hcyBHb3Jza2kg
PGpvbmFzLmdvcnNraUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4
cGFydC5jIHwgMjggKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMjUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
dGQvcGFyc2Vycy9iY202M3h4cGFydC5jIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202M3h4cGFy
dC5jCmluZGV4IDc4ZjkwYzZjMThmZC4uMDZiNjllOTA1YTQyIDEwMDY0NAotLS0gYS9kcml2ZXJz
L210ZC9wYXJzZXJzL2JjbTYzeHhwYXJ0LmMKKysrIGIvZHJpdmVycy9tdGQvcGFyc2Vycy9iY202
M3h4cGFydC5jCkBAIC0yMiw2ICsyMiw4IEBACiAjaW5jbHVkZSA8bGludXgvbXRkL3BhcnRpdGlv
bnMuaD4KICNpbmNsdWRlIDxsaW51eC9vZi5oPgogCisjaW5jbHVkZSA8YXNtL21hY2gtYmNtNjN4
eC9iY202M3h4X2JvYXJkLmg+CisKICNkZWZpbmUgQkNNOTYzWFhfQ0ZFX0JMT0NLX1NJWkUJCVNa
XzY0SwkvKiBhbHdheXMgYXQgbGVhc3QgNjRLaUIgKi8KIAogI2RlZmluZSBCQ005NjNYWF9DRkVf
TUFHSUNfT0ZGU0VUCTB4NGUwCkBAIC0zMiwzMCArMzQsNiBAQAogI2RlZmluZSBTVFJfTlVMTF9U
RVJNSU5BVEUoeCkgXAogCWRvIHsgY2hhciAqX3N0ciA9ICh4KTsgX3N0cltzaXplb2YoeCkgLSAx
XSA9IDA7IH0gd2hpbGUgKDApCiAKLXN0YXRpYyBpbnQgYmNtNjN4eF9kZXRlY3RfY2ZlKHN0cnVj
dCBtdGRfaW5mbyAqbWFzdGVyKQotewotCWNoYXIgYnVmWzldOwotCWludCByZXQ7Ci0Jc2l6ZV90
IHJldGxlbjsKLQotCXJldCA9IG10ZF9yZWFkKG1hc3RlciwgQkNNOTYzWFhfQ0ZFX1ZFUlNJT05f
T0ZGU0VULCA1LCAmcmV0bGVuLAotCQkgICAgICAgKHZvaWQgKilidWYpOwotCWJ1ZltyZXRsZW5d
ID0gMDsKLQotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7Ci0KLQlpZiAoc3RybmNtcCgiY2ZlLXYi
LCBidWYsIDUpID09IDApCi0JCXJldHVybiAwOwotCi0JLyogdmVyeSBvbGQgQ0ZFJ3MgZG8gbm90
IGhhdmUgdGhlIGNmZS12IHN0cmluZywgc28gY2hlY2sgZm9yIG1hZ2ljICovCi0JcmV0ID0gbXRk
X3JlYWQobWFzdGVyLCBCQ005NjNYWF9DRkVfTUFHSUNfT0ZGU0VULCA4LCAmcmV0bGVuLAotCQkg
ICAgICAgKHZvaWQgKilidWYpOwotCWJ1ZltyZXRsZW5dID0gMDsKLQotCXJldHVybiBzdHJuY21w
KCJDRkUxQ0ZFMSIsIGJ1ZiwgOCk7Ci19Ci0KIHN0YXRpYyBpbnQgYmNtNjN4eF9yZWFkX252cmFt
KHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLAogCXN0cnVjdCBiY205NjN4eF9udnJhbSAqbnZyYW0p
CiB7CkBAIC0xMzgsNyArMTE2LDcgQEAgc3RhdGljIGludCBiY202M3h4X3BhcnNlX2NmZV9wYXJ0
aXRpb25zKHN0cnVjdCBtdGRfaW5mbyAqbWFzdGVyLAogCXN0cnVjdCBiY205NjN4eF9udnJhbSAq
bnZyYW0gPSBOVUxMOwogCWludCByZXQ7CiAKLQlpZiAoYmNtNjN4eF9kZXRlY3RfY2ZlKG1hc3Rl
cikpCisJaWYgKCFiY202M3h4X2lzX2NmZV9wcmVzZW50KCkpCiAJCXJldHVybiAtRUlOVkFMOwog
CiAJbnZyYW0gPSB2emFsbG9jKHNpemVvZigqbnZyYW0pKTsKLS0gCjIuMjYuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
