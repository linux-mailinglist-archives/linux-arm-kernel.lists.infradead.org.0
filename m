Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B65B11E758
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 17:00:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz1vSYnpnWZ1Dh60QQqHEZtcTcIBtqywQrKoeQmC6zs=; b=DxYQhb3M6TmQAy
	uCWBHeOc+zAMvAC0kqthfmmuwLDJ2odxmLJIRD0AnL8btsOgxHlLcps5WjgngdkRBlzbLD8XBIGSM
	B/tyy3a1mgP20Sy40eAA3PwzNvAsk4z7fEk0Qzn8B07rdp+31OguqQPBViIDM0yoXLXbHluYwPPhN
	6yF+Cy1GE2/ML2+3OBI4CxU6opDt3+RDgmsbTiixParAWZFt1Zy5mWSOuU4AEad+Bv3YJMjimuFA3
	sO8H01EyaWqyQwcn2YvpsQcqrCGXPrdAAgw4zqwBalwB5GlEAfP+HcqDxXU4GIXHRk/GqHrRgpcit
	zAcvarG/Ksi5b87NSXMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnMX-0000Jc-TP; Fri, 13 Dec 2019 16:00:17 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnMK-0007fY-9a
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 16:00:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id r14so2330743lfm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Dec 2019 08:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6d355onEMaQLbFzGsPL3qOJq28B0iID9uA32I/OH8KY=;
 b=RWONLY0C20iDqzVgHJOMcG0CbIMsarnktxykVv3fzYeDcK6YbJdMcv6KZE7y0BCOlw
 kLoWcGHRdoHmerJ3dVsBoOp4+zwDg69u2Io0/U/CLa1xJvkhFLD8LWAP0muL6aVREdlr
 dq+PsPNZF/el3cTFU9c2TLiU19CHe1GqHUjhb9Ao2Js8Swj/6tWPBA7nCliYmQ2ENqoq
 hV/HLAOs2jFe5nVBnbYC33Yl1pAlomhdJeOm3hDAhsk430Id7SWzriiZyxqxlmZ3qMta
 g9H4lygWNPJQKBKl3RS5+yH5mlJUPdGNspRipjnSbgj5B4PwJcy9sof2EmJsR3mce3dI
 IgIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6d355onEMaQLbFzGsPL3qOJq28B0iID9uA32I/OH8KY=;
 b=sKwLS0V4FoQyDfT2uQ1IvUWGctxrBJ7AC3dMDSFgznLa+ZrOsFchXmFZKD/E7/eu9f
 GI04I6TDBvPHN8Xs7SmUQmvZvQCIPF72lkeHAFz0oW/Z4IlD0ia/YqsBvtXi62KNyrtT
 LfElYcidEfcDkfCJIUDoaEl2qtv0Ndq++G9oIr34G0drd+/nHDWRgy6PuGKfmBvC8CIT
 IGQGYGhLOShwa8m88ZtmMWJZqTEyQQlr/fju7cNq/uhkM910hie8Jbl5LKilSu9ELHbI
 PopupjwKOQtDMok/Vem4Dnqk6+h6Mgy2jZJl+OzCYaRqCX6cBt5fmjzP5KlGUTP3YEts
 EoYA==
X-Gm-Message-State: APjAAAXzZmnezsirrEk5Fi2x3xOxZ588X1ZTyVmdghA4/XjwG2PLBMUW
 BAjBTNTKLyh2VQqRU3lH4NKoeBsF83UUelrGqUGtcA==
X-Google-Smtp-Source: APXvYqyf9tBuza0aFqrtSUyxftprBtALJcGpe4oAZEEePdM+WgDYDegqUpqrrK70d4RPfcTRXsPPG2o1rKeoC2pjSzU=
X-Received: by 2002:a19:c648:: with SMTP id w69mr9309054lff.44.1576252802440; 
 Fri, 13 Dec 2019 08:00:02 -0800 (PST)
MIME-Version: 1.0
References: <1576221873-28738-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1576221873-28738-1-git-send-email-krzk@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Dec 2019 16:59:50 +0100
Message-ID: <CACRpkdaQZZcaPtDfieGSP9wSow11Xv3K_x89bq=QeYGb2BhpHw@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: samsung: Fix missing OF and GPIOLIB dependency
 on S3C24xx and S3C64xx
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_080004_376151_3B4CFA4B 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Chen Zhou <chenzhou10@huawei.com>, Tomasz Figa <tomasz.figa@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMTMsIDIwMTkgYXQgODoyNCBBTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnpr
QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBBbGwgU2Ftc3VuZyBwaW5jdHJsIGRyaXZlcnMgc2VsZWN0
IGNvbW1vbiBwYXJ0IC0gUElOQ1RSTF9TQU1TVU5HIHdoaWNoIHVzZXMKPiBib3RoIE9GIGFuZCBH
UElPTElCIGluc2lkZS4gIEhvd2V2ZXIgb25seSBFeHlub3MgZHJpdmVycyBkZXBlbmQgb24gdGhl
c2UsCj4gdGhlcmVmb3JlIGFmdGVyIGVuYWJsaW5nIENPTVBJTEVfVEVTVCwgb24geDg2XzY0IGJ1
aWxkIG9mIFMzQzY0eHggZHJpdmVyCj4gZmFpbGVkOgo+Cj4gICAgIGRyaXZlcnMvcGluY3RybC9z
YW1zdW5nL3BpbmN0cmwtc2Ftc3VuZy5jOiBJbiBmdW5jdGlvbiDigJhzYW1zdW5nX2dwaW9saWJf
cmVnaXN0ZXLigJk6Cj4gICAgIGRyaXZlcnMvcGluY3RybC9zYW1zdW5nL3BpbmN0cmwtc2Ftc3Vu
Zy5jOjk2OTo1OiBlcnJvcjog4oCYc3RydWN0IGdwaW9fY2hpcOKAmSBoYXMgbm8gbWVtYmVyIG5h
bWVkIOKAmG9mX25vZGXigJkKPiAgICAgICAgZ2MtPm9mX25vZGUgPSBiYW5rLT5vZl9ub2RlOwo+
ICAgICAgICAgIF4KPgo+IFJld29yayB0aGUgZGVwZW5kZW5jaWVzIHNvIGFsbCBTYW1zdW5nIGRy
aXZlcnMgYW5kIGNvbW1vbgo+IFBJTkNUUkxfU0FNU1VORyBwYXJ0IGRlcGVuZCBvbiBPRl9HUElP
ICh3aGljaCBpcyBkZWZhdWx0IHllcyBpZiBHUElPTElCCj4gYW5kIE9GIGFyZSBlbmFibGVkKS4K
Pgo+IFJlcG9ydGVkLWJ5OiBDaGVuIFpob3UgPGNoZW56aG91MTBAaHVhd2VpLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+CgpXaGF0IHNo
b3VsZCB0aGlzIGJlIGFwcGxpZWQgb24/IEl0IGRvZXNuJ3QgYXBwbHkgdG8gbXkgZml4ZXMKYnJh
bmNoIHdoaWNoIGlzIGNsb3NlIHRvIHY1LjUtcmMxLiBQbGVhc2UgcmViYXNlIGFuZCByZXNlbmQK
aWYgdGhpcyB3YXMgbm90IGJhc2VkIG9uIHRoYXQuCgpTaG91bGQgdGhpcyBoYXZlIGEgRml4ZXM6
IHRhZz8KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
