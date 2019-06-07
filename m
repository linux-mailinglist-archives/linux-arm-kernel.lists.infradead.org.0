Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5657C39973
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RtThuGcSpcFQ5kKZFhUoV6hOqtyxhpm/v8gK6HhX2Os=; b=B/ihzPVxAaq1zJ
	Poxz9ynvkpHO2+sxkeMvjQGxR0j1NL4SgUlk0C/htMIM5bAdhK5fJcxkILsn3ahsgrq+4x2JTEgyg
	yIYWMzR9116Lwiir/vbUXdyr0QvTZ8I5MUULpvBf/GziCZ0WnRHa4KAdjHqB3IdPIRWsxu2wXbSU4
	ojkmuRgo/RiGvdnw9NvF28VSNV/boQfSvvqOatK14ArzQiApLr3Ct+OTFywVbVp1Nq57ZolW9ANW+
	Ri8ej8nR+RO8TesjiETKsJK1bWaVjI7SsFpiMbjq3HRnX7LaIvaBgq6IkA89lMTHRX+LuxGryR97f
	Ly3WCrlAebAZqCDET2+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO1p-0001YN-GP; Fri, 07 Jun 2019 23:12:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0u-0000v7-EV
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id v14so3634893wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nQa52sUHZ517m7H0LPZd/LRjrkZC8z+E4fM+VmhMcO0=;
 b=CECHZJqg/l5iO56T6hSFDxp8SKDvbku/8/gT+5g/3BhUfSrCljN4D11Laf+iXL29JR
 RMC0fWsn4BGkqOU7ZAsRawsHpNrGBQd5qzvD172Ces5DFruTSwS+nT/FbGDjaLx0k13X
 snmUOZTNZ2u3xtC02JBeWERzKEQ93DZ+JQABqrPpaxYu6KNjDh69svYQOlLVklgcgXQz
 GyFRkB/R8Tf2C9iuc77m0KP8CXt09E0VYwFrknpV+8NArPH+jWh5IW7/ZoP/5RgkY0JH
 t3kGCt0sTkjj6RzMTbugneDy2SA8nyILg70FzTlTSt3cWTkj94gB/K+XT19AFXHxSCra
 AuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nQa52sUHZ517m7H0LPZd/LRjrkZC8z+E4fM+VmhMcO0=;
 b=O3M3xvTqdYa9J0WNS32hdZeAr16d8HIF5/dI5VfmOpOn05WDzzkEDcX/sgVg4GBsKl
 l/8CWWwx8jWF+TSFw0fZmetXpgYrb0ee1NZXrlapzOr4AL7AibgKHlUwNlk3aICrxnCC
 p18208jJndhovi7TyRpra/XcMy9Vleg3VXmn1szY14SZGdPdUXhWKDsxc/IEVd0ixJPN
 qltOAQDDO8NTEj9S1x8//RYLcL5ZIRDRHwAANqKBKn6lOFWBaE7xUrQajxLLa1UAfml9
 4BZF6zkUsFFefxaaXL+wrTBGYlWh3egSNVS3BeLUl/vgqZayHkvPzxRT2QspwKtZEvTd
 tbPQ==
X-Gm-Message-State: APjAAAUDYmnFBkcTlSY3UmgGBXxcAdZ8Ho5MCkXbJ8+Qfs1P28iBoLcn
 5LIXALDzWrBkHZYLAlgjk30=
X-Google-Smtp-Source: APXvYqwHX/FPxKirOi8VnV5ct8inI/+gasfuvYrdXORuCb+nY+vevbp3JsrN3ja9w8hPuIQD2+c1jQ==
X-Received: by 2002:adf:cc85:: with SMTP id p5mr20049716wrj.47.1559949071207; 
 Fri, 07 Jun 2019 16:11:11 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:09 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 02/13] media: rc: Introduce sunxi_ir_quirks
Date: Sat,  8 Jun 2019 01:10:49 +0200
Message-Id: <20190607231100.5894-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161112_496968_78D8F3EF 
X-CRM114-Status: GOOD (  17.21  )
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

VGhpcyBkcml2ZXIgaXMgdXNlZCBpbiB2YXJpb3VzIEFsbHdpbm5lciBTb0Mgd2l0aCBkaWZmZXJl
bnQgY29uZmlndXJhdGlvbi4KCkludHJvZHVjZSBhIHF1aXJrcyBzdHJ1Y3QgdG8ga25vdyB0aGUg
ZmlmbyBzaXplIGFuZCBpZiBhIHJlc2V0IGlzIHJlcXVpcmVkLgoKU2lnbmVkLW9mZi1ieTogQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNlYW4gWW91bmcg
PHNlYW5AbWVzcy5vcmc+CkFja2VkLWJ5OiBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJv
b3RsaW4uY29tPgotLS0KIGRyaXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMgfCA2MSArKysrKysr
KysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0NyBpbnNlcnRp
b25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3JjL3N1
bnhpLWNpci5jIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYwppbmRleCAzMDdlNDQ3MTRl
YTAuLmQwMmRjYjZmZDBhNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIu
YworKysgYi9kcml2ZXJzL21lZGlhL3JjL3N1bnhpLWNpci5jCkBAIC04MSw2ICs4MSwxNyBAQAog
LyogVGltZSBhZnRlciB3aGljaCBkZXZpY2Ugc3RvcHMgc2VuZGluZyBkYXRhIGluIG1zICovCiAj
ZGVmaW5lIFNVTlhJX0lSX1RJTUVPVVQgICAgICAxMjAKIAorLyoqCisgKiBzdHJ1Y3Qgc3VueGlf
aXJfcXVpcmtzIC0gRGlmZmVyZW5jZXMgYmV0d2VlbiBTb0MgdmFyaWFudHMuCisgKgorICogQGhh
c19yZXNldDogU29DIG5lZWRzIHJlc2V0IGRlYXNzZXJ0ZWQuCisgKiBAZmlmb19zaXplOiBzaXpl
IG9mIHRoZSBmaWZvLgorICovCitzdHJ1Y3Qgc3VueGlfaXJfcXVpcmtzIHsKKwlib29sCQloYXNf
cmVzZXQ7CisJaW50CQlmaWZvX3NpemU7Cit9OworCiBzdHJ1Y3Qgc3VueGlfaXIgewogCXNwaW5s
b2NrX3QgICAgICBpcl9sb2NrOwogCXN0cnVjdCByY19kZXYgICAqcmM7CkBAIC0xNDMsNiArMTU0
LDcgQEAgc3RhdGljIGludCBzdW54aV9pcl9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQogCiAJc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKIAlzdHJ1Y3QgZGV2aWNl
X25vZGUgKmRuID0gZGV2LT5vZl9ub2RlOworCWNvbnN0IHN0cnVjdCBzdW54aV9pcl9xdWlya3Mg
KnF1aXJrczsKIAlzdHJ1Y3QgcmVzb3VyY2UgKnJlczsKIAlzdHJ1Y3Qgc3VueGlfaXIgKmlyOwog
CXUzMiBiX2Nsa19mcmVxID0gU1VOWElfSVJfQkFTRV9DTEs7CkBAIC0xNTEsMTIgKzE2MywxNSBA
QCBzdGF0aWMgaW50IHN1bnhpX2lyX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJaWYgKCFpcikKIAkJcmV0dXJuIC1FTk9NRU07CiAKKwlxdWlya3MgPSBvZl9kZXZpY2VfZ2V0
X21hdGNoX2RhdGEoJnBkZXYtPmRldik7CisJaWYgKHF1aXJrcyA9PSBOVUxMKSB7CisJCWRldl9l
cnIoJnBkZXYtPmRldiwgIkZhaWxlZCB0byBkZXRlcm1pbmUgdGhlIHF1aXJrcyB0byB1c2VcbiIp
OworCQlyZXR1cm4gLUVOT0RFVjsKKwl9CisKIAlzcGluX2xvY2tfaW5pdCgmaXItPmlyX2xvY2sp
OwogCi0JaWYgKG9mX2RldmljZV9pc19jb21wYXRpYmxlKGRuLCAiYWxsd2lubmVyLHN1bjVpLWEx
My1pciIpKQotCQlpci0+Zmlmb19zaXplID0gNjQ7Ci0JZWxzZQotCQlpci0+Zmlmb19zaXplID0g
MTY7CisJaXItPmZpZm9fc2l6ZSA9IHF1aXJrcy0+Zmlmb19zaXplOwogCiAJLyogQ2xvY2sgKi8K
IAlpci0+YXBiX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJhcGIiKTsKQEAgLTE3MywxMyArMTg4
LDE1IEBAIHN0YXRpYyBpbnQgc3VueGlfaXJfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAkvKiBCYXNlIGNsb2NrIGZyZXF1ZW5jeSAob3B0aW9uYWwpICovCiAJb2ZfcHJvcGVy
dHlfcmVhZF91MzIoZG4sICJjbG9jay1mcmVxdWVuY3kiLCAmYl9jbGtfZnJlcSk7CiAKLQkvKiBS
ZXNldCAob3B0aW9uYWwpICovCi0JaXItPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0
aW9uYWxfZXhjbHVzaXZlKGRldiwgTlVMTCk7Ci0JaWYgKElTX0VSUihpci0+cnN0KSkKLQkJcmV0
dXJuIFBUUl9FUlIoaXItPnJzdCk7Ci0JcmV0ID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChpci0+
cnN0KTsKLQlpZiAocmV0KQotCQlyZXR1cm4gcmV0OworCS8qIFJlc2V0ICovCisJaWYgKHF1aXJr
cy0+aGFzX3Jlc2V0KSB7CisJCWlyLT5yc3QgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4Y2x1
c2l2ZShkZXYsIE5VTEwpOworCQlpZiAoSVNfRVJSKGlyLT5yc3QpKQorCQkJcmV0dXJuIFBUUl9F
UlIoaXItPnJzdCk7CisJCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaXItPnJzdCk7CisJ
CWlmIChyZXQpCisJCQlyZXR1cm4gcmV0OworCX0KIAogCXJldCA9IGNsa19zZXRfcmF0ZShpci0+
Y2xrLCBiX2Nsa19mcmVxKTsKIAlpZiAocmV0KSB7CkBAIC0zMTYsMTAgKzMzMywyNiBAQCBzdGF0
aWMgaW50IHN1bnhpX2lyX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJl
dHVybiAwOwogfQogCitzdGF0aWMgY29uc3Qgc3RydWN0IHN1bnhpX2lyX3F1aXJrcyBzdW40aV9h
MTBfaXJfcXVpcmtzID0geworCS5oYXNfcmVzZXQgPSBmYWxzZSwKKwkuZmlmb19zaXplID0gMTYs
Cit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHN1bnhpX2lyX3F1aXJrcyBzdW41aV9hMTNfaXJf
cXVpcmtzID0geworCS5oYXNfcmVzZXQgPSBmYWxzZSwKKwkuZmlmb19zaXplID0gNjQsCit9Owor
CiBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW54aV9pcl9tYXRjaFtdID0gewot
CXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjRpLWExMC1pciIsIH0sCi0JeyAuY29tcGF0
aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIiwgfSwKLQl7fSwKKwl7CisJCS5jb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW40aS1hMTAtaXIiLAorCQkuZGF0YSA9ICZzdW40aV9hMTBfaXJf
cXVpcmtzLAorCX0sCisJeworCQkuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWly
IiwKKwkJLmRhdGEgPSAmc3VuNWlfYTEzX2lyX3F1aXJrcywKKwl9LAorCXt9CiB9OwogTU9EVUxF
X0RFVklDRV9UQUJMRShvZiwgc3VueGlfaXJfbWF0Y2gpOwogCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
