Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A4220D06
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 18:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19GbNwOgdDN4NOew8EPeyPUwpYx2RLEn/jrXwk+FGcU=; b=N6RK5JtZK3k7FK
	AVs4Qz4kd3x4JbtMoj62dQGHsFR4uux8VKl2LGWBQEXPSURrSE9u611qY41zPYlFI+pUobJ3yj62H
	UVcrqcq/v4+7yoMSRpaanCRFRgSquoVjl0mr/55d1KNsw38hR7JHM+wMbH66otN8f1x67z/X+zlS1
	OLmjOaG325QeoBwbGeoPlNBjFHV7rg2y0XV7JVBsLSdMJDrfQpKdLjMnaqmYSTgOqUCz4hSURs+VA
	WusmBLvOeOxAP6B42cbIZMTh1zwl1QFaksaln62q8mECD2ol4qQ8l5tU+r08ib/+QbPFRxsQUmRC7
	kKCimJh/+ODhtJnqyUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJH2-0001IG-U2; Thu, 16 May 2019 16:30:28 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJGQ-0007zF-P2
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 16:29:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id g9so2103420pfo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 09:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
 b=MkJydfFNb8Zarh1j8X6Nl7cZR1+cKqVxQrYZ0p/8MRxz06Xrun/tupqmE6v8jCMnpb
 jbSSanskoXF6x0hoBAhAGR48KDIIxgbxfZ+7kJhS/gAzPjro3h1FdLMLJkTx4WY/mXoq
 sfTF/JOBJPhgwL5NJWHhaVbxr+nH8ynJAG1LM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+5tBSaJenAAl2/2/E0QKr9xsfgAq0TAexbm1VudYCYY=;
 b=RORtjj+XeiS6HAxkVVPVbId+H+AITIRqIovFc/qzhOFbOUR1v4cmVRcLopJDdkrKm9
 Q+vWhxZJQZQG05mnf4wTS6Z1SL2+qTVHKxFCbEtE/yXl/bdxWhb1vtos1p+DMItM6ZuL
 e++2M+TIJ48ganlTlyuQQnXrTR9mb7NjpefGcAuMeXUu0zSLEYccZVtDA4O1D292jKts
 GDxlYhjSyholOrzJbASdS47oTVeMkjDNZ6nhw8KFD44G1ox6fXDDyFfQsPY8LSnvLOTr
 xCUhfksj32R8g3bdB/4KyFF7t2A5MeAbSmof1nBvKozw0yGLXzbuGWcRUYA7fE7SzTKa
 2CAA==
X-Gm-Message-State: APjAAAXOR4P/ldiUAvSnR/x5hkUmCb1TQkwlA7HIGufsn5l4MJgFv5Zy
 RjyAzpn8nR9YNmw4a9bOavC6NA==
X-Google-Smtp-Source: APXvYqw+BIh+offSQSSziALymyeAhxhq1O7ckJ1x3tzKL9gNG55hDnHX76jw+v/G285jFXE5k2ohHA==
X-Received: by 2002:a62:2b43:: with SMTP id r64mr54971169pfr.210.1558024190331; 
 Thu, 16 May 2019 09:29:50 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id s198sm8644416pfs.34.2019.05.16.09.29.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 09:29:49 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: raise GPU trip point temperature for speedy
 to 80 degC
Date: Thu, 16 May 2019 09:29:42 -0700
Message-Id: <20190516162942.154823-3-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190516162942.154823-1-mka@chromium.org>
References: <20190516162942.154823-1-mka@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_092950_867802_CA98F237 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UmFpc2UgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZSBHUFUgdGhlcm1hbCB0cmlwIHBvaW50IGZvciBz
cGVlZHkKdG8gODDCsEMuIFRoaXMgaXMgdGhlIHZhbHVlIHVzZWQgYnkgdGhlIGRvd25zdHJlYW0g
Q2hyb21lIE9TIDMuMTQKa2VybmVsLCB0aGUgJ29mZmljaWFsJyBrZXJuZWwgZm9yIHNwZWVkeS4K
ClNpZ25lZC1vZmYtYnk6IE1hdHRoaWFzIEthZWhsY2tlIDxta2FAY2hyb21pdW0ub3JnPgotLS0K
Q2hhbmdlcyBpbiB2MjoKLSBhZGQgZW50cnkgYXQgcG9zaXRpb24gaW4gYWxwaGFiZXRpY2FsIG9y
ZGVyCi0tLQogYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzIGIvYXJjaC9hcm0vYm9vdC9kdHMv
cmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCmluZGV4IDNkMjc2OWYxYmVmMi4uNmY4NzBkODk4NjZi
IDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9yazMyODgtdmV5cm9uLXNwZWVkeS5kdHMK
KysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcmszMjg4LXZleXJvbi1zcGVlZHkuZHRzCkBAIC03NSw2
ICs3NSwxMCBAQAogCWZvcmNlLWhwZDsKIH07CiAKKyZncHVfYWxlcnQwIHsKKwl0ZW1wZXJhdHVy
ZSA9IDw4MDAwMD47Cit9OworCiAmZ3B1X2NyaXQgewogCXRlbXBlcmF0dXJlID0gPDkwMDAwPjsK
IH07Ci0tIAoyLjIxLjAuMTAyMC5nZjI4MjBjZjAxYS1nb29nCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
