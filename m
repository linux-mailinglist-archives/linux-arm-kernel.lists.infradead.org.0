Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF4F15C4E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:54:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97vtlaliy8Dx/8lqfrIqEDD5kZpbhfx0rDYIdZPlBzw=; b=D+2gZncRUTcQWp
	/kC8k8Jyb935rDpbf69VsWx9mlq62TmpFhCsOK2IAYXVI6DPkbfydzoeOYCWVY6sWCynjBiBLk6Lf
	4eZdxCDGKWgEr8mLdb5hrRqW0Xe2ZB+pQPXGB59fWmn7JuMPPlrwLsUdMOgTH2iHCx5Xz+JuJZ97v
	A2U5wgWoMaMjTYJ16G1Ck53+l+D3gkrGhQcXeaJ5883iLeqa/HA2P49QgsUUgu1hK6fQip7Kf3LSR
	5eej42/HVbhzuTeVzxETnLTjLzccJKq4RbtyFt21s+XjHqFqei8iSghB6TWz4ISOvd7aqQoRYrM7V
	qXYX7ArRQ55N+kW+eM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Gou-0001T8-KU; Thu, 13 Feb 2020 15:54:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Gok-0001RQ-MH
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:54:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so7288953wrd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:54:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BncL0+XD43RhxS89iRgODSVbvs7SMtr+UstAFU48Su0=;
 b=gy+gwxeqTOksSrRrjnTNb3ooArrrBq/WJqL2vuteprKqijh6HcJ5Eii/2Bj7ABgQxZ
 V5fweqnHLTMgJtX2vj5uBNW265L7AIbR2+zEOQEeZCDD33AwiWT2j+I8vzgBHiAhVifi
 KRcUHQYZdKuL3aQ1U/udIIbDSSSOiDXeUVaoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BncL0+XD43RhxS89iRgODSVbvs7SMtr+UstAFU48Su0=;
 b=Y+WtLkeIizSUv63VTb/J8EEV1YivYMSrbmHgT/CvruDdusjhisAqYcRZzdz/71OGdE
 HqhQykl9yBS/CKGx6QUq+vv5CEhHSxVzYxFC3BN9DelSQ7A1y0b2YUtRYvQDXrpHRxDX
 29rPJD9hPwCTxhDt5n8FpvUGo/tkjc6s6WZBE/+frXJ8SKr8cKIaPwqX/+5gs73oetxp
 +glFjdhWkRVPT1+8d0z2/js0LOM4bR5E9Mlh7jK5Sb02jZfLA4jZMl0534+rYDTlVLcY
 K6GH7gUPI6pEvoQgOyY+c6VFV2NttPnypVKYTsIO1xx2aVsgfMhLedl0RHRgxotGmI1A
 ZfPA==
X-Gm-Message-State: APjAAAUuGjZIEcSKC/jna3KsA+AXsn8eL6PuBiy1KBIQSytvXX+irYUD
 aftcSb9gp8Qn6oeMqbn7AsTZeiqhX8mjtIDvOzU7Jg==
X-Google-Smtp-Source: APXvYqzqlhfTv3u6j/of0GU1h8UocABGOozIc4x6AqtA+5+X784yM3rvl4U9lh/7hs2hMWYofh+E1Afe7RpyRN9Cs5c=
X-Received: by 2002:adf:e692:: with SMTP id r18mr22518034wrm.413.1581609255837; 
 Thu, 13 Feb 2020 07:54:15 -0800 (PST)
MIME-Version: 1.0
References: <20200213025930.27943-1-jaedon.shin@gmail.com>
 <6ba4bb21-034b-93f0-d4b7-13ac7c5a925d@gmail.com>
 <44052F86-D0DD-4FDD-A62B-09280E956405@gmail.com>
In-Reply-To: <44052F86-D0DD-4FDD-A62B-09280E956405@gmail.com>
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Thu, 13 Feb 2020 10:54:04 -0500
Message-ID: <CA+-6iNyjXnz4tYk4edupbhsjvyh==MA0bJ+311k_wBcDHQHJ9g@mail.gmail.com>
Subject: Re: [PATCH 0/3] PCI: brcmstb: Add Broadcom STB support
To: Jaedon Shin <jaedon.shin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_075420_288757_21567B9C 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gVGh1LCBGZWIgMTMsIDIwMjAgYXQgMTI6MTUgQU0gSmFlZG9uIFNoaW4gPGphZWRvbi5zaGlu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPgo+ID4gMjAyMC4gMi4gMTMuIOyYpO2bhCAxMjo1NCwgRmxv
cmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+IOyekeyEsToKPiA+Cj4gPiArSmlt
LAo+ID4KPiA+IE9uIDIvMTIvMjAyMCA2OjU5IFBNLCBKYWVkb24gU2hpbiB3cm90ZToKPiA+PiBU
aGlzIHNlcmllcyBlbmFibGVzIHRoZSBBUk0gYmFzZWQgQnJvYWRjb20gU1RCIFNvQ3MgYW5kIHN1
cHBvcnRzIEdQSU8KPiA+PiBiYXNlZCByZWd1bGF0b3JzIGZvciBpdHMgcG93ZXIgc3VwcGxpZXMu
IGFuZCB0aGlzIGhhcyBhbiBpbXByb3ZlbWVudCBvbgo+ID4+IGRldm1fIEFQSVMuCj4gPgo+ID4g
V2hpY2ggQVJNLWJhc2VkIFNvQ3MgZGlkIHlvdSB0cnkgdGhpcyBvbj8gV2Ugc3RpbGwgaGF2ZSBh
biBpc3N1ZSB3aXRoCj4gPiB0aGUgbXVsdGlwbGUgZG1hLXJhbmdlcyB0aGF0IG11c3QgYmUgaGFu
ZGxlZCB0byBzdXBwb3J0IDc0NDUgd2l0aCBtZW1vcnkKPiA+IGluIHRoZSBleHRlbnNpb24gcmVn
aW9ucyBhcyB3ZWxsIGFzIDcyNzggYW5kIDcyMTYuCj4KPgo+IEknbSB1c2luZyBCQ003MjYwNCB3
aGljaCBoYXMgb25seSBvbmUgbWVtYy4gYW5kIGRldmljZSBpcyBRdWFsY29tbSBBdGhlcm9zCj4g
UUNBNjE3NCBXaS1GaSBtb2R1bGUuCj4KWW91IGFwcGFyZW50bHkgaGF2ZSBhIHNpbXBsZSBlbm91
Z2ggbWVtb3J5IGNvbmZpZ3VyYXRpb24gc3VjaCB0aGF0IHRoZQpjdXJyZW50IHVwc3RyZWFtIGRy
aXZlciB3aWxsIHdvcmsuICBCdXQgdGhpcyB3aWxsIG5vdCB3b3JrIGZvciBhCjc0NDUtYmFzZWQg
Y2hpcCBvciBvdGhlciBCQ003eHh4IGNoaXBzIHRoYXQgZWl0aGVyIGhhdmUgYSBtZW1vcnkKcmVn
aW9uIGV4dGVuc2lvbiBvciBhIG5vbi16ZXJvIHN5c3RlbSBtZW1vcnkgb2Zmc2V0LgoKSUlSQywg
c2ltaWxhciByZWd1bGF0b3IgY29kZSB3YXMgc3VibWl0dGVkIGJlZm9yZSBhcyBwYXJ0IG9mIHRo
ZQpjb21wbGV0ZSBkcml2ZXIgdGhhdCBjb3VsZCBoYW5kbGUgb3VyIGN1cmlvdXMgRE1BIHNpdHVh
dGlvbiwgYnV0IHdhcwpyZWplY3RlZCBiZWNhdXNlIHNvbWVvbmUgb2JqZWN0ZWQgdG8gdXMgdXNp
bmcgYSAgZ2VuZXJpYyBsaXN0IG9mCnJlZ3VsYXRvcnMgd2l0aG91dCBzcGVjaWZpYyBleHBsYW5h
dGlvbiBmb3IgZWFjaCBpbiB0aGUgZGV2aWNlIHRyZWUKZG9jdW1lbnRhdGlvbnMuICBJIGhvcGUg
eW91IGhhdmUgYmV0dGVyIGx1Y2sgOi0pCgpUaGFua3MsCkppbQo+ID4KPiA+IFNlZSBjb21tZW50
cyBpbiBzcGVjaWZpYyBwYXRjaGVzLgo+ID4KPiA+Pgo+ID4+IEphZWRvbiBTaGluICgzKToKPiA+
PiAgUENJOiBicmNtc3RiOiBFbmFibGUgQVJDSF9CUkNNU1RCCj4gPj4gIFBDSTogYnJjbXN0Yjog
QWRkIHJlZ3VsYXRvciBzdXBwb3J0Cj4gPj4gIFBDSTogYnJjbXN0YjogRHJvcCBjbGtfcHV0IHdo
ZW4gcHJvYmUgZmFpbHMgYW5kIHJlbW92ZQo+ID4+Cj4gPj4gLi4uL2JpbmRpbmdzL3BjaS9icmNt
LHN0Yi1wY2llLnlhbWwgICAgICAgICAgIHwgIDggKy0KPiA+PiBkcml2ZXJzL2dwaW8vZ3Bpby1i
cmNtc3RiLmMgICAgICAgICAgICAgICAgICAgfCAxMyArKystCj4gPj4gZHJpdmVycy9wY2kvY29u
dHJvbGxlci9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDIgKy0KPiA+PiBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtYnJjbXN0Yi5jICAgICAgICAgfCA3OCArKysrKysrKysrKysrKysrKyst
Cj4gPj4gNCBmaWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
ID4+Cj4gPgo+ID4gLS0KPiA+IEZsb3JpYW4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
