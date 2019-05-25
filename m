Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 445382A543
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnEVR3BWxacTSoCq2+VW2V5G3T1XQLOdYPvkyFfvuC4=; b=OkipS8yFQkK9Fx
	CXM/UrY72nCXaLAkPEeGBzq4QEK3JhFQ0T/dRnfhFsATFpyccGzdk7o8w0k7y7pY0e9iR0nVBbc06
	PZ5viIyHNG8AW42v7wKwZOlLifNZg4DNEmYsB8Dv/2g1ImZZZzxPhueHO09H5DlnH0kmJ7igzKS50
	/hMUa1ViPWRoeHAFoUdlGOqdkzD0QNsvDXTGS8K+NtE+ZI6+YHyjjZ30Nvotl4p+Z6Zftm+Eyfyn7
	+AlbnbKDQgxvjKox3iamkmGbtM0UhONoK8xWNacVHt4DQ8g9p4M0R4opb9iPCkXHrEMy5VO873l8H
	t/pFqJfkuO6KgQ6hkphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZSy-0006ZO-Iw; Sat, 25 May 2019 16:24:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSK-0005uG-F3
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id f10so4761318wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qbqoVQVB81rH9/Oh9EOj+HyMcRISA85POp2mDoREhbs=;
 b=IC/CSiPkuVdpssu8k6hyO+0c5RveetIZXR6bHj0clPiaSo481s8Kz0b35tw6ux0MM6
 XakvCZ0VqtyJsK2wvvw6/51opcLYyUBE0t03LlA4AyOZTtUaR/4H4kGNn7QMeVbWbfga
 4zwyJLg8jkYRqpHPaeAkbus2T76g3FRtO00o1vfPA0vsIxVmdeqMox++FmjjInLiaHF3
 7o3mqdOm+XSUdy32aAILd5079DyDQjnnFzQ09fOs2DzU/XHE5ADe+YbNIaDJjpMEnf0u
 QSdsmDXiS4kF0elymiH1UTbahwRbOka8I5kfz81Pb04JXXN74gcPlisFmeWeN9qWhhar
 dbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qbqoVQVB81rH9/Oh9EOj+HyMcRISA85POp2mDoREhbs=;
 b=kmzlC/J629GLCxBX4OK786EYKC/FbqEp0LqYHLbfDECaGpfiEh3wcROfi2JZy4U2kM
 6dUGtrwZ5Wc8JS1LPrybZ2tXsBpgO7BqfjdpBhewBSLiMtd7y+Wo7U953OhBbR4BM100
 P/h02TKSIKIJANtqQNEHh8qrCiCH/9f4+kOpjOYmt99dqamsl8M0GP3kjT/DFQG9XvWf
 BRtGS7NCbAs8P+eMC5zzrWmhqoFRPz1KFAAScgKx62Wd52DR9qNdQsslsvyIojGUnqCW
 wp4AXSseFBIwSM+1lzrtyIwf+jCSh534JSAGhrIazfZOYIJRtS8ZpiOVidNsZTVde81W
 9gIg==
X-Gm-Message-State: APjAAAUU2AaKdOVjnM1QRK4s/Jxw3yqf/JtX7Ej3mgy8d0Ykl7EcQHr8
 4552deOqCCq40PKD/mkppiA=
X-Google-Smtp-Source: APXvYqxTUPHfbkGRqrcv73CLbSTer8ARaAejduD0uldwBW1Mn/rySStC4X1Si4JaSs/8XWn7bL01tA==
X-Received: by 2002:a05:600c:204a:: with SMTP id
 p10mr4187874wmg.161.1558801414715; 
 Sat, 25 May 2019 09:23:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:33 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
Date: Sat, 25 May 2019 18:23:19 +0200
Message-Id: <20190525162323.20216-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092336_539499_7432D710 
X-CRM114-Status: GOOD (  15.23  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIGRpZmZlcmVudCBiaXQgdG8gZmx1c2ggdGhlIFRYIEZJRk8uCgpB
ZGQgYSBxdWlya3MgdG8gcHJlcGFyZSBpbnRyb2R1Y3Rpb24gb2YgSDYgU29DLgoKU2lnbmVkLW9m
Zi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBzb3VuZC9z
b2Mvc3VueGkvc3VuNGktc3BkaWYuYyB8IDExICsrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NvdW5kL3NvYy9z
dW54aS9zdW40aS1zcGRpZi5jIGIvc291bmQvc29jL3N1bnhpL3N1bjRpLXNwZGlmLmMKaW5kZXgg
YjZjNjZhNjJlOTE1Li44MzE3YmJlZTA3MTIgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9z
dW40aS1zcGRpZi5jCisrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1zcGRpZi5jCkBAIC0xNjYs
MTAgKzE2NiwxMiBAQAogICoKICAqIEByZWdfZGFjX3R4X2RhdGE6IFRYIEZJRk8gb2Zmc2V0IGZv
ciBETUEgY29uZmlnLgogICogQGhhc19yZXNldDogU29DIG5lZWRzIHJlc2V0IGRlYXNzZXJ0ZWQu
CisgKiBAcmVnX2ZjdGxfZnR4OiBUWCBGSUZPIGZsdXNoIGJpdG1hc2suCiAgKi8KIHN0cnVjdCBz
dW40aV9zcGRpZl9xdWlya3MgewogCXVuc2lnbmVkIGludCByZWdfZGFjX3R4ZGF0YTsKIAlib29s
IGhhc19yZXNldDsKKwl1bnNpZ25lZCBpbnQgcmVnX2ZjdGxfZnR4OwogfTsKIAogc3RydWN0IHN1
bjRpX3NwZGlmX2RldiB7CkBAIC0xODAsMTYgKzE4MiwxOSBAQCBzdHJ1Y3Qgc3VuNGlfc3BkaWZf
ZGV2IHsKIAlzdHJ1Y3Qgc25kX3NvY19kYWlfZHJpdmVyIGNwdV9kYWlfZHJ2OwogCXN0cnVjdCBy
ZWdtYXAgKnJlZ21hcDsKIAlzdHJ1Y3Qgc25kX2RtYWVuZ2luZV9kYWlfZG1hX2RhdGEgZG1hX3Bh
cmFtc190eDsKKwljb25zdCBzdHJ1Y3Qgc3VuNGlfc3BkaWZfcXVpcmtzICpxdWlya3M7CiB9Owog
CiBzdGF0aWMgdm9pZCBzdW40aV9zcGRpZl9jb25maWd1cmUoc3RydWN0IHN1bjRpX3NwZGlmX2Rl
diAqaG9zdCkKIHsKKwljb25zdCBzdHJ1Y3Qgc3VuNGlfc3BkaWZfcXVpcmtzICpxdWlya3MgPSBo
b3N0LT5xdWlya3M7CisKIAkvKiBzb2Z0IHJlc2V0IFNQRElGICovCiAJcmVnbWFwX3dyaXRlKGhv
c3QtPnJlZ21hcCwgU1VONElfU1BESUZfQ1RMLCBTVU40SV9TUERJRl9DVExfUkVTRVQpOwogCiAJ
LyogZmx1c2ggVFggRklGTyAqLwogCXJlZ21hcF91cGRhdGVfYml0cyhob3N0LT5yZWdtYXAsIFNV
TjRJX1NQRElGX0ZDVEwsCi0JCQkgICBTVU40SV9TUERJRl9GQ1RMX0ZUWCwgU1VONElfU1BESUZf
RkNUTF9GVFgpOworCQkJICAgcXVpcmtzLT5yZWdfZmN0bF9mdHgsIHF1aXJrcy0+cmVnX2ZjdGxf
ZnR4KTsKIAogCS8qIGNsZWFyIFRYIGNvdW50ZXIgKi8KIAlyZWdtYXBfd3JpdGUoaG9zdC0+cmVn
bWFwLCBTVU40SV9TUERJRl9UWENOVCwgMCk7CkBAIC00MTgsMTUgKzQyMywxOCBAQCBzdGF0aWMg
c3RydWN0IHNuZF9zb2NfZGFpX2RyaXZlciBzdW40aV9zcGRpZl9kYWkgPSB7CiAKIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc3VuNGlfc3BkaWZfcXVpcmtzIHN1bjRpX2ExMF9zcGRpZl9xdWlya3MgPSB7
CiAJLnJlZ19kYWNfdHhkYXRhCT0gU1VONElfU1BESUZfVFhGSUZPLAorCS5yZWdfZmN0bF9mdHgg
ICA9IFNVTjRJX1NQRElGX0ZDVExfRlRYLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40
aV9zcGRpZl9xdWlya3Mgc3VuNmlfYTMxX3NwZGlmX3F1aXJrcyA9IHsKIAkucmVnX2RhY190eGRh
dGEJPSBTVU40SV9TUERJRl9UWEZJRk8sCisJLnJlZ19mY3RsX2Z0eCAgID0gU1VONElfU1BESUZf
RkNUTF9GVFgsCiAJLmhhc19yZXNldAk9IHRydWUsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0
IHN1bjRpX3NwZGlmX3F1aXJrcyBzdW44aV9oM19zcGRpZl9xdWlya3MgPSB7CiAJLnJlZ19kYWNf
dHhkYXRhCT0gU1VOOElfU1BESUZfVFhGSUZPLAorCS5yZWdfZmN0bF9mdHggICA9IFNVTjRJX1NQ
RElGX0ZDVExfRlRYLAogCS5oYXNfcmVzZXQJPSB0cnVlLAogfTsKIApAQCAtNTA3LDYgKzUxNSw3
IEBAIHN0YXRpYyBpbnQgc3VuNGlfc3BkaWZfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiRmFpbGVkIHRvIGRldGVybWluZSB0aGUgcXVp
cmtzIHRvIHVzZVxuIik7CiAJCXJldHVybiAtRU5PREVWOwogCX0KKwlob3N0LT5xdWlya3MgPSBx
dWlya3M7CiAKIAlob3N0LT5yZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0X21taW8oJnBkZXYtPmRl
diwgYmFzZSwKIAkJCQkJCSZzdW40aV9zcGRpZl9yZWdtYXBfY29uZmlnKTsKLS0gCjIuMjAuMQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
