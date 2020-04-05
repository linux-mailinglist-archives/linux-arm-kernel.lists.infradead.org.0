Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB18319EA88
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aI9+dsFv8kQnKytFM+7r2o5t38BA8TuEZLsy4WK1A68=; b=tJLzoF3WGmaNc9
	QKQiDhey8NGVOaKkhVpZEQOzb+2Se+wEL1B95ZQwJ4NdFszMQ3MmuG90XoI9Nkg0+5s9/GNxdtyl/
	izdL8MQTAw6Zfh0HQYfdFfdRPpgr30W2RShF0lHkKFk5lPcMh7d6BL36dzsti7miccSVPRsnewE0K
	DOUy7dTASlvn419nrK9paxTqyjHPwHu0IXOqqfYuCbYuLPhJFSsbDaUtDVDEQot7eNJp/0x1rxvFj
	+he1+P6m71ABt7F7+B2hs2avOHA1OdG8xdzurJIpdeRTQf3VVbKzCLbod545X9am0RGQZLEHCCNdD
	su2Z+qi0ijfEALs6+2YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2qF-000527-OL; Sun, 05 Apr 2020 10:49:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2q7-00050j-3F
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id r16so11665076wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=953t16PaqsK6LcXl7SedQvIrbO2yGs6c/tDrXm7TIhc=;
 b=gDU9MpLlJXCxtnrJImoSbWNKul0yvFgILeoD6x0Az1GLzewahCBNoaASoP2PwKMwu0
 If9A7h8AvWGp43dPJXZzkKEWy+TXf18/nhD7/OEk//SJ2ussttndqB67MpOX80y7qPUn
 XDGeAkJXlialvYn4mgovXTGTwk8h/cvavMSNFpPg/Aj27whu6BgHq6IBDtcprRnzyUzp
 dI1LvNsoFTdLJjqO/j4OYwqsXAkiHGiXaaYvT9LHva1GvzuNTZ6/rHO3AfdFjz2pStlS
 Rc46XrpmD1T7jUWt7gQd0ferGemsUtHc4Gna7eOK4HpiGdwGRzH2RqlvIhpuSwWQHmSl
 XnQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=953t16PaqsK6LcXl7SedQvIrbO2yGs6c/tDrXm7TIhc=;
 b=rhUYfC4uMGCd+60Huz6qCI+Nj2zTKeLGmPUUOjz4lGvRjzSeev6hFl5k7RYU5Ihm2U
 35KvQ48nvCSi4nGVqedL5JL0vXQMqA2zVlXXAYEqKT2Raz7v2SGArJAp9GqCR0R6kRoZ
 hznugyeUxzEzbu86kX6a4esJJw8ev/qTzaqIIQpK6Of5jjFcA+5nZv00UCkEP8wGy9nJ
 lU3Vyuhf5R58QIejhAu3+aC9S8rAl1gvVF4AZyEl/2aH1ZznKCpjhPjGztGM+eeuLQOa
 Z8Tutwsw3Zuyrnh3r5xldt+13hlpw1ki5VrogpG7PMDDwYAcS6Gu2mQ2sb+izyCFvTlK
 5DIQ==
X-Gm-Message-State: AGi0Puab0F+/eSNX2jrBiacnqezv7DdpWkXb0tBgI9SPkzGNqziuGpma
 trG+X5jRbjZBO46E3OSnZdA=
X-Google-Smtp-Source: APiQypIb6hYEiZU/p/Pp6GyHUm6hJVSiw5xrphdOw1InxhwhbkqgTWtX3m4rJUfQxyavTQCkImQr2g==
X-Received: by 2002:a1c:6044:: with SMTP id u65mr9806744wmb.11.1586083757409; 
 Sun, 05 Apr 2020 03:49:17 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:16 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/7] arm64: dts: allwinner: h6: Add clock to CPU cores
Date: Sun,  5 Apr 2020 12:49:07 +0200
Message-Id: <20200405104913.22806-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034919_131670_9F67328D 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Yangtao Li <tiny.windzz@gmail.com>,
 linux-kernel@vger.kernel.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpAZ21haWwuY29tPgoKVGhlIEFSTSBDUFUgY29y
ZXMgYXJlIGZlZCBieSB0aGUgQ1BVIGNsb2NrIGZyb20gdGhlIENDVS4gQWRkIGEKcmVmZXJlbmNl
IHRvIHRoZSBjbG9jayBmb3IgZWFjaCBDUFUgY29yZSwgYWxvbmcgd2l0aCB0aGUgY2xvY2sKdHJh
bnNpdGlvbiBsYXRlbmN5LgoKU2lnbmVkLW9mZi1ieTogWWFuZ3RhbyBMaSA8dGlueS53aW5kenpA
Z21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21h
aWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
IHwgOCArKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggMzMyOTI4M2UzOGFi
Li5hZWY0YWU3NjBkNWUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNi5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi5kdHNpCkBAIC0yNSw2ICsyNSw4IEBACiAJCQlkZXZpY2VfdHlwZSA9ICJjcHUiOwogCQkJ
cmVnID0gPDA+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNsb2NrcyA9IDwmY2N1
IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0PjsgLyogOCAzMmsgcGVy
aW9kcyAqLwogCQl9OwogCiAJCWNwdTE6IGNwdUAxIHsKQEAgLTMyLDYgKzM0LDggQEAKIAkJCWRl
dmljZV90eXBlID0gImNwdSI7CiAJCQlyZWcgPSA8MT47CiAJCQllbmFibGUtbWV0aG9kID0gInBz
Y2kiOworCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0NQVVg+OworCQkJY2xvY2stbGF0ZW5jeS1ucyA9
IDwyNDQxNDQ+OyAvKiA4IDMyayBwZXJpb2RzICovCiAJCX07CiAKIAkJY3B1MjogY3B1QDIgewpA
QCAtMzksNiArNDMsOCBAQAogCQkJZGV2aWNlX3R5cGUgPSAiY3B1IjsKIAkJCXJlZyA9IDwyPjsK
IAkJCWVuYWJsZS1tZXRob2QgPSAicHNjaSI7CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfQ1BVWD47
CisJCQljbG9jay1sYXRlbmN5LW5zID0gPDI0NDE0ND47IC8qIDggMzJrIHBlcmlvZHMgKi8KIAkJ
fTsKIAogCQljcHUzOiBjcHVAMyB7CkBAIC00Niw2ICs1Miw4IEBACiAJCQlkZXZpY2VfdHlwZSA9
ICJjcHUiOwogCQkJcmVnID0gPDM+OwogCQkJZW5hYmxlLW1ldGhvZCA9ICJwc2NpIjsKKwkJCWNs
b2NrcyA9IDwmY2N1IENMS19DUFVYPjsKKwkJCWNsb2NrLWxhdGVuY3ktbnMgPSA8MjQ0MTQ0Pjsg
LyogOCAzMmsgcGVyaW9kcyAqLwogCQl9OwogCX07CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
