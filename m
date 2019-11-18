Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE9E100168
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 10:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSlMm1VYrIdu5BhYwLsKQGhLA/Ih39oRouUk3VE3AvU=; b=rmeJTauAUuDDUL
	/nm6z+O1LmWjb+COhK1cOP4TEBrFZDouQHDNd7Rgyzp8GXfLKRAxYcif0eil2Qiv2FCuURii3eKJL
	FeEy7AShmczxh7QOKpClxbcr42wYC/VTbScC9h1PzAKsqSbeR0+NIU193QVhqdZyO+jJjdzy6mQd9
	KMJMc3C2bKvklkHZLIDYS8uHSJTLN6a+QyToM6UBlezE0asHP9Brjh1ur3Tvk0+k2se5Rdlp9KlBd
	719sxazBYq/iETYPzEBKxksHBWypQOMrTXN7MkNLVgdXatwbP+Om/ZwyEzm0Ui0clpeuNVdx+iArF
	roMsMz8uSZ5WOg3tw5og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWdTu-00047T-G6; Mon, 18 Nov 2019 09:38:02 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWdTc-00046B-Lm
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 09:37:46 +0000
Received: by mail-wr1-x442.google.com with SMTP id b18so17114299wrj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 01:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/r/rbSHnQ681j6w5Fd1xT+tCG0CKj+LRyHPCBVvmrlM=;
 b=P8pFwrxqnL/iAlT+wWn4oq38pZqZta2yNEuAHyDIb1ZjDOQxlMQy8X/ezmV554mXtA
 7qPCzxvNVf63u+CueuV8DHvfhXqfNHSXywFqjdaI02d5OWMyXLZBmMI7ioIbkNSqfKiA
 jl4L7QVsnzzQYak2nL9YfSwksJm31ddlGXeUXnzCfibnyTcIbfvXPu0kI7UuO+GTDb6Z
 80LAMvSPP0J/6PVpJ6B6+jjuuVjVwK1q03/AnGi0S5d0sDPaqjUGsT28CXb5KKsH1Cya
 x52cOGS8VUBM65zquq9U8OOYBY13eZj6J8b/IKk7JdUy3oC06ksEDFc74Fgb8QPklqWa
 ZLQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/r/rbSHnQ681j6w5Fd1xT+tCG0CKj+LRyHPCBVvmrlM=;
 b=dEb7zURxTAWkwio6gijN/tO/Tc0zb4j2+RnWhIHy4Gb+IpAP5iXz14GUi/Nsl+j4I0
 F3bohD9XH7ZlK/z2E5wd86RXrukeDeBiwZmR9VTRACP8ftFoAUF/YAxOCdeVloDQUfU/
 6JbLnDzuCEQrKKK8jXVeEQCDdVmYdp2fFzVrw1rrA3Ss8oywZlekTpxX6eWurQuV93RH
 31jXRRK+iSaJVMzw1OeEHsU0456U6pBs5cf8V7iCwcVevIjDKBv7w+lw6eY2h4NIMl9j
 TS1W7R8tWDAgaz8XNbUSdFUXsj/wGnUh8+9r6igVkCzBfban5plynzDZS0e4j4UWTSTx
 PFuw==
X-Gm-Message-State: APjAAAUtYiFZdwX9NY073jhUCRsfGnwZhIm2DBPfOuwgaEkHGa9cZdHj
 86KunxnLK6C693j0DTi63D4=
X-Google-Smtp-Source: APXvYqzrptzyinv4zHsSKlk4uBZG+NdIuGybLeML+SvcHF0FPHiczOcqXhndK5SV0r9Z2ybhkDjMLw==
X-Received: by 2002:a5d:68c3:: with SMTP id p3mr31067514wrw.82.1574069862972; 
 Mon, 18 Nov 2019 01:37:42 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id w10sm19006687wmd.26.2019.11.18.01.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 01:37:42 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v5 1/8] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Mon, 18 Nov 2019 10:37:20 +0100
Message-Id: <20191118093727.21899-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191118093727.21899-1-peron.clem@gmail.com>
References: <20191118093727.21899-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_013744_739849_E6C30728 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwpidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KCkV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00gc3Bl
Y2lmaWNzLgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PgpSZXZpZXdlZC1ieTogUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KU2lnbmVk
LW9mZi1ieTogQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5jbGVtQGdtYWlsLmNvbT4KLS0tCiAuLi4v
YmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwgfCA0OCArKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNDggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWEx
MC1wd20ueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vYWxsd2lu
bmVyLHN1bjRpLWExMC1wd20ueWFtbAppbmRleCAwYWM1MmY4M2E1OGMuLjFiYWU0NDZmZWJiYiAx
MDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5u
ZXIsc3VuNGktYTEwLXB3bS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbApAQCAtMzAsMTMgKzMwLDUxIEBA
IHByb3BlcnRpZXM6CiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gY29uc3Q6IGFsbHdpbm5l
cixzdW41MGktaDUtcHdtCiAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjVpLWExMy1w
d20KKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYtcHdtCiAKICAgcmVnOgogICAg
IG1heEl0ZW1zOiAxCiAKICAgY2xvY2tzOgorICAgIG1pbkl0ZW1zOiAxCisgICAgbWF4SXRlbXM6
IDIKKyAgICBpdGVtczoKKyAgICAgIC0gZGVzY3JpcHRpb246IE1vZHVsZSBDbG9jaworICAgICAg
LSBkZXNjcmlwdGlvbjogQnVzIENsb2NrCisKKyAgIyBFdmVuIHRob3VnaCBpdCBvbmx5IGFwcGxp
ZXMgdG8gc3Vic2NoZW1hcyB1bmRlciB0aGUgY29uZGl0aW9uYWxzLAorICAjIG5vdCBsaXN0aW5n
IHRoZW0gaGVyZSB3aWxsIHRyaWdnZXIgYSB3YXJuaW5nIGJlY2F1c2Ugb2YgdGhlCisgICMgYWRk
aXRpb25hbHNQcm9wZXJ0aWVzIHNldCB0byBmYWxzZS4KKyAgY2xvY2stbmFtZXM6IHRydWUKKwor
ICByZXNldHM6CiAgICAgbWF4SXRlbXM6IDEKIAorICBpZjoKKyAgICBwcm9wZXJ0aWVzOgorICAg
ICAgY29tcGF0aWJsZToKKyAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgY29uc3Q6IGFsbHdp
bm5lcixzdW41MGktaDYtcHdtCisKKyAgdGhlbjoKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xv
Y2tzOgorICAgICAgICBtYXhJdGVtczogMgorCisgICAgICBjbG9jay1uYW1lczoKKyAgICAgICAg
aXRlbXM6CisgICAgICAgICAgLSBjb25zdDogbW9kCisgICAgICAgICAgLSBjb25zdDogYnVzCisK
KyAgICByZXF1aXJlZDoKKyAgICAgIC0gY2xvY2stbmFtZXMKKyAgICAgIC0gcmVzZXRzCisKKyAg
ZWxzZToKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xvY2tzOgorICAgICAgICBtYXhJdGVtczog
MQorCiByZXF1aXJlZDoKICAgLSAiI3B3bS1jZWxscyIKICAgLSBjb21wYXRpYmxlCkBAIC01NCw0
ICs5MiwxNCBAQCBleGFtcGxlczoKICAgICAgICAgI3B3bS1jZWxscyA9IDwzPjsKICAgICB9Owog
CisgIC0gfAorICAgIHB3bUAzMDBhMDAwIHsKKyAgICAgIGNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjUwaS1oNi1wd20iOworICAgICAgcmVnID0gPDB4MDMwMGEwMDAgMHg0MDA+OworICAgICAg
Y2xvY2tzID0gPCZvc2MyNE0+LCA8JmNjdSBDTEtfQlVTX1BXTT47CisgICAgICBjbG9jay1uYW1l
cyA9ICJtb2QiLCAiYnVzIjsKKyAgICAgIHJlc2V0cyA9IDwmY2N1IFJTVF9CVVNfUFdNPjsKKyAg
ICAgICNwd20tY2VsbHMgPSA8Mz47CisgICAgfTsKKwogLi4uCi0tIAoyLjIwLjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
