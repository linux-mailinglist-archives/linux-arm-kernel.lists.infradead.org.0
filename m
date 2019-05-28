Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1AD2CB90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVK+WAsU+k8hbbyZo0Sd8WzXlFatc85DTmn/0WqeBwc=; b=XzRX8WAbkc0c46
	o9OhLW8XUHWIbeR/y4KpB88VMROdJVYm+giOUb3J/Z+NTW6etnXCXrRfkMJ0y4fWdsmIyxPLak1CC
	jjBVjyWZ1YumM+8cqe0wKnuH0ZebYxpscJBvaGvGyVLLIfZjzTpYZIgkrJlWFvnJbuZEG7vNQapOc
	4mfe1HT8d9un/7f+OldRxLKYnIE6WeOJ3y1+UsN1Xf26XEKfAD3+zTUo5R65KBidOrYjcHOCbzbJj
	XPigq/VlIjbbg3BaxvPSGJtNQWwAaesWBu7uhmS0d1eSm5uydpQ5LayHUTLWrLRKhtQqIkWbHPI8U
	lANOjIvwaTuKAa4ACyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVelp-000277-U4; Tue, 28 May 2019 16:16:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVekf-0008LL-QH
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:15:03 +0000
Received: by mail-wr1-x443.google.com with SMTP id h1so6757742wro.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c3h/ecQLrMT2ucERTZI2NW1VKv8RQf1gI3c06ij/3do=;
 b=D5pq9A53V3P9k5+gbZIFnj5zFyfkgKo8QUOAK/VdGTy/pyx9OZkU7Goo8ozjnmItMx
 qIG6DBQkLPHluH+sofuoOmzmqWG8QonXzcFxyerBdd1K/QkVGEbFGUrAX0YSbPjpd0ia
 nk1xIKa//ve/OYm3cirDoMTrwR47IbZNxqVx+lZ7NZ78H6dE8w6VV5keqQgcr0zUIyu7
 A0q195IybosxV87mktHmPSzPYq7Ja9yXXfTEijUaEDkXNC+mK/0eHRJqFSdwDtWjogjI
 NFzYyHaIh69k8ozvHH/io83FVtowbL/Mk327kYEptEA57c5G1vDfOSvOiuyLg7rxqKuO
 GS1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c3h/ecQLrMT2ucERTZI2NW1VKv8RQf1gI3c06ij/3do=;
 b=PFTVsUlJhSSYu3gHMeFrb+3oQI6Rce7WpgJ8abnxxbAIgmKBcGOvOHJER1SsSLQQKM
 ca3NbDPL2focddy/rGE7C3LST4VPUGTB2YK4x1zg+pI9UOad6EZVxtoa3q44XT0N0zca
 57vI+qP1JVdJuX0GVtRCH0DLmO9aK4PuyBELiqykGNUeEh5XwN0sgmKM3QLLyZI2QQ8J
 qkMHiQUsAcQm+kOozQqWMCqi+YAaLhslrByucP+Y+mGWJ4MfV36LCALuPz6qIhCs1U0F
 cwLlbmn2N2j140h5HhX8tC9UiaBWtaBUHkFeuqV4dkeqww55zKsatYhP8JLllFvcFUWa
 HKwA==
X-Gm-Message-State: APjAAAXXOE0UC4eDZ2ICj8lWseT4lRMNtzogW8FhZE6UjLDvzUFZf/uu
 zbg0J357YcvFzMeHmsHuS4Y=
X-Google-Smtp-Source: APXvYqw+Fn2shJGkDvqlag2JfFVAEIqjo/jGZI3aD2VVf3zhyZapNInCTDMQlRBL/alZdHiIXmrdGQ==
X-Received: by 2002:adf:dc04:: with SMTP id t4mr1689193wri.126.1559060100435; 
 Tue, 28 May 2019 09:15:00 -0700 (PDT)
Received: from localhost.localdomain (18.189-60-37.rdns.acropolistelecom.net.
 [37.60.189.18])
 by smtp.gmail.com with ESMTPSA id l14sm13678787wrt.57.2019.05.28.09.14.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 28 May 2019 09:14:59 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v3 05/12] ARM: dts: sunxi: Prefer A31 bindings for IR
Date: Tue, 28 May 2019 18:14:33 +0200
Message-Id: <20190528161440.27172-6-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190528161440.27172-1-peron.clem@gmail.com>
References: <20190528161440.27172-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_091501_959259_624C6F43 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

U2luY2UgQTMxLCBtZW1vcnkgbWFwcGluZyBvZiB0aGUgSVIgZHJpdmVyIGhhcyBjaGFuZ2VkLgoK
UHJlZmVyIHRoZSBBMzEgYmluZGluZ3MgaW5zdGVhZCBvZiBBMTMuCgpTaWduZWQtb2ZmLWJ5OiBD
bMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgotLS0KIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bnhpLWgzLWg1LmR0c2kgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9zdW54aS1o
My1oNS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaQppbmRleCA4NDk3
N2Q0ZWI5N2EuLmYwZjViYTM0OWMxYiAxMDA2NDQKLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvc3Vu
eGktaDMtaDUuZHRzaQorKysgYi9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpCkBA
IC04MjIsNyArODIyLDcgQEAKIAkJfTsKIAogCQlpcjogaXJAMWYwMjAwMCB7Ci0JCQljb21wYXRp
YmxlID0gImFsbHdpbm5lcixzdW41aS1hMTMtaXIiOworCQkJY29tcGF0aWJsZSA9ICJhbGx3aW5u
ZXIsc3VuNmktYTMxLWlyIjsKIAkJCWNsb2NrcyA9IDwmcl9jY3UgQ0xLX0FQQjBfSVI+LCA8JnJf
Y2N1IENMS19JUj47CiAJCQljbG9jay1uYW1lcyA9ICJhcGIiLCAiaXIiOwogCQkJcmVzZXRzID0g
PCZyX2NjdSBSU1RfQVBCMF9JUj47Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
