Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F99D1B8DDF
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 10:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=waGyVYAEWMW2dpQtf0n9lbFzjx536ReN2xCwhGbe+qk=; b=GNrHQCcqf5wpRP
	uzpdAnq+GhpGt0zx7JsRtYnihIXCVSGMpOCpN3iNV3/0UUK9SBQC4Zz2HNGS76EV0909W/om2s02f
	o30bZCX9VYPIQg4CJgOuhjjil1qdzajiQy50nl187Q5n2LNvJIHLkaVu1WgVWnJDxP2IOX/ipdS8X
	269cuQqrxyvzBZDBHoVvv7LF1JWXmhwfHBdie1PM+zDKYDoKSkKl2KD0umf2dZPy+vztIlmG9aR8n
	Amf1FDNJGU3ciynmAKoYLqAhIzA9BNR4iW7+GQ/cynJo9FgOSBGjFl8cLJuA4PSjPwQYswNaQwgzo
	AOWL4dYGzuJ6gIXkZNjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jScXR-00078h-Mp; Sun, 26 Apr 2020 08:21:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jScX0-0006vR-AP; Sun, 26 Apr 2020 08:20:55 +0000
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com
 [209.85.218.54])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2011F21841;
 Sun, 26 Apr 2020 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587889253;
 bh=32JPrJrGuDRD2wkuFtj2MYt27oiR4LTyT2PFdhPaclQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=0tLZar1QUA+vvcNySsyW0rfaxWr2woQV7fXM/l6uVDEwEdBMdtgw//+P20sNglhU3
 iyD7SKLm3Iz9jffpJMcaScYEERBIum/EprF3MM1+3GfpD5aXy7yoPfl3eygBsfKVpA
 XSP2CPssF5zHqiaYcKY2fqCuFWxFRkkcTZMUh+mk=
Received: by mail-ej1-f54.google.com with SMTP id re23so11410521ejb.4;
 Sun, 26 Apr 2020 01:20:53 -0700 (PDT)
X-Gm-Message-State: AGi0PubSBVr+i60f5rX3xmVW9zE/QKO52msnJvdudFk7QyIkafhY1sm9
 guBT3uKq/cwrriRXn9N3VqJZwucQPZlt8qWohA==
X-Google-Smtp-Source: APiQypIeMlhVPVvjZ/EzBhYNkJSsKB75b0ue/XkSPqE14oZvx51BpCqy/qg7FEkcuFRxAPFavqIR3TDtbcx1mHFl0LQ=
X-Received: by 2002:a17:906:eb90:: with SMTP id
 mh16mr14806818ejb.201.1587889251405; 
 Sun, 26 Apr 2020 01:20:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200420135045.27984-1-yuehaibing@huawei.com>
In-Reply-To: <20200420135045.27984-1-yuehaibing@huawei.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 26 Apr 2020 16:20:39 +0800
X-Gmail-Original-Message-ID: <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
Message-ID: <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
Subject: Re: [PATCH -next] drm/mediatek: Fix Kconfig warning
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_012054_389328_39C0FE1A 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFl1ZUhhaWJpbmc6CgpZdWVIYWliaW5nIDx5dWVoYWliaW5nQGh1YXdlaS5jb20+IOaWvCAy
MDIw5bm0NOaciDIw5pelIOmAseS4gCDkuIvljYgxMDowNOWvq+mBk++8mgo+Cj4gV0FSTklORzog
dW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgTVRLX01NU1lTCj4gICBEZXBl
bmRzIG9uIFtuXTogKEFSQ0hfTUVESUFURUsgWz15XSB8fCBDT01QSUxFX1RFU1QgWz1uXSkgJiYg
Q09NTU9OX0NMS19NVDgxNzNfTU1TWVMgWz1uXQo+ICAgU2VsZWN0ZWQgYnkgW3ldOgo+ICAgLSBE
Uk1fTUVESUFURUsgWz15XSAmJiBIQVNfSU9NRU0gWz15XSAmJiBEUk0gWz15XSAmJiAoQVJDSF9N
RURJQVRFSyBbPXldIHx8IEFSTSAmJiBDT01QSUxFX1RFU1QgWz1uXSkgJiYgQ09NTU9OX0NMSyBb
PXldICYmIEhBVkVfQVJNX1NNQ0NDIFs9eV0gJiYgT0YgWz15XQo+Cj4gQWRkIG1pc3NpbmcgZGVw
ZW5kY3kgQ09NTU9OX0NMS19NVDgxNzNfTU1TWVMgdG8gZml4IHRoaXMuCgpGcm9tIHRoZSBjb2Rl
IHJlbGF0aW9uc2hpcCwgbWVkaWF0ZWsgZHJtIGhhcyByZWxhdGlvbiB3aXRoIG1lZGlhdGVrCm1t
c3lzLCBhbmQgbWVkaWF0ZWsgbW1zeXMgaGFzIHJlbGF0aW9uIHdpdGggbWVkYWl0ZWsgY2xvY2su
ClNvIEkgdGhpbmsgaXQncyBiZXR0ZXIgdGhhdCBDT05GSUdfTVRLX01NU1lTIHNlbGVjdApDT05G
SUdfQ09NTU9OX0NMS19NVDgxNzNfTU1TWVMuCgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+IEZp
eGVzOiAyYzc1OGUzMDFlZDkgKCJzb2MgLyBkcm06IG1lZGlhdGVrOiBNb3ZlIHJvdXRpbmcgY29u
dHJvbCB0byBtbXN5cyBkZXZpY2UiKQo+IFNpZ25lZC1vZmYtYnk6IFl1ZUhhaWJpbmcgPHl1ZWhh
aWJpbmdAaHVhd2VpLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25m
aWcgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvS2NvbmZpZwo+IGluZGV4IGM0MjBmNWEzZDMzYi4uNGQ5YjU1NDBkZTY4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL0tjb25maWcKPiBAQCAtNiw2ICs2LDcgQEAgY29uZmlnIERSTV9NRURJ
QVRFSwo+ICAgICAgICAgZGVwZW5kcyBvbiBDT01NT05fQ0xLCj4gICAgICAgICBkZXBlbmRzIG9u
IEhBVkVfQVJNX1NNQ0NDCj4gICAgICAgICBkZXBlbmRzIG9uIE9GCj4gKyAgICAgICBkZXBlbmRz
IG9uIENPTU1PTl9DTEtfTVQ4MTczX01NU1lTCj4gICAgICAgICBzZWxlY3QgRFJNX0dFTV9DTUFf
SEVMUEVSCj4gICAgICAgICBzZWxlY3QgRFJNX0tNU19IRUxQRVIKPiAgICAgICAgIHNlbGVjdCBE
Uk1fTUlQSV9EU0kKPiAtLQo+IDIuMTcuMQo+Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
