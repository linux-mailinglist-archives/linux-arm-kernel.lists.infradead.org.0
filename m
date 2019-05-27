Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A29D42BB20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BrF9/uZ+LytsugYMi/p1baJoo6bwk2qjsYyNdeRzL/w=; b=l/HMpG+2kaJns9
	7GBeZTwauT68lRZz/kJKyDJjgvYMu8+m4pLVNyHxU4xCj1MhmGlf1sFHnr51scU/BaCIXm18FlVT/
	BiJgjDiy56k0c/oaBNEIPfqAo/6bnXBiBQFHl7EW6HDbU/bx+BlAu813f7LUEuXF6WTArhaWCuLDF
	gW2WIl2zt1EXG5S6Wrd1APqWxwjk09MdKjIMLU20UaorWt3nTeoV/K2HIROb3yEFBEeuz79g3jIvE
	I5Vug1VZzVDbWou8T2S1Zz7fQyag50Re7WClDDyFRL40k99M8JfVSK4LyhH4DMYeezihhvetYj0+y
	8xMMzB91MwPxnBbqJEGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLxR-0003SM-1K; Mon, 27 May 2019 20:10:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwn-0002nn-Ra
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:20 +0000
Received: by mail-wm1-x344.google.com with SMTP id v22so531678wml.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wv4bRiRVjlotB3NJW4BQD8xcTUogsyFuw65oZfNvb1s=;
 b=psgmVbWcSlCI1+YNxxBbHm4Laul+Afg6UqNDgL6/++9kS667P0ea4J6kdRN5MJyZyp
 Y9XA+ZjsPBzbXsFrDMFZtdGdVsP0BQhcJB1LTxy1II8/8K7SjS97AMbgL6F7TJlgUieH
 cIKMyAUHumWxoz7j8JUMvw7FOa9AhQGdnotivIlitt6aH7z4CPJ1gslea3eeQjiR3dLt
 D2U8+gdYAeWrqVvEbaOYDCeuRbU7wBMcj4ZTD2Zi9nr4bhzkDvAW14S234U2a58G6snQ
 HWMc4xR3bTKVDmjHBdYWlUxnRlQdOLf1o8SSX26DlT/bkB/baJ5EuESmYzDDFeI9HTkg
 IA8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wv4bRiRVjlotB3NJW4BQD8xcTUogsyFuw65oZfNvb1s=;
 b=Aurqqv2ALCpAXtmy73HlKt/uf3O/wty6IlGl1+aql1wCTuWhnH7tTC6JuEfQJy6VLl
 4ODSK0n4MuATeDz/Tr6YJ6wCDZ8ycWLENA7HBRZX0geZ476bNefJrlGdGBVgbVYMDhXq
 oQZba3jApa7PQfe+IRVkg5TYC1cRhKvlMv4fs1sW4GNMlMQZSXs9pWy17JlK2ARrlik+
 823zPqUAbQY1TEsaSr4wHS57qti+D1cTLmOoVVcGW1xZOBKkWuba83OIzaaznq2S/iKU
 nrZIULPy/6WvlORCC4HxoEJrD3kd3ylGG6dnhxE9mYy6aM+8MESkbsNjKwFL6zPR+2XS
 7k4w==
X-Gm-Message-State: APjAAAWWAV4Q7OfNfsDk3Gu+2Jar7h8ZQgrkTS+/9KzGXHDV0xahMpvf
 o2QdH/pzZFd2iwsD+jh8xbA=
X-Google-Smtp-Source: APXvYqzRen9k8IsaoDFCRgz5uh2Kh75YVlp6HkmpKHkpJQcDv7nSUTkHyUNb9OYwV/fN7pzBgLzz9A==
X-Received: by 2002:a1c:f50a:: with SMTP id t10mr508352wmh.86.1558987816422;
 Mon, 27 May 2019 13:10:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:15 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 3/7] ASoC: sun4i-spdif: Add TX fifo bit flush quirks
Date: Mon, 27 May 2019 22:06:23 +0200
Message-Id: <20190527200627.8635-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131018_096591_6BF1864E 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
YjZjNjZhNjJlOTE1Li4wNDVkMGNjNGI2MmEgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9z
dW40aS1zcGRpZi5jCisrKyBiL3NvdW5kL3NvYy9zdW54aS9zdW40aS1zcGRpZi5jCkBAIC0xNjYs
MTAgKzE2NiwxMiBAQAogICoKICAqIEByZWdfZGFjX3R4X2RhdGE6IFRYIEZJRk8gb2Zmc2V0IGZv
ciBETUEgY29uZmlnLgogICogQGhhc19yZXNldDogU29DIG5lZWRzIHJlc2V0IGRlYXNzZXJ0ZWQu
CisgKiBAdmFsX2ZjdGxfZnR4OiBUWCBGSUZPIGZsdXNoIGJpdG1hc2suCiAgKi8KIHN0cnVjdCBz
dW40aV9zcGRpZl9xdWlya3MgewogCXVuc2lnbmVkIGludCByZWdfZGFjX3R4ZGF0YTsKIAlib29s
IGhhc19yZXNldDsKKwl1bnNpZ25lZCBpbnQgdmFsX2ZjdGxfZnR4OwogfTsKIAogc3RydWN0IHN1
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
RkNUTF9GVFgpOworCQkJICAgcXVpcmtzLT52YWxfZmN0bF9mdHgsIHF1aXJrcy0+dmFsX2ZjdGxf
ZnR4KTsKIAogCS8qIGNsZWFyIFRYIGNvdW50ZXIgKi8KIAlyZWdtYXBfd3JpdGUoaG9zdC0+cmVn
bWFwLCBTVU40SV9TUERJRl9UWENOVCwgMCk7CkBAIC00MTgsMTUgKzQyMywxOCBAQCBzdGF0aWMg
c3RydWN0IHNuZF9zb2NfZGFpX2RyaXZlciBzdW40aV9zcGRpZl9kYWkgPSB7CiAKIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgc3VuNGlfc3BkaWZfcXVpcmtzIHN1bjRpX2ExMF9zcGRpZl9xdWlya3MgPSB7
CiAJLnJlZ19kYWNfdHhkYXRhCT0gU1VONElfU1BESUZfVFhGSUZPLAorCS52YWxfZmN0bF9mdHgg
ICA9IFNVTjRJX1NQRElGX0ZDVExfRlRYLAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40
aV9zcGRpZl9xdWlya3Mgc3VuNmlfYTMxX3NwZGlmX3F1aXJrcyA9IHsKIAkucmVnX2RhY190eGRh
dGEJPSBTVU40SV9TUERJRl9UWEZJRk8sCisJLnZhbF9mY3RsX2Z0eCAgID0gU1VONElfU1BESUZf
RkNUTF9GVFgsCiAJLmhhc19yZXNldAk9IHRydWUsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0
IHN1bjRpX3NwZGlmX3F1aXJrcyBzdW44aV9oM19zcGRpZl9xdWlya3MgPSB7CiAJLnJlZ19kYWNf
dHhkYXRhCT0gU1VOOElfU1BESUZfVFhGSUZPLAorCS52YWxfZmN0bF9mdHggICA9IFNVTjRJX1NQ
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
