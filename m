Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD6D34D7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTNlcYnh2Y94pAaIgZaNgflF5u/MBJFxCFLd6HLbNv4=; b=j6r3hCZLG1ezTK
	KmnUIX7J1OQ4MytDCDzJ206TGoGKN7uYAXLru/qEJ8t/JNd/cdKkaTyYGvhVC2sMQ2m6+GyEjXEaq
	UI82CGFdi7CsBK3yn6ktMNNn5azDLBtgPXaN6W86IvjT4s2Kuq/3xwr4RDIDRaBuz+B0x4s1Lx3YU
	Qox0Wf3LGXpixp+F0jYh9wOjAcIYsRbDFCVO5rH7pctVxsdEMkhTq6srIepnYeEdt/0QGNOM85v9y
	4kA+kHQUBo7KsRJXKZtCIRWWDsUM1By/oxXTDrYA+tV4XD4Y6i7d+okuxdlpkpAkvyjGABbI4qbWn
	AEa9s+YI8dHuqDYewNhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCM4-0008V5-DG; Tue, 04 Jun 2019 16:32:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKH-0006QD-AF
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:23 +0000
Received: by mail-wm1-x342.google.com with SMTP id f10so743289wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zMV7ju67dnALzanKXh4JjC//iaUgaVunyZA1YYfWVI4=;
 b=DCoh8E9BkPijkg7yg9/4DPPpnIwGDDmPR57Us/q7Aj6s6TX3XyWobi+3Xv+tqX4T8b
 7sU3JGk1FvnWGoB4wIN/vaCumT1W+CCXYH6IePP8KfZPzNVLFUQVgWPCgXi1xJZxcjGF
 dzrG5DC/mehYVBXye8JsJqx/7N2WoG+EG1ZyynlAZmFf9EKaYRqfUNW+AhiBPbrKZCGY
 Hi1R+aaMhqAXKu4NQHIPC6UpGokjTcDm39WPq4YElNhorHq1GYmWE7vVwLC1gHo9LyRH
 Xtk1fg5Uu0UlHFccWWTr3PEDwXbnYkpu4+giknBjqXI43AJ54N2lX+Sl1GFYVViqwcPq
 s9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zMV7ju67dnALzanKXh4JjC//iaUgaVunyZA1YYfWVI4=;
 b=WRgSA+/AqcW75u6I0vqphHC4EmoQNos34WqHNOam9FjPMNDNL8Wo1yidmfe2lqgHcb
 8PQSL0NBnXgeeUBjERIGDTUut1762HxvuBKxinuHAIoy1vGsF2BKst6BbxK+bYv4/p6X
 N5VMi9FY7LspgQYSi8Y6pyb+ZNIAxkFFwNJNvELc27SpI92ERa0h6lgtHLrRctf91x/x
 8ES81TWNH7lY2RcLNkUSMWIBWv/C3VX/xRq0Teh/mKRzOW5c/VKlw9Rms2sFi7YniAim
 ITL9UY6RzgeExe//7gAcssw0ICEgclJVT3zdJSOb4YTgPOa5g5bdEnzFxAnz0LD8ghbm
 5CJQ==
X-Gm-Message-State: APjAAAVHqndB1/4SM6z42FLZ4cgNUOJdQcPGXGREpiNMd1XPAUMlsFcn
 BKnjhv8wXMB4IQCtq6YIhhg=
X-Google-Smtp-Source: APXvYqyiIHwvp/J88wh/a2vXFZ112RokaYYJkHbL7nMpef5MAfOOL93Z/xT6uSngXS4GT+4sL3/OOA==
X-Received: by 2002:a1c:9d86:: with SMTP id g128mr7449245wme.51.1559665814303; 
 Tue, 04 Jun 2019 09:30:14 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.12
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 07/13] dt-bindings: media: sunxi-ir: Add A64 compatible
Date: Tue,  4 Jun 2019 18:29:53 +0200
Message-Id: <20190604162959.29199-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093017_646073_7EA1A948 
X-CRM114-Status: GOOD (  12.15  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
