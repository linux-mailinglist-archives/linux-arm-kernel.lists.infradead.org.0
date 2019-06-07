Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C10E399A5
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpGm7uP1Z74Fw2fCp8cpdtI/fIYo6P9eMps8cHuEk5o=; b=EAqg9MOnlEkqZn
	8oe8p6FetypSFi9mOKiMbixsuKr8WNDliSf8TLiVU8jdIc9p4QwiH+qvB4zK5OE58dXQo2gFyKaVD
	SphsBjcYZhHLm/bfGWOAl9nk7CPPOPUoiPJgWzWzyDdh/QrxWv/J6TuasBd3Kh3/tfcZ9kYPWzg7j
	KuY6e3DwZjHXXblPEM5+1fuwGb/WacMGum6fhb27k0lvYba4UhA4DkRt9euaspNhGY0Vk/ZLzZCb7
	H0FfuIuEFaTCEmBRw3hYpXtvgQYrxJLP5fcrJFDLxSxMRzlDSCLHXziuqfs9Hy5z5r0Uzm5T9worG
	SNN/5RHQ05L0zjQWaWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO4q-0004Ya-L2; Fri, 07 Jun 2019 23:15:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO15-000183-Pq
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so3304463wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZFHFRMwqhia+MVch9pKGgEBNeKukD3ZLzLQ+6+PB9fg=;
 b=eiLeaHHak8jYQRZKjm/x1H8ej+KxQ2LjmoNyoxAAGEjakKrI7elSGX0wrr60ZoO5qj
 9HU+8ZIVn3pNJvvh82yUhGxMElRvn7NJ7FPjqlXS7tS+rmnFy7UyH2NsO8qQY2GvvwTA
 +Ks0iEPXlNlJy77jrZZ/TfqHLkhTrrBApCZj5lQzYAP9CfjT9ks1SOToNaHh+UrAgrne
 B9+/uz12mb0rkzFBGXjZ23XnsQ/cnjjPyPzSMzCwKImGOrW4pZz69r0+QX1orVmhFcu8
 dLfDhGHEnCL7q1FgbuP6sJYZnK9iZghCczKyDY70qnQ73o4xwyKnIwdcEF1luofmnTZK
 kKyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZFHFRMwqhia+MVch9pKGgEBNeKukD3ZLzLQ+6+PB9fg=;
 b=mNTKS0qcUKGdtP4Vn9J5sU2WWbyZ6swSPBpMa3HGDaPgx24L+LSELlN1O7dM3uT+F1
 7cdxVeJHvUVENyoAFiijnFpVKjMmWhMOnOjRs0wZxe7/vw02tSF1Fny+rFjd6vnuZk5L
 ceZqDSVJ2o5W0Pj/5hRprS6d2qlrEGq5m6aC73+naOfXyiul/Dj+LMBOCPa86ALEF1sv
 G3JnxSOhVtq00I6BWV575pHdaqKBBWCmR6iJjTEirwM6z9ehx2oMC+BkWVl6mzagzWbS
 Y8mbtIf9k9pJRbEsE9bYblRye7CKk/8HxXdOF87J4wKaqX60Suk/BLUYeRa68+29ZVyQ
 vwnA==
X-Gm-Message-State: APjAAAX6yVsNhVPiUJq5jkICrY/joLaB/F2yI1sCTqz6Ej4tnmnnNBS/
 hwKAjMws9JRQHJm33MCGqvY=
X-Google-Smtp-Source: APXvYqwddSzhdksmvNkBbueAxfPvGpAbf9YR3GwvhZyX9J61/5+7yOtpn8VduLAqIR6fHtcd7KNeQQ==
X-Received: by 2002:a7b:c018:: with SMTP id c24mr3051220wmb.37.1559949082496; 
 Fri, 07 Jun 2019 16:11:22 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:21 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 13/13] arm64: defconfig: Enable IR SUNXI option
Date: Sat,  8 Jun 2019 01:11:00 +0200
Message-Id: <20190607231100.5894-14-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161124_096680_3958A8E8 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

RW5hYmxlIENPTkZJR19JUl9TVU5YSSBvcHRpb24gZm9yIEFSTTY0LCBzbyB0aGF0IEFsbHdpbm5l
ciBBNjQvSDYgU29DcwpjYW4gdXNlIHRoZWlyIElSIHJlY2VpdmVyIGNvbnRyb2xsZXIuCgpTaWdu
ZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgpBY2tlZC1i
eTogU2VhbiBZb3VuZyA8c2VhbkBtZXNzLm9yZz4KLS0tCiBhcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnIGIvYXJjaC9hcm02NC9jb25maWdzL2RlZmNv
bmZpZwppbmRleCA0ZDU4MzUxNDI1OGMuLjUxMjgwMjkxMDBkMiAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9jb25maWdzL2RlZmNvbmZpZworKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVmY29uZmln
CkBAIC00NjAsNiArNDYwLDcgQEAgQ09ORklHX1JDX0NPUkU9bQogQ09ORklHX1JDX0RFQ09ERVJT
PXkKIENPTkZJR19SQ19ERVZJQ0VTPXkKIENPTkZJR19JUl9NRVNPTj1tCitDT05GSUdfSVJfU1VO
WEk9bQogQ09ORklHX01FRElBX1NVUFBPUlQ9bQogQ09ORklHX01FRElBX0NBTUVSQV9TVVBQT1JU
PXkKIENPTkZJR19NRURJQV9BTkFMT0dfVFZfU1VQUE9SVD15Ci0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
