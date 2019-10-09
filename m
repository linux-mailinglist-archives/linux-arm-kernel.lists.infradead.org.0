Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA19D141D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 18:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBFM9n2BqRu6uk52RWaQhSWuQPYKce1bAoQzeMxcGRE=; b=pEKk2s3iteXOwF
	szsNmKVeWT9QheoBzaXLkvVHYDecl63YgLRE0FmukQ6yMDwrZCByPK0b72WvQOcLi9YwIifVingjo
	6SGA7yxiZHzODrkMvpaIZ6DW4nkzAIIbsDgnQhS7PAPRdn98HzJg25c0pgnvr0OY1V/Z1x6EdFM20
	rqoPnhFcUDWw9UFySd2kL9zkOmO31CwlTNF1CSZZjqmSmnANb9UYaNB0LjlZFuHgiVMzmzpYm12Oq
	tZP4HRdrskZyIwTkRuNXAPaqB9PvhPGTdx3a4UMCyVah+6c79CHQX7dmnRPsYgHrDzqsvaRl8WgQL
	LAY9mLoUM4LYBm6aO70A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIEuu-0005wK-Us; Wed, 09 Oct 2019 16:34:24 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIEue-0005mU-Dd
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 16:34:10 +0000
Received: by mail-ot1-x342.google.com with SMTP id o44so2250000ota.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 09 Oct 2019 09:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Xpa5x5FtEx57kIrxbIEmX+YdyK/X1i/zUyZcWd2Z1Po=;
 b=udHthLOLaFCuZr0AbyIkG5rTFL5xRUgC84odB2PUtgTFgyqOFvGidHi/ETcIqSGKd4
 /DYr7kF4p/u7LGePJbWwY2Iu/qTyoO7Ow5Iw00c3ZC3s44Zn1J6ItQ82p25nac4CxXjG
 k5G410ZoY40DFUXUqs3GgQY6lhbaYSxX9h6rRhwh5KUmi1ZIfuw1Ne12SkQ8nfIbdDPc
 hvj8gsAQuKZsiPr/iHOvHzwIjAx/PSutIdLn0z0NwCOuuWeRupaqejxdyL8af7nsyI3R
 oBzpCbGXSHhqD0PKUsPj8tE0tPSty3MKR9/byzG3ABLnP8uJt1FfN/73G8IC8yI4K7SN
 f9ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Xpa5x5FtEx57kIrxbIEmX+YdyK/X1i/zUyZcWd2Z1Po=;
 b=oj1mHqpryVLoF4G5PyFMifz9YHOZ8JZUV3WN0BQBcgBaAn15BhQrWiDJmjv1aJK1x9
 3BRshX7K2V6f2oyQzorqXxwUSIISVQVqiXNy+7+Iw7iA0ulqxS+W5Tz4ieiZYAsCvQPd
 6XJjj+E9vYjXRtC9wQBAHTHTTICsQS4pESDjMfvBGRthgkfT42NTPuvvZEzWbE+UkR/1
 u+L8AcvZL7n/NzVVlwQ8ehuEkdPfQOsI17TG1Px97VgZMI4WMr866td87cpVjWrOGQDD
 M2Yn72wZm5XbS2uyc9TSExaK7dlsjIcuuMiq5xwPH6EcqZnCPMVm+M0Yq3vuDfLCRNiF
 24JQ==
X-Gm-Message-State: APjAAAV+ORPQOOtmoyr/LDBUBTfIulD7MiSgIrwKqDPnUW4BvDvHgLxU
 BbsIe4qsjVnMNJ3079KCp8bXy+8GP1Hcq6yElrGcIQ==
X-Google-Smtp-Source: APXvYqxJohNE21WQBvPtj9t/5XJFgzN0/WlpuYOnA7Glsjddm3+nHq0LW7VLoKtNkRwKXJR896xW9Wj4qLAAYuvxuh4=
X-Received: by 2002:a9d:7dd6:: with SMTP id k22mr3693082otn.256.1570638845498; 
 Wed, 09 Oct 2019 09:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <20191009083021.33529-1-hui.song_1@nxp.com>
In-Reply-To: <20191009083021.33529-1-hui.song_1@nxp.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 9 Oct 2019 18:33:54 +0200
Message-ID: <CAMpxmJVUkkiywMOQ6i_izu+8LQD0S_fpd_iuBz4yGceSrs5beg@mail.gmail.com>
Subject: Re: [PATCH v6] gpio/mpc8xxx: change irq handler from chained to normal
To: Hui Song <hui.song_1@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_093408_537888_8F5A350A 
X-CRM114-Status: GOOD (  21.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, linux-gpio <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xZtyLiwgOSBwYcW6IDIwMTkgbyAxMDo0MSBIdWkgU29uZyA8aHVpLnNvbmdfMUBueHAuY29tPiBu
YXBpc2HFgihhKToKPgo+IEZyb206IFNvbmcgSHVpIDxodWkuc29uZ18xQG54cC5jb20+Cj4KPiBN
b3JlIHRoYW4gb25lIGdwaW8gY29udHJvbGxlcnMgY2FuIHNoYXJlIG9uZSBpbnRlcnJ1cHQsIGNo
YW5nZSB0aGUKPiBkcml2ZXIgdG8gcmVxdWVzdCBzaGFyZWQgaXJxLgo+Cj4gV2hpbGUgdGhpcyB3
aWxsIHdvcmssIGl0IHdpbGwgbWVzcyB1cCB1c2Vyc3BhY2UgYWNjb3VudGluZyBvZiB0aGUgbnVt
YmVyCj4gb2YgaW50ZXJydXB0cyBwZXIgc2Vjb25kIGluIHRvb2xzIHN1Y2ggYXMgdm1zdGF0LiAg
VGhlIHJlYXNvbiBpcyB0aGF0Cj4gZm9yIGV2ZXJ5IEdQSU8gaW50ZXJydXB0LCAvcHJvYy9pbnRl
cnJ1cHRzIHJlY29yZHMgdGhlIGNvdW50IGFnYWluc3QgR0lDCj4gaW50ZXJydXB0IDY4IG9yIDY5
LCBhcyB3ZWxsIGFzIHRoZSBHUElPIGl0c2VsZi4gIFNvLCBmb3IgZXZlcnkgR1BJTwo+IGludGVy
cnVwdCwgdGhlIHRvdGFsIG51bWJlciBvZiBpbnRlcnJ1cHRzIHRoYXQgdGhlIHN5c3RlbSBoYXMg
c2Vlbgo+IGluY3JlbWVudHMgYnkgdHdvCj4KPiBTaWduZWQtb2ZmLWJ5OiBMYXVyZW50aXUgVHVk
b3IgPExhdXJlbnRpdS5UdWRvckBueHAuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFsZXggTWFyZ2lu
ZWFuIDxhbGV4YW5kcnUubWFyZ2luZWFuQG54cC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU29uZyBI
dWkgPGh1aS5zb25nXzFAbnhwLmNvbT4KPiAtLS0KPiAgQ2hhbmdlcyBpbiB2NjoKPiAgICAgICAg
IC0gY2hhbmdlIHJlcXVlc3RfaXJxIHRvIGRldm1fcmVxdWVzdF9pcnEgYW5kIGFkZCBjb21taXQg
bWVzc2FnZS4KPiAgQ2hhbmdlcyBpbiB2NToKPiAgICAgICAgIC0gYWRkIHRyYXZlcnNlIGV2ZXJ5
IGJpdCBmdW5jdGlvbi4KPiAgQ2hhbmdlcyBpbiB2NDoKPiAgICAgICAgIC0gY29udmVydCAncHJf
ZXJyJyB0byAnZGV2X2VycicuCj4gIENoYW5nZXMgaW4gdjM6Cj4gICAgICAgICAtIHVwZGF0ZSB0
aGUgcGF0Y2ggZGVzY3JpcHRpb24uCj4gIENoYW5nZXMgaW4gdjI6Cj4gICAgICAgICAtIGRlbGV0
ZSB0aGUgY29tcGF0aWJsZSBvZiBsczEwODhhLgo+Cj4gIGRyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4
eHguYyB8IDMxICsrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIwIGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLW1wYzh4eHguYwo+
IGluZGV4IDE2YTQ3ZGUuLmYwYmUyODQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8t
bXBjOHh4eC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tbXBjOHh4eC5jCj4gQEAgLTIyLDYg
KzIyLDcgQEAKPiAgI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICAjaW5jbHVkZSA8bGludXgvZ3Bp
by9kcml2ZXIuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ICsjaW5jbHVkZSA8bGlu
dXgvaW50ZXJydXB0Lmg+Cj4KPiAgI2RlZmluZSBNUEM4WFhYX0dQSU9fUElOUyAgICAgIDMyCj4K
PiBAQCAtMTI3LDIwICsxMjgsMjAgQEAgc3RhdGljIGludCBtcGM4eHh4X2dwaW9fdG9faXJxKHN0
cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBvZmZzZXQpCj4gICAgICAgICAgICAgICAgIHJl
dHVybiAtRU5YSU87Cj4gIH0KPgo+IC1zdGF0aWMgdm9pZCBtcGM4eHh4X2dwaW9faXJxX2Nhc2Nh
ZGUoc3RydWN0IGlycV9kZXNjICpkZXNjKQo+ICtzdGF0aWMgaXJxcmV0dXJuX3QgbXBjOHh4eF9n
cGlvX2lycV9jYXNjYWRlKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gIHsKPiAtICAgICAgIHN0cnVj
dCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9nYyA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2Rh
dGEoZGVzYyk7Cj4gLSAgICAgICBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRf
Y2hpcChkZXNjKTsKPiArICAgICAgIHN0cnVjdCBtcGM4eHh4X2dwaW9fY2hpcCAqbXBjOHh4eF9n
YyA9IGRhdGE7Cj4gICAgICAgICBzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZtcGM4eHh4X2djLT5n
YzsKPiAgICAgICAgIHVuc2lnbmVkIGludCBtYXNrOwo+ICsgICAgICAgaW50IGk7Cj4KPiAgICAg
ICAgIG1hc2sgPSBnYy0+cmVhZF9yZWcobXBjOHh4eF9nYy0+cmVncyArIEdQSU9fSUVSKQo+ICAg
ICAgICAgICAgICAgICAmIGdjLT5yZWFkX3JlZyhtcGM4eHh4X2djLT5yZWdzICsgR1BJT19JTVIp
Owo+IC0gICAgICAgaWYgKG1hc2spCj4gKyAgICAgICBmb3JfZWFjaF9zZXRfYml0KGksICZtYXNr
LCAzMikKPiAgICAgICAgICAgICAgICAgZ2VuZXJpY19oYW5kbGVfaXJxKGlycV9saW5lYXJfcmV2
bWFwKG1wYzh4eHhfZ2MtPmlycSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIDMyIC0gZmZzKG1hc2spKSk7Cj4gLSAgICAgICBpZiAoY2hpcC0+
aXJxX2VvaSkKPiAtICAgICAgICAgICAgICAgY2hpcC0+aXJxX2VvaSgmZGVzYy0+aXJxX2RhdGEp
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
MzEgLSBpKSk7Cj4gKwo+ICsgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOwo+ICB9Cj4KPiAgc3Rh
dGljIHZvaWQgbXBjOHh4eF9pcnFfdW5tYXNrKHN0cnVjdCBpcnFfZGF0YSAqZCkKPiBAQCAtMzg4
LDggKzM4OSw4IEBAIHN0YXRpYyBpbnQgbXBjOHh4eF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+Cj4gICAgICAgICByZXQgPSBncGlvY2hpcF9hZGRfZGF0YShnYywgbXBjOHh4
eF9nYyk7Cj4gICAgICAgICBpZiAocmV0KSB7Cj4gLSAgICAgICAgICAgICAgIHByX2VycigiJXBP
RjogR1BJTyBjaGlwIHJlZ2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0dXMgJWRcbiIsCj4gLSAg
ICAgICAgICAgICAgICAgICAgICBucCwgcmV0KTsKPiArICAgICAgICAgICAgICAgZGV2X2Vycigm
cGRldi0+ZGV2LCAiJXBPRjogR1BJTyBjaGlwIHJlZ2lzdHJhdGlvbiBmYWlsZWQgd2l0aCBzdGF0
dXMgJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgbnAsIHJldCk7CgpUaGlzIGlzIHVu
cmVsYXRlZCB0byB0aGUgcGF0Y2guIFBsZWFzZSBwdXQgaXQgaW4gYSBzZXBhcmF0ZSBwYXRjaC4K
CkJhcnQKCj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ICAgICAgICAgfQo+Cj4gQEAgLTQw
OSw4ICs0MTAsMTYgQEAgc3RhdGljIGludCBtcGM4eHh4X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gICAgICAgICBpZiAoZGV2dHlwZS0+Z3Bpb19kaXJfaW5faW5pdCkKPiAg
ICAgICAgICAgICAgICAgZGV2dHlwZS0+Z3Bpb19kaXJfaW5faW5pdChnYyk7Cj4KPiAtICAgICAg
IGlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKG1wYzh4eHhfZ2MtPmlycW4sCj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBtcGM4eHh4X2dwaW9faXJxX2Nh
c2NhZGUsIG1wYzh4eHhfZ2MpOwo+ICsgICAgICAgcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgmcGRl
di0+ZGV2LCBtcGM4eHh4X2djLT5pcnFuLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBtcGM4eHh4X2dwaW9faXJxX2Nhc2NhZGUsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIElSUUZfTk9fVEhSRUFEIHwgSVJRRl9TSEFSRUQsICJncGlvLWNhc2NhZGUiLAo+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBtcGM4eHh4X2djKTsKPiArICAgICAgIGlmIChyZXQp
IHsKPiArICAgICAgICAgICAgICAgZGV2X2VycigmcGRldi0+ZGV2LCAiJXM6IGZhaWxlZCB0byBk
ZXZtX3JlcXVlc3RfaXJxKCVkKSwgcmV0ID0gJWRcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgbnAtPmZ1bGxfbmFtZSwgbXBjOHh4eF9nYy0+aXJxbiwgcmV0KTsKPiArICAgICAgICAgICAg
ICAgZ290byBlcnI7Cj4gKyAgICAgICB9Cj4gKwo+ICAgICAgICAgcmV0dXJuIDA7Cj4gIGVycjoK
PiAgICAgICAgIGlvdW5tYXAobXBjOHh4eF9nYy0+cmVncyk7Cj4gLS0KPiAyLjkuNQo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
