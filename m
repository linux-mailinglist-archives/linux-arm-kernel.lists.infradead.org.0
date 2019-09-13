Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CC72B2321
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 17:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6DswvdufgBBynNjUFIJiM3abE4lt1RW4iQ+Fk5nBxoE=; b=k+PAa31MfUPlrF
	PGDZfd5c+Olr1K8ISYeDy9b+FruESYD/JOt0g2DfzTH1gxoh8bTyh+wYt6f3IRpt8vIHH45llz9v0
	lS3geM1tKlddyjbYYw7p+y5mbZFXvjs41SJqyAQbjZjYGgFvIq+2+BQskohKkvoogmVt2sz2KFU+y
	kmKtlKdpheOrsi5Rr4VDh8/JFs8FUTHM4f+I9gNQalJE8F1umUvKZwExkntoM3IGX+0MJrY9vwzvH
	qFeLu3mikm7VXefhXXJhn48AEcsoMRDrGzuz4KNy6dMzJY+YGNQ4ZbHmT+CSr1bUlNIt/+SnQ8DLA
	6DLW5E0KoPL4G9V9Jmyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8nFl-0001kf-87; Fri, 13 Sep 2019 15:12:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8nEV-0001k8-31
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 15:11:37 +0000
Received: by mail-io1-xd43.google.com with SMTP id f4so62548351ion.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 08:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mMvrolpZictsp0vcsnA439WHJN6VazlWfkqCTVMaJ18=;
 b=Q4o8MOrcV7wEiSL8OeQZ81/0lAc+RejvSKnrttWS2SFoFR64ZA1IaQgSJBkK2GN+50
 SQKP5T8Pif4V9w82Bs85UcpBl3gVWj4FW9BU79sX2RROleiEONemjmi96p/6JeqUu/96
 Tv3fNahITQYZaycVB26/sZMi6lLyJElfbVPnHwNg5mYDnODnoqAk6lCeXnECn0Gk6/YX
 xwPL/xFa0hoiE6uysgnE9yoAXybGqx45GzL0Fv3/k6N2Ss7YIOQjx8SNyQeG35akObeD
 I48LQPzMq9ByueSf1nPG+7xgl9M8Uu3qOBX7/hlOmDy2abfw+Cc/eu5NIBslUP58B2Bs
 igdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mMvrolpZictsp0vcsnA439WHJN6VazlWfkqCTVMaJ18=;
 b=poF3W+jqh4bvLU1WE/noyjtsEMYRBUMtEAdUq25r26lIhNt463Xt54MeYcgei4npgy
 1adUdtSY2gH1Kg1dUjKt7cDXCc2PoIMi9YH+7otxDUlGkBEMxqa35gmNSd7Kx57TVwww
 Lq6DZgxoqCJwaGpxRWUcfi1sKYLipjtxeucX33PEXus+vje+qh1138Q4HRX0ytN0dSMw
 iIG/xRNE34UtvhzgxMEGVFdAnEMgbWyJ27f6vLwNZpyhOoC2xX2wtmylyCSl6PT2ue2Z
 u3CP68aEHb+rt5WM8um/BgV27kn2D0SSXxWK2UgwiufsG92PQBmC8B2xFwfOPjPvopv4
 OEzw==
X-Gm-Message-State: APjAAAWY8BuR+LzscrpWSE+jqt/ltQ7F2d5j/trpMq59ZP+mGhAo328M
 psr/Y/toXfiq/9Ber6d5+K0xVzEeoZjiInKwN/Q=
X-Google-Smtp-Source: APXvYqwg1b8JOuGD1khBTu2NdeWJ8zoK/q4xdCG1EtENfPvGPZ7lf5eC4XfwBU+ueiNWo+YAxTP8qZ9XchiZQf10Duo=
X-Received: by 2002:a6b:cd81:: with SMTP id d123mr347064iog.78.1568387493695; 
 Fri, 13 Sep 2019 08:11:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190801012823.28730-1-neolynx@gmail.com>
 <20190801012823.28730-2-neolynx@gmail.com>
 <CAHCN7x+Vd+ECoa4fmUfoX47znag+NxKSzRt3iouQCZ2CQ2T--A@mail.gmail.com>
 <20190912210937.GU52127@atomide.com>
In-Reply-To: <20190912210937.GU52127@atomide.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 13 Sep 2019 10:11:22 -0500
Message-ID: <CAHCN7xLh+6rdfjaXJJxv_s82OhPiVGhksu2L+krZAnYCTnpijw@mail.gmail.com>
Subject: Re: [PATCH 1/3] OMAP3: PM: Set/clear T2 bit for Smartreflex on TWL
To: Tony Lindgren <tony@atomide.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_081135_254114_582ABA15 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@ti.com>,
 "H. Nikolaus Schaller" <hns@goldelico.com>,
 Shweta Gulati <shweta.gulati@ti.com>,
 =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>, Thara Gopinath <thara@ti.com>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgNDowOSBQTSBUb255IExpbmRncmVuIDx0b255QGF0b21p
ZGUuY29tPiB3cm90ZToKPgo+ICogQWRhbSBGb3JkIDxhZm9yZDE3M0BnbWFpbC5jb20+IFsxOTA5
MTIgMTk6MDBdOgo+ID4gT24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgODoyOSBQTSBBbmRyw6kgUm90
aCA8bmVvbHlueEBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBGcm9tOiBUaGFyYSBHb3Bp
bmF0aCA8dGhhcmFAdGkuY29tPgo+ID4gPgo+ID4gPiBWb2x0YWdlIGNvbnRyb2wgb24gVFdMIGNh
biBiZSBkb25lIHVzaW5nIFZNT0RFL0kyQzEvSTJDX1NSLgo+ID4gPiBTaW5jZSBhbG1vc3QgYWxs
IHBsYXRmb3JtcyB1c2UgSTJDX1NSIG9uIG9tYXAzLCBvbWFwM190d2xfaW5pdCBieQo+ID4gPiBk
ZWZhdWx0IGV4cGVjdHMgdGhhdCBPTUFQJ3MgSTJDX1NSIGlzIHBsdWdnZWQgaW4gdG8gVFdMJ3Mg
STJDCj4gPiA+IGFuZCBjYWxscyBvbWFwM190d2xfc2V0X3NyX2JpdC4gT24gcGxhdGZvcm1zIHdo
ZXJlIEkyQ19TUiBpcyBub3QgY29ubmVjdGVkLAo+ID4gPiB0aGUgYm9hcmQgZmlsZXMgYXJlIGV4
cGVjdGVkIHRvIGNhbGwgb21hcDNfdHdsX3NldF9zcl9iaXQoZmFsc2UpIHRvCj4gPiA+IGVuc3Vy
ZSB0aGF0IEkyQ19TUiBwYXRoIGlzIG5vdCBzZXQgZm9yIHZvbHRhZ2UgY29udHJvbCBhbmQgcHJl
dmVudAo+ID4gPiB0aGUgZGVmYXVsdCBiZWhhdmlvciBvZiBvbWFwM190d2xfaW5pdC4KPiA+ID4K
PiA+ID4gU2lnbmVkLW9mZi1ieTogTmlzaGFudGggTWVub24gPG5tQHRpLmNvbT4KPiA+ID4gU2ln
bmVkLW9mZi1ieTogVGhhcmEgR29waW5hdGggPHRoYXJhQHRpLmNvbT4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogU2h3ZXRhIEd1bGF0aSA8c2h3ZXRhLmd1bGF0aUB0aS5jb20+Cj4gPiA+IENjOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ID4gU2lnbmVkLW9mZi1ieTogS2V2
aW4gSGlsbWFuIDxraGlsbWFuQHRpLmNvbT4KPiA+Cj4gPiBUb255LAo+ID4KPiA+IElzIHRoZXJl
IGEgc3RhdHVzIHVwZGF0ZSBvbiB0aGlzIHNlcmllcz8gIEl0J3MgYmVlbiBzZXZlcmFsIG1vbnRo
cywKPiA+IGFuZCBJIGhhdmVuJ3Qgc2VlbiBhbnkgZmVlZGJhY2sgb24gaXQsIG5vciBkb2VzIGl0
IGFwcGVhciB0byBiZSBpbiBhbnkKPiA+IG9mIHlvdXIgYnJhbmNoZXMgdGhhdCBJIGNhbiBzZWUu
Cj4KPiBXZWxsIGl0IHdhcyB0YWdnZWQgUkZDLi4gRG9lcyBzb21ldGhpbmcgbmVlZCB1cGRhdGlu
Zwo+IHdpdGggaXQ/CgpJIGRpZG4ndCBub3RpY2UgdGhlIFJUQyB1bnRpbCB5b3UgcG9pbnRlZCBv
dXQgdGhlIDAvMyBmaWxlIHNob3dlZCB0aGUgUkZDLgoKQW5kcmUgLSAgc2luY2UgeW91IGhhdmUg
c2lnbi1vZmYgYnkgdmFyaW91cyBUSSBwZW9wbGUgYW5kIFRvbnkgc2VlbXMKc2F0aXNmaWVkLCB3
b3VsZCB5b3UgYmUgd2lsbCB0byByZS1iYXNlIGFuZCBwdXNoIHRoZSBwYXRjaCBzZXJpZXMKd2l0
aG91dCB0aGUgUkZDPwoKSSB0aGluayBzb21lIG9mIHRoZSB3b3JrIHRoYXQgSCBOaWtvbGF1cyBT
Y2hhbGxlciBpcyBkb2luZyB3aWxsCmJlbmVmaXQgZnJvbSB0aGlzLgoKVGhhbmsgeW91LAoKYWRh
bQo+Cj4gQXQgbGVhc3QgdGhlIGZpcnN0IHR3byBwYXRjaGVzIGxvb2tlZCBPSyB0byBtZS4KPgo+
IFJlZ2FyZHMsCj4KPiBUb255CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
