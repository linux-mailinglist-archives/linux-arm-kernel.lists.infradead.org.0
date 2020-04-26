Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C5F1B8FB8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=im7uCSkeZ/YZDqhSr/z4GH8jIY53IP/4dsLZojPf3TA=; b=EZgB6gzbWLUskS
	tDgVMDogwGdzN8hiOXuKkRmTPGN5LfRn8tgk5IHkiQ2Y/mgi1nwmNyNFrG+dwUQo9CShgtNa7krwC
	L9DlapulkApuWV/4AoM0NzXzwCoveCh+SBxgmQ6MUNKw4zdr2KpSb7DYb80AyYHYHkPfPGqFOkUNx
	7Uog4j1nyObqqjFfBSeDwHz4OLNPv1q6XrpT0VvfUK7fMW9jfYCu+VX1uYlqdwANXpLwTEZXDDJcE
	rDaLH1mJy4OwVfF0FO9RTUfIGHJ5t8N7Nap0jlZMAnEzSkW7gcXCMvH8z0seIMRrXU0IoCJOm6I+W
	HTpfIN60RGtL10CAxqWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg3x-00063w-Ge; Sun, 26 Apr 2020 12:07:09 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1o-0001y3-AU
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id d15so15492170wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z8FDkpOterxD+ozyNdLEoNF3qT9jBBj9bIEzb2R8YME=;
 b=fj/j+alN0ho486l2Xz+rdD9b30m8p8mXtuFuh2lwyX8YqLrZzmlPAFICA/fEmYP9up
 txwyM/no0xzoHKZv8vLBqLNm0L6ZjHdTJR567yserWGOboO5uoweSdKKhCu1O35jbgQw
 4/HD6uzHbX7eTVLyX7mZoqMK9hJYBOOs7EtR1EPQz+n08DG2hxoOxXKL4WTopWPRs+rk
 fcbglCm54D1DlxcBAm1/WtqtWXIqXUSvWylf2MtfJN9xnJs7FUqIxGqTdUX2JQNBKrNT
 gm9wqwGlHHvSd9dqp9grtSLZbWRl48ZqdQhVTvWrogeXsw5zHtGS050Fux8AsP3VCx/m
 Ec1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z8FDkpOterxD+ozyNdLEoNF3qT9jBBj9bIEzb2R8YME=;
 b=qS5N6pMBG7mdjW6J95nIJS83hpJAZKptHmT/XJDHa0fAZjztzwH45Wymo8D1nS8Izg
 W2c1Eb9mKlXOkc3lgVoMPrZz9McdN6TrbVox4+PLFW+Gq/2f/IGXrzGOSNPnH1jCkyWv
 w7iat3kg8VyZ48AhqFShsmykv9Ak4yHYl7aSH+VH2yCBfzY2lpgDJIiJZdOkQpZEsO/i
 n+JXQ0qITgjZT6tzAe+DVaFAm2QpC+so32H2TqSn6IcaWQbPa71Mmpjn2ll2qz5WjyTc
 Zvki3ul2yUBDwQrQDXb8g/FH2dtKNQd78PVCYe/dfeOYlsaX0DanaZ2ATuqlofdrH7N8
 B/6w==
X-Gm-Message-State: AGi0PuZECumei4tuHHdz3ab1VYr7VTgvwkQpVTWGNdhWdEapMChCweAH
 MO4uCORBr+KvfggcE52LK5g=
X-Google-Smtp-Source: APiQypJX89nzq607NY5Wjke/a1jEcpgbysZ4fzF+10u5wlKe8WSHjdGr0Jt93SXlggAfwNVrkI4RBQ==
X-Received: by 2002:a5d:6ad1:: with SMTP id u17mr21231497wrw.170.1587902694276; 
 Sun, 26 Apr 2020 05:04:54 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:53 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 7/7] arm64: dts: allwinner: a64: Add HDMI audio to Pine64
Date: Sun, 26 Apr 2020 14:04:42 +0200
Message-Id: <20200426120442.11560-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050456_375661_915E03B8 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpFbmFibGUgSERNSSBh
dWRpbyBvbiBQaW5lNjQuCgpTaWduZWQtb2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVy
QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdt
YWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LXBp
bmU2NC5kdHMgfCA4ICsrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1waW5l
NjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1waW5lNjQu
ZHRzCmluZGV4IDIxNjVmMjM4YWYxMy4uYzU5MzliYTUyZjE5IDEwMDY0NAotLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktYTY0LXBpbmU2NC5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1waW5lNjQuZHRzCkBAIC05OSw2ICs5
OSwxMCBAQAogCX07CiB9OwogCismaGRtaV9zb3VuZCB7CisJc3RhdHVzID0gIm9rYXkiOworfTsK
KwogJmkyYzEgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CkBAIC0xMDcsNiArMTExLDEwIEBACiAJ
Ymlhcy1wdWxsLXVwOwogfTsKIAorJmkyczIgeworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZt
ZGlvIHsKIAlleHRfcm1paV9waHkxOiBldGhlcm5ldC1waHlAMSB7CiAJCWNvbXBhdGlibGUgPSAi
ZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOwotLSAKMi4yMC4xCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
