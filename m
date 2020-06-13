Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE091F81EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 10:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIdgFQGMu2vzYTMHgrcMyluv+TlyHr7Lf8QTH3N67Lw=; b=o8fVzZ/MC1gAxe
	Oujz0wqVu4HaGbkhf+JyLew6r6lqJPYU0grYcbMVkMsLUX1IjHgtpGwDrP4vafkydE1yxJM+hB3by
	MenPrz26VmGpxRuIYE+JO96mAsw0kHE9fb56VvEH7Ow6EfORKi9ZKjlsCOaUxd0dOJaYOP6P1ueG7
	tMXdWrRIOO8bEIhLgK1St/2FOoBuVq/mOFGuWCYUKOsdbi2+cqPcCDEQ9c66HGefV+59OAyJ+pmGa
	sh5xF5s4ulu49VLwoCs3gG5+ffSXKbOEpxJSwg+TmsLOus84HPpYmYcCF/Laq+WBLzwywAKBaHKo8
	rnhd/kDMEYREXXHyhWXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk1Sz-0007xP-EX; Sat, 13 Jun 2020 08:24:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk1QI-0005j5-NJ
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 08:21:56 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so9923119wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 01:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EiM8JpBzJJPkdg1XS1Ms7nThi6XK6NYvjUfMDMV3we4=;
 b=vGekoVrdkknxL8dRxqLO9M769KZhGeENyVytXE4MdSCxVG90FHVhTJs0zWpAk3Dk/i
 glp0jkI/u+3bwmUmk2kPwwO/w/y9yUTpQJuMbJ1lbdrMi1I2ZDT6KcuFvBStQ/uPUCzD
 ncqPmXpL1HwjSxHdSsr09HnLxkcPsCkYavEmcnPYo5rFaaBpkfx+CUtVErIfR4gIQEZw
 2Y1bj0PD5owcrIT9REVuICinG0Z5b3I0PvlUbka4lbDvg3b7CLGkkiu4i+kcwCnXGXPa
 ZbPwF3f23GHp78le3WniqLI+bAHCrx1z7GTORORgfW34QC4HgaKHWMGTkBeMPB/0SQCh
 Ib2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EiM8JpBzJJPkdg1XS1Ms7nThi6XK6NYvjUfMDMV3we4=;
 b=a+vcpekq795VCT/umeJkurW7AmVf2OTZtDl22CU1EspnBkoxYZsJ6TiP46OfZPob2M
 6HbU+FZ/l8BTfiZ4zA5luZo8bxOoA0t/QeN2hT+R5tCWizwE5WqxdKjUq2sPAz9p7+4l
 vq8SGRWh8WWYsiIHGGnkfXEZfOendWjS0IdDbKUQusqd7oU3po08mt8DY9X+BFeKpmDW
 U8sFXnR40R/tC4oPkXGtbksqj1p4UgdT4Udf8wPYO4ixJbRqYjUBJa08UcqtuCnz6v7x
 rZTK0LhJYiD6lFXbVBdHM1vy06XlIbwKM9p6+kV3MWeVT3XEPX3wdP+qL2gdYGObXTYe
 5W+g==
X-Gm-Message-State: AOAM5330evu6HRmDhKIHCrRLl1DU/F54eERADtMGOLl+v97cxlyCl0zt
 31wT7gLm3gADBzgo4YGb3pw=
X-Google-Smtp-Source: ABdhPJx8NpCRU70fRrfcT1DYEFGz9YToPBJNwlMmqUtS8GbcC1QgtcjhWzF2HxqlwqnORWtkAlb4KQ==
X-Received: by 2002:a05:600c:2317:: with SMTP id
 23mr2933559wmo.139.1592036513089; 
 Sat, 13 Jun 2020 01:21:53 -0700 (PDT)
Received: from skynet.lan (168.red-88-20-188.staticip.rima-tde.net.
 [88.20.188.168])
 by smtp.gmail.com with ESMTPSA id n189sm12243603wmb.43.2020.06.13.01.21.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 01:21:52 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 9/9] mips: bmips: dts: add BCM63268 power domain support
Date: Sat, 13 Jun 2020 10:21:40 +0200
Message-Id: <20200613082140.2009461-10-noltari@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200613082140.2009461-1-noltari@gmail.com>
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_012154_764180_3027E53A 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

QkNNNjMyNjggU29DcyBoYXZlIGEgcG93ZXIgZG9tYWluIGNvbnRyb2xsZXIgdG8gZW5hYmxlL2Rp
c2FibGUgY2VydGFpbgpjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCgpTaWduZWQt
b2ZmLWJ5OiDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgPG5vbHRhcmlAZ21haWwuY29tPgotLS0K
IHY0OiBubyBjaGFuZ2VzLgogdjM6IFNlcGFyYXRlIGR0LWJpbmRpbmdzIGRlZmluaXRpb25zIGZy
b20gcG93ZXIgZG9tYWluIC5kdHNpIHN1cHBvcnQuCiB2MjogQWRkIGR0LWJpbmRpbmdzIGhlYWRl
ciBmaWxlcy4KCiBhcmNoL21pcHMvYm9vdC9kdHMvYnJjbS9iY202MzI2OC5kdHNpIHwgNiArKysr
KysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21p
cHMvYm9vdC9kdHMvYnJjbS9iY202MzI2OC5kdHNpIGIvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20v
YmNtNjMyNjguZHRzaQppbmRleCBiZWVjMjQxNDVhZjcuLjVhY2I0OWI2MTg2NyAxMDA2NDQKLS0t
IGEvYXJjaC9taXBzL2Jvb3QvZHRzL2JyY20vYmNtNjMyNjguZHRzaQorKysgYi9hcmNoL21pcHMv
Ym9vdC9kdHMvYnJjbS9iY202MzI2OC5kdHNpCkBAIC0xMTcsNiArMTE3LDEyIEBAIGxlZHMwOiBs
ZWQtY29udHJvbGxlckAxMDAwMTkwMCB7CiAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwogCQl9Owog
CisJCXBlcmlwaF9wd3I6IHBvd2VyLWNvbnRyb2xsZXJAMTAwMDE4NGMgeworCQkJY29tcGF0aWJs
ZSA9ICJicmNtLGJjbTYzMjgtcG93ZXItY29udHJvbGxlciI7CisJCQlyZWcgPSA8MHgxMDAwMTg0
YyAweDQ+OworCQkJI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwxPjsKKwkJfTsKKwogCQllaGNpOiB1
c2JAMTAwMDI1MDAgewogCQkJY29tcGF0aWJsZSA9ICJicmNtLGJjbTYzMjY4LWVoY2kiLCAiZ2Vu
ZXJpYy1laGNpIjsKIAkJCXJlZyA9IDwweDEwMDAyNTAwIDB4MTAwPjsKLS0gCjIuMjcuMAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
