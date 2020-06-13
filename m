Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF671F81ED
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJ18TlBS1nmyDHBdl1msLxWdUTlVGh39wg87Np7kFFc=; b=hwGs39lzk9+tKb
	CwFINj+J77cIq2fDM8uZ/c7DAfbQ8Q9bhQDVKCsRvPLb+on/sj+y2pQXFHzurR1khdKXKHHcAcDom
	ZK/ysNxvqL8XF5Ee98zlI3y0rCR6m71PCOv4rAHAOk3wgqxOSOz6xvw3kPiNs6DnSohXYpV2iNBkq
	kH/lbg75qZAA85fLNJKgCvW8ZJ/RnFvL9LZGJ/Y/lEAq+hTnqyp7eotfz2yp9BtF5f4b+GU/K5Mua
	BRBGTSlxrRgHDszaYHYB7Vd76bvrUhNiDyQNXbv3VO2Oj2bOy+aT1DWa+Gt1BvV+JI1gvWBUNa4Rs
	e76v8Gof4ARjox8uvBXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Sm-0007f1-84; Sat, 13 Jun 2020 08:24:28 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QH-0005iE-N0
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id f185so10017438wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7N+5A0qfgXDiByKb642Lyly7EAHnzetKXSyZeUALaf8=;
 b=Zpu0w6eOMU0Bx5LscRdOg3AVp9Oq4XBOuStbINf/1VCS+wERXcO/1uZ0jckJTyG4YJ
 AH4scQRqjImjJBEmGHTDn+lppEQJii2a/ayy0f3JiS9knyOuSuIng0mLOBirMtgczl2H
 E2zV3lUN3OJS6h1S/KCKj7SW7AtCvVdssDGWM7Bcizq8QtHPlyt0Vs3qBLEfnr5BwM63
 gKIklbSUmNn5QMsKxs1cC8MFBHyT2FzATv7DCjhRyaDYA6BBowlT4UsXmLbF5jXnDe9m
 a64Y2PqxqW3DBuAfQ/aO4Hl4QeFnU6CW9bhuKsH2I9YNiEEqjkLUlnkI68pJjRsp/AIF
 aqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7N+5A0qfgXDiByKb642Lyly7EAHnzetKXSyZeUALaf8=;
 b=b2k6Y1jO4dnnOIIAawJblyO2FUuIvBEdzQP/CWdB/4InO7zhpBATw8qGZLtCZM9WaM
 KtRummxlndingY9C++FIxFTFCTRLBFrEOnHDcB1plagX02poizNQIh4p0gZcQJ+V956a
 Fs8YHmLwhp/kYh5qRiMLYGvZFsGB9ii165AZAovaoxMSKNtSepat8QcQtHnHXqIyU7F/
 s7WID06I80+UR5wiFgJ00MT1ATs9wnLRr0gHNpYuigR+5jBkGMnX4ZM68MH+C8+Qhien
 DnBdUn+J27gT9VNLEfX8yy8XZquzin3B8c3BOREqsUabqSxUTTcCgzHTppyi2ak2PDjd
 ro1A==
X-Gm-Message-State: AOAM5327pQY9jCmX01eN7B8vWM7ZJhJttVp7huap4mIjSFErd8dlgPFL
 z9EA5cCpsUwBLSzE8wvP2vM=
X-Google-Smtp-Source: ABdhPJwxVIkKaBjI9z5Oq8oDX+uoWFdTmxrV8oTiDI9ydbUyEpOtsH3hNRius7MT+0gD3hjvAFerZA==
X-Received: by 2002:a1c:dfd7:: with SMTP id w206mr2869698wmg.130.1592036512036; 
 Sat, 13 Jun 2020 01:21:52 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:51 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 8/9] mips: bmips: dts: add BCM6362 power domain support
Date: Sat, 13 Jun 2020 10:21:39 +0200
Message-Id: <20200613082140.2009461-9-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012153_778301_BE256A0D 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [noltari[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+CkFja2Vk
LWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0tCiB2NDogbm8g
Y2hhbmdlcy4KIHYzOiBTZXBhcmF0ZSBkdC1iaW5kaW5ncyBkZWZpbml0aW9ucyBmcm9tIHBvd2Vy
IGRvbWFpbiAuZHRzaSBzdXBwb3J0LgogdjI6IEFkZCBkdC1iaW5kaW5ncyBoZWFkZXIgZmlsZXMu
CgogYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjM2Mi5kdHNpIHwgNiArKysrKysKIDEgZmls
ZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9k
dHMvYnJjbS9iY202MzYyLmR0c2kgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzYyLmR0
c2kKaW5kZXggOGFlNjk4MTczNWI4Li5jOThmOTExMWUzYzggMTAwNjQ0Ci0tLSBhL2FyY2gvbWlw
cy9ib290L2R0cy9icmNtL2JjbTYzNjIuZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJj
bS9iY202MzYyLmR0c2kKQEAgLTEwOCw2ICsxMDgsMTIgQEAgdWFydDE6IHNlcmlhbEAxMDAwMDEy
MCB7CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9OwogCisJCXBlcmlwaF9wd3I6IHBvd2Vy
LWNvbnRyb2xsZXJAMTAwMDE4NDggeworCQkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzNjItcG93
ZXItY29udHJvbGxlciI7CisJCQlyZWcgPSA8MHgxMDAwMTg0OCAweDQ+OworCQkJI3Bvd2VyLWRv
bWFpbi1jZWxscyA9IDwxPjsKKwkJfTsKKwogCQlsZWRzMDogbGVkLWNvbnRyb2xsZXJAMTAwMDE5
MDAgewogCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJCQkjc2l6ZS1jZWxscyA9IDwwPjsKLS0g
CjIuMjcuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
