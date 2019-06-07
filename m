Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF12399A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 01:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Nmhwb6K1L+1nNaMxD3VxAhfeLw9Wo5ZJGavVENkf0g=; b=nAmC5/B9nzGaiV
	1ke3JvtpnkSoSNdesIkqcyjavmETvuOU+b1OPDjrwvNXnh4amtj3kUE0UHJFS9fxaXsEOG+tXKO1r
	tcRUsFKsSLK/hEBzu7rK1mH5sYyZ9WqEqT5nxjDT8jEy8W6Wmn406TIhg0s9uHAmctiaPgA0KqrDD
	Bc38AX9alfpy2IfHW3kVqA2ejXgC+5cQz0gkLdhAGZRSRpnw0iIg2+pEf8dRnlqnD/qlIGro0yNnO
	Ocgub/bMPHPou445IisGram3q1tzvm5Ji1moXBWdGgaCfxEaurZ67VzT5JOGaA78bvbpyCZ/KI8kN
	M2aD7e9MqsaZy54zKvEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZO4F-0003rg-5O; Fri, 07 Jun 2019 23:14:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZO12-00013w-Rt
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 23:11:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id f10so3503505wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 16:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PqR/4nQ0kMEXVQlzSnSXdJ4vrq0kGPr980mhH5i0djg=;
 b=sybVLoJiDJnW343uwPnsM5S0HNjMSLDL48ncmZRtj7mgfrBAr3I0s4Hs0qLIJPzFww
 /4xhK8BD+hIPhr4i0Fv5ybyRCGXQesuCl6NKAiI1BCD4B2hq+fc6tud+WvAoLwitIrdP
 tabsUlT1/0VQQu1XwWxGPdeaxzH4nXCBg48RUWfCBFpCcYNvEY2aSq2oIN0kU2YX/3Q/
 gEr/xVMF/Tmqju9DJAXw3QdP9o85u7cIdhsG/yAdU8F8CJ8ehvhg0VYhZEL8ZbwmX1kE
 O3HxxS93luXNkfMiRqX3X8Iwx+wC9ZFck1P9WiEjMLjkok7zXoo+xG5vRhev6XxbTnF4
 Ez+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PqR/4nQ0kMEXVQlzSnSXdJ4vrq0kGPr980mhH5i0djg=;
 b=k0OS6psrzvtorwES6vClEcdClAl4f9WsPfx7N+kuwhYV23vLlrOXCFofcckALnsO3M
 B5Ln6E1fQFDMzZ1RtWjyKfC4HrUs8V6wF4cGAzYHFWp+S9oPEe0YsHceSMF7JmdAMx1p
 1XPLdbnGJN4/1wPPfj+pKx4eHpyOfHjqQmvn9QahR8taT0vCXP4HNtisIGDkJ/kcLUM1
 iYLl+8BToUWCa0nuQH4E+R1ocMQ8rYJ2lF22ChBjCBA8uQQGgcbgV9QHZHz5hR8cCFqg
 p6GqWV8fOgF2QWnM8L+axQnVrPvISltR2E/6fR4F9DIan8aVd3I95K0G+khca9Mny3J4
 Z/Sw==
X-Gm-Message-State: APjAAAUU9xFQmXlvGUFrIAjHrEJ/neIZVcheL4FovF834Sb4BUbkRlad
 m0xy8GrFyaKZiDBTI0kycIQ=
X-Google-Smtp-Source: APXvYqzCKM/QhWEqfR073eumDXe5BXIfBA3ismSGYlRmD88R5qIgkreKWQ2hlT9fpfbTa8GVbAMSWw==
X-Received: by 2002:a1c:6c08:: with SMTP id h8mr5514087wmc.62.1559949078962;
 Fri, 07 Jun 2019 16:11:18 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id h84sm4108559wmf.43.2019.06.07.16.11.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 07 Jun 2019 16:11:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v5 10/13] dt-bindings: media: sunxi-ir: Add H6 compatible
Date: Sat,  8 Jun 2019 01:10:57 +0200
Message-Id: <20190607231100.5894-11-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190607231100.5894-1-peron.clem@gmail.com>
References: <20190607231100.5894-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_161120_917136_FC3325E9 
X-CRM114-Status: GOOD (  11.52  )
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

VGhlcmUgYXJlIHNvbWUgbWlub3IgZGlmZmVyZW5jZXMgYmV0d2VlbiBBMzEgb3IgQTY0IHdpdGgg
SDYgSVIgcGVyaXBoZXJhbC4KCkJ1dCBBMzEgSVIgZHJpdmVyIGlzIGNvbXBhdGlibGUgd2l0aCBI
Ni4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+
CkFja2VkLWJ5OiBTZWFuIFlvdW5nIDxzZWFuQG1lc3Mub3JnPgotLS0KIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgfCAxICsKIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZWRpYS9zdW54aS1pci50eHQgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWVkaWEvc3VueGktaXIudHh0CmluZGV4IDFkZDI4N2E0YWIzYS4uODFlYWY5NWZi
NzY0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEv
c3VueGktaXIudHh0CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRp
YS9zdW54aS1pci50eHQKQEAgLTYsNiArNiw3IEBAIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAJImFs
bHdpbm5lcixzdW41aS1hMTMtaXIiCiAJImFsbHdpbm5lcixzdW42aS1hMzEtaXIiCiAJImFsbHdp
bm5lcixzdW41MGktYTY0LWlyIiwgImFsbHdpbm5lcixzdW42aS1hMzEtaXIiCisJImFsbHdpbm5l
cixzdW41MGktaDYtaXIiLCAiYWxsd2lubmVyLHN1bjZpLWEzMS1pciIKIC0gY2xvY2tzCSAgICA6
IGxpc3Qgb2YgY2xvY2sgc3BlY2lmaWVycywgY29ycmVzcG9uZGluZyB0bwogCQkgICAgICBlbnRy
aWVzIGluIGNsb2NrLW5hbWVzIHByb3BlcnR5OwogLSBjbG9jay1uYW1lcwkgICAgOiBzaG91bGQg
Y29udGFpbiAiYXBiIiBhbmQgImlyIiBlbnRyaWVzOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
