Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707F91F933A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GMnxM9UM1UKaLCS8uI2gpPPollAy0k/7zyd1tr77fE=; b=e9RoLiQSfuJumn
	pFCT1RvhitaY1Vdgg+JKEwJRC7jrv74b8E4MQJU6Ta8l2OpV/S+nFp2pKKRTUr2b9mO0t/NB3llSL
	GPfQ8x+KENxFXBDp17t85OeyKrKtlbr6hSt3f9Zx5l2/usz1tQ3kEVIWloyOERw8uRqlQX177h5YH
	EEzYC/cFyt0rhrVYFYaa3h4kfFHAzztYX+nTSy3X/U+0hfgWBgvuQoRj8tPeh4CHLoMnd7JlEMedP
	wCqs7VeLwHtlGpSTm8d5+rTaJ4Yi8xRVZp1qGoNW00SFLZOccd20iMNKVuEoIDQrQ9j/BDViQTzFI
	2lf4hbEbK+bc7n6E5/rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklK5-0007l4-L4; Mon, 15 Jun 2020 09:22:33 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7l-0006qT-Sn
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:10:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id d128so14010029wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OR0nfmLMMmSCxHE1VSyFIHoRf43UAMOwWvzgX8Ue40s=;
 b=fb/uGGcqz2JqdS8hP7EbdWBdkEtZo+LduWSmJY4nm8p5GMGLRxR2QI3q8qrZ0YEoGC
 +Dj1nwtS/Rub1+UED2c9n5vZqs1w6GuYSlqYgujtHtWQ+pGhx335o9PZd6yqX4wOEn2Q
 22P9vS7X1d7SGFUrc3RDgZyu40wljofv1mbvakxKX5uLamsLR0+z6YCr6nqXMr6zC/GP
 21SzFQO+YC8xFavJL0zRA+C7wzOrwOmeGFnzz3l4uZKq+2PvHxJ0tWqr+vE2Gg6vLKcR
 2neqJcQ3papU9nAVd7lEb4DO1SpwxXeAYbtyvFofSLIFavDbRNi9dcCfzHGITc8wVfVA
 mk9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OR0nfmLMMmSCxHE1VSyFIHoRf43UAMOwWvzgX8Ue40s=;
 b=md68jp6C/uF3lqLrorB7ma2LlUP7MsivUSbgs5nlJRUuaqRADSXYgN4sdhpDgD4erU
 iGjBYJivblIY2ChCNOXxvHplni4mjRFlf+sZusF+LKwolBSbUtylkR8jKonQRNyTk0QW
 kWSevGbvAsEL8sm5Ju5TRWFEQllTB2fs4cIyxUpJznyywRbhjo0jlVwiM066eEzGDLYl
 6wMWyOI09f7KOIwuTWx5Z4YBL0mlTXqeFRkMV6OFRmXYt9jKwV49px6tj0Q8La6I8yOp
 rXXoKodZ24zPpz4QeNcDVs3318eFyex5pdw+0MsXH6huErqFdwNUJdqhNFzMZG+4aNf/
 ydlA==
X-Gm-Message-State: AOAM530by65YVyra2RXTo9Fg3d0e1f2JXsJtLEBOyt7lBq2BpTUMfQvu
 QLv/uJUB/SvToNjn6iRZ/1PgkBAXfmfKDQ==
X-Google-Smtp-Source: ABdhPJw2zXcH4A8SO6eyjbtXwJhxo0qyi/290h8tJRwaAVkZtprf7P5eHNUGltZznlI97KF55bELww==
X-Received: by 2002:a1c:f608:: with SMTP id w8mr11762885wmc.78.1592212188418; 
 Mon, 15 Jun 2020 02:09:48 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z7sm23109370wrt.6.2020.06.15.02.09.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:48 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/4] spi: bcm63xx-hsspi: add reset support
Date: Mon, 15 Jun 2020 11:09:42 +0200
Message-Id: <20200615090943.2936839-4-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020950_034269_F0E7277B 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

YmNtNjN4eCBhcmNoIHJlc2V0cyB0aGUgSFNTUEkgY29udHJvbGxlciBhdCBlYXJseSBib290LiBI
b3dldmVyLCBibWlwcyBhcmNoCm5lZWRzIHRvIHBlcmZvcm0gYSByZXNldCB3aGVuIHByb2Jpbmcg
dGhlIGRyaXZlci4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9s
dGFyaUBnbWFpbC5jb20+ClJldmlld2VkLWJ5OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1
dHJvbml4LmRlPgotLS0KIHYyOiB1c2UgZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUK
CiBkcml2ZXJzL3NwaS9zcGktYmNtNjN4eC1oc3NwaS5jIHwgMTcgKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
cGkvc3BpLWJjbTYzeHgtaHNzcGkuYyBiL2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LWhzc3BpLmMK
aW5kZXggNmMyMzUzMDZjMGU0Li5hMjBhMGI4OGMyM2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Bp
L3NwaS1iY202M3h4LWhzc3BpLmMKKysrIGIvZHJpdmVycy9zcGkvc3BpLWJjbTYzeHgtaHNzcGku
YwpAQCAtMjAsNiArMjAsNyBAQAogI2luY2x1ZGUgPGxpbnV4L3NwaS9zcGkuaD4KICNpbmNsdWRl
IDxsaW51eC9tdXRleC5oPgogI2luY2x1ZGUgPGxpbnV4L29mLmg+CisjaW5jbHVkZSA8bGludXgv
cmVzZXQuaD4KIAogI2RlZmluZSBIU1NQSV9HTE9CQUxfQ1RSTF9SRUcJCQkweDAKICNkZWZpbmUg
R0xPQkFMX0NUUkxfQ1NfUE9MQVJJVFlfU0hJRlQJCTAKQEAgLTMzNCw2ICszMzUsNyBAQCBzdGF0
aWMgaW50IGJjbTYzeHhfaHNzcGlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikK
IAlzdHJ1Y3QgY2xrICpjbGssICpwbGxfY2xrID0gTlVMTDsKIAlpbnQgaXJxLCByZXQ7CiAJdTMy
IHJlZywgcmF0ZSwgbnVtX2NzID0gSFNTUElfU1BJX01BWF9DUzsKKwlzdHJ1Y3QgcmVzZXRfY29u
dHJvbCAqcmVzZXQ7CiAKIAlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIDApOwogCWlmIChp
cnEgPCAwKQpAQCAtMzQ4LDEwICszNTAsMjUgQEAgc3RhdGljIGludCBiY202M3h4X2hzc3BpX3By
b2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihjbGspKQogCQly
ZXR1cm4gUFRSX0VSUihjbGspOwogCisJcmVzZXQgPSBkZXZtX3Jlc2V0X2NvbnRyb2xfZ2V0X2V4
Y2x1c2l2ZShkZXYsIE5VTEwpOworCWlmIChJU19FUlIocmVzZXQpKSB7CisJCXJldCA9IFBUUl9F
UlIocmVzZXQpOworCQlpZiAocmV0ICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZfZXJyKGRldiwK
KwkJCQkiZmFpbGVkIHRvIGdldCByZXNldCBjb250cm9sbGVyOiAlZFxuIiwgcmV0KTsKKwkJcmV0
dXJuIHJldDsKKwl9CisKIAlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoY2xrKTsKIAlpZiAocmV0
KQogCQlyZXR1cm4gcmV0OwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChyZXNldCk7CisJ
aWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBkZXZpY2U6ICVkXG4i
LCByZXQpOworCQlnb3RvIG91dF9kaXNhYmxlX2NsazsKKwl9CisKIAlyYXRlID0gY2xrX2dldF9y
YXRlKGNsayk7CiAJaWYgKCFyYXRlKSB7CiAJCXBsbF9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAi
cGxsIik7Ci0tIAoyLjI3LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
