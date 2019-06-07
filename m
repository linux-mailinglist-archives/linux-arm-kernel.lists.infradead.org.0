Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9268F399A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:15:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9w5sqCiSjtHkkNwK5TMofaW4TLXqARuCL5/OStMTqM=; b=aJ2HSqKIa2mWZv
	J6425WFSQHEWnanlZSpyCxlE6c+KSyDwu5SAnXggTaAMUy23WpRDkriiHEWHyuCmGheZOh6KhHGAg
	Apim0khb+aqRsG8RA3B79hQxoddD39aUhQEYMDifKu3x+iXKefyh3a1wHMehSrEsTJYts9wORcQaf
	NJrB9rt6MtmBEOlKZohWsFOZZqPRex+S7LanN+U9UwpyHv56IjSDcDDoga9d/KN5QiyIe3oiKAx/U
	ln5k1heWX2WCXBMGQ2FypYKMoh9P0QgYIVPTcursqFC5RY303ZK3Zn77/C6kauf1nYEfjw1Qq2ng+
	8ydmndhIWDwSirBKHnTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO4Y-00048K-DI; Fri, 07 Jun 2019 23:14:58 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO14-00017C-OI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so5017776wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=ahFwOO/zCB7KOdKWJkSz8CtMTvqrKkophCTnEGGeQ3xtTYARUUadbs7ZImeIqQKw8D
 eysDByIUFGrTW6+i5dMZI8Vo1N8mgfKsXFoEIu056VxfQD89aO3IxbFgKHSjYvwYKJjm
 Dowd90UptEAKFpPe22Q7DaEst3SS4OW+1vdbtAWWBLQPeME6eDRwauspq0o1c29s/JpL
 DV5RtsXt6vWGRJmbUPdFm9DUVV3zA/TjZg7IW+Q38Zfo9Iier2NQgIoYf9S/3KIYymFZ
 7gqQGRg9SUXxueVQ/nbYQJHXwblNY79IZV/66Z/70fbYH7Xu1X5q+AvVh6kOeKcDmV6m
 CZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=nZ5t1gr0jXrByVrke55Y0uVWFmPMasrf6vn9V119Ek6lZsta5oIefAIgPM4lys8mrv
 JUsFqv4i3g5Q3jVlFef1+NqKifgZ7vCkS97R9mZUfcbNDj2fhvA683pTcXYEaKxBm8qr
 hPMM/UC5rH6KittOHHZd+TTJZgLpGyTCdk3ZiBDh7oNI//Td4QcHIcuoEFWSk2cEZkCU
 3fuvIlen8X9mSVDrhqEpF5zBFXZE4Y2WqowzsoCOIAqjd79Vdbjqo8Bjr12qRsbIm/Rk
 NF0DrwFDTxVJS0IU1zLKiZ56KAK17MpKBDg1PGJQxR5BO3finqg5NzrxHJY5K8HvnJUx
 opYg==
X-Gm-Message-State: APjAAAXoKPQ3xi7A1YMXd5MS4eWR/zPmLvY38bLugaHQdGxeXJnpDYyi
 RJqYU8m9+JIlzhmrsAvyNN+CEOIsT4k=
X-Google-Smtp-Source: APXvYqz5cDn7B2m4gq6V884tmFOzN3LBGdwFpLdbmiMpU4EIhb2xdLK3DyIN3eLohT14DTmzY2Ds7g==
X-Received: by 2002:a05:600c:2507:: with SMTP id
 d7mr5078640wma.2.1559949081423; 
 Fri, 07 Jun 2019 16:11:21 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:20 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 12/13] arm64: dts: allwinner: h6: Enable IR on H6 boards
Date: Sat,  8 Jun 2019 01:10:59 +0200
Message-Id: <20190607231100.5894-13-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161123_043987_BCD99E93 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEsIE9yYW5nZVBpIEg2IGJvYXJkcyBhbmQgUGluZSBINjQgaGF2ZSBhbiBJUiBy
ZWNlaXZlci4KCkVuYWJsZSBpdCBpbiB0aGVpciBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyB8IDQgKysrKwogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kgICB8IDQg
KysrKwogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0
cyAgICB8IDQgKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCgpkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3Mx
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMKaW5kZXggMGRjMzNjOTBkZDYwLi42ODBkYzI5Y2IwODkgMTAwNjQ0Ci0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMKKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cwpA
QCAtMjMyLDYgKzIzMiwxMCBAQAogCX07CiB9OwogCismcl9pciB7CisJc3RhdHVzID0gIm9rYXki
OworfTsKKwogJnJfcGlvIHsKIAkvKgogCSAqIFBMMCBhbmQgUEwxIGFyZSB1c2VkIGZvciBQTUlD
IEkyQwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
b3JhbmdlcGkuZHRzaQppbmRleCA2MmUyNzk0OGEzZmEuLmVjOWI2YTU3OGUzZiAxMDA2NDQKLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0c2kK
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LW9yYW5nZXBpLmR0
c2kKQEAgLTE4OSw2ICsxODksMTAgQEAKIAl9OwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJv
a2F5IjsKK307CisKICZ1YXJ0MCB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5j
dHJsLTAgPSA8JnVhcnQwX3BoX3BpbnM+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMKaW5kZXggNDgwMjkwMmUxMjhmLi5hZTEy
ZWU0ZmNjNzcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1waW5lLWg2NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LXBpbmUtaDY0LmR0cwpAQCAtMjQ3LDYgKzI0NywxMCBAQAogCX07CiB9OwogCismcl9p
ciB7CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJnVhcnQwIHsKIAlwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmdWFydDBfcGhfcGlucz47Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
