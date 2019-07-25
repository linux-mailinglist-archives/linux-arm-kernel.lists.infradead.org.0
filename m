Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C2274E70
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:46:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8rUeRCRAO/2Um5uaG3THe/YKuGGXmEFZBocwZ3Kxfg=; b=QiQ9rK/kaSZkV4
	O8e2AwQaO5Bo7S8RxmXCdccDQCpGSwNqcoiN9EbSSlFuk/Krx6yP1AuWJ5P4rUPzud0UEWQ0pplDx
	9KqtQ2UwLe4lN8ClUAeHMECs4NaJzkOIMid63q3TMJ0FRd1swNezkoSMivUBHLPx2EWjNTnV/1Ldy
	twqgPutxH5J+iYklJRt90hQVSpt/6bJcTr++4dgDVuaH0awKaB/cIZbirZaDtKrNo4JbHJMHxCvyG
	pXqfkRo8d3MWy08E7nzYXn1IXm2xttQSY3mnJuGd5JjemzVeVeAnFCpiAUMc/m7uozegDt2UpMDsh
	jfbFqWrecR+NujR3lR2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqd8K-0008UR-Vt; Thu, 25 Jul 2019 12:46:09 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqd8A-0008U3-EM
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:45:59 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so47821838ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=YxoMXX9Nct0eRRcS7Q/PLXYnZRgyZpcSP8/DWhoCE08=;
 b=iC1vZvfJutufEB8O0LVkEL3eLGLkJvcm3eMtB88c8eNso6GNJRzNp+ZIqa/3Q52BIu
 JRoQYKgU9myUBTAbT0TCOHH5UbyaMYcVFjy0TEU3YM81qHCSIkGNjrtDJtW+uxLeVFwA
 kRHHCiwp15FcRYWijkcBil/QsrUnPTJH2FLrZb5nWB8g8uEQIW22396vX3zHb35bpdR3
 UD1bfkthTgUKyJ+NW7JORGckCMOEp4JMlXM5VEoEoEj01RVHQ5NYxto3PDXdunGJjHiC
 9vtq66s8v7Wl8bnyGmgwgfT7Zruss//MqXAsQOXN1Ft+UULQ/F+gDuzbsN6AJOXkE/cj
 Wf9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc:content-transfer-encoding;
 bh=YxoMXX9Nct0eRRcS7Q/PLXYnZRgyZpcSP8/DWhoCE08=;
 b=bD/SZLsw+sUCjo/uT4KiIsrcO7GA5aX55knZMY2bnIRciTmdSYYiOMchLrkvJOEiO5
 RhXlg+nJY+QUxKhxPe/l4esi5LGn1k8YaGrhdcsqVj068l5+FsNYjJRSi9DgYMMUBn8x
 FGPTcIe68ODI2MZSOPjbjgGBiLnRBc65qsj/nNhv1Fb+cvoeVC0Fnrcj5b5MyLrtvHMG
 w9rqX31LPgmHV4PZeIK+kMvd+OyTMPEn0f/V5S+sVoiADyncOAA0ptTvzZ5L091n306X
 y6ceQ/M13EKr2gbT4Pcl/JySy4kFJww9OE+622lGi04LTwQQLPbflK+1zeW3/IygIs3u
 yQTA==
X-Gm-Message-State: APjAAAXbSpFkamIbwz0pVazY4YNQV+GTCeO8j/KpxVwwii9DiKoWXKmW
 iyfKqjEKxTSssQQiusUUl58A9tRPSKOh6oehPdIvu9uq
X-Google-Smtp-Source: APXvYqwievWEj3UbBaN2VIfe8QRJUis+gUfdQlAX6IUbqOgqfMnKj83r/6dVQ+2l6WZ0uRdOwLDmDD1IMt9qut4IPNs=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr44878199ljk.93.1564058756462; 
 Thu, 25 Jul 2019 05:45:56 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190723122023eucas1p2ff56c00b60a676ed85d9fe159a1839f2@eucas1p2.samsung.com>
 <20190723122016.30279-1-a.swigon@partner.samsung.com>
 <20190723122016.30279-3-a.swigon@partner.samsung.com>
In-Reply-To: <20190723122016.30279-3-a.swigon@partner.samsung.com>
From: Chanwoo Choi <cwchoi00@gmail.com>
Date: Thu, 25 Jul 2019 21:45:19 +0900
Message-ID: <CAGTfZH3GXCuYY-xmKtGd-M47WKp2c8PseytKw-oUOwp+TtGsvQ@mail.gmail.com>
Subject: Re: [RFC PATCH 02/11] devfreq: exynos-bus: Extract
 exynos_bus_profile_init_passive()
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_054558_489514_FDC92D52 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (cwchoi00[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (cwchoi00[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cwchoi00[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: cwchoi00@gmail.com
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, georgi.djakov@linaro.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MjAxOeuFhCA37JuUIDI07J28ICjsiJgpIOyYpOyghCA4OjA3LCBBcnR1ciDFmndpZ2/FhCA8YS5z
d2lnb25AcGFydG5lci5zYW1zdW5nLmNvbT7ri5jsnbQg7J6R7ISxOgo+Cj4gVGhpcyBwYXRjaCBh
ZGRzIGEgbmV3IHN0YXRpYyBmdW5jdGlvbiwgZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2
ZSgpLAo+IGV4dHJhY3RlZCBmcm9tIGV4eW5vc19idXNfcHJvYmUoKS4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBwYXJ0bmVyLnNhbXN1bmcuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jIHwgNzAgKysrKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspLCAyOCBk
ZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5j
IGIvZHJpdmVycy9kZXZmcmVxL2V4eW5vcy1idXMuYwo+IGluZGV4IGQ4ZjFlZmFmMmQ0OS4uY2Y2
ZjZjYmQwZjU1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZGV2ZnJlcS9leHlub3MtYnVzLmMKPiAr
KysgYi9kcml2ZXJzL2RldmZyZXEvZXh5bm9zLWJ1cy5jCj4gQEAgLTQzMCwxMyArNDMwLDUxIEBA
IHN0YXRpYyBpbnQgZXh5bm9zX2J1c19wcm9maWxlX2luaXQoc3RydWN0IGV4eW5vc19idXMgKmJ1
cywKPiAgICAgICAgIHJldHVybiByZXQ7Cj4gIH0KPgo+ICtzdGF0aWMgaW50IGV4eW5vc19idXNf
cHJvZmlsZV9pbml0X3Bhc3NpdmUoc3RydWN0IGV4eW5vc19idXMgKmJ1cywKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRldmZyZXFfZGV2X3Byb2Zp
bGUgKnByb2ZpbGUpCj4gK3sKPiArICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9IGJ1cy0+ZGV2
Owo+ICsgICAgICAgc3RydWN0IGRldmZyZXEgKnBhcmVudF9kZXZmcmVxOwo+ICsgICAgICAgc3Ry
dWN0IGRldmZyZXFfcGFzc2l2ZV9kYXRhICpwYXNzaXZlX2RhdGE7Cj4gKyAgICAgICBpbnQgcmV0
ID0gMDsKPiArCj4gKyAgICAgICAvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQg
Z292ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KPiArICAgICAgIHByb2ZpbGUtPnRh
cmdldCA9IGV4eW5vc19idXNfcGFzc2l2ZV90YXJnZXQ7Cj4gKyAgICAgICBwcm9maWxlLT5leGl0
ID0gZXh5bm9zX2J1c19wYXNzaXZlX2V4aXQ7Cj4gKwo+ICsgICAgICAgLyogR2V0IHRoZSBpbnN0
YW5jZSBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiArICAgICAgIHBhcmVudF9kZXZmcmVx
ID0gZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gKyAgICAgICBpZiAo
SVNfRVJSKHBhcmVudF9kZXZmcmVxKSkgewo+ICsgICAgICAgICAgICAgICByZXQgPSAtRVBST0JF
X0RFRkVSOwo+ICsgICAgICAgICAgICAgICBnb3RvIGVycjsKPiArICAgICAgIH0KPiArCj4gKyAg
ICAgICBwYXNzaXZlX2RhdGEgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKnBhc3NpdmVfZGF0
YSksIEdGUF9LRVJORUwpOwo+ICsgICAgICAgaWYgKCFwYXNzaXZlX2RhdGEpIHsKPiArICAgICAg
ICAgICAgICAgcmV0ID0gLUVOT01FTTsKPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAg
ICAgICB9Cj4gKyAgICAgICBwYXNzaXZlX2RhdGEtPnBhcmVudCA9IHBhcmVudF9kZXZmcmVxOwo+
ICsKPiArICAgICAgIC8qIEFkZCBkZXZmcmVxIGRldmljZSBmb3IgZXh5bm9zIGJ1cyB3aXRoIHBh
c3NpdmUgZ292ZXJub3IgKi8KPiArICAgICAgIGJ1cy0+ZGV2ZnJlcSA9IGRldm1fZGV2ZnJlcV9h
ZGRfZGV2aWNlKGRldiwgcHJvZmlsZSwgREVWRlJFUV9HT1ZfUEFTU0lWRSwKPiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwYXNzaXZlX2RhdGEpOwo+ICsg
ICAgICAgaWYgKElTX0VSUihidXMtPmRldmZyZXEpKSB7Cj4gKyAgICAgICAgICAgICAgIGRldl9l
cnIoZGV2LAo+ICsgICAgICAgICAgICAgICAgICAgICAgICJmYWlsZWQgdG8gYWRkIGRldmZyZXEg
ZGV2IHdpdGggcGFzc2l2ZSBnb3Zlcm5vclxuIik7Cj4gKyAgICAgICAgICAgICAgIHJldCA9IFBU
Ul9FUlIoYnVzLT5kZXZmcmVxKTsKPiArICAgICAgICAgICAgICAgZ290byBlcnI7Cj4gKyAgICAg
ICB9Cj4gKwo+ICtlcnI6Cj4gKyAgICAgICByZXR1cm4gcmV0Owo+ICt9Cj4gKwo+ICBzdGF0aWMg
aW50IGV4eW5vc19idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+
ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiAgICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAgPSBkZXYtPm9mX25vZGUsICpub2RlOwo+ICAgICAgICAgc3RydWN0
IGRldmZyZXFfZGV2X3Byb2ZpbGUgKnByb2ZpbGU7Cj4gLSAgICAgICBzdHJ1Y3QgZGV2ZnJlcV9w
YXNzaXZlX2RhdGEgKnBhc3NpdmVfZGF0YTsKPiAtICAgICAgIHN0cnVjdCBkZXZmcmVxICpwYXJl
bnRfZGV2ZnJlcTsKPiAgICAgICAgIHN0cnVjdCBleHlub3NfYnVzICpidXM7Cj4gICAgICAgICBp
bnQgcmV0LCBtYXhfc3RhdGU7Cj4gICAgICAgICB1bnNpZ25lZCBsb25nIG1pbl9mcmVxLCBtYXhf
ZnJlcTsKPiBAQCAtNDgxLDMzICs1MTksOSBAQCBzdGF0aWMgaW50IGV4eW5vc19idXNfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgZ290byBvdXQ7Cj4gIHBh
c3NpdmU6Cj4gLSAgICAgICAvKiBJbml0aWFsaXplIHRoZSBzdHJ1Y3QgcHJvZmlsZSBhbmQgZ292
ZXJub3IgZGF0YSBmb3IgcGFzc2l2ZSBkZXZpY2UgKi8KPiAtICAgICAgIHByb2ZpbGUtPnRhcmdl
dCA9IGV4eW5vc19idXNfcGFzc2l2ZV90YXJnZXQ7Cj4gLSAgICAgICBwcm9maWxlLT5leGl0ID0g
ZXh5bm9zX2J1c19wYXNzaXZlX2V4aXQ7Cj4gLQo+IC0gICAgICAgLyogR2V0IHRoZSBpbnN0YW5j
ZSBvZiBwYXJlbnQgZGV2ZnJlcSBkZXZpY2UgKi8KPiAtICAgICAgIHBhcmVudF9kZXZmcmVxID0g
ZGV2ZnJlcV9nZXRfZGV2ZnJlcV9ieV9waGFuZGxlKGRldiwgMCk7Cj4gLSAgICAgICBpZiAoSVNf
RVJSKHBhcmVudF9kZXZmcmVxKSkgewo+IC0gICAgICAgICAgICAgICByZXQgPSAtRVBST0JFX0RF
RkVSOwo+ICsgICAgICAgcmV0ID0gZXh5bm9zX2J1c19wcm9maWxlX2luaXRfcGFzc2l2ZShidXMs
IHByb2ZpbGUpOwo+ICsgICAgICAgaWYgKHJldCA8IDApCj4gICAgICAgICAgICAgICAgIGdvdG8g
ZXJyOwo+IC0gICAgICAgfQo+IC0KPiAtICAgICAgIHBhc3NpdmVfZGF0YSA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqcGFzc2l2ZV9kYXRhKSwgR0ZQX0tFUk5FTCk7Cj4gLSAgICAgICBpZiAo
IXBhc3NpdmVfZGF0YSkgewo+IC0gICAgICAgICAgICAgICByZXQgPSAtRU5PTUVNOwo+IC0gICAg
ICAgICAgICAgICBnb3RvIGVycjsKPiAtICAgICAgIH0KPiAtICAgICAgIHBhc3NpdmVfZGF0YS0+
cGFyZW50ID0gcGFyZW50X2RldmZyZXE7Cj4gLQo+IC0gICAgICAgLyogQWRkIGRldmZyZXEgZGV2
aWNlIGZvciBleHlub3MgYnVzIHdpdGggcGFzc2l2ZSBnb3Zlcm5vciAqLwo+IC0gICAgICAgYnVz
LT5kZXZmcmVxID0gZGV2bV9kZXZmcmVxX2FkZF9kZXZpY2UoZGV2LCBwcm9maWxlLCBERVZGUkVR
X0dPVl9QQVNTSVZFLAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHBhc3NpdmVfZGF0YSk7Cj4gLSAgICAgICBpZiAoSVNfRVJSKGJ1cy0+ZGV2ZnJlcSkp
IHsKPiAtICAgICAgICAgICAgICAgZGV2X2VycihkZXYsCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgImZhaWxlZCB0byBhZGQgZGV2ZnJlcSBkZXYgd2l0aCBwYXNzaXZlIGdvdmVybm9yXG4iKTsK
PiAtICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VSUihidXMtPmRldmZyZXEpOwo+IC0gICAgICAg
ICAgICAgICBnb3RvIGVycjsKPiAtICAgICAgIH0KPgo+ICBvdXQ6Cj4gICAgICAgICBtYXhfc3Rh
dGUgPSBidXMtPmRldmZyZXEtPnByb2ZpbGUtPm1heF9zdGF0ZTsKPiAtLQo+IDIuMTcuMQo+CgpB
Y3R1YWxseSwgaXQgaXMgbm90IG5lY2Vzc2FyeS4gSXQgaGFzIG5vIGFueSBiZW5lZml0LgpQbGVh
c2UgZHJvcCBpdCBhcyBJIGNvbW1lbnRlZCBvbiBwYXRjaDEuCgoKLS0KQmVzdCBSZWdhcmRzLApD
aGFud29vIENob2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
