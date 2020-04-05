Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD92C19ED06
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 19:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bs2iZ0DYgOHY4L0jQ99rMOapluEokhYZ1nd1suhV8o=; b=SxoTyNiMnwgd+Z
	POK8yoPa4/yAIW8buYbWBSGQ596VkdolsKwgl06vOOyeulX5VIkuES1LlXqgOQYpw2+0xkYljKrcC
	OcdSLLi9ZAHn6sUb5fZapK2hQ8I/E99EFwYAz3gc4q3Wjz450S1va39fO8YnynkHZHmYgiN9edz7O
	cKeRGIf3tZwGFDT+gyaghByobthcIB45JfQp1jcYTiuKd7yGulFFM6QDGrfL6AVC6y0Dv4qep4bVr
	WopYQ/QZDmjOhBvBNjdUHLuvuS1qKf0Q9N2T97l13hjmd7QBQbpH1IwvSMrGL/wv/2VRMd8un+xXY
	GkEnSHU7IrP+EI4WwrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL9D2-0002jh-CR; Sun, 05 Apr 2020 17:37:24 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL9Br-0001Y0-NW
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 17:36:13 +0000
Received: by mail-wr1-x42a.google.com with SMTP id k1so5197950wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 10:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TEi0J3UBiq8vdVnxTQ1Q5/nSVsD5Pu06tmZXPEEYVFw=;
 b=gR8b3ssBGDBZKNtMbo2zQGR7V9I3b1vIswpq8CnMG8ckn2lKjT31RIDHHTblxjdY2N
 wWVtQk6SS2XCL7YTSlrWo0LxhPFQ9G3ZaPAUsm5O+ngF0KtBxFgxdb+5tSO/QL4CVk5O
 u4sOenFo7/QBl4a5VYRbfpi/UwS/QNHIs1xVjEYHPEm3cXD+r3zqHUMB32xmQ3cLV5jW
 RikMbrKR+WBaWhy4CNpRc4eZRTdRPf/k94EZQ4OzBrAg8wLZOeYPafr+C8DQFIPtDMDa
 3y/M2Cs+n15G8lelCLKFvTY0iZRXOSQhzROBbvjeamOvlCp6ZJQTJ0sJ/0wKZ6HNSTMI
 5ybw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TEi0J3UBiq8vdVnxTQ1Q5/nSVsD5Pu06tmZXPEEYVFw=;
 b=jPAiZk8WIZtGYDuuWTgnX4T6ROZ9SXaUyDyVvqwDkJvQ+BRMHyZ0Rtcuax92cpG3pE
 DyNQTtB5n3rMTEKlH7cYyiem4VguccKFmVbqPxTtEFmNQHWPVQ1O4tYq5x7BWxelFyGA
 kTAZ1hqqhxzaYY5pcyDEou4hpLeQDc98M+JjLpJh2uRkEV0luYFbbWn7xPYZ/R9I/BTt
 ExV89UcmtW5aer57szPDNE1qGhY8kzL6QO5HkogGuNGQogXu5AyBA5Sw0O5qxbhHFggV
 OIE3o4A3zv7QKBaX8W+hXDP+Slrjn36xq9K+iXu0LK9H1BDSlaKXl/awQjxyL3FhuqUv
 k+OQ==
X-Gm-Message-State: AGi0PuZw+z9PfwNAQSZLnOPqUcX/3gJ3oFWI3SmW0PkAIBNvhkpb7Xr3
 rLRiMMZhA9brA1pJTcvKv2g=
X-Google-Smtp-Source: APiQypKwD9uIJYm9/anjRKF+p2LvSFBv1h86WMAmm+T4S0HxK/9HxXvlzcvm3Ol+7b9xes1d1948PQ==
X-Received: by 2002:a05:6000:a:: with SMTP id
 h10mr20891310wrx.226.1586108167224; 
 Sun, 05 Apr 2020 10:36:07 -0700 (PDT)
Received: from localhost.localdomain (91-167-199-67.subs.proxad.net.
 [91.167.199.67])
 by smtp.gmail.com with ESMTPSA id s13sm6031669wrw.20.2020.04.05.10.36.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 10:36:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/7] arm64: dts: allwinner: h6: Add thermal trip
 points/cooling map
Date: Sun,  5 Apr 2020 19:35:56 +0200
Message-Id: <20200405173601.24331-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200405173601.24331-1-peron.clem@gmail.com>
References: <20200405173601.24331-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_103611_785156_149C4B4C 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42a listed in]
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
ZTBkZDA3NTdiZTBiIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktaDYuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGkt
aDYuZHRzaQpAQCAtOTA4LDYgKzkwOCwzMCBAQAogCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDA+OwogCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKIAkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdGhz
IDA+OworCisJCQl0cmlwcyB7CisJCQkJY3B1X2hvdF90cmlwOiBjcHUtaG90IHsKKwkJCQkJdGVt
cGVyYXR1cmUgPSA8ODUwMDA+OworCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+OworCQkJCQl0eXBl
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
