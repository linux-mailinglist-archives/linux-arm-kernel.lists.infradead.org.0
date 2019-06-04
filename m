Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AE534D5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:30:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F3Fp7N5+hNNDPP+0A6EopFSbbK08TfiG/1B6onmEl3o=; b=JQRe/xhOn9GQ3/
	/h/LJGtdaPWm3Kec8JJhXdxxhenbhlQNrPkDq+T9bWZ48c9zOIy6/1uncR06kd0/CXqIM8yl0kd+l
	BligpqV43ePg29IZ98zIW2WOzkCEt6TkMCCcU01VIlkdY6rr+MTu+V5fWvu49WkT5qZwfsF3n+87m
	6l1VWnVxraMFj1z4AQfm3GnMTtS6/+P+nNy5QjOnEGAdSXLos3kUvE1VqBP2fBOMlSiKaWNkWKs4o
	v3uQLH+ZuoyhuPe7JunEoc++8BG8iKb+ygn0ouswH+b0AvcuksjZN7+aFFj+6vRVqMmft0O8Z6XCJ
	YSL/+nVztxkP119IFZlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCKk-0006sM-ET; Tue, 04 Jun 2019 16:30:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCK8-0006JD-R7
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id t5so721919wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MV6jnkx+iwxZaJiMiVz9qnojBD0BD/3s5TPe2dpCEIM=;
 b=Fx/IlzsiYB9NYMdSCB4N/0Fj/qvx9OeMIafcg/PSyOCDwGIesjtTCej002nbNf4JPz
 A+bujnIxIilBNprucYdILxd1YfwkIdB9NF5tJHeIRgq+GqtBODKeetd7IlWQEVNS/T4V
 Uuhbz1duDEJKlQupeWkL7I+11uiZ5HdfeLxgr2Pov3CSp8bXGLqWWBZg/yX+EZGYmsHF
 njkmZ18cXZifWLATeXayCefXx5+tZtP9C8546a6eYd3FosyS29FmLxytOxW/+ReL0muo
 3G6x5PHVjYlT4j2mBrzTzXodcxUaNXkueypM9+K+dxEVGWTVay3M8vbiFrstyKORq435
 2ICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MV6jnkx+iwxZaJiMiVz9qnojBD0BD/3s5TPe2dpCEIM=;
 b=ORTo36yzSnNnmdndclpsczkqvh09V3VZX8lL+LYcbcLIrd0jcKafBYUiLsC6SQ6Obd
 6QMHkeB9yrL7v1Qd1B7BM8vwINtJeAxqNnWna4sKTJgUMplZNUDr7ki5nUKMHqEUTm6q
 hacehd7HBCjThR+L0Keml+ms+tsnzXh3762qrvQb9GPFtYHKXRe5fo1Zb/dC7m3vaauV
 yoyBg222+RawRcXP87sIHSCkAzFizqq+72qIaZu6bk0x3DOG1T4zZMGJ+8h/cHcszO7i
 s+L0YkQePqOdcnOL2ZT8TYo1dqHHUuj8T3f9CnvrMGB+LGqD7iWQfv4N4wC9S2AT3TDl
 hyHg==
X-Gm-Message-State: APjAAAVVmUcAlJCD+fESTS2QUHjGSn1FmtEATv7rcV2eLpk40FhRBbA6
 sJdxSMfeOdU4sWdCKXGV21E=
X-Google-Smtp-Source: APXvYqwJYDJu1KcvEZ11IPopX5Ugbq2R6IGnkd1uXC8mohUAoxPbVCeDp32xyLvquSj+Yt3X0cF4Fg==
X-Received: by 2002:a1c:1947:: with SMTP id 68mr1406373wmz.171.1559665807417; 
 Tue, 04 Jun 2019 09:30:07 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 02/13] media: rc: Introduce sunxi_ir_quirks
Date: Tue,  4 Jun 2019 18:29:48 +0200
Message-Id: <20190604162959.29199-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093008_880895_F9FAFCF7 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

VGhpcyBkcml2ZXIgaXMgdXNlZCBpbiB2YXJpb3VzIEFsbHdpbm5lciBTb0Mgd2l0aCBkaWZmZXJl
bnQgY29uZmlndXJhdGlvbi4KCkludHJvZHVjZSBhIHF1aXJrcyBzdHJ1Y3QgdG8ga25vdyB0aGUg
ZmlmbyBzaXplIGFuZCBpZiBhIHJlc2V0IGlzIHJlcXVpcmVkLgoKU2lnbmVkLW9mZi1ieTogQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNlYW4gWW91bmcg
PHNlYW5AbWVzcy5vcmc+Ci0tLQogZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYyB8IDYxICsr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQ3IGlu
c2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cmMvc3VueGktY2lyLmMgYi9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCmluZGV4IDMwN2U0
NDcxNGVhMC4uZDAyZGNiNmZkMGE1IDEwMDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3JjL3N1bnhp
LWNpci5jCisrKyBiL2RyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKQEAgLTgxLDYgKzgxLDE3
IEBACiAvKiBUaW1lIGFmdGVyIHdoaWNoIGRldmljZSBzdG9wcyBzZW5kaW5nIGRhdGEgaW4gbXMg
Ki8KICNkZWZpbmUgU1VOWElfSVJfVElNRU9VVCAgICAgIDEyMAogCisvKioKKyAqIHN0cnVjdCBz
dW54aV9pcl9xdWlya3MgLSBEaWZmZXJlbmNlcyBiZXR3ZWVuIFNvQyB2YXJpYW50cy4KKyAqCisg
KiBAaGFzX3Jlc2V0OiBTb0MgbmVlZHMgcmVzZXQgZGVhc3NlcnRlZC4KKyAqIEBmaWZvX3NpemU6
IHNpemUgb2YgdGhlIGZpZm8uCisgKi8KK3N0cnVjdCBzdW54aV9pcl9xdWlya3MgeworCWJvb2wJ
CWhhc19yZXNldDsKKwlpbnQJCWZpZm9fc2l6ZTsKK307CisKIHN0cnVjdCBzdW54aV9pciB7CiAJ
c3BpbmxvY2tfdCAgICAgIGlyX2xvY2s7CiAJc3RydWN0IHJjX2RldiAgICpyYzsKQEAgLTE0Myw2
ICsxNTQsNyBAQCBzdGF0aWMgaW50IHN1bnhpX2lyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCiAKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2OwogCXN0cnVjdCBk
ZXZpY2Vfbm9kZSAqZG4gPSBkZXYtPm9mX25vZGU7CisJY29uc3Qgc3RydWN0IHN1bnhpX2lyX3F1
aXJrcyAqcXVpcmtzOwogCXN0cnVjdCByZXNvdXJjZSAqcmVzOwogCXN0cnVjdCBzdW54aV9pciAq
aXI7CiAJdTMyIGJfY2xrX2ZyZXEgPSBTVU5YSV9JUl9CQVNFX0NMSzsKQEAgLTE1MSwxMiArMTYz
LDE1IEBAIHN0YXRpYyBpbnQgc3VueGlfaXJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAlpZiAoIWlyKQogCQlyZXR1cm4gLUVOT01FTTsKIAorCXF1aXJrcyA9IG9mX2Rldmlj
ZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKKwlpZiAocXVpcmtzID09IE5VTEwpIHsKKwkJ
ZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGRldGVybWluZSB0aGUgcXVpcmtzIHRvIHVz
ZVxuIik7CisJCXJldHVybiAtRU5PREVWOworCX0KKwogCXNwaW5fbG9ja19pbml0KCZpci0+aXJf
bG9jayk7CiAKLQlpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUoZG4sICJhbGx3aW5uZXIsc3Vu
NWktYTEzLWlyIikpCi0JCWlyLT5maWZvX3NpemUgPSA2NDsKLQllbHNlCi0JCWlyLT5maWZvX3Np
emUgPSAxNjsKKwlpci0+Zmlmb19zaXplID0gcXVpcmtzLT5maWZvX3NpemU7CiAKIAkvKiBDbG9j
ayAqLwogCWlyLT5hcGJfY2xrID0gZGV2bV9jbGtfZ2V0KGRldiwgImFwYiIpOwpAQCAtMTczLDEz
ICsxODgsMTUgQEAgc3RhdGljIGludCBzdW54aV9pcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQogCS8qIEJhc2UgY2xvY2sgZnJlcXVlbmN5IChvcHRpb25hbCkgKi8KIAlvZl9w
cm9wZXJ0eV9yZWFkX3UzMihkbiwgImNsb2NrLWZyZXF1ZW5jeSIsICZiX2Nsa19mcmVxKTsKIAot
CS8qIFJlc2V0IChvcHRpb25hbCkgKi8KLQlpci0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKLQlpZiAoSVNfRVJSKGlyLT5yc3QpKQot
CQlyZXR1cm4gUFRSX0VSUihpci0+cnN0KTsKLQlyZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0
KGlyLT5yc3QpOwotCWlmIChyZXQpCi0JCXJldHVybiByZXQ7CisJLyogUmVzZXQgKi8KKwlpZiAo
cXVpcmtzLT5oYXNfcmVzZXQpIHsKKwkJaXItPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRf
ZXhjbHVzaXZlKGRldiwgTlVMTCk7CisJCWlmIChJU19FUlIoaXItPnJzdCkpCisJCQlyZXR1cm4g
UFRSX0VSUihpci0+cnN0KTsKKwkJcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChpci0+cnN0
KTsKKwkJaWYgKHJldCkKKwkJCXJldHVybiByZXQ7CisJfQogCiAJcmV0ID0gY2xrX3NldF9yYXRl
KGlyLT5jbGssIGJfY2xrX2ZyZXEpOwogCWlmIChyZXQpIHsKQEAgLTMxNiwxMCArMzMzLDI2IEBA
IHN0YXRpYyBpbnQgc3VueGlfaXJfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJcmV0dXJuIDA7CiB9CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VueGlfaXJfcXVpcmtzIHN1
bjRpX2ExMF9pcl9xdWlya3MgPSB7CisJLmhhc19yZXNldCA9IGZhbHNlLAorCS5maWZvX3NpemUg
PSAxNiwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc3VueGlfaXJfcXVpcmtzIHN1bjVpX2Ex
M19pcl9xdWlya3MgPSB7CisJLmhhc19yZXNldCA9IGZhbHNlLAorCS5maWZvX3NpemUgPSA2NCwK
K307CisKIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bnhpX2lyX21hdGNoW10g
PSB7Ci0JeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGktYTEwLWlyIiwgfSwKLQl7IC5j
b21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiLCB9LAotCXt9LAorCXsKKwkJLmNv
bXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1pciIsCisJCS5kYXRhID0gJnN1bjRpX2Ex
MF9pcl9xdWlya3MsCisJfSwKKwl7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41aS1h
MTMtaXIiLAorCQkuZGF0YSA9ICZzdW41aV9hMTNfaXJfcXVpcmtzLAorCX0sCisJe30KIH07CiBN
T0RVTEVfREVWSUNFX1RBQkxFKG9mLCBzdW54aV9pcl9tYXRjaCk7CiAKLS0gCjIuMjAuMQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
