Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A403A2A577
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HshebKsnw+6fZ9Cdh/5InfKdLZ5MOP6sSCRUjOufM+o=; b=HUlBOR21jesvcS
	mQn1MpTNXCY0BwzsaCYKFPSgcvJdIglVSOFw5ousC6u0kGZGoxAe2C8K1ygaXLBoq9PeBbn/Zq3dm
	6YdOQIIdTsfRvxhlxAAH1zLUfDYB4heO9tC66k2sXZ/I/Tj6xLM9cMW5yTwE9HymadK/ig0GpEh7w
	wqQibj+fIRmMK6bvcPWHQoJeE08OyJ7/ZynW+9DcKdi2TRkWkzaG/DWULFVA4Wlajk1q5gpAHErmW
	kWCtCvjR+s834d/bJ0f3sLWvY4qELfvvSWKBXap6suNGnHehrA+OvX/9tgaTrOvPV6xFTJBM4N5CV
	6DWcWk7K2vMXaR3ZRzBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZho-0004l8-BU; Sat, 25 May 2019 16:39:36 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZgl-0003bY-Ov
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:38:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id f8so12848450wrt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H03wKTI6oMmWjRMAo+KT8s6YBguBSsFMM/5UIe8GNQk=;
 b=Iddrw4kWou21k/kiAmXABQ84cser+X5MUpZAa9hVL91V9F615spMPNd2RQsulxU9Lk
 aIsy7ssyPs2REq7+/lkqC5OWSzaAWgYGIRtWwnkEuueh6ugMCk9RjzluRZNYdp91qY5L
 lMmCbPCXooM2KGphQxGnbJros4Of31LdliwtPAGBuVK/yCpMEPjSQHqneHJa9qCkwyqT
 39IbYsx8C1/weS7Ge8gN1kxWPJyNyvkn5g+gDAtKZ6CsL6lEsDyrGCC6T11c7IKN1EHl
 qpZPmtFGcGbsPHDM1w1nVfDlXHT4rDNX/tCM4az/J0lYCSmRL4caqdhAMql5Jp6rGd+A
 OkXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H03wKTI6oMmWjRMAo+KT8s6YBguBSsFMM/5UIe8GNQk=;
 b=N5Up6WKf0bPJWzUSn+3EINV5c+xFs43GUwFpbaDIi39fuAO46AI4h7NfFcfq50jGjg
 Z1nRGLs3JxFx1eJvLb30SDE2JjPSajpi8N2Ks0/QXs0+SYWM/z3RiRiG8flupjtdM86e
 bV9qXhoenDgRgoizi7K+LIy9qvFj9WqGEagbPpfQ90n4KWqP18UwXEoHxmZE1a0EiigL
 EN+RwhfI90LvKbFQ55YwtArzZI+/hTa0W0BH6EquLbHgQrrK5ec7SEAPHMUYKIXx723t
 +x5y+1I0ueKyHG8D54jgRCqF8GRIsvMJ4bnavui5DdXam02kpvpxsFhgA/0NSmgRBMyN
 I5Xg==
X-Gm-Message-State: APjAAAX7Tj2GBDtsGVfESd4Phv3ACazrRn4u05QGAQmM1urnJBpeEc56
 LN71Nb6H/bMDoHH4eqg7mG950eTSMvpltw==
X-Google-Smtp-Source: APXvYqw5sFDjRtDp0iNaPs2KQNMhDcL2yGJeY6KQpk7jesSctB6oJfyHxfP2zRbHceh6y467XZDpRg==
X-Received: by 2002:adf:f6ce:: with SMTP id y14mr12786156wrp.113.1558802310197; 
 Sat, 25 May 2019 09:38:30 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id f65sm9306498wmg.45.2019.05.25.09.38.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 09:38:29 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 4/7] dmaengine: sun6i: Add a quirk for setting mode fields
Date: Sat, 25 May 2019 18:38:16 +0200
Message-Id: <20190525163819.21055-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525163819.21055-1-peron.clem@gmail.com>
References: <20190525163819.21055-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_093831_973523_5B7A1DC5 
X-CRM114-Status: GOOD (  15.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgRE1BIGhh
cyBtb2RlIGZpZWxkcyBpbiBkaWZmZXJlbnQgcG9zaXRpb24gdGhhbiBhbnkgb3RoZXIgY3VycmVu
dGx5CnN1cHBvcnRlZCBETUEgY29udHJvbGxlci4KCkFkZCBhIHF1aXJrIGZvciB0aGF0LgoKU2ln
bmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWdu
ZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGRy
aXZlcnMvZG1hL3N1bjZpLWRtYS5jIHwgNDYgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYyBiL2RyaXZlcnMvZG1h
L3N1bjZpLWRtYS5jCmluZGV4IGY3MjViOTNmZDIxYS4uZjVjYjVlODliZjdiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYworKysgYi9kcml2ZXJzL2RtYS9zdW42aS1kbWEuYwpA
QCAtNzAsMTUgKzcwLDEzIEBACiAjZGVmaW5lIERNQV9DSEFOX0NVUl9DRkcJMHgwYwogI2RlZmlu
ZSBETUFfQ0hBTl9NQVhfRFJRX0EzMQkJMHgxZgogI2RlZmluZSBETUFfQ0hBTl9DRkdfU1JDX0RS
UV9BMzEoeCkJKCh4KSAmIERNQV9DSEFOX01BWF9EUlFfQTMxKQotI2RlZmluZSBETUFfQ0hBTl9D
RkdfU1JDX0lPX01PREUJQklUKDUpCi0jZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfTElORUFSX01P
REUJKDAgPDwgNSkKKyNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19NT0RFX0EzMSh4KQkoKCh4KSAm
IDB4MSkgPDwgNSkKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX1NSQ19CVVJTVF9BMzEoeCkJKCgoeCkg
JiAweDMpIDw8IDcpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfQlVSU1RfSDMoeCkJKCgoeCkg
JiAweDMpIDw8IDYpCiAjZGVmaW5lIERNQV9DSEFOX0NGR19TUkNfV0lEVEgoeCkJKCgoeCkgJiAw
eDMpIDw8IDkpCiAKICNkZWZpbmUgRE1BX0NIQU5fQ0ZHX0RTVF9EUlFfQTMxKHgpCShETUFfQ0hB
Tl9DRkdfU1JDX0RSUV9BMzEoeCkgPDwgMTYpCi0jZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfSU9f
TU9ERQkoRE1BX0NIQU5fQ0ZHX1NSQ19JT19NT0RFIDw8IDE2KQotI2RlZmluZSBETUFfQ0hBTl9D
RkdfRFNUX0xJTkVBUl9NT0RFCShETUFfQ0hBTl9DRkdfU1JDX0xJTkVBUl9NT0RFIDw8IDE2KQor
I2RlZmluZSBETUFfQ0hBTl9DRkdfRFNUX01PREVfQTMxKHgpCShETUFfQ0hBTl9DRkdfU1JDX01P
REVfQTMxKHgpIDw8IDE2KQogI2RlZmluZSBETUFfQ0hBTl9DRkdfRFNUX0JVUlNUX0EzMSh4KQko
RE1BX0NIQU5fQ0ZHX1NSQ19CVVJTVF9BMzEoeCkgPDwgMTYpCiAjZGVmaW5lIERNQV9DSEFOX0NG
R19EU1RfQlVSU1RfSDMoeCkJKERNQV9DSEFOX0NGR19TUkNfQlVSU1RfSDMoeCkgPDwgMTYpCiAj
ZGVmaW5lIERNQV9DSEFOX0NGR19EU1RfV0lEVEgoeCkJKERNQV9DSEFOX0NGR19TUkNfV0lEVEgo
eCkgPDwgMTYpCkBAIC05OCw2ICs5Niw4IEBACiAjZGVmaW5lIExMSV9MQVNUX0lURU0JMHhmZmZm
ZjgwMAogI2RlZmluZSBOT1JNQUxfV0FJVAk4CiAjZGVmaW5lIERSUV9TRFJBTQkxCisjZGVmaW5l
IExJTkVBUl9NT0RFICAgICAwCisjZGVmaW5lIElPX01PREUgICAgICAgICAxCiAKIC8qIGZvcndh
cmQgZGVjbGFyYXRpb24gKi8KIHN0cnVjdCBzdW42aV9kbWFfZGV2OwpAQCAtMTI2LDYgKzEyNiw3
IEBAIHN0cnVjdCBzdW42aV9kbWFfY29uZmlnIHsKIAl2b2lkICgqY2xvY2tfYXV0b2dhdGVfZW5h
YmxlKShzdHJ1Y3Qgc3VuNmlfZG1hX2RldiAqKTsKIAl2b2lkICgqc2V0X2J1cnN0X2xlbmd0aCko
dTMyICpwX2NmZywgczggc3JjX2J1cnN0LCBzOCBkc3RfYnVyc3QpOwogCXZvaWQgKCpzZXRfZHJx
KSh1MzIgKnBfY2ZnLCBzOCBzcmNfZHJxLCBzOCBkc3RfZHJxKTsKKwl2b2lkICgqc2V0X21vZGUp
KHUzMiAqcF9jZmcsIHM4IHNyY19tb2RlLCBzOCBkc3RfbW9kZSk7CiAJdTMyIHNyY19idXJzdF9s
ZW5ndGhzOwogCXUzMiBkc3RfYnVyc3RfbGVuZ3RoczsKIAl1MzIgc3JjX2FkZHJfd2lkdGhzOwpA
QCAtMzE4LDYgKzMxOSwxMiBAQCBzdGF0aWMgdm9pZCBzdW42aV9zZXRfZHJxX2EzMSh1MzIgKnBf
Y2ZnLCBzOCBzcmNfZHJxLCBzOCBkc3RfZHJxKQogCQkgIERNQV9DSEFOX0NGR19EU1RfRFJRX0Ez
MShkc3RfZHJxKTsKIH0KIAorc3RhdGljIHZvaWQgc3VuNmlfc2V0X21vZGVfYTMxKHUzMiAqcF9j
ZmcsIHM4IHNyY19tb2RlLCBzOCBkc3RfbW9kZSkKK3sKKwkqcF9jZmcgfD0gRE1BX0NIQU5fQ0ZH
X1NSQ19NT0RFX0EzMShzcmNfbW9kZSkgfAorCQkgIERNQV9DSEFOX0NGR19EU1RfTU9ERV9BMzEo
ZHN0X21vZGUpOworfQorCiBzdGF0aWMgc2l6ZV90IHN1bjZpX2dldF9jaGFuX3NpemUoc3RydWN0
IHN1bjZpX3BjaGFuICpwY2hhbikKIHsKIAlzdHJ1Y3Qgc3VuNmlfZGVzYyAqdHhkID0gcGNoYW4t
PmRlc2M7CkBAIC02NDEsMTMgKzY0OCwxMiBAQCBzdGF0aWMgc3RydWN0IGRtYV9hc3luY190eF9k
ZXNjcmlwdG9yICpzdW42aV9kbWFfcHJlcF9kbWFfbWVtY3B5KAogCiAJYnVyc3QgPSBjb252ZXJ0
X2J1cnN0KDgpOwogCXdpZHRoID0gY29udmVydF9idXN3aWR0aChETUFfU0xBVkVfQlVTV0lEVEhf
NF9CWVRFUyk7Ci0Jdl9sbGktPmNmZyA9IERNQV9DSEFOX0NGR19EU1RfTElORUFSX01PREUgfAot
CQlETUFfQ0hBTl9DRkdfU1JDX0xJTkVBUl9NT0RFIHwKLQkJRE1BX0NIQU5fQ0ZHX1NSQ19XSURU
SCh3aWR0aCkgfAorCXZfbGxpLT5jZmcgPSBETUFfQ0hBTl9DRkdfU1JDX1dJRFRIKHdpZHRoKSB8
CiAJCURNQV9DSEFOX0NGR19EU1RfV0lEVEgod2lkdGgpOwogCiAJc2Rldi0+Y2ZnLT5zZXRfYnVy
c3RfbGVuZ3RoKCZ2X2xsaS0+Y2ZnLCBidXJzdCwgYnVyc3QpOwogCXNkZXYtPmNmZy0+c2V0X2Ry
cSgmdl9sbGktPmNmZywgRFJRX1NEUkFNLCBEUlFfU0RSQU0pOworCXNkZXYtPmNmZy0+c2V0X21v
ZGUoJnZfbGxpLT5jZmcsIExJTkVBUl9NT0RFLCBMSU5FQVJfTU9ERSk7CiAKIAlzdW42aV9kbWFf
bGxpX2FkZChOVUxMLCB2X2xsaSwgcF9sbGksIHR4ZCk7CiAKQEAgLTY5OSwxMCArNzA1LDkgQEAg
c3RhdGljIHN0cnVjdCBkbWFfYXN5bmNfdHhfZGVzY3JpcHRvciAqc3VuNmlfZG1hX3ByZXBfc2xh
dmVfc2coCiAJCWlmIChkaXIgPT0gRE1BX01FTV9UT19ERVYpIHsKIAkJCXZfbGxpLT5zcmMgPSBz
Z19kbWFfYWRkcmVzcyhzZyk7CiAJCQl2X2xsaS0+ZHN0ID0gc2NvbmZpZy0+ZHN0X2FkZHI7Ci0J
CQl2X2xsaS0+Y2ZnID0gbGxpX2NmZyB8Ci0JCQkJRE1BX0NIQU5fQ0ZHX0RTVF9JT19NT0RFIHwK
LQkJCQlETUFfQ0hBTl9DRkdfU1JDX0xJTkVBUl9NT0RFOworCQkJdl9sbGktPmNmZyA9IGxsaV9j
Zmc7CiAJCQlzZGV2LT5jZmctPnNldF9kcnEoJnZfbGxpLT5jZmcsIERSUV9TRFJBTSwgdmNoYW4t
PnBvcnQpOworCQkJc2Rldi0+Y2ZnLT5zZXRfbW9kZSgmdl9sbGktPmNmZywgTElORUFSX01PREUs
IElPX01PREUpOwogCiAJCQlkZXZfZGJnKGNoYW4yZGV2KGNoYW4pLAogCQkJCSIlczsgY2hhbjog
JWQsIGRlc3Q6ICVwYWQsIHNyYzogJXBhZCwgbGVuOiAldS4gZmxhZ3M6IDB4JTA4bHhcbiIsCkBA
IC03MTMsMTAgKzcxOCw5IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3Ig
KnN1bjZpX2RtYV9wcmVwX3NsYXZlX3NnKAogCQl9IGVsc2UgewogCQkJdl9sbGktPnNyYyA9IHNj
b25maWctPnNyY19hZGRyOwogCQkJdl9sbGktPmRzdCA9IHNnX2RtYV9hZGRyZXNzKHNnKTsKLQkJ
CXZfbGxpLT5jZmcgPSBsbGlfY2ZnIHwKLQkJCQlETUFfQ0hBTl9DRkdfRFNUX0xJTkVBUl9NT0RF
IHwKLQkJCQlETUFfQ0hBTl9DRkdfU1JDX0lPX01PREU7CisJCQl2X2xsaS0+Y2ZnID0gbGxpX2Nm
ZzsKIAkJCXNkZXYtPmNmZy0+c2V0X2RycSgmdl9sbGktPmNmZywgdmNoYW4tPnBvcnQsIERSUV9T
RFJBTSk7CisJCQlzZGV2LT5jZmctPnNldF9tb2RlKCZ2X2xsaS0+Y2ZnLCBJT19NT0RFLCBMSU5F
QVJfTU9ERSk7CiAKIAkJCWRldl9kYmcoY2hhbjJkZXYoY2hhbiksCiAJCQkJIiVzOyBjaGFuOiAl
ZCwgZGVzdDogJXBhZCwgc3JjOiAlcGFkLCBsZW46ICV1LiBmbGFnczogMHglMDhseFxuIiwKQEAg
LTc4MiwxNyArNzg2LDE1IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hX2FzeW5jX3R4X2Rlc2NyaXB0b3Ig
KnN1bjZpX2RtYV9wcmVwX2RtYV9jeWNsaWMoCiAJCWlmIChkaXIgPT0gRE1BX01FTV9UT19ERVYp
IHsKIAkJCXZfbGxpLT5zcmMgPSBidWZfYWRkciArIHBlcmlvZF9sZW4gKiBpOwogCQkJdl9sbGkt
PmRzdCA9IHNjb25maWctPmRzdF9hZGRyOwotCQkJdl9sbGktPmNmZyA9IGxsaV9jZmcgfAotCQkJ
CURNQV9DSEFOX0NGR19EU1RfSU9fTU9ERSB8Ci0JCQkJRE1BX0NIQU5fQ0ZHX1NSQ19MSU5FQVJf
TU9ERTsKKwkJCXZfbGxpLT5jZmcgPSBsbGlfY2ZnOwogCQkJc2Rldi0+Y2ZnLT5zZXRfZHJxKCZ2
X2xsaS0+Y2ZnLCBEUlFfU0RSQU0sIHZjaGFuLT5wb3J0KTsKKwkJCXNkZXYtPmNmZy0+c2V0X21v
ZGUoJnZfbGxpLT5jZmcsIExJTkVBUl9NT0RFLCBJT19NT0RFKTsKIAkJfSBlbHNlIHsKIAkJCXZf
bGxpLT5zcmMgPSBzY29uZmlnLT5zcmNfYWRkcjsKIAkJCXZfbGxpLT5kc3QgPSBidWZfYWRkciAr
IHBlcmlvZF9sZW4gKiBpOwotCQkJdl9sbGktPmNmZyA9IGxsaV9jZmcgfAotCQkJCURNQV9DSEFO
X0NGR19EU1RfTElORUFSX01PREUgfAotCQkJCURNQV9DSEFOX0NGR19TUkNfSU9fTU9ERTsKKwkJ
CXZfbGxpLT5jZmcgPSBsbGlfY2ZnOwogCQkJc2Rldi0+Y2ZnLT5zZXRfZHJxKCZ2X2xsaS0+Y2Zn
LCB2Y2hhbi0+cG9ydCwgRFJRX1NEUkFNKTsKKwkJCXNkZXYtPmNmZy0+c2V0X21vZGUoJnZfbGxp
LT5jZmcsIElPX01PREUsIExJTkVBUl9NT0RFKTsKIAkJfQogCiAJCXByZXYgPSBzdW42aV9kbWFf
bGxpX2FkZChwcmV2LCB2X2xsaSwgcF9sbGksIHR4ZCk7CkBAIC0xMDU4LDYgKzEwNjAsNyBAQCBz
dGF0aWMgc3RydWN0IHN1bjZpX2RtYV9jb25maWcgc3VuNmlfYTMxX2RtYV9jZmcgPSB7CiAJLm5y
X21heF92Y2hhbnMgICA9IDUzLAogCS5zZXRfYnVyc3RfbGVuZ3RoID0gc3VuNmlfc2V0X2J1cnN0
X2xlbmd0aF9hMzEsCiAJLnNldF9kcnEgICAgICAgICAgPSBzdW42aV9zZXRfZHJxX2EzMSwKKwku
c2V0X21vZGUgICAgICAgICA9IHN1bjZpX3NldF9tb2RlX2EzMSwKIAkuc3JjX2J1cnN0X2xlbmd0
aHMgPSBCSVQoMSkgfCBCSVQoOCksCiAJLmRzdF9idXJzdF9sZW5ndGhzID0gQklUKDEpIHwgQklU
KDgpLAogCS5zcmNfYWRkcl93aWR0aHMgICA9IEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRF
KSB8CkBAIC0xMDgwLDYgKzEwODMsNyBAQCBzdGF0aWMgc3RydWN0IHN1bjZpX2RtYV9jb25maWcg
c3VuOGlfYTIzX2RtYV9jZmcgPSB7CiAJLmNsb2NrX2F1dG9nYXRlX2VuYWJsZSA9IHN1bjZpX2Vu
YWJsZV9jbG9ja19hdXRvZ2F0ZV9hMjMsCiAJLnNldF9idXJzdF9sZW5ndGggPSBzdW42aV9zZXRf
YnVyc3RfbGVuZ3RoX2EzMSwKIAkuc2V0X2RycSAgICAgICAgICA9IHN1bjZpX3NldF9kcnFfYTMx
LAorCS5zZXRfbW9kZSAgICAgICAgID0gc3VuNmlfc2V0X21vZGVfYTMxLAogCS5zcmNfYnVyc3Rf
bGVuZ3RocyA9IEJJVCgxKSB8IEJJVCg4KSwKIAkuZHN0X2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkg
fCBCSVQoOCksCiAJLnNyY19hZGRyX3dpZHRocyAgID0gQklUKERNQV9TTEFWRV9CVVNXSURUSF8x
X0JZVEUpIHwKQEAgLTEwOTcsNiArMTEwMSw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3VuNmlfZG1hX2Nv
bmZpZyBzdW44aV9hODN0X2RtYV9jZmcgPSB7CiAJLmNsb2NrX2F1dG9nYXRlX2VuYWJsZSA9IHN1
bjZpX2VuYWJsZV9jbG9ja19hdXRvZ2F0ZV9hMjMsCiAJLnNldF9idXJzdF9sZW5ndGggPSBzdW42
aV9zZXRfYnVyc3RfbGVuZ3RoX2EzMSwKIAkuc2V0X2RycSAgICAgICAgICA9IHN1bjZpX3NldF9k
cnFfYTMxLAorCS5zZXRfbW9kZSAgICAgICAgID0gc3VuNmlfc2V0X21vZGVfYTMxLAogCS5zcmNf
YnVyc3RfbGVuZ3RocyA9IEJJVCgxKSB8IEJJVCg4KSwKIAkuZHN0X2J1cnN0X2xlbmd0aHMgPSBC
SVQoMSkgfCBCSVQoOCksCiAJLnNyY19hZGRyX3dpZHRocyAgID0gQklUKERNQV9TTEFWRV9CVVNX
SURUSF8xX0JZVEUpIHwKQEAgLTExMjEsNiArMTEyNiw3IEBAIHN0YXRpYyBzdHJ1Y3Qgc3VuNmlf
ZG1hX2NvbmZpZyBzdW44aV9oM19kbWFfY2ZnID0gewogCS5jbG9ja19hdXRvZ2F0ZV9lbmFibGUg
PSBzdW42aV9lbmFibGVfY2xvY2tfYXV0b2dhdGVfaDMsCiAJLnNldF9idXJzdF9sZW5ndGggPSBz
dW42aV9zZXRfYnVyc3RfbGVuZ3RoX2gzLAogCS5zZXRfZHJxICAgICAgICAgID0gc3VuNmlfc2V0
X2RycV9hMzEsCisJLnNldF9tb2RlICAgICAgICAgPSBzdW42aV9zZXRfbW9kZV9hMzEsCiAJLnNy
Y19idXJzdF9sZW5ndGhzID0gQklUKDEpIHwgQklUKDQpIHwgQklUKDgpIHwgQklUKDE2KSwKIAku
ZHN0X2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkgfCBCSVQoNCkgfCBCSVQoOCkgfCBCSVQoMTYpLAog
CS5zcmNfYWRkcl93aWR0aHMgICA9IEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRFKSB8CkBA
IC0xMTQxLDYgKzExNDcsNyBAQCBzdGF0aWMgc3RydWN0IHN1bjZpX2RtYV9jb25maWcgc3VuNTBp
X2E2NF9kbWFfY2ZnID0gewogCS5jbG9ja19hdXRvZ2F0ZV9lbmFibGUgPSBzdW42aV9lbmFibGVf
Y2xvY2tfYXV0b2dhdGVfaDMsCiAJLnNldF9idXJzdF9sZW5ndGggPSBzdW42aV9zZXRfYnVyc3Rf
bGVuZ3RoX2gzLAogCS5zZXRfZHJxICAgICAgICAgID0gc3VuNmlfc2V0X2RycV9hMzEsCisJLnNl
dF9tb2RlICAgICAgICAgPSBzdW42aV9zZXRfbW9kZV9hMzEsCiAJLnNyY19idXJzdF9sZW5ndGhz
ID0gQklUKDEpIHwgQklUKDQpIHwgQklUKDgpIHwgQklUKDE2KSwKIAkuZHN0X2J1cnN0X2xlbmd0
aHMgPSBCSVQoMSkgfCBCSVQoNCkgfCBCSVQoOCkgfCBCSVQoMTYpLAogCS5zcmNfYWRkcl93aWR0
aHMgICA9IEJJVChETUFfU0xBVkVfQlVTV0lEVEhfMV9CWVRFKSB8CkBAIC0xMTY1LDYgKzExNzIs
NyBAQCBzdGF0aWMgc3RydWN0IHN1bjZpX2RtYV9jb25maWcgc3VuOGlfdjNzX2RtYV9jZmcgPSB7
CiAJLmNsb2NrX2F1dG9nYXRlX2VuYWJsZSA9IHN1bjZpX2VuYWJsZV9jbG9ja19hdXRvZ2F0ZV9h
MjMsCiAJLnNldF9idXJzdF9sZW5ndGggPSBzdW42aV9zZXRfYnVyc3RfbGVuZ3RoX2EzMSwKIAku
c2V0X2RycSAgICAgICAgICA9IHN1bjZpX3NldF9kcnFfYTMxLAorCS5zZXRfbW9kZSAgICAgICAg
ID0gc3VuNmlfc2V0X21vZGVfYTMxLAogCS5zcmNfYnVyc3RfbGVuZ3RocyA9IEJJVCgxKSB8IEJJ
VCg4KSwKIAkuZHN0X2J1cnN0X2xlbmd0aHMgPSBCSVQoMSkgfCBCSVQoOCksCiAJLnNyY19hZGRy
X3dpZHRocyAgID0gQklUKERNQV9TTEFWRV9CVVNXSURUSF8xX0JZVEUpIHwKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
