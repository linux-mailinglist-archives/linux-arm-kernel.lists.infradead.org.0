Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E9D105AC3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 20:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyPcV17ezYzwVApU/Ph63LBjRilUUGKNAWSWQ6sLkCw=; b=rKsRPLstQl1ahF
	DReHXwVr12DsAG+sVmHYq3vd6EeDnZfXHfRCCtAG4dpGDzfM1/oThxl3G7IbyKT4y0Kka8Efzxsax
	P+DtMrKZk6+lO8RS5m+fCT0Rsmd8rcjq7SrMvg+ZI6MuRYHJq7iVyapBSo8F3VUYUfMPaxoXqTzTe
	eAY3tWekaCqXUt+dG5BHpjBxqVXOoegQHKnYiImbQO4qN8YJzPGxypoSFK9xWHdzyR3OZS3C5QnRM
	d/xs6xdamLsswV0USOZWgzEQowOLMbOVzc55bve2d2QzJ/t06GvD5Rd60YqFIaEZPtPPTo+73MeWQ
	EJMqmuGF9dNgdYgHwsWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXscE-0001Px-HW; Thu, 21 Nov 2019 19:59:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXsbg-0001BI-RX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 19:59:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so2849222wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 11:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=d1zEMak1xtoZs9HRUvVQmECvIPE9sMll9E3I8uD6vEY=;
 b=IHIkZ1iMAslXuQa9H6ec1tcB+APZC/mftNboSepSSuA1bZGI69+J2TikU/ppi2RecT
 BsFECPsNTTJjOGQ7/IFkKpPiCVMlZhrS9hm/Y9pTEjMMGCeY+yJcB8/SQ3Pq8wV/vpS2
 nKVpfa4gnWP+xnMOuDa4bhatfR6gb+5Qy6p3NjnR2ce03IwXghyYi387pjGydjBVD3jJ
 2hVivdERTdBNOO515CQDxmcdUE5BFc6irrfs788rmPP061erfnt5FmgrWpXCw1wtoxsZ
 9jJ7s1jfFLkl/WWgNLb1EHxt6O+ZqJgllFasSMGzQp/qDR8kWly2N5wQFj7BNcZJpAGn
 rjNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d1zEMak1xtoZs9HRUvVQmECvIPE9sMll9E3I8uD6vEY=;
 b=nMA4XMU7qcT9fYqr3hqiPTbi7xrmsTTBqEMHP+EkB0Kw+71593OcQzRmF4zNkCfzuZ
 lkrLex8FfO+nrwKqNqZQXzKv4SWH4bqVyGJdXlRuSqeKDZI3WKkCZuW5gGaNrfqY2TJC
 ckTDTWEjtX5Dccl+H/4qyI8JiEGLvRo8hAPqM4SlEptumACaxNpQsfMekQq4thmnXicL
 K9Tzb7v65n7MWvotDWSH7I6npg7BsfnfHGZ5D92KtSph3gW3ptUdfgKIpd0SsJV5BYaw
 D0smUftpV9mZ3WaZ3fJbFRkRt5vaotMR2FTW45+I08iMDSr7RZaUUj8/xgx9lYPNGJEl
 wwVQ==
X-Gm-Message-State: APjAAAWcB1eEjM+ntiHNCuFNAaRjJ7xyGDKMuC+dsFKIBphtdgArS5Um
 UyIUPPNx5zp4X2oeXXKPryCgGUGUKao=
X-Google-Smtp-Source: APXvYqz3/DrvPeGZASwJbOfOFh0A4mf6YmcVG2Pe73Pe8o9p/hgI3xVzx2ESvMpQrzIhkFA224jtOA==
X-Received: by 2002:a5d:5308:: with SMTP id e8mr5680748wrv.77.1574366351196;
 Thu, 21 Nov 2019 11:59:11 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id l4sm747124wme.4.2019.11.21.11.59.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 11:59:09 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v8 1/6] pwm: sun4i: Add an optional probe for reset line
Date: Thu, 21 Nov 2019 20:58:57 +0100
Message-Id: <20191121195902.6906-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191121195902.6906-1-peron.clem@gmail.com>
References: <20191121195902.6906-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_115912_936641_248E7CA8 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgZGVhc3NlcnRlZCByZXNldCBsaW5lIGluIG9yZGVyIHRvIHdvcmsuCgpBZGQgYW4g
b3B0aW9uYWwgcHJvYmUgZm9yIGl0LgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGpl
cm5lai5za3JhYmVjQHNpb2wubmV0PgpSZXZpZXdlZC1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOp
cm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8
IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAz
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdt
L3B3bS1zdW40aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggNTgxZDIzMjg3MzMz
Li5lMzUzYTAzZWM2MTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBi
L2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCkBAIC0xNiw2ICsxNiw3IEBACiAjaW5jbHVkZSA8bGlu
dXgvb2ZfZGV2aWNlLmg+CiAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+CiAjaW5j
bHVkZSA8bGludXgvcHdtLmg+CisjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KICNpbmNsdWRlIDxs
aW51eC9zbGFiLmg+CiAjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KICNpbmNsdWRlIDxsaW51
eC90aW1lLmg+CkBAIC03OCw2ICs3OSw3IEBAIHN0cnVjdCBzdW40aV9wd21fZGF0YSB7CiBzdHJ1
Y3Qgc3VuNGlfcHdtX2NoaXAgewogCXN0cnVjdCBwd21fY2hpcCBjaGlwOwogCXN0cnVjdCBjbGsg
KmNsazsKKwlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsK
IAlzcGlubG9ja190IGN0cmxfbG9jazsKIAljb25zdCBzdHJ1Y3Qgc3VuNGlfcHdtX2RhdGEgKmRh
dGE7CkBAIC0zNjQsNiArMzY2LDIyIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJaWYgKElTX0VSUihwd20tPmNsaykpCiAJCXJldHVy
biBQVFJfRVJSKHB3bS0+Y2xrKTsKIAorCXB3bS0+cnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dl
dF9vcHRpb25hbF9zaGFyZWQoJnBkZXYtPmRldiwgTlVMTCk7CisJaWYgKElTX0VSUihwd20tPnJz
dCkpIHsKKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVGRVIpCisJCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJnZXQgcmVzZXQgZmFpbGVkICVwZVxuIiwKKwkJCQlwd20tPnJzdCk7
CisJCXJldHVybiBQVFJfRVJSKHB3bS0+cnN0KTsKKwl9CisKKwkvKiBEZWFzc2VydCByZXNldCAq
LworCXJldCA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocHdtLT5yc3QpOworCWlmIChyZXQpIHsK
KwkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2Fubm90IGRlYXNzZXJ0IHJlc2V0IGNvbnRyb2w6ICVk
XG4iLAorCQkJcmV0KTsKKwkJcmV0dXJuIHJldDsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBk
ZXYtPmRldjsKIAlwd20tPmNoaXAub3BzID0gJnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJh
c2UgPSAtMTsKQEAgLTM3NiwxOSArMzk0LDMxIEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJcmV0ID0gcHdtY2hpcF9hZGQoJnB3bS0+
Y2hpcCk7CiAJaWYgKHJldCA8IDApIHsKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZmFpbGVkIHRv
IGFkZCBQV00gY2hpcDogJWRcbiIsIHJldCk7Ci0JCXJldHVybiByZXQ7CisJCWdvdG8gZXJyX3B3
bV9hZGQ7CiAJfQogCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgcHdtKTsKIAogCXJldHVy
biAwOworCitlcnJfcHdtX2FkZDoKKwlyZXNldF9jb250cm9sX2Fzc2VydChwd20tPnJzdCk7CisK
KwlyZXR1cm4gcmV0OwogfQogCiBzdGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBs
YXRmb3JtX2RldmljZSAqcGRldikKIHsKIAlzdHJ1Y3Qgc3VuNGlfcHdtX2NoaXAgKnB3bSA9IHBs
YXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOworCWludCByZXQ7CisKKwlyZXQgPSBwd21jaGlwX3Jl
bW92ZSgmcHdtLT5jaGlwKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCisJcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCi0JcmV0dXJuIHB3bWNoaXBfcmVtb3ZlKCZwd20tPmNo
aXApOworCXJldHVybiAwOwogfQogCiBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzdW40
aV9wd21fZHJpdmVyID0gewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
