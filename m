Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7AD2CB68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:15:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vgTcYMg1+Ea0hnI05OBgQVU6aWVWA5E+1/v4Ue3gtjI=; b=B8lB/u02IChWRu
	eLagks/Oj2A/4Nfdxs654qWhf4ZPJDLhLw83O45R5+yy9EpA0zSMoYSLv5AhYJasaSPykHaAB3zvQ
	RpI/h07PIG8ly0kNinMYEvzW8dE4o11WB1JT5zh4ojqTi4QHtP9QMKTE4quELKymBJiG5HZLr6A75
	gNwBdQDMlPZ8nJ6snCxTUuVlBGFz2MB3V/QyVwxuA43fxtJMfdgBsYwZs/HO8j1vjWDr34V6tA/Q4
	YK3f1wrj1C4chd5g7CubWD8am025Q5y97JvDKaI3eeqGYafBThNLAnMr42E2s825mLzAYAvqRd/FH
	FQh5zqSx0yRqgOLZpZmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVel4-0001IC-54; Tue, 28 May 2019 16:15:26 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekd-0008KD-I3
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id d18so20904573wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O41YUIVc2MJNuuXTwafk8QcCnNJUPDaUXKLKqpHPW48=;
 b=YhSCXK01y9HbwTyBObMn3fJPittt7i4aSVRpTPPjmajO7xtSjaZK0cRaOXZ7r19ajz
 +gcBgQ3posddHCH2GiO5s3XPG64beLuuMwRvfakcEEBy/wGjlbmefL665TJWDH9b/cJJ
 VRhTq4fAgXEbZg7Cq/EKE4aoJuOHkaTTrWBlbdA7Rj0EkSwQklxIh5O899bqnMZc3dLv
 AGzhwDwcXYSegQBMRAicZB64GRgo5zkE0wJ6pvH3/lDvYmtILl/FsJIRjNYeNd68OBRr
 JZLCsg28+RL5ynz4N7OfvWclWUiP+jIxdBqWSiL1T8LxLo2tSYJDn0MpySItIjfT9hYq
 /klQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O41YUIVc2MJNuuXTwafk8QcCnNJUPDaUXKLKqpHPW48=;
 b=ee9E8kdeCIeKDfzqM5EC1XV4F70vU/Ge0sPrbD90uAtiMX1zkoRwq+GvwwF6a6H3TE
 7wlWsn7igLtpi6+St4hMx2AsxmmtVBqSiUsJCaUnoMpjDCHKBZWIQWMlfIqmVbtjUYug
 Rl0nwhN3DZTyFMUp6LtqOVqsT9YYN6sC19XN4vy11RhSPmPNnX3XjWzu3Oto8eq3hWsr
 h+0Vp/wEIc6bycOzxwG7dPM6DZpJj5SF5vZIJi7vOCPjVXHplqb3XWtRDi7IrDY0jXZu
 cez0MNxOfMY2pQRqAq4OH5B2p/V4p5jaPzj0GrNPLX3P8O9KxtlgufY5gVlzmVAXy7WW
 JAWw==
X-Gm-Message-State: APjAAAVkk1ulD4P9rASUmw7eC+RN0VUvRj7gFuvkJkpvcdSsDkZURPUO
 PGAgFn4ogf1fNL5V0nwM1eU=
X-Google-Smtp-Source: APXvYqzh9lA7QzTMNcXB9f8W/fXyhl8ZsJbIZmnPh8abVqtzC8iHmrkSxwMiA782tasG2CDzuGF3rA==
X-Received: by 2002:adf:9022:: with SMTP id h31mr22187951wrh.46.1559060097123; 
 Tue, 28 May 2019 09:14:57 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:56 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 02/12] media: rc: Introduce sunxi_ir_quirks
Date: Tue, 28 May 2019 18:14:30 +0200
Message-Id: <20190528161440.27172-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091459_599415_26702DA8 
X-CRM114-Status: GOOD (  17.74  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBkcml2ZXIgaXMgdXNlZCBpbiB2YXJpb3VzIEFsbHdpbm5lciBTb0Mgd2l0aCBkaWZmZXJl
bnQgY29uZmlndXJhdGlvbi4KCkludHJvZHVjZSBhIHF1aXJrcyBzdHJ1Y3QgdG8ga25vdyB0aGUg
ZmlmbyBzaXplIGFuZCBpZiBhIHJlc2V0IGlzIHJlcXVpcmVkLgoKU2lnbmVkLW9mZi1ieTogQ2zD
qW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL21lZGlhL3Jj
L3N1bnhpLWNpci5jIHwgNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1jaXIuYyBiL2RyaXZlcnMvbWVkaWEvcmMvc3Vu
eGktY2lyLmMKaW5kZXggMzA3ZTQ0NzE0ZWEwLi5kMDJkY2I2ZmQwYTUgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvbWVkaWEvcmMvc3VueGktY2lyLmMKKysrIGIvZHJpdmVycy9tZWRpYS9yYy9zdW54aS1j
aXIuYwpAQCAtODEsNiArODEsMTcgQEAKIC8qIFRpbWUgYWZ0ZXIgd2hpY2ggZGV2aWNlIHN0b3Bz
IHNlbmRpbmcgZGF0YSBpbiBtcyAqLwogI2RlZmluZSBTVU5YSV9JUl9USU1FT1VUICAgICAgMTIw
CiAKKy8qKgorICogc3RydWN0IHN1bnhpX2lyX3F1aXJrcyAtIERpZmZlcmVuY2VzIGJldHdlZW4g
U29DIHZhcmlhbnRzLgorICoKKyAqIEBoYXNfcmVzZXQ6IFNvQyBuZWVkcyByZXNldCBkZWFzc2Vy
dGVkLgorICogQGZpZm9fc2l6ZTogc2l6ZSBvZiB0aGUgZmlmby4KKyAqLworc3RydWN0IHN1bnhp
X2lyX3F1aXJrcyB7CisJYm9vbAkJaGFzX3Jlc2V0OworCWludAkJZmlmb19zaXplOworfTsKKwog
c3RydWN0IHN1bnhpX2lyIHsKIAlzcGlubG9ja190ICAgICAgaXJfbG9jazsKIAlzdHJ1Y3QgcmNf
ZGV2ICAgKnJjOwpAQCAtMTQzLDYgKzE1NCw3IEBAIHN0YXRpYyBpbnQgc3VueGlfaXJfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZw
ZGV2LT5kZXY7CiAJc3RydWN0IGRldmljZV9ub2RlICpkbiA9IGRldi0+b2Zfbm9kZTsKKwljb25z
dCBzdHJ1Y3Qgc3VueGlfaXJfcXVpcmtzICpxdWlya3M7CiAJc3RydWN0IHJlc291cmNlICpyZXM7
CiAJc3RydWN0IHN1bnhpX2lyICppcjsKIAl1MzIgYl9jbGtfZnJlcSA9IFNVTlhJX0lSX0JBU0Vf
Q0xLOwpAQCAtMTUxLDEyICsxNjMsMTUgQEAgc3RhdGljIGludCBzdW54aV9pcl9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCWlmICghaXIpCiAJCXJldHVybiAtRU5PTUVNOwog
CisJcXVpcmtzID0gb2ZfZGV2aWNlX2dldF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOworCWlmIChx
dWlya3MgPT0gTlVMTCkgeworCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJGYWlsZWQgdG8gZGV0ZXJt
aW5lIHRoZSBxdWlya3MgdG8gdXNlXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCiAJc3Bp
bl9sb2NrX2luaXQoJmlyLT5pcl9sb2NrKTsKIAotCWlmIChvZl9kZXZpY2VfaXNfY29tcGF0aWJs
ZShkbiwgImFsbHdpbm5lcixzdW41aS1hMTMtaXIiKSkKLQkJaXItPmZpZm9fc2l6ZSA9IDY0Owot
CWVsc2UKLQkJaXItPmZpZm9fc2l6ZSA9IDE2OworCWlyLT5maWZvX3NpemUgPSBxdWlya3MtPmZp
Zm9fc2l6ZTsKIAogCS8qIENsb2NrICovCiAJaXItPmFwYl9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2
LCAiYXBiIik7CkBAIC0xNzMsMTMgKzE4OCwxNSBAQCBzdGF0aWMgaW50IHN1bnhpX2lyX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJLyogQmFzZSBjbG9jayBmcmVxdWVuY3kg
KG9wdGlvbmFsKSAqLwogCW9mX3Byb3BlcnR5X3JlYWRfdTMyKGRuLCAiY2xvY2stZnJlcXVlbmN5
IiwgJmJfY2xrX2ZyZXEpOwogCi0JLyogUmVzZXQgKG9wdGlvbmFsKSAqLwotCWlyLT5yc3QgPSBk
ZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZShkZXYsIE5VTEwpOwotCWlm
IChJU19FUlIoaXItPnJzdCkpCi0JCXJldHVybiBQVFJfRVJSKGlyLT5yc3QpOwotCXJldCA9IHJl
c2V0X2NvbnRyb2xfZGVhc3NlcnQoaXItPnJzdCk7Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsK
KwkvKiBSZXNldCAqLworCWlmIChxdWlya3MtPmhhc19yZXNldCkgeworCQlpci0+cnN0ID0gZGV2
bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKKwkJaWYgKElTX0VSUihp
ci0+cnN0KSkKKwkJCXJldHVybiBQVFJfRVJSKGlyLT5yc3QpOworCQlyZXQgPSByZXNldF9jb250
cm9sX2RlYXNzZXJ0KGlyLT5yc3QpOworCQlpZiAocmV0KQorCQkJcmV0dXJuIHJldDsKKwl9CiAK
IAlyZXQgPSBjbGtfc2V0X3JhdGUoaXItPmNsaywgYl9jbGtfZnJlcSk7CiAJaWYgKHJldCkgewpA
QCAtMzE2LDEwICszMzMsMjYgQEAgc3RhdGljIGludCBzdW54aV9pcl9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGNvbnN0IHN0cnVj
dCBzdW54aV9pcl9xdWlya3Mgc3VuNGlfYTEwX2lyX3F1aXJrcyA9IHsKKwkuaGFzX3Jlc2V0ID0g
ZmFsc2UsCisJLmZpZm9fc2l6ZSA9IDE2LAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBzdW54
aV9pcl9xdWlya3Mgc3VuNWlfYTEzX2lyX3F1aXJrcyA9IHsKKwkuaGFzX3Jlc2V0ID0gZmFsc2Us
CisJLmZpZm9fc2l6ZSA9IDY0LAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2Vf
aWQgc3VueGlfaXJfbWF0Y2hbXSA9IHsKLQl7IC5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW40
aS1hMTAtaXIiLCB9LAotCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciIs
IH0sCi0Je30sCisJeworCQkuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNGktYTEwLWlyIiwK
KwkJLmRhdGEgPSAmc3VuNGlfYTEwX2lyX3F1aXJrcywKKwl9LAorCXsKKwkJLmNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciIsCisJCS5kYXRhID0gJnN1bjVpX2ExM19pcl9xdWly
a3MsCisJfSwKKwl7fQogfTsKIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHN1bnhpX2lyX21hdGNo
KTsKIAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
