Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C364F427C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dzvxGXqgi5+tnK4cjEhdsTmSafY7+kR3XQ2pm6WlvY=; b=UxlIGSiELG9wF8
	93HERmOXqBa3Zkpa9BVrdaZCLdaFtioZFP9EDumiryiJXEyLt6wSb8RoGnRrhv1q0UG63FxEQudg6
	mcuBs7x97XqNaH2ZaFrDhZ4g3uyFWf4ERzk+n1FvxHIOfub1EDMl+WCzD39QzH4T020b7CXMLyiBv
	7qXGn9XwGZeMrUpOzCsZGJ3WZjX9OiTQ/s/H8kb0mCTT//x907PALBbIfSbxJGCEY1g4WQ3Px5Ztx
	YQc6H4bucKO1MKxz2AnSTx+o2Bs4auSpqbgM00VgmHsqfgnNWQB3Z/NyKIvdJxtEqgko+J48zCoHh
	RZPGhmshknXaiNAh4umQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzun-0006MU-10; Fri, 08 Nov 2019 08:46:45 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSztb-0005Kc-RZ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:34 +0000
Received: by mail-wm1-x341.google.com with SMTP id q70so5277033wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R2H2SvNfp2D1pWuVIAXfuUZmaanE3ag429BW1Qs5Xbw=;
 b=l7g2WJEpz9iGWpW4GTr4NP4iWFjfeqIW/bvPcR3EzXT2ZRovXiQKEnOhFWbdCJXCxk
 Iz2ZpqyTGYXS9YGss2IsRNMUjehpu59CVhlJ5oLvIHrCnAWn+z+hav9dakiqTp43ILcn
 /8HOFk22TZhhXrZ0AY5tdwQvrF3pNUeVis/lWQzmJxGS9gbhAtpmq/RJIFEfNjeC+K3L
 3PUpygxp1f49wq+iE/Ygu2Hv8TR5hQVWalsNamPIhh2ikiGMmYEOJ4g4JePT8KBF7n7q
 8poH1me3sjiJpA62sJOTO/xoo4FuCUtcPWlQCHb2xPf65p3lVNY9C/egXNNNerIfJwWw
 S3+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R2H2SvNfp2D1pWuVIAXfuUZmaanE3ag429BW1Qs5Xbw=;
 b=JFhCecPHGLZnmE8+FJiKFM5hX9+KDDOfWyas2OHCg+CCL48BYd6kgmrVKkWaslUqy7
 JiACOvCZN3VUQrjXzf0KuwLy2Tu+l7AJwOz1xi2T2rvLgwyWbobDqR1SJ1WOFBmiLzD2
 dkPvBaZfwzM5ysMrKuRirBtI8WfgCwHhghcvdXRCW4CqR8SAGHygh9akKmHfF9WEVqo5
 z6INgZmoZ2Kj3nJPpsEkezdVIHwAjV9ECW2LL7kvlbYsMMrHWNWwo8Ee718LyrCfN6FV
 MiZ6/AjVURiOlwxuflTpsBYVgduHdRidBmtHLaP636I+E3ueGBjPS/EF8+tJlVQ6cBqE
 kD3g==
X-Gm-Message-State: APjAAAUSWyAhsv3u6lCQTiGdvllpV7mM0xLX/+FulE8jaYQ6SYfvangs
 cVwjl88iOyWgsSIXOr7Nv+s=
X-Google-Smtp-Source: APXvYqyXzyJC3Dq6/PPn4+ahFI8wCQAvazATqLEj08DnRqbjTFB1hb1Zf/mNsFjSrGyw/2NztoTOgA==
X-Received: by 2002:a05:600c:210c:: with SMTP id
 u12mr4568420wml.49.1573202730371; 
 Fri, 08 Nov 2019 00:45:30 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:29 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 5/7] pwm: sun4i: Add support for H6 PWM
Date: Fri,  8 Nov 2019 09:45:15 +0100
Message-Id: <20191108084517.21617-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004531_907122_94875927 
X-CRM114-Status: GOOD (  13.12  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
dD4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4K
QWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXgu
ZGU+Ci0tLQogZHJpdmVycy9wd20vcHdtLXN1bjRpLmMgfCA5ICsrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcHdtL3B3bS1zdW40
aS5jIGIvZHJpdmVycy9wd20vcHdtLXN1bjRpLmMKaW5kZXggOWNjOTI4YWI0N2JjLi5hNTc2Mzdk
ZTQxYzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcHdtL3B3bS1zdW40aS5jCisrKyBiL2RyaXZlcnMv
cHdtL3B3bS1zdW40aS5jCkBAIC0zNjcsNiArMzY3LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
c3VuNGlfcHdtX2RhdGEgc3VuNGlfcHdtX3NpbmdsZV9ieXBhc3MgPSB7CiAJLm5wd20gPSAxLAog
fTsKIAorc3RhdGljIGNvbnN0IHN0cnVjdCBzdW40aV9wd21fZGF0YSBzdW41MGlfaDZfcHdtX2Rh
dGEgPSB7CisJLmhhc19wcmVzY2FsZXJfYnlwYXNzID0gdHJ1ZSwKKwkuaGFzX2RpcmVjdF9tb2Rf
Y2xrX291dHB1dCA9IHRydWUsCisJLm5wd20gPSAyLAorfTsKKwogc3RhdGljIGNvbnN0IHN0cnVj
dCBvZl9kZXZpY2VfaWQgc3VuNGlfcHdtX2R0X2lkc1tdID0gewogCXsKIAkJLmNvbXBhdGlibGUg
PSAiYWxsd2lubmVyLHN1bjRpLWExMC1wd20iLApAQCAtMzgzLDYgKzM4OSw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHN1bjRpX3B3bV9kdF9pZHNbXSA9IHsKIAl9LCB7CiAJ
CS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1wd20iLAogCQkuZGF0YSA9ICZzdW40
aV9wd21fc2luZ2xlX2J5cGFzcywKKwl9LCB7CisJCS5jb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIiwKKwkJLmRhdGEgPSAmc3VuNTBpX2g2X3B3bV9kYXRhLAogCX0sIHsKIAkJ
Lyogc2VudGluZWwgKi8KIAl9LAotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
