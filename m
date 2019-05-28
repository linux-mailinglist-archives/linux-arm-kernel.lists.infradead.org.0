Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137A12CB9D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2I1VMllrh3UtLIrxrw8Nh4G4jLvxXT++LdtQz6rG+Yo=; b=nYtq6o31X++/9L
	LOOE1f5XK9IjrRA7LpED/ezwQrqxhHPtbCvO996xMSYOSjcrN4MfmgTLGP7Py4uYFMxbPoBGZ4Btz
	Aor2ZQNRloWMB/94b/vIrs/WTMr/FRrjSyKH/Ws0QRf1FMNp1eiaWuUYEYTI322Uutdw45Ww1TefN
	pvj6ZnNfjk6wnxMtHj3gptDGOAxCpb4URLjv8EoDAk7l2J0vfMJnA2VjDmBHPaK4974m1SYHOdcZ7
	bJIkrxeWm33rW8aFMllObcwntXWcSImFIElTcYvX74GsG0mg+Wzb6VvWbxcug+3zElnQInNx3yrWm
	CrX/NTi7KO6Gnh36TDjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVemk-0003JS-F1; Tue, 28 May 2019 16:17:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekn-0000ZG-00
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id d17so3613431wmb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4pnyJmIUnLoD7dR5gJykJYv78SBMiwJXtAbyq2Z7Mh8=;
 b=Cn+BCXPN3tWrkqRIHS+SVz7wU2FUyP/vggbr76FoHd0VZgvJgx733/uHXbsie0MZaX
 +cwcmWC0Wrxkl2+OsprU/MrsakOZCo1ZRBLShY9TISxi+EIGwvOcEADxmagvr3+SDc3B
 IN4b3//qPKv598ngXH+OZAo0rRnpTuI24ZTvpHat21Yt1hKbQ3oAsrK7IRdBOPqxTTUo
 VgU/eNwicEO3To9yOfmYk/MHYe4hd1qIza3cb7gtlZ1q8mKQvrglruWUj48IlEp0Xe6X
 X3R5BhMcPUSZ1Hj8MXqXlHcXmz9DOt5XSiHUBAE92TkgAgXOp9ZCcK9Xn3k0pAJpKZAv
 Xu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4pnyJmIUnLoD7dR5gJykJYv78SBMiwJXtAbyq2Z7Mh8=;
 b=dCXSmK3IORmeLwMYCG/14aA4wCYieSukSRTEXIYajrUkIuh/2knDzU+fiQx3CU6/hc
 yYvY+wksGZ2VDfkjL+Z53B1LFc3WknNWDu3sM8sk7I9LeNsQXQVCxdHwnYoD2Gg+19lh
 ZiN4CaZvyYpJbmM5bHaZjEvtyqtILH7o0ek+zWqAHWaZlF+PdJv7tu/nc3zVVkrLhHdf
 e0Xxa4RW1gnRctaVW7TPdWZ7rEF9TZ+zt11M2wjnNzTr5UUP73WuSYzu+0O1dENJAL9F
 IvnlMyX9fsQhlvpphDYj0pQ42kOye3V2S4KRab2pg/Vf7VgnSjc0ANIEPQw2/rN6UQlL
 5M0A==
X-Gm-Message-State: APjAAAV0cSvHgHUFyMQNol8AyvP8lOx+pne1JvKbQIZQi4UcncxLRVQV
 BHgbqFPQcSVQLNqqZdPpJIk=
X-Google-Smtp-Source: APXvYqzZA7E6nZUwcQyfJh5YD5kkkXzwAGN7NdIqfU7H//W/KTi34HryDLMmy0yLkGZ91MwvIS/tRA==
X-Received: by 2002:a7b:c24f:: with SMTP id b15mr3792599wmj.103.1559060107465; 
 Tue, 28 May 2019 09:15:07 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.15.06
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:15:06 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 11/12] arm64: dts: allwinner: h6: Enable IR on Beelink GS1
Date: Tue, 28 May 2019 18:14:39 +0200
Message-Id: <20190528161440.27172-12-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091509_288045_7D677808 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgaGFzIGFuIElSIHJlY2VpdmVyLgoKRW5hYmxlIGl0IGluIHRoZSBkZXZpY2Ut
dHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmst
Z3MxLmR0cyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdz
MS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1n
czEuZHRzCmluZGV4IDBkYzMzYzkwZGQ2MC4uNjgwZGMyOWNiMDg5IDEwMDY0NAotLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGluay1nczEuZHRzCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1iZWVsaW5rLWdzMS5kdHMK
QEAgLTIzMiw2ICsyMzIsMTAgQEAKIAl9OwogfTsKIAorJnJfaXIgeworCXN0YXR1cyA9ICJva2F5
IjsKK307CisKICZyX3BpbyB7CiAJLyoKIAkgKiBQTDAgYW5kIFBMMSBhcmUgdXNlZCBmb3IgUE1J
QyBJMkMKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
