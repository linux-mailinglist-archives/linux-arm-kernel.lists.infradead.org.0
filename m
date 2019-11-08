Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA59BF427B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w33Q+kcOQxPeDsGWSxPbZe8+wYoZFnka0VBkTNIA2w0=; b=CnqWnWV5tKrIGZ
	+qRTch2rgeV0GuR1zTnzD2kBPoctcReH9qB1wT8+oCX9BUaRDSm6YPg6YbOctUev1PCUL06elUetR
	WJBES17dywqO4YxjEPQIntqWL8POzmkk9p4GAondtcHhy/ygflMZ3rGDltfAoqJeqGXO2kThtvPHk
	GPV/257u2G43IlQEEGr8X0d0OPYGY9EWTbaqLiY8DxfNcEmwB3zMi4qiO3aMewrwD5DSzVaflVW50
	tGd2mHLCo4AKGY494UXjuEO9Ccq08EjaAg0AJTDv+blANwgYRMIldeAop3F8QtVpLaQG3HWECSfp9
	JAgwI7YIlCZN4coRwBrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzuY-00069S-Hy; Fri, 08 Nov 2019 08:46:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztb-0005Jt-1i
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id r10so6070960wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q1SErrR/PV8Tu23yQ+QPofy4bJ7Dz3186/De70+A1IY=;
 b=aNtq9XYb7Gu//QxS2dCLqucgCUuU8TBnf5eyiZhT71GJbpm0UqL9w82WhhkQHRVCUq
 NzeDeGxap26Im/l8wl6SakWrh5xds93z+g9ASE1k2qSh8genXmeldFSsKfndoe6J0GLa
 9YX4X1xMRj/oaVMEfFAuDLzD8bzOwtoNnTsSVHN0jLWX761Q9LV/ALME+UskSZQsJR2p
 av7GDVFzwQscc4CFe0oK/T1l1/hG5YUkxmYj+yv/EDylNkzBUM6fn8sIOmcFrFMyMb94
 sP0eRWAcpjkTAhD9xcFBL5MFAolAt0OojTyKlABS9QK5PNQJOd2kUK74iRb3bNNw+ZiW
 TGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q1SErrR/PV8Tu23yQ+QPofy4bJ7Dz3186/De70+A1IY=;
 b=g8Gx8keVpDfWh0JKr+Sit7pCNnDGuTn6rvDBaAMHJqUFCmxXJj+F37qm90fscZlnmW
 QHKI2zhGDBk1rpeuB1J0z30suNJ0hURJqso83VDo4MLdD0WROAPpKB3jQvKtciIHTnu4
 kPoqkWnCSU3JAjB3foIfoylNfltf2A0jbczfCF3O7NnpboT5aTOfGw1jBEOktEGT4yUo
 glyiGdIDRDZxOBMJhBlZqX+L9/K6KjdVSpH1EYGKrAWH/TWWq+uSkzcxekbc0cFeMEIG
 IzHon/A4rnxMC6J24rUeUCgqSVm1xFeMAC//QJTqvim5MSQcT6a2VwJNYtX/yl/Q22n3
 z6ag==
X-Gm-Message-State: APjAAAXJVz72cQoHQWXn1qJrSBuHymRsW8WB7DGFV2otcq6b3fhADoO7
 p87RiikJ3G/KcGoAjeq5kaM=
X-Google-Smtp-Source: APXvYqxd0/kwcmVD9KXQBezV2WMCtP44Hqqg6T96a3Zyb0CObgdqvf/lotqgnPAwLqFub2sJvDK8aw==
X-Received: by 2002:adf:9506:: with SMTP id 6mr7599277wrs.274.1573202728901;
 Fri, 08 Nov 2019 00:45:28 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:28 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 3/7] pwm: sun4i: Add an optional probe for bus clock
Date: Fri,  8 Nov 2019 09:45:13 +0100
Message-Id: <20191108084517.21617-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004531_109156_4AFABD82 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGNv
cmUgbmVlZHMgYnVzIGNsb2NrIHRvIGJlIGVuYWJsZWQgaW4gb3JkZXIgdG8gd29yay4KCkFkZCBh
biBvcHRpb25hbCBwcm9iZSBmb3IgaXQgYW5kIGEgZmFsbGJhY2sgZm9yIHByZXZpb3VzCmJpbmRp
bmdzIHdpdGhvdXQgbmFtZSBvbiBtb2R1bGUgY2xvY2suCgpTaWduZWQtb2ZmLWJ5OiBKZXJuZWog
U2tyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50
IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRp
LmMgfCA0OCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgYi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCAy
YjlhMmE3ODU5MWYuLmExMDAyMmQ2YzBmZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1
bjRpLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKQEAgLTc4LDYgKzc4LDcgQEAgc3Ry
dWN0IHN1bjRpX3B3bV9kYXRhIHsKIAogc3RydWN0IHN1bjRpX3B3bV9jaGlwIHsKIAlzdHJ1Y3Qg
cHdtX2NoaXAgY2hpcDsKKwlzdHJ1Y3QgY2xrICpidXNfY2xrOwogCXN0cnVjdCBjbGsgKmNsazsK
IAlzdHJ1Y3QgcmVzZXRfY29udHJvbCAqcnN0OwogCXZvaWQgX19pb21lbSAqYmFzZTsKQEAgLTM2
Myw5ICszNjQsMzggQEAgc3RhdGljIGludCBzdW40aV9wd21fcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKIAlpZiAoSVNfRVJSKHB3bS0+YmFzZSkpCiAJCXJldHVybiBQVFJfRVJS
KHB3bS0+YmFzZSk7CiAKLQlwd20tPmNsayA9IGRldm1fY2xrX2dldCgmcGRldi0+ZGV2LCBOVUxM
KTsKLQlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkKKwkvKiBHZXQgYWxsIGNsb2NrcyBhbmQgcmVzZXQg
bGluZSAqLworCXB3bS0+Y2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJt
b2QiKTsKKwlpZiAoSVNfRVJSKHB3bS0+Y2xrKSkgeworCQlpZiAoUFRSX0VSUihwd20tPnJzdCkg
IT0gLUVQUk9CRV9ERUZFUikKKwkJCWRldl9lcnIoJnBkZXYtPmRldiwgImdldCBjbG9jayBmYWls
ZWQgJXBlXG4iLAorCQkJCXB3bS0+Y2xrKTsKIAkJcmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOwor
CX0KKworCS8qCisJICogRmFsbGJhY2sgZm9yIG9sZCBkdGJzIHdpdGggYSBzaW5nbGUgY2xvY2sg
YW5kIG5vIG5hbWUuCisJICogSWYgYSBwYXJlbnQgaGFzIGEgY2xvY2stbmFtZSBjYWxsZWQgIm1v
ZCIgd2hlcmVhcyB0aGUKKwkgKiBjdXJyZW50IG5vZGUgaXMgdW5uYW1lZCB0aGUgY2xvY2sgcmVm
ZXJlbmNlIHdpbGwgYmUKKwkgKiBpbmNvcnJlY3RseSBvYnRhaW5lZCBhbmQgd2lsbCBub3QgZ28g
aW50byB0aGlzIGZhbGxiYWNrLgorCSAqLworCWlmICghcHdtLT5jbGspIHsKKwkJcHdtLT5jbGsg
PSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCk7CisJCWlmIChJU19FUlIocHdtLT5jbGsp
KSB7CisJCQlpZiAoUFRSX0VSUihwd20tPnJzdCkgIT0gLUVQUk9CRV9ERUZFUikKKwkJCQlkZXZf
ZXJyKCZwZGV2LT5kZXYsICJnZXQgY2xvY2sgZmFpbGVkICVwZVxuIiwKKwkJCQkJcHdtLT5jbGsp
OworCQkJcmV0dXJuIFBUUl9FUlIocHdtLT5jbGspOworCQl9CisJfQorCisJcHdtLT5idXNfY2xr
ID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsKCZwZGV2LT5kZXYsICJidXMiKTsKKwlpZiAoSVNfRVJS
KHB3bS0+YnVzX2NsaykpIHsKKwkJaWYgKFBUUl9FUlIocHdtLT5yc3QpICE9IC1FUFJPQkVfREVG
RVIpCisJCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJnZXQgYnVzX2Nsb2NrIGZhaWxlZCAlcGVcbiIs
CisJCQkJcHdtLT5idXNfY2xrKTsKKwkJcmV0dXJuIFBUUl9FUlIocHdtLT5idXNfY2xrKTsKKwl9
CiAKIAlwd20tPnJzdCA9IGRldm1fcmVzZXRfY29udHJvbF9nZXRfb3B0aW9uYWxfc2hhcmVkKCZw
ZGV2LT5kZXYsIE5VTEwpOwogCWlmIChJU19FUlIocHdtLT5yc3QpKSB7CkBAIC0zODIsNiArNDEy
LDE3IEBAIHN0YXRpYyBpbnQgc3VuNGlfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCiAJCXJldHVybiByZXQ7CiAJfQogCisJLyoKKwkgKiBXZSdyZSBrZWVwaW5nIHRoZSBi
dXMgY2xvY2sgb24gZm9yIHRoZSBzYWtlIG9mIHNpbXBsaWNpdHkuCisJICogQWN0dWFsbHkgaXQg
b25seSBuZWVkcyB0byBiZSBvbiBmb3IgaGFyZHdhcmUgcmVnaXN0ZXIKKwkgKiBhY2Nlc3Nlcy4K
KwkgKi8KKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUocHdtLT5idXNfY2xrKTsKKwlpZiAocmV0
KSB7CisJCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbm5vdCBwcmVwYXJlIGFuZCBlbmFibGUgYnVz
X2Nsa1xuIik7CisJCWdvdG8gZXJyX2J1czsKKwl9CisKIAlwd20tPmNoaXAuZGV2ID0gJnBkZXYt
PmRldjsKIAlwd20tPmNoaXAub3BzID0gJnN1bjRpX3B3bV9vcHM7CiAJcHdtLT5jaGlwLmJhc2Ug
PSAtMTsKQEAgLTQwMiw2ICs0NDMsOCBAQCBzdGF0aWMgaW50IHN1bjRpX3B3bV9wcm9iZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXJldHVybiAwOwogCiBlcnJfcHdtX2FkZDoKKwlj
bGtfZGlzYWJsZV91bnByZXBhcmUocHdtLT5idXNfY2xrKTsKK2Vycl9idXM6CiAJcmVzZXRfY29u
dHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCiAJcmV0dXJuIHJldDsKQEAgLTQxNiw2ICs0NTksNyBA
QCBzdGF0aWMgaW50IHN1bjRpX3B3bV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHB3
bS0+YnVzX2Nsayk7CiAJcmVzZXRfY29udHJvbF9hc3NlcnQocHdtLT5yc3QpOwogCiAJcmV0dXJu
IDA7Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
