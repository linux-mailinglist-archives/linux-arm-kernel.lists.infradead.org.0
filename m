Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B318F1DAE91
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YM/u0+0uOECh9Ir4AulaFQUsvNSges4BjQ/qSjIsT9I=; b=eyurLM0bvX2CyV
	3FBPTHDCQcT3Sx+Cr3ti6YES+r+qBvYQsllavc28alIzs21qV7HyTsFRIOr1xpPEY4LpLSQ4J41LH
	IcdpYqnswOSpWTiWXYUoln3rN4VcwN86vk8GMDZ4FAsMP+NkC0vp4aTP+eI1i3GoV0P5+HGaJy7f/
	t4gG7h315YSJ7C6KRN2BjxhNBgsQBwKL9PIeczLEu/LdeeI13uvVZL+aDb5EZ6WFf6oc3KY4Q8uAR
	0BXvTR4yEZsCprKhY9RUqQ8lzYjxyW1KbIMJm32QPS2yJUCv1SE1iBfaY4tAyMK10EcDISrNmkoD5
	Iu31nEqXaY8FHcZuwM8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbKtY-0005JL-Jt; Wed, 20 May 2020 09:20:12 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbKt7-0005I9-Vh
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:19:47 +0000
Received: by mail-io1-xd42.google.com with SMTP id f4so2322227iov.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 02:19:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=4MtCeXtYJztBAdny7JMpr9tFuQgehgsjdymzaj9y89A=;
 b=gr9GMxtdJnZ4/HGUFlPqG3223EEHFYHgbywWo5fZ7nEcHZ/0L6m/rPRz9EMomdinGX
 gw+4y2Ot7K3hqcXBlicBJGhv59sV6FTdDVXFBbOpizlDxwLs1N1BwdpncaefpyUFWwiT
 2J4oHkfgE9Q7nJ/GxD0HVIozJ54ni07wwhAoUxEzFtI34chD+Iv01o/teHe3Gqw7nvHW
 V2Rks6kPST1qvYf+/zQ49dKrWE79INi0q4sdTLF9TbU36N9xr5znY/VfLju3YaIUC3Zl
 oldzyJFzVLpQtquHM9cyLQrc+K1nX2S9NO+aqt/tmtrmU/a97iKz1e8XIocgiaitIdS7
 UccQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4MtCeXtYJztBAdny7JMpr9tFuQgehgsjdymzaj9y89A=;
 b=TdWFThUKnpJRLVJ2LM+9RPTwjGCxkKVvv6OVx8xTRZtsltz6bViR/Ij68LotpJM1HA
 2A16GqoPMCzSvmoQ7HYCm/n8641PyXuSdrkf1HbxK2fN5KbqaJZjfsQ/5IFFWIDL1ITN
 SI2izJYYujXGILPqqMOyJF4UNDOYuAU/jFXeFGiHBGhrwLtnrPkJCXKgVTGSy0ICgg3M
 a8gV0wMO0cd3xTk7hJ+0XkwlH7C1XnCWw/zu08L/3f2mBpSrVJ0Vax/YBpsoePbHEx2d
 U1X64w1ugrT7oscraD79UM9r3BiF7MqE25R1TmL9t9zd9pCNVg1ZCMG1ikunRqcDRdGO
 wSlg==
X-Gm-Message-State: AOAM533UniCktNqJcx/mC1trfBzVmq81wVPYrih/9Zfwi5w4fb9wqew/
 h4IJRGRqKYCj0KD+HrQuDR+Yyx6WK7KtGAI6wZD4Dw==
X-Google-Smtp-Source: ABdhPJxfcMFcRpgMe3jPhIr7dlnaeApgO41HN00hg/DL0f0uo79Shv8ju19FCk5CWaCaCcGPEVG3ppJTh2gjtP/n54o=
X-Received: by 2002:a5d:9e11:: with SMTP id h17mr2551601ioh.119.1589966383474; 
 Wed, 20 May 2020 02:19:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200511150759.18766-1-brgl@bgdev.pl>
 <20200511150759.18766-2-brgl@bgdev.pl>
 <20200519182831.GA418402@bogus>
In-Reply-To: <20200519182831.GA418402@bogus>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 20 May 2020 11:19:32 +0200
Message-ID: <CAMRc=Md6Be41XEu3ZnR1Du_hSMaAcPn4t4Ci9jAOZ1VXz6vbfA@mail.gmail.com>
Subject: Re: [PATCH v2 01/14] dt-bindings: arm: add a binding document for
 MediaTek PERICFG controller
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_021946_094473_A352C27F 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Edwin Peer <edwin.peer@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

d3QuLCAxOSBtYWogMjAyMCBvIDIwOjI4IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+IG5h
cGlzYcWCKGEpOgo+Cj4gT24gTW9uLCBNYXkgMTEsIDIwMjAgYXQgMDU6MDc6NDZQTSArMDIwMCwg
QmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiA+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kg
PGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPgo+ID4gVGhpcyBhZGRzIGEgYmluZGluZyBk
b2N1bWVudCBmb3IgdGhlIFBFUklDRkcgY29udHJvbGxlciBwcmVzZW50IG9uCj4gPiBNZWRpYVRl
ayBTb0NzLiBGb3Igbm93IHRoZSBvbmx5IHZhcmlhbnQgc3VwcG9ydGVkIGlzICdtdDg1MTYtcGVy
aWNmZycuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmdvbGFz
emV3c2tpQGJheWxpYnJlLmNvbT4KPiA+IC0tLQo+ID4gIC4uLi9hcm0vbWVkaWF0ZWsvbWVkaWF0
ZWsscGVyaWNmZy55YW1sICAgICAgICB8IDM0ICsrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZp
bGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKQo+ID4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHBlcmlj
ZmcueWFtbAo+ID4KPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvYXJtL21lZGlhdGVrL21lZGlhdGVrLHBlcmljZmcueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWsscGVyaWNmZy55YW1sCj4g
PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi43NGIyYTYxNzNm
ZmIKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9hcm0vbWVkaWF0ZWsvbWVkaWF0ZWsscGVyaWNmZy55YW1sCj4gPiBAQCAtMCwwICsx
LDM0IEBACj4gPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAgT1IgQlNELTIt
Q2xhdXNlKQo+ID4gKyVZQU1MIDEuMgo+ID4gKy0tLQo+ID4gKyRpZDogImh0dHA6Ly9kZXZpY2V0
cmVlLm9yZy9zY2hlbWFzL2FybS9tZWRpYXRlay9tZWRpYXRlayxwZXJpY2ZnLnlhbWwjIgo+ID4g
KyRzY2hlbWE6ICJodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMi
Cj4gPiArCj4gPiArdGl0bGU6IE1lZGlhVGVrIFBlcmlwaGVyYWwgQ29uZmlndXJhdGlvbiBDb250
cm9sbGVyCj4gPiArCj4gPiArbWFpbnRhaW5lcnM6Cj4gPiArICAtIEJhcnRvc3ogR29sYXN6ZXdz
a2kgPGJnb2xhc3pld3NraUBiYXlsaWJyZS5jb20+Cj4gPiArCj4gPiArcHJvcGVydGllczoKPiA+
ICsgIGNvbXBhdGlibGU6Cj4gPiArICAgIG9uZU9mOgo+Cj4gRG9uJ3QgbmVlZCBvbmVPZiBoZXJl
Lgo+Cj4gPiArICAgICAgLSBpdGVtczoKPiA+ICsgICAgICAgIC0gZW51bToKPiA+ICsgICAgICAg
ICAgLSBtZWRpYXRlayxwZXJpY2ZnCj4KPiBEb2Vzbid0IG1hdGNoIHRoZSBleGFtcGxlICh3aGlj
aCBpcyBjb3JyZWN0KS4KPgoKSGkgUm9iLAoKRllJIHRoaXMgd2FzIHN1cGVyc2VkZWQgYnkgdjMg
d2hpY2ggc2hvdWxkIG5vdyBiZSBjb3JyZWN0LgoKQmFydAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
