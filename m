Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97DF1AF59C
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 00:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snZ3kdIqv9XlCW90sXBTaDWUCknMDFhRrR+ft9NifRg=; b=hzoaKhQOxMC7D0
	vEGTr8DDPx+LvrBWg69ncW0oQRcVzPfvKYXNdpOAs3q0MOx9VikDN+HITq7xn7ezv9mzCK0qEWMOB
	FJAA1xTN50v5W4b3wuLvJ9K+W5qPTuBFstCS1MIIu9qO0sFDZa0I22l4Ati9xldA5KZBzaumHwCg9
	3O0HTUBehF+2K7Zl/OvVz2PY8ArmMvDL5svq37BANoBHct39P0zLa7sBa9vsUC5OO+zQOjMdTJ4AX
	NE1w0pXtVLj8r+8Ey7WIRDFy3TK8Gwd4+T+B7ORoNvK7SpjEVWEw5gLlId5Im4ECM4+IPa6R56UFW
	f2oj3T8xe1pd+Xpsqhwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPwEU-0002xS-Rn; Sat, 18 Apr 2020 22:46:42 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPwCe-0007XO-UI
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 22:44:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id k11so7415400wrp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 15:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DdH07t1k9/y181hGinDV6UTR/Vqce1FXEwc4JDSNUgo=;
 b=NIOfImqp3qpMP3D9X6b+JfPw8bgsFJJLKGc6iM/svj0msjDwQB4NHHi3x6j4+/9LfH
 w1b1LK8t9l4uX6A46YGmQt9P7ru+6QI+xL5hGLIjDyhD96hkoA66gyw/Pv/5p18m5+Y4
 xRY0pBCRDt+5PJPsr7ebb/yiZLIhYulHfqXCtzMBkh3q/WYyNJa04dmF8j/pJW6NXyJN
 vevvk/QIj/SNZsEVXrY4FSFbnO9mofuC1CQR7oEzIEaF0jiBTZyZoTXhwAvlz3/ErcIh
 asUcS5rQUe+zij5OFyhR3VRoF3JCU71k/uGoT6ZnsFLFFlpK3aedMIrs0DB8za7JPK7y
 bQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DdH07t1k9/y181hGinDV6UTR/Vqce1FXEwc4JDSNUgo=;
 b=qJbSxiE2T9oCVaGatBKQPgSng9t8HPEt48MA5eqnaOuFZaaUMfZhO+CGEcZQsEYefq
 hFmfwlqRNNNJ8Zra6w91w4BTvUfiqRXdaSKKq8BZhyRE0bXpURaAo7xUZIZyxBEsBf8f
 5yaIV3gN808PDWYgqNeyIk+bIuptlAzMPnAAXXxIPCHC+zuswQuUWkzTuq54GygnMjoo
 0xAnGUWE9O34hEnT7NFM2ANGQP14Dz3UIqnmodMnYbcBrI230DUJkIDhL1qspM1E36+S
 XXLx3X/b6wg3rA2VbQXNIX2o18Guxb08ZIuK0MC+le1G4Dvp7BsX196q0s8WKYx0nWDu
 2MGQ==
X-Gm-Message-State: AGi0Pua9T0laxzPqO2WTnjrLgk/jQtGN5hKBafip5INi6BbBHXW1ZVGf
 8fmfUwyg+nKnvbz9+jC71nI=
X-Google-Smtp-Source: APiQypKLBSnMaQwSZzz/e93DLQSKm39F96CERmHmKiJfEdeWuhNhNE+Fk3LRWI+U1wVer5IdoPcLQg==
X-Received: by 2002:adf:f084:: with SMTP id n4mr11151919wro.252.1587249887329; 
 Sat, 18 Apr 2020 15:44:47 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id t16sm13371559wmi.27.2020.04.18.15.44.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 15:44:46 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH v2 6/7] ASoC: sun4i-i2s: Adjust regmap settings
Date: Sun, 19 Apr 2020 00:44:34 +0200
Message-Id: <20200418224435.23672-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418224435.23672-1-peron.clem@gmail.com>
References: <20200418224435.23672-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_154449_068728_66D0ED5D 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpCeXBhc3MgdGhlIHJl
Z21hcCBjYWNoZSB3aGVuIGZsdXNoaW5nIHRoZSBpMnMgRklGT3MgYW5kIG1vZGlmeSB0aGUgdGFi
bGVzCnRvIHJlZmxlY3QgdGhpcy4KClNpZ25lZC1vZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVr
aXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNs
ZW1AZ21haWwuY29tPgotLS0KIHNvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYyB8IDMxICsrKysr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDIzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1p
MnMuYyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwppbmRleCA5Nzc4YWYzN2ZiY2EuLjkw
NTNkMjkwZGQ4NyAxMDA2NDQKLS0tIGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCisrKyBi
L3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwpAQCAtOTIxLDcgKzkyMSw3IEBAIHN0YXRpYyBp
bnQgc3VuNGlfaTJzX3NldF9mbXQoc3RydWN0IHNuZF9zb2NfZGFpICpkYWksIHVuc2lnbmVkIGlu
dCBmbXQpCiBzdGF0aWMgdm9pZCBzdW40aV9pMnNfc3RhcnRfY2FwdHVyZShzdHJ1Y3Qgc3VuNGlf
aTJzICppMnMpCiB7CiAJLyogRmx1c2ggUlggRklGTyAqLwotCXJlZ21hcF91cGRhdGVfYml0cyhp
MnMtPnJlZ21hcCwgU1VONElfSTJTX0ZJRk9fQ1RSTF9SRUcsCisJcmVnbWFwX3dyaXRlX2JpdHMo
aTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GSUZPX0NUUkxfUkVHLAogCQkJICAgU1VONElfSTJTX0ZJ
Rk9fQ1RSTF9GTFVTSF9SWCwKIAkJCSAgIFNVTjRJX0kyU19GSUZPX0NUUkxfRkxVU0hfUlgpOwog
CkBAIC05NDIsNyArOTQyLDcgQEAgc3RhdGljIHZvaWQgc3VuNGlfaTJzX3N0YXJ0X2NhcHR1cmUo
c3RydWN0IHN1bjRpX2kycyAqaTJzKQogc3RhdGljIHZvaWQgc3VuNGlfaTJzX3N0YXJ0X3BsYXli
YWNrKHN0cnVjdCBzdW40aV9pMnMgKmkycykKIHsKIAkvKiBGbHVzaCBUWCBGSUZPICovCi0JcmVn
bWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRklGT19DVFJMX1JFRywKKwly
ZWdtYXBfd3JpdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZJRk9fQ1RSTF9SRUcsCiAJ
CQkgICBTVU40SV9JMlNfRklGT19DVFJMX0ZMVVNIX1RYLAogCQkJICAgU1VONElfSTJTX0ZJRk9f
Q1RSTF9GTFVTSF9UWCk7CiAKQEAgLTEwOTYsMTMgKzEwOTYsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHNuZF9zb2NfY29tcG9uZW50X2RyaXZlciBzdW40aV9pMnNfY29tcG9uZW50ID0gewogCiBz
dGF0aWMgYm9vbCBzdW40aV9pMnNfcmRfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQg
aW50IHJlZykKIHsKLQlzd2l0Y2ggKHJlZykgewotCWNhc2UgU1VONElfSTJTX0ZJRk9fVFhfUkVH
OgotCQlyZXR1cm4gZmFsc2U7Ci0KLQlkZWZhdWx0OgotCQlyZXR1cm4gdHJ1ZTsKLQl9CisJcmV0
dXJuIHRydWU7CiB9CiAKIHN0YXRpYyBib29sIHN1bjRpX2kyc193cl9yZWcoc3RydWN0IGRldmlj
ZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQpAQCAtMTEyMSw2ICsxMTE1LDggQEAgc3RhdGljIGJv
b2wgc3VuNGlfaTJzX3ZvbGF0aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGlu
dCByZWcpCiB7CiAJc3dpdGNoIChyZWcpIHsKIAljYXNlIFNVTjRJX0kyU19GSUZPX1JYX1JFRzoK
KwljYXNlIFNVTjRJX0kyU19GSUZPX1RYX1JFRzoKKwljYXNlIFNVTjRJX0kyU19GSUZPX1NUQV9S
RUc6CiAJY2FzZSBTVU40SV9JMlNfSU5UX1NUQV9SRUc6CiAJY2FzZSBTVU40SV9JMlNfUlhfQ05U
X1JFRzoKIAljYXNlIFNVTjRJX0kyU19UWF9DTlRfUkVHOgpAQCAtMTEzMSwyMyArMTEyNywxMiBA
QCBzdGF0aWMgYm9vbCBzdW40aV9pMnNfdm9sYXRpbGVfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwg
dW5zaWduZWQgaW50IHJlZykKIAl9CiB9CiAKLXN0YXRpYyBib29sIHN1bjhpX2kyc19yZF9yZWco
c3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQotewotCXN3aXRjaCAocmVnKSB7
Ci0JY2FzZSBTVU44SV9JMlNfRklGT19UWF9SRUc6Ci0JCXJldHVybiBmYWxzZTsKLQotCWRlZmF1
bHQ6Ci0JCXJldHVybiB0cnVlOwotCX0KLX0KLQogc3RhdGljIGJvb2wgc3VuOGlfaTJzX3ZvbGF0
aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCByZWcpCiB7CiAJaWYgKHJl
ZyA9PSBTVU44SV9JMlNfSU5UX1NUQV9SRUcpCiAJCXJldHVybiB0cnVlOwogCWlmIChyZWcgPT0g
U1VOOElfSTJTX0ZJRk9fVFhfUkVHKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybiB0cnVlOwog
CiAJcmV0dXJuIHN1bjRpX2kyc192b2xhdGlsZV9yZWcoZGV2LCByZWcpOwogfQpAQCAtMTIxOCw3
ICsxMjAzLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIHN1bjhpX2kyc19y
ZWdtYXBfY29uZmlnID0gewogCS5yZWdfZGVmYXVsdHMJPSBzdW44aV9pMnNfcmVnX2RlZmF1bHRz
LAogCS5udW1fcmVnX2RlZmF1bHRzCT0gQVJSQVlfU0laRShzdW44aV9pMnNfcmVnX2RlZmF1bHRz
KSwKIAkud3JpdGVhYmxlX3JlZwk9IHN1bjRpX2kyc193cl9yZWcsCi0JLnJlYWRhYmxlX3JlZwk9
IHN1bjhpX2kyc19yZF9yZWcsCisJLnJlYWRhYmxlX3JlZwk9IHN1bjRpX2kyc19yZF9yZWcsCiAJ
LnZvbGF0aWxlX3JlZwk9IHN1bjhpX2kyc192b2xhdGlsZV9yZWcsCiB9OwogCkBAIC0xMjMxLDcg
KzEyMTYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgc3VuNTBpX2kyc19y
ZWdtYXBfY29uZmlnID0gewogCS5yZWdfZGVmYXVsdHMJPSBzdW41MGlfaTJzX3JlZ19kZWZhdWx0
cywKIAkubnVtX3JlZ19kZWZhdWx0cwk9IEFSUkFZX1NJWkUoc3VuNTBpX2kyc19yZWdfZGVmYXVs
dHMpLAogCS53cml0ZWFibGVfcmVnCT0gc3VuNGlfaTJzX3dyX3JlZywKLQkucmVhZGFibGVfcmVn
CT0gc3VuOGlfaTJzX3JkX3JlZywKKwkucmVhZGFibGVfcmVnCT0gc3VuNGlfaTJzX3JkX3JlZywK
IAkudm9sYXRpbGVfcmVnCT0gc3VuOGlfaTJzX3ZvbGF0aWxlX3JlZywKIH07CiAKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
