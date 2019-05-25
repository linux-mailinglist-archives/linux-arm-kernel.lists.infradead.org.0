Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B312A53B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nf2+wUbbvnJR3pfFc2yw1VYO4bl0yqxO/Q5sj8w9hQI=; b=Edx5/aEOaYgZiD
	3xqD7LASmIWMweWTqskLqltC7K+M7w7gLQ896fZF5BXsrrdyyPdruzVSKzWV1Yf9sTDOHlNKXoav8
	y4uKn3wNQuOawIQY60ewwIUCt3gAXRAuvtXC3fgudodNl6jo7B7Ff/j4eit+NHXeXeefJw4zU3USl
	hONmKGbPQBLAIBRw1fwNr6DIziqxKxuvMgiHGoATQbD6FIkj/nYkXyehNx4JGdW47KY/tQBI889Ga
	+CQL8tQo342rgh6QdB0lnSHugtILvaaBPa1C46h1K4JLuKFrNua+ffR/JXdRDl1W2Fe3Tt/4Ebx7K
	XlXtI4qb89enLVwVZpEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZSP-0005uW-7E; Sat, 25 May 2019 16:23:41 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSI-0005tX-EV
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:35 +0000
Received: by mail-wr1-x441.google.com with SMTP id w13so4443575wru.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bs0GZbXZnXWtuyaAPHUlYLzvVYGzvS4bd3eSLwNHTuY=;
 b=giSZXQt0MWlK2fHUjWgOUBvx8c/keasY+/8yTFoSbFYY9tC6K36oK4UShXl4+A3HX9
 Eiaxz8OwyLrYB2+rhcZ9ocu7QTj+KKenYUgfgK9wZdZzzwNnt10Wk9nr30mbXvXRCCwN
 BYqnXEqgr6uBUAtah3FOMG3ShB8A7Jg3bKJk4ZSlS15SBRzratMuquEAkFI59WrweZin
 u8Zbt27nMmkeP+73J2MIylL93doVtr/2IpdCEp3ICmqO//TPqcVOVWDP8d6x8Q/AZ/9r
 LUydzhApeB5QU785RgFXuxzG619sMvNO5ufYUPeiy0qBr/7XEsv8gQWfdQQnBosaauO8
 ePUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bs0GZbXZnXWtuyaAPHUlYLzvVYGzvS4bd3eSLwNHTuY=;
 b=cVWKH+Q3JotgLDXL2+gEtC7n5dXUqtcXcseyJDlLnHdSDC5ltXTmS2puM1SnxzfSyt
 IvvtgxZRyeHuRQ8UBacZBi4mFiyq26StmavHEe9ZgIZdIbBDF3SzQ91cBtGBJrYoB1qS
 7Dye27xmwuUr5m4atNEOvAZRIV4cTxNsBtGlgbGT7f9LYAc3FaqOw3beNKAtMXiocuX7
 DrY40PmazoRvtkIRtC82NZDcuhZMp+V2CL76Pvc9nrm+0m7pMRZm1R19wILmWnW1w0e0
 Q8FTKs5UEJQbqBYD0ix/xoMcgQgfa1opKK8gyuzKq2mIRTOzD9/G8Z/34c9DQ71Fqlhy
 FsHQ==
X-Gm-Message-State: APjAAAWfWMUROExaZU6dOFp1pqGcepDuj1YuwlYwfbfkuWWdO9KU4YpE
 kmBDkSfAlH3IMnXkzH3KywY=
X-Google-Smtp-Source: APXvYqyj8HVx5lOCz7RholqarzDrKbt7byE/t3isboLhVRwX4Won+3vr3HChJcAYfxYvT9D3qtImPg==
X-Received: by 2002:adf:fc4b:: with SMTP id e11mr4209008wrs.340.1558801412178; 
 Sat, 25 May 2019 09:23:32 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:31 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 1/7] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
Date: Sat, 25 May 2019 18:23:17 +0200
Message-Id: <20190525162323.20216-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092334_483127_B71E7218 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIFNQRElGIGNvbnRyb2xsZXIgd2l0aCBhbiBpbmNyZWFzZSBvZiB0
aGUgZmlmbwpzaXplIGFuZCBhIHNsaWdoZXIgZGlmZmVyZW5jZSBpbiBtZW1vcnkgbWFwcGluZyBj
b21wYXJlIHRvIEgzL0E2NC4KClRoaXMgbWFrZSBpdCBub3QgY29tcGF0aWJsZSB3aXRoIHRoZSBw
cmV2aW91cyBnZW5lcmF0aW9uLgoKSW50cm9kdWNlIGEgc3BlY2lmaWMgYmluZGluZ3MgZm9yIEg2
IFNvQy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpBY2tlZC1ieTog
TWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KLS0tCiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3VueGksc3VuNGktc3BkaWYudHh0IHwgMyAr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3VueGksc3Vu
NGktc3BkaWYudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3N1
bnhpLHN1bjRpLXNwZGlmLnR4dAppbmRleCAwYzY0YTIwOWMyZTkuLmMwZmJiNTBhNGRmOSAxMDA2
NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3N1bnhpLHN1
bjRpLXNwZGlmLnR4dAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291
bmQvc3VueGksc3VuNGktc3BkaWYudHh0CkBAIC03LDEwICs3LDExIEBAIEZvciBub3cgb25seSBw
bGF5YmFjayBpcyBzdXBwb3J0ZWQuCiAKIFJlcXVpcmVkIHByb3BlcnRpZXM6CiAKLSAgLSBjb21w
YXRpYmxlCQk6IHNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZzoKKyAgLSBjb21wYXRpYmxl
CQk6IFNob3VsZCBiZSBvbmUgb2YgdGhlIGZvbGxvd2luZzoKICAgICAtICJhbGx3aW5uZXIsc3Vu
NGktYTEwLXNwZGlmIjogZm9yIHRoZSBBbGx3aW5uZXIgQTEwIFNvQwogICAgIC0gImFsbHdpbm5l
cixzdW42aS1hMzEtc3BkaWYiOiBmb3IgdGhlIEFsbHdpbm5lciBBMzEgU29DCiAgICAgLSAiYWxs
d2lubmVyLHN1bjhpLWgzLXNwZGlmIjogZm9yIHRoZSBBbGx3aW5uZXIgSDMgU29DCisgICAgLSAi
YWxsd2lubmVyLHN1bjUwaS1oNi1zcGRpZiI6IGZvciB0aGUgYWxsd2lubmVyIEg2IFNvQwogCiAg
IC0gcmVnCQkJOiBPZmZzZXQgYW5kIGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXIgc2V0IGZvciB0aGUg
ZGV2aWNlLgogCi0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
