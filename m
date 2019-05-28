Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F44B2CB92
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsZLdPzKVKfV15LQHBz4mRC9HrwtcIB9bNO+c2JR/v0=; b=f3+x9F8AYMTwz4
	ev5+XYrL93M4E7nATLawWK/Gpj9606m6Ao8E6xoOtRaNhFDTLPLM/iXBkRx8q4GJx9wDuwPCfhK83
	HFsF+P3vFGSr/aoYyO7Ed3Wv30WNrHEix627vDW499fuJsQXSi4oIn9rlzN/AFaPz35kZoozR3Suk
	lxgkwndsjpnSc6TVUwW8mj/Deh+rRaTnY+xuxzB5cCtc8dmx6sYUOT3709tRIeZD6UJcEe0qRO2mA
	8JmT2qcs9L9vIeQuETMZuEovsk8090m+eHEjS2SDy5vep8RqwHHkIcUyG9Zdq0Ei04XRqMtLFFmhP
	TyJzeGKCNd1G5obYCSkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVelz-0002Eo-0m; Tue, 28 May 2019 16:16:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekh-0008LH-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id u78so3609609wmu.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=necYQR/hOII6qU6ihIL1rttwa5Q03SvHF96lpnmH/9A=;
 b=p6CM7nMRzyA7nfMJlp1pav4aU8ZS+VtI3bSSi/luP1NesrqAbse+UupeOmsEEdKh9y
 Ib1WhiPiWJksIHqPIYZbQhyRcbGW64wj+s6WW/uL1ujQydK3na1HZgbaWHm+tVir7kWL
 GR1dpbQ9D/b7dtYeZmn37dMo4UseeduNIzTCH6LrHvfF6+NPCCtjF6+aljOEKxJMokx+
 X2XLMaOWBEx5PVdpru/eCospvMl/bGZ9yQmf2+PFf81gnyevb8u9ePbC03gqopuX5L7l
 U+ci90UfGcvIYMqCf7S24FRkRy5UFtynrdKjS79eFC+UKUCCVXflUN3YED6ZGF1kVKXx
 dusg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=necYQR/hOII6qU6ihIL1rttwa5Q03SvHF96lpnmH/9A=;
 b=CdaVrTL5X517vLcsXhZOspaO2/PIa6VT4TPdEkPegh47SIIM8toY9lafuioz6kmKgF
 9qZIH0WT3G2/eKl8ltDKUXyt1ld0Avvz/m+K8SAzPkZHGTHsVSc7GHRpH0W6EHOHlQYK
 tjXQ/ncjFDwJh9tRvHRPTxMsrZuF0Ur27bXtE93UCwhadDSSHpdpKu29NFuoaz7JUc90
 W0Xab/9oQggrVMwuSVOWXb7AGRqsH+uGPsJt1Gafhv0axRQKh8a+y0J0gZgJYutugItR
 Q0fNpwCvkll3BsXhTJpzooZE/mIkSUKO4JUL+CRrj2BWwZwz7X16DYY/aHJ3exvwarCm
 /nnw==
X-Gm-Message-State: APjAAAW80odHHwLt5JOwrJz4cE/sNf2fhscVIRQY2yypN2B37BuBJDHm
 B195yRT58q5rEH5/YFk8ZhM=
X-Google-Smtp-Source: APXvYqwL9fEhE1DgBedObZFNedmqYKHhhGQeuaJT8KBh1Soz7MknuLcK+9WLqKNP/fkjMCvc0IbaEA==
X-Received: by 2002:a1c:2c89:: with SMTP id s131mr4038994wms.142.1559060099412; 
 Tue, 28 May 2019 09:14:59 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:58 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 04/12] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Tue, 28 May 2019 18:14:32 +0200
Message-Id: <20190528161440.27172-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091503_212984_46AB66DB 
X-CRM114-Status: GOOD (  14.83  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bjZpLWEzMS5kdHNpICB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3Qu
ZHRzaSB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNpICB8IDIgKy0KIDMg
ZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMv
c3VuNmktYTMxLmR0c2kKaW5kZXggYzA0ZWZhZDgxYmJjLi4xMTA2MjJiMzA3OTYgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bjZpLWEzMS5kdHNpCkBAIC0xMzUxLDcgKzEzNTEsNyBAQAogCQl9OwogCiAJCWlyOiBp
ckAxZjAyMDAwIHsKLQkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJ
CQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJY2xvY2tzID0gPCZh
cGIwX2dhdGVzIDE+LCA8JmlyX2Nsaz47CiAJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOwog
CQkJcmVzZXRzID0gPCZhcGIwX3JzdCAxPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3N1bjhpLWE4M3QuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaQppbmRl
eCAzOTJiMGNhYmJmMGQuLjhkNjAzZjMzMDlmMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9k
dHMvc3VuOGktYTgzdC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRz
aQpAQCAtMTA2Nyw3ICsxMDY3LDcgQEAKIAogCQlyX2NpcjogaXJAMWYwMjAwMCB7CiAJCQljb21w
YXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1hODN0LWlyIiwKLQkJCQkiYWxsd2lubmVyLHN1bjVp
LWExMy1pciI7CisJCQkJImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJY2xvY2tzID0gPCZy
X2NjdSBDTEtfQVBCMF9JUj4sIDwmcl9jY3UgQ0xLX0lSPjsKIAkJCWNsb2NrLW5hbWVzID0gImFw
YiIsICJpciI7CiAJCQlyZXNldHMgPSA8JnJfY2N1IFJTVF9BUEIwX0lSPjsKZGlmZiAtLWdpdCBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3Vu
OWktYTgwLmR0c2kKaW5kZXggMGMxZWVjOTAwMGUzLi4zMTBjZDk3MmVlNWIgMTAwNjQ0Ci0tLSBh
L2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRz
L3N1bjlpLWE4MC5kdHNpCkBAIC0xMTY3LDcgKzExNjcsNyBAQAogCQl9OwogCiAJCXJfaXI6IGly
QDgwMDIwMDAgewotCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIjsKKwkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CiAJCQlpbnRlcnJ1cHRzID0g
PEdJQ19TUEkgMzcgSVJRX1RZUEVfTEVWRUxfSElHSD47CiAJCQlwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwogCQkJcGluY3RybC0wID0gPCZyX2lyX3BpbnM+OwotLSAKMi4yMC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
