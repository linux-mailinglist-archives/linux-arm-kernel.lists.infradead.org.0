Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEA41AEEFA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKOp1FV5sSl47HruuACt/EyST/bwMTvmuXhSZ5puf/0=; b=EYvJqaefVuZJvb
	dlznQVYyikkisQk2QQgM40Djf7u5g0w/TrrBNR0p70LFh/DQVeKb6VKDyKWrvm1WmMnFEdVKeUOip
	/Nq2ccHpMcURaw3kLk0vEqHNuyMBD0TAMldIaRZ64Zx2vS7cvZXfZqvkVBNODEOE/JyukBQw+T0jD
	ZukklGBRSafD/TNnw1xIZ6Ko4OdpYUkpDGCK654q1yobPxVZpBKrczesYvKjYEzGfXQoQiqxzcqWQ
	ukBkLBB23lIVPZBmuy4wlCNBJekub5EBCNf61jD05fFXLnJe5nIqmQ4ICaIdYzpvyAw/IW34KVYcN
	rI030HbSVITeGcdGQtZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPofH-0007qq-BQ; Sat, 18 Apr 2020 14:41:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod5-0003Yz-FZ
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id u13so6384658wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bzZ2ejZgMrp9qSzKScPDLHvA9whDt7t6MNt6a7IlToQ=;
 b=cI6UDO1M/fR/roDDI6qMsouMe6JbHJBYnQs9EoCtQDDtv2znvA5BM9YvN97bqGCOP/
 Y4qXtb/kEoO5JSZJmt/CeoEJRPyM7/plMDN+SAab1VvhHKt7aDU75dzTGArjGxWQoQw2
 h6wTkpR/DnBg0fEMf8ZE8d5IcBr2D/IYnwAXErkysm+xtUxXBF+w+43V+Er4mZY078Wa
 v2C1ibP0l6t0elTHHbm/CKWI6sSfA5THhWYHS/y8SVyUgXioXuxESYl/ZdQ8hNLiB7w5
 xRepYU7gGGDsFM1rmQi3vx7PZjgmCnjNI/fYgfkdMsyQbpEf+8hWMDIbR494Sdx1+cZC
 fqjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bzZ2ejZgMrp9qSzKScPDLHvA9whDt7t6MNt6a7IlToQ=;
 b=CE2jdkH0zaqrbhoLs8lfuH4wOZrc49CGMphBjf+cb4MBMVvnzHQAA0uxZbXF4ElL5D
 5uz53gohtPxiRCZexx9sxzL7qjJCGABflEWbUvUAWe+fkUt8wVjHm6qoJ3bqfMERt6DO
 eyWVVUn3RVs6wWI1P/kVxR/3xT/QDOk/MHeqKZY5sA8gpv2f2U8oIdFDQuwYSnbRporj
 WxYVP5AeS+rSKjfp37kyvEU/PTNCG8Is+9nCBO8TtVpxC0MwiPzdNvl3wflUbEAC+xeB
 RYslhUKf0POVbbORkkNd9nTTIo2TKubj9ljSabzlnCLaEpsdRwK91SsujJdPyygqQ6pt
 Svpg==
X-Gm-Message-State: AGi0PuajivoPhPni19R3X+ZVtwE3f2Zj8a+mwDhfgk/twSSOTG2j7Jpv
 gwc55cPApkhJDLYiRjYhLve9v2nOk60=
X-Google-Smtp-Source: APiQypKZgy8wJ443/iUUZWQa1cF/leTyHVsQdI4htce2qt+C0SxlkbSanLppFf4VsKV6sv4sH5ZljA==
X-Received: by 2002:adf:aac5:: with SMTP id i5mr8611561wrc.285.1587220773700; 
 Sat, 18 Apr 2020 07:39:33 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:32 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 6/7] ASoC: sun4i-i2s: Adjust regmap settings
Date: Sat, 18 Apr 2020 16:39:22 +0200
Message-Id: <20200418143923.19608-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073935_575950_1AEEC157 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
MnMuYyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwppbmRleCBhMDA5MGI1Y2VkODMuLjJl
MWI2NWJmNGJkMyAxMDA2NDQKLS0tIGEvc291bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jCisrKyBi
L3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwpAQCAtOTE1LDcgKzkxNSw3IEBAIHN0YXRpYyBp
bnQgc3VuNGlfaTJzX3NldF9mbXQoc3RydWN0IHNuZF9zb2NfZGFpICpkYWksIHVuc2lnbmVkIGlu
dCBmbXQpCiBzdGF0aWMgdm9pZCBzdW40aV9pMnNfc3RhcnRfY2FwdHVyZShzdHJ1Y3Qgc3VuNGlf
aTJzICppMnMpCiB7CiAJLyogRmx1c2ggUlggRklGTyAqLwotCXJlZ21hcF91cGRhdGVfYml0cyhp
MnMtPnJlZ21hcCwgU1VONElfSTJTX0ZJRk9fQ1RSTF9SRUcsCisJcmVnbWFwX3dyaXRlX2JpdHMo
aTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GSUZPX0NUUkxfUkVHLAogCQkJICAgU1VONElfSTJTX0ZJ
Rk9fQ1RSTF9GTFVTSF9SWCwKIAkJCSAgIFNVTjRJX0kyU19GSUZPX0NUUkxfRkxVU0hfUlgpOwog
CkBAIC05MzYsNyArOTM2LDcgQEAgc3RhdGljIHZvaWQgc3VuNGlfaTJzX3N0YXJ0X2NhcHR1cmUo
c3RydWN0IHN1bjRpX2kycyAqaTJzKQogc3RhdGljIHZvaWQgc3VuNGlfaTJzX3N0YXJ0X3BsYXli
YWNrKHN0cnVjdCBzdW40aV9pMnMgKmkycykKIHsKIAkvKiBGbHVzaCBUWCBGSUZPICovCi0JcmVn
bWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRklGT19DVFJMX1JFRywKKwly
ZWdtYXBfd3JpdGVfYml0cyhpMnMtPnJlZ21hcCwgU1VONElfSTJTX0ZJRk9fQ1RSTF9SRUcsCiAJ
CQkgICBTVU40SV9JMlNfRklGT19DVFJMX0ZMVVNIX1RYLAogCQkJICAgU1VONElfSTJTX0ZJRk9f
Q1RSTF9GTFVTSF9UWCk7CiAKQEAgLTEwOTAsMTMgKzEwOTAsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHNuZF9zb2NfY29tcG9uZW50X2RyaXZlciBzdW40aV9pMnNfY29tcG9uZW50ID0gewogCiBz
dGF0aWMgYm9vbCBzdW40aV9pMnNfcmRfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQg
aW50IHJlZykKIHsKLQlzd2l0Y2ggKHJlZykgewotCWNhc2UgU1VONElfSTJTX0ZJRk9fVFhfUkVH
OgotCQlyZXR1cm4gZmFsc2U7Ci0KLQlkZWZhdWx0OgotCQlyZXR1cm4gdHJ1ZTsKLQl9CisJcmV0
dXJuIHRydWU7CiB9CiAKIHN0YXRpYyBib29sIHN1bjRpX2kyc193cl9yZWcoc3RydWN0IGRldmlj
ZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQpAQCAtMTExNSw2ICsxMTA5LDggQEAgc3RhdGljIGJv
b2wgc3VuNGlfaTJzX3ZvbGF0aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGlu
dCByZWcpCiB7CiAJc3dpdGNoIChyZWcpIHsKIAljYXNlIFNVTjRJX0kyU19GSUZPX1JYX1JFRzoK
KwljYXNlIFNVTjRJX0kyU19GSUZPX1RYX1JFRzoKKwljYXNlIFNVTjRJX0kyU19GSUZPX1NUQV9S
RUc6CiAJY2FzZSBTVU40SV9JMlNfSU5UX1NUQV9SRUc6CiAJY2FzZSBTVU40SV9JMlNfUlhfQ05U
X1JFRzoKIAljYXNlIFNVTjRJX0kyU19UWF9DTlRfUkVHOgpAQCAtMTEyNSwyMyArMTEyMSwxMiBA
QCBzdGF0aWMgYm9vbCBzdW40aV9pMnNfdm9sYXRpbGVfcmVnKHN0cnVjdCBkZXZpY2UgKmRldiwg
dW5zaWduZWQgaW50IHJlZykKIAl9CiB9CiAKLXN0YXRpYyBib29sIHN1bjhpX2kyc19yZF9yZWco
c3RydWN0IGRldmljZSAqZGV2LCB1bnNpZ25lZCBpbnQgcmVnKQotewotCXN3aXRjaCAocmVnKSB7
Ci0JY2FzZSBTVU44SV9JMlNfRklGT19UWF9SRUc6Ci0JCXJldHVybiBmYWxzZTsKLQotCWRlZmF1
bHQ6Ci0JCXJldHVybiB0cnVlOwotCX0KLX0KLQogc3RhdGljIGJvb2wgc3VuOGlfaTJzX3ZvbGF0
aWxlX3JlZyhzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGludCByZWcpCiB7CiAJaWYgKHJl
ZyA9PSBTVU44SV9JMlNfSU5UX1NUQV9SRUcpCiAJCXJldHVybiB0cnVlOwogCWlmIChyZWcgPT0g
U1VOOElfSTJTX0ZJRk9fVFhfUkVHKQotCQlyZXR1cm4gZmFsc2U7CisJCXJldHVybiB0cnVlOwog
CiAJcmV0dXJuIHN1bjRpX2kyc192b2xhdGlsZV9yZWcoZGV2LCByZWcpOwogfQpAQCAtMTIxMiw3
ICsxMTk3LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIHN1bjhpX2kyc19y
ZWdtYXBfY29uZmlnID0gewogCS5yZWdfZGVmYXVsdHMJPSBzdW44aV9pMnNfcmVnX2RlZmF1bHRz
LAogCS5udW1fcmVnX2RlZmF1bHRzCT0gQVJSQVlfU0laRShzdW44aV9pMnNfcmVnX2RlZmF1bHRz
KSwKIAkud3JpdGVhYmxlX3JlZwk9IHN1bjRpX2kyc193cl9yZWcsCi0JLnJlYWRhYmxlX3JlZwk9
IHN1bjhpX2kyc19yZF9yZWcsCisJLnJlYWRhYmxlX3JlZwk9IHN1bjRpX2kyc19yZF9yZWcsCiAJ
LnZvbGF0aWxlX3JlZwk9IHN1bjhpX2kyc192b2xhdGlsZV9yZWcsCiB9OwogCkBAIC0xMjI1LDcg
KzEyMTAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWcgc3VuNTBpX2kyc19y
ZWdtYXBfY29uZmlnID0gewogCS5yZWdfZGVmYXVsdHMJPSBzdW41MGlfaTJzX3JlZ19kZWZhdWx0
cywKIAkubnVtX3JlZ19kZWZhdWx0cwk9IEFSUkFZX1NJWkUoc3VuNTBpX2kyc19yZWdfZGVmYXVs
dHMpLAogCS53cml0ZWFibGVfcmVnCT0gc3VuNGlfaTJzX3dyX3JlZywKLQkucmVhZGFibGVfcmVn
CT0gc3VuOGlfaTJzX3JkX3JlZywKKwkucmVhZGFibGVfcmVnCT0gc3VuNGlfaTJzX3JkX3JlZywK
IAkudm9sYXRpbGVfcmVnCT0gc3VuOGlfaTJzX3ZvbGF0aWxlX3JlZywKIH07CiAKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
