Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 903A72AC95
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 00:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N9w5sqCiSjtHkkNwK5TMofaW4TLXqARuCL5/OStMTqM=; b=jdd0owDwVowriJ
	czkQj5dxRHyQeWumLdt9Q1101VkkRJ1PYpDoA/KZgnkY0s8U3X+fUSjfb2esnNbpiP7ZROWNoIa6Z
	wVtLNekOmonOnpak5PM03N7w0LJYZ9r22ObsSv9Yj1ZmjrWG20I0o0+eoRewIOkd7j2PlLRKJX0X1
	qvODfNave3SzAnC7l9O73If37sX7BDQT9zCGsADJzxrxcs2iUYWfv6FuPUGA3mskRvgZWBcZNJSqm
	EUzp+W65zMfnJZVg2EPOvsJZfqL9WWaQXFblw3Lei/xszdcpcToSmYCjyH1HnpnZYaQkb7nRBEHOm
	HpM4qSBPj4oscYbl+9HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV1cJ-00060l-VY; Sun, 26 May 2019 22:27:47 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1aV-0003nT-1a
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 22:25:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id 15so13930284wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 15:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=vAPJYNIgJbg379x5TSG1UjdT8jbZpl4hvt21vzKGAjZJEvX/UJix9FBFG7hjmFhzy4
 za/2ff4UluXZZxfPhzoxKWemEWXzv1PFVnX1aVc1T5RGYLH4TwEV56cE9cT7Ufth1mXi
 fAl3w3sCU+zz2VVSaIYQQjWozvEiMKFkukqb5DKWk8I2ohzlBo4wrnh1nNnqee4UIUXc
 KIDlXY+a0J4HR3GMMXKSv1nTV9qD3Wpo+/vgwcNeVVxJLj5DnHLODnv8OutEdud+ISrB
 Q62+GJ09cDr91x5MOsD0T2l6RLhawzGUmfdnYfnThqmzwPzaFLcAVyRd1XE3KeOzzVLQ
 dzVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R6G/HHE3Lw7PsZVrg7cAYjp5rZiFrvQ8UHmrA7ixhEk=;
 b=tAdCcKRxCWsRhGI+ar2hB61ybvt839fk4gm0aMwcetXttlBiXQtWpTuJXoykaNfgHD
 zjx0b3lTT/FDOpPPCxRmP/RktTBv2tDnrdd+Zxy47ug+g4bkkfKcv0cDqmbO9Ha4UtIc
 0FUUrdvBmsw4VzDC+e94thSGZSUNKZu0wYJn5YondmstclyOUDKEjsk90OpTGIxw/U45
 FrcWMp/Jyg9GfwP/e5sqV15sCOnqwocUO3LBka/IEJUdB/oE7apsI1WyYAnk3mHE/gYW
 MOa35qvidY35xN7wszbM0RGyfwbxCBJTy5qScmdUx+AMX1lUiY7PV+eKITkvXLUwQWEP
 NpSQ==
X-Gm-Message-State: APjAAAWu0ypbWsjb2gw65C9gJiynbDh4DtxNhivveTpkWXd/azEMIOdu
 cDduIzuBo9bba6fm4QcmM8c=
X-Google-Smtp-Source: APXvYqwKDaZc9r4kJO6lse9EMVISrv3fmUs9dX0gWrCzsdIlT+3R6I2IjzVSJxdAXiChfzLxDrB1mw==
X-Received: by 2002:a1c:cb05:: with SMTP id b5mr7808670wmg.146.1558909553540; 
 Sun, 26 May 2019 15:25:53 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id o20sm10368398wro.2.2019.05.26.15.25.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 15:25:52 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 09/10] arm64: dts: allwinner: h6: Enable IR on H6 boards
Date: Mon, 27 May 2019 00:25:35 +0200
Message-Id: <20190526222536.10917-10-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190526222536.10917-1-peron.clem@gmail.com>
References: <20190526222536.10917-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_152555_292910_4F69EE4E 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
