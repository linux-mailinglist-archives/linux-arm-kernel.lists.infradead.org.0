Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA901108461
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 Nov 2019 18:31:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gjD2fmClQOfo8vhqJDdtrH0/2qIzFRZylyGkZtN3mPI=; b=usHfb0KTQjGRHz
	xUqa02suRy14eyYSzYEQcHjk0fW4S6sGg1x2zkqqA/Gl59RG31bvinIi/6O0SF/MJ9t3pFBsv4YGl
	4iZ2xBhvXsJuYZdszBxN1J9snxg0mfxIiA66T75hxjwfTvfT55FrAR9692zinc1yOV1Lr4coQO9B5
	A1xBJBii3UTZYfPFBxPJLZw6YrnmSX4MIRQfL3pg7GyfbGDBpcouNnMfaOUFevrTfJ+0Hyx18/z60
	4ePUFGb43dNj0aOtXxJJxInv0cJKF9iLvJj9wv3pWdZqr7m52Q50zi9SCNtra8/EXLNXfy5LXHKtR
	etgKEEnrSLYKiKUaduzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYvjh-0007As-NO; Sun, 24 Nov 2019 17:31:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYviG-0005zH-Hg
 for linux-arm-kernel@lists.infradead.org; Sun, 24 Nov 2019 17:30:22 +0000
Received: by mail-wm1-x341.google.com with SMTP id b11so12697566wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 09:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sjixo6ht7XiGZb8/LNb/8Q06mHVbU6wMmziG5mNnwig=;
 b=OYiNMLLI89jLaAYadwdPkm8CYT0XjYMPJ5j0/PepSiMjSKL7Ho/STOqUc4r2yA8SgD
 2fSXE/uyQsx58Q93mYXDEGPk1joPHtLRGHOdJ4FeMWPiJ/Mz5s+nNY9k8w34jfVOHDB2
 dKBcOKD5ar5yZfmeIF5ega5MCRvWQ5a7ma73aWzbjbCo7U5UqtEbi7cah2IIH2JIpsp0
 wW8s/eHJzP1xxh3uz3xN/wK1V4wtL1z47YoZmCPDHOu7UI+eVUpKzClJ/LHqjFYekFJ4
 93YidniTK30G3JkwscNuRpPRJKI3jFrQ8s8Z0PY3UkDKY2+izKO9Bf2LekGq7zrBjrRG
 C00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sjixo6ht7XiGZb8/LNb/8Q06mHVbU6wMmziG5mNnwig=;
 b=r/jVjVYamUKF8VX0ttKBp8Zeuos882NTxfMUOrDn2IBJcUIk0l9J0t6/g5iXGJgacn
 NrhgEqc5L08UtBtsxibzCXTK22dsW2XJQw93j/G9yRZQ/ZRU9fcmeAQRvuXpv9FvUAcC
 eZFszpFywYyGknmIf0K+WLrBkbsL6Fc4cq+niHs/vSK6KS9wxI9e80lb4SRwkCKA6txD
 DeFvmU28Kt/Fuyq2SYLK4MpsTSqFjTcrEBNxgzEB1vVg+j9Z1cv6liFqhNKOpa8ffvZn
 U9kxro4tjHoyZvPzW03gxaHVpZoOWxtoEjVZFi0Z452UNgXAoBA1qTxTlyS5IDwAEzgT
 1C2A==
X-Gm-Message-State: APjAAAXRJp/wsuVjRSNqF/CmsDSiCgRd0Yza2vEKBc9FV1L4s3EGGKIr
 CO/O4W19i809n5DX0wJyNhQ=
X-Google-Smtp-Source: APXvYqzdwq6I0QuiWDS1GB2PvZLPk9+ENLHHn5zVHJOxjm5uJwP+lPkagFhiQeWjWwyFSGT7X09ZbQ==
X-Received: by 2002:a7b:c1d3:: with SMTP id a19mr6652300wmj.127.1574616618566; 
 Sun, 24 Nov 2019 09:30:18 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id n13sm5537275wmi.25.2019.11.24.09.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Nov 2019 09:30:18 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v9 6/6] pwm: sun4i: Add support for H6 PWM
Date: Sun, 24 Nov 2019 18:29:08 +0100
Message-Id: <20191124172908.10804-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191124172908.10804-1-peron.clem@gmail.com>
References: <20191124172908.10804-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_093020_957975_90A5D0E9 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
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
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggMDdiZjdiZTYwNzRiLi5jMzk0ODc4
YzdlNWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0zNjAsNiArMzYwLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3VuNGlfcHdtX2RhdGEgc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7CiAJLm5wd20gPSAxLAog
fTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSBzdW41MGlfaDZfcHdtX2Rh
dGEgPSB7CisJLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKKwkuaGFzX2RpcmVjdF9tb2Rf
Y2xrX291dHB1dCA9IHRydWUsCisJLm5wd20gPSAyLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLApAQCAtMzc2LDYgKzM4Miw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjRpX3B3bV9kdF9pZHNbXSA9IHsKIAl9LCB7CiAJ
CS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAogCQkuZGF0YSA9ICZzdW40
aV9wd21fc2luZ2xlX2J5cGFzcywKKwl9LCB7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIiwKKwkJLmRhdGEgPSAmc3VuNTBpX2g2X3B3bV9kYXRhLAogCX0sIHsKIAkJ
Lyogc2VudGluZWwgKi8KIAl9LAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
