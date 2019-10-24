Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE16E2C2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 10:29:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmGW69u7+80RtmqRN77B2hwkbt36BeYWHn66VVW0Xkc=; b=VZeq7vPDNDiT5j
	sdlc3YZok9TS0O2rL0UhsytS4mvJCv9N3ZqYFtIEOze//3zih3M7EkjiMqFkagj/r5yFL8l6Z9F10
	TmqcI07wt9GVRb37idqJGbm99TfGmlHq8zEq090rW+HZPVRTtq31ANDhlGIhfoybUdUDT9paiYhIq
	EN2XIGS9BiWsn4LlD64NoIocfHONzWsMoixohY7WxXnch2Lgz91t2oOHsfzKmB/NYfV8iz2ouoPJh
	WRt9PODY+42Gfmflx/Ri+/sxlVuba9feGY4VormraH9Ymkr3904TTtEUE7VuMAxINTTb0ruszG0Mz
	nZvWj3mKHI3WIy2XS2Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNYV6-0007Vj-6i; Thu, 24 Oct 2019 08:29:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNYUu-00076r-7V
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 08:29:34 +0000
Received: by mail-wm1-x343.google.com with SMTP id g7so1745906wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 01:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=G4vdb56f6clb5k1zxUC/hpMvO/EV60ACJWqtpC79nFU=;
 b=MWFTxBFoF/A1/WoBHVj4CbXYa/Pfi+Fu/HBTS1OD78S8XdVhAfAv2FPoim6z/HL0fJ
 bAsjZ+nQU7xuGOSLAMS2cU1WpogE6lpqKrhD0fwpRUWBooxdm7oatdnbiFT1vKMQRuXI
 YUesDSYrlrXY7rtIkZZGFVWVQMmXWOoDkYjmG/FlPyxrTaFiOsrgcX/deoqQpQrz8WC9
 eb7bHMF072EjgrW7DtfWSSoYwWX/Okev8BmdNZBQGxbi/4F2jWxN2L1lgUa8PMMJyWd2
 9WdYf7WE46xuvVtBI4kSOqH1p5U/DpO+hajtJZ1AcsTM2xKtX35hm8MaY5eHyUBhdkRQ
 8xLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=G4vdb56f6clb5k1zxUC/hpMvO/EV60ACJWqtpC79nFU=;
 b=WWnOkVAYcLbKpUqczE5XR1tf87P9DDQkwnhZU/uz/p1QQcwFBvDdRhd5a94jb0KCwV
 dY1g+qh3i02V2MNq3P6SvN23HAYxy3FnDZFDyvD0x8bsnQdRjXCRirwOAcJa9hu2Ii90
 /7QKyAcjAACMQ+lEXs8nAoYyzB2yYwQauNhzj+3kBegYaNLecOVHSbKK9M2WSSvxlpgE
 lSnPb3BcMM7VnZLHc5WUm2dwCaPPWpAZdePq5clKrlEtKxFUQL3dcq0ZVLvi1y1CYy8G
 oNBaq8PzG/7LqSrKt0K0Ee61JjHtGgCPssfR2ateuhqCBLO4DDIapw2ldnvfL4njo7Le
 e7Fw==
X-Gm-Message-State: APjAAAVQS/QnpQdrmq+Ia2RIejDSLIpREOLdhrKpMlxj9b5aKjNHuJ1g
 OnP9qg0KkYIqOPK30UKIZdgYHA==
X-Google-Smtp-Source: APXvYqw2zO/n8ymN3AuSXm7TXS6NYxgbrnPVMDiRr7AlWcfRIHaJr278vr6HY3WfkjlqZz2KGKlL9A==
X-Received: by 2002:a7b:c049:: with SMTP id u9mr3667702wmc.12.1571905770490;
 Thu, 24 Oct 2019 01:29:30 -0700 (PDT)
Received: from dell ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id j63sm2931576wmj.46.2019.10.24.01.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 01:29:29 -0700 (PDT)
Date: Thu, 24 Oct 2019 09:29:28 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Gene Chen <gene.chen.richtek@gmail.com>
Subject: Re: [PATCH v4] mfd: mt6360: add pmic mt6360 driver
Message-ID: <20191024082928.GL15843@dell>
References: <1571749359-15752-1-git-send-email-gene.chen.richtek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571749359-15752-1-git-send-email-gene.chen.richtek@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_012932_302297_5BC91AFB 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyMiBPY3QgMjAxOSwgR2VuZSBDaGVuIHdyb3RlOgoKPiBGcm9tOiBHZW5lIENoZW4g
PGdlbmVfY2hlbkByaWNodGVrLmNvbT4KPiAKPiBBZGQgbWZkIGRyaXZlciBmb3IgbXQ2MzYwIHBt
aWMgY2hpcCBpbmNsdWRlCj4gQmF0dGVyeSBDaGFyZ2VyL1VTQl9QRC9GbGFzaCBMRUQvUkdCIExF
RC9MRE8vQnVjawo+IAo+IFNpZ25lZC1vZmYtYnk6IEdlbmUgQ2hlbiA8Z2VuZV9jaGVuQHJpY2h0
ZWsuY29tCj4gLS0tCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgfCAgMTIg
Kwo+ICBkcml2ZXJzL21mZC9NYWtlZmlsZSAgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVy
cy9tZmQvbXQ2MzYwLWNvcmUuYyAgICAgICAgICB8IDQ1NyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrCj4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC1wcml2YXRlLmggfCAy
NzkgKysrKysrKysrKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaCAg
ICAgICAgIHwgIDMyICsrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDc4MSBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL21mZC9tdDYzNjAtY29yZS5jCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAtcHJpdmF0ZS5oCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L21mZC9tdDYzNjAuaAo+IAo+IGNoYW5nZWxvZ3MgYmV0
d2VlbiB2MSAmIHYyCj4gLSBpbmNsdWRlIG1pc3NpbmcgaGVhZGVyIGZpbGUKPiAKPiBjaGFuZ2Vs
b2dzIGJldHdlZW4gdjIgJiB2Mwo+IC0gYWRkIGNoYW5nZWxvZ3MKPiAKPiBjaGFuZ2Vsb2dzIGJl
dHdlZW4gdjMgJiB2NAo+IC0gZml4IEtjb25maWcgZGVzY3JpcHRpb24KPiAtIHJlcGxhY2UgbXQ2
MzYwX3BtdV9pbmZvIHdpdGggbXQ2MzYwX3BtdV9kYXRhCj4gLSByZXBsYWNlIHByb2JlIHdpdGgg
cHJvYmVfbmV3Cj4gLSByZW1vdmUgdW5uZWNlc3NhcnkgaXJxX2NoaXAgdmFyaWFibGUKPiAtIHJl
bW92ZSBhbm5vdGF0aW9uCj4gLSByZXBsYWNlIE1UNjM2MF9NRkRfQ0VMTCB3aXRoIE9GX01GRF9D
RUxMCgpbLi4uXQoKPiArLyogSVJRIGRlZmluaXRpb25zICovCj4gK3N0cnVjdCBtdDYzNjBfcG11
X2lycV9kZXNjIHsKPiArCWNvbnN0IGNoYXIgKm5hbWU7Cj4gKwlpcnFfaGFuZGxlcl90IGlycV9o
YW5kbGVyOwo+ICt9Owo+ICsKPiArI2RlZmluZSAgTVQ2MzYwX0RUX1ZBTFBST1AobmFtZSwgdHlw
ZSkgXAo+ICsJCQl7I25hbWUsIG9mZnNldG9mKHR5cGUsIG5hbWUpfQo+ICsKPiArc3RydWN0IG10
NjM2MF92YWxfcHJvcCB7Cj4gKwljb25zdCBjaGFyICpuYW1lOwo+ICsJc2l6ZV90IG9mZnNldDsK
PiArfTsKPiArCj4gK3N0YXRpYyBpbmxpbmUgdm9pZCBtdDYzNjBfZHRfcGFyc2VyX2hlbHBlcihz
dHJ1Y3QgZGV2aWNlX25vZGUgKm5wLCB2b2lkICpkYXRhLAo+ICsJCQkJCSAgIGNvbnN0IHN0cnVj
dCBtdDYzNjBfdmFsX3Byb3AgKnByb3BzLAo+ICsJCQkJCSAgIGludCBwcm9wX2NudCkKPiArewo+
ICsJaW50IGk7Cj4gKwo+ICsJZm9yIChpID0gMDsgaSA8IHByb3BfY250OyBpKyspIHsKPiArCQlp
ZiAodW5saWtlbHkoIXByb3BzW2ldLm5hbWUpKQo+ICsJCQljb250aW51ZTsKPiArCQlvZl9wcm9w
ZXJ0eV9yZWFkX3UzMihucCwgcHJvcHNbaV0ubmFtZSwgZGF0YSArIHByb3BzW2ldLm9mZnNldCk7
Cj4gKwl9Cj4gK30KPiArCj4gKyNkZWZpbmUgTVQ2MzYwX1BEQVRBX1ZBTFBST1AobmFtZSwgdHlw
ZSwgcmVnLCBzaGlmdCwgbWFzaywgZnVuYywgYmFzZSkgXAo+ICsJCQl7b2Zmc2V0b2YodHlwZSwg
bmFtZSksIHJlZywgc2hpZnQsIG1hc2ssIGZ1bmMsIGJhc2V9Cj4gKwo+ICtzdHJ1Y3QgbXQ2MzYw
X3BkYXRhX3Byb3Agewo+ICsJc2l6ZV90IG9mZnNldDsKPiArCXU4IHJlZzsKPiArCXU4IHNoaWZ0
Owo+ICsJdTggbWFzazsKPiArCXUzMiAoKnRyYW5zZm9ybSkodTMyIHZhbCk7Cj4gKwl1OCBiYXNl
Owo+ICt9Owo+ICsKPiArc3RhdGljIGlubGluZSBpbnQgbXQ2MzYwX3BkYXRhX2FwcGx5X2hlbHBl
cih2b2lkICpjb250ZXh0LCB2b2lkICpwZGF0YSwKPiArCQkJCQkgICBjb25zdCBzdHJ1Y3QgbXQ2
MzYwX3BkYXRhX3Byb3AgKnByb3AsCj4gKwkJCQkJICAgaW50IHByb3BfY250KQo+ICt7Cj4gKwlp
bnQgaSwgcmV0Owo+ICsJdTMyIHZhbDsKPiArCj4gKwlmb3IgKGkgPSAwOyBpIDwgcHJvcF9jbnQ7
IGkrKykgewo+ICsJCXZhbCA9ICoodTMyICopKHBkYXRhICsgcHJvcFtpXS5vZmZzZXQpOwo+ICsJ
CWlmIChwcm9wW2ldLnRyYW5zZm9ybSkKPiArCQkJdmFsID0gcHJvcFtpXS50cmFuc2Zvcm0odmFs
KTsKPiArCQl2YWwgKz0gcHJvcFtpXS5iYXNlOwo+ICsJCXJldCA9IHJlZ21hcF91cGRhdGVfYml0
cyhjb250ZXh0LAo+ICsJCQkgICAgIHByb3BbaV0ucmVnLCBwcm9wW2ldLm1hc2ssIHZhbCA8PCBw
cm9wW2ldLnNoaWZ0KTsKPiArCQlpZiAocmV0IDwgMCkKPiArCQkJcmV0dXJuIHJldDsKPiArCX0K
PiArCXJldHVybiAwOwo+ICt9CgpXaGVyZSBhcmUgdGhlc2UgaGVscGVycyB1c2VkPwoKQXJlIHRo
ZXkgZ2VuZXJpYz8KCldoeSBhcmUgdGhleSBoZWxwZnVsIHRvIHlvdSwgYnV0IG5vdCBoZWxwZnVs
IHRvIGFueW9uZSBlbHNlPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2Vydmlj
ZXMgVGVjaG5pY2FsIExlYWQKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9y
IEFSTSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
