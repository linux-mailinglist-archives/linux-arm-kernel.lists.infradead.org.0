Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F8541B0C32
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXhP4Jn6k6EydzxP4q3dRGJ/jHrad9khODBzZVDy+O4=; b=LehcAr33qVwiO4
	vWiA1xdCx8FOyKPDAuNvuhspebkkwEky/iq2GAKe3yKsPJINKbkLdvpANP3VKEq8tKS00CrNPY1pj
	S7iOSPW4JX2hQ4gYjkozT6V2b01m+wpH6lqSrUQ3i7C36fZ1TD9on0kLBp9DXkdo2TIX4FOhEPDPX
	KX/2gst9q2qGdCAWJShQABiqWm3CbphhB0wtUcqZZslQdXAgkBnTwdnFVkMMuWzGUzKmtreAm8E0T
	vlD49vl9vn2tffa6OQHnZP7AwQyyz6w2esuI0hSUXW7C34EUeXb12DT0M7/adid0YwipLaLayLIgy
	ZFH6pjsYlzkzLhrkW6JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW4N-00059a-QI; Mon, 20 Apr 2020 13:02:39 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2M-0003Kt-Sa
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id g13so10000943wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TvYBwY55hequdKKDkallbXJKwj0FSX4Wpx+56e8/UBw=;
 b=GnXkTyDbvZRKI8WVoNn4do0UB6uQi+ZtA94YaGKj9Z/hY5pSM4ES1lXadFriyRw2Lx
 wIKOLwoshEWRDKtqPSK20K+hCLHyZzGxns74voSg+Puxt9Su+vNTS9XbPthBG1dAXMLQ
 kAeKaCnpy8nql22EJ6UYL4flzQSdYemUPBEKjbQrvru/x/Wx4MnBpSpI6S9KdsnCsIa8
 NYt3HG48Sj43gn1+JEAm1qQyEeceT/cvknLniANReReC4SO9K3CK80isBKHbVtQM1vpZ
 qZhGphZWuLD6Vls9vULGh6oOYmMhfisBbuUWWL9bHSJIhEKh1urWzq9zokVwjGAJOea2
 5QSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TvYBwY55hequdKKDkallbXJKwj0FSX4Wpx+56e8/UBw=;
 b=VgVVOfmcezlK4+M/E9uFNTNBST+fkD0gBRDsYzX0EMKX3FPcYU+DDmSIGfWvPW0CJc
 rfynk8LP1hX1yruvNTf9tVOVc9lRo0coyH+FJPNgc8KNNRrxDg4kqDJTYCk7ti6jL39X
 +4rsD8S5SfMBifujLXvkrnNdw7Ov1BEjRxVgRY80vQb6RD564nDPT2P56C+OT/iUuQ4u
 RUj/iiEEGVzemOyQhTBA7FjYWowuLROYDMEZ+Iz6b+Jvpm2M8uY2pBhgga1a22TFZfIB
 xm7cf3VAyrRqC4yxgr+mS1gjgFGIF3Af4Z0G9uGzkEIxHfyEiT6fl7kyl81kaJ+J6QJy
 258g==
X-Gm-Message-State: AGi0PuYRAjNZ8kJGGSzaJ3ChWUDAsjSSehBAp5nH4tIIDn5nsKMNO1jU
 b109yxQMQqJlsHXo2I7RiklzZp9AgPs=
X-Google-Smtp-Source: APiQypJ5ZUEms1wCuIanJt/09BahkVB30m2MeRUZLi5l35DB2zDFZG50WibZ+69q77JuebIRo2jEdw==
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr19898775wru.326.1587387633625; 
 Mon, 20 Apr 2020 06:00:33 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:32 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 8/9] arm64: dts: allwinner: Sort Pine H64 device-tree nodes
Date: Mon, 20 Apr 2020 15:00:20 +0200
Message-Id: <20200420130021.3841-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060034_941035_B7FB60F1 
X-CRM114-Status: GOOD (  12.25  )
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
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UGluZSBINjQgZGV2aWNlLXRyZWUgaGF2ZSBzb21lIG5vZGVzIG5vdCBwcm9wZXJseSBzb3J0ZWQu
CgpGaXggdGhpcy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBn
bWFpbC5jb20+Ci0tLQogLi4uL2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQu
ZHRzIHwgMzQgKysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlv
bnMoKyksIDE3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi1waW5lLWg2NC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2Fs
bHdpbm5lci9zdW41MGktaDYtcGluZS1oNjQuZHRzCmluZGV4IGIwNjQyZDg0MTkzMy4uNjNhNzg1
YjUzNGUxIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYtcGluZS1oNjQuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1waW5lLWg2NC5kdHMKQEAgLTgwLDYgKzgwLDE4IEBACiAJfTsKIH07CiAKKyZkZSB7CisJ
c3RhdHVzID0gIm9rYXkiOworfTsKKworJmVoY2kwIHsKKwlzdGF0dXMgPSAib2theSI7Cit9Owor
CismZWhjaTMgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZlbWFjIHsKIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmZXh0X3JnbWlpX3BpbnM+OwpAQCAtOTEs
MTcgKzEwMyw2IEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAotJm1kaW8gewotCWV4dF9yZ21p
aV9waHk6IGV0aGVybmV0LXBoeUAxIHsKLQkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVl
ZTgwMi4zLWMyMiI7Ci0JCXJlZyA9IDwxPjsKLQl9OwotfTsKLQotJmRlIHsKLQlzdGF0dXMgPSAi
b2theSI7Ci19OwotCiAmZ3B1IHsKIAltYWxpLXN1cHBseSA9IDwmcmVnX2RjZGNjPjsKIAlzdGF0
dXMgPSAib2theSI7CkBAIC0xMTcsMTIgKzExOCwxMSBAQAogCX07CiB9OwogCi0mZWhjaTAgewot
CXN0YXR1cyA9ICJva2F5IjsKLX07Ci0KLSZlaGNpMyB7Ci0Jc3RhdHVzID0gIm9rYXkiOworJm1k
aW8geworCWV4dF9yZ21paV9waHk6IGV0aGVybmV0LXBoeUAxIHsKKwkJY29tcGF0aWJsZSA9ICJl
dGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7CisJCXJlZyA9IDwxPjsKKwl9OwogfTsKIAogJm1t
YzAgewotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
