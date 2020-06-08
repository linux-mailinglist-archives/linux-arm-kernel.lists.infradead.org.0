Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908411F1569
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BrfKGycEGn8BWnaohp84E09DgpoM+GR+EXaJdZ+gAHQ=; b=ov05H73uSg7eMg
	0lgfVNMZPtSEYNEXC8STxSB44LStDEi7FrNmChWvaxO2ppW1P7wNWt042queBADynMECj2yZfkjg/
	6Wt5aMrWEAi03II1cQRllwKW7FgnCgbPpgnF1MCNpcndWVSraAVj8ZPdFAmicCF2MmJloGRPliUVk
	pSlD0UVZ0xy7nvLIl5cD39VrmixFee55kTu/mB+XrTLCaYTtKRwTrcy4MY0hdv0TIkn3KvU/Tsfp7
	Axsw+C0vZjtmXwCHWPMYBLkIIiRIcY4tEi5vXKkaZ7GlvOch0cUYVTv/eWKB2h2zR4/I9FfDRap5d
	9hAqPIkGpnJXXh1fXbvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiE5J-000229-9Q; Mon, 08 Jun 2020 09:28:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiE59-00021a-5N
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 09:28:40 +0000
Received: by mail-wm1-x341.google.com with SMTP id r9so14600403wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 02:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpW4ldQgtWr6e60zpYiLkfjKjsub3mqIjp9lUDBs9Lc=;
 b=nprEhsuPcx2W5AMM0OqjLGb+owEEq+0KLA71gLV2fTq/B7mVPCssqzpAn98c266ebU
 OVgFJb37xyEwAVBdwe+/U6oDUij0r5HW95PuIbSJmyQa5om0E+3bCedKcle5KfVYDJXN
 W/rzWxCoD22IHgSxjtp/P2OyZvbGsQmaUzop9mXYg2Vk352O6nTvmPZzti0ONJqXFzwC
 zYGLIpz6smGElz/W4hZXHVllI7CrOh09UEsaqWrFbfyX83pMPCZJl007oPLKXTKQWyIa
 DiF8ns8fo4OhQWUl1BRP8Zge1M79/Cwx7tzFenSPdGBX7V6zn+9gyrJdPXJVJ62NT3f4
 jbGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zpW4ldQgtWr6e60zpYiLkfjKjsub3mqIjp9lUDBs9Lc=;
 b=BvotgqwzSfSOTTWopoiY8YHH8Iynb22hK7HKEvmz9DlnLekSE0j9m+GEvBGC+ovU8r
 0n2j/nT753HdjvT0SXQTscho4ZYlpNMbOPs/Zo3uumsaNvWho4Y6QJ/XEOxmrVGncDmB
 272uBb4L0HGXPU/NYJNPcvQoEpRfmiX26/5z0U8wZP8+pZdkIYcny5p7N1GiMwVNGERK
 DVeoI62VUnm+T9s1MEjGn7JpcpSfurSO1RWGeFDc7UpDpa59IPQshTNGyQGVSAXGH0lq
 4ZhCYpVaX5PiXAKaMCIm71GnYmMB7qF6lsNCPm+/ix6SNVHnz0nPxuTiuaw829OGiAAe
 tejw==
X-Gm-Message-State: AOAM5313QQYEjYG9UB/rmbXMOk1lAjl41Q43IOOZ8MqZi1cWGAKJh4/N
 9Hz+0GJU5ZvBaGToy7kusAs=
X-Google-Smtp-Source: ABdhPJyUA36lnoRXlk8KkiYJyzRhtLivy3TSuijUYNgv+dWPltHeM5dYr2IDichDx9OmB9Tfx0C8Zw==
X-Received: by 2002:a1c:7917:: with SMTP id l23mr16823230wme.117.1591608517282; 
 Mon, 08 Jun 2020 02:28:37 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id p16sm24516605wru.27.2020.06.08.02.28.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:28:36 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] MIPS: BCM63xx: improve CFE version detection
Date: Mon,  8 Jun 2020 11:28:35 +0200
Message-Id: <20200608092835.3377581-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_022839_201916_84FB98A5 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlcmUgYXJlIHNvbWUgQ0ZFIHZhcmlhbnRzIHRoYXQgc3RhcnQgd2l0aCAnY2ZlLXZkJyBpbnN0
ZWFkIG9mICdjZmUtdicsIHN1Y2gKYXMgdGhlIG9uZSB1c2VkIGluIHRoZSBIdWF3ZWkgSEc1NTZh
OiAiY2ZlLXZkMDgxLjUwMDMiLiBJbiB0aGlzIGNhc2UsIHRoZSBDRkUKdmVyc2lvbiBpcyBzdG9y
ZWQgYXMgaXMgKHN0cmluZyB2cyBudW1iZXIgYnl0ZXMpLgoKU29tZSBuZXdlciBkZXZpY2VzIGhh
dmUgYW4gYWRkaXRpb25hbCB2ZXJzaW9uIG51bWJlciwgc3VjaCBhcyB0aGUgQ29tdHJlbmQKVlIt
MzAzMnU6ICIxLjAuMzgtMTEyLjExOC0xMSIuCgpGaW5hbGx5LCBwcmludCB0aGUgc3RyaW5nIGFz
IGlzIGlmIHRoZSB2ZXJzaW9uIGRvZXNuJ3Qgc3RhcnQgd2l0aCAiY2ZlLXYiIG9yCiJjZmUtdmQi
LCBidXQgc3RhcnRzIHdpdGggImNmZS0iLgoKU2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6Fu
ZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KLS0tCiBhcmNoL21pcHMvYmNtNjN4eC9ib2Fy
ZHMvYm9hcmRfYmNtOTYzeHguYyB8IDIyICsrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5jIGIvYXJjaC9taXBzL2JjbTYz
eHgvYm9hcmRzL2JvYXJkX2JjbTk2M3h4LmMKaW5kZXggMzZlYzNkYzJjOTk5Li4zOGY4MTIzODM5
OTggMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5j
CisrKyBiL2FyY2gvbWlwcy9iY202M3h4L2JvYXJkcy9ib2FyZF9iY205NjN4eC5jCkBAIC03NjMs
MTEgKzc2MywyNSBAQCB2b2lkIF9faW5pdCBib2FyZF9wcm9tX2luaXQodm9pZCkKIAogCS8qIGR1
bXAgY2ZlIHZlcnNpb24gKi8KIAljZmUgPSBib290X2FkZHIgKyBCQ005NjNYWF9DRkVfVkVSU0lP
Tl9PRkZTRVQ7Ci0JaWYgKCFtZW1jbXAoY2ZlLCAiY2ZlLXYiLCA1KSkKLQkJc25wcmludGYoY2Zl
X3ZlcnNpb24sIHNpemVvZihjZmVfdmVyc2lvbiksICIldS4ldS4ldS0ldS4ldSIsCi0JCQkgY2Zl
WzVdLCBjZmVbNl0sIGNmZVs3XSwgY2ZlWzhdLCBjZmVbOV0pOwotCWVsc2UKKwlpZiAoc3Ryc3Rh
cnRzKGNmZSwgImNmZS0iKSkgeworCQlpZihjZmVbNF0gPT0gJ3YnKSB7CisJCQlpZihjZmVbNV0g
PT0gJ2QnKQorCQkJCXNucHJpbnRmKGNmZV92ZXJzaW9uLCAxMSwgIiVzIiwKKwkJCQkJIChjaGFy
ICopICZjZmVbNV0pOworCQkJZWxzZSBpZiAoY2ZlWzEwXSA+IDApCisJCQkJc25wcmludGYoY2Zl
X3ZlcnNpb24sIHNpemVvZihjZmVfdmVyc2lvbiksCisJCQkJCSAiJXUuJXUuJXUtJXUuJXUtJXUi
LCBjZmVbNV0sIGNmZVs2XSwKKwkJCQkJIGNmZVs3XSwgY2ZlWzhdLCBjZmVbOV0sIGNmZVsxMF0p
OworCQkJZWxzZQorCQkJCXNucHJpbnRmKGNmZV92ZXJzaW9uLCBzaXplb2YoY2ZlX3ZlcnNpb24p
LAorCQkJCQkgIiV1LiV1LiV1LSV1LiV1IiwgY2ZlWzVdLCBjZmVbNl0sCisJCQkJCSBjZmVbN10s
IGNmZVs4XSwgY2ZlWzldKTsKKwkJfSBlbHNlIHsKKwkJCXNucHJpbnRmKGNmZV92ZXJzaW9uLCAx
MiwgIiVzIiwgKGNoYXIgKikgJmNmZVs0XSk7CisJCX0KKwl9IGVsc2UgewogCQlzdHJjcHkoY2Zl
X3ZlcnNpb24sICJ1bmtub3duIik7CisJfQogCXByX2luZm8oIkNGRSB2ZXJzaW9uOiAlc1xuIiwg
Y2ZlX3ZlcnNpb24pOwogCiAJYmNtNjN4eF9udnJhbV9pbml0KGJvb3RfYWRkciArIEJDTTk2M1hY
X05WUkFNX09GRlNFVCk7Ci0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
