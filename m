Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B381F15A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 11:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6CGmXWN+CPOKuglq2d+2C/mBJ+weOTlGqRSVeH1YM8=; b=s+YlzcFqU8YOkl
	wLovPv5U6KZZfsvUZ38jiJx3Q8qsbWNRQSeHePg69t2gSIxsQ92MhY6x1h+gnm7B7We1MWzrnBorW
	3aZn54x+eLL2ub3JvJtfkviWoE/+lr0lDOqrNfSJlborq14eY3kVDY19nFzsdSsCtR4w1zBS2LEiC
	aPd3r/2fffRFAz4cuueqAkxFSlFghemjprYhf1+LfHM3FLk9wPpTa2Zex7EEA0N1GT+dW4KruBV5a
	rw71QvDDQO/R9VZk02FetAecrVVLsiG31eoOeiO2LkV/4YWd7gaoJgBprafwphtk9HgNni8Bt+sZv
	lzp4UCHT2lVxRWaB/3aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEHk-0003Bb-KB; Mon, 08 Jun 2020 09:41:40 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEH5-0002mt-8b; Mon, 08 Jun 2020 09:41:00 +0000
Received: by mail-wm1-x32e.google.com with SMTP id k26so15827882wmi.4;
 Mon, 08 Jun 2020 02:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=il1m5NUP7re9G7KU6aHwcFuWrrrnzuYE/JMpUwdavKA=;
 b=CLeq0rnlvqkHw2Qlwfd/NB4okSe7BM4LDkARQWALxpxMU9NXeBR5tgGn6UbrJR8bvT
 o7MQf65r2QX2CAAHW7x7uYdO2NutqOzSjV0z/yDgc6S/qLiicFEVzsQL49h3mYHaid28
 QMO+r/9q7akBk72uMZkOPi6facaSCzUKjKo8rZf9FzqArcoi+QoqhPY3j00NrGP7KSNz
 1Z+P2U1Y42Nh8738GYGIyXhHp5EKWYXvvpCdOT/CBgDRJK7/oPndGA7Of+y+fm2HKUCf
 PFB+VZ74lrsqENdaBJMzQGFZe3YwKjHIJoinfXmAwj0tnLIq4/e6MmPRNkmD4z755hw9
 QqIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=il1m5NUP7re9G7KU6aHwcFuWrrrnzuYE/JMpUwdavKA=;
 b=iwupgZkz2jM+OjryBkkvxA2EONLPOkyu0q3gghSj3oJOoMMcbgyj3pV05U69IFRAyQ
 /X++BaYSqmq7JtWSItnWh5RgjUsSRiTheTPkuf7Hq178G0IXBWOlI9NZVBF1vcx0mI3d
 9lRWk+znrEdTcLND9YKlX/yi0OslyRqS16nI1y1T6tHAhJR7eAGC7MokxStAxsXAFKgN
 hfjJ0042A0z66VfBjo4BOh3v2PsXa91u64NR77ZRR5A2IXlhi2IOScTAvjJwYPPpPhhv
 OWYNEw3cvVuDEBMmTKfg8Z0l3mA7Stv2ioiNgaGodq6Uk0c9Cy4tOP7drvXHRoJnLOkD
 n9SA==
X-Gm-Message-State: AOAM533NosnMfduBZjxsdXLt+RFzKT9c6dKYO01QlZFlzzPVZC06HFTN
 eUOBNwMOSU/db/n5f11b3i12kD5UrhzLIQ==
X-Google-Smtp-Source: ABdhPJwdwqoWaP8+TMuOU5+m89nd/NKtrkkJcMfiuCxPYHjWwM/xJi7bWdkRUO3z4i7W8AInvcYxJQ==
X-Received: by 2002:a1c:4105:: with SMTP id o5mr15250547wma.168.1591609257618; 
 Mon, 08 Jun 2020 02:40:57 -0700 (PDT)
Received: from skynet.lan (28.red-83-49-61.dynamicip.rima-tde.net.
 [83.49.61.28])
 by smtp.gmail.com with ESMTPSA id a3sm22096479wrp.91.2020.06.08.02.40.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 02:40:57 -0700 (PDT)
From: =?UTF-8?q?=C3=81lvaro=20Fern=C3=A1ndez=20Rojas?= <noltari@gmail.com>
To: tsbogend@alpha.franken.de, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, jonas.gorski@gmail.com,
 linus.walleij@linaro.org, linux-mips@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org
Subject: [PATCH 1/2] MIPS: BCM63xx: add helper function to detect CFE
Date: Mon,  8 Jun 2020 11:40:52 +0200
Message-Id: <20200608094053.3381512-2-noltari@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608094053.3381512-1-noltari@gmail.com>
References: <20200608094053.3381512-1-noltari@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_024059_302659_55BA0FE4 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32e listed in]
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

Q0ZFIHBhc3NlcyBhcmd1bWVudCAzIGFzICJDRkUxIi4KClNpZ25lZC1vZmYtYnk6IMOBbHZhcm8g
RmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvbmFz
IEdvcnNraSA8am9uYXMuZ29yc2tpQGdtYWlsLmNvbT4KLS0tCiBhcmNoL21pcHMvaW5jbHVkZS9h
c20vbWFjaC1iY202M3h4L2JjbTYzeHhfYm9hcmQuaCB8IDYgKysrKysrCiAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9taXBzL2luY2x1ZGUvYXNtL21h
Y2gtYmNtNjN4eC9iY202M3h4X2JvYXJkLmggYi9hcmNoL21pcHMvaW5jbHVkZS9hc20vbWFjaC1i
Y202M3h4L2JjbTYzeHhfYm9hcmQuaAppbmRleCAxZDE5YTcyNmY4NmMuLjVhZjA3Nzk2ZThjNyAx
MDA2NDQKLS0tIGEvYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9iY202M3h4X2Jv
YXJkLmgKKysrIGIvYXJjaC9taXBzL2luY2x1ZGUvYXNtL21hY2gtYmNtNjN4eC9iY202M3h4X2Jv
YXJkLmgKQEAgLTIsNiArMiw4IEBACiAjaWZuZGVmIEJDTTYzWFhfQk9BUkRfSF8KICNkZWZpbmUg
QkNNNjNYWF9CT0FSRF9IXwogCisjaW5jbHVkZSA8YXNtL2Jvb3RpbmZvLmg+CisKIGNvbnN0IGNo
YXIgKmJvYXJkX2dldF9uYW1lKHZvaWQpOwogCiB2b2lkIGJvYXJkX3Byb21faW5pdCh2b2lkKTsK
QEAgLTEwLDQgKzEyLDggQEAgdm9pZCBib2FyZF9zZXR1cCh2b2lkKTsKIAogaW50IGJvYXJkX3Jl
Z2lzdGVyX2RldmljZXModm9pZCk7CiAKK3N0YXRpYyBpbmxpbmUgYm9vbCBiY202M3h4X2lzX2Nm
ZV9wcmVzZW50KHZvaWQpIHsKKwlyZXR1cm4gZndfYXJnMyA9PSAweDQzNDY0NTMxOworfQorCiAj
ZW5kaWYgLyogISBCQ002M1hYX0JPQVJEX0hfICovCi0tIAoyLjI2LjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
