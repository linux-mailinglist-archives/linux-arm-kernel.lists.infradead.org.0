Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 461E6B4E89
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 14:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLYMjTAG8xKBHRj22ALNKqJq0Bu7MfhLPi0L3zDZbMw=; b=I6slw/kQ7kjVdC
	U87tCRPJiAPX5HZ/bl8ZIBCMR+TLyIwom4UhpotRCpD6Mlg9gI2ftyPiwTjvDEEdqxAP0ouMqPiMw
	R2D0y8CHfjFp5u3u9kFtce6AiZKX2MBIazAilvIFVjsGuVJvN36L62NVqBaU393xotqKdza2aHozi
	T+MYhnqWwtVJStJR6ZxBE9NX3f91ClRvPon2upV+FiAF9cw2mUHTVVjp+cU7KdydAdxltJXu8yVXp
	JhMdqVj52lAjINMLPdn+vG2p9IuS4fMQCsYsCAMUc2l7akMWrjWBMwu4PqewaBGmOfdePZvFCEp4w
	YaY+IyOuTomidlSIqPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iACyk-0001tI-9E; Tue, 17 Sep 2019 12:53:11 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iACyK-0001rc-D4; Tue, 17 Sep 2019 12:52:46 +0000
Received: by mail-ot1-f66.google.com with SMTP id g13so2902546otp.8;
 Tue, 17 Sep 2019 05:52:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cGu+OKqa8P9FhmcrfusKIEOBVN7wjkZzGzIlcpxnAM4=;
 b=H9lbIWJJcTj5tKgvVvqgMhqQNTjCh/2lFbxwHAv2he4KZmeyBZaOiSHu3lXx/pueh7
 XuNw2F8fENCoScXJHqyLcDffvRqJxa0c8JRcRNonI6HAFp60PrLmEwJsEU8460sXSXTu
 cbQ0K0KWeaXMLu/Gg7dEBjfJ/OtQ/f7aT00CsJrn4dwOO9IpAbSCW7URpZpEehTzAGsN
 ZGqtRi2itYuoR8ZN1GZKG0NIGANltKGmwDP4AnrFUe1qBOumQZTVbaDZfiQAbOberkE7
 WYugmpnfDMicIVynCGYwJhJU5yr+mHXBYYzH9RQgEqt7EsefvSn1J0cg4dOTzXom+cYL
 L9hA==
X-Gm-Message-State: APjAAAXSftKS8DB7NG/c7Nq1SyvegmBAGULc8rMg+FWwebUnrcSVFkwt
 z6LvKSQPOe5VBt34325n3CVGDxql2MJJTGfLz/E=
X-Google-Smtp-Source: APXvYqwF7djb29BU4JOekDq/w2ATaouFkjTZStu1zawPVEUhoivXp7Jzh/X/ybbkO0GGmU/IOqDimmtEJFBAiFablnE=
X-Received: by 2002:a9d:5a06:: with SMTP id v6mr2514884oth.250.1568724762614; 
 Tue, 17 Sep 2019 05:52:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190824132846.8589-1-u.kleine-koenig@pengutronix.de>
 <20190824132846.8589-2-u.kleine-koenig@pengutronix.de>
 <20190913215809.GA11833@bogus>
 <CAMuHMdV+pwoAA0zH_vQf2nKqzrgHP8rcMStyJbnuu2qviFC_qg@mail.gmail.com>
 <20190917101303.t5otztdus7y3ayau@pengutronix.de>
 <489c90fb-a135-4fd8-ecb9-46404bd3c234@axentia.se>
 <20190917122530.3xy7sut3xdvzlomj@pengutronix.de>
In-Reply-To: <20190917122530.3xy7sut3xdvzlomj@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Sep 2019 14:52:31 +0200
Message-ID: <CAMuHMdXk5uSk-v4vYVR1YO46gQd0mRYy5eEM6wOHqgkRTfyn-g@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] of: Let of_for_each_phandle fallback to
 non-negative cell_count
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_055244_445243_CA51146A 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (geert.uytterhoeven[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 Joerg Roedel <joro@8bytes.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Linux IOMMU <iommu@lists.linux-foundation.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 Peter Rosin <peda@axentia.se>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVXdlLAoKT24gVHVlLCBTZXAgMTcsIDIwMTkgYXQgMjoyNSBQTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBUdWUsIFNlcCAx
NywgMjAxOSBhdCAxMToyNTo0NkFNICswMDAwLCBQZXRlciBSb3NpbiB3cm90ZToKPiA+IE9uIDIw
MTktMDktMTcgMTI6MTMsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+ID4gPiBPbiBUdWUsIFNl
cCAxNywgMjAxOSBhdCAxMTo0MDoyNUFNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6
Cj4gPiA+PiBPbiBGcmksIFNlcCAxMywgMjAxOSBhdCAxMTo1OCBQTSBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4+PiBPbiBTYXQsIDI0IEF1ZyAyMDE5IDE1OjI4OjQ2
ICswMjAwLCA9P1VURi04P3E/VXdlPTIwS2xlaW5lLUs9QzM9QjZuaWc/PSAgICAgICAgICB3cm90
ZToKPiA+ID4+Pj4gUmVmZXJlbmNpbmcgZGV2aWNlIHRyZWUgbm9kZXMgZnJvbSBhIHByb3BlcnR5
IGFsbG93cyB0byBwYXNzIGFyZ3VtZW50cy4KPiA+ID4+Pj4gVGhpcyBpcyBmb3IgZXhhbXBsZSB1
c2VkIGZvciByZWZlcmVuY2luZyBncGlvcy4gVGhpcyBsb29rcyBhcyBmb2xsb3dzOgo+ID4gPj4+
Pgo+ID4gPj4+PiAgICAgICBncGlvX2N0cmw6IGdwaW8tY29udHJvbGxlciB7Cj4gPiA+Pj4+ICAg
ICAgICAgICAgICAgI2dwaW8tY2VsbHMgPSA8Mj4KPiA+ID4+Pj4gICAgICAgICAgICAgICAuLi4K
PiA+ID4+Pj4gICAgICAgfQo+ID4gPj4+Pgo+ID4gPj4+PiAgICAgICBzb21lb3RoZXJub2RlIHsK
PiA+ID4+Pj4gICAgICAgICAgICAgICBncGlvcyA9IDwmZ3Bpb19jdHJsIDUgMCAmZ3Bpb19jdHJs
IDMgMD47Cj4gPiA+Pj4+ICAgICAgICAgICAgICAgLi4uCj4gPiA+Pj4+ICAgICAgIH0KPiA+ID4+
Pj4KPiA+ID4+Pj4gVG8ga25vdyB0aGUgbnVtYmVyIG9mIGFyZ3VtZW50cyB0aGlzIG11c3QgYmUg
ZWl0aGVyIGZpeGVkLCBvciB0aGUKPiA+ID4+Pj4gcmVmZXJlbmNlZCBub2RlIGlzIGNoZWNrZWQg
Zm9yIGEgJGNlbGxzX25hbWUgKGhlcmU6ICIjZ3Bpby1jZWxscyIpCj4gPiA+Pj4+IHByb3BlcnR5
IGFuZCB3aXRoIHRoaXMgaW5mb3JtYXRpb24gdGhlIHN0YXJ0IG9mIHRoZSBzZWNvbmQgcmVmZXJl
bmNlIGNhbgo+ID4gPj4+PiBiZSBkZXRlcm1pbmVkLgo+ID4gPj4+Pgo+ID4gPj4+PiBDdXJyZW50
bHkgcmVndWxhdG9ycyBhcmUgcmVmZXJlbmNlZCB3aXRoIG5vIGFkZGl0aW9uYWwgYXJndW1lbnRz
LiBUbwo+ID4gPj4+PiBhbGxvdyBzb21lIG9wdGlvbmFsIGFyZ3VtZW50cyB3aXRob3V0IGhhdmlu
ZyB0byBjaGFuZ2UgYWxsIHJlZmVyZW5jZWQKPiA+ID4+Pj4gbm9kZXMgdGhpcyBjaGFuZ2UgaW50
cm9kdWNlcyBhIHdheSB0byBzcGVjaWZ5IGEgZGVmYXVsdCBjZWxsX2NvdW50LiBTbwo+ID4gPj4+
PiB3aGVuIGEgcGhhbmRsZSBpcyBwYXJzZWQgd2UgY2hlY2sgZm9yIHRoZSAkY2VsbHNfbmFtZSBw
cm9wZXJ0eSBhbmQgdXNlCj4gPiA+Pj4+IGl0IGFzIGJlZm9yZSBpZiBwcmVzZW50LiBJZiBpdCBp
cyBub3QgcHJlc2VudCB3ZSBmYWxsIGJhY2sgdG8KPiA+ID4+Pj4gY2VsbHNfY291bnQgaWYgbm9u
LW5lZ2F0aXZlIGFuZCBvbmx5IGZhaWwgaWYgY2VsbHNfY291bnQgaXMgc21hbGxlciB0aGFuCj4g
PiA+Pj4+IHplcm8uCj4gPiA+Pj4+Cj4gPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gPiA+Pgo+ID4gPj4gVGhp
cyBpcyBub3cgY29tbWl0IGU0MmVlNjEwMTdmNThjZDkgKCJvZjogTGV0IG9mX2Zvcl9lYWNoX3Bo
YW5kbGUgZmFsbGJhY2sKPiA+ID4+IHRvIG5vbi1uZWdhdGl2ZSBjZWxsX2NvdW50IikgaW4gcm9i
aC9mb3ItbmV4dCwgd2hpY2ggY2F1c2VzIGEgbG9jay11cCB3aGVuCj4gPiA+PiBib290aW5nIGEg
c2htb2JpbGVfZGVmY29uZmlnIGtlcm5lbCBvbiByOGE3NzkxL2tvZWxzY2g6Cj4gPiA+Pgo+ID4g
Pj4gcmN1OiBJTkZPOiByY3Vfc2NoZWQgc2VsZi1kZXRlY3RlZCBzdGFsbCBvbiBDUFUKCj4gT2gg
eWVhaCwgeW91J3JlIHJpZ2h0LiBJJ20gYSBiaXQgZGlzYXBwb2ludGVkIHRoYXQgSSBkaWRuJ3Qg
c3BvdCB0aGlzCj4gbXlzZWxmIDotfAo+Cj4gVW50ZXN0ZWQgcGF0Y2ggdG8gZml4IHRoaXMgcHJv
YmxlbToKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL29mL2Jhc2UuYyBiL2RyaXZlcnMvb2YvYmFz
ZS5jCj4gaW5kZXggMmYyNWQyZGZlY2ZhLi4yNmY3YTIxZDcxODcgMTAwNjQ0Cj4gLS0tIGEvZHJp
dmVycy9vZi9iYXNlLmMKPiArKysgYi9kcml2ZXJzL29mL2Jhc2UuYwo+IEBAIC0xMjg0LDYgKzEy
ODQsMTMgQEAgaW50IG9mX3BoYW5kbGVfaXRlcmF0b3JfaW5pdChzdHJ1Y3Qgb2ZfcGhhbmRsZV9p
dGVyYXRvciAqaXQsCj4gICAgICAgICBjb25zdCBfX2JlMzIgKmxpc3Q7Cj4gICAgICAgICBpbnQg
c2l6ZTsKPgo+ICsgICAgICAgLyoKPiArICAgICAgICAqIG9uZSBvZiBjZWxsX2NvdW50IG9yIGNl
bGxzX25hbWUgbXVzdCBiZSBwcm92aWRlZCB0byBkZXRlcm1pbmUgdGhlCj4gKyAgICAgICAgKiBh
cmd1bWVudCBsZW5ndGguCj4gKyAgICAgICAgKi8KPiArICAgICAgIGlmIChjZWxsX2NvdW50IDwg
MCAmJiAhY2VsbHNfbmFtZSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gKwo+
ICAgICAgICAgbWVtc2V0KGl0LCAwLCBzaXplb2YoKml0KSk7Cj4KPiAgICAgICAgIGxpc3QgPSBv
Zl9nZXRfcHJvcGVydHkobnAsIGxpc3RfbmFtZSwgJnNpemUpOwo+IEBAIC0xNzY1LDYgKzE3NzIs
MTggQEAgaW50IG9mX2NvdW50X3BoYW5kbGVfd2l0aF9hcmdzKGNvbnN0IHN0cnVjdCBkZXZpY2Vf
bm9kZSAqbnAsIGNvbnN0IGNoYXIgKmxpc3RfbmEKPiAgICAgICAgIHN0cnVjdCBvZl9waGFuZGxl
X2l0ZXJhdG9yIGl0Owo+ICAgICAgICAgaW50IHJjLCBjdXJfaW5kZXggPSAwOwo+Cj4gKyAgICAg
ICAvKiBJZiBjZWxsc19uYW1lIGlzIE5VTEwgd2UgYXNzdW1lIGFuIGNlbGxfY291bnQgb2YgMCAq
LwoKYSBjZWxsIGNvdW50Cgo+ICsgICAgICAgaWYgKGNlbGxzX25hbWUgPT0gTlVMTCkgewo+ICsg
ICAgICAgICAgICAgICBjb25zdCBfX2JlMzIgKmxpc3Q7Cj4gKyAgICAgICAgICAgICAgIGludCBz
aXplOwo+ICsKPiArICAgICAgICAgICAgICAgbGlzdCA9IG9mX2dldF9wcm9wZXJ0eShucCwgbGlz
dF9uYW1lLCAmc2l6ZSk7Cj4gKyAgICAgICAgICAgICAgIGlmICghbGlzdCkKPiArICAgICAgICAg
ICAgICAgICAgICAgICByZXR1cm4gLUVOT0VOVDsKPiArCj4gKyAgICAgICAgICAgICAgIHJldHVy
biBzaXplIC8gc2l6ZW9mKCpsaXN0KTsKPiArICAgICAgIH0KPiArCj4gICAgICAgICByYyA9IG9m
X3BoYW5kbGVfaXRlcmF0b3JfaW5pdCgmaXQsIG5wLCBsaXN0X25hbWUsIGNlbGxzX25hbWUsIC0x
KTsKPiAgICAgICAgIGlmIChyYykKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJjOwoKVGhhbmtz
LCB0aGF0IGZpeGVzIHRoZSBib290IGZvciBtZSEKClRlc3RlZC1ieTogR2VlcnQgVXl0dGVyaG9l
dmVuIDxnZWVydCtyZW5lc2FzQGdsaWRlci5iZT4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAg
ICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUn
cyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBw
ZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2Vs
ZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
