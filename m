Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4142BB11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 22:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DllfVartA3fDrAMko87qNjj6yNpjXds8x07X0Ges2fU=; b=Y3SBoKYtZCDqWQ
	42383ZDM+Zg4GG5NUuJIRR7zbYgCP1MrXHIKwUwmACnJcw+sNf53vvyEh0iDJmMiE8nilJS+kQF7F
	7SgTObilUmIXyWrnLBRQjnXTfJRee33d9s2Ru0u6aOWklDYzhAZ1kemhOec3H7GWTXq8DSvhfdVnm
	17IRpdKaNHW0XeMUpkKsIYYV6rpNwXVWuw1wRLbTtBfzUFgqHMha4hrDJg7LnAz8khPLuciXCScMf
	B2dGU5eQWCx98qM47WoajKaf3nCt3DyoJIL8ZDIDTMcUe0j+Es/PN188JIqvHe3wMOukbeyidQozg
	FpRMX2boHXPAbgLzyb7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVLx6-00034U-Ev; Mon, 27 May 2019 20:10:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVLwl-0002mx-5n
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 20:10:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id s17so17891775wru.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 13:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n14EincEgyhHeNXBeUTMMuX2+QPgu7HvYrDyP4chhcI=;
 b=Fmx9pXSzDyPlNYGqK+6K6rz5Arzts2WlpCEd3ci+ylhZxGPmFNMRPHmD9qXjT7aTmP
 r6fSs0AnQZ5yU5E3Zhc7CYlR0LEMh7WvbzVA6GCoQymo70F2bOeDUvUwHnWHkWrbZj0E
 zT2BLNWUsLSX/BQS7Wy+M4nZ6GF0JgfXxQAYpJhDh9WlbSFlcNK0Rp53cVruCNQLH4nQ
 ouYBIQouyrsJ5376q0NBRb8oxpnNfaMfoUhJjSF+QP6ZdfmtjpyRRRDTMlWsA+UnQb7u
 kxMeKzzEr5PmM/x/tGjvoczXHok5VOqZeTbgeoIq/9AxT4G17wBcWa0hGPUBDmjJ4tQS
 Avig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n14EincEgyhHeNXBeUTMMuX2+QPgu7HvYrDyP4chhcI=;
 b=RrrKDX5lrD4zIrmVHj4RvSGzvd+MwUOx67KY43imRubjEG94C6ox77PeIZxnLL5vdD
 47YOATLitx1ItulrWgrqazM0VKgN3Wf8KMhOfMMR01tsFHd5lC6YrU9LcgY5HHevr3E+
 9UPQpB8mYudfTstjiithq5d91fU007ykBXa6Q5ZV00RCyHrHmngtDdeanZM9Th/9qU15
 zpbhy0lVyCEIPkD5wsRO4Wp4rNkxaWjWllPTK6e5CMKzUPMySebl9Z5C+2c5KodUJ/0B
 sSMmVfM+1Bf+lbC+Ndn5EPyuMfsrM76mbWBbba2klOqEFnEQHqPUtf4VhiIcBLmGok0F
 8xtQ==
X-Gm-Message-State: APjAAAU1lkSnNQbnYf5BeUWxxQ8+mxcBWEBt9oAxz0CUfS4EmOIeuh/x
 AhPph8ui4YYadT2oMzxiv24=
X-Google-Smtp-Source: APXvYqx7MnbzwbceeHK9CTEcjMFASegph4tm3AEkWAL8pUfeZb/J7jGTQ1b3jiXW3bJTwlKcDKlMdw==
X-Received: by 2002:adf:fd0f:: with SMTP id e15mr12818497wrr.104.1558987813345; 
 Mon, 27 May 2019 13:10:13 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:1f1:d0f0::4e2b:d7ca])
 by smtp.gmail.com with ESMTPSA id s127sm308523wmf.48.2019.05.27.13.10.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 13:10:12 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v4 1/7] dt-bindings: sound: sun4i-spdif: Add Allwinner H6
 compatible
Date: Mon, 27 May 2019 22:06:21 +0200
Message-Id: <20190527200627.8635-2-peron.clem@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190527200627.8635-1-peron.clem@gmail.com>
References: <20190527200627.8635-1-peron.clem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_131015_213783_E193C33B 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com,
 =?UTF-8?q?Cl=C3=A9ment=20P=C3=A9ron?= <peron.clem@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsd2lubmVyIEg2IGhhcyBhIFNQRElGIGNvbnRyb2xsZXIgd2l0aCBhbiBpbmNyZWFzZSBvZiB0
aGUgZmlmbwpzaXplIGFuZCBhIHNsaWdoZXIgZGlmZmVyZW5jZSBpbiBtZW1vcnkgbWFwcGluZyBj
b21wYXJlIHRvIEgzL0E2NC4KClRoaXMgbWFrZSBpdCBub3QgY29tcGF0aWJsZSB3aXRoIHRoZSBw
cmV2aW91cyBnZW5lcmF0aW9uLgoKSW50cm9kdWNlIGEgc3BlY2lmaWMgYmluZGluZ3MgZm9yIEg2
IFNvQy4KClNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5j
b20+ClJldmlld2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgpBY2tlZC1ieTog
TWF4aW1lIFJpcGFyZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4KLS0tCiAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9zb3VuZC9hbGx3aW5uZXIsc3VuNGktYTEwLXNwZGlmLnlhbWwgICAgIHwg
MSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1zcGRp
Zi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL2FsbHdpbm5l
cixzdW40aS1hMTAtc3BkaWYueWFtbAppbmRleCBhNDllZjIyOTRhNzQuLmUwMjg0ZDhjM2I2MyAx
MDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL2FsbHdp
bm5lcixzdW40aS1hMTAtc3BkaWYueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc291bmQvYWxsd2lubmVyLHN1bjRpLWExMC1zcGRpZi55YW1sCkBAIC0yMSw2ICsy
MSw3IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNGktYTEwLXNw
ZGlmCiAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuNmktYTMxLXNwZGlmCiAgICAgICAtIGNv
bnN0OiBhbGx3aW5uZXIsc3VuOGktaDMtc3BkaWYKKyAgICAgIC0gY29uc3Q6IGFsbHdpbm5lcixz
dW41MGktaDYtc3BkaWYKICAgICAgIC0gaXRlbXM6CiAgICAgICAgICAgLSBjb25zdDogYWxsd2lu
bmVyLHN1bjhpLWE4M3Qtc3BkaWYKICAgICAgICAgICAtIGNvbnN0OiBhbGx3aW5uZXIsc3VuOGkt
aDMtc3BkaWYKLS0gCjIuMjAuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
