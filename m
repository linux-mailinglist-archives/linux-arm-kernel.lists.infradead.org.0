Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5412F1ADA9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmMN1joAkgSc8d6JYlbMpYcludaoEKhOSPDFC137rw4=; b=TypwpNByel8Ser
	8Q94CTAyUhhA1y+1wql/5k/MBbQ/yErg1QDfbx+2a/sa+PfspNpBLxVdrKxcvjX2TbMLrc3GZKTcz
	xd2oVjskd8a+F2cMVYANgY1zFhU029GKenMLtgplmhkESTu6JreHo31vrIRuWJ7+2Zczqfh/9X4GZ
	RAi3pufPezlUN2ppdKObIEobZnr8EYD0iNLWMH4W/0BJ3ZHbaF8EJ4XmBdE+d3d5iidv7UUFk8Q8x
	KUzlti0u43pCREoeUVeLqKxFmnvrcszIkGE8avB26IZL7Hr6NzO7/PBqP95w0Tzuwq+ZdSMwXieIC
	B0rgASgLr28m0pudjcBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsZl-0007rC-MW; Sun, 12 May 2019 17:47:53 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYL-000671-LF
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id l2so12690722wrb.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lb3IP/Hl9lXy/TNODmgqSdzhcHKCTOi5Q6K9F3iD6Yc=;
 b=u24eCC2SgKLBkmO/LnDz2izzPhp4h023a+HZEvpM6YzgQ7pIzUHZItuuECjuW4vP60
 E85x71N9IoxOKj5h+cTaH25KQ2NWmsQvioP3XzSdgZBXrg7CLYBHjlWO+zr/r5rnPZ7o
 AJ5kguSwtuaoBFvZ0fpVvxWsAWn7HvTVWdhsyTPpIir82PdndXqLNSrYL8EWwJZPF07H
 TI70oBn08Y/j8mgJdUPt4t8nBIHU7TTUFoK4NO6PQiiKtX3JwedlOTGCBCQLfkTKwxCZ
 18Wxma2Ew8biSRB8zxUY25ZZ7P2x5171XH7oXs8gjEXcdlSdJ7DY6n3VNWzMj5Vjf6/+
 hw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lb3IP/Hl9lXy/TNODmgqSdzhcHKCTOi5Q6K9F3iD6Yc=;
 b=BZp/oxDskNATdxQnRLvaRFyUDEqObdcRXFfBzBgbaifCxQzr9wFb/uAkL9UXbY/6nM
 8XT5EkqGN96tuIHH6CbgF4riCT9Bbffv6OgoACkpFmKw64mWs3IY8jrcmChkayW1mUEB
 Jt+4J0cy23tg/ujG4WOdahPfoCKotyHO1Jk2QlrxTwaOjzv/g8Un0xgeK5nYp0foGGHu
 dtcfdKYnJLtO+7zGUzblZxs70sFTIRLBIuJ6GKM1+ypgTkC8SfuyeljXweGoGFqo01JU
 7gHCXrwMP7UJdFuZ5vzwK2kOJgeFEgeemwrDwHs99hYs4Eo8dl76bYHAriBGXNvbQ6uq
 C6UQ==
X-Gm-Message-State: APjAAAU76YlsoCm26uaBfoScI9GwOXxUhXHp0dbD13ia+47/8yYEVMf6
 jCeowsAMZN9DDycb+MJtqDQ=
X-Google-Smtp-Source: APXvYqz/VewqOJnmZC2dZcKpaUrdwzIGnGakbHjHUF/LaI2SfDQMiogOyo/etrjKnneSrTsw/xi4RA==
X-Received: by 2002:adf:f9c3:: with SMTP id w3mr5934677wrr.271.1557683184146; 
 Sun, 12 May 2019 10:46:24 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:23 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 8/8] arm64: dts: allwinner: Add mali GPU supply for
 OrangePi 3
Date: Sun, 12 May 2019 19:46:08 +0200
Message-Id: <20190512174608.10083-9-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104625_935112_69E20DEE 
X-CRM114-Status: GOOD (  12.94  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KCkVuYWJsZSBhbmQg
YWRkIHN1cHBseSB0byB0aGUgTWFsaSBHUFUgbm9kZSBvbiB0aGUKT3JhbmdlIFBpIDMgYm9hcmQu
CgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgot
LS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0
cyB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMK
aW5kZXggMTdkNDk2OTkwMTA4Li5kNGM5ODljYzkyYTcgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS0zLmR0cworKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtb3JhbmdlcGktMy5kdHMKQEAgLTU4LDYg
KzU4LDExIEBACiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorJmdwdSB7CisJbWFsaS1zdXBwbHkg
PSA8JnJlZ19kY2RjYz47CisJc3RhdHVzID0gIm9rYXkiOworfTsKKwogJm1tYzAgewogCXZtbWMt
c3VwcGx5ID0gPCZyZWdfY2xkbzE+OwogCWNkLWdwaW9zID0gPCZwaW8gNSA2IEdQSU9fQUNUSVZF
X0xPVz47IC8qIFBGNiAqLwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
