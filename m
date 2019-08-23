Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B769C9ADDB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 13:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=p5UEghnqHDeNxbNnTTXO401ux9dsR2crz0QGL8vwQa8=; b=AGUPfDayPzLs2W
	XJmx72gWzNDvdgVThZKkwsOPnsDm0W6UpejASo3tqDG42HW2CutReRAMZuH6aAH8yi1G1aFleDLmK
	eapERu4K/DGuuB/dkOBl5PUbaQzChWRwyfe9lW7UV9eR1XjvdeK2d28ey9ziuekDrl2kKoUfpSsC6
	VZAyle6VuknCWI91LIqVhC36S9k2Of0lvh4B47Hw0vVsfcHFlffxxO09lMw/IjD+U0FFqD4AEqBAa
	WEeNPZUsLBunwwUsup3/niK02sdc0X6VlxFle4IfldMzpMN8s48ezKTgdyKh1U3p3jCM8I3QHsnrg
	ODbaTPU4JaRB7lN92p2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17QI-00069d-C3; Fri, 23 Aug 2019 11:08:02 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17Q9-00068R-NB
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 11:07:55 +0000
Received: by mail-lf1-x141.google.com with SMTP id b17so6851546lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 04:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZHcoLOCEDvNdiKJSIaGU9TMbH+mXTX9zteaN4YnDK00=;
 b=cPSKEtJOjYq9WsIijVXnZyKIbicP5PMiaPAcAAyh8mxF2fDAkuuFN3FcjHGy6xOiA8
 dg3q+8r842lRJFe52waZ1pWOP1wKwsDLDgKLqIpRczfz3K1GCezlxU2eAw9eIZbMKxrf
 mrn4ekEkBMNN05Alm52osCbJSaG9T3p08S1uk/Etvu7P/iU5q1BQZIwSb0LvUTNiRtvb
 cYFDDf3S1vHAgguA6kMPY4lnFgRTA7hrkOSRgVLfAkUQYbXFTy9PUohmSf4W+STJYWLK
 3ZPZzlh8ATubZ3jKVG+Q0Xc8NiATpTsN2VCfjDHzuS4R6vwvK+BZ87tC4ou5Z6faQS3u
 BXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZHcoLOCEDvNdiKJSIaGU9TMbH+mXTX9zteaN4YnDK00=;
 b=h/kQ35RITzIocZ72ABOA2TAXdjwJVfvul713pzeJijVJ6yP8RACLvje5XophgVazg1
 317UXcFLyn2Z4MtVWfuO0faVguLOkoB7KXDLwvZmHA1W2QLaQUdY030m4QsXdBLNoXKk
 y5NDmU5FWRC/4Q2DmoUGAgRAYIrOzh5WCIII333N07f6zZ+K/LBMHbNkifh6XfQg9pUV
 bbMJyI41BNmXxoWw43XlU80JoMjVF5Sj/Zb3kjKRIVhU3gII0vL9xJBTudZkIH86ybGE
 x6cCv01Qz7WLAHtFkDzQedPuWC1RUP4fEsDOaTkRROZ5ext9Utk3Qp55NTTkBkB6/9qt
 dD+g==
X-Gm-Message-State: APjAAAVcJweeHHLP8mbm465mQmjvdzwwao9WvJMAZ3cRd12RfOWpvZ4f
 slva2wyZXRdAb626XjmjvKlKjg==
X-Google-Smtp-Source: APXvYqzi3fwiyJBZWIDhJNnGDLtbqn6NPY5vwE/i10iohempQV8GMBpKT39wg3/8zN79Mnf6fd6bZA==
X-Received: by 2002:a19:2314:: with SMTP id j20mr1185222lfj.22.1566558471447; 
 Fri, 23 Aug 2019 04:07:51 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se.
 [213.112.60.36])
 by smtp.gmail.com with ESMTPSA id r23sm596312ljm.59.2019.08.23.04.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 04:07:50 -0700 (PDT)
From: Anders Roxell <anders.roxell@linaro.org>
To: ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 daniel@ffwll.ch, matthias.bgg@gmail.com
Subject: [PATCH] drm/mediatek: fix implicit function declaration
Date: Fri, 23 Aug 2019 13:07:36 +0200
Message-Id: <20190823110736.26117-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_040753_769553_F80CC54F 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiBidWlsZGluZyBtdGtfZHJtX2Rydi5vIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3IgaXMg
c2VlbjoKCi4uL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5jOiBJbiBmdW5j
dGlvbiDigJhtdGtfZHJtX2ttc19pbml04oCZOgouLi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsv
bXRrX2RybV9kcnYuYzoyOTE6ODogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mCiBmdW5j
dGlvbiDigJhkbWFfc2V0X21heF9zZWdfc2l6ZeKAmTsgZGlkIHlvdSBtZWFuIOKAmGRybV9yZWN0
X2FkanVzdF9zaXpl4oCZPyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0K
ICByZXQgPSBkbWFfc2V0X21heF9zZWdfc2l6ZShkbWFfZGV2LCAodW5zaWduZWQgaW50KURNQV9C
SVRfTUFTSygzMikpOwogICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAgICAgZHJtX3Jl
Y3RfYWRqdXN0X3NpemUKLi4vZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmM6
MjkxOjUyOiBlcnJvcjogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YKIGZ1bmN0aW9uIOKAmERNQV9C
SVRfTUFTS+KAmTsgZGlkIHlvdSBtZWFuIOKAmEJJVF9NQVNL4oCZPyBbLVdlcnJvcj1pbXBsaWNp
dC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICByZXQgPSBkbWFfc2V0X21heF9zZWdfc2l6ZShkbWFf
ZGV2LCAodW5zaWduZWQgaW50KURNQV9CSVRfTUFTSygzMikpOwogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+CiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCSVRfTUFTSwoKUmV3b3Jr
IHRvIGFkZCBhIG1pc3NpbmcgaW5jbHVkZSBmaWxlICdsaW51eC9kbWEtbWFwcGluZy5oJywgYmVj
YXVzZSB0aGF0CmlzIHRoZSAob25seSkgaGVhZGVyIGZpbGUgY29udGFpbmluZyB0aGF0IGRlY2xh
cmF0aW9uLgoKRml4ZXM6IDA3MDk1NTU1OGU4MiAoImRybS9tZWRpYXRlazogc2V0IERNQSBtYXgg
c2VnbWVudCBzaXplIikKU2lnbmVkLW9mZi1ieTogQW5kZXJzIFJveGVsbCA8YW5kZXJzLnJveGVs
bEBsaW5hcm8ub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5j
IHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2Rydi5jCmluZGV4IDU0NTM2MTc2YmNiYi4uMzUyYjgxYTdhNjcwIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuYwpAQCAtMTAsNiArMTAsNyBAQAogI2lu
Y2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9wbGF0Zm9ybS5o
PgogI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtbWFw
cGluZy5oPgogCiAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWMuaD4KICNpbmNsdWRlIDxkcm0vZHJt
X2F0b21pY19oZWxwZXIuaD4KLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
