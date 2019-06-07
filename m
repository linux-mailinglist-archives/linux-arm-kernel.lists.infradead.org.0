Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858473999F
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTNlcYnh2Y94pAaIgZaNgflF5u/MBJFxCFLd6HLbNv4=; b=P3ZaiJ03CsBQXz
	XbCQZXBn4khSQymvmDSgqVJAAk8FzEZpkShXuo1lvcA7n2i8aVIFsz2m10xLiOimN6/35TcszXCNM
	hUsibCD5kLPhDOpfr3R8Uuk4ugI92D1yyhGzQLvh+dove8yeMaJ+Uyx5B9mfxmmgFZML1XXC+UdH9
	QWI8+w1es8E8HNcd3hDhgYJYJBlRnHbxZJoCYYKumS0iXkNFMUeUBBhJJmjvNfiCHO4+pdX9GDMau
	mC0+7fISaC5njwgJg0wd/adTocOkE/HTFDLbI01hCJzgQwyDJqRY5ECxj/4+VKowezoq93gOMhgdy
	3/ai/XcN+Tz2fEO/1u0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO3A-0002sI-Pd; Fri, 07 Jun 2019 23:13:32 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO0z-00010H-NN
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id v14so3634991wrr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zMV7ju67dnALzanKXh4JjC//iaUgaVunyZA1YYfWVI4=;
 b=D1taeFuKpCeBaakZK2JwO1C7JIOUxjBNTYJw37vy8WucA2FDWY/rutXj/Qpw0AjJy0
 VBvMIEcqseMpghp7l60/6XYSARUTqS1r8y748t7abeL/nUGz+bkQCML250KaoDSlacUL
 1lgvYSuMrdaLNylilrM6CiNyQNt5V1udU9RO2iGKVLgUWOd3sbN1KWhyeRxJlupFSe5h
 HVt5KZ6OsyqnjPa/cptFB5mmOT83rN/yR+2h41ZkJ4yWd5BSZc9QifvpSygjcAD63py6
 PTvqI2rGwGIQ99gbJ/rndapD+EwIjPn2mwbOjYxF5C5lDmOEwMHQGJhZkeCqDwBJaiJA
 AWeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zMV7ju67dnALzanKXh4JjC//iaUgaVunyZA1YYfWVI4=;
 b=AlE2jLb+pX9iArQa2JD6/V4mJv+N9kWBI/Gw8NWQCIgyZLGI3W+zekJ+oXlwq0PZwG
 d+Cw1n1SW+/NQI/3kAj9FBjTHY60AG/w77MPPX0wY8VpnpJZR1jBuswxi9PnCLoGAd0V
 fjKHkO+14ky17oH+kFoeCxfQYwFK7/oh9dlDIvCrhgHEjBu6I1q0oVyScZIIHwFw4dph
 YthIW+T9i1WRWODdIjtMUlDn7wiqMsSB1NGklaxC6ezbvXmtltYu6BPHyXMFO21s8A8J
 ip2I+IouXTH+ArCcq+KU/IdPpjS/J+tLgGfIqZhU9oqfCCkh41LM3RhlABDaJYe/jV0t
 mVzw==
X-Gm-Message-State: APjAAAUqyP3di5Ou9P4LZaAvBU/AQrsQDuMPBuqn3kckiY5jrxeKGhM9
 Pe4XKgyquDhxDKTF84jZbLI=
X-Google-Smtp-Source: APXvYqxYMEndAiQdGKsc700CrHbdzz2vLIx6Fq//z6TYlZ9joSLtaGD3Pk68PpctIHwk6bcRFCWzTw==
X-Received: by 2002:adf:dd82:: with SMTP id x2mr11606520wrl.27.1559949076178; 
 Fri, 07 Jun 2019 16:11:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:15 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 07/13] dt-bindings: media: sunxi-ir: Add A64 compatible
Date: Sat,  8 Jun 2019 01:10:54 +0200
Message-Id: <20190607231100.5894-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161117_857836_6838FCBC 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: devicetree@vger.kernel.org, Sean Young <sean@mess.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgYXJlIHNvbWUgbWlub3IgZGlmZmVyZW5jZXMgYmV0d2VlbiBBMzEgYW5kIEE2NCBkcml2
ZXIuCgpCdXQgQTMxIElSIGRyaXZlciBpcyBjb21wYXRpYmxlIHdpdGggQTY0LgoKU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KQWNrZWQtYnk6IFNl
YW4gWW91bmcgPHNlYW5AbWVzcy5vcmc+Ci0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4dCB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
ZGlhL3N1bnhpLWlyLnR4dCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zdW54aS1pci50eHQKaW5kZXggMmU1OWEzMmE3ZTMzLi4xZGQyODdhNGFiM2EgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQK
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3N1bnhpLWlyLnR4
dApAQCAtNSw2ICs1LDcgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKIAkiYWxsd2lubmVyLHN1bjRp
LWExMC1pciIKIAkiYWxsd2lubmVyLHN1bjVpLWExMy1pciIKIAkiYWxsd2lubmVyLHN1bjZpLWEz
MS1pciIKKwkiYWxsd2lubmVyLHN1bjUwaS1hNjQtaXIiLCAiYWxsd2lubmVyLHN1bjZpLWEzMS1p
ciIKIC0gY2xvY2tzCSAgICA6IGxpc3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgY29ycmVzcG9uZGlu
ZyB0bwogCQkgICAgICBlbnRyaWVzIGluIGNsb2NrLW5hbWVzIHByb3BlcnR5OwogLSBjbG9jay1u
YW1lcwkgICAgOiBzaG91bGQgY29udGFpbiAiYXBiIiBhbmQgImlyIiBlbnRyaWVzOwotLSAKMi4y
MC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
