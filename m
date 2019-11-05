Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89F6EFE31
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:16:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQkhJLoFBhjLN/xnRh8V+X+jtNH5eG52nKYamN1rYWM=; b=izNl1uQEgXMZCc
	QP8VcFV4xL0xOSmhzM7o6BsuHgDZvyAOk5cAIwx/9RLRnIdM7ggG+MBBAD3ju7F0uShLe+HJ9LVrm
	jNlkLNKyZa4pS2vhxYJCfLPz1u5GF1w6qQMOvnF5jFJ3bVbrXqBX77hSLwdL05OHj2xnSzuoHXZqP
	3X78bw9YR2DE2gCSTafzlSsBrZBxpzx8Q6HZlpEqqP4yJxMQgUIb1oWeXNdHgewUiJYMhN0FsuE/n
	wJQn5RQZ49ZmHZZJFmZvcdJ6kUW14P0BHQCoqnFvGsa/vWI0jWNRkyD+Z3CoUPthIszVyzrT3dTIZ
	cROb71ABHuq3vL23EkiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyh7-0003Yp-R1; Tue, 05 Nov 2019 13:16:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyfq-0001ao-5p
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:15:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id 6so16513460wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 05:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/Vnt9sMCBMLu8w8+z/tM0UPoRwgCIImfZjdha8S2Hvo=;
 b=fFmrMG6z+heryOiIoZe22e7Ay6QaIMDoQ0lyGyLwxhXc2kC2+1LNe9PDmqLmvWhL38
 DImcPUDlCRtykfFdC7ZOrE4liyy2pa8B8Zs6gg/W2bPebCmf9hgzKKbScLOKbC/umovX
 ItceCkYzR5FHLb8XFoMdOb5kcUbARO0Wd04P9JPQ7JLTGeYg6H4VBWdYpA9m95DupPVn
 Dgt8QMRqQfADfjUxcZu+HjCw4zCl0aBRBeGIcKx1uJ/K6jSj7RayNOXCqFAy7U8SjsgE
 qmHffAidfGrypuhcF2qK0dut6UyFyrwDX6ekEBIH9pg0D/PLFSssRbtWvtHH7Juy2ROT
 ypIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/Vnt9sMCBMLu8w8+z/tM0UPoRwgCIImfZjdha8S2Hvo=;
 b=YNyFnMXXbZOMIL2xDsM4I7PNQlQVMpG8d8hswhGi2zdsd0i9hmCoWXuXrvAiVc7i+5
 XPS2aYPW0AHikFTjjGMd5wUv/G9Y0Tewfoa8AxBIbeAMoY7B2Q9pd31B2p9wtPcK2eTg
 V6ZG9wS4GxfDDYswATh3eXUM4kkVHGaIVdKOJfSQn1uEOt7A6Ir6/3eVNVuMBIQNwJ7E
 cuvBcnXopfSzgOb1f2gM4Utx3xqHxRuLaBL5u44+/XCmQjfWv3rSsuPhIRKTUcsJ2GPn
 2mrjmOi8T1PkqBANhg2m0FPQug6fh9P+xxpJ083pUopGDbCFEY7/xdGvXLdpRvc/Cx/9
 /hLQ==
X-Gm-Message-State: APjAAAUaPjLnG7QF3HubzHdy4ByZ4yjNZ7fe5fMYQQsuyfoW76VtdYeh
 L7g3z83Te5XoKR1ljLlcenI=
X-Google-Smtp-Source: APXvYqy7cIzX7d3Z3MnPrxaP5dgDyUpjHytLsGWwqekG/5Gcc7AIElqdEyNi7FWNrf9kuBGftMxF7A==
X-Received: by 2002:a1c:453:: with SMTP id 80mr4274482wme.5.1572959704769;
 Tue, 05 Nov 2019 05:15:04 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id a6sm13549920wmj.1.2019.11.05.05.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 05:15:04 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v3 5/7] pwm: sun4i: Add support for H6 PWM
Date: Tue,  5 Nov 2019 14:14:54 +0100
Message-Id: <20191105131456.32400-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105131456.32400-1-peron.clem@gmail.com>
References: <20191105131456.32400-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_051506_287853_2D72593A 
X-CRM114-Status: GOOD (  13.10  )
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
Yi9kcml2ZXJzL3B3bS9wd20tc3VuNGkuYwppbmRleCA4MTBhYmY0N2MyNjEuLmUyNTdjMWIxZmM2
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKKysrIGIvZHJpdmVycy9wd20v
cHdtLXN1bjRpLmMKQEAgLTM1OSw2ICszNTksMTIgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40
aV9wd21fZGF0YSBzdW40aV9wd21fc2luZ2xlX2J5cGFzcyA9IHsKIAkubnB3bSA9IDEsCiB9Owog
CitzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjRpX3B3bV9kYXRhIHN1bjUwaV9oNl9wd21fZGF0YSA9
IHsKKwkuaGFzX3ByZXNjYWxlcl9ieXBhc3MgPSB0cnVlLAorCS5oYXNfZGlyZWN0X21vZF9jbGtf
b3V0cHV0ID0gdHJ1ZSwKKwkubnB3bSA9IDIsCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IG9m
X2RldmljZV9pZCBzdW40aV9wd21fZHRfaWRzW10gPSB7CiAJewogCQkuY29tcGF0aWJsZSA9ICJh
bGx3aW5uZXIsc3VuNGktYTEwLXB3bSIsCkBAIC0zNzUsNiArMzgxLDkgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCX0sIHsKIAkJLmNv
bXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjhpLWgzLXB3bSIsCiAJCS5kYXRhID0gJnN1bjRpX3B3
bV9zaW5nbGVfYnlwYXNzLAorCX0sIHsKKwkJLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUw
aS1oNi1wd20iLAorCQkuZGF0YSA9ICZzdW41MGlfaDZfcHdtX2RhdGEsCiAJfSwgewogCQkvKiBz
ZW50aW5lbCAqLwogCX0sCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
