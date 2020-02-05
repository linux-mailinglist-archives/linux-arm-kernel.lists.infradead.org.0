Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74EF153A8A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 22:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKnn0UAvgfVEjWxX6slQKqAIL7rwXBdR9CcxUx7Afns=; b=flK+3BocUqTB6L
	SzXLeimxvJq9PlvJW8s8z4YdCFul4+vNTGaPx+fYKk8cKAFrveRFlOaRcEkiK140xAl21srArXiJp
	SwRzqA9qlzZg1xfwOM4Z56x3/wp1b34nlHj3XdpAi97IZgZiLiLzkaVYtglD1MLpgE1Jp6gtthk4V
	y07oaNqUDtYvSAPilgcbf1EDHXbL/IjkZK1i/KqyUkJItYGmk+zP1DkshV7b9XtV25fUdmgRZC+Sd
	g1TDyS8JlXRGQ+1JYfqgSSZiB/c9bHBzqLNbLbgzXQztzFphSUJH7gAJH0KJfMYhtSc7nkGvJoy0S
	AL6CD7RbPOFgPP5sYW0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izSeC-0004i8-Tk; Wed, 05 Feb 2020 21:55:48 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izSe5-0004hq-Rt
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 21:55:43 +0000
Received: by mail-oi1-x243.google.com with SMTP id a22so2380241oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 13:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qndbgjnKGTRqil5Ffj6ZYDKeVw7HlXNwJpUlAgm+S6Y=;
 b=q34KOhpk47Q/2E2X+VFfQB25SvVHJuhCnCg72JdZCFnW+34+VG2/GkEDFmAASAupm4
 on29xmt526yzth1T5zm/ebJ1M1wvCuY4Yx6/901AobkiGPk8jC7h3RyrgcH5Vs4C8UF7
 KN/spHDzuJjORoS0IUzm0FRkq1V9B/lbDpLuH0gB4B5pLXTjNV0uKEZCndTP1J4oCf8/
 h/1WjYJS3OGsZsmR6BFQPvhvM6grondSLwj30uUnPicUHus/rgxmJdX6sdVQ4DIV/eiN
 xO+0hbO8PBLNoTOiNpeK721XNw3+z+C9X+yrn0GnSkd+efN1vixeURjr63JB7sXnCxsx
 8Xlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qndbgjnKGTRqil5Ffj6ZYDKeVw7HlXNwJpUlAgm+S6Y=;
 b=sRPj+KxaVuJcvAZxUipg+kFYVJSHR520eRC3XpX1Yp7B6SxXs6Dd4uNNITjmhkPypq
 XB5pWguRrY4GcBjVvPobErwU3yKE+LWyXxCsoZWJ/DEW3QFqski1ctQIWV08+K+TXXyn
 D0jcZgQIHdwqig/zc13+8QiCa8H4FtFvjJUX7K2srDkaAo60Z8HIgJByDNDEolbAk2q0
 8AOv7hF7C5UFcjh7FcmGS+YhXpHY7dminyl+95Qor/QEkK9d3D6+9DgFV2V7Zn6r7IZ3
 qzQbhuvDPzuaHp7/EhAW3DRJmZtaVifGz2B+iweK7KQgZ/ijZkydRh1Af/HUNsA/esYS
 ax+A==
X-Gm-Message-State: APjAAAXGqNVTJ39rGsUNTowlKU+w9LAAU0nJ7E6s9iTCnd7Sege8VIDv
 Z8PzX7uGvtMQxHEc+D4ax5o=
X-Google-Smtp-Source: APXvYqzIKlb6ICrQEIE/J8GnWSUbGPOQNuGxtAkBKjeoaS1kBpIQsikXhsSVFf7o1NUhEsOJfJTFIA==
X-Received: by 2002:aca:fd16:: with SMTP id b22mr4657409oii.73.1580939740596; 
 Wed, 05 Feb 2020 13:55:40 -0800 (PST)
Received: from Andrews-MBP-2.attlocal.com
 (45-18-127-186.lightspeed.austtx.sbcglobal.net. [45.18.127.186])
 by smtp.gmail.com with ESMTPSA id t23sm242396oic.28.2020.02.05.13.55.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Feb 2020 13:55:40 -0800 (PST)
From: Andrew Geissler <geissonator@gmail.com>
To: openbmc@lists.ozlabs.org, joel@jms.id.au, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH linux dev-5.4 v2] ARM: dts: aspeed: witherspoon: Add gpio line
 names
Date: Wed,  5 Feb 2020 15:55:11 -0600
Message-Id: <20200205215511.80333-1-geissonator@gmail.com>
X-Mailer: git-send-email 2.21.0 (Apple Git-122)
In-Reply-To: <FMfcgxwGDDpcbrVbWGfkMRbZCLSZqpMM>
References: <FMfcgxwGDDpcbrVbWGfkMRbZCLSZqpMM>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_135541_928072_878BE510 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geissonator[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 WEIRD_QUOTING          BODY: Weird repeated double-quotation marks
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-gpio@vger.kernel.org, Andrew Geissler <geissonator@yahoo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrew Geissler <geissonator@yahoo.com>

Name the gpios so libgiod will work with them

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
v2: added upstream to patch
    prepended fsi- on fsi related gpios
    prepended led- on led related gpios
    prepended presence on presence related gpios
    dropped pin_gpio_a1 definition
---
 .../boot/dts/aspeed-bmc-opp-witherspoon.dts   | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index 515f0f208ee6..2519722928a4 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -193,6 +193,42 @@
 
 };
 
+&gpio {
+    status = "okay";
+	gpio-line-names =
+	/*A0-A7*/	"","cfam-reset","","","","","fsi-mux","",
+	/*B0-B7*/	"","","","","","air-water","","",
+	/*C0-C7*/	"","","","","","","","",
+	/*D0-D7*/	"fsi-enable","","","","","","","",
+	/*E0-E7*/	"fsi-data","","","","","","","",
+	/*F0-F7*/	"","","","","","","","",
+	/*G0-G7*/	"","","","","","","","",
+	/*H0-H7*/	"","","","","","","","",
+	/*I0-I7*/	"","","","","","","","",
+	/*J0-J7*/	"","","checkstop","","","","","",
+	/*K0-K7*/	"","","","","","","","",
+	/*L0-L7*/	"","","","","","","","",
+	/*M0-M7*/	"","","","","","","","",
+	/*N0-N7*/	"presence-ps1","","led-rear-fault","led-rear-power",
+		        "led-rear-id","","","",
+	/*O0-O7*/	"","","","","","","","",
+	/*P0-P7*/	"","","","","","","","presence-ps0",
+	/*Q0-Q7*/	"","","","","","","","",
+	/*R0-R7*/	"","","fsi-trans","","","power-button","","",
+	/*S0-S7*/	"","","","","","","","",
+	/*T0-T7*/	"","","","","","","","",
+	/*U0-U7*/	"","","","","","","","",
+	/*V0-V7*/	"","","","","","","","",
+	/*W0-W7*/	"","","","","","","","",
+	/*X0-X7*/	"","","","","","","","",
+	/*Y0-Y7*/	"","","","","","","","",
+	/*Z0-Z7*/	"","","","","","","","",
+	/*AA0-AA7*/	"fsi-clock","","","","","","","",
+	/*AB0-AB7*/	"","","","","","","","",
+	/*AC0-AC7*/	"","","","","","","","";
+
+};
+
 &fmc {
 	status = "okay";
 
-- 
2.21.0 (Apple Git-122)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
