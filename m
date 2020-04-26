Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236601B8FB2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 14:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v/194xr99LFr5ayRDW9EdcucJcz+iIAwxlKuRJYjKDI=; b=nTwlABGRS4/dlr
	/AWSZiqhVoWekFJzo4HKrZdxxd6pqK14LqwWbnPu4vzhnMvaPz//68YipB4l3MK1TGcrJ7SCTs20Z
	1gSoP+0SjWs7ut/dGvAj29hwLHcFf/6b4mp8/6EM61bZS7anuWrQKsjKbYguI4at9dqytFu0+obML
	fsXO4Nvg7c5mWkGfOSkcbhEjW/UHJGSKXSvFxeyFGr5h3tomliu039tJzHOLuREdzLLJlNFJlPzPA
	QtGLxpaoE98ySv6nJxAhlxteRl1eypYx7//J7WJ1TlHnmV7POLlEWi5mojRJAYfu6LtErk8eDa/eN
	mR1GiZhE6U87iyGIfIRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSg2y-00054B-T8; Sun, 26 Apr 2020 12:06:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSg1k-0001t7-0f
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 12:04:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so17044989wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 05:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q4BM4DNbysaClY0EV6xOgF2ovMVU3sJ0+ScvdfNi5NQ=;
 b=elO4ES6Zl1mm+m0hwviU6BmYb4hh+LOJNukPomLbcf7SS8SnTpLR7xGis+AHOwg1DT
 Wu0dzhT4g8+dSXBWjRPGm2FdYDu2KBxP5zevMclI8pAm+yWijzazLxVeXn/wcYIdc6j3
 nos2w6/74APgGBKOQVr1VdTqGkvGgsmQ6styreKbAIUzLomtg3hQleOfPSKegNlRXntS
 khjVPQAxuMSoSuvbDb/Xd7WO4dH2kdJws/h0BavW7efiAafndGqzthgfuWcAm+LqxvrR
 P/AOoIHdyY9OyMy3QcglfHD206KV0ir90VVAithplg7gGPDXO0yogXrHbho1JGDMZkJQ
 J+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q4BM4DNbysaClY0EV6xOgF2ovMVU3sJ0+ScvdfNi5NQ=;
 b=sDeNfmUBLDhhZjuYipXjowBHcCP2SDCw1YlCZJfOsvB1Qt3BPiks2dUg7CidGV4zJ0
 oK++8rzcE40NvjwiRlWaG2TmRlM8Fpevgq/ZjcaCd5WUeXuqwxdvuHWoYIXt6xoHukkq
 llY/dpQ/JHQylHOaV06MGyrl2brlUts1FtlYr5GJ3uzL8cabm9XLm58b08tPaSkK/n1b
 2KILinUKbGllA5WqdMHM5bKTaDDcWwcuPTIZIMnfWs7IDYiGONoNkNJ+rZV5bGWpeQp6
 S23L6WeVCpVfW1fH8p0FeDzI8172vmtetVnrDvl4crTEWSg6xBpJ0ATssTeVtU9iEPw7
 vXsA==
X-Gm-Message-State: AGi0PuYN/SYDW24Y1urhCQVcrnjQ1ynT2Cz0mH7aNb6aHxdfDsRdBzoN
 Dyg1LvJGT49os2u8kUnTg38=
X-Google-Smtp-Source: APiQypJw86c/sNx95DXV8lKs4/fEZfGFlBuG6VgZQUEpXj3ZPhbvaLaZ89ziUvHrSB/ed3WVWYGD0A==
X-Received: by 2002:a1c:b684:: with SMTP id
 g126mr19832432wmf.163.1587902690012; 
 Sun, 26 Apr 2020 05:04:50 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0:59f6:22c5:d1f3:662d])
 by smtp.gmail.com with ESMTPSA id
 s24sm11120026wmj.28.2020.04.26.05.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:04:49 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 3/7] arm64: dts: allwinner: a64: Add DAI node for HDMI
Date: Sun, 26 Apr 2020 14:04:38 +0200
Message-Id: <20200426120442.11560-4-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200426120442.11560-1-peron.clem@gmail.com>
References: <20200426120442.11560-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_050452_057545_16C81E11 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [peron.clem[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, Marcus Cooper <codekipper@gmail.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogTWFyY3VzIENvb3BlciA8Y29kZWtpcHBlckBnbWFpbC5jb20+CgpBZGQgdGhlIG5ldyBE
QUkgYmxvY2sgZm9yIEkyUzIgd2hpY2ggaXMgdXNlZCBmb3IgSERNSSBhdWRpby4KClNpZ25lZC1v
ZmYtYnk6IE1hcmN1cyBDb29wZXIgPGNvZGVraXBwZXJAZ21haWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSB8IDE0ICsrKysrKysrKysrKysrCiAx
IGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQppbmRleCA4ZDEwZmU2ZDA2YjYuLmU1NmUxZTNkNGI3
MyAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC5k
dHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRzaQpA
QCAtODYzLDYgKzg2MywyMCBAQAogCQkJc3RhdHVzID0gImRpc2FibGVkIjsKIAkJfTsKIAorCQlp
MnMyOiBpMnNAMWMyMjgwMCB7CisJCQkjc291bmQtZGFpLWNlbGxzID0gPDA+OworCQkJY29tcGF0
aWJsZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWE2NC1pMnMiLAorCQkJCSAgICAgImFsbHdpbm5lcixz
dW44aS1oMy1pMnMiOworCQkJcmVnID0gPDB4MDFjMjI4MDAgMHg0MDA+OworCQkJaW50ZXJydXB0
cyA9IDxHSUNfU1BJIDE1IElSUV9UWVBFX0xFVkVMX0hJR0g+OworCQkJY2xvY2tzID0gPCZjY3Ug
Q0xLX0JVU19JMlMyPiwgPCZjY3UgQ0xLX0kyUzI+OworCQkJY2xvY2stbmFtZXMgPSAiYXBiIiwg
Im1vZCI7CisJCQlyZXNldHMgPSA8JmNjdSBSU1RfQlVTX0kyUzI+OworCQkJZG1hLW5hbWVzID0g
InR4IjsKKwkJCWRtYXMgPSA8JmRtYSAyNz47CisJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCQl9
OworCiAJCWRhaTogZGFpQDFjMjJjMDAgewogCQkJI3NvdW5kLWRhaS1jZWxscyA9IDwwPjsKIAkJ
CWNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1hNjQtY29kZWMtaTJzIjsKLS0gCjIuMjAu
MQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
