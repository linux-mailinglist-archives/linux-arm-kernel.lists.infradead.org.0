Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F45D2A61E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 20:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6u77LMTnrnhOh20ZQy/kd35gy0/Y0LlwdtTlBJf2JVk=; b=mJOshQvFDHN79H
	yTkP29qnNILZqOtzkMmqbzJh4IqtxoIvN0ewVuaksf3WKX/pkdfAU/qTMrH1Su3kH6GSjqmwDzy48
	ga2mNlpPpoqDLcJ7MdNjST4z2PBm80QiiQRQicIN21XFHpl4TAUvj2bPFUARlLNYPIN6epVWQRkXl
	Zf1KMOB1jFuPSEcJBs11ETDgwqyx9vPGPuMqEhvbrL3Czamv49i5awTYE2zX3zSCFg21LDxgLaQgH
	ArCuSWClcnsUYDKI62aBRVUJGrNOK04IcV5wJ/sUau7s/aPKt8moZ3TRmnG9Y0eH3Kc1wJmfbdm3c
	boz5mtvljmpn2/Xbubww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUb7r-0000Ul-0o; Sat, 25 May 2019 18:10:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUb6w-0006nf-81
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 18:09:49 +0000
Received: by mail-wm1-x342.google.com with SMTP id f204so12346861wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 11:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Txw4I/nlIjGWNbpamPSvup0QUY5nkiK5clorHOj/5is=;
 b=tNLwJOqNzTRUVhwemZqWMHv7UdnenD9nBAsVH4I2TGf+dETUCKkmXYw4R4RQ0ViNJD
 gHq/PRSFoIDKh6ytEpURv20hL2r5y8xOZHrRLZJSQTPfIARLWr/3HatRriSL8CHdHt7H
 dFWJScNTQb4lD7zUDpb5slmoGy1PG6vWqKl1ptNzrsTTKFM974kA8hQ77G0EihDmVfA0
 y4GFjCjF8uPqq2BSTxL3VlWkHLSFe14SeD6ZK9oxrcv9aOge7P6sIBLNJwNXwhj0JZ/0
 cJ6OeS1Y+XYIQlgAHhQ5yQJMlst2A/6pXS0h3yzG3XqqMfxfprY2ulzvczOa+WH/ybuE
 viEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Txw4I/nlIjGWNbpamPSvup0QUY5nkiK5clorHOj/5is=;
 b=Yo4FCUGHe+B93+UKs4ahP9jrqj4EOVHb+dhgdB7J0MMz4EEopRyiD4Q2ENWlQw+vhk
 UHLMLAvBlB3TuYTYsT8Ijbpqw1UDOdVcy+LS+bMEo+ZSFDEoooi0kVPBGLd+ABzLNnfH
 WG/IcRxIiG6bcGgGuF2xj2oklC2UV5x3fom2EKFULDsTG2qIgLIPeHF5Z73zUm0xQuM9
 L18/dx8wxEXyvybRyRlAzsm1PYYH7Br/2RmgBkeWu8m1ucJxaZ4tM3aW377dFwr1EnHh
 cGC4IQvdtIL6FprS57BsopHqTuSwZ9QZCTT0Atc92Y6P0tT8iGdMSN0qH93HzdCXQNDp
 adag==
X-Gm-Message-State: APjAAAXva6iiNq/whRL8XntMAqGjIzDyuzhaxg58ge+LuiqEF3jJ/ePt
 Clyu0MoxPFDXSWYOkqt1WBU=
X-Google-Smtp-Source: APXvYqwOkJuokQudRPmhh1EXSAWRSV25N8yYzUEBr4S3uGDF0zOlWBxTHcZs4RO7MzoAPcW3AhKQqg==
X-Received: by 2002:a1c:1ad6:: with SMTP id a205mr20050587wma.80.1558807772772; 
 Sat, 25 May 2019 11:09:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm5656914wmf.48.2019.05.25.11.09.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 11:09:32 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 03/10] ARM: dts: sunxi: prefer A31 instead of A13 for ir
Date: Sat, 25 May 2019 20:09:16 +0200
Message-Id: <20190525180923.6105-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525180923.6105-1-peron.clem@gmail.com>
References: <20190525180923.6105-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_110938_288532_2FD246A9 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U2luY2UgQTMxIG1lbW9yeSBtYXBwaW5nIG9mIHRoZSBJUiBkcml2ZXIgaGFzIGNoYW5nZWQuCgpQ
cmVmZXIgdGhlIEEzMSBiaW5kaW5ncyBpbnN0ZWFkIG9mIEExMy4KClNpZ25lZC1vZmYtYnk6IENs
w6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm0vYm9vdC9k
dHMvc3VuNmktYTMxLmR0c2kgICB8IDIgKy0KIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3Qu
ZHRzaSAgfCAyICstCiBhcmNoL2FybS9ib290L2R0cy9zdW45aS1hODAuZHRzaSAgIHwgMiArLQog
YXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSB8IDIgKy0KIDQgZmlsZXMgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuNmktYTMxLmR0
c2kKaW5kZXggYzA0ZWZhZDgxYmJjLi4xMTA2MjJiMzA3OTYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
L2Jvb3QvZHRzL3N1bjZpLWEzMS5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjZpLWEz
MS5kdHNpCkBAIC0xMzUxLDcgKzEzNTEsNyBAQAogCQl9OwogCiAJCWlyOiBpckAxZjAyMDAwIHsK
LQkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJY2xvY2tzID0gPCZhcGIwX2dhdGVzIDE+
LCA8JmlyX2Nsaz47CiAJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOwogCQkJcmVzZXRzID0g
PCZhcGIwX3JzdCAxPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3Qu
ZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaQppbmRleCAzOTJiMGNhYmJm
MGQuLjhkNjAzZjMzMDlmMiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOGktYTgz
dC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaQpAQCAtMTA2Nyw3
ICsxMDY3LDcgQEAKIAogCQlyX2NpcjogaXJAMWYwMjAwMCB7CiAJCQljb21wYXRpYmxlID0gImFs
bHdpbm5lcixzdW44aS1hODN0LWlyIiwKLQkJCQkiYWxsd2lubmVyLHN1bjVpLWExMy1pciI7CisJ
CQkJImFsbHdpbm5lcixzdW42aS1hMzEtaXIiOwogCQkJY2xvY2tzID0gPCZyX2NjdSBDTEtfQVBC
MF9JUj4sIDwmcl9jY3UgQ0xLX0lSPjsKIAkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJpciI7CiAJ
CQlyZXNldHMgPSA8JnJfY2N1IFJTVF9BUEIwX0lSPjsKZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3N1bjlpLWE4MC5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VuOWktYTgwLmR0c2kK
aW5kZXggMGMxZWVjOTAwMGUzLi4zMTBjZDk3MmVlNWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jv
b3QvZHRzL3N1bjlpLWE4MC5kdHNpCisrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bjlpLWE4MC5k
dHNpCkBAIC0xMTY3LDcgKzExNjcsNyBAQAogCQl9OwogCiAJCXJfaXI6IGlyQDgwMDIwMDAgewot
CQkJY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIjsKKwkJCWNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CiAJCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzcg
SVJRX1RZUEVfTEVWRUxfSElHSD47CiAJCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCQkJ
cGluY3RybC0wID0gPCZyX2lyX3BpbnM+OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9vdC9kdHMv
c3VueGktaDMtaDUuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kKaW5k
ZXggODQ5NzdkNGViOTdhLi5mMGY1YmEzNDljMWIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bnhpLWgzLWg1LmR0c2kKKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUu
ZHRzaQpAQCAtODIyLDcgKzgyMiw3IEBACiAJCX07CiAKIAkJaXI6IGlyQDFmMDIwMDAgewotCQkJ
Y29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3VuNWktYTEzLWlyIjsKKwkJCWNvbXBhdGlibGUgPSAi
YWxsd2lubmVyLHN1bjZpLWEzMS1pciI7CiAJCQljbG9ja3MgPSA8JnJfY2N1IENMS19BUEIwX0lS
PiwgPCZyX2NjdSBDTEtfSVI+OwogCQkJY2xvY2stbmFtZXMgPSAiYXBiIiwgImlyIjsKIAkJCXJl
c2V0cyA9IDwmcl9jY3UgUlNUX0FQQjBfSVI+OwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
