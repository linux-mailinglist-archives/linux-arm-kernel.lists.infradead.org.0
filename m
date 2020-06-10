Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1D31F5A01
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:17:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX7gRXv4F7oVYBe8qSXGOEzyJ+MqksMRNAm26Ket1cI=; b=FTVLcP60jX0dVj
	9P1ZT3ZP0bjmVgzgkNET+jUkBw/5k8MnIeYW6LUNTVc8QzLAiEo3Rd+m/7/8VLCmaRQIyMwJgO+Od
	MFu5uEyw7ZJp7kRVjIaeq2A7pJSFTRexGyegr7BVfxkrTSg90C5IZPwBnBsLMSfoxL/giHC8AlbV8
	9cKJfFhu+7Q7Rzjaq+CGOnzKuLTTXd1kjQe1Hihr1xkwYpPRseUHU5H640QJPI5uM1uXXnMMBF0em
	6Dwmxkg3gBdDNMVCgpBWLdua8mIhJ6SxCiH1eaIgx4brV2GGeveFd5D+zqzsH/hXWJtWUrNRScJxN
	H9FJhTj+pz1YayNq68sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4MA-0006bt-5E; Wed, 10 Jun 2020 17:17:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4L5-0005gH-Q1
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:16:37 +0000
Received: by mail-wm1-x32a.google.com with SMTP id l17so2561203wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 10:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dc1Zbs/UvZLNdvEMBHUTsPwZekjiKQ0YRNWi77yGkVc=;
 b=AWmOfhw9HottV+Ca6INhRNzpFJ13Z0pf30XXXOn4PfH8i7+aVCXscF6PxrPNlwu6XT
 5ZJBRYYYGAKWyr9jF9k5cptkXh3Oh0Uu7FLAvP1oWxYuyQCWHGRqEM9DcZPlCCptL6ww
 mV+DoJCobdHFO44kcZPscDRc2iZZd9UcSEpWWKUSmZ6QIC4e53buer2YW86arSA1ApMI
 NRQghwSlGBw1GPF2hWTB1VYOUUibLHORDnqeEI8PO6NA7l88g4AGBL3wtTrkxh6cZ7he
 EZ3xUlj3Q21INd5XtT+W9XSO9ZqWQTABAyM5riT9NgtMf4OW7xKswq0NzCmrrMIeFgqC
 0xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dc1Zbs/UvZLNdvEMBHUTsPwZekjiKQ0YRNWi77yGkVc=;
 b=bdnhZvZBPrF6a4wB27xUZZkalFdfUfUjArvAk4mzwxVPufe9Ntd+Ot3taHQTlqOV0l
 JbMnGRg37CLqSuudMJmbOi19tbzM359xfGImJQtavWUz0aSeBvhj3PEkqwKTVRBrswwZ
 gxWjlqytYZVk+zY58ZydMoTdrHDk6KXnZesDEMva/J7OgPYLCniaMxqBKrG6wJEQGCf3
 VfM5WuSy8DKorZgl/6gQjqbjj/UmWpp3fl99n7bREfLyYJx/mTmpalaeiHQRP531enGO
 llC7YDuz6t54m5IV9F7fVO130mzCBcnHdEUSap81VeRj+v7dijRVWc8PvDpV5aXAXcSz
 QT/w==
X-Gm-Message-State: AOAM533lT/2Bxz7JXpDcybQ1fMi9CMSJnRw8Npw2kLZWUSPxwKKzbrnE
 gM7bUSvVJQ79c2+lc8a82xw=
X-Google-Smtp-Source: ABdhPJycrzAMfB0vxrFxVvpOhXYMC0RMkbGEkRVDk5VK+mN1qbqi2WlqcF+cXXAyHgyqr3sURHoazg==
X-Received: by 2002:a1c:4887:: with SMTP id v129mr3963166wma.184.1591809393675; 
 Wed, 10 Jun 2020 10:16:33 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id f11sm589048wrm.13.2020.06.10.10.16.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 10:16:33 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/9] dt-bindings: soc: brcm: add BCM63xx power domain
 binding
Date: Wed, 10 Jun 2020 19:16:22 +0200
Message-Id: <20200610171630.465579-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200610171630.465579-1-noltari@gmail.com>
References: <20200610163301.461160-1-noltari@gmail.com>
 <20200610171630.465579-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_101635_879991_015E9D92 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

QkNNNjMxOCwgQkNNNjMyOCwgQkNNNjM2MiBhbmQgQkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIg
ZG9tYWluIGNvbnRyb2xsZXIKdG8gZW5hYmxlL2Rpc2FibGUgY2VydGFpbiBjb21wb25lbnRzIGlu
IG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQtb2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXog
Um9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgpSZXZpZXdlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8
Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tLQogdjM6IGZpeCByZWcgbWF4SXRlbXMgYW5kIHF1b3Rl
ICNwb3dlci1kb21haW4tY2VsbHMuCiB2MjogQWRkIHNlcGFyYXRlIFlBTUwgZmlsZS4KCiAuLi4v
YmluZGluZ3Mvc29jL2JjbS9icmNtLGJjbTYzeHgtcG93ZXIueWFtbCAgfCA0NCArKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvYmNtL2JyY20sYmNt
NjN4eC1wb3dlci55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3NvYy9iY20vYnJjbSxiY202M3h4LXBvd2VyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc29jL2JjbS9icmNtLGJjbTYzeHgtcG93ZXIueWFtbApuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmZkNDIwNGQ5YWFmNgotLS0gL2Rldi9u
dWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb2MvYmNtL2JyY20s
YmNtNjN4eC1wb3dlci55YW1sCkBAIC0wLDAgKzEsNDQgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IEdQTC0yLjAtb3ItbGF0ZXIKKyVZQU1MIDEuMgorLS0tCiskaWQ6ICJodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9zb2MvYnJjbS9icmNtLGJjbTYzeHgtcG93ZXIueWFtbCMiCisk
c2NoZW1hOiAiaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjIgor
Cit0aXRsZTogQkNNNjN4eCBwb3dlciBkb21haW4gZHJpdmVyCisKK21haW50YWluZXJzOgorICAt
IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CisKK2Rlc2NyaXB0
aW9uOiB8CisgIEJDTTYzMTgsIEJDTTYzMjgsIEJDTTYzNjIgYW5kIEJDTTYzMjY4IFNvQ3MgaGF2
ZSBhIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyCisgIHRvIGVuYWJsZS9kaXNhYmxlIGNlcnRhaW4g
Y29tcG9uZW50cyBpbiBvcmRlciB0byBzYXZlIHBvd2VyLgorCitwcm9wZXJ0aWVzOgorICBjb21w
YXRpYmxlOgorICAgIGl0ZW1zOgorICAgICAgLSBlbnVtOgorICAgICAgICAgIC0gYnJjbSxiY202
MzE4LXBvd2VyLWNvbnRyb2xsZXIKKyAgICAgICAgICAtIGJyY20sYmNtNjMyOC1wb3dlci1jb250
cm9sbGVyCisgICAgICAgICAgLSBicmNtLGJjbTYzNjItcG93ZXItY29udHJvbGxlcgorICAgICAg
ICAgIC0gYnJjbSxiY202MzI2OC1wb3dlci1jb250cm9sbGVyCisKKyAgcmVnOgorICAgIG1heEl0
ZW1zOiAyCisKKyAgIiNwb3dlci1kb21haW4tY2VsbHMiOgorICAgIGNvbnN0OiAxCisKK3JlcXVp
cmVkOgorICAtIGNvbXBhdGlibGUKKyAgLSByZWcKKyAgLSAiI3Bvd2VyLWRvbWFpbi1jZWxscyIK
KworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK2V4YW1wbGVzOgorICAtIHwKKyAgICBw
ZXJpcGhfcHdyOiBwb3dlci1jb250cm9sbGVyQDEwMDAxODQ4IHsKKyAgICAgICAgY29tcGF0aWJs
ZSA9ICJicmNtLGJjbTYzMjgtcG93ZXItY29udHJvbGxlciI7CisgICAgICAgIHJlZyA9IDwweDEw
MDAxODQ4IDB4ND47CisgICAgICAgICNwb3dlci1kb21haW4tY2VsbHMgPSA8MT47CisgICAgfTsK
LS0gCjIuMjYuMgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
