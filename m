Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FEA81F3908
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=af5lAaRc5Ag/BMVhHDwZhSaOivdyI6v7dP97fmNSwsA=; b=R7f8//pIUMFbXT
	jC9g0ssPrwMS+eNzjJWVzQmED2GB3raRYxf8UFUbqNMuDqD6jqwnNc16Uvw53xmS+m+csuGI7tAMM
	6c3R4FR+5AYygnvByXdjTSitssgO8SPKslyTiG7YwxB6ixKu3OZW42r5DvxTs0RGQ5oGLlpRnJqV0
	atMyKKWF9r0Y6Fh/9BXtGTZs8LnOZ1lYYeh+yCNbrTEIyIe7VyObP2lMPHHhivsQTSkldlXgNmY49
	fBta1wdKQFmKhuO7B7vO5MoMc/SgifK9K9MjAAyOmdew2BSRxVjUApRsr/IN7mVrNeWr17lVWu4jk
	5Dwgl1lULA+kSLcD/xJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jic7y-0008Mb-QI; Tue, 09 Jun 2020 11:09:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jic7r-0008MG-BA
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:09:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id y17so20796181wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 04:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h2QWlVvw4wMKxc+Ci1vOHG2QgW2mAuzBv8Io5LaqvsY=;
 b=J8W9VqQY47yQ3goeW3AiZJ5iJ+v+clrOD3aA3OeD9dUgQmmjMW66bxrsz8bxNHf01G
 JZOmIh1wEQw8cJ3S47Dxnrak4Agc+skqReoktOthEI42eh10c+gJuhbuY++z1IPY40Sw
 XgCWC+KjyJ8rn0A+E+UmJxoJVe2uRfInHNh+EPGMUvjBUhHg0sjDboEs2olUjRprD6Ve
 MgPPkT2nL57j43LAytSt3oZ7HD3ceOHYfDCRheMjnloTjPgwgxRMuJmtkpt9fZ+1fhNF
 2luElT0L3weZLr1z9SWccJurfTCptjXNFprbS2ugIlYNeqAnutnzy+k0ayt75WM9cmAo
 mgoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h2QWlVvw4wMKxc+Ci1vOHG2QgW2mAuzBv8Io5LaqvsY=;
 b=JQwvhkyRLfx7BC99rFUBkCQ6MCiHh6nf5xHs9VvTQYJ71nURii29lG1z5rKft2UfQe
 48LzAfE/GPRHZroJTpfndLuWKMCY2Aa7t/WWKKRvJYMVinBX7toyYAYAwmwUQfsoii5l
 +P2vwFi3KSibQJMn9uCECqgIr8NKT7tVI3EAvzw3KLseRXZo6aeGFjIHqWnJjNLzyBrI
 5YMUIWnJNFZ+jt3HdeA7GMD7uymje/kCfzybC6TfxJwQ3oeXn7aFzqS9TJEdpiqzMi6E
 xceFY0RidXPzvAXjGfsNUyl6lCJjmzX8MiV7asGJAagUBcpbJvXGQHh9FWnOXW8I5wpx
 +0Bw==
X-Gm-Message-State: AOAM5308NChZ2MYsd11kT0lCloQZLjoOG12qtWgt6ZQma8AIDouliIr3
 wsAqTVbgtcGbzjTsZrHaLoQ=
X-Google-Smtp-Source: ABdhPJy6NSqRlaJHFiqgB5y5VcHEXb+bOeM3VNkWU8A02NM2pDVyEvDQDt+uk8yfwIGYHEbZQP5r/A==
X-Received: by 2002:adf:a449:: with SMTP id e9mr3814645wra.294.1591700941883; 
 Tue, 09 Jun 2020 04:09:01 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id u3sm2988203wrw.89.2020.06.09.04.09.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 04:09:01 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, lkp@intel.com,
 jonas.gorski@gmail.com, f4bug@amsat.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] clk: bcm63xx-gate: fix last clock availability
Date: Tue,  9 Jun 2020 13:08:46 +0200
Message-Id: <20200609110846.4029620-1-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_040903_401294_2C458AD6 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

SW4gb3JkZXIgdG8gbWFrZSB0aGUgbGFzdCBjbG9jayBhdmFpbGFibGUsIG1heGJpdCBoYXMgdG8g
YmUgc2V0IHRvIHRoZQpoaWdoZXN0IGJpdCB2YWx1ZSBwbHVzIDEuCgpGaXhlczogMWMwOTk3Nzlj
MWUyICgiY2xrOiBhZGQgQkNNNjNYWCBnYXRlZCBjbG9jayBjb250cm9sbGVyIGRyaXZlciIpClNp
Z25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
Ci0tLQogZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUuYyB8IDEgKwogMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvYmNtL2Nsay1i
Y202M3h4LWdhdGUuYyBiL2RyaXZlcnMvY2xrL2JjbS9jbGstYmNtNjN4eC1nYXRlLmMKaW5kZXgg
OThlODg0OTU3ZGI4Li45MTFhMjliZDc0NGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL2JjbS9j
bGstYmNtNjN4eC1nYXRlLmMKKysrIGIvZHJpdmVycy9jbGsvYmNtL2Nsay1iY202M3h4LWdhdGUu
YwpAQCAtMTU1LDYgKzE1NSw3IEBAIHN0YXRpYyBpbnQgY2xrX2JjbTYzeHhfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAogCWZvciAoZW50cnkgPSB0YWJsZTsgZW50cnktPm5h
bWU7IGVudHJ5KyspCiAJCW1heGJpdCA9IG1heF90KHU4LCBtYXhiaXQsIGVudHJ5LT5iaXQpOwor
CW1heGJpdCsrOwogCiAJaHcgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc3RydWN0X3NpemUo
aHcsIGRhdGEuaHdzLCBtYXhiaXQpLAogCQkJICBHRlBfS0VSTkVMKTsKLS0gCjIuMjYuMgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
