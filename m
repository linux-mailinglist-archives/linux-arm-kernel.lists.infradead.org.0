Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF3E34D82
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:32:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Nmhwb6K1L+1nNaMxD3VxAhfeLw9Wo5ZJGavVENkf0g=; b=nSxm7tPqJieKqH
	Iq4WpILHSJvHtMWp5U4hqXug9trAjpoDHCGIhanpsK4SqdQgAnrli1Qq3O/nrK3a0HNupOjlFmCgd
	DobrNqdb/jSlQ1L3MjfYrVgauqTGn7iddYxvjiV7WsAA+iH8l5BIZEzqA9deiT93JAcCCsy6LydTM
	A4XxKTM/S6WvVQrB5j2AXjJpiYijKcRMh58UgxrqbPIFxlHB2QB4ZHE0ENjE2raKUCsHqA6eOiLwP
	ru8u5YxiZ7gQnJZcc/cDaDNRJ84qwRxy9o3ZZJtxxns3nrUymTE5D6k+bFCL0yNubeSWIhpOfX/M9
	DyfgLYVpzQcFG5qnPyyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYCMU-0000dR-A2; Tue, 04 Jun 2019 16:32:34 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYCKJ-0006Vw-EG
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:30:24 +0000
Received: by mail-wm1-x343.google.com with SMTP id d17so733063wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PqR/4nQ0kMEXVQlzSnSXdJ4vrq0kGPr980mhH5i0djg=;
 b=nSnqqJ5cuqApbvO6Zl2Uv0dVoByi7t1WiwNqSFE6gb9a0EWyQfyBtIpKT0E/KaLwUY
 yzFVmHox83ftJWu2EMewdS0c8ixUUWTZxqWOUG5FLAVk/giYGuvWWBONxL3L61SiNfO9
 j47HWYuBieoTifiT3kAV5ppM5lmZobqU3+kNiiscyFUHa744LdRb5XmxAWVGrGkDBtcy
 rJzDa/pygKGBN8M02ZJFGaAtdjkOxgj825Me/+vHHCGE7fxaNkiIFFm/D+6isx7e8Qv4
 zf+gvQuW8PN1koeCLMLvoeDBnPGQ5DbwqlKly7fQ7EulewDgrWwfmdxQiRg03svlwRLh
 7hHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PqR/4nQ0kMEXVQlzSnSXdJ4vrq0kGPr980mhH5i0djg=;
 b=EjzWFU0yHxPNVkkpM0KhUR85nbwQ4U5wVrjNc98gMznQGKVZVB6AvaFmG8U5HiBFW9
 XmHLT000liBfF6VwX6/OsVcEztrtKQtV3v3Y4qDxaUDaz1w1tC+UAIET0UqC2Crp2OJ/
 3leYBklJiSei2Wc1DjYzCIvDX03giaCp/kVSzM8ZhXu9V9Yb0qUZ/G43kpfJrDUASryf
 C+amy0E1YaHjNA6lk8VRUKCD0jw4IoQHw/CVGy0RKpRLuRM4g2/DrKm0WsXwpRn9jrU0
 ohVgJeXwIz5b4qMVMPSLLsT5LcuiLfb/3JjWzl+wHrx/7lmqyXxuTeOehxrkNZxhntna
 Bcag==
X-Gm-Message-State: APjAAAWo+5OsdoGh1t9Rffy6xIL6rY9hVwMVLcfpmz64jVNoyytvPKV9
 m1ij2ZPv9YHtoMlvuj4OdVQ=
X-Google-Smtp-Source: APXvYqyAO097WF3oXNFY33nhIC/Nq8fAGV5LLmxWhXgKSyLYoGxkJbnbHdr7cfUTxxf2leTuZ9JxkA==
X-Received: by 2002:a05:600c:218d:: with SMTP id
 e13mr18973082wme.101.1559665817974; 
 Tue, 04 Jun 2019 09:30:17 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id y12sm15108176wrh.40.2019.06.04.09.30.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 04 Jun 2019 09:30:17 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 10/13] dt-bindings: media: sunxi-ir: Add H6 compatible
Date: Tue,  4 Jun 2019 18:29:56 +0200
Message-Id: <20190604162959.29199-11-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604162959.29199-1-peron.clem@gmail.com>
References: <20190604162959.29199-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_093020_289746_7CE9B1AD 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
