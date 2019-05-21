Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBFE25516
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:12:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phQGY8GQMT+0YVpUIL4NlWWw14n0/LgDtnmc/M48u70=; b=S1/ETECSF9QvxK
	0A9yPzoYxQMJkhT7sRypBhr0heUPej3r/pYAOXFeIJ4i0WGeVhl3b40PoDDXmLPfydKQPdhNOA6we
	05X5bE3l6RYKw6ZB+lfsrYuNmQcBZesQWIyp/t9Y+d7Ncb/Uq/xRhHwehYRP8x30IAhC5NbN0dUlD
	bRdu20GSZUf5G5B1wEYaN5tF26Pep/9B9BeY4ACiHwBgGm9qhk+wpnWMU7Laf4GwP2RwfJHBg5MwU
	PBvnCyOWOIyqhb0XQsiz43tUwwje7OCPjgHmgpQcpp4D5TMCBGRlnhgAcYpdzssT9L8Svt0QkWEPB
	B7L92o8ZewCfRKxwLYvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7NH-0007qK-Qm; Tue, 21 May 2019 16:12:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7MB-0006Rh-Js
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:11:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id g12so18997511wro.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 09:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Btaw5CgxhYac28zaC8EYgFvIIeyjC0ToJx7hPAKP9QY=;
 b=B/jtMfdcj/dmaTXVPTvxgNcwlKCsgqy9ZhcgBVcfw/M8F+FPXVO9xN/dsc8qjR+qGX
 wlT8gSuqfvPrYaFZO9iBZFczHY0DerEBjxIaTywINIhQtH4FH+wv19g2c5/kWbwmQtJT
 X2Z1EZJr7BLY9iXwP+T4K/wju0vwaB8a6BNRhraKUMsnEOuxptYmFWbk6dvX8lJSc9sH
 vq8tf5kmrs+CVMIdAsHJfgaFAsnHwVKuXD2M2XhWIse8GTOBt+S/JoylD8jY/AfQkmAo
 2E6fSN28+1qgWz5XWqDSYu9H6l5NyiG8hDop7DeLyGEiP9MydI1kne0gnBENOh10PhDc
 8OCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Btaw5CgxhYac28zaC8EYgFvIIeyjC0ToJx7hPAKP9QY=;
 b=H7chzGBeecDuem+TL+Irt8c42IH5NnRWrY2Vj34MzlV1afuNsc95GX8QGTsf7Wnq4R
 Xl6KoHFCz/OoHo7fcIqB/x+rC0/KOTYujD9uR/eTpn9K3EZ8faOhnhOaVsy+hhVpSTzq
 m2PZGZG1gBOcQ2QL9y/DzOwQ6TfTjxcb6KzZ4mOCo1AZTmiRNJ3yMK2W+bNTKtKUyzdJ
 5EJAnuTOlN9eCjhr5/CkvV10VOsXQreAZvgrpnKdHcUKPbULK7m4olUuiN/Kedx3Q0Xr
 ZYWk4WH5AhHVEkzpHag2sHf8boFcQfE/1dkMJzdO2kwUVCsaPtzx9uF6rK+jOg3bm4QW
 l2Ug==
X-Gm-Message-State: APjAAAX9ZCgeuBXnZMYdSq4vCGStOzx1KltxPPMeiwukvLHntkdfTHB0
 UKp07UvP3yQTE8iHwA3zn2E=
X-Google-Smtp-Source: APXvYqwVGxivnAT1rOZ1NLI0pVzHPTuwtsi/68dewsIH9xOuVl2rdWSn1rWNqkO1JUH72ACvEdzDJQ==
X-Received: by 2002:adf:f811:: with SMTP id s17mr19122623wrp.72.1558455074155; 
 Tue, 21 May 2019 09:11:14 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id n63sm3891094wmn.38.2019.05.21.09.11.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:11:13 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Will Deacon <will.deacon@arm.com>, Robin Murphy <robin.murphy@arm.com>,
 Joerg Roedel <joro@8bytes.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Steven Price <steven.price@arm.com>
Subject: [PATCH v6 5/6] arm64: dts: allwinner: Add ARM Mali GPU node for H6
Date: Tue, 21 May 2019 18:11:01 +0200
Message-Id: <20190521161102.29620-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190521161102.29620-1-peron.clem@gmail.com>
References: <20190521161102.29620-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_091115_873780_A82C8743 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkIHRoZSBtYWxpIGdwdSBub2RlIHRvIHRoZSBINiBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYt
Ynk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02
NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kgfCAxNCArKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpCmluZGV4IDE2YzVjM2QwZmQ4MS4uNmFhZDA2MDk1YzQw
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRz
aQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaQpAQCAt
MTU3LDYgKzE1NywyMCBAQAogCQkJYWxsd2lubmVyLHNyYW0gPSA8JnZlX3NyYW0gMT47CiAJCX07
CiAKKwkJZ3B1OiBncHVAMTgwMDAwMCB7CisJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW41
MGktaDYtbWFsaSIsCisJCQkJICAgICAiYXJtLG1hbGktdDcyMCI7CisJCQlyZWcgPSA8MHgwMTgw
MDAwMCAweDQwMDA+OworCQkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDg0IElSUV9UWVBFX0xFVkVM
X0hJR0g+LAorCQkJCSAgICAgPEdJQ19TUEkgODUgSVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJ
ICAgICA8R0lDX1NQSSA4MyBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCWludGVycnVwdC1uYW1l
cyA9ICJqb2IiLCAibW11IiwgImdwdSI7CisJCQljbG9ja3MgPSA8JmNjdSBDTEtfR1BVPiwgPCZj
Y3UgQ0xLX0JVU19HUFU+OworCQkJY2xvY2stbmFtZXMgPSAiY29yZSIsICJidXMiOworCQkJcmVz
ZXRzID0gPCZjY3UgUlNUX0JVU19HUFU+OworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsK
KwogCQlzeXNjb246IHN5c2NvbkAzMDAwMDAwIHsKIAkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjUwaS1oNi1zeXN0ZW0tY29udHJvbCIsCiAJCQkJICAgICAiYWxsd2lubmVyLHN1bjUwaS1h
NjQtc3lzdGVtLWNvbnRyb2wiOwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
