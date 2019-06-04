Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B61334E1F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 18:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPjynCy1oBfYKVdE0OoOpsEEnT5EGqjg21ItZw9XNZ0=; b=jsiFJkgkJ+qkqt
	toQ+awHsdtz1rlqhkMiadQRl1E5kN/1tBT9puDO7jzvUhiCt0auNyazLfD4HOK3YLH4FGw4UvSyDT
	BESwnYg/JaSme8CW6VRiwIlsrQXq7bnWnWUHqMEu076lyrjNEYZVUN0mhGQwKuKJQKnD+XXlyAjW7
	O35G2/94vZ0HRiEVEaZzJ75JaQnw6+wiKTwwRA96wYmX4f41YAhJnPUHObtyUAVrNaGV7crNYOHk2
	lbW/2ULy3JKjcMGK3/qOOYAkDKx+8o50mdQWkl7/I7uRztUVAEOJaDQ1lpSN3YZdqJmxFSZR/33uP
	2bi4wIbaYXFRaRKlTfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYClh-0005Pv-Pv; Tue, 04 Jun 2019 16:58:37 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYClV-0005I7-SC
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 16:58:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id v19so2713523wmh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 09:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
 b=U8iHJaeNQwgfZyonZpmCY+8eHEAJFzgZQHl4ZBgMB7Ehc1h2CJidpz9etKcpnvU01a
 fdT0yfOUja+9mp77Qt7n0A8kIpZCp5BOm+jY1QG8/1SSyaF/lYSYJkKv5lhQvqfxApcs
 aRvUtwN/SQiwf9Gb3ICSTbT7qQxfw8EzQ4t37U4ioJKeyYm9ZKp68qrJaS5TiPi8HNuL
 Ad2tzh8fiCQgixXuooOSB0jyT4RrTmlzXAAWj6F5suSxrHSkAaLOwXQA6Q8jKbVGsBxv
 l0AZtugD8sTl+zF6170ZkYKO1l5PD79mwoFVwLwixQlwxPFdlkYXrZ5P9WHE/ixvl8vP
 LFDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVCO5NdhCO4ClvnqUv2FsN5kOQCRCbVjJWhoMXw1NDQ=;
 b=s8945EB95dD8HqzB+RPvlQmpbZtHmR857gYjJVTdvLcWHtcMLhEkvdUtBdMgg9E2wL
 jIhtkp32hCpgPRg4lR4PXyXgBKckzoD5Mgx+PzQYC7GUcCAOBjkLEX6RtNs330/d7cgt
 SwF1wnC0SQUWZX4YIYj4Ddx6mf4Q8xgtz2IT3uugUoODUf68S0EIu4kLjGwSmwrdoRwV
 FJi5r09qM2T7VmOtFdFPX+3noyrIg4CUlRShjXUjFNo9BUzdBrp30liuVcCn5+jeAkma
 Tzp0b9FstC9DS/unpk/HWjO0Gwu1SXPpnEMrJca9mT35PFvqWBAPH1+VHZlB6PFUIPqj
 ASJA==
X-Gm-Message-State: APjAAAXpVJFwOkn6llgMQSb0BE0J5Y3OQg1F+YRxiv64v1s+XIQcbfyx
 OinV69Vs5iwIc7C8bLBfrJEnOwhRJ2w=
X-Google-Smtp-Source: APXvYqyTSxvUapZ02X/hXKoASJXPNOtj9HjRjSK5iLdyKziVYT0pPX38I5nv+gb7+mLfsXpPzGyVLg==
X-Received: by 2002:a1c:b6d4:: with SMTP id g203mr9346231wmf.19.1559667504165; 
 Tue, 04 Jun 2019 09:58:24 -0700 (PDT)
Received: from clegane.local (20.119.129.77.rev.sfr.net. [77.129.119.20])
 by smtp.gmail.com with ESMTPSA id t13sm25524979wra.81.2019.06.04.09.58.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 09:58:23 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: Define values for the IPA governor
 for rock960
Date: Tue,  4 Jun 2019 18:57:58 +0200
Message-Id: <20190604165802.7338-2-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604165802.7338-1-daniel.lezcano@linaro.org>
References: <20190604165802.7338-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_095826_060405_CAF310EC 
X-CRM114-Status: GOOD (  12.75  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, edubezval@gmail.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, manivannan.sadhasivam@linaro.org,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Q3VycmVudGx5IHRoZSBkZWZhdWx0IHRoZXJtYWwgdmFsdWVzIGZvciB0aGUgcmszMzk5LXJvY2s5
NjAgYm9hcmQgaXMKaW5oZXJpdGVkIGZyb20gdGhlIGdlbmVyaWMgZGVmaW5pdGlvbiBpbiByazMz
OTkuZHRzaS4KCkluIG9yZGVyIHRvIGVuc3VyZSB0aGUgcm9jazk2MCBoYXMgbW9yZSByb29tIGZv
ciB0aHJvdWdwdXQgYmVmb3JlCmJlaW5nIGNhcHBlZCBieSB0aGUgdGhlcm1hbCBmcmFtZXdvcmsg
YW5kIGlzIGNvcnJlY3RseSBzdXBwb3J0ZWQgYnkKdGhlIElQQSBnb3Zlcm5vciwgbGV0J3MgZGVm
aW5lIHRoZSBwb3dlciB2YWx1ZXMgYW5kIHRoZSByaWdodCB0cmlwCnBvaW50cyBmb3IgYmV0dGVy
IHBlcmZvcm1hbmNlczoKCiAtIHN1c3RhaW5hYmxlIHBvd2VyIGlzIHRlc3RlZCB0byBiZSAxNTUw
bVcKCiAtIGluY3JlYXNlIHRoZSBmaXJzdCBtaXRpZ2F0aW9uIHBvaW50IHRvIDc1wrBDIGluIG9y
ZGVyIHRvIGdldCBiZXR0ZXIKICAgcGVyZm9ybWFuY2VzCgogLSB0aGUgZmlyc3QgdHJpcCBwb2lu
dCBpcyA2NcKwQyBpbiBvcmRlciB0byBsZXQgdGhlIElQQSB0byBjb2xsZWN0CiAgIGVub3VnaCBk
YXRhIGZvciB0aGUgUElEIHJlZ3VsYXRpb24gd2hlbiBpdCByZWFjaGVzIDc1wrBDCgogLSByZXN0
cmljdCB0aGUgY29vbGluZyBkZXZpY2UgdG8gdGhlIGJpZyBDUFVzIGFzIHRoZSBsaXR0bGUgQ1BV
cwogICBjb250cmlidXRpb24gdG8gdGhlIGhlYXRpbmcgZWZmZWN0IGNhbiBiZSBjb25zaWRlcmVk
IG5lZ2xpZ2libGUKClRoZSBpbnRlbGxpZ2VudCBwb3dlciBhbGxvY2F0b3IgUElEIGNvZWZmaWNp
ZW50IHRvIGJlIHNldCBpbiBzeXNmcwphcmU6CgogICAga19kOiAwCiAgICBrX3BvOiA3OQogICAg
a19pOiAxMAogICAga19wdTogNTAKClNpZ25lZC1vZmYtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5p
ZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgotLS0KIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9jazk2MC5kdHMgICAgICB8IDM5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCAzOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jazk2MC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0cwppbmRleCAxMjI4NWM1MWNjZWIuLjcwMWQ1YjVmYWQ0NiAxMDA2NDQK
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHMKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jazk2MC5kdHMKQEAgLTEx
NCw2ICsxMTQsNDUgQEAKIAl9OwogfTsKIAorJnRoZXJtYWxfem9uZXMgeworCWNwdV90aGVybWFs
OiBjcHUgeworCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MTAwPjsKKwkJcG9sbGluZy1kZWxh
eSA9IDwxMDAwPjsKKwkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAwPjsKKwkJc3VzdGFpbmFi
bGUtcG93ZXIgPSA8MTU1MD47CisKKwkJdHJpcHMgeworCQkJY3B1X2FsZXJ0MDogY3B1X2FsZXJ0
MCB7CisJCQkJICAgIHRlbXBlcmF0dXJlID0gPDY1MDAwPjsKKwkJCQkgICAgaHlzdGVyZXNpcyA9
IDwyMDAwPjsKKwkJCQkgICAgdHlwZSA9ICJwYXNzaXZlIjsKKwkJCX07CisKKwkJCWNwdV9hbGVy
dDE6IGNwdV9hbGVydDEgeworCQkJCSAgICB0ZW1wZXJhdHVyZSA9IDw3NTAwMD47CisJCQkJICAg
IGh5c3RlcmVzaXMgPSA8MjAwMD47CisJCQkJICAgIHR5cGUgPSAicGFzc2l2ZSI7CisJCQl9Owor
CisJCQljcHVfY3JpdDogY3B1X2NyaXQgeworCQkJCSAgdGVtcGVyYXR1cmUgPSA8OTUwMDA+Owor
CQkJCSAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKKwkJCQkgIHR5cGUgPSAiY3JpdGljYWwiOworCQkJ
fTsKKwkJfTsKKworCQljb29saW5nLW1hcHMgeworCQkJICAgICBtYXAwIHsKKworCQkJICAgICB0
cmlwID0gPCZjcHVfYWxlcnQxPjsKKwkJCSAgICAgY29vbGluZy1kZXZpY2UgPQorCQkJCQk8JmNw
dV9iMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAorCQkJCQk8JmNwdV9iMSBU
SEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+OworCQkJfTsKKwkJfTsKKwl9OworfTsK
KwogJnVzYmRyZF9kd2MzXzAgewogCWRyX21vZGUgPSAib3RnIjsKIH07Ci0tIAoyLjE3LjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
