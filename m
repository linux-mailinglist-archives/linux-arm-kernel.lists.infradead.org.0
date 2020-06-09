Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E511F38BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 12:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFj6W7aGGN3x4IpjvJeCmS8fRokcxtPnt59t9bglKRA=; b=ScYV+C4SKnfTFn
	AavnsOVhVlaW57Pk4vOkNJnnA45S+Sm0EzpOe0Ld7rj2Js638+R7SQCX8252IwDLJ30RpAmkZQjo2
	m5XMCKfiF5r4zTuao88kyqD6lD+BwfqmVdx647rK/omGS5W4zinnJ9z4VQB9AGMYlxuIUMRcJtvP9
	00lB8K+C1l1PLsXT082r2cvOiTYJNQSLl20FcrjCQVeAb/1Q/bxk4JlzRcktrUjHuAN2TaupaFU4s
	RBTFp6WC1v5SRIKINvTbCOIHq3cuxq7NLjAJHni7jXyqF/9+vrDB9MhPkOMNA7UHMhtVoBz/ThNsD
	cVmK6h+Is3MU6ES2pCWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jibsk-0006fD-2N; Tue, 09 Jun 2020 10:53:26 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jibsB-0006H5-AE
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 10:52:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id r15so2605778wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 03:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q8RVdDdZ6lI+tdJvWKmgskLx2Vkoy4BLid+J0jKoeDE=;
 b=Ivsw5bR/lq453+cAFa6bKx1kq5+Z+qK/z1X5OZ2ih4IRajv87GqW21W7G+goj2OkgJ
 VaMJE1mKMP+O2w362Bs3VBEohlZ/ClyhjyWoYL86mr2F2SHqcFDBk3zLFj3SFxy+6R/o
 FUgwy0dPN9ktTLtU/4HmALB/pXWLq3L2mEBYC8wq7YmP1LG/zrgX5SveKeDbqZdwX1h2
 4e9lqhZzMwZLuFPQXWn6vJ5w5FgD/BxTbMS6x3aZm7lu3mtNxBqh859GNTIkACGm28sP
 X81q/4ucYAf4/WhVLWnDhFny8jvIAIsub/6v9D4taan64qXX/aFOhd3QW3dUJqfxj5z+
 EObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q8RVdDdZ6lI+tdJvWKmgskLx2Vkoy4BLid+J0jKoeDE=;
 b=AUmSIKzZzLJ1G38TkR21oCAgAbtVawmCS1aMZjwDEmEndLNJQW4+TS4ap4faMxjtF7
 DsbDD+lJtEyp+o4b18hlCdU4rRsdeJn5yN4qHfHshTIElHmIt/7mancCcJ6Hyqgf9pGT
 +U8B0F0XM8J2wM50HI+tA+7gC97L3n0P94H1wzyWaE3DNxUMiZbVCEek18kmHLiY8POs
 gCYvfUkdfxkgPrRmNOaHsQkAxvgVMRxwewSnmzGywgMWPt4S8VLNeU574FJbehxTnRmU
 BBh3UH+sYjeWaIYQfnUQooINDa7tv2YGqydY6L0ta/ULIFDnaice53uooVyQi+Y4GpNv
 jlGw==
X-Gm-Message-State: AOAM532jhXOB49VhTHtRa5LaiulugNR+PK97DBznfPDZnR5a/eCG293R
 i8o1riJLNYLZIZ3Ncei4+Y0=
X-Google-Smtp-Source: ABdhPJwA9LIELheHMB5oq2Vt2zKR+24hqfQscgD01puif3yRbJGjUCabEjWqJ+UUCSzlNv85Ghs4ug==
X-Received: by 2002:a1c:e40a:: with SMTP id b10mr3283247wmh.41.1591699969715; 
 Tue, 09 Jun 2020 03:52:49 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id h5sm2949931wrw.85.2020.06.09.03.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 03:52:49 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] mips: bmips: dts: add BCM6328 power domain support
Date: Tue,  9 Jun 2020 12:52:43 +0200
Message-Id: <20200609105244.4014823-4-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609105244.4014823-1-noltari@gmail.com>
References: <20200609105244.4014823-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_035251_356788_EBE99A00 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
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

QkNNNjMyOCBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCmNvbXBvbmVudHMgaW4gb3JkZXIgdG8gc2F2ZSBwb3dlci4KClNpZ25lZC1v
ZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+Ci0tLQog
YXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyOC5kdHNpIHwgNiArKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMv
YnJjbS9iY202MzI4LmR0c2kgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI4LmR0c2kK
aW5kZXggYWY4NjBkMDZkZWY2Li4xZjllZGQ3MTAzOTIgMTAwNjQ0Ci0tLSBhL2FyY2gvbWlwcy9i
b290L2R0cy9icmNtL2JjbTYzMjguZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9i
Y202MzI4LmR0c2kKQEAgLTExMCw2ICsxMTAsMTIgQEAgbGVkczA6IGxlZC1jb250cm9sbGVyQDEw
MDAwODAwIHsKIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7CiAJCX07CiAKKwkJcGVyaXBoX3B3cjog
cG93ZXItY29udHJvbGxlckAxMDAwMTg0OCB7CisJCQljb21wYXRpYmxlID0gImJyY20sYmNtNjMy
OC1wb3dlci1jb250cm9sbGVyIjsKKwkJCXJlZyA9IDwweDEwMDAxODQ4IDB4ND47CisJCQkjcG93
ZXItZG9tYWluLWNlbGxzID0gPDE+OworCQl9OworCiAJCWVoY2k6IHVzYkAxMDAwMjUwMCB7CiAJ
CQljb21wYXRpYmxlID0gImJyY20sYmNtNjMyOC1laGNpIiwgImdlbmVyaWMtZWhjaSI7CiAJCQly
ZWcgPSA8MHgxMDAwMjUwMCAweDEwMD47Ci0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
