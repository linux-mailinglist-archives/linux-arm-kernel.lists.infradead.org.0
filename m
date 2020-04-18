Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D671AEEE8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:41:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vpVuOi5/4/4ZH3kk1s78ye9N7aNSYKUMGirb6Mgl3cw=; b=DnFA34Ml+XdLAe
	ls3W8cfcTH38wzQ1pkROSW55h8viQIZN/5kjtMZAQ/KR7bNNJ3u9Pwm+Kim6/MwNd1M5Cla9EWi+a
	sQCtS2Yp6OyU0/XwpzlKHKt0eUBrvHLEojAYlf9p57HXJPyF8yZ3zv/x+FxF3xXNjVD+ciq035Cgy
	nGYPsTU2p4F6Sn7yQuBCMyOTMoBfQX2u9oAn5zIvVN2WrCl942U8GEzeBpqN3Q9k/IJgbS4myiEAd
	ROcZ2QRa4r7xAWVJS4iWeewv8onT+1tq0busVZvtHfJXgOR8YXcyFUAjCQa8/9PjZ8lsvC+WrOkxx
	ONVubONsO5GVSDFu+jQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoea-0007CN-Ok; Sat, 18 Apr 2020 14:41:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod3-0003Wd-BD
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:36 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so6383176wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nS1Dh0dVCLU/Z6QcUpBzyWAuOru5+9aARHs3DkttnVE=;
 b=MbAoSbAc3D2+nJFIYEQeQQ/dHol3lD3ZutnkM2xwFwzOJdrCCCkOEVVcrcRQ62eV4g
 4mjR5SK5RiTtI+vgC8VsFBlN1uCx9tcGSTfJBpDFEwsNGpwCv8XxQLPHy5rX3pNcgXN8
 /H2nvjvJ7mQPsaRM/fi64I5nwdOKmQWqDDVP3L139dvKTbRby3Zz/s9icjPUnKDQdRLz
 5F0gIPt7vg86Vvcf6VhT9IwBi6un67axwSATzhZ5QtyicCU+yU9SLZgjNDyPUoYrwqY0
 FhB+3EleruV/2WjbvlpwwJBrPEdCmFQS2DEcQ4uVkLMe35d9SVZk+EZE1CHkdX68P+eP
 AHog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nS1Dh0dVCLU/Z6QcUpBzyWAuOru5+9aARHs3DkttnVE=;
 b=hHMShMJgWpgX7W0sp4eKMc+tSh9hqFXYKW1w08Zls5rdzjVn/yVizQgrw4Gfqy8QdI
 nIITuI5E/3/X4Nca/hXbb5YH+tIi4/IirXJj8JghEBgOrRokU3GG+727S+dpSd8y07Z9
 WVzwW3KFW2577/HAdl9syfQY6T2z4fkOaxUhVl01bxsqG8lgHDmr4tkvfnOYgUFk2udY
 6Z4PVUtGGPk7yFETk2dGwdSJ/gjWgPFq1jkMe4mi85+5n8WDM/w1V9aVQG1B2sU7DP92
 bFvuCyMeZUR7eB6JHH2M9vaOiZo1KCMP6Zbo02ls03c3Et1NFuA8azCTyC2b8zS90H2I
 wqmw==
X-Gm-Message-State: AGi0Pubxw9PzkdQlFWddW9GHdIe32r8eQhgo6UJn+6rfPzgBKueGm6gG
 JeKhORsHVpPnvRugOfCGwjY=
X-Google-Smtp-Source: APiQypKmRFkljkLfEDZwaNdb9gqp2zspKzPItWN+bdHyeoJEPtnPaZGdrFscUEGHdJTSLu1NGSDfQA==
X-Received: by 2002:a5d:498b:: with SMTP id r11mr9205532wrq.368.1587220771345; 
 Sat, 18 Apr 2020 07:39:31 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:30 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 4/7] ASoC: sun4i-i2s: Set sign extend sample
Date: Sat, 18 Apr 2020 16:39:20 +0200
Message-Id: <20200418143923.19608-5-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073933_412171_B6EF20C8 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpPbiB0aGUgbmV3ZXIg
U29DcyBzdWNoIGFzIHRoZSBIMyBhbmQgQTY0IHRoaXMgaXMgc2V0IGJ5IGRlZmF1bHQKdG8gdHJh
bnNmZXIgYSAwIGFmdGVyIGVhY2ggc2FtcGxlIGluIGVhY2ggc2xvdC4gSG93ZXZlciB0aGUgQTEw
CmFuZCBBMjAgU29DcyB0aGF0IHRoaXMgZHJpdmVyIHdhcyBkZXZlbG9wZWQgb24gaGFkIGEgZGVm
YXVsdApzZXR0aW5nIHdoZXJlIGl0IHBhZGRlZCB0aGUgYXVkaW8gZ2FpbiB3aXRoIHplcm9zLgoK
VGhpcyBpc24ndCBhIHByb2JsZW0gd2hpbHN0IHdlIGhhdmUgb25seSBzdXBwb3J0IGZvciAxNmJp
dCBhdWRpbwpidXQgd2l0aCBsYXJnZXIgc2FtcGxlIHJlc29sdXRpb24gcmF0ZXMgaW4gdGhlIHBp
cGVsaW5lIHRoZW4gU0VYVApiaXRzIHNob3VsZCBiZSBjbGVhcmVkIHNvIHRoYXQgdGhleSBhbHNv
IHBhZCBhdCB0aGUgTFNCLiBXaXRob3V0CnRoaXMgdGhlIGF1ZGlvIGdldHMgZGlzdG9ydGVkLgoK
U2lnbmVkLW9mZi1ieTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+Ci0tLQogc291
bmQvc29jL3N1bnhpL3N1bjRpLWkycy5jIHwgMTYgKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDE2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9zb3VuZC9zb2Mvc3VueGkvc3Vu
NGktaTJzLmMgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKaW5kZXggYTIzYzlmMmEzZjhj
Li5lNWYwMGJlOGNkY2YgMTAwNjQ0Ci0tLSBhL3NvdW5kL3NvYy9zdW54aS9zdW40aS1pMnMuYwor
KysgYi9zb3VuZC9zb2Mvc3VueGkvc3VuNGktaTJzLmMKQEAgLTY2Myw2ICs2NjMsMTIgQEAgc3Rh
dGljIGludCBzdW40aV9pMnNfc2V0X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJz
LAogCX0KIAlyZWdtYXBfdXBkYXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJX0kyU19DVFJMX1JF
RywKIAkJCSAgIFNVTjRJX0kyU19DVFJMX01PREVfTUFTSywgdmFsKTsKKworCS8qIFNldCBzaWdu
IGV4dGVuc2lvbiB0byBwYWQgb3V0IExTQiB3aXRoIDAgKi8KKwlyZWdtYXBfdXBkYXRlX2JpdHMo
aTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GTVQxX1JFRywKKwkJCSAgIFNVTjRJX0kyU19GTVQxX1JF
R19TRVhUX01BU0ssCisJCQkgICBTVU40SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7CisKIAlyZXR1
cm4gMDsKIH0KIApAQCAtNzY1LDYgKzc3MSwxMSBAQCBzdGF0aWMgaW50IHN1bjhpX2kyc19zZXRf
c29jX2ZtdChjb25zdCBzdHJ1Y3Qgc3VuNGlfaTJzICppMnMsCiAJCQkgICBTVU44SV9JMlNfQ1RS
TF9CQ0xLX09VVCB8IFNVTjhJX0kyU19DVFJMX0xSQ0tfT1VULAogCQkJICAgdmFsKTsKIAorCS8q
IFNldCBzaWduIGV4dGVuc2lvbiB0byBwYWQgb3V0IExTQiB3aXRoIDAgKi8KKwlyZWdtYXBfdXBk
YXRlX2JpdHMoaTJzLT5yZWdtYXAsIFNVTjRJX0kyU19GTVQxX1JFRywKKwkJCSAgIFNVTjhJX0ky
U19GTVQxX1JFR19TRVhUX01BU0ssCisJCQkgICBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVCgwKSk7
CisKIAlyZXR1cm4gMDsKIH0KIApAQCAtODY3LDYgKzg3OCwxMSBAQCBzdGF0aWMgaW50IHN1bjUw
aV9pMnNfc2V0X3NvY19mbXQoY29uc3Qgc3RydWN0IHN1bjRpX2kycyAqaTJzLAogCQkJICAgU1VO
OElfSTJTX0NUUkxfQkNMS19PVVQgfCBTVU44SV9JMlNfQ1RSTF9MUkNLX09VVCwKIAkJCSAgIHZh
bCk7CiAKKwkvKiBTZXQgc2lnbiBleHRlbnNpb24gdG8gcGFkIG91dCBMU0Igd2l0aCAwICovCisJ
cmVnbWFwX3VwZGF0ZV9iaXRzKGkycy0+cmVnbWFwLCBTVU40SV9JMlNfRk1UMV9SRUcsCisJCQkg
ICBTVU44SV9JMlNfRk1UMV9SRUdfU0VYVF9NQVNLLAorCQkJICAgU1VOOElfSTJTX0ZNVDFfUkVH
X1NFWFQoMCkpOworCiAJcmV0dXJuIDA7CiB9CiAKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
