Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E52BB23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:11:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlEge1z3YtnBFZG1aBfpICZEbUAmX09jZI+M3IBhr1I=; b=jUyXxDnYTMCChS
	W6t6EajY4QD41EzRB8HFdsl9QtoQZCya0QT1xKRgvWS7NyrdfDt0snZS1MjJpfqOG9+WUUJilxJZa
	LC05GnV5/Iv1fxiJwIOCxA72VzK88ASS9uATlHmGRfMRszBw0eh/E6AscTC8AJf3fhLZffxwxTLId
	oNjkofDeUmNCXFQQYxu1jio89ODPcLbmAh+4PbJ6jYzZL2tGsxKqayksfHNswX6gj5Nx10GiSPX6j
	7rmeh7oytSYQD9l7ltrDjyTDorYClTqeqil5oKWLVYXYSmEMDflziyAreMlz8NnIlF75RjEt/YY4Z
	61eSyu5pr4BksVoO+MIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLxw-00049O-An; Mon, 27 May 2019 20:11:28 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLws-0002sv-OS
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:24 +0000
Received: by mail-wm1-x341.google.com with SMTP id i3so522641wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=I8S2Cn58NEVH0hatc3NKO2PFM88gZWXrHjhGHO35q+3Qa0jns1eKsnFDC7jJB5j/EA
 7HXPhqqY5oA8PQyt18mnwaZQ7YtD1a/kvTf5VqGbVd/jwQrplO7Ntzs7xVfjh8Py+MU/
 xUnKfY5ChHv09UtfqppKz/CtZMokuvx0si03JPCJ85oOQxSvKCQJTfn1/9AZpRrFNJaj
 N8Gfja9/sSsqVeTdrMZtXlb6gONUNy57M6mAakH9Klj1aT73Md3TTwRbp39wO9AwrHxZ
 k4GfgAHMhXe2KdMIPP5YEMbt8XNaPVv0OKgnB1cUyhLrUHylD/20xsq0hzm1B1DRMuyw
 dNmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=oO8WW1IuGHDBdzKmybS/gul5tTpeDOiBoPhbnJw5C8Ljur6BQRdfKlWPHcKff6wNm3
 7CY+dM2bbbivlGXzgozW+2NvvbH8xN/e4I6eXDfN/AR5OQIilVS18vrj/T3T9WMjOpEh
 OzW4VBGtGr2W9j9U8DgqAyihW1OlLldFjTllOSJIYElW8v0G80Sxnpn3duXT/DSBtJbS
 shIDPmBk9dJW1pbC9pphfOPSEamZoJ4o9MzkMg1DmBVhHolmABtYgllBv+pMuTBQAnxU
 kMJCm3yFPxZ1rOoOhYS6qBlZDD35SG4RNoa5fisMPUKBm+sK59kBWrPW1MhZ7skigV9r
 2cNw==
X-Gm-Message-State: APjAAAXvy1QV0BaxZO663okbWLJkFXHn569pBX8bc1mKcglt/D+WwqmY
 GOj2v07QKlUhSxVNa9++i1M=
X-Google-Smtp-Source: APXvYqzJpzVaaRuhg4r+/YsFaMeeSgvPFOhsrD9RszJD+0NeroZ0mmv17kCSfNxSev62Zwhh4sG18A==
X-Received: by 2002:a1c:98cf:: with SMTP id a198mr510793wme.51.1558987820339; 
 Mon, 27 May 2019 13:10:20 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 6/7] arm64: dts: allwinner: h6: Enable SPDIF for Beelink GS1
Date: Mon, 27 May 2019 22:06:26 +0200
Message-Id: <20190527200627.8635-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131023_170788_1E35D75E 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QmVlbGluayBHUzEgYm9hcmQgaGFzIGEgU1BESUYgb3V0IGNvbm5lY3Rvciwgc28gZW5hYmxlIGl0
IGluCnRoZSBkZXZpY2UtdHJlZS4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVy
b24uY2xlbUBnbWFpbC5jb20+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3Vu
NTBpLWg2LWJlZWxpbmstZ3MxLmR0cyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNi1iZWVsaW5rLWdzMS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtYmVlbGluay1nczEuZHRzCmluZGV4IDBkYzMzYzkwZGQ2MC4uNzZhOTVhZDMzZGM1IDEw
MDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYtYmVlbGlu
ay1nczEuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi1i
ZWVsaW5rLWdzMS5kdHMKQEAgLTI0Myw2ICsyNDMsMTAgQEAKIAl2Y2MtcG0tc3VwcGx5ID0gPCZy
ZWdfYWxkbzE+OwogfTsKIAorJnNwZGlmIHsKKwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmdWFy
dDAgewogCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJcGluY3RybC0wID0gPCZ1YXJ0MF9w
aF9waW5zPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
