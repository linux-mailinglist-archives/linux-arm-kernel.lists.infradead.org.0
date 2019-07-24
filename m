Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57120736AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 20:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdmgY/cAmlt1JvjI+EPt59I/rsM5Ex279dfZ/8p80EI=; b=Y4Sk4F4PYDx/Nj
	LMUXEcVIr1FEuFcVFOV/MYHOnIb9csWcptupVF50GXvwdfia4rgixJDsfh+s8z9POTqi/wz16DqBy
	0oFh/UdvHmvBQ4lWOcNFItYNJQeN/aZGe34RRBH4A3/1NMeFQHuiqRCnWl4oM0Ps9FsO34skO7X6z
	UVo+upa/WjUhYNq7jw7W329JQAZVmJM1QjQZYpLS10p8xFoC1Qkg2IBN2ts16c8mkSVEKPzAuKFMi
	dB4Rthq210IJ1k20bfTxnlXsyCQdZ98moBahQhVUDDCrL7kw1IsBTyhGetL416LNkK20T+/UwEKye
	hLbyNwDOMU3Dvxc3ZhgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqM8H-0000aH-MZ; Wed, 24 Jul 2019 18:36:57 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqM85-0000Zt-4S
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 18:36:46 +0000
Received: by mail-wr1-f65.google.com with SMTP id y4so48063435wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Xzl/fiLKGCPpOVGcck93S7ZblEbRn80OrLwMSsnTC7Q=;
 b=Mr/cnOhuVZ2bhp2rAF3Sy4JWTln8XoRjYPlfWhIjxYOQtn6YTIRg4Hz9RVPLGgyVam
 yUi5TnDw13m8G0K151fXk/ZsbxbtWDbjrDSSANtpiSENoorKWZSHwpNWgpndNlO5ingz
 iBX2uAtNHObK1aSMRe9ud9IjaVE/MJrAN2ycFLFSmsMP6Xix+jqrbCor8u6VcOxVBN8H
 ynTbEV3DAxKqpMvioroIwwUmHRa7gUdWrM1Gcqg25A0zyTMnnhzgIF13u5g2PfddZMym
 Z4/QsMNKOsiL6MwMbzWb5Y6FmH7OIYCZRGKl1wjgCDHYPdexPa5scMswC9Zb+KXG5XdL
 q3dA==
X-Gm-Message-State: APjAAAXVqcxlTudUxcHUpyWxDSxswodkVeki9wImcTSv4Hpysl3sJ5TF
 BxOHwd9Ug/pDwRlRIl7IdI650L3S
X-Google-Smtp-Source: APXvYqxYRMQS1TmGXcymc3W7ToVdMWgVBoEQhDPGcYVwmX41aL1Qhj0AF02NdM3bX24C9cVeLuh4lg==
X-Received: by 2002:adf:b195:: with SMTP id q21mr85664720wra.2.1563993402757; 
 Wed, 24 Jul 2019 11:36:42 -0700 (PDT)
Received: from kozik-lap ([194.230.155.239])
 by smtp.googlemail.com with ESMTPSA id c7sm40775879wro.70.2019.07.24.11.36.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 24 Jul 2019 11:36:41 -0700 (PDT)
Date: Wed, 24 Jul 2019 20:36:39 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Artur =?utf-8?B?xZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
Subject: Re: [RFC PATCH 09/11] devfreq: exynos-bus: Add interconnect
 functionality to exynos-bus
Message-ID: <20190724183639.GA14346@kozik-lap>
References: <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <CGME20190723122028eucas1p2eb75f35b810e71d6c590370aaff0997b@eucas1p2.samsung.com>
 <20190723122016.30279-10-a.swigon@partner.samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723122016.30279-10-a.swigon@partner.samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_113645_177800_9D06D44D 
X-CRM114-Status: GOOD (  23.93  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, sw0312.kim@samsung.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, inki.dae@samsung.com, cw00.choi@samsung.com,
 myungjoo.ham@samsung.com, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdWwgMjMsIDIwMTkgYXQgMDI6MjA6MTRQTSArMDIwMCwgQXJ0dXIgxZp3aWdvxYQg
d3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRzIGludGVyY29ubmVjdCBmdW5jdGlvbmFsaXR5IHRvIHRo
ZSBleHlub3MtYnVzIGRldmZyZXEKPiBkcml2ZXIuCj4gCj4gVGhlIFNvQyB0b3BvbG9neSBpcyBh
IGdyYXBoIChvciwgbW9yZSBzcGVjaWZpY2FsbHksIGEgdHJlZSkgYW5kIG1vc3Qgb2YgaXRzCj4g
ZWRnZXMgYXJlIHRha2VuIGZyb20gdGhlIGRldmZyZXEgcGFyZW50LWNoaWxkIGhpZXJhcmNoeSAo
Y2YuCj4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RldmZyZXEvZXh5bm9zLWJ1
cy50eHQpLiBUaGUgcHJldmlvdXMKPiBwYXRjaCBhZGRzIG1pc3NpbmcgZWRnZXMgdG8gdGhlIERU
ICh1bmRlciB0aGUgbmFtZSAncGFyZW50JykuIER1ZSB0bwoKRG8gbm90IHJlZmVyIHRvIERUIHBh
dGNoZXMuIFRoZXkgd2lsbCBjb21lIHRocm91Z2ggZGlmZmVyZW50IHRyZWUgc28KInByZXZpb3Vz
IiB3aWxsIG5vdCBiZSBjb3JyZWN0IGFueW1vcmUuIFlvdSBtZW50aW9uZWQgZGVwZW5kZW5jaWVz
IGluCmNvdmVyIGxldHRlciBzbyBpdCBpcyBzdWZmaWNpZW50LgoKPiB1bnNwZWNpZmllZCByZWxh
dGl2ZSBwcm9iaW5nIG9yZGVyLCAtRVBST0JFX0RFRkVSIG1heSBiZSBwcm9wYWdhdGVkIHRvCj4g
Z3VhcmFudGVlIHRoYXQgYSBjaGlsZCBpcyBwcm9iZWQgYmVmb3JlIGl0cyBwYXJlbnQuCj4gCj4g
RWFjaCBidXMgaXMgbm93IGFuIGludGVyY29ubmVjdCBwcm92aWRlciBhbmQgYW4gaW50ZXJjb25u
ZWN0IG5vZGUgYXMgd2VsbAo+IChjZi4gRG9jdW1lbnRhdGlvbi9pbnRlcmNvbm5lY3QvaW50ZXJj
b25uZWN0LnJzdCksIGkuZS4gZXZlcnkgYnVzIHJlZ2lzdGVycwo+IGl0c2VsZiBhcyBhIG5vZGUu
IE5vZGUgSURzIGFyZSBub3QgaGFyZGNvZGVkIGJ1dCByYXRoZXIgYXNzaWduZWQgYXQKPiBydW50
aW1lLCBpbiBwcm9iaW5nIG9yZGVyIChzdWJqZWN0IHRvIHRoZSBhYm92ZS1tZW50aW9uZWQgZXhj
ZXB0aW9uCj4gcmVnYXJkaW5nIHJlbGF0aXZlIG9yZGVyKS4gVGhpcyBhcHByb2FjaCBhbGxvd3Mg
Zm9yIHVzaW5nIHRoaXMgZHJpdmVyIHdpdGgKPiB2YXJpb3VzIEV4eW5vcyBTb0NzLgo+IAo+IFRo
ZSBkZXZmcmVxIHRhcmdldCgpIGNhbGxiYWNrIHByb3ZpZGVkIGJ5IGV4eW5vcy1idXMgbm93IHNl
bGVjdHMgZWl0aGVyIHRoZQo+IGZyZXF1ZW5jeSBjYWxjdWxhdGVkIGJ5IHRoZSBkZXZmcmVxIGdv
dmVybm9yIG9yIHRoZSBmcmVxdWVuY3kgcmVxdWVzdGVkIHZpYQo+IHRoZSBpbnRlcmNvbm5lY3Qg
QVBJIGZvciB0aGUgZ2l2ZW4gbm9kZSwgd2hpY2hldmVyIGlzIGhpZ2hlci4KPiAKPiBQbGVhc2Ug
bm90ZSB0aGF0IGl0IGlzIG5vdCBhbiBlcnJvciB3aGVuIENPTkZJR19JTlRFUkNPTk5FQ1QgaXMg
J24nLCBpbgo+IHdoaWNoIGNhc2UgYWxsIGludGVyY29ubmVjdCBBUEkgZnVuY3Rpb25zIGFyZSBu
by1vcC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBcnR1ciDFmndpZ2/FhCA8YS5zd2lnb25AcGFydG5l
ci5zYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYyB8IDE0
NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwg
MTQ1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kZXZmcmVxL2V4eW5v
cy1idXMuYyBiL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiBpbmRleCA0MTI1MTFjYTc3
MDMuLjEyZmI3Yzg0YWU1MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1
cy5jCj4gKysrIGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IEBAIC0xNCw2ICsxNCw3
IEBACj4gICNpbmNsdWRlIDxsaW51eC9kZXZmcmVxLWV2ZW50Lmg+Cj4gICNpbmNsdWRlIDxsaW51
eC9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2V4cG9ydC5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvaW50ZXJjb25uZWN0LXByb3ZpZGVyLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4K
PiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wbV9vcHAuaD4KPiBA
QCAtMjMsNiArMjQsOCBAQAo+ICAjZGVmaW5lIERFRkFVTFRfU0FUVVJBVElPTl9SQVRJTwk0MAo+
ICAjZGVmaW5lIERFRkFVTFRfVk9MVEFHRV9UT0xFUkFOQ0UJMgo+ICAKPiArI2RlZmluZSBpY2Nf
dW5pdHNfdG9faHooeCkgKCh4KSAqIDEwMDBVTCAvIDgpCj4gKwo+ICBzdHJ1Y3QgZXh5bm9zX2J1
cyB7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXY7Cj4gIAo+IEBAIC0zMSwxMiArMzQsMTcgQEAgc3Ry
dWN0IGV4eW5vc19idXMgewo+ICAJdW5zaWduZWQgaW50IGVkZXZfY291bnQ7Cj4gIAlzdHJ1Y3Qg
bXV0ZXggbG9jazsKPiAgCj4gKwl1bnNpZ25lZCBsb25nIG1pbl9mcmVxOwo+ICAJdW5zaWduZWQg
bG9uZyBjdXJyX2ZyZXE7Cj4gIAo+ICAJc3RydWN0IHJlZ3VsYXRvciAqcmVndWxhdG9yOwo+ICAJ
c3RydWN0IGNsayAqY2xrOwo+ICAJdW5zaWduZWQgaW50IHZvbHRhZ2VfdG9sZXJhbmNlOwo+ICAJ
dW5zaWduZWQgaW50IHJhdGlvOwo+ICsKPiArCS8qIE9uZSBwcm92aWRlciBwZXIgYnVzLCBvbmUg
bm9kZSBwZXIgcHJvdmlkZXIgKi8KPiArCXN0cnVjdCBpY2NfcHJvdmlkZXIgcHJvdmlkZXI7Cj4g
KwlzdHJ1Y3QgaWNjX25vZGUgKm5vZGU7Cj4gIH07Cj4gIAo+ICAvKgo+IEBAIC02MSw2ICs2OSwx
MyBAQCBleHlub3NfYnVzX29wc19lZGV2KGVuYWJsZV9lZGV2KTsKPiAgZXh5bm9zX2J1c19vcHNf
ZWRldihkaXNhYmxlX2VkZXYpOwo+ICBleHlub3NfYnVzX29wc19lZGV2KHNldF9ldmVudCk7Cj4g
IAo+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfbmV4dF9pZCh2b2lkKQo+ICt7Cj4gKwlzdGF0aWMg
aW50IGV4eW5vc19idXNfbm9kZV9pZDsKPiArCj4gKwlyZXR1cm4gZXh5bm9zX2J1c19ub2RlX2lk
Kys7CgpUaGlzIGRvZXMgbm90IGxvb2sgcm9idXN0LiBVc2UgSURSIGZvciBJRHMuIAoKPiArfQo+
ICsKPiAgc3RhdGljIGludCBleHlub3NfYnVzX2dldF9ldmVudChzdHJ1Y3QgZXh5bm9zX2J1cyAq
YnVzLAo+ICAJCQkJc3RydWN0IGRldmZyZXFfZXZlbnRfZGF0YSAqZWRhdGEpCj4gIHsKPiBAQCAt
OTgsNiArMTEzLDggQEAgc3RhdGljIGludCBleHlub3NfYnVzX3RhcmdldChzdHJ1Y3QgZGV2aWNl
ICpkZXYsIHVuc2lnbmVkIGxvbmcgKmZyZXEsIHUzMiBmbGFncykKPiAgCXVuc2lnbmVkIGxvbmcg
b2xkX2ZyZXEsIG5ld19mcmVxLCBuZXdfdm9sdCwgdG9sOwo+ICAJaW50IHJldCA9IDA7Cj4gIAo+
ICsJKmZyZXEgPSBtYXgoKmZyZXEsIGJ1cy0+bWluX2ZyZXEpOwo+ICsKPiAgCS8qIEdldCBuZXcg
b3BwLWJ1cyBpbnN0YW5jZSBhY2NvcmRpbmcgdG8gbmV3IGJ1cyBjbG9jayAqLwo+ICAJbmV3X29w
cCA9IGRldmZyZXFfcmVjb21tZW5kZWRfb3BwKGRldiwgZnJlcSwgZmxhZ3MpOwo+ICAJaWYgKElT
X0VSUihuZXdfb3BwKSkgewo+IEBAIC0yMDgsNiArMjI1LDggQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3Bhc3NpdmVfdGFyZ2V0KHN0cnVjdCBkZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyAqZnJl
cSwKPiAgCXVuc2lnbmVkIGxvbmcgb2xkX2ZyZXEsIG5ld19mcmVxOwo+ICAJaW50IHJldCA9IDA7
Cj4gIAo+ICsJKmZyZXEgPSBtYXgoKmZyZXEsIGJ1cy0+bWluX2ZyZXEpOwo+ICsKPiAgCS8qIEdl
dCBuZXcgb3BwLWJ1cyBpbnN0YW5jZSBhY2NvcmRpbmcgdG8gbmV3IGJ1cyBjbG9jayAqLwo+ICAJ
bmV3X29wcCA9IGRldmZyZXFfcmVjb21tZW5kZWRfb3BwKGRldiwgZnJlcSwgZmxhZ3MpOwo+ICAJ
aWYgKElTX0VSUihuZXdfb3BwKSkgewo+IEBAIC0yNTEsNiArMjcwLDM1IEBAIHN0YXRpYyB2b2lk
IGV4eW5vc19idXNfcGFzc2l2ZV9leGl0KHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCWNsa19kaXNh
YmxlX3VucHJlcGFyZShidXMtPmNsayk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQgZXh5bm9zX2J1
c19pY2Nfc2V0KHN0cnVjdCBpY2Nfbm9kZSAqc3JjLCBzdHJ1Y3QgaWNjX25vZGUgKmRzdCkKPiAr
ewo+ICsJc3RydWN0IGV4eW5vc19idXMgKnNyY19idXMgPSBzcmMtPmRhdGEsICpkc3RfYnVzID0g
ZHN0LT5kYXRhOwo+ICsKPiArCXNyY19idXMtPm1pbl9mcmVxID0gaWNjX3VuaXRzX3RvX2h6KHNy
Yy0+cGVha19idyk7Cj4gKwlkc3RfYnVzLT5taW5fZnJlcSA9IGljY191bml0c190b19oeihkc3Qt
PnBlYWtfYncpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGV4eW5v
c19idXNfaWNjX2FnZ3JlZ2F0ZShzdHJ1Y3QgaWNjX25vZGUgKm5vZGUsIHUzMiBhdmdfYncsCj4g
KwkJCQkgICAgdTMyIHBlYWtfYncsIHUzMiAqYWdnX2F2ZywgdTMyICphZ2dfcGVhaykKPiArewo+
ICsJKmFnZ19wZWFrID0gKmFnZ19hdmcgPSBwZWFrX2J3Owo+ICsKPiArCXJldHVybiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGljY19ub2RlICpleHlub3NfYnVzX2ljY194bGF0ZShzdHJ1
Y3Qgb2ZfcGhhbmRsZV9hcmdzICpzcGVjLAo+ICsJCQkJCSAgICAgdm9pZCAqZGF0YSkKPiArewo+
ICsJc3RydWN0IGV4eW5vc19idXMgKmJ1cyA9IGRhdGE7Cj4gKwo+ICsJaWYgKHNwZWMtPm5wICE9
IGJ1cy0+ZGV2LT5vZl9ub2RlKQo+ICsJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICsKPiAr
CXJldHVybiBidXMtPm5vZGU7Cj4gK30KPiArCj4gIHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wYXJl
bnRfcGFyc2Vfb2Yoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAgCQkJCQlzdHJ1Y3QgZXh5bm9z
X2J1cyAqYnVzKQo+ICB7Cj4gQEAgLTQ2OSw2ICs1MTcsOTUgQEAgc3RhdGljIGludCBleHlub3Nf
YnVzX3Byb2ZpbGVfaW5pdF9wYXNzaXZlKHN0cnVjdCBleHlub3NfYnVzICpidXMsCj4gIAlyZXR1
cm4gcmV0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgaW50IGV4eW5vc19idXNfaWNjX2Nvbm5lY3Qoc3Ry
dWN0IGV4eW5vc19idXMgKmJ1cykKPiArewo+ICsJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGJ1
cy0+ZGV2LT5vZl9ub2RlOwo+ICsJc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+ICsJ
c3RydWN0IGljY19ub2RlICpwYXJlbnRfbm9kZSA9IE5VTEw7Cj4gKwlzdHJ1Y3Qgb2ZfcGhhbmRs
ZV9hcmdzIGFyZ3M7Cj4gKwlpbnQgcmV0ID0gMDsKPiArCj4gKwlwYXJlbnRfZGV2ZnJlcSA9IGRl
dmZyZXFfZ2V0X2RldmZyZXFfYnlfcGhhbmRsZShidXMtPmRldiwgMCk7Cj4gKwlpZiAoIUlTX0VS
UihwYXJlbnRfZGV2ZnJlcSkpIHsKPiArCQlzdHJ1Y3QgZXh5bm9zX2J1cyAqcGFyZW50X2J1czsK
CldoYXQgaWYgc29tZW9uZSB1bmJpbmRzIHRoaXMgcGFyZW50IGRldmZyZXE/IEkgZ3Vlc3MgZXZl
cnl0aGluZyBpbgpkZXZmcmVxIHN0YXJ0cyBleHBsb2RpbmcuLi4gaG93ZXZlciBpdCdzIG5vdCB0
aGUgcHJvYmxlbSBvZiB0aGlzIHBhdGNoLgoKRG8geW91IGFsc28gbmVlZCBzdXNwZW5kL3Jlc3Vt
ZSBvcmRlciAoZGV2aWNlIGxpbmtzKT8gSSBndWVzcyB0aGUgb3RoZXIKc2lkZSwgZS5nLiAgbWl4
ZXIsIHNob3VsZCByZXN1bWUgYmVmb3JlIHRoZSBidXM/Cgo+ICsKPiArCQlwYXJlbnRfYnVzID0g
ZGV2X2dldF9kcnZkYXRhKHBhcmVudF9kZXZmcmVxLT5kZXYucGFyZW50KTsKPiArCQlwYXJlbnRf
bm9kZSA9IHBhcmVudF9idXMtPm5vZGU7Cj4gKwl9IGVsc2Ugewo+ICsJCS8qIExvb2sgZm9yIHBh
cmVudCBpbiBEVCAqLwo+ICsJCWludCBudW0gPSBvZl9jb3VudF9waGFuZGxlX3dpdGhfYXJncyhu
cCwgInBhcmVudCIsCj4gKwkJCQkJCSAgICAgIiNpbnRlcmNvbm5lY3QtY2VsbHMiKTsKPiArCQlp
ZiAobnVtICE9IDEpCgpZb3Ugd2lsbCByZXR1cm4gaGVyZSAwIGJ1dCBpc24ndCBpdCBhbiBlcnJv
cj8KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
