Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EADB1AD06
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 18:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gY3j+Svd7p9jKbFdh7nNEJu3JhM1MKqvogJSVc0hA90=; b=juetGsyGe4KShj
	d58Lsv2Uds6mUhM4LjxK8/919XYOyU3mj9+Kno12Xx2NGBdumj3jYg+aNfowUCnsEfZKeNcuMYZjX
	63gNUjYqz09TYFcZel3xWq/3i7fSzjzH25XzX+RXn31bL8lyHzS87eukXfoM3/pjKrW4Lk9Qbvb+j
	Bgy5xEb5nR0H9hjGXsghHMn5LUQyuU5h+FvdWK7tVRDOzfcjRRTIKfX38idqmOnFyMdyuqyIyh7oH
	NchKDLR00AsluctfzSem3+GayVPiX8Gr5PacfLe0Y14qLuqjEMUwXP599peqt0Yqqs0V5j51v4HEv
	Hvg0TkublP1WZ6RlipyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrEg-0001pL-97; Sun, 12 May 2019 16:22:02 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrEY-0001op-R1
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 16:21:56 +0000
Received: by mail-yw1-xc44.google.com with SMTP id q185so9002063ywe.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 May 2019 09:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TOPJGf99fx0pIuOa+mJLeJHDiEC2gaE8jhCKyZCcUYU=;
 b=D0bMqPOl4KMcE9yx9c0zLUrHutpFINUmjGtVdQwOhcFMKLh1eDITT83+DZ25CEChIx
 cIpD0dEmtcmrdmMP7+LJUsz2vnPcnFDxJy7PBddd0PloInxmr726ei01S8Zdhe6XfYnF
 lUl5GGnR001qDO0aj28ohQF0xpGFNioODJXmbpwJC/FNx+5dzMcopw+pc08esWoFURTo
 Ep3XnGSXfyYhBm6gdDhrtm15nBQ/P4d1+scTJd5ob+uQHF/5VK+RZCCY1WbbFDfouSug
 +VQFps53+03j7moT7D60lkq62vF6DdyZ1FkWnaZjQdQjhQSPYirAdgenuHBKT+6zYDkC
 H29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TOPJGf99fx0pIuOa+mJLeJHDiEC2gaE8jhCKyZCcUYU=;
 b=O9MSJPV47NHx/UqgDha6itooo129H6LuAyQmboFNweXOjG+6BFCYzwM5U5cQH8RXL9
 clAhf4xCnyWZEpdQmnVXkQhOvte0nYDHQaZJPeJS80Ea4KBUWPMDMWld4b5XcW4txb9j
 AB8z3mPkOly/EcfFvFRjxJFsZl25VomOIDTl9Is1YYrK8nIQk/sWWDW4k87jHwCQ9jUy
 kOq2Xxk58pBCE4Mp39+yy2Mni3bf1ipWsH1pyZauHhoqMApqrrmhqfoGjL/NjKryCws6
 CVF4+Y0tmxJ7aqB0kqLboP5+K36eMhe02qPO1d+kTNwFvK9see3rFwblrY7JKJGLjd8H
 SvWg==
X-Gm-Message-State: APjAAAX4jSawGtZOT//5fx6UBLLAJ9CHC+HrNmLToHZ+RW6H1zdYLagI
 fxmKb2/i/WMXX1LJwh2MrzV5HTdwAcDJM+/Bvyg=
X-Google-Smtp-Source: APXvYqwtIuH+K3gJStYpXRvCVBSpG8W4+socFkjdKI35G3vVDr7miYiNKjYklCbALO9LrhbwRk7Vf60kj7nVrDXDyTg=
X-Received: by 2002:a25:e89:: with SMTP id 131mr10899859ybo.416.1557678112340; 
 Sun, 12 May 2019 09:21:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190417173031.9920-1-peron.clem@gmail.com>
 <CAJiuCccu_wfgio9wUcOCP0o4XPRgQOvTOZS8St7mV88TAdwaRg@mail.gmail.com>
 <20190512134509.vcduqbkmnvpkbmkb@flea>
In-Reply-To: <20190512134509.vcduqbkmnvpkbmkb@flea>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sun, 12 May 2019 18:21:41 +0200
Message-ID: <CAJiuCcdE5rvOicAKSGBKPgJ7Q1LVV2aKZobhZXtTJ8Jufr=C8A@mail.gmail.com>
Subject: Re: [PATCH v3 0/8] Allwinner H6 Mali GPU support
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_092154_900144_FF4F8A8C 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
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
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIDEyIE1heSAyMDE5IGF0IDE1OjQ1LCBNYXhpbWUgUmlwYXJkIDxtYXhpbWUu
cmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToKPgo+IE9uIFNhdCwgTWF5IDExLCAyMDE5IGF0IDA2
OjM5OjM5UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+IEhpIE1heGltZSwKPiA+
Cj4gPiBJcyB0aGlzIHNlcmllcyBvayBmb3IgeW91ID8KPgo+IEknbSBub3QgdGhlIG1haW50YWlu
ZXIgb2YgdGhhdCBiaW5kaW5nLCBzbyBJJ2QgbmVlZCBhIGFjayBmcm9tIHdob2V2ZXIKPiB0aGF0
IGlzLgoKSW5kZWVkLCBJIHdpbGwgY29sbGVjdCBSb2IgSC4gcmV2aWV3ZWQgYW5kIHJlc2VudCB3
aXRoIHRoZSBjb3JyZWN0IG1haW50YWluZXIuCgpSZWdhcmRzLApDbGVtZW50Cgo+Cj4gTWF4aW1l
Cj4KPiAtLQo+IE1heGltZSBSaXBhcmQsIEJvb3RsaW4KPiBFbWJlZGRlZCBMaW51eCBhbmQgS2Vy
bmVsIGVuZ2luZWVyaW5nCj4gaHR0cHM6Ly9ib290bGluLmNvbQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
