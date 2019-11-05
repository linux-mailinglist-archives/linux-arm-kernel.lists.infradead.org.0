Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91084EFE2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:15:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Kt4SXqUz/yKzdx7X2tC3M2q0f1uey1S1/8lfG4+l4Y=; b=nI9OpaKN+9Fsaq
	LZ8y+vOLkYLBynd7ogxb0gByrxuDWcjA7hIqrs52u4MZ0YC396HIXw89Aiew0pPUuzDV+3BYwnGpb
	w4JXn6ch4TyH5ffyt5I3JdV1e59uJ7JQk6aKnbCIqBEt40kGNdJOR96a0xX65OpiW4OiIHz9ruELG
	luFwwF9SEYaPZOj0Drb+nCozxTy2akHUFaexau72mt2aQ3KH0f0AbE7+ITqay6WH8KqdIZztMoGI9
	lefGhChyIvGNonr7A6J7oloQSOi+8Et84IR672nNqz58bll9HGFpq0EdLbdF3fStF2BeQVgi7uTx3
	E5NA3QasC8IeQMA45WYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRygX-0002uP-AA; Tue, 05 Nov 2019 13:15:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfo-0001K6-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id m17so11588666wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DFpznEDpNoqbmapZynyzmsx8KHYXXRH6cqD0i8XMxAs=;
 b=f3YD4Ug76oHoUiN2crsPXDr3EPqby4+c3lsOUMycDhYNq/6o4SNBSto4xo+qsJAwx3
 Zol/D6WTEF5MjdbCemPv4t29kj/WxcDBW7dtegaY7sCh7B2DYPqbQmm2uAAdA9PolHl3
 IgiUuJwwNkd8xpU9S2QQxN3hvuI3AbpYvrvZuZ7c6Aa8wedCqkA+lC+CfUeGCSNw4e17
 y69oRLohtZEtA5pIeBk/9WtzIaf2S0VMULc9fc+xCancs6LArLYHor6ZihYeQ3JfzkOr
 U6j3UZE8HlOxHVyMNtm8UqiUgLWd6k6oMeiy7UtLOlcSaPVbWB+ijzW8qfAAh5aIrImD
 rCng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DFpznEDpNoqbmapZynyzmsx8KHYXXRH6cqD0i8XMxAs=;
 b=YqktOouq1vh2x0vYeuYE2s9Z8OM1FoRX/qZiG37U97NvVrKQmXoM8xWdJ4LFD5nsqF
 v11/qGOKzZd2tOhyqjVQyksFbUx/74W7JBr0PPWSc62dP4+EMWlgwFynuRSZdE/47aSx
 4gy7vptA2XlJ1R5j71bOl7IeOwlA38uwY0BnSo/I+teWGd3eWrm4GVaNJp0u9jsqlhb6
 wY7PBXunsgQrc3efIc6PVDxcvgRETyNrRYU3J0ueZYVDei7cSV3F9fnwAuJ5Wiws6b/l
 9b8Xoyd2RF0epou+x6r1c3XClUgFBxmW913RBaXRKkjSrvmn4g1KLp5I/p7GKg8oKt0H
 1Akw==
X-Gm-Message-State: APjAAAWDBB6VSXqNv3ll6i9nLqYJHzLVaFgKfANLwPWTZMUy3PPIBiUA
 8idInG2S1hwm+8FFaHJ/oC4=
X-Google-Smtp-Source: APXvYqyytLo0hQuO6sVxwOrnNs0IMG5xvWjRMfkyUlPHv/0jVyEk1u++gI1pakSzxaECVGMTFnJaFA==
X-Received: by 2002:a7b:c632:: with SMTP id p18mr4219706wmk.73.1572959702668; 
 Tue, 05 Nov 2019 05:15:02 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:02 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 2/7] pwm: sun4i: Add an optional probe for reset line
Date: Tue,  5 Nov 2019 14:14:51 +0100
Message-Id: <20191105131456.32400-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051504_348923_2C4AA555 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBl
cm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGRyaXZlcnMvcHdtL3B3bS1zdW40aS5jIHwgMzMgKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3B3bS9wd20tc3Vu
NGkuYyBiL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCmluZGV4IDZmNTg0MGExYTgyZC4uOWJhODM3
NjlhNDc4IDEwMDY0NAotLS0gYS9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYworKysgYi9kcml2ZXJz
L3B3bS9wd20tc3VuNGkuYwpAQCAtMTYsNiArMTYsNyBAQAogI2luY2x1ZGUgPGxpbnV4L29mX2Rl
dmljZS5oPgogI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgogI2luY2x1ZGUgPGxp
bnV4L3B3bS5oPgorI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+CiAjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgogI2luY2x1ZGUgPGxpbnV4L3NwaW5sb2NrLmg+CiAjaW5jbHVkZSA8bGludXgvdGltZS5o
PgpAQCAtNzgsNiArNzksNyBAQCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgewogc3RydWN0IHN1bjRp
X3B3bV9jaGlwIHsKIAlzdHJ1Y3QgcHdtX2NoaXAgY2hpcDsKIAlzdHJ1Y3QgY2xrICpjbGs7CisJ
c3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKIAl2b2lkIF9faW9tZW0gKmJhc2U7CiAJc3Bpbmxv
Y2tfdCBjdHJsX2xvY2s7CiAJY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhICpkYXRhOwpAQCAt
MzY1LDYgKzM2NywyMSBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCWlmIChJU19FUlIocHdtLT5jbGspKQogCQlyZXR1cm4gUFRSX0VS
Uihwd20tPmNsayk7CiAKKwlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9u
YWxfc2hhcmVkKCZwZGV2LT5kZXYsIE5VTEwpOworCWlmIChJU19FUlIocHdtLT5yc3QpKSB7CisJ
CWlmIChQVFJfRVJSKHB3bS0+cnN0KSAhPSAtRVBST0JFX0RFRkVSKQorCQkJZGV2X2VycigmcGRl
di0+ZGV2LCAiZ2V0IHJlc2V0IGZhaWxlZCAlbGRcbiIsCisJCQkJUFRSX0VSUihwd20tPnJzdCkp
OworCQlyZXR1cm4gUFRSX0VSUihwd20tPnJzdCk7CisJfQorCisJLyogRGVhc3NlcnQgcmVzZXQg
Ki8KKwlyZXQgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHB3bS0+cnN0KTsKKwlpZiAocmV0KSB7
CisJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbm5vdCBkZWFzc2VydCByZXNldCBjb250cm9sXG4i
KTsKKwkJcmV0dXJuIHJldDsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBkZXYtPmRldjsKIAlw
d20tPmNoaXAub3BzID0gJnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJhc2UgPSAtMTsKQEAg
LTM3NywxOSArMzk0LDMxIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0ID0gcHdtY2hpcF9hZGQoJnB3bS0+Y2hpcCk7CiAJaWYg
KHJldCA8IDApIHsKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRvIGFkZCBQV00gY2hp
cDogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gZXJyX3B3bV9hZGQ7CiAJfQog
CiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcHdtKTsKIAogCXJldHVybiAwOworCitlcnJf
cHdtX2FkZDoKKwlyZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CisKKwlyZXR1cm4gcmV0
OwogfQogCiBzdGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKIHsKIAlzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnB3bSA9IHBsYXRmb3JtX2dldF9k
cnZkYXRhKHBkZXYpOworCWludCByZXQ7CisKKwlyZXQgPSBwd21jaGlwX3JlbW92ZSgmcHdtLT5j
aGlwKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJcmVzZXRfY29udHJvbF9hc3NlcnQo
cHdtLT5yc3QpOwogCi0JcmV0dXJuIHB3bWNoaXBfcmVtb3ZlKCZwd20tPmNoaXApOworCXJldHVy
biAwOwogfQogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzdW40aV9wd21fZHJpdmVy
ID0gewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
