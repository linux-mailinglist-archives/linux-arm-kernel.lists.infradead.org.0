Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5432A54E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 18:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlEge1z3YtnBFZG1aBfpICZEbUAmX09jZI+M3IBhr1I=; b=M/hqFbrmHeeRsl
	umluJNxQe5xDfkviPHF3ItELBB0tzGRGtWm0tnx2W+zAyvC/+JeEFEIeg9GC4NFUpvNYun8HjUGdN
	8q47kx1o+ac4e4bpN0TWBBwYitv3BRkveoDZkVCehxYvmpjkxeH7DWv2aFN9lqD1Y1z8qm58Va6l4
	ioDB4lrfb0ifrG+at+rATGyqwDIbQ2tu8kqF5sUmRmK5dwKqZqMrNWe8ac8Go5XLwrTxRebyxBc+2
	lksDCkaTVQI78oUxHGDeL4zvvpxwTsqI+VBc06LgVHCgvV7Qq9gxYZY7t4FRMwYwP/jBwDNd62E5F
	lMb/WSYMdsBpmqbHqZVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUZTT-0007Gv-Sa; Sat, 25 May 2019 16:24:47 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUZSN-0005xM-Oq
 for linux-arm-kernel@lists.infradead.org; Sat, 25 May 2019 16:23:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id 15so11907454wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 May 2019 09:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=Hid6LcFkjp/uCFTQ8+JUV9wkDRDxQ5n/luRNm+f87fvUA6aSgXGkTu2cpND0HqGipX
 W8kiEMpIpTWBFsfjv1qcGygssRzr9+pZYRLkJpCDYNuxxOrZPoRl2hGLz313q4JEtg0L
 HgP9qUTpzN1AYV5Ke6SF0VSYyiuoKxcv0ZSjRUtlvCk1M7/aG3s0cwnoUYQMswc4O6AW
 REh8R/mGBFsRah9xYMdlsRL4SWPCNrIe67ml80VoiNPYdfBVSA8cPc6IF2KiwS9H14TR
 QBJi5UgTXSJ16qkZj49TVOl4Erpt6gJuTMzI6ssAmmv37L3FcTY/NMy3o3J9g2hzehXx
 rShw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=TJo+muW7w7zBgWfnfN5mqrhjnED5kJiru+vYlkYP/WvX8eOo9dbtG/s1H3TxVj6D0k
 hU9gSgOE3wZL/+kNkaEoyrn7rsxh02AN+gsacckTngIZZmWo9LI0bZ5BOLm5r9/Ef42z
 sT373wL6M0Bk96Dk1CtSbJ/njJ6Gh3uztH7BAiRhjTeWM2YPmpCLh6nXuVm0l6wQx2hc
 LjG53yxsvKE7ofnSnKfmE/5+Z7l+wDofCPSNQO+3p3ILKVC8gyS3FaksCULXpFpXp/t9
 ll8F5Ezx+5Xy1P8dYV7oJzhB0Zqui4rKSQqtyBpioGxoDf35luczY3JSGQbgw18CyAfn
 WytQ==
X-Gm-Message-State: APjAAAUIMJn/a+EX8hwnwluu+20K1zOkW62TmXO9KhG4wLCdqFs8gUvE
 WG9VdyCAgHUHekxleGCT5t8=
X-Google-Smtp-Source: APXvYqzeJRaf2YrofzXm0wnzXdjpc7yDd4pAHttdNjL7/dmyVC2pKdylt4bQ+mVkGLlcN76UZiDo6A==
X-Received: by 2002:a1c:9602:: with SMTP id y2mr12209726wmd.115.1558801418274; 
 Sat, 25 May 2019 09:23:38 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id k184sm13194409wmk.0.2019.05.25.09.23.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 09:23:37 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 6/7] arm64: dts: allwinner: h6: Enable SPDIF for Beelink GS1
Date: Sat, 25 May 2019 18:23:22 +0200
Message-Id: <20190525162323.20216-7-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190525162323.20216-1-peron.clem@gmail.com>
References: <20190525162323.20216-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_092340_110506_3161BA71 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
