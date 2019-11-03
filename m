Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56970ED4B6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:35:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhvbts9qpRNp4fASTDrP6um/xWzxRYhiTCw2OzErR7g=; b=B5Iuu+Fyr1vTrV
	Vf+P69cxH7IxNhRV/tljHMIIoJdIsIS9Ig+SoE5nnGdbyyaMaQLkr4IFjRv/8bo8A66HuNHKWavCz
	tpBeDXLjRwZ58PXJbeZTAPrMJEB9OXsUn07jUmQfRjI6H8EdWNVeq8DR367QUwD1jH/1+eJsXTfVk
	n04BqxQitp7SuqQS2FYhURzYIQYOVXhuexGsgxx2Exutn39ffFq7u2ZlmMDgGLLA8YIoN9moIphd1
	CMwTvo/6VQSN6peaDKy+q9T4d7x8zIpSyPV44eMFILtZN6E323zl1yrmrKPUihW0SMn0ABpVwMMkR
	E0rJbqXuU+Ujryqu9GZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMbF-0000Tn-Gl; Sun, 03 Nov 2019 20:35:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZP-0006Fn-96
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id m17so5251713wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QUeiGo0R+gRoTCDPxtQNMpLNs+clHYgzXZYMbnUhgxI=;
 b=vgfsoFmqWnYJGwMjsGV2Odt0D8NSTyG9E+5hCSheKsanHvWu07coSlIDscsj9Sh9CM
 j2JrSNwXf6QPE0WgMOwP8C5DU2JfQbQcRaW0E2XS4bUeG1ack8vaIlZVo7aosx07RON7
 FHrUSNH2pTMmd2h3Qi6En28Z/AzaaoODD2dp1CVpSNBf4t8iVClmznw59w3XsXt0U/gv
 NOngc76ihhicU73cnbLpZ1nI5yVwcGil0Kzjv2dyscuXOZaOL5L5hXwrpguU3MTAB/Jm
 E/Sg6NfEywGWD3HuaMaQyiC+lhoRdfizHMGUDYOhqINyiCgwXXCzjxPkLimcj/7J1Gmm
 8izg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QUeiGo0R+gRoTCDPxtQNMpLNs+clHYgzXZYMbnUhgxI=;
 b=m24Xuh/WGPMHQGFrETZe1khxcXlgtMe98jz2Z8v3pWTAsjNOGyfjAvgJUPCQLB/+8i
 +9mEiM9vkYL3FKED0P5BuePzs4yRDMjfbhtaRlulH9djTOBxSvqfkWz/55skHU7dwTas
 z93vEDxZFge+RGSAeZYdDo3NS0D7kPeBvK1c3v7UunBTNHQOUwgbW2JLfzd5XGOGsRUr
 Vc66HgouBwIitFgRrK3Fz40P+wVBHoAa74SniFGUuZcKeL1LRFC/9X8dwkXM7RH4ZL0D
 la3MYHE+bikbhSrvwOzXkHCp7zIjOqYLbvCXEKgOXpk21uYbiNN1E2WjuhHTxiHPdejx
 z6rg==
X-Gm-Message-State: APjAAAU+63bYLTOx8lyUzBMm4K5LwCzJaFZHmIeL0Zjpdh0KcUC2uf4a
 6CS3jckNimcmdt5UzE4j0PM=
X-Google-Smtp-Source: APXvYqwmgKG+INCrPX13UEFFneIbv5IIAxc4giEnGPO8aDGbsi1UsyRGszhDvwR6s3IiltSpLgyEYg==
X-Received: by 2002:a05:600c:22cb:: with SMTP id
 11mr6327398wmg.117.1572813230261; 
 Sun, 03 Nov 2019 12:33:50 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:49 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 5/7] pwm: sun4i: Add support for H6 PWM
Date: Sun,  3 Nov 2019 21:33:32 +0100
Message-Id: <20191103203334.10539-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123355_372328_1DFD1C8F 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
dD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4K
LS0tCiBkcml2ZXJzL3B3bS9wd20tc3VuNGkuYyB8IDkgKysrKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgOSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMg
Yi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCAyNDQxNTc0Njc0ZDkuLjBjY2M5M2NlMzNm
NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKKysrIGIvZHJpdmVycy9wd20v
cHdtLXN1bjRpLmMKQEAgLTM2MCw2ICszNjAsMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40
aV9wd21fZGF0YSBzdW40aV9wd21fc2luZ2xlX2J5cGFzcyA9IHsKIAkubnB3bSA9IDEsCiB9Owog
CitzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHN1bjUwaV9oNl9wd21fZGF0YSA9
IHsKKwkuaGFzX3ByZXNjYWxlcl9ieXBhc3MgPSB0cnVlLAorCS5oYXNfZGlyZWN0X21vZF9jbGtf
b3V0cHV0ID0gdHJ1ZSwKKwkubnB3bSA9IDIsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBzdW40aV9wd21fZHRfaWRzW10gPSB7CiAJewogCQkuY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNGktYTEwLXB3bSIsCkBAIC0zNzYsNiArMzgyLDkgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCX0sIHsKIAkJLmNv
bXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLWgzLXB3bSIsCiAJCS5kYXRhID0gJnN1bjRpX3B3
bV9zaW5nbGVfYnlwYXNzLAorCX0sIHsKKwkJLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUw
aS1oNi1wd20iLAorCQkuZGF0YSA9ICZzdW41MGlfaDZfcHdtX2RhdGEsCiAJfSwgewogCQkvKiBz
ZW50aW5lbCAqLwogCX0sCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
