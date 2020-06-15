Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08D21F933C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:23:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6JoOeo7YFb5vFArMb9enC9fbbybd0pEaO9/ASXE9pno=; b=AhHU0Bow63z2kL
	8tJp9RU90Hg/Uokm7s617QAjSRanVBskKc+DD4RGWq/i68KHtdfjRuDV92F6WdG6j8/E0L1ni1vjy
	50fEnxvzMxJBWukGdG9kGBwl1GembHCL6bBgWAmyEKd7Z/g4oe+gqmXzoMYQFo7Cw90nsOBPfUDc/
	KvRFk0Dt0/lfOZ580RDj2FBeCa+YDw3DSgOC0hcjLNo66Kf+t3ImK5urF6LxHYxPsLn/klxYSkG47
	ziLoRIzlTCNiEF528RZta81cozi6miT2qlMcgeNJ9+n3zvokkp/gUPnEXk4wXEUzG3ojMG+XqwvBA
	S9l7oHUIErHhy7FYB31Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklKS-00083z-3S; Mon, 15 Jun 2020 09:22:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkl7k-0006oj-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:10:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id l11so16271260wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EGL86Qz5KZIGBnwhew12v7obohA0kfmvJqpoIN9EEW0=;
 b=WAITJgDqa0Mr7UmDLieRkhFeaNDM9RdGqzkQpg98dTByQbQxHhO5GDAqLi80x9KJ+M
 8p2rXz3Tm6hca7m3KvCaRveud0ZdI99dv0dnTZp+M7ym4okpqcxFSiO3zTWK7AZ100d3
 AEFlhuZoPoFYezAz+mJ3CYt0owAKCVldxHlEaSQBmg1digtZeRrtKWCq9WL3G1yvfXCg
 2F7O8gbgGni7yMjVBLPJBtHD7TALfGZ1inkLi/eNWIHJPLzis2nmHdHLgtn1K0bRW957
 xq7ED0NOs286aiZbPXtXGQfneohcyCj7ndbYxmTyWS7ebZuZBuigwCI8gHlsm1x4ZH4c
 onMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EGL86Qz5KZIGBnwhew12v7obohA0kfmvJqpoIN9EEW0=;
 b=QM0QaiQdH7bbVheh2xuu3AGpbALBOyauSH4ANR9cvzDZ8pg2SidflX3ETDefJZ8DjW
 lwMQuOfdbfc3IXXyjIhVh4U0bZtZ/jT23O/kqPrDD2T61LapardkU3D/EmDwX23YWJdQ
 VqmdjRXhMeoDFsO3El+cGPQnTw0pYcw4iLLnRqJhvELplvrAIl43pNvthkTo7HGK6R5c
 LXildiMhaU+7otj0dV8TyEbtFMHnauY+qcJWnhvr+Caz+dpXptauxUqU5smjzDhnWp/o
 MKmSLWtQ5BzTgqbBABd413IJWeUpsXgJvo8a38B4nGCw9sJPISb5usHQVjmpxvdFlnQL
 q6Cw==
X-Gm-Message-State: AOAM531QANEDZ0vw7L+V1GW0NiqErDPyA80e8AYQnBhJ7XcSrKcMBHbE
 4JBey4DV1mun2xL5bs7Eg90=
X-Google-Smtp-Source: ABdhPJwAVPLr37ywS95nBZNXVIXRJAnp7bp4NU7qrBz3bY36OnVE2Cz4rNmTo3yebYctmdTHnl5eyQ==
X-Received: by 2002:adf:ee47:: with SMTP id w7mr27142264wro.171.1592212186603; 
 Mon, 15 Jun 2020 02:09:46 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id z7sm23109370wrt.6.2020.06.15.02.09.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:09:46 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: broonie@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, p.zabel@pengutronix.de,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] spi: bcm63xx-spi: add reset support
Date: Mon, 15 Jun 2020 11:09:40 +0200
Message-Id: <20200615090943.2936839-2-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615090943.2936839-1-noltari@gmail.com>
References: <20200615080309.2897694-1-noltari@gmail.com>
 <20200615090943.2936839-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_020948_687522_3AD5F08E 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
b25peC5kZT4KLS0tCiB2MjogdXNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlCgog
ZHJpdmVycy9zcGkvc3BpLWJjbTYzeHguYyB8IDE3ICsrKysrKysrKysrKysrKysrCiAxIGZpbGUg
Y2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1i
Y202M3h4LmMgYi9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCmluZGV4IDBmMWIxMGE0ZWYwYy4u
OGFiMDRhZmZhZjdiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktYmNtNjN4eC5jCisrKyBi
L2RyaXZlcnMvc3BpL3NwaS1iY202M3h4LmMKQEAgLTE4LDYgKzE4LDcgQEAKICNpbmNsdWRlIDxs
aW51eC9lcnIuaD4KICNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+CiAjaW5jbHVkZSA8bGlu
dXgvb2YuaD4KKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgogCiAvKiBCQ00gNjMzOC82MzQ4IFNQ
SSBjb3JlICovCiAjZGVmaW5lIFNQSV82MzQ4X1JTRVRfU0laRQkJNjQKQEAgLTQ5Myw2ICs0OTQs
NyBAQCBzdGF0aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJc3RydWN0IGJjbTYzeHhfc3BpICpiczsKIAlpbnQgcmV0OwogCXUzMiBudW1fY3Mg
PSBCQ002M1hYX1NQSV9NQVhfQ1M7CisJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJlc2V0OwogCiAJ
aWYgKGRldi0+b2Zfbm9kZSkgewogCQljb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsK
QEAgLTUyOSw2ICs1MzEsMTUgQEAgc3RhdGljIGludCBiY202M3h4X3NwaV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlyZXR1cm4gUFRSX0VSUihjbGspOwogCX0KIAorCXJl
c2V0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2LCBOVUxMKTsKKwlpZiAo
SVNfRVJSKHJlc2V0KSkgeworCQlyZXQgPSBQVFJfRVJSKHJlc2V0KTsKKwkJaWYgKHJldCAhPSAt
RVBST0JFX0RFRkVSKQorCQkJZGV2X2VycihkZXYsCisJCQkJImZhaWxlZCB0byBnZXQgcmVzZXQg
Y29udHJvbGxlcjogJWRcbiIsIHJldCk7CisJCXJldHVybiByZXQ7CisJfQorCiAJbWFzdGVyID0g
c3BpX2FsbG9jX21hc3RlcihkZXYsIHNpemVvZigqYnMpKTsKIAlpZiAoIW1hc3RlcikgewogCQlk
ZXZfZXJyKGRldiwgIm91dCBvZiBtZW1vcnlcbiIpOwpAQCAtNTc5LDYgKzU5MCwxMiBAQCBzdGF0
aWMgaW50IGJjbTYzeHhfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
aWYgKHJldCkKIAkJZ290byBvdXRfZXJyOwogCisJcmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChy
ZXNldCk7CisJaWYgKHJldCkgeworCQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byByZXNldCBkZXZp
Y2U6ICVkXG4iLCByZXQpOworCQlnb3RvIG91dF9jbGtfZGlzYWJsZTsKKwl9CisKIAliY21fc3Bp
X3dyaXRlYihicywgU1BJX0lOVFJfQ0xFQVJfQUxMLCBTUElfSU5UX1NUQVRVUyk7CiAKIAkvKiBy
ZWdpc3RlciBhbmQgd2UgYXJlIGRvbmUgKi8KLS0gCjIuMjcuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
