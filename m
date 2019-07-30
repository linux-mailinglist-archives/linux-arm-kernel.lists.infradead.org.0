Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D957AC29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 17:20:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b24qhe/348P+NU5Q6Dy8aGdJVd81kzmdnERalTzZCfY=; b=ItXeqR82Yo6hUa
	O9N/mAxu+pL+sHgHyBCgZYh+bzQ8Ms3pZdLPqWGJTih7dzuyA2WmNTxR+lKtVZfnnYITbsEIB7a/V
	D21kq/txbacQ6FEOOKz85E/lU5I28xizZIvGk7x77cKGU/G3wCu9oguYahDWfIvvUcdPqcC9SgcZH
	fn9h3ZavDVIY7mvCrL3i7e6dYX044bIcNeAzD5ANF/hZAKNX3TpX2snRQ2mCCS00bsT/E6t3sSagn
	Iv948mNyHuDSfemMdweSbghJX0VWf5va0cyrhRFoMA5gE+UoeNrst8T6nBweINHVj1UTWqvJn1jy4
	vKztJyFEYZKCb7nk1JMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTvY-00079Z-Gz; Tue, 30 Jul 2019 15:20:36 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTvO-00079A-1m
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 15:20:27 +0000
Received: by mail-lj1-x241.google.com with SMTP id z28so8232996ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 08:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Bm8TrbVGw472rHZ96Q2MRXayJlnL67ZSjInVLj2+c0=;
 b=jnDSm1kThBj9/KTO+yzj/l4jRVeijOOMciJDemA7qx5oWy2BpzWea2X6F5jthNRmCw
 hfSr2Qo5grf2ao4WI/Rv/6+JTx8Lp2t8YQx1HHN4CC4S9uuRVtlR2o7K9LcnXvuZEkSw
 ec1Ra6Ri4dsy/dQyYDxBu/SQQy1IvuJ5YSJ3iiW0rRp2izDyYu/4SYd/rAXB1yQcv7ct
 KV1w1w6hnwy/LLNozmJxpZK29XuUCZbPtjkCgyfhrcrZfvjz4pREBM71j9UO/xGx0rzO
 dZBHBS0BHiPTLjCzdPBdV3ZJfizcSx3il5IcKCZLDwkvQXjY19CQe0JDNTqtdDwr3wUo
 wkFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7Bm8TrbVGw472rHZ96Q2MRXayJlnL67ZSjInVLj2+c0=;
 b=jEwt5rf267S+GprUOarU7d1yv7KIXjnrnpfFAvQvnb/7RbUGHrdIrLKc/Yigo+bkti
 y2u3IGSrPF9fRCUkXAm0pmiGGUW9y5mdRaUfO1Oirvi+wlqHg/+K8oR9vQ8kNM+1+AWy
 EcwQgzycz6LW4Ltf684O9SvZ+6KwubREM273DjluOqxY8hPV9brTXfaROMQmaw93Ll4g
 FnyO2AQGhEFVsNOR2foCinwNb/RoyTcRhValYqH6PXiyKhRHCCDoZbAva8L2U2B22MIz
 aSYYzeZ1//QtDDVB3jVq95vaeqzISBU8zdG5vhJ6arjFif2vj6MSmCy/4otjU1yChyg7
 SoMg==
X-Gm-Message-State: APjAAAVb3x3X8AhF/4AVqOhry1ukBES4Hk0p+MnM4RRDYOW3J01h5Ex2
 O6fbcYjAmRwoeQ4tMpcor9rkoQ==
X-Google-Smtp-Source: APXvYqw8cNQwIuVo3MyhmOP8pwoiYmj+MEq273fNs7PYTrH2vLKbLF+Kndi+zZObbX2ZtiI8cgVutg==
X-Received: by 2002:a2e:65ca:: with SMTP id e71mr1547102ljf.61.1564500024139; 
 Tue, 30 Jul 2019 08:20:24 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id q17sm11266522lfn.71.2019.07.30.08.20.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 08:20:23 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: will@kernel.org,
	joro@8bytes.org
Subject: [PATCH v2] iommu: arm-smmu-v3: Mark expected switch fall-through
Date: Tue, 30 Jul 2019 17:20:11 +0200
Message-Id: <20190730152012.2615-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_082026_117058_FAA7BE55 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Anders Roxell <anders.roxell@linaro.org>, iommu@lists.linux-foundation.org,
 robin.murphy@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Tm93IHRoYXQgLVdpbXBsaWNpdC1mYWxsdGhyb3VnaCBpcyBwYXNzZWQgdG8gR0NDIGJ5IGRlZmF1
bHQsIHRoZQpmb2xsb3dpbmcgd2FybmluZyBzaG93cyB1cDoKCi4uL2RyaXZlcnMvaW9tbXUvYXJt
LXNtbXUtdjMuYzogSW4gZnVuY3Rpb24g4oCYYXJtX3NtbXVfd3JpdGVfc3RydGFiX2VudOKAmToK
Li4vZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jOjExODk6Nzogd2FybmluZzogdGhpcyBzdGF0
ZW1lbnQgbWF5IGZhbGwKIHRocm91Z2ggWy1XaW1wbGljaXQtZmFsbHRocm91Z2g9XQogICAgaWYg
KGRpc2FibGVfYnlwYXNzKQogICAgICAgXgouLi9kcml2ZXJzL2lvbW11L2FybS1zbW11LXYzLmM6
MTE5MTozOiBub3RlOiBoZXJlCiAgIGRlZmF1bHQ6CiAgIF5+fn5+fn4KClJld29yayBzbyB0aGF0
IHRoZSBjb21waWxlciBkb2Vzbid0IHdhcm4gYWJvdXQgZmFsbC10aHJvdWdoLiBNYWtlIGl0CmNs
ZWFyZXIgYnkgY2FsbGluZyAnQlVHX09OKCknIHdoZW4gZGlzYWJsZV9ieXBhc3MgaXMgc2V0LCBh
bmQgYWx3YXlzCidicmVhazsnCgpTaWduZWQtb2ZmLWJ5OiBBbmRlcnMgUm94ZWxsIDxhbmRlcnMu
cm94ZWxsQGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jIHwgNCAr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUtdjMuYyBiL2RyaXZlcnMvaW9tbXUvYXJt
LXNtbXUtdjMuYwppbmRleCBhOWE5ZmFiZDM5NjguLmM1YzkzZTQ4YjRkYiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9pb21tdS9hcm0tc21tdS12My5jCisrKyBiL2RyaXZlcnMvaW9tbXUvYXJtLXNtbXUt
djMuYwpAQCAtMTE4Niw4ICsxMTg2LDggQEAgc3RhdGljIHZvaWQgYXJtX3NtbXVfd3JpdGVfc3Ry
dGFiX2VudChzdHJ1Y3QgYXJtX3NtbXVfbWFzdGVyICptYXN0ZXIsIHUzMiBzaWQsCiAJCQlzdGVf
bGl2ZSA9IHRydWU7CiAJCQlicmVhazsKIAkJY2FzZSBTVFJUQUJfU1RFXzBfQ0ZHX0FCT1JUOgot
CQkJaWYgKGRpc2FibGVfYnlwYXNzKQotCQkJCWJyZWFrOworCQkJQlVHX09OKCFkaXNhYmxlX2J5
cGFzcyk7CisJCQlicmVhazsKIAkJZGVmYXVsdDoKIAkJCUJVRygpOyAvKiBTVEUgY29ycnVwdGlv
biAqLwogCQl9Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
