Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1541FA96F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 09:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j2G7+E8rglsIMzT21TcaD/++U5REKhz15Hg9CAcNJQE=; b=mvp1vUsS1xrmrK
	luclMx30fJhizv3JeNj1Sr3aUFhuFl8e8QcikzqPTbUuiKCH24NNSsNVxITU3G+KnDK4WoQgCPYAH
	rJc+iPNm3+24xCrNVkl03l1me6TXXL0vgum3bcc5VoCs5Tw4QTy4Y4LNpUlkDbvwy7rhcNY+eHpfO
	ZJHZ44RYsgDPLrlls23sn7xoDVlLAkmNYZ6s9OZ71iZkGiSQ1d4YXBXaeooSIhlQDHWHTOV4CuCYk
	GqO0kH6PoMIcgEeZlSjsbhI/XblZZYrwionKzwX5Qt5xpQig7WATfTtkvJ/Y6H1z3ugOKEMCD325X
	lZYByoTkqvK4WoV8J7xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl5cX-0008M3-3t; Tue, 16 Jun 2020 07:02:57 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl5c5-0008CG-Ea
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 07:02:30 +0000
Received: by mail-wr1-x443.google.com with SMTP id l10so19502559wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 00:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UD0BzEH0M8YZp//omQOWTqvshKj+X7/NNaB98DCZXBo=;
 b=kBXcv5RyDkAUziAF8On2RRAtLdxkf+PQ7mctnBuYI1ulgkFh/EmWKQjx53fhn0ldHk
 LesW1oDVYJTh6OGiYAqOI3xOXkPU27Z04FpPBJVhWOSs1dGMO40bH7OhT2KvUzLngmZT
 WEIC3zlK6d5Ht8onBNAN+EaApUSuDyovAyFRZHsp6dAqISO3b+n4ekdEH2wZ/0fuBHo8
 ekvuEpK1L5M+cWd2smMn81pC2K1+gAXCOkRSw8wpQoH6hNbVDo/FPlZ0Q0ivpVgrnmJk
 2+OXaDk/mfKfWzPLnEY+UhXm/0El39dLT1CnYwnZ9j91NSdklJKxe/nUeJVuQJvdT64U
 Y0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UD0BzEH0M8YZp//omQOWTqvshKj+X7/NNaB98DCZXBo=;
 b=tVwwiwNE5HxvlIDBixfLSgODVUwBRAz2d97+p4Mn8+j/IwffX6qgbz8nkMkS7Uh28b
 GgonU39zbIkgyYIDZ+9ii9Ut/e2sn9iMxw95mwr3rBZNg6arQtbgZBAg+kSWpHDz3KIo
 KQ5RkaLHWpy/P281F3Y6LZJOdihEr57d33TPMyJp4bRwGpFAZJLGpy3IjJyFePJhYHjs
 U+kDVg6LCjbJx7qP48IdLoEqD9VYD0JasFOwujJN7tlpKDugPXit7P7vxLBKE4Y+3eVc
 sq0EIZUNcUYW0wLQ1mjVrHvcVgZr7zxg86RDRNlnhxHpvefVnpTkxTHij1/dgjgIZW+7
 h7GQ==
X-Gm-Message-State: AOAM532ARriPlTyaTQiPFqvM6k8rLeFON1axojmWta+/SUqETerd5Fhi
 5UrI2JegijPMCHjYNjWpo3c=
X-Google-Smtp-Source: ABdhPJxJocaEAJDjXYgrdusUF1X6ahSw5QoOUewPSOXVR9vtcDbBiuhLEL6qn82QSv28cJKE+g2//Q==
X-Received: by 2002:adf:fc0c:: with SMTP id i12mr1403233wrr.365.1592290947713; 
 Tue, 16 Jun 2020 00:02:27 -0700 (PDT)
Received: from skynet.lan (90.red-88-20-62.staticip.rima-tde.net.
 [88.20.62.90])
 by smtp.gmail.com with ESMTPSA id a81sm2792897wmd.25.2020.06.16.00.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jun 2020 00:02:27 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/4] spi: bcm63xx-spi: add reset support
Date: Tue, 16 Jun 2020 09:02:20 +0200
Message-Id: <20200616070223.3401282-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616070223.3401282-1-noltari@gmail.com>
References: <20200616070223.3401282-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_000229_514892_75533EC1 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgU1BJIGNvbnRyb2xsZXIgYXQgZWFybHkgYm9vdC4gSG93
ZXZlciwgYm1pcHMgYXJjaApuZWVkcyB0byBwZXJmb3JtIGEgcmVzZXQgd2hlbiBwcm9iaW5nIHRo
ZSBkcml2ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRh
cmlAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogUGhpbGlwcCBaYWJlbCA8cC56YWJlbEBwZW5ndXRy
b25peC5kZT4KLS0tCiB2MzogdXNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfZXhj
bHVzaXZlCiB2MjogdXNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlCgogZHJpdmVy
cy9zcGkvc3BpLWJjbTYzeHguYyB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4
LmMgYi9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCmluZGV4IDBmMWIxMGE0ZWYwYy4uOTJlODg5
MDExODljIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCisrKyBiL2RyaXZl
cnMvc3BpL3NwaS1iY202M3h4LmMKQEAgLTE4LDYgKzE4LDcgQEAKICNpbmNsdWRlIDxsaW51eC9l
cnIuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+CiAjaW5jbHVkZSA8bGludXgvb2Yu
aD4KKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgogCiAvKiBCQ00gNjMzOC82MzQ4IFNQSSBjb3Jl
ICovCiAjZGVmaW5lIFNQSV82MzQ4X1JTRVRfU0laRQkJNjQKQEAgLTQ5Myw2ICs0OTQsNyBAQCBz
dGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJc3RydWN0IGJjbTYzeHhfc3BpICpiczsKIAlpbnQgcmV0OwogCXUzMiBudW1fY3MgPSBCQ002
M1hYX1NQSV9NQVhfQ1M7CisJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJlc2V0OwogCiAJaWYgKGRl
di0+b2Zfbm9kZSkgewogCQljb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKQEAgLTUy
OSw2ICs1MzEsMTUgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gUFRSX0VSUihjbGspOwogCX0KIAorCXJlc2V0ID0g
ZGV2bV9yZXNldF9jb250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKKwlp
ZiAoSVNfRVJSKHJlc2V0KSkgeworCQlyZXQgPSBQVFJfRVJSKHJlc2V0KTsKKwkJaWYgKHJldCAh
PSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycihkZXYsCisJCQkJImZhaWxlZCB0byBnZXQgcmVz
ZXQgY29udHJvbGxlcjogJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCiAJbWFzdGVy
ID0gc3BpX2FsbG9jX21hc3RlcihkZXYsIHNpemVvZigqYnMpKTsKIAlpZiAoIW1hc3Rlcikgewog
CQlkZXZfZXJyKGRldiwgIm91dCBvZiBtZW1vcnlcbiIpOwpAQCAtNTc5LDYgKzU5MCwxMiBAQCBz
dGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYp
CiAJaWYgKHJldCkKIAkJZ290byBvdXRfZXJyOwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNl
dChyZXNldCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBk
ZXZpY2U6ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9jbGtfZGlzYWJsZTsKKwl9CisKIAliY21f
c3BpX3dyaXRlYihicywgU1BJX0lOVFJfQ0xFQVJfQUxMLCBTUElfSU5UX1NUQVRVUyk7CiAKIAkv
KiByZWdpc3RlciBhbmQgd2UgYXJlIGRvbmUgKi8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
