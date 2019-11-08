Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFFDF4275
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 09:46:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me+kBSk4Hb47Dr/PY4AH519njfJIil/BigK/Sg8fpxE=; b=rCUPMYRsKHM8pW
	x1eEgGRQXBPq6mKV7MRQD4uAeRwxfZ4DnHlLypF45YtYKV1hGoWdWzBo2dwdyVJVJNlHkfONHPJYc
	RkpG78WXrK2xN7Ntpnmaa0A5kIwuhKnZ2z9TnObCBlI2rgWCaV6AiDcMK6ECGeQuHO9NwrHaSNna9
	C61Fkl7ivStbhuyb+yFjnho6Q8jhRQg4ki+rKewXgEPpEsAKObh4kZGCAlb41eZuotzWivzU/ySGu
	Tk6DQnHhBhp5o3Qe9rOekJ/KqttTXU5L+XJe57P4K+RfO7NJsDs+W2L2TDsPOgZZ16kY+BvlgXc+J
	g5Lq5mt2Sdn4m3AUzgNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzuE-0005ns-AH; Fri, 08 Nov 2019 08:46:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzta-0005JP-FE
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 08:45:32 +0000
Received: by mail-wr1-x443.google.com with SMTP id a15so6014381wrf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 08 Nov 2019 00:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lXctZT9szOude0/tzOobu9MVmKEaCphOc5TWHI1R/+o=;
 b=WdY6nR0/Jp+x7ZOowmnVHfztGLVygNvroENA6yBkFeG6Y8J6MdNWkU5wlp+hZFdGLE
 JGz2/0cgugAvqCRFUlxMF40CNgPH0eOMT4XkfrObYacIn3gXmDD4p/aMz1PTm7fpW3ha
 r80j+ukVgX1HPOMbZ1Ss+smvyms6gB94q3id8WN/f4wdRgpnJoQRomnSGLtmbE9RtQna
 h9bklZ9VcEXBTCv1lGEkNbk34tPD8tpDwvUJAgm5QImq5gklZenXpk2ss5cmVyJFsnCy
 PXYbFfziTLWXsrOfjpeSz2QMyZ2wumiEo/KTYw5054vX82a/EEuMWkeu8Nrb1Kn3/mOh
 qC+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lXctZT9szOude0/tzOobu9MVmKEaCphOc5TWHI1R/+o=;
 b=G9ubiERYgou+a99bIykj4dWzqYNb3wDA+FNBs14NsixdrcQx0N4t/lv7HKt/g38kG4
 7464dzBjlCr2yANQberiGrMg+GDYhVwtYeQAlGbbaQxEb2Q3ySBVroIYOcsTUaUk3SHa
 iVG/YAQblweEQiLHuLIBeexXnAtlxAHoFnTECfxHhzbGBvyheYw3sLS+YYvck+SythvS
 IIYDSYwbXjuyqV1OzHeWXGV5uNfMNB/v7XuO/Gik2CKhfgtK5CztXd4M89vlM6ZaeEbX
 +9AAcHEjjZMyeIX2y629WpHcjeFQ+Fbyf2iRyiJOw+Y+XsCmKPt17Jv7UuXlc1AhEseN
 SKYA==
X-Gm-Message-State: APjAAAXsYRFy/T9uDYTPFkN8VGWcI9bC9IrQBQpBfVbA82gcX7D+0sUS
 T4PTEitUnk2JsPtNvrlOboo=
X-Google-Smtp-Source: APXvYqwP1PQg+Qz0CsAYeKQRWcWxaJuimaCkAjha6SKIoYhOxnoyF8fMyOe15V7v2E8HDLzWw/GVZg==
X-Received: by 2002:adf:f685:: with SMTP id v5mr7586956wrp.246.1573202727559; 
 Fri, 08 Nov 2019 00:45:27 -0800 (PST)
Received: from clement-Latitude-7490.outsight.local
 (lputeaux-656-1-11-33.w82-127.abo.wanadoo.fr. [82.127.142.33])
 by smtp.gmail.com with ESMTPSA id q25sm6662665wra.3.2019.11.08.00.45.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 00:45:27 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Philipp Zabel <pza@pengutronix.de>
Subject: [PATCH v4 1/7] dt-bindings: pwm: allwinner: Add H6 PWM description
Date: Fri,  8 Nov 2019 09:45:11 +0100
Message-Id: <20191108084517.21617-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108084517.21617-1-peron.clem@gmail.com>
References: <20191108084517.21617-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_004530_520932_22BF431A 
X-CRM114-Status: GOOD (  12.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
IDQ4ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0OCBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3
aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCmluZGV4IDBhYzUyZjgzYTU4Yy4u
MWJhZTQ0NmZlYmJiIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcHdtL2FsbHdpbm5lcixzdW40aS1hMTAtcHdtLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3B3bS9hbGx3aW5uZXIsc3VuNGktYTEwLXB3bS55YW1sCkBAIC0z
MCwxMyArMzAsNTEgQEAgcHJvcGVydGllczoKICAgICAgIC0gaXRlbXM6CiAgICAgICAgICAgLSBj
b25zdDogYWxsd2lubmVyLHN1bjUwaS1oNS1wd20KICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5u
ZXIsc3VuNWktYTEzLXB3bQorICAgICAgLSBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20K
IAogICByZWc6CiAgICAgbWF4SXRlbXM6IDEKIAogICBjbG9ja3M6CisgICAgbWluSXRlbXM6IDEK
KyAgICBtYXhJdGVtczogMgorICAgIGl0ZW1zOgorICAgICAgLSBkZXNjcmlwdGlvbjogTW9kdWxl
IENsb2NrCisgICAgICAtIGRlc2NyaXB0aW9uOiBCdXMgQ2xvY2sKKworICAjIEV2ZW4gdGhvdWdo
IGl0IG9ubHkgYXBwbGllcyB0byBzdWJzY2hlbWFzIHVuZGVyIHRoZSBjb25kaXRpb25hbHMsCisg
ICMgbm90IGxpc3RpbmcgdGhlbSBoZXJlIHdpbGwgdHJpZ2dlciBhIHdhcm5pbmcgYmVjYXVzZSBv
ZiB0aGUKKyAgIyBhZGRpdGlvbmFsc1Byb3BlcnRpZXMgc2V0IHRvIGZhbHNlLgorICBjbG9jay1u
YW1lczogdHJ1ZQorCisgIHJlc2V0czoKICAgICBtYXhJdGVtczogMQogCisgIGlmOgorICAgIHBy
b3BlcnRpZXM6CisgICAgICBjb21wYXRpYmxlOgorICAgICAgICBjb250YWluczoKKyAgICAgICAg
ICBjb25zdDogYWxsd2lubmVyLHN1bjUwaS1oNi1wd20KKworICB0aGVuOgorICAgIHByb3BlcnRp
ZXM6CisgICAgICBjbG9ja3M6CisgICAgICAgIG1heEl0ZW1zOiAyCisKKyAgICAgIGNsb2NrLW5h
bWVzOgorICAgICAgICBpdGVtczoKKyAgICAgICAgICAtIGNvbnN0OiBtb2QKKyAgICAgICAgICAt
IGNvbnN0OiBidXMKKworICAgIHJlcXVpcmVkOgorICAgICAgLSBjbG9jay1uYW1lcworICAgICAg
LSByZXNldHMKKworICBlbHNlOgorICAgIHByb3BlcnRpZXM6CisgICAgICBjbG9ja3M6CisgICAg
ICAgIG1heEl0ZW1zOiAxCisKIHJlcXVpcmVkOgogICAtICIjcHdtLWNlbGxzIgogICAtIGNvbXBh
dGlibGUKQEAgLTU0LDQgKzkyLDE0IEBAIGV4YW1wbGVzOgogICAgICAgICAjcHdtLWNlbGxzID0g
PDM+OwogICAgIH07CiAKKyAgLSB8CisgICAgcHdtQDMwMGEwMDAgeworICAgICAgY29tcGF0aWJs
ZSA9ICJhbGx3aW5uZXIsc3VuNTBpLWg2LXB3bSI7CisgICAgICByZWcgPSA8MHgwMzAwYTAwMCAw
eDQwMD47CisgICAgICBjbG9ja3MgPSA8Jm9zYzI0TT4sIDwmY2N1IENMS19CVVNfUFdNPjsKKyAg
ICAgIGNsb2NrLW5hbWVzID0gIm1vZCIsICJidXMiOworICAgICAgcmVzZXRzID0gPCZjY3UgUlNU
X0JVU19QV00+OworICAgICAgI3B3bS1jZWxscyA9IDwzPjsKKyAgICB9OworCiAuLi4KLS0gCjIu
MjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
