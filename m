Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3471ADA8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Njcv8HCXnxB1M0KY6GXx+0tV+DixwhbJz2juDLJTggc=; b=FEyzVyGFaAqo9G
	wi0vQMBKOs+BgeshLj7piV7tlUQhXIow8E0ix++69jylgMfH2ztTn8yNa9BpoyzbhDwbEQLx5N4OM
	DXtxoXh5ESLmCfP2toR0KhWUdUcvmXwFDPsutZvs/D+1F7m+3YKErxe0RlnvBMutdlHzsU/4Y2CQF
	+5KOi9zWws5TDNmQYjGD0LN60vkb9Wdcv6i87lCqJZsGvNvkP+B5MXT3OzZoSTyHmvRZTdeHLcDxP
	UjNmL0xuBtJIOZd9E1VSrq5gaRiFhbqR1z5wHH+msjYQ6XHRa2bB+hIYZdWtftPLVqsbNBBD6RbOu
	Yq43x8Oe+HiG7FOyZcWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPsZb-0007cp-Qs; Sun, 12 May 2019 17:47:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPsYK-00065e-RR
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:46:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id f2so11556995wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 10:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O/WO/ffKN1nR7MAqYGhQYYeumvZlvKqHgg+H3sUnXZQ=;
 b=BfFp3mD1gJ83voX20yOdlNujQc4iP8GMJNSAhGKW9J+ieaGZrQZm70MlVwNRlAovJf
 cLFpPO4p3cCkiMwLKCMP3iIR2kpy2CwY88bzuvwuI29Rj1cxv6j36TrXibdYc/wS972g
 LokaEdxI8LH8sUVepVtWfShY3al33AYxz9wlelH2iHOQxrIUS7JQLWyjX+SBd/NT1JqG
 kh1JzmOkAKJLN4hcDplcv95TbVrzyCJiKzjHKPHo04KeZhCtZ+Q4/gkuu3KYJ/JUORGv
 D1fuidpRei9PjrnLRshDSoDfeqvNshBjQT3U9hUX6owqSSoRPARUTEn6Wo6xab5CBHev
 lMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O/WO/ffKN1nR7MAqYGhQYYeumvZlvKqHgg+H3sUnXZQ=;
 b=byzmF0mRrImirZBZ6VZC7fByffKlVcP0ItzuVg/LwOhhAdUSXIx6FeCLt0eMtx+vA0
 QQPZPjvad0V9qnej/M92W5jrMvsBEOrvAVBscYv+PJ/6pKcVJM/R9zjAaKVSl7250nxC
 FZasOZS+8iUj/iKgWMgavJJbCspXDAPD6EIkJNXG/QfoPl42leW2RSt1fnSIjKy4z3Bo
 OWm2am43CfiA6e6GYajftT3hWXOf1CsBrOGqmgUQNkmKiBOTnYr7U9sEd9/CqzkZSTxa
 GvuktkEIb93hMR4wzGJxccOfaNkHv/rmexNP8Psd1pyfGoA0uSK79qo9IsyoZF1JsZiV
 75WA==
X-Gm-Message-State: APjAAAWQB/wWoyx4TEnneuqq4v4g3z5FViCxgpnYJGjPIlMI7PKjTPdX
 CzttYIwki0LYNdwS+ER0q3M=
X-Google-Smtp-Source: APXvYqzi9o0UaKC2uI0n2gwk41XjsRknm8NfjHda1nCX7OznFRIL6qrFRg5m6GcNJ+2ExgmPPAPjqQ==
X-Received: by 2002:a05:600c:2291:: with SMTP id
 17mr12838376wmf.132.1557683183110; 
 Sun, 12 May 2019 10:46:23 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id d14sm9090558wre.78.2019.05.12.10.46.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 10:46:22 -0700 (PDT)
From: peron.clem@gmail.com
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v4 7/8] arm64: dts: allwinner: Add mali GPU supply for
 OrangePi Boards
Date: Sun, 12 May 2019 19:46:07 +0200
Message-Id: <20190512174608.10083-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512174608.10083-1-peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_104625_244165_F5016287 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
YWRkIHN1cHBseSB0byB0aGUgTWFsaSBHUFUgbm9kZSBvbiB0aGUKT3JhbmdlIFBpIE9uZSBQbHVz
IGFuZCBMaXRlMiBib2FyZHMuCgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9u
LmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1vcmFuZ2VwaS5kdHNpIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9u
cygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni1vcmFuZ2VwaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2
LW9yYW5nZXBpLmR0c2kKaW5kZXggNjJlMjc5NDhhM2ZhLi5iZDEzMjk3NTU1YWIgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNp
CisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5k
dHNpCkBAIC01NSw2ICs1NSwxMSBAQAogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAKKyZncHUgewor
CW1hbGktc3VwcGx5ID0gPCZyZWdfZGNkY2M+OworCXN0YXR1cyA9ICJva2F5IjsKK307CisKICZt
bWMwIHsKIAl2bW1jLXN1cHBseSA9IDwmcmVnX2NsZG8xPjsKIAljZC1ncGlvcyA9IDwmcGlvIDUg
NiBHUElPX0FDVElWRV9MT1c+OwotLSAKMi4xNy4xCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
