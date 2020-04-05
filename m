Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE5119EA94
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 12:50:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCPZjDtXhFRBWUlNLMgbWp/uByPHw4Emljx1npbkTqw=; b=O0Q/E4dNte7i6W
	7rIsqRWzTS3i40pETVgSR2O34M0IBOe6Uru9NSKGynfOTEShFIOxqVf7P6ZOFjSfESsf3DXJDQHLj
	6fzSPeisef58HksJ33imUHDTU6zCikT9LyUDlhtC66y+MJb8/ngO7xkAiw+yO1WQawN12sbcuwjbi
	buZdJqcc4pnY0McYPBPOBiC1R6N5U0D48rXJSwS+5mQPCqvoDikc+o0xU67dfpBqkdUslXsHyxIIb
	um3KkomdgYDIrlIIhHh2KWU+P7RahCFOc8w6zaM/FtInbKOSeYAL5XHsCDnytoDbODMmtpB1gF6js
	Fh+JrRrl+W52CapMRPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL2qm-0005XC-Mt; Sun, 05 Apr 2020 10:50:00 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL2q8-00050x-23
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 10:49:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id g3so11571020wrx.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 03:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T2ox6yFqqUNTyQRjV1Y6BWeD23De5Y0nxhCOsLLOIKs=;
 b=dFZqux8Kt58ZD1nl1pEsS9jGttw4fQIvzoSx1sxe9av3Ci7uCrIEHOIXvDyxTKgdzb
 0/0N+3iC8p/HpM1qtAttoL1O1FPIGj98M/BJSzds66yp0N+NbyG/SSooXpVurt1yII7x
 R703o4PdqnM9DRHTkkj3mmOQl/GrDMAUewk1niAHwEn+w5IcBVaWf8EwGIlkcEaFEo/K
 PTInczeA5IZ86qLOGWu2bayHLi2dwb0/r4wwsIEAoLJVAxZyt2gmqeHDsxXqC/rR/jCJ
 CrDcqDZtlxNfDIvLztGZcNpJtG0HjGUtnN9nPealj8ORDrgxOmPnUIdWYCtoLneCmm+N
 B1Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T2ox6yFqqUNTyQRjV1Y6BWeD23De5Y0nxhCOsLLOIKs=;
 b=TRFKefmBSPMu3YE8VheA5wjIGxVPb7sRjekYgBatTvqrcbPzTvxfHi3rqJjv90x0J4
 u1LapXUWUW3c0rRB0dckcGE6eW2aDC/9XKhIo4iXHh+8Mvse33KabWcd/gDpn3IHQAyK
 Zc25y21QHmqLmSZ/BJ5Becpp6fPzPrVkHxUmXla3o9KO6wkrCmXheiDuZ0pvoOZKI+J/
 yA5n7ZFW2NIw9j2qylqCGXnrBN9YAKaRdlQEC/1TA+qkwi+Oca7A17aJsr05QN3LFumk
 8vKgSBxmB52LOhDZkys2mfOa/Na8+jV1JKAQvAjcJA8o1J2YBEvSLG9H8O1I55TlqLAI
 tVag==
X-Gm-Message-State: AGi0PubSrZN7TstQQrcBiaYcP3TsqqRYmJvjISjZlN4/igYuaU9h5UZk
 UVrgG/7oI5VcSZ/zDZqYNEg=
X-Google-Smtp-Source: APiQypJ+aVzIiRh0H4IA7SAjs61Pv2FJlbjUyc95b3MQCNX7BWoOWhIjm68s9zmbsLp/uFKpTEJHGg==
X-Received: by 2002:adf:f74d:: with SMTP id z13mr9260727wrp.55.1586083758486; 
 Sun, 05 Apr 2020 03:49:18 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id u13sm21606411wru.88.2020.04.05.03.49.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 03:49:17 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/7] arm64: dts: allwinner: h6: Add thermal trip
 points/cooling map
Date: Sun,  5 Apr 2020 12:49:08 +0200
Message-Id: <20200405104913.22806-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405104913.22806-1-peron.clem@gmail.com>
References: <20200405104913.22806-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_034920_094027_47A8B26C 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IGFlZjRhZTc2MGQ1ZS4u
ZDRkMzk2MzcwNWY1IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQpAQCAtOTA4LDYgKzkwOCwzMCBAQAogCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDA+OwogCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhz
IDA+OworCisJCQl0cmlwcyB7CisJCQkJY3B1X2hvdF90cmlwOiBjcHUtaG90IHsKKwkJCQkJdGVt
cGVyYXR1cmUgPSA8ODAwMDA+OworCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQl0eXBl
ID0gInBhc3NpdmUiOworCQkJCX07CisKKwkJCQljcHVfdmVyeV9ob3RfdHJpcDogY3B1LXZlcnkt
aG90IHsKKwkJCQkJdGVtcGVyYXR1cmUgPSA8MTAwMDAwPjsKKwkJCQkJaHlzdGVyZXNpcyA9IDww
PjsKKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7CisJCQkJfTsKKwkJCX07CisKKwkJCWNvb2xpbmct
bWFwcyB7CisJCQkJY3B1LWhvdC1saW1pdCB7CisJCQkJCXRyaXAgPSA8JmNwdV9ob3RfdHJpcD47
CisJCQkJCWNvb2xpbmctZGV2aWNlID0gPCZjcHUwIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9O
T19MSU1JVD4sCisJCQkJCQkJIDwmY3B1MSBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElN
SVQ+LAorCQkJCQkJCSA8JmNwdTIgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwK
KwkJCQkJCQkgPCZjcHUzIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD47CisJCQkJ
fTsKKwkJCX07CiAJCX07CiAKIAkJZ3B1LXRoZXJtYWwgewotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
