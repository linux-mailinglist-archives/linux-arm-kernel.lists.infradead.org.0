Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07858115CF3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:10:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+6Q4eYGmIlm5dkwisW1xSBBY4wuH4701TcJupMRkys=; b=U87ImxvNGpFvqI
	su/c2B793iAAjop2e5AZtXqPpNgxOodbvgknUWbBA4B1lp4qRGtepXPl4invPcswoY5u5UP0cJJd8
	aLLv3gjCkVRT9nEw99D7QMXdx5G1ui9bVaIp7WxHyKaZLGjGtbsA5UD5FqIhLFN7bZT9VHjEK9wzC
	QQqrUS24hqmxumMBKdmqTCS1guKTJYSyo/9O6KA/dwIQJ5T35P+Y/KZWXix6iBooSh4v5LDzig3Na
	hFdwpVcY9qwx4ZyrVVdCHcA12ebxS1hcPrInNumAAcYd8xouMAiu7xGRXHWfjAiWFJYy5ssNlMtn+
	2XRYERs2ZrNbQRMQosSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idan1-0004ml-Ay; Sat, 07 Dec 2019 14:10:31 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahO-0005qK-T9; Sat, 07 Dec 2019 14:04:46 +0000
Received: by mail-lf1-x144.google.com with SMTP id l18so7432867lfc.1;
 Sat, 07 Dec 2019 06:04:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VaBvhdhNtObbqsxPerTgXU57K3m4iUiAmX6XWjRdma8=;
 b=cZTvjGkjrfyjv3XvlFQLZd1fBYvUwA2F7rgXxqR3m5nmg4z4VuWhpUyxwuWV5mLHFW
 EdupZomTGwmdPvT58sN7eRALuAXX1G0Nf92Bt0sdGN7fHTxOx7iUT0HS0GMmbu4ySvtw
 z1MUgMzIaR7Bwp2VeOeHbW+y77pfYovpN7W+UV2JENCEMJ1WGIHs4myc1V5VnsO2AiKE
 2tga/sY6fV6bOSKUJ3nKwOYkXHC1SOsy0XuCyXv/SWN3wThH9FXB/1CboBK4SmOHKKmO
 SPscZrSICFYQIb1PpbDJJ10R9p2xTo/OvSCjOU7YcPTtvqZD2jvRDV1/q6CSOmLuOh1R
 ldUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=VaBvhdhNtObbqsxPerTgXU57K3m4iUiAmX6XWjRdma8=;
 b=qx1nrcZnask0Zh9IAHEyJTe/wdjrVFQbRLI2vJmTv4aagZeMcxzeeKtSy00si4jDQh
 ckFwRdVNELQC3qL6oEGTMsD75j7WVb/Nawg7wuFK7ldv2MdsPTM6TD7V2joskCxpdvjW
 g7QEGrFgCKpEUT6sL45w52zZVbliZhz0Ae7eYeFcUNAycCewRA8J8MZxWuiVLWkKnm7X
 R6RvlK6G5YTLqmE9OnkeLRtZ4uTTfkL3OTp5MgcOnZ0NgHRivyxHzyCBSTNBkxw+Yjta
 bxvv73Yy09vJcHYNcFrKyROmQOTP+6F7SqQNwsnlt8xYRhCv+Lnt+seNx83NcYbLFZlT
 QAFw==
X-Gm-Message-State: APjAAAXIFd7nPmBlnZCOBw3ybQvB672u14VjKEjDXAzeqb/KDJFb7PD3
 NduoJhYpqk8fOt7ia2PjgTs=
X-Google-Smtp-Source: APXvYqwM0erZxo6LOlySak2aMfBaSTmHMVITDmR/sT0HyMLyvaaqCnJATLGaFQPO9c/qhW5jo19sYg==
X-Received: by 2002:a19:ac08:: with SMTP id g8mr11551704lfc.112.1575727480871; 
 Sat, 07 Dec 2019 06:04:40 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:40 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 17/25] drm/panel: rocktech-jh057n00900: use drm_panel
 backlight support
Date: Sat,  7 Dec 2019 15:03:45 +0100
Message-Id: <20191207140353.23967-18-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060443_142559_BB4C79A5 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Stefan Agner <stefan@agner.ch>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VXNlIHRoZSBiYWNrbGlnaHQgc3VwcG9ydCBpbiBkcm1fcGFuZWwgdG8gc2ltcGxpZnkgdGhlIGRy
aXZlci4KV2hpbGUgdG91Y2hpbmcgdGhlIGluY2x1ZGUgZmlsZXMgc29ydCB0aGVtCmFuZCBkaXZp
ZGUgdGhlbSB1cCBpbiBibG9ja3MuCgpTaWduZWQtb2ZmLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+ClJldmlld2VkLWJ5OiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3Jn
PgpSZXZpZXdlZC1ieTogTGF1cmVudCBQaW5jaGFydCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgpDYzogIkd1aWRvIEfDvG50aGVyIiA8YWd4QHNpZ3hjcHUub3JnPgpDYzogUHVy
aXNtIEtlcm5lbCBUZWFtIDxrZXJuZWxAcHVyaS5zbT4KQ2M6IFRoaWVycnkgUmVkaW5nIDx0aGll
cnJ5LnJlZGluZ0BnbWFpbC5jb20+CkNjOiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5vcmc+
Ci0tLQogLi4uL2RybS9wYW5lbC9wYW5lbC1yb2NrdGVjaC1qaDA1N24wMDkwMC5jICAgIHwgMjQg
KysrKysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1y
b2NrdGVjaC1qaDA1N24wMDkwMC5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXJvY2t0
ZWNoLWpoMDU3bjAwOTAwLmMKaW5kZXggM2E0ZjFjMGZjZTg2Li4zOGZmNzQyYmMxMjAgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1yb2NrdGVjaC1qaDA1N24wMDkwMC5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1yb2NrdGVjaC1qaDA1N24wMDkwMC5j
CkBAIC01LDIwICs1LDIyIEBACiAgKiBDb3B5cmlnaHQgKEMpIFB1cmlzbSBTUEMgMjAxOQogICov
CiAKLSNpbmNsdWRlIDxkcm0vZHJtX21pcGlfZHNpLmg+Ci0jaW5jbHVkZSA8ZHJtL2RybV9tb2Rl
cy5oPgotI2luY2x1ZGUgPGRybS9kcm1fcGFuZWwuaD4KLSNpbmNsdWRlIDxkcm0vZHJtX3ByaW50
Lmg+Ci0jaW5jbHVkZSA8bGludXgvYmFja2xpZ2h0Lmg+CiAjaW5jbHVkZSA8bGludXgvZGVidWdm
cy5oPgogI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CiAjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25z
dW1lci5oPgogI2luY2x1ZGUgPGxpbnV4L21lZGlhLWJ1cy1mb3JtYXQuaD4KKyNpbmNsdWRlIDxs
aW51eC9tb2RfZGV2aWNldGFibGUuaD4KICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KICNpbmNs
dWRlIDxsaW51eC9yZWd1bGF0b3IvY29uc3VtZXIuaD4KKwogI2luY2x1ZGUgPHZpZGVvL2Rpc3Bs
YXlfdGltaW5nLmg+CiAjaW5jbHVkZSA8dmlkZW8vbWlwaV9kaXNwbGF5Lmg+CiAKKyNpbmNsdWRl
IDxkcm0vZHJtX21pcGlfZHNpLmg+CisjaW5jbHVkZSA8ZHJtL2RybV9tb2Rlcy5oPgorI2luY2x1
ZGUgPGRybS9kcm1fcGFuZWwuaD4KKyNpbmNsdWRlIDxkcm0vZHJtX3ByaW50Lmg+CisKICNkZWZp
bmUgRFJWX05BTUUgInBhbmVsLXJvY2t0ZWNoLWpoMDU3bjAwOTAwIgogCiAvKiBNYW51ZmFjdHVy
ZXIgc3BlY2lmaWMgQ29tbWFuZHMgc2VuZCB2aWEgRFNJICovCkBAIC00Nyw3ICs0OSw2IEBAIHN0
cnVjdCBqaDA1N24gewogCXN0cnVjdCBkZXZpY2UgKmRldjsKIAlzdHJ1Y3QgZHJtX3BhbmVsIHBh
bmVsOwogCXN0cnVjdCBncGlvX2Rlc2MgKnJlc2V0X2dwaW87Ci0Jc3RydWN0IGJhY2tsaWdodF9k
ZXZpY2UgKmJhY2tsaWdodDsKIAlzdHJ1Y3QgcmVndWxhdG9yICp2Y2M7CiAJc3RydWN0IHJlZ3Vs
YXRvciAqaW92Y2M7CiAJYm9vbCBwcmVwYXJlZDsKQEAgLTE1Miw3ICsxNTMsNyBAQCBzdGF0aWMg
aW50IGpoMDU3bl9lbmFibGUoc3RydWN0IGRybV9wYW5lbCAqcGFuZWwpCiAJCXJldHVybiByZXQ7
CiAJfQogCi0JcmV0dXJuIGJhY2tsaWdodF9lbmFibGUoY3R4LT5iYWNrbGlnaHQpOworCXJldHVy
biAwOwogfQogCiBzdGF0aWMgaW50IGpoMDU3bl9kaXNhYmxlKHN0cnVjdCBkcm1fcGFuZWwgKnBh
bmVsKQpAQCAtMTYwLDcgKzE2MSw2IEBAIHN0YXRpYyBpbnQgamgwNTduX2Rpc2FibGUoc3RydWN0
IGRybV9wYW5lbCAqcGFuZWwpCiAJc3RydWN0IGpoMDU3biAqY3R4ID0gcGFuZWxfdG9famgwNTdu
KHBhbmVsKTsKIAlzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2kgPSB0b19taXBpX2RzaV9kZXZp
Y2UoY3R4LT5kZXYpOwogCi0JYmFja2xpZ2h0X2Rpc2FibGUoY3R4LT5iYWNrbGlnaHQpOwogCXJl
dHVybiBtaXBpX2RzaV9kY3Nfc2V0X2Rpc3BsYXlfb2ZmKGRzaSk7CiB9CiAKQEAgLTMyMSwxMCAr
MzIxLDYgQEAgc3RhdGljIGludCBqaDA1N25fcHJvYmUoc3RydWN0IG1pcGlfZHNpX2RldmljZSAq
ZHNpKQogCWRzaS0+bW9kZV9mbGFncyA9IE1JUElfRFNJX01PREVfVklERU8gfAogCQlNSVBJX0RT
SV9NT0RFX1ZJREVPX0JVUlNUIHwgTUlQSV9EU0lfTU9ERV9WSURFT19TWU5DX1BVTFNFOwogCi0J
Y3R4LT5iYWNrbGlnaHQgPSBkZXZtX29mX2ZpbmRfYmFja2xpZ2h0KGRldik7Ci0JaWYgKElTX0VS
UihjdHgtPmJhY2tsaWdodCkpCi0JCXJldHVybiBQVFJfRVJSKGN0eC0+YmFja2xpZ2h0KTsKLQog
CWN0eC0+dmNjID0gZGV2bV9yZWd1bGF0b3JfZ2V0KGRldiwgInZjYyIpOwogCWlmIChJU19FUlIo
Y3R4LT52Y2MpKSB7CiAJCXJldCA9IFBUUl9FUlIoY3R4LT52Y2MpOwpAQCAtMzQ3LDYgKzM0Mywx
MCBAQCBzdGF0aWMgaW50IGpoMDU3bl9wcm9iZShzdHJ1Y3QgbWlwaV9kc2lfZGV2aWNlICpkc2kp
CiAJZHJtX3BhbmVsX2luaXQoJmN0eC0+cGFuZWwsIGRldiwgJmpoMDU3bl9kcm1fZnVuY3MsCiAJ
CSAgICAgICBEUk1fTU9ERV9DT05ORUNUT1JfRFNJKTsKIAorCXJldCA9IGRybV9wYW5lbF9vZl9i
YWNrbGlnaHQoJmN0eC0+cGFuZWwpOworCWlmIChyZXQpCisJCXJldHVybiByZXQ7CisKIAlkcm1f
cGFuZWxfYWRkKCZjdHgtPnBhbmVsKTsKIAogCXJldCA9IG1pcGlfZHNpX2F0dGFjaChkc2kpOwot
LSAKMi4yMC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
