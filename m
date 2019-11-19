Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C4C102B33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 18:55:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voR4kfXzLS0sKg5Mxs48oj78v1O78KCz3fm48Vxa5Gw=; b=CL84+7aITvTH4f
	TCYo5E32XNHO9WvD8E9YPuSOzxgz42SYOeJwjlBOBIgA9ONuKrf8dGvPRljPIPMvBkZM51i05u7lY
	K0FOCq5GHzc0yjPm+zhyg685BgdjoG5YPBHQdZ0fBo/74ommqy/WuZAAVhCDJaJIEVXWqJcCgCmAv
	wRkScc57CfddxHvc8jOZ4aqQWjjLvpht/lp1Aw6ZmlgXWGkrJuIBNNYGFFsiivZNoUW6lB3+P9Er3
	QtVtpiLMSPjgRWc62kNFbtMvgen0Yrus/mD587HjUE1VUixcox5v4RhdewFikzAWhw2NGvvFgNE47
	y42INHjqs/hPKs+JmVdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX7ig-0000Re-Q4; Tue, 19 Nov 2019 17:55:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX7gw-0007Il-2K
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 17:53:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id a15so24943608wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 09:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z3PWy3cFb/7J+Rxg3fcaYJEk3LUN9QrWLTJanLEpmxI=;
 b=DPEzAa9dDKZijZEPvA5U4LcSnJt1I7drAcJulmSMy1itrJeOnhFVyrCGbKl9tUirwr
 vA3/hbujfVEWODDrFENXzyon245hcR7TyW+KcKVjIsrWiNLHAbDdWkXGG9VvSvgOmkOn
 SWKHz0IC5bsJ/g6JEVjk+3J2C7DLYCz2LLlZm2inFP9G1PMXaOsHDMWMZ55E+U+GDyA/
 WDOioQzYNeUq+tL+dbDvBUhZrjzuE4xrhcZJ82cSZBllE23WL/WgV66UajHwMuek25Ov
 JHQKaHWietSyfJKnCtHe8evfjsh0qUj+QB07rJj+eTipwYci89wXeztOxwVx4wcGaS3e
 DfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z3PWy3cFb/7J+Rxg3fcaYJEk3LUN9QrWLTJanLEpmxI=;
 b=b5qvCowGyqsEIoM5/Abkf9vUuEbvyDQFhUrN84pNum7Sid9QAFOzp3HWI+bnYa+jUW
 /FFQyMNqyr2sMTQh/RRIgtlSzT4uqmP2B1jqOgdUsKlDkHOyBYRoUnFxSL8Bphms8p1/
 NQyaP3CcU1x9NgkLmZDbQJlBd8RkgGiy9/PiFzjLqJmz8gZoG2ZsjYR+rgbqZ55pFzYB
 Hn64Y0kLBlR7z9O3MqrVMr+HZPQbesdeQsdREyyCedSwotnId+4LPXOCPLiJavh3Lqv3
 KUvarp888XbGYoM3QrP6b5JQF5pcWHBUA23Dg80BsxqNEq1/ryw9B4dlzWeXH0/F+sKo
 1sjg==
X-Gm-Message-State: APjAAAXul0oYvBAGAB40owKYMGVhkAbRMfQoFfHYKYeMNXbQFNESX/BM
 wg8EXT0WiGOZ1fzrMZxaqBs=
X-Google-Smtp-Source: APXvYqyGK+paDQJBj/aZuJGWWDV/yTqzAbBw+4nw4WGno/HQXDU1ZIn17ECgRF9Cku3y0z8J113iwQ==
X-Received: by 2002:adf:ef91:: with SMTP id d17mr12486153wro.145.1574186008686; 
 Tue, 19 Nov 2019 09:53:28 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id l13sm3772618wmh.12.2019.11.19.09.53.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 09:53:28 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v7 6/8] pwm: sun4i: Add support for H6 PWM
Date: Tue, 19 Nov 2019 18:53:17 +0100
Message-Id: <20191119175319.16561-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191119175319.16561-1-peron.clem@gmail.com>
References: <20191119175319.16561-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_095330_113983_84F3C6F3 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKTm93IHRoYXQg
c3VuNGkgUFdNIGRyaXZlciBzdXBwb3J0cyBkZWFzc2VydGluZyByZXNldCBsaW5lIGFuZCBlbmFi
bGluZwpidXMgY2xvY2ssIHN1cHBvcnQgZm9yIEg2IFBXTSBjYW4gYmUgYWRkZWQuCgpOb3RlIHRo
YXQgd2hpbGUgSDYgUFdNIGhhcyB0d28gY2hhbm5lbHMsIG9ubHkgZmlyc3Qgb25lIGlzIHdpcmVk
IHRvCm91dHB1dCBwaW4uIFNlY29uZCBjaGFubmVsIGlzIHVzZWQgYXMgYSBjbG9jayBzb3VyY2Ug
dG8gY29tcGFuaW9uIEFDMjAwCmNoaXAgd2hpY2ggaXMgYnVuZGxlZCBpbnRvIHNhbWUgcGFja2Fn
ZS4KClNpZ25lZC1vZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5l
dD4KQWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+ClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggYTFkODg1MWIxOGYwLi42NDBmNjM0
OWUzNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0zNTgsNiArMzU4LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3VuNGlfcHdtX2RhdGEgc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7CiAJLm5wd20gPSAxLAog
fTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSBzdW41MGlfaDZfcHdtX2Rh
dGEgPSB7CisJLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKKwkuaGFzX2RpcmVjdF9tb2Rf
Y2xrX291dHB1dCA9IHRydWUsCisJLm5wd20gPSAyLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLApAQCAtMzc0LDYgKzM4MCw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjRpX3B3bV9kdF9pZHNbXSA9IHsKIAl9LCB7CiAJ
CS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAogCQkuZGF0YSA9ICZzdW40
aV9wd21fc2luZ2xlX2J5cGFzcywKKwl9LCB7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIiwKKwkJLmRhdGEgPSAmc3VuNTBpX2g2X3B3bV9kYXRhLAogCX0sIHsKIAkJ
Lyogc2VudGluZWwgKi8KIAl9LAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
