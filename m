Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C19A201C50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=msBScyVcF5IUFMPi1IGUSt2/cRXejbpkdSiQTPlvDF0=; b=JC0ZBCij9Qv/8L
	z2u8T4kGvAIlEG2Hy0wz37BJkdjHUDpDX5QyAaR4r+3YHY2HVU8LsnYfb2R9+5DACzNsNeQys0HPp
	l+icSJ1Gw/Lgy0yseAaIdKSWqu3ctXTCSTLViXTnvrdUxp/B7dzoDxvpBxsGAktWbLdYhqdWt6h2L
	MpP4zGqL2yccihHgGncRkXm2dn7WM205KwCeuhII3wT4U0Wrle59uel2b9toJFFVIMwcMjPaVdYuq
	oBk0fGudvCzS98hxFXkP4UgNvuM41PU/FVkxfsv7ymA4g+A5Wqo88fUTPFRDdzsZwB99mL7GVfnq3
	pXcuoXCW7sAW0KZu3p4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNXX-0002Hw-SA; Fri, 19 Jun 2020 20:23:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNXO-0002HF-Tp
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:23:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id l26so9553860wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jun 2020 13:22:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hxFaea0o1SGC9JsI5lKvQ11H7sjYf5VbZGDMsWd1/OY=;
 b=FKv64FTTbmnRPP98xm6ADc+jG/hyBxajx8kC0tQzM1cIBbiueKSQmTbjhiUrLmX4kz
 t3vFtptb1+V8fCaryHgYK0543c5IzTxOaDOulKc0D2N3ZBrItaw4yIdIABttPk8YnujF
 sH5H3wdot5vrxd6Ec+16PGHBhzIKwLtaiFzVno82AiID0s+QYH8J4fRN++x2GE4dVumN
 qMo5XcEfge7fFtf32dw7jyNPPrmKAMMaHsPD1IZlkLYmlbuaPp5XuRKyFhWcIJu1OkIw
 eNJ0vc2YyypyNzNFww300WAhff4nYV6jfBjRBSWTmK7ClhBtHGliIOLUMVbN6fHZaKdJ
 Hg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hxFaea0o1SGC9JsI5lKvQ11H7sjYf5VbZGDMsWd1/OY=;
 b=Jxk8rVcJgsm84zljnTAOCsaYzFWeY/L/8JJStJo5BRhhl3nuFRe8ekpSv2uWYnq9z7
 IQuHR9Y54BrXD3G2JsCQr0GKtpdPog871AZzsBceZFDKPpvkkrNMvtnG5rJ/Bg9jzDzo
 W52PSWXP4H+kycBKxW5HNxH2NlDeLs2JwIuUZUONF1MiCgJl4VnlgnaeBIZ0nu77Nfhi
 zC1ncuQbezg2Bbgy7NbS5c3dUOUaQYUwlJ2hdgNe212C7bn3UdAHT1pta0GuoJXl+Wj5
 ZAstNbGuvXKUpI24J07kUtikY6Mh7fqDr2qk1hb/XJJxG6X3deH14Ci6Jb8mWQQ07s7r
 qliA==
X-Gm-Message-State: AOAM533E5dfwc3lXc0of6hgLiQHQWzCHclF95ycDpfVywIH1k2A4MIc9
 7gu3rPkgNXMhppj78Tx37cM=
X-Google-Smtp-Source: ABdhPJwS6iIevv1Iwqhve+1m8go6dSe7z4zdpL2Dqm+DaQTO3v/kcVAzQr+SNjdtdJv7EHBueYmqgw==
X-Received: by 2002:a1c:a505:: with SMTP id o5mr5455284wme.143.1592598176736; 
 Fri, 19 Jun 2020 13:22:56 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id e5sm6109224wrs.33.2020.06.19.13.22.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 13:22:55 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: soc@kernel.org
Subject: [GIT PULL 1/3] Broadcom devicetree fixes for 5.8
Date: Fri, 19 Jun 2020 13:22:48 -0700
Message-Id: <20200619202250.19029-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_132258_980844_841D54FA 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Matthew Hagan <mnhagan88@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, arnd@arndb.de, khilman@kernel.org,
 olof@lixom.net, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBiM2E5ZTNiOTYyMmFlMTAwNjQ4MjZk
Y2NiNGY3YTUyYmQ4OGM3NDA3OgoKICBMaW51eCA1LjgtcmMxICgyMDIwLTA2LTE0IDEyOjQ1OjA0
IC0wNzAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGh0dHBz
Oi8vZ2l0aHViLmNvbS9Ccm9hZGNvbS9zdGJsaW51eC5naXQgdGFncy9hcm0tc29jL2Zvci01Ljgv
ZGV2aWNldHJlZS1maXhlcwoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGFjNGUxMDZk
ODkzNGE1ODk0ODExZmMyNjNmNGIwM2ZjOGVkMGZiN2E6CgogIEFSTTogZHRzOiBOU1A6IENvcnJl
Y3QgRkEyIG1haWxib3ggbm9kZSAoMjAyMC0wNi0xNyAxMzo0MDo0MiAtMDcwMCkKCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
VGhpcyBwdWxsIHJlcXVlc3QgY29udGFpbnMgQnJvYWRjb20gQVJNLWJhc2VkIFNvQ3MgRGV2aWNl
IFRyZWUgZml4ZXMgZm9yCjUuOCwgcGxlYXNlIHB1bGwgdGhlIGZvbGxvd2luZzoKCi0gUmFmYWwg
YWRkcyBhIG1pc3NpbmcgJ2RldmljZV90eXBlJyBwcm9wZXJ0eSB0byB0aGUgTHV4dWwgWFdDLTIw
MDAKICByZXF1aXJlZCBmb3IgdGhlIG1lbW9yeSBub2RlcyB0byBiZSBjb3JyZWN0bHkgcGFyc2Vk
IGJ5IExpbnV4CgotIE1hdHRoZXcgcHJvdmlkZXMgdHdvIGZpeGVzIGZvciB0aGUgTlNQIFNvQ3Ms
IG9uZSB0byBkaXNhYmxlIHRoZSBQTDMzMAogIERNQSBjb250cm9sbGVyIGJ5IGRlZmF1bHQgc2lu
Y2UgaXQgY2FuIGJlIGxlZnQgaW4gcmVzZXQgYnkgdGhlCiAgYm9vdGxvYWRlciBhbmQgdGhlIHNl
Y29uZCB0byBjb3JyZWN0IHRoZSBmbG93IGFjY2VsZXJhdG9yIG1haWxib3ggbm9kZQoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQpNYXR0aGV3IEhhZ2FuICgyKToKICAgICAgQVJNOiBkdHM6IE5TUDogRGlzYWJsZSBQTDMzMCBi
eSBkZWZhdWx0LCBhZGQgZG1hLWNvaGVyZW50IHByb3BlcnR5CiAgICAgIEFSTTogZHRzOiBOU1A6
IENvcnJlY3QgRkEyIG1haWxib3ggbm9kZQoKUmFmYcWCIE1pxYJlY2tpICgxKToKICAgICAgQVJN
OiBkdHM6IEJDTTUzMDFYOiBBZGQgbWlzc2luZyBtZW1vcnkgImRldmljZV90eXBlIiBmb3IgTHV4
dWwgWFdDLTIwMDAKCiBhcmNoL2FybS9ib290L2R0cy9iY20tbnNwLmR0c2kgICAgICAgICAgICAg
ICAgfCAxMCArKysrKystLS0tCiBhcmNoL2FybS9ib290L2R0cy9iY200NzA5NC1sdXh1bC14d2Mt
MjAwMC5kdHMgfCAgMSArCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg1MjJlci5kdHMgICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg1MjVlci5kdHMgICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg1MjV4bWMuZHRzICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg2MjJoci5kdHMgICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg2MjNoci5kdHMgICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg2MjVoci5kdHMgICAgICAg
ICAgICAgfCAgNCArKysrCiBhcmNoL2FybS9ib290L2R0cy9iY205NTg2MjVrLmR0cyAgICAgICAg
ICAgICAgfCAgNCArKysrCiA5IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
