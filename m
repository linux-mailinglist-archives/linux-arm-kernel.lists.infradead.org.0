Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE806ED4B1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 Nov 2019 21:34:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CO92zXWLYjxhsfp8NWRBCARB/8xeo5k9GtTPmW8ylSk=; b=tQHAxjwnXb7znY
	cA8q/nAtGLdK4eJmujWPoUr4xYI/EvknbP31jXKun6DKpVyLCBt79bulbPr4TUyea2TxixEsECqSe
	OuXkKsXBHlSh1ZL7dHw6dzNj7SQatDWi87D42X76J2qgnyKhk5R0u44ZorVmgVd53iNw4Jy5q/eWb
	BEye0Eavk8Pw0iybAjRu+l3rwfyKFg/stRMZYq3LTmVI4M7Psm0WSG8IpayzeTF1yzDNbqZevp8U4
	ai6tHUiWS7jb0dX6qfNRIeCOHs4CODczfgADdwqOuOd749CD8uJ41FdKhCsoqi5G8KmU7LsVzGBPa
	ML7z7TA2kZABWuPXStdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRMZo-0006Qr-BG; Sun, 03 Nov 2019 20:34:20 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRMZK-0006F8-Lt
 for linux-arm-kernel@lists.infradead.org; Sun, 03 Nov 2019 20:33:52 +0000
Received: by mail-wr1-x429.google.com with SMTP id a11so14776878wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 03 Nov 2019 12:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9PTjPnnXrhQTEA6oIUuGKycZpquqSu0RexmpAAxMkKM=;
 b=ZlH456jue5FYNyvKFDvJTC8b7gFTI06byf1mM8aw5WgyBo4ojCRCowUP2DT2ubuHf9
 y1WSgeXVZ8i0ev5i0RHeS65Bs4NzxP7FsUMfFLWxxiRAmBRK8wD//UekcAhltgA3BDeY
 Zkj6Wu0wDplSVusktSj3bdjNPJtjfI8nyLQ8+bpApciJrbyR6w5uAnsmkX2axlFiDKoE
 uBoGUpsF7RhyR2hlLKHUtdarf8yBJB1zB7IwxpJelg19g7yn/8M7aZvWj73O7D2Wcd44
 3e8xSXzp0SQ+b1kt3DHGiOcoOaKUBwAlZ6Gt6hki/cMb8zeV9MFU46N5T3hVPtVFiy8G
 uE3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9PTjPnnXrhQTEA6oIUuGKycZpquqSu0RexmpAAxMkKM=;
 b=atPiuIx1Tm5BrkRU8R8UOwpbg2tF5TqzavfozrGIbPCn4Y5vQrs9KxjxN9KpbG8w3/
 8cuhg9tio1pYNXKj0TPQYRcE8wnt8e2+Hhm5MvMr+yc7vuSaQjZqj8UTg4GUbJEQrstX
 EKvm6ut+8QJriu3tqIc8y1Ybu2v5B1m+ZXhz2JPjebIzEfHvUWaIyl27+sCo5K0PxhHY
 8B/0r+anXGgOZC4pwMFNnY3VNnJLt62RpS82+0bMXnJmXXyf1W8jRWyJoxHReeKhsGY0
 yNeCpXLOGfVA/JVTRGcy/x5gu2g6OUHA+dI1ROeoL807JIxq8XYKcENUY7EbK3iE24QD
 woQg==
X-Gm-Message-State: APjAAAWPjinD7Ok3m8Nd40Xvl7RpzY/o0IhUcvOhYqqsU7Xkn+w+LWfe
 BwCBZP+WI8UYF3Btt4GnOqxQIzYAObU=
X-Google-Smtp-Source: APXvYqzrRKRa1dghpnaaDA+/4SyPPw2ng/Eh6/Ef282232gLUIpPYC5TN1vN6QY3Fqw+LbKZqVFLfQ==
X-Received: by 2002:adf:ea11:: with SMTP id q17mr19979964wrm.83.1572813226641; 
 Sun, 03 Nov 2019 12:33:46 -0800 (PST)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id x16sm13644026wrp.91.2019.11.03.12.33.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 03 Nov 2019 12:33:45 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?=27Uwe=20Kleine-K=C3=B6nig=27?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Sun,  3 Nov 2019 21:33:28 +0100
Message-Id: <20191103203334.10539-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191103203334.10539-1-peron.clem@gmail.com>
References: <20191103203334.10539-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_123350_712982_5485A75A 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PgoKSDYgUFdNIGJs
b2NrIGlzIGJhc2ljYWxseSB0aGUgc2FtZSBhcyBBMjAgUFdNLCBleGNlcHQgdGhhdCBpdCBhbHNv
IGhhcwpidXMgY2xvY2sgYW5kIHJlc2V0IGxpbmUgd2hpY2ggbmVlZHMgdG8gYmUgaGFuZGxlZCBh
Y2NvcmRpbmdseS4KCkV4cGFuZCBBbGx3aW5uZXIgUFdNIGJpbmRpbmcgd2l0aCBINiBQV00gc3Bl
Y2lmaWNzLgoKU2lnbmVkLW9mZi1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNp
b2wubmV0PgpTaWduZWQtb2ZmLWJ5OiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwu
Y29tPgotLS0KIC4uLi9iaW5kaW5ncy9wd20vYWxsd2lubmVyLHN1bjRpLWExMC1wd20ueWFtbCB8
IDQ1ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCmluZGV4
IDBhYzUyZjgzYTU4Yy4uYmYzNmVhNTA5ZjMxIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEw
LXB3bS55YW1sCkBAIC0zMCwxMyArMzAsNDYgQEAgcHJvcGVydGllczoKICAgICAgIC0gaXRlbXM6
CiAgICAgICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNS1wd20KICAgICAgICAgICAt
IGNvbnN0OiBhbGx3aW5uZXIsc3VuNWktYTEzLXB3bQorICAgICAgLSBjb25zdDogYWxsd2lubmVy
LHN1bjUwaS1oNi1wd20KIAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEKIAotICBjbG9ja3M6Cisg
ICMgRXZlbiB0aG91Z2ggaXQgb25seSBhcHBsaWVzIHRvIHN1YnNjaGVtYXMgdW5kZXIgdGhlIGNv
bmRpdGlvbmFscywKKyAgIyBub3QgbGlzdGluZyB0aGVtIGhlcmUgd2lsbCB0cmlnZ2VyIGEgd2Fy
bmluZyBiZWNhdXNlIG9mIHRoZQorICAjIGFkZGl0aW9uYWxzUHJvcGVydGllcyBzZXQgdG8gZmFs
c2UuCisgIGNsb2NrczogdHJ1ZQorICBjbG9jay1uYW1lczogdHJ1ZQorICByZXNldHM6CiAgICAg
bWF4SXRlbXM6IDEKIAorICBpZjoKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY29tcGF0aWJsZToK
KyAgICAgICAgY29udGFpbnM6CisgICAgICAgICAgY29uc3Q6IGFsbHdpbm5lcixzdW41MGktaDYt
cHdtCisKKyAgdGhlbjoKKyAgICBwcm9wZXJ0aWVzOgorICAgICAgY2xvY2tzOgorICAgICAgICBp
dGVtczoKKyAgICAgICAgICAtIGRlc2NyaXB0aW9uOiBNb2R1bGUgQ2xvY2sKKyAgICAgICAgICAt
IGRlc2NyaXB0aW9uOiBCdXMgQ2xvY2sKKworICAgICAgY2xvY2stbmFtZXM6CisgICAgICAgIGl0
ZW1zOgorICAgICAgICAgIC0gY29uc3Q6IG1vZAorICAgICAgICAgIC0gY29uc3Q6IGJ1cworCisg
ICAgcmVxdWlyZWQ6CisgICAgICAtIGNsb2NrLW5hbWVzCisgICAgICAtIHJlc2V0cworCisgIGVs
c2U6CisgICAgcHJvcGVydGllczoKKyAgICAgIGNsb2NrczoKKyAgICAgICAgbWF4SXRlbXM6IDEK
KwogcmVxdWlyZWQ6CiAgIC0gIiNwd20tY2VsbHMiCiAgIC0gY29tcGF0aWJsZQpAQCAtNTQsNCAr
ODcsMTQgQEAgZXhhbXBsZXM6CiAgICAgICAgICNwd20tY2VsbHMgPSA8Mz47CiAgICAgfTsKIAor
ICAtIHwKKyAgICBwd21AMzAwYTAwMCB7CisgICAgICBjb21wYXRpYmxlID0gImFsbHdpbm5lcixz
dW41MGktaDYtcHdtIjsKKyAgICAgIHJlZyA9IDwweDAzMDBhMDAwIDB4NDAwPjsKKyAgICAgIGNs
b2NrcyA9IDwmb3NjMjRNPiwgPCZjY3UgQ0xLX0JVU19QV00+OworICAgICAgY2xvY2stbmFtZXMg
PSAibW9kIiwgImJ1cyI7CisgICAgICByZXNldHMgPSA8JmNjdSBSU1RfQlVTX1BXTT47CisgICAg
ICAjcHdtLWNlbGxzID0gPDM+OworICAgIH07CisKIC4uLgotLSAKMi4yMC4xCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
