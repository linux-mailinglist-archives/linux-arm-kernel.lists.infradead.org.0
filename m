Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 858881E90B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 13:08:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=izfJ8BKDqC7nkXmoZTr7zq7vYaQnIyCQSE+3pK4421I=; b=C36c3e6zR38soA
	IpDnHZeT/Qx9fTIyjP/FnjdDVrrNVXKy2wABMST6bWEYBgS1ngUIehghaiwvuunnEM49cuRz+HZlx
	rJop/Q4XbNvyfkl7SVATXm7szCfzxu2Ra21LEF0P+w0ZisatiQFR7E6IEmAtvqFrUOANBmP6o5d8o
	biQwSwH3XnKUUccOzK3YlttFOde9Wax3RU6H55/IxvbEKki3nfdUkWz0vYTbfTvpoGshAcSvP+SMu
	scLEkCQRmGnqtrUzXTglttsA/acBtJl0SW6Rcf8uzlGc0YA/5RZ0rZwqNwlJ7i3p8z+FP4fqHPSj0
	mYDf/FTXMZA9t4DRqZKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezLR-0005Qz-Ml; Sat, 30 May 2020 11:08:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jezLH-0005Q0-5y; Sat, 30 May 2020 11:07:57 +0000
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF486207F9;
 Sat, 30 May 2020 11:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590836872;
 bh=MMpNizw22T/SVrKyvdrwVbDY0nEpfHMXgU4xhOyblP4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=V/NnWS5uJtIwXapGHqiQtVBIUyndW8uUHGkbkLVHyvpqL9nFEpxpt6tAp6Sp765LH
 XOpceGxVanLRRfwmuvYfR+SqxAihMGxx9itb4cjP2ej0PuvAN5plBuqPQJZlhkA0RS
 8pVb1zZUQKFthklELghhpg8yBvdlSGPWtbumMBbM=
Received: by mail-ej1-f48.google.com with SMTP id o15so4583937ejm.12;
 Sat, 30 May 2020 04:07:51 -0700 (PDT)
X-Gm-Message-State: AOAM530kASeTDir/jooLv0tD5CPIhdhj7bLamyfSbjAHSAecl1AiX504
 OB3Ut1Mv4T1BEy5MbjOaybO698ueeLkhpOEslQ==
X-Google-Smtp-Source: ABdhPJwbqALGtjsXoVQ6sMmzaJdwDjP1dsTnmjtc176Tkfx/IQ4lidJGHxxHXWQK87s0mfK+KUzRUyvMEMSZwdSp0ng=
X-Received: by 2002:a17:906:d111:: with SMTP id
 b17mr2209578ejz.267.1590836870150; 
 Sat, 30 May 2020 04:07:50 -0700 (PDT)
MIME-Version: 1.0
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
 <1590826218-23653-11-git-send-email-yong.wu@mediatek.com>
In-Reply-To: <1590826218-23653-11-git-send-email-yong.wu@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sat, 30 May 2020 19:07:39 +0800
X-Gmail-Original-Message-ID: <CAAOTY__ZvG7UbbSsvv0H8ZKBovqTtHaq4+oiGNZrgF-6eKmi2g@mail.gmail.com>
Message-ID: <CAAOTY__ZvG7UbbSsvv0H8ZKBovqTtHaq4+oiGNZrgF-6eKmi2g@mail.gmail.com>
Subject: Re: [PATCH v4 10/17] drm/mediatek: Add pm runtime support for ovl and
 rdma
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_040755_280324_93DC494A 
X-CRM114-Status: GOOD (  21.62  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, Joerg Roedel <joro@8bytes.org>,
 Evan Green <evgreen@chromium.org>, eizan@chromium.org,
 Matthias Kaehlcke <mka@chromium.org>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, anan.sun@mediatek.com,
 acourbot@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, chao.hao@mediatek.com,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFlvbmc6CgpZb25nIFd1IDx5b25nLnd1QG1lZGlhdGVrLmNvbT4g5pa8IDIwMjDlubQ15pyI
MzDml6Ug6YCx5YWtIOS4i+WNiDQ6Mjblr6vpgZPvvJoKPgo+IEZyb206IFlvbmdxaWFuZyBOaXUg
PHlvbmdxaWFuZy5uaXVAbWVkaWF0ZWsuY29tPgo+Cj4gRGlzcGxheSB1c2UgdGhlIGRpc3BzeXMg
ZGV2aWNlIHRvIGNhbGwgcG1fcnVtdGltZV9nZXRfc3luYyBiZWZvcmUuCj4gVGhpcyBwYXRjaCBh
ZGQgcG1fcnVudGltZV94eCB3aXRoIG92bCBhbmQgcmRtYSBkZXZpY2Ugd2hvc2Ugbm9kZXMgaGFz
Cj4gImlvbW11cyIgcHJvcGVydHksIHRoZW4gZGlzcGxheSBjb3VsZCBoZWxwIHBtX3J1bnRpbWVf
Z2V0IGZvciBzbWkgdmlhCj4gb3ZsIG9yIHJkbWEgZGV2aWNlLgo+Cj4gVGhpcyBpcyBhIHByZXBh
cmluZyBwYXRjaCB0aGF0IHNtaSBjbGVhbmluZyB1cCAibWVkaWF0ZWssbGFyYiIuCj4KCkFja2Vk
LWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVAa2VybmVsLm9yZz4KCj4gQ0M6IENLIEh1
IDxjay5odUBtZWRpYXRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW9uZ3FpYW5nIE5pdSA8eW9u
Z3FpYW5nLm5pdUBtZWRpYXRlay5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW9uZyBXdSA8eW9uZy53
dUBtZWRpYXRlay5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlz
cF9vdmwuYyAgICAgfCAgOSArKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kaXNwX3JkbWEuYyAgICB8ICA5ICsrKysrKysrLQo+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0
ZWsvbXRrX2RybV9jcnRjLmMgICAgIHwgMTIgKysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMgfCAgMiArKwo+ICBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5oIHwgIDEgKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDMw
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kaXNwX292bC5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19kaXNwX292bC5jCj4gaW5kZXggODkxZDgwYy4uMTdjOWJhYSAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3Bfb3ZsLmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3Bfb3ZsLmMKPiBAQCAtMTEsNiArMTEsNyBAQAo+ICAjaW5j
bHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9vZl9pcnEuaD4KPiAg
I2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvcG1f
cnVudGltZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvc29jL21lZGlhdGVrL210ay1jbWRxLmg+Cj4K
PiAgI2luY2x1ZGUgIm10a19kcm1fY3J0Yy5oIgo+IEBAIC0zOTksOSArNDAwLDEzIEBAIHN0YXRp
YyBpbnQgbXRrX2Rpc3Bfb3ZsX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4g
ICAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gICAgICAgICB9Cj4KPiArICAgICAgIHBtX3J1
bnRpbWVfZW5hYmxlKGRldik7Cj4gKwo+ICAgICAgICAgcmV0ID0gY29tcG9uZW50X2FkZChkZXYs
ICZtdGtfZGlzcF9vdmxfY29tcG9uZW50X29wcyk7Cj4gLSAgICAgICBpZiAocmV0KQo+ICsgICAg
ICAgaWYgKHJldCkgewo+ICsgICAgICAgICAgICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsK
PiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYsICJGYWlsZWQgdG8gYWRkIGNvbXBvbmVudDog
JWRcbiIsIHJldCk7Cj4gKyAgICAgICB9Cj4KPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPiBA
QCAtNDEwLDYgKzQxNSw4IEBAIHN0YXRpYyBpbnQgbXRrX2Rpc3Bfb3ZsX3JlbW92ZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICB7Cj4gICAgICAgICBjb21wb25lbnRfZGVsKCZwZGV2
LT5kZXYsICZtdGtfZGlzcF9vdmxfY29tcG9uZW50X29wcyk7Cj4KPiArICAgICAgIHBtX3J1bnRp
bWVfZGlzYWJsZSgmcGRldi0+ZGV2KTsKPiArCj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZGlzcF9yZG1hLmMgYi9k
cml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3BfcmRtYS5jCj4gaW5kZXggMGNiODQ4ZC4u
NWVhOGZiNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3Bf
cmRtYS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kaXNwX3JkbWEuYwo+
IEBAIC05LDYgKzksNyBAQAo+ICAjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9vZl9pcnEuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5o
Pgo+ICsjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+ICAjaW5jbHVkZSA8bGludXgvc29j
L21lZGlhdGVrL210ay1jbWRxLmg+Cj4KPiAgI2luY2x1ZGUgIm10a19kcm1fY3J0Yy5oIgo+IEBA
IC0zMTMsOSArMzE0LDEzIEBAIHN0YXRpYyBpbnQgbXRrX2Rpc3BfcmRtYV9wcm9iZShzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Cj4gICAgICAgICBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShw
ZGV2LCBwcml2KTsKPgo+ICsgICAgICAgcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiArCj4gICAg
ICAgICByZXQgPSBjb21wb25lbnRfYWRkKGRldiwgJm10a19kaXNwX3JkbWFfY29tcG9uZW50X29w
cyk7Cj4gLSAgICAgICBpZiAocmV0KQo+ICsgICAgICAgaWYgKHJldCkgewo+ICsgICAgICAgICAg
ICAgICBwbV9ydW50aW1lX2Rpc2FibGUoZGV2KTsKPiAgICAgICAgICAgICAgICAgZGV2X2Vycihk
ZXYsICJGYWlsZWQgdG8gYWRkIGNvbXBvbmVudDogJWRcbiIsIHJldCk7Cj4gKyAgICAgICB9Cj4K
PiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPiBAQCAtMzI0LDYgKzMyOSw4IEBAIHN0YXRpYyBp
bnQgbXRrX2Rpc3BfcmRtYV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAg
ewo+ICAgICAgICAgY29tcG9uZW50X2RlbCgmcGRldi0+ZGV2LCAmbXRrX2Rpc3BfcmRtYV9jb21w
b25lbnRfb3BzKTsKPgo+ICsgICAgICAgcG1fcnVudGltZV9kaXNhYmxlKCZwZGV2LT5kZXYpOwo+
ICsKPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kcm1fY3J0Yy5jIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fY3J0Yy5jCj4gaW5kZXggZmU4NWU0OC4uYzliYzg0NCAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9jcnRjLmMKPiBAQCAtNTM4LDkgKzUzOCwxNSBAQCBzdGF0aWMg
dm9pZCBtdGtfZHJtX2NydGNfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4g
ICAgICAgICAgICAgICAgIHJldHVybjsKPiAgICAgICAgIH0KPgo+ICsgICAgICAgcmV0ID0gcG1f
cnVudGltZV9nZXRfc3luYyhjb21wLT5kZXYpOwo+ICsgICAgICAgaWYgKHJldCA8IDApCj4gKyAg
ICAgICAgICAgICAgIERSTV9ERVZfRVJST1IoY29tcC0+ZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBw
b3dlciBkb21haW46ICVkXG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldCk7
Cj4gKwo+ICAgICAgICAgcmV0ID0gbXRrX2NydGNfZGRwX2h3X2luaXQobXRrX2NydGMpOwo+ICAg
ICAgICAgaWYgKHJldCkgewo+ICAgICAgICAgICAgICAgICBtdGtfc21pX2xhcmJfcHV0KGNvbXAt
PmxhcmJfZGV2KTsKPiArICAgICAgICAgICAgICAgcG1fcnVudGltZV9wdXQoY29tcC0+ZGV2KTsK
PiAgICAgICAgICAgICAgICAgcmV0dXJuOwo+ICAgICAgICAgfQo+Cj4gQEAgLTU1Myw3ICs1NTks
NyBAQCBzdGF0aWMgdm9pZCBtdGtfZHJtX2NydGNfYXRvbWljX2Rpc2FibGUoc3RydWN0IGRybV9j
cnRjICpjcnRjLAo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgbXRrX2RybV9jcnRjICptdGtfY3J0YyA9
IHRvX210a19jcnRjKGNydGMpOwo+ICAgICAgICAgc3RydWN0IG10a19kZHBfY29tcCAqY29tcCA9
IG10a19jcnRjLT5kZHBfY29tcFswXTsKPiAtICAgICAgIGludCBpOwo+ICsgICAgICAgaW50IGks
IHJldDsKPgo+ICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiJXMgJWRcbiIsIF9fZnVuY19fLCBj
cnRjLT5iYXNlLmlkKTsKPiAgICAgICAgIGlmICghbXRrX2NydGMtPmVuYWJsZWQpCj4gQEAgLTU3
Nyw2ICs1ODMsMTAgQEAgc3RhdGljIHZvaWQgbXRrX2RybV9jcnRjX2F0b21pY19kaXNhYmxlKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKPiAgICAgICAgIGRybV9jcnRjX3ZibGFua19vZmYoY3J0Yyk7
Cj4gICAgICAgICBtdGtfY3J0Y19kZHBfaHdfZmluaShtdGtfY3J0Yyk7Cj4gICAgICAgICBtdGtf
c21pX2xhcmJfcHV0KGNvbXAtPmxhcmJfZGV2KTsKPiArICAgICAgIHJldCA9IHBtX3J1bnRpbWVf
cHV0KGNvbXAtPmRldik7Cj4gKyAgICAgICBpZiAocmV0IDwgMCkKPiArICAgICAgICAgICAgICAg
RFJNX0RFVl9FUlJPUihjb21wLT5kZXYsICJGYWlsZWQgdG8gZGlzYWJsZSBwb3dlciBkb21haW46
ICVkXG4iLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHJldCk7Cj4KPiAgICAgICAg
IG10a19jcnRjLT5lbmFibGVkID0gZmFsc2U7Cj4gIH0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL21lZGlhdGVrL210a19kcm1fZGRwX2NvbXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2RkcF9jb21wLmMKPiBpbmRleCA1N2M4OGRlLi41OTMwMjdhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21wLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5jCj4gQEAgLTQ5Myw2
ICs0OTMsOCBAQCBpbnQgbXRrX2RkcF9jb21wX2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZGV2aWNlX25vZGUgKm5vZGUsCj4KPiAgICAgICAgIGNvbXAtPmxhcmJfZGV2ID0gJmxhcmJf
cGRldi0+ZGV2Owo+Cj4gKyAgICAgICBjb21wLT5kZXYgPSBkZXY7Cj4gKwo+ICAjaWYgSVNfUkVB
Q0hBQkxFKENPTkZJR19NVEtfQ01EUSkKPiAgICAgICAgIGlmIChvZl9hZGRyZXNzX3RvX3Jlc291
cmNlKG5vZGUsIDAsICZyZXMpICE9IDApIHsKPiAgICAgICAgICAgICAgICAgZGV2X2VycihkZXYs
ICJNaXNzaW5nIHJlZyBpbiAlcyBub2RlXG4iLCBub2RlLT5mdWxsX25hbWUpOwo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9kZHBfY29tcC5oIGIvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZGRwX2NvbXAuaAo+IGluZGV4IGRlYmUzNjMuLjRj
MDYzZTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZGRw
X2NvbXAuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2RkcF9jb21w
LmgKPiBAQCAtOTksNiArOTksNyBAQCBzdHJ1Y3QgbXRrX2RkcF9jb21wIHsKPiAgICAgICAgIHZv
aWQgX19pb21lbSAqcmVnczsKPiAgICAgICAgIGludCBpcnE7Cj4gICAgICAgICBzdHJ1Y3QgZGV2
aWNlICpsYXJiX2RldjsKPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldjsKPiAgICAgICAgIGVu
dW0gbXRrX2RkcF9jb21wX2lkIGlkOwo+ICAgICAgICAgY29uc3Qgc3RydWN0IG10a19kZHBfY29t
cF9mdW5jcyAqZnVuY3M7Cj4gICAgICAgICByZXNvdXJjZV9zaXplX3QgcmVnc19wYTsKPiAtLQo+
IDEuOS4xCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
PiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1tZWRpYXRlawoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
