Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D46893AF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 22:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlEge1z3YtnBFZG1aBfpICZEbUAmX09jZI+M3IBhr1I=; b=GCQQYDX1Xs42VQ
	Faf8BaiVuEKOjEB3Smie+4MosA9AzMVqte1uXT8MtHRkl4s5z5WxAzNXVnROWP9ii3lF7nWDFw8U6
	6X4l5UYqc+FTKx7sKKkV2NWnzdoBOk7yyyeuqc6Vy+zb5MddBa6bfF64W4JdSmSNiKFGAKd0jezHr
	9Yg3TtOIWEvixqbrAoRlEfGlyfK7cJ5rW9ktITiY4XpBnSQeYgMeGpYyyt6ACzR3HRWKATlZpLGRZ
	J3szxf7raFjymSArIIiXGHSX65jc39hhDL9zUZEcpt0ocuFns4umyhNFLO6vMXezBjmVc1mLzbTRn
	dFuY+6NKbFqLzSUswW1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwuVr-0002fF-1M; Sun, 11 Aug 2019 20:32:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwuVS-0002HI-0y
 for linux-arm-kernel@lists.infradead.org; Sun, 11 Aug 2019 20:31:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id z1so102892124wru.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 11 Aug 2019 13:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=ly+71Zaz/X9NyRaWrirRlpyMXzsGMNtcBIlaS9oIk8T1YKCC7/Tj4Vxo5nLS01EAbI
 30RLA6qzAZBLap2dED1SGNozXwZB0Pi7ELLnUdI5XLMGT11HRajfX+JJJm/ThUzrjB0Z
 h45iX8Go0ht636Kdz7pdzBLLmlBszFWSTwNc3vNvH5jFI4BA6vA8Rg0eWitkSOvysns6
 Tx4d1PgloYMj1ibLpY9n25gLp4VbUQj6RlqeQebIISg0ByU3jYymz+YPcHhkCbm75nR7
 21411fOa1cFTr6VQfX6FvQVEqHrypgXYU+P0k8D1bsuTmQqsmwZhEo6HqaoTLFiakUJI
 KYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OlAy4iNnvpXUfWGzbLAVAxpfZU/8XBVjL/0mbqQ077c=;
 b=uJ1hfdsNQbvTiyMeDEG0UanRA/5OSg68AoV0q+OQUMX1bdiPMgyjHPEiNbz9oJgf/K
 jCoEXk2ndgYeO+EKwOIVWgj1vlNQNwsizjk4rTba/AneWSax38XU4Jez+3yultAmnSLv
 bCsA0jEjx3X+RlQl8FpIVhCFiAOkD72yADAIf94FYGt8KhxNwhMzNypPZdReiPHNDHez
 7ihMb0PBouVQW50jnVwE5ZeK3OyrucaGHKkpxwxsOx+njStd0WEvPJji2BhX+CR2l/jV
 BnNsGBP+VG2sDeVJUYTr9zTmOKZaaIre2dE5eHiWlW/BwzIrl7+f3jp9L2AIqgjhMHtX
 9gAg==
X-Gm-Message-State: APjAAAWwol9bPTf3dqGcLE1MFD4tDlESXePqULmqbvvG4v9d1wBXxmLu
 VB1EFB9O6Y3dGeAprzxvd9M=
X-Google-Smtp-Source: APXvYqyujAHdwhl3y5Jb21DrU1zw3uVqtrkNnTjI4QUdlilQy7BcEMoR2pY5eXQt6p5wlKH2pHoGQw==
X-Received: by 2002:adf:cd11:: with SMTP id w17mr9316867wrm.297.1565555516367; 
 Sun, 11 Aug 2019 13:31:56 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id a8sm11063269wma.31.2019.08.11.13.31.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 11 Aug 2019 13:31:55 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v5 2/3] arm64: dts: allwinner: h6: Enable SPDIF for Beelink GS1
Date: Sun, 11 Aug 2019 22:31:43 +0200
Message-Id: <20190811203144.5999-3-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190811203144.5999-1-peron.clem@gmail.com>
References: <20190811203144.5999-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_133158_062216_2E706F2A 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
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
