Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189B21B0C1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 15:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XL6hIC0PaPBiSPcIUgxVYLsnYcfG9P/2exz2cNAlFY=; b=KG69aodyxHQ064
	Xk9HC2/r6psp98YF8Gz74xU2EJK4EoEPlt37XLd0WdIygLE1iCXYyvC7YWkeMZwpAB5inIbld42Bq
	O4Ye2Yuc+IkvRJKI6xqvMdeJnEVL/VORMUqbXyVJHXMBIG8658vCTW2seud4hzspLcLeIRMBjM0TJ
	g00npFnHv2G/jUzFbeV5twld1QT+Yg69hQ9n4rowFMVuGfu+m+sozLNu2RASClsCZIfoeJCsBUx+0
	D3w/HgvWGU4o9yA75Y8eE5e29dixo3jQJzdex818qxWvDtld90RIpOuVw8xAuaV9peBGBHX1xGPEq
	D0fZgbJ33BZ+8uoKou3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW34-0003jv-Qm; Mon, 20 Apr 2020 13:01:18 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW2G-0003Fr-EQ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 13:00:31 +0000
Received: by mail-wr1-x442.google.com with SMTP id u13so12048374wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 06:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n/ha8QAQ1qR8D+PPkPVAqbB8YM+gWp3JsCHNoS/IoFE=;
 b=cdmJShbdbv82snqqRJomqiBvxdAUZ5Dgvi2EJyoCE/1WCLFZy6YL7WImfQT+eQ35tS
 G1xfbV1Z6craGQsmgwNz3LzTtTcBpOH+CP0I6w9OnQ46ZkL3wEuBjx9cnrG0Vs1cIvE9
 QH79Ix04mcncOVF1Ca4m+vq+NPfGLLqtqUDivqk8sr5EQN60KI1XM4FqKspSe60KZ9gT
 Izd7wcY2kUleAe3vIMu3J/3SztQBW6M9IeZtdTbfsLb55beajAbyrIbr6BoOo/w74+5M
 ifP7ArfTRBmyxzdVODVybKmAin3a7tPqLXiC1cqsGXnml7vYLS9KGgcKFQpFjBN67gA7
 LDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n/ha8QAQ1qR8D+PPkPVAqbB8YM+gWp3JsCHNoS/IoFE=;
 b=J4ZRf+VUZd2H77ahzRte9c1FFy381SdmLUga4azLce7kPkq8chCgvEG4Nd12FLVzR8
 gr4VfTRHqUjOVA5dpb9HowLiEmY6tRN8+PE+iGy+ZnislQHSjWieLXFeJjZnWSfjtBfS
 t8RbkrQdRNkPQEzEZulL2+WaTrNAZ27L/pvSDBFuo0c0Dh2OyzfEqgWxWlEejkf9Gocs
 RwWwfD7Wv3cedomWo4BKfpps/ErI3dz5iHe8JsRwDTuv8R4kyyaUNrcyJkpoQ06pQ+D9
 0aEJKDMVFJa+YQjW01MiBOlEGBl8GGZ8e7gKvo/whHUyQIPpX3DY8NyEev5bRVakzgDR
 UrhA==
X-Gm-Message-State: AGi0PuZWPPT/JjA6NIe/joyV0htP88Ynoiv9M1uIFCIKSv2vafeisPfP
 VdLqpK7ofaFgk7hGmRAc9FI=
X-Google-Smtp-Source: APiQypLggeqYjcs9Ri9QTBejIU/lrPlEYyp15iGU2P8zOXlo+G8kog8CnpwtCqUOfdgyG1iigznQqg==
X-Received: by 2002:adf:f342:: with SMTP id e2mr17742612wrp.146.1587387626909; 
 Mon, 20 Apr 2020 06:00:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 e11sm1081680wrn.87.2020.04.20.06.00.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 06:00:26 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/9] arm64: dts: allwinner: h6: Add thermal trip
 points/cooling map
Date: Mon, 20 Apr 2020 15:00:14 +0200
Message-Id: <20200420130021.3841-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420130021.3841-1-peron.clem@gmail.com>
References: <20200420130021.3841-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060029_893551_20269B08 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpUaGlzIGVuYWJsZXMgcGFz
c2l2ZSBjb29saW5nIGJ5IGRvd24tcmVndWxhdGluZyBDUFUgdm9sdGFnZQphbmQgZnJlcXVlbmN5
LgoKU2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291cy5jb20+ClNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAyNCArKysrKysrKysr
KysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDM3MGU3N2I4NmZlMS4u
NjBkYTE2Mjc3NzJiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQpAQCAtOTY0LDYgKzk2NCwzMCBAQAogCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDA+OwogCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhz
IDA+OworCisJCQl0cmlwcyB7CisJCQkJY3B1X2FsZXJ0OiBjcHUtYWxlcnQgeworCQkJCQl0ZW1w
ZXJhdHVyZSA9IDw4NTAwMD47CisJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47CisJCQkJCXR5cGUg
PSAicGFzc2l2ZSI7CisJCQkJfTsKKworCQkJCWNwdS1jcml0IHsKKwkJCQkJdGVtcGVyYXR1cmUg
PSA8MTAwMDAwPjsKKwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKKwkJCQkJdHlwZSA9ICJjcml0aWNh
bCI7CisJCQkJfTsKKwkJCX07CisKKwkJCWNvb2xpbmctbWFwcyB7CisJCQkJbWFwMCB7CisJCQkJ
CXRyaXAgPSA8JmNwdV9hbGVydD47CisJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJN
QUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCisJCQkJCQkJIDwmY3B1MSBUSEVSTUFMX05P
X0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQkJCSA8JmNwdTIgVEhFUk1BTF9OT19MSU1J
VCBUSEVSTUFMX05PX0xJTUlUPiwKKwkJCQkJCQkgPCZjcHUzIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47CisJCQkJfTsKKwkJCX07CiAJCX07CiAKIAkJZ3B1LXRoZXJtYWwgewot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
