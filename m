Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9FF1AEEF0
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Apr 2020 16:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lw31PTw2S1izZsqInt+CkaEdGgX9TpC6krmf4QXWOC4=; b=lQ23OcFYTHHoxP
	MOEdeADFkKoFiTDxyGrxsVFjtQjm2+nxd7OGrlBig1ubHI0KbTII2JaETZ9CJrWi957qh6XxbKAbe
	JuRLtezlULXkLERlq6CXKEF/DWHEXHTZOuqHKdl+6uai1SfB8DMN19TCpL3nN8D5SWpMx2FTKvy3V
	46n7Uu61boIoD10pJUMpEG7POsFpP33tbgcMASlnlZ30+qOsOC9WVFyzNRjdTtzzZ5xAHcHc9RJtY
	XJnkk5BoNDzw10VIH8vzH/qbkGMNrDSHJ12lx01sEijaMdoM0mjT8XB3ufV5x08mQtgr/2eO3e9cq
	AiokZk2GYnNiOdN2JTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPoer-0007Tc-0x; Sat, 18 Apr 2020 14:41:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPod6-0003Za-6z
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Apr 2020 14:39:38 +0000
Received: by mail-wr1-x441.google.com with SMTP id d17so6335949wrg.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 18 Apr 2020 07:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dcU18dKgyioxh46jA7FvWsYL58s8h58864kxaD9p5qo=;
 b=FNGWlj7vcsHWXXSK6xC+raY2VaK8WujFpWxUCLPM7g3A5Kjc1LEx4eHBGUHXW1BQMJ
 n/asEVPQE/32PXIAOhunBM7j/BsT7tgd9woCdhleKcUtVNC3J/sc17p0S+qAv67qVBCq
 LEA6a0LyRTcUWGJ8cXP5LhW/TzMjL3aaijmCXu+VUCfV3pG9WgG9iy+ergc6LNHBXJ8Y
 6UGmJFrd3kzfjqCtdbarrb3I5Pw7XCivgb9n3ONfGh49tH9ulciCiQ7lBGj2mBE0UxH6
 jfSxWkhpUmzxFy2FlXR2LEiLHvXn+t8kZN8+g0BIBG3FF4n4im2qHNhhipUy8PCTJHG5
 nLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dcU18dKgyioxh46jA7FvWsYL58s8h58864kxaD9p5qo=;
 b=UODOOo/NecNvKLnVBLJuwRMVM/SnUjBXIADvDXuViTRMTYNdnX12wS9DBWmKYOUx/4
 xwcpSyLcC8VLh1WyNh/YLcPyA2QF99c5IDAvPc1TI93Yzf6cfpyjs899QUWGHZGAO0aA
 WGTaTbSGqf8fpCtZDE5nbD8AmOl1zWvBfIS3oAt0WaA9yoXzgae6JMXqP+K9zRYohY6Q
 H7RmmfbYH1o4rgk3+GmphhFZk6ivIiK2tnz371H0PsvDr+O2ETXoy2dmsll5y7Qpu2SP
 WBDaTJsHYqr0mVQq6SQy7vUPAOgJu7G6i1xO5Wj0ENSMMPcEYPelJUz4/fNVmjn/ZTlx
 eWzQ==
X-Gm-Message-State: AGi0Pub3wSmlrk7g3b+afLOLTRV40gahiAIN2vH3XE5Jf5GRq1uQGriS
 zQ/XbqMsIyTHFrWVKtQTgek=
X-Google-Smtp-Source: APiQypKJlHwpQpKN7XlW70JN2DZ17rcbc6rk8jOc1krkjdakqmOSks4L/YFTXs9xyLmITSrlVkM7hg==
X-Received: by 2002:a5d:6584:: with SMTP id q4mr10073857wru.403.1587220774636; 
 Sat, 18 Apr 2020 07:39:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:4e7:1fdd:b7c2:b3ab])
 by smtp.gmail.com with ESMTPSA id
 s9sm25375322wrg.27.2020.04.18.07.39.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 07:39:34 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 7/7] arm64: dts: sun50i-h6: Add HDMI audio to H6 DTSI
Date: Sat, 18 Apr 2020 16:39:23 +0200
Message-Id: <20200418143923.19608-8-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418143923.19608-1-peron.clem@gmail.com>
References: <20200418143923.19608-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_073936_352636_C8490360 
X-CRM114-Status: GOOD (  12.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Jernej Skrabec <jernej.skrabec@siol.net>, linux-kernel@vger.kernel.org,
 Marcus Cooper <codekipper@gmail.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKQWRkIGEgc2lt
cGxlLXNvdW5kY2FyZCB0byBsaW5rIGF1ZGlvIGJldHdlZW4gSERNSSBhbmQgSTJTLgoKU2lnbmVk
LW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgpTaWduZWQt
b2ZmLWJ5OiBNYXJjdXMgQ29vcGVyIDxjb2Rla2lwcGVyQGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1i
eTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiBhcmNoL2FybTY0
L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYuZHRzaSB8IDMxICsrKysrKysrKysrKysrKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNpIGIvYXJjaC9hcm02NC9ib290
L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LmR0c2kKaW5kZXggYjlhYjdkOGZhOGFmLi40N2M2NTdk
NjIzN2IgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1o
Ni5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5kdHNp
CkBAIC04OCw2ICs4OCwyNCBAQAogCQkJKEdJQ19DUFVfTUFTS19TSU1QTEUoNCkgfCBJUlFfVFlQ
RV9MRVZFTF9ISUdIKT47CiAJfTsKIAorCXNvdW5kX2hkbWk6IHNvdW5kIHsKKwkJY29tcGF0aWJs
ZSA9ICJzaW1wbGUtYXVkaW8tY2FyZCI7CisJCXNpbXBsZS1hdWRpby1jYXJkLGZvcm1hdCA9ICJp
MnMiOworCQlzaW1wbGUtYXVkaW8tY2FyZCxuYW1lID0gImFsbHdpbm5lci1oZG1pIjsKKwkJc2lt
cGxlLWF1ZGlvLWNhcmQsbWNsay1mcyA9IDwxMjg+OworCQlzaW1wbGUtYXVkaW8tY2FyZCxmcmFt
ZS1pbnZlcnNpb247CisKKwkJc2ltcGxlLWF1ZGlvLWNhcmQsY29kZWMgeworCQkJc291bmQtZGFp
ID0gPCZoZG1pPjsKKwkJfTsKKworCQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgeworCQkJc291bmQt
ZGFpID0gPCZpMnMxPjsKKwkJCWRhaS10ZG0tc2xvdC1udW0gPSA8Mj47CisJCQlkYWktdGRtLXNs
b3Qtd2lkdGggPSA8MzI+OworCQl9OworCX07CisKIAlzb2MgewogCQljb21wYXRpYmxlID0gInNp
bXBsZS1idXMiOwogCQkjYWRkcmVzcy1jZWxscyA9IDwxPjsKQEAgLTU3MSw2ICs1ODksMTggQEAK
IAkJCX07CiAJCX07CiAKKwkJaTJzMTogaTJzQDUwOTEwMDAgeworCQkJI3NvdW5kLWRhaS1jZWxs
cyA9IDwwPjsKKwkJCWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1oNi1pMnMiOworCQkJ
cmVnID0gPDB4MDUwOTEwMDAgMHgxMDAwPjsKKwkJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxOSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKKwkJCWNsb2NrcyA9IDwmY2N1IENMS19CVVNfSTJTMT4sIDwm
Y2N1IENMS19JMlMxPjsKKwkJCWNsb2NrLW5hbWVzID0gImFwYiIsICJtb2QiOworCQkJZG1hcyA9
IDwmZG1hIDQ+LCA8JmRtYSA0PjsKKwkJCXJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfSTJTMT47CisJ
CQlkbWEtbmFtZXMgPSAicngiLCAidHgiOworCQl9OworCiAJCXNwZGlmOiBzcGRpZkA1MDkzMDAw
IHsKIAkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CiAJCQljb21wYXRpYmxlID0gImFsbHdpbm5l
cixzdW41MGktaDYtc3BkaWYiOwpAQCAtNzAxLDYgKzczMSw3IEBACiAJCX07CiAKIAkJaGRtaTog
aGRtaUA2MDAwMDAwIHsKKwkJCSNzb3VuZC1kYWktY2VsbHMgPSA8MD47CiAJCQljb21wYXRpYmxl
ID0gImFsbHdpbm5lcixzdW41MGktaDYtZHctaGRtaSI7CiAJCQlyZWcgPSA8MHgwNjAwMDAwMCAw
eDEwMDAwPjsKIAkJCXJlZy1pby13aWR0aCA9IDwxPjsKLS0gCjIuMjAuMQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
