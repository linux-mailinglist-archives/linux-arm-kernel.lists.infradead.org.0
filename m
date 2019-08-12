Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD8789BF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:52:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gp/vcTBmGssKLWMwCfEWhqprCM8Kr6mfvrhCJgd4Js=; b=IWKT6e/X9nL7V9
	qb5ye13YSwKE+NXD2d1MLaa+gV0vPbBdeDkJDqNHQckQuya8OthhD8C/yjGWdG9L7/gnVz3yNioR4
	ufLyKU+NLGjx3ae+iDumCxuOOMrh12RKJdOepJJO0sveEjPo9yZpGZGtxoFu4jpgv7Jezdoz/oedh
	92D8KSYE7CL7APmtbhtZEzBmOb4+lSI7ehphOvLqRqWQHJ/dBVnYDckt2JLPl1cUk62BXqc6MgmsE
	7/e9c01p/sbGgAmW+Blsj4SistFvofty2kWvLvK2/3QIhFMzrz/Szfa7X3Yra1oKcVKjSaFkxG6C2
	qwJjVOPfC5i/RGzkY2VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7w9-0001nR-Tl; Mon, 12 Aug 2019 10:52:26 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7vA-00018Z-Ai
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:51:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so11715851wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s6rx1dKUlrkp8lxrOtRYzLFSZ1b6ZE6siahQ5YOjH0s=;
 b=CVb+eaXo2L4uM0satNH8rv4hAuHEe9s6gMleWULDR7+PiRZ+/xA/4RBmoJJFHmzMSJ
 oaEos42X9x4zneikNH10lWnMVDiOhygtJCpv3ey0JialcqOxLxSNRdFf5e2ycFL8PYtR
 BmXfvwSCFQJMaEm9MpqXVlpC/c/8LxGs4XVArzE1TKKyCi8FUIuL+Ejo2ghmj2bJmSum
 p32NozAwLYo0UFS1xvirot+T+ZkwyZ9b6VV1A2eB9On6byX3Nim95OdqSxfcfkrfv9Ud
 CiuLnj5H6b9TBwIGZSgkkjbp3irr2e3sAyWwPkELtm46aATsDsetsXT2JEQl6+vN/F1d
 9lAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s6rx1dKUlrkp8lxrOtRYzLFSZ1b6ZE6siahQ5YOjH0s=;
 b=i6GuaiEKiG/FV0sYS5RxTXYsqab2C9DGbl9SIrOE4wIHuayoKHOUTGwkiWoMVj6zz+
 YSGWZiyNLSKVFRUkskTB/pvM7nrMlRWJPq8ECZeZueSdgy1VO6mkWrA3PlF/Ph4gDyEY
 k2Ksfw0PwbASwv6sipNdFyVI/X/EGYwfvouR07JQP623p4RJkXjInCBTnChNRIoB90ZS
 cf0HFmNteqN8/qGgckmUaGoj5w1n25npYHrOwK04KDHNZgb5YwTl4yVTeBgeL+ULzUaj
 HD+SOXAKhh3ZyIjsUODm/q/RAfNd0WUXM81xYylE82qpAbfi8ZeRzMDvMvAyEU6yyEXP
 jpYA==
X-Gm-Message-State: APjAAAUxViHjDAR7KvGjEou2a4ZyEvsTNhNZQtmWoebN5HyudD5TyNI6
 zE90SULfJlFRedPI/LA8qFo=
X-Google-Smtp-Source: APXvYqwcypxhte6LRn2hiX6Q6xCU9wrTY4rbDlru9jV6IK9HQW07ieLBEkKsRKPv2UH3pSAPKrFZzQ==
X-Received: by 2002:a05:600c:144:: with SMTP id
 w4mr13375394wmm.94.1565607082842; 
 Mon, 12 Aug 2019 03:51:22 -0700 (PDT)
Received: from localhost.localdomain
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id z8sm22797916wru.13.2019.08.12.03.51.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:51:22 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 2/2] arm64: dts: allwinner: h6: Enable SPDIF for Beelink GS1
Date: Mon, 12 Aug 2019 12:51:15 +0200
Message-Id: <20190812105115.26676-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812105115.26676-1-peron.clem@gmail.com>
References: <20190812105115.26676-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035124_421261_66E4ECC6 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgYm9hcmQgaGFzIGEgU1BESUYgb3V0IGNvbm5lY3Rvciwgc28gZW5hYmxlIGl0
IGluCnRoZSBkZXZpY2UtdHJlZSBhbmQgYWRkIGEgc2ltcGxlIFNQRElGIHNvdW5kY2FyZC4KClNp
Z25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQog
Li4uL2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cyAgIHwgMjIgKysrKysr
KysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEu
ZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3Mx
LmR0cwppbmRleCAwZGMzM2M5MGRkNjAuLjRiZDE0ZjA4NTA3MCAxMDA2NDQKLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3MxLmR0cworKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCkBA
IC01MSw2ICs1MSwyNCBAQAogCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsK
IAkJcmVndWxhdG9yLWFsd2F5cy1vbjsKIAl9OworCisJc291bmQtc3BkaWYgeworCQljb21wYXRp
YmxlID0gInNpbXBsZS1hdWRpby1jYXJkIjsKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsbmFtZSA9ICJz
dW41MGktaDYtc3BkaWYiOworCisJCXNpbXBsZS1hdWRpby1jYXJkLGNwdSB7CisJCQlzb3VuZC1k
YWkgPSA8JnNwZGlmPjsKKwkJfTsKKworCQlzaW1wbGUtYXVkaW8tY2FyZCxjb2RlYyB7CisJCQlz
b3VuZC1kYWkgPSA8JnNwZGlmX291dD47CisJCX07CisJfTsKKworCXNwZGlmX291dDogc3BkaWYt
b3V0IHsKKwkJI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKKwkJY29tcGF0aWJsZSA9ICJsaW51eCxz
cGRpZi1kaXQiOworCX07CiB9OwogCiAmZGUgewpAQCAtMjQzLDYgKzI2MSwxMCBAQAogCXZjYy1w
bS1zdXBwbHkgPSA8JnJlZ19hbGRvMT47CiB9OwogCismc3BkaWYgeworCXN0YXR1cyA9ICJva2F5
IjsKK307CisKICZ1YXJ0MCB7CiAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAlwaW5jdHJs
LTAgPSA8JnVhcnQwX3BoX3BpbnM+OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
