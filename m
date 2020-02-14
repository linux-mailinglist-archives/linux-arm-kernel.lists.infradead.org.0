Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE2A15CFC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 03:17:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjiTtkYkt6LTlh1SpR8uSnPIjyKNbPF7yLXBRJBMH90=; b=X8bBVNRuETGhab
	ShdWrnT+eM2cLvS10BufUK1BNspyBa12cmO2mQiWiL3HmGXCS3MTydFgDTZBFzhIb8ZatNGVTbwpr
	joZlabNgKDJV0k2P68LSM8QLL20X96uEgd955iVgekUongYU67LhLToH8LGqPpheqmZwfAoqpU8Rr
	MoqI6JfIDU7RTQ/Iavmbm+iqgvOHMh4KILivBLc7upk/AChEytDcGxkYFEjugOVKIPbTIcg0nkFcv
	6Te4Izrd8ipN1Q1vxO44u1RDgTLUYtg1rkuRLZGeCHjXVqdzViZucGtQ3RLPnit/5v9wi0bqisgdA
	GDOl2uiZP/R4M7B2ghTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2QXf-0001AU-N1; Fri, 14 Feb 2020 02:17:19 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2QXG-0000sR-CD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 02:16:55 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 12so3262041pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 18:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8WSL1srlKefaq0F99EUBxceVRB2zzk2pjFciJq1lmoM=;
 b=NviinCR0oMk4qI4d2mKpLelYKzpQrp168dLQKrlj2kGO1vz2PooZPaDa58pTKuwiQc
 +ImsVH0fIz2PhVv7JiphElbM/R7o2yInpZJzBxOvBZnuQsx+OnEyy5Lr+Hxcb7atN33h
 aiCUdtlXGcFTMIZCodFcmaZMAU7b0RZxSQTnYz1cX9F625xfnyK8TghCjskieEN21fOR
 wFmWJJ/VYgfrOtZMvrkNl5MIQGsBxmZ2K6GQvFuQ3k0hIfEAf0srbU9VVEfi8cOKPJ6w
 rOI3aTNoHYZkKEdu7PAOr5FFeFy1+4PT7Xy8X1BpGQWN/8VWjVSBHzxumCbBF12ynXwm
 QJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=8WSL1srlKefaq0F99EUBxceVRB2zzk2pjFciJq1lmoM=;
 b=ScinRlbatiojqq9ypbzph7fVbSdsEgLcK70O1Xw8e+8QjuX4B35x22RStZpepvaw/D
 uiBbPTlg5lSj1DB2/29DRObWnEazCpHS+CeY8+SKkil+yZuK15CX3yedQGtz6Uw2lu4u
 133+7LEYa5PeZUvLs/hVbru8XLRiKL5puCQSACrUleGDFEn8eBJiER7r0BV8ynErTQog
 lIzYhMTmfNDIbo1Csstadz3j0TJvRjtPXL8duXpo34nkf17P1vY3z/QE0SwRlSKFNZIy
 v41sET1J/NOCUV9Ounf8dBhDumWauKohSYZBP5Y0LIk1Xm5PVxB0UMn5ppR7IFdRxF7w
 a6xA==
X-Gm-Message-State: APjAAAUKsK8dffruC/yxOZ2cN/jzxe0GzzPyve2PhoYIsgEtPMx7kCQf
 M4YLdTwrXgdhE4hsDykkyek=
X-Google-Smtp-Source: APXvYqwNycUdK+Z3JjK94o6igrgT3OAssaL84DBuSI3TwCZhtiJC9QPgSpnSDRlkxK/Ov/efHtWGPw==
X-Received: by 2002:a17:90a:9b88:: with SMTP id g8mr673097pjp.72.1581646613285; 
 Thu, 13 Feb 2020 18:16:53 -0800 (PST)
Received: from [172.16.1.120] ([125.130.116.2])
 by smtp.gmail.com with ESMTPSA id h26sm4890855pfr.9.2020.02.13.18.16.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Feb 2020 18:16:52 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [PATCH 0/3] PCI: brcmstb: Add Broadcom STB support
From: Jaedon Shin <jaedon.shin@gmail.com>
In-Reply-To: <CA+-6iNyjXnz4tYk4edupbhsjvyh==MA0bJ+311k_wBcDHQHJ9g@mail.gmail.com>
Date: Fri, 14 Feb 2020 11:16:47 +0900
Message-Id: <EC33C637-FBEB-49EE-9C0C-E119E1839F37@gmail.com>
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <6ba4bb21-034b-93f0-d4b7-13ac7c5a925d@gmail.com>
 <44052F86-D0DD-4FDD-A62B-09280E956405@gmail.com>
 <CA+-6iNyjXnz4tYk4edupbhsjvyh==MA0bJ+311k_wBcDHQHJ9g@mail.gmail.com>
To: Jim Quinlan <james.quinlan@Broadcom.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_181654_474215_FA213AF1 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaedon.shin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-gpio@vger.kernel.org,
 linux-pci@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, Gregory Fong <gregory.0xf0@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IDIwMjAuIDIuIDE0LiDsmKTsoIQgMTI6NTQsIEppbSBRdWlubGFuIDxqYW1lcy5xdWlubGFu
QEJyb2FkY29tLmNvbT4g7J6R7ISxOgo+IAo+IE9uIFRodSwgRmViIDEzLCAyMDIwIGF0IDEyOjE1
IEFNIEphZWRvbiBTaGluIDxqYWVkb24uc2hpbkBnbWFpbC5jb20+IHdyb3RlOgo+PiAKPj4gCj4+
PiAyMDIwLiAyLiAxMy4g7Jik7ZuEIDEyOjU0LCBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxp
QGdtYWlsLmNvbT4g7J6R7ISxOgo+Pj4gCj4+PiArSmltLAo+Pj4gCj4+PiBPbiAyLzEyLzIwMjAg
Njo1OSBQTSwgSmFlZG9uIFNoaW4gd3JvdGU6Cj4+Pj4gVGhpcyBzZXJpZXMgZW5hYmxlcyB0aGUg
QVJNIGJhc2VkIEJyb2FkY29tIFNUQiBTb0NzIGFuZCBzdXBwb3J0cyBHUElPCj4+Pj4gYmFzZWQg
cmVndWxhdG9ycyBmb3IgaXRzIHBvd2VyIHN1cHBsaWVzLiBhbmQgdGhpcyBoYXMgYW4gaW1wcm92
ZW1lbnQgb24KPj4+PiBkZXZtXyBBUElTLgo+Pj4gCj4+PiBXaGljaCBBUk0tYmFzZWQgU29DcyBk
aWQgeW91IHRyeSB0aGlzIG9uPyBXZSBzdGlsbCBoYXZlIGFuIGlzc3VlIHdpdGgKPj4+IHRoZSBt
dWx0aXBsZSBkbWEtcmFuZ2VzIHRoYXQgbXVzdCBiZSBoYW5kbGVkIHRvIHN1cHBvcnQgNzQ0NSB3
aXRoIG1lbW9yeQo+Pj4gaW4gdGhlIGV4dGVuc2lvbiByZWdpb25zIGFzIHdlbGwgYXMgNzI3OCBh
bmQgNzIxNi4KPj4gCj4+IAo+PiBJJ20gdXNpbmcgQkNNNzI2MDQgd2hpY2ggaGFzIG9ubHkgb25l
IG1lbWMuIGFuZCBkZXZpY2UgaXMgUXVhbGNvbW0gQXRoZXJvcwo+PiBRQ0E2MTc0IFdpLUZpIG1v
ZHVsZS4KPj4gCj4gWW91IGFwcGFyZW50bHkgaGF2ZSBhIHNpbXBsZSBlbm91Z2ggbWVtb3J5IGNv
bmZpZ3VyYXRpb24gc3VjaCB0aGF0IHRoZQo+IGN1cnJlbnQgdXBzdHJlYW0gZHJpdmVyIHdpbGwg
d29yay4gIEJ1dCB0aGlzIHdpbGwgbm90IHdvcmsgZm9yIGEKPiA3NDQ1LWJhc2VkIGNoaXAgb3Ig
b3RoZXIgQkNNN3h4eCBjaGlwcyB0aGF0IGVpdGhlciBoYXZlIGEgbWVtb3J5Cj4gcmVnaW9uIGV4
dGVuc2lvbiBvciBhIG5vbi16ZXJvIHN5c3RlbSBtZW1vcnkgb2Zmc2V0LgoKSSBmdWxseSBhZ3Jl
ZS4gSXQncyBub3QgeWV0IHJlYWR5IHRvIGVuYWJsZSBBUk0gYmFzZWQgQkNNNzQ0NSBTb0NzLiBX
ZSdkIGJldHRlcgpub3QgYWRkIEFSQ0hfQlJDTVNUQiBhbmQgImJyY20sYmNtNzQ0NS1wY2llIiBz
dHJpbmcgdW50aWwgdGhlIG11bHRpIGRtYS0KcmFuZ2UgcHJvYmxlbSBpcyBzb2x2ZWQuCgo+IAo+
IElJUkMsIHNpbWlsYXIgcmVndWxhdG9yIGNvZGUgd2FzIHN1Ym1pdHRlZCBiZWZvcmUgYXMgcGFy
dCBvZiB0aGUKPiBjb21wbGV0ZSBkcml2ZXIgdGhhdCBjb3VsZCBoYW5kbGUgb3VyIGN1cmlvdXMg
RE1BIHNpdHVhdGlvbiwgYnV0IHdhcwo+IHJlamVjdGVkIGJlY2F1c2Ugc29tZW9uZSBvYmplY3Rl
ZCB0byB1cyB1c2luZyBhICBnZW5lcmljIGxpc3Qgb2YKPiByZWd1bGF0b3JzIHdpdGhvdXQgc3Bl
Y2lmaWMgZXhwbGFuYXRpb24gZm9yIGVhY2ggaW4gdGhlIGRldmljZSB0cmVlCj4gZG9jdW1lbnRh
dGlvbnMuICBJIGhvcGUgeW91IGhhdmUgYmV0dGVyIGx1Y2sgOi0pCgpJJ2xsIHJlZmVyIHRvLgoK
VGhhbmtzLApKYWVkb24KCj4gCj4gVGhhbmtzLAo+IEppbQo+Pj4gCj4+PiBTZWUgY29tbWVudHMg
aW4gc3BlY2lmaWMgcGF0Y2hlcy4KPj4+IAo+Pj4+IAo+Pj4+IEphZWRvbiBTaGluICgzKToKPj4+
PiBQQ0k6IGJyY21zdGI6IEVuYWJsZSBBUkNIX0JSQ01TVEIKPj4+PiBQQ0k6IGJyY21zdGI6IEFk
ZCByZWd1bGF0b3Igc3VwcG9ydAo+Pj4+IFBDSTogYnJjbXN0YjogRHJvcCBjbGtfcHV0IHdoZW4g
cHJvYmUgZmFpbHMgYW5kIHJlbW92ZQo+Pj4+IAo+Pj4+IC4uLi9iaW5kaW5ncy9wY2kvYnJjbSxz
dGItcGNpZS55YW1sICAgICAgICAgICB8ICA4ICstCj4+Pj4gZHJpdmVycy9ncGlvL2dwaW8tYnJj
bXN0Yi5jICAgICAgICAgICAgICAgICAgIHwgMTMgKysrLQo+Pj4+IGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvS2NvbmZpZyAgICAgICAgICAgICAgICB8ICAyICstCj4+Pj4gZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLWJyY21zdGIuYyAgICAgICAgIHwgNzggKysrKysrKysrKysrKysrKysrLQo+
Pj4+IDQgZmlsZXMgY2hhbmdlZCwgOTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+
PiAKPj4+IAo+Pj4gLS0KPj4+IEZsb3JpYW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
