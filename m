Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A71F1ED175
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 15:52:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hu+cK6u6iB6GyEcZi1c4F/uVqd7eV95WjlODtEQ8J+w=; b=Mig3+Olu1rxEid
	EmHgOsmA2DQ0CL3OD06G3M8UWctUbn5g+till9OvRg5PvUotohMIlqWNhmN1gDSwUTPmWQq9FDnvn
	kVXNKF8lNEO1boo0O50mgAqwKaQPQbMRvBy5O7jMc8Zyul3z8zLrUgcn1kO/t6CKil8FxDDRaXr0/
	QwfhhuZJOqBmHyvwsFHU0117JB53RSbeM5HUXLe3FlJ1o7Meu6lUEYtpziAmJ4k8dweeTB1PCsiU1
	x4LgU/aQrj6UnrxELYS5y1k4x12V1V575DEa3IGadi0FdaUaXCczAt0+TxWovQ9xuDdt5WKLiIEMT
	dlVHo42ooWnOrldUTdzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTou-0006jN-MJ; Wed, 03 Jun 2020 13:52:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTmT-0003Dr-QC
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 13:50:13 +0000
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D51682081A
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  3 Jun 2020 13:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591192206;
 bh=Fj0iOVs08jiwu5naUApH7MvVszFmEVZ9O5OdKBSK/BQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=aw0ZPWuz7AiTZUo31l3+FlYCKIl4pFhPfY/Mcm3Wr1kMDSsYj0XX6BKLvYeByhXe8
 6+VZYgKROW2r4TX1VaQf/3qOBlLdWhoGe+syDwBJRPaan8SqtRJaBcR53yoZ8nu6xz
 N/2b2zoqZDxhZZuaeGJSxtS33vonUNGGsY5zdZ0U=
Received: by mail-ot1-f50.google.com with SMTP id s13so1890864otd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 03 Jun 2020 06:50:06 -0700 (PDT)
X-Gm-Message-State: AOAM530pInPSfi/9j1tOzykouqSp+E1gtUo943LACOoIHGd68BGqi2wd
 KiFU0WDwuusfAPkYHf9jcy/Rg5hvvFoPahHrxw==
X-Google-Smtp-Source: ABdhPJw+nAaODIOdecGluSxYY7HWI8UQEezTU6nVGm356t+p9EGwagFR+l+QCJoqrQqbzEaag6QgdNSqIXSrvH0MQd0=
X-Received: by 2002:a9d:c29:: with SMTP id 38mr44862otr.107.1591192206147;
 Wed, 03 Jun 2020 06:50:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200513103016.130417-1-andre.przywara@arm.com>
 <20200513103016.130417-5-andre.przywara@arm.com>
 <20200528024810.GA232303@roeck-us.net>
 <48afb8bb-a22a-54df-7751-55b7b84c3c88@arm.com>
 <22687572-becf-7b4e-9759-cfba44677a1d@arm.com>
 <CAL_JsqLgNDd-+rrYD=Y0Hm=NaV7f0NbBFb9uhhYhzM6LjxnXZg@mail.gmail.com>
 <1d111f40-1702-7ea0-825f-ab08d77353e9@arm.com>
In-Reply-To: <1d111f40-1702-7ea0-825f-ab08d77353e9@arm.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 3 Jun 2020 07:49:54 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKSH1Oy5yAw463dHuCxnBEgEa0DYR8EK-p=y957h5kNCw@mail.gmail.com>
Message-ID: <CAL_JsqKSH1Oy5yAw463dHuCxnBEgEa0DYR8EK-p=y957h5kNCw@mail.gmail.com>
Subject: Re: [PATCH v3 04/20] arm64: dts: arm: vexpress: Move fixed devices
 out of bus node
To: =?UTF-8?Q?Andr=C3=A9_Przywara?= <andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_065010_209385_B1E4A7AF 
X-CRM114-Status: GOOD (  33.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdW4gMywgMjAyMCBhdCA1OjIxIEFNIEFuZHLDqSBQcnp5d2FyYSA8YW5kcmUucHJ6
eXdhcmFAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAwMi8wNi8yMDIwIDAwOjEyLCBSb2IgSGVycmlu
ZyB3cm90ZToKPgo+IEhpLAo+Cj4gPiBPbiBNb24sIEp1biAxLCAyMDIwIGF0IDQ6MTUgQU0gQW5k
csOpIFByenl3YXJhIDxhbmRyZS5wcnp5d2FyYUBhcm0uY29tPiB3cm90ZToKPiA+Pgo+ID4+IE9u
IDI4LzA1LzIwMjAgMTQ6MzAsIEFuZHLDqSBQcnp5d2FyYSB3cm90ZToKPiA+Pgo+ID4+IEhpLAo+
ID4+Cj4gPj4+IE9uIDI4LzA1LzIwMjAgMDM6NDgsIEd1ZW50ZXIgUm9lY2sgd3JvdGU6Cj4gPj4+
Cj4gPj4+IEhpIEd1ZW50ZXIsCj4gPj4+Cj4gPj4+PiBPbiBXZWQsIE1heSAxMywgMjAyMCBhdCAx
MTozMDowMEFNICswMTAwLCBBbmRyZSBQcnp5d2FyYSB3cm90ZToKPiA+Pj4+PiBUaGUgZGV2aWNl
dHJlZSBjb21waWxlciBjb21wbGFpbnMgd2hlbiBEVCBub2RlcyB3aXRob3V0IGEgcmVnIHByb3Bl
cnR5Cj4gPj4+Pj4gbGl2ZSBpbnNpZGUgYSAoc2ltcGxlKSBidXMgbm9kZToKPiA+Pj4+PiBXYXJu
aW5nIChzaW1wbGVfYnVzX3JlZyk6IE5vZGUgL2J1c0A4MDAwMDAwL21vdGhlcmJvYXJkLWJ1cy9y
ZWZjbGszMmtoego+ID4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgbWlzc2luZyBvciBl
bXB0eSByZWcvcmFuZ2VzIHByb3BlcnR5Cj4gPj4+Pj4KPiA+Pj4+PiBNb3ZlIHRoZSBmaXhlZCBj
bG9ja3MsIHRoZSBmaXhlZCByZWd1bGF0b3IsIHRoZSBsZWRzIGFuZCB0aGUgY29uZmlnIGJ1cwo+
ID4+Pj4+IHN1YnRyZWUgdG8gdGhlIHJvb3Qgbm9kZSwgc2luY2UgdGhleSBkbyBub3QgZGVwZW5k
IG9uIGFueSBidXNzZXMuCj4gPj4+Pj4KPiA+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBBbmRyZSBQcnp5
d2FyYSA8YW5kcmUucHJ6eXdhcmFAYXJtLmNvbT4KPiA+Pj4+Cj4gPj4+PiBUaGlzIHBhdGNoIHJl
c3VsdHMgaW4gdHJhY2ViYWNrcyB3aGVuIGJvb3RpbmcgdGhlIHZleHByZXNzLWExNSBtYWNoaW5l
Cj4gPj4+PiB3aXRoIHZleHByZXNzLXYycC1jYTE1LXRjMSBkZXZpY2V0cmVlIGZpbGUgaW4gcWVt
dS4gUmV2ZXJ0aW5nIGl0IGFzIHdlbGwKPiA+Pj4+IGFzIHRoZSBzdWJzZXF1ZW50IHBhdGNoZXMg
YWZmZWN0aW5nIHRoZSBzYW1lIGZpbGUgKHRvIGF2b2lkIHJldmVydAo+ID4+Pj4gY29uZmxpY3Rz
KSBmaXhlcyB0aGUgcHJvYmxlbS4KPiA+Pj4KPiA+Pj4gTWFueSB0aGFua3MgZm9yIHRoZSBoZWFk
cyB1cCEgSSB3YXMgYWJsZSB0byByZXByb2R1Y2UgaXQgaGVyZS4gT24gdGhlCj4gPj4+IGZpcnN0
IGdsYW5jZSBpdCBsb29rcyBsaWtlIHRoZSBVQVJUIGlzIHByb2JlZCBiZWZvcmUgdGhlIGNsb2Nr
cyBub3csCj4gPj4+IGJlY2F1c2UgdGhlIHRyYXZlcnNhbCBvZiB0aGUgY2hhbmdlZCBEVCBsZWFk
cyB0byBhIGRpZmZlcmVudCBwcm9iZQo+ID4+PiBvcmRlci4gSSB3aWxsIGxvb2sgaW50byBob3cg
dG8gZml4IHRoaXMuCj4gPj4KPiA+PiBUdXJuZWQgb3V0IHRvIGJlIGEgYml0IG1vcmUgY29tcGxp
Y2F0ZWQ6Cj4gPj4gVGhlIGFybSx2ZXhwcmVzcyxjb25maWctYnVzIGRyaXZlciB3YWxrcyB1cCB0
aGUgZGV2aWNlIHRyZWUgdG8gZmluZCBhCj4gPj4gYXJtLHZleHByZXNzLHNpdGUgcHJvcGVydHkg
WzFdLiBXaXRoIHRoaXMgcGF0Y2ggdGhlIGZpcnN0IHBhcmVudCBub2RlCj4gPj4gd2l0aCB0aGF0
IHByb3BlcnR5IGl0IGZpbmRzIGlzIG5vdyB0aGUgcm9vdCBub2RlLCB3aXRoIHRoZSB3cm9uZyBz
aXRlIElECj4gPj4gKDB4ZiBpbnN0ZWFkIG9mIDB4MCkuIFNvIGl0IHF1ZXJpZXMgdGhlIHdyb25n
IGNsb2NrcyAodGhvc2UgSURzIGFyZQo+ID4+IGFjdHVhbGx5IHJlc2VydmVkIHRoZXJlKSwgYW5k
IFFFTVUgcmVwb3J0cyBiYWNrICIwIiwgY29uc2VxdWVudGx5IFsyXS4KPiA+PiBGaW5kaW5nIGEg
Y2xvY2sgZnJlcXVlbmN5IGluIHRoZSByYW5nZSBvZiBbMCwgMF0gd29uJ3QgZ2V0IHZlcnkgZmFy
Lgo+ID4+Cj4gPj4gUG9zc2libGUgc29sdXRpb25zIGFyZToKPiA+PiAxKSBKdXN0IGtlZXAgdGhl
IG1jYyBhbmQgaXRzIGNoaWxkcmVuIGF0IHdoZXJlIGl0IGlzIGluIG1haW5saW5lIHJpZ2h0Cj4g
Pj4gbm93LCBzbyAqcGFydGx5KiByZXZlcnRpbmcgdGhpcyBwYXRjaC4gVGhpcyBoYXMgdGhlIHBy
b2JsZW0gb2Ygc3RpbGwKPiA+PiBwcm9kdWNpbmcgYSBkdGMgd2FybmluZywgc28ga2luZCBvZiBk
ZWZlYXRzIHRoZSBwdXJwb3NlIG9mIHRoaXMgcGF0Y2guCj4gPj4KPiA+PiAyKSBBZGQgYSAiYXJt
LHZleHByZXNzLHNpdGUgPSA8MD47IiBsaW5lIHRvIHRoZSAibWNjIiBub2RlIGl0c2VsZi4KPiA+
PiBXb3JrcywgYnV0IGxvb2tzIHNvbWV3aGF0IGRvZGd5LCBhcyB0aGUgbWNjIG5vZGUgc2hvdWxk
IHJlYWxseSBiZSBhCj4gPj4gY2hpbGQgb2YgdGhlIG1vdGhlcmJvYXJkIG5vZGUsIGFuZCB3ZSBz
aG91bGQgbm90IGhhY2sgYXJvdW5kIHRoaXMuCj4gPj4KPiA+PiAzKSBEaWcgZGVlcGVyIGFuZCBm
aXggdGhlIERUIGluIGEgd2F5IHRoYXQgbWFrZXMgZHRjIGhhcHB5LiBNaWdodAo+ID4+IGludm9s
dmUgKGR1bW15PykgcmFuZ2VzIG9yIHJlZyBwcm9wZXJ0aWVzLiBNeSBndXQgZmVlbGluZyBpcyB0
aGF0Cj4gPj4gYXJtLHZleHByZXNzLXN5c3JlZyxmdW5jIHNob3VsZCByZWFsbHkgaGF2ZSBiZWVu
ICJyZWciIGluIHRoZSBmaXJzdAo+ID4+IHBsYWNlLCBidXQgdGhhdCdzIHRvbyBsYXRlIHRvIGNo
YW5nZSBub3csIGFueXdheS4KPiA+Pgo+ID4+IEkgd2lsbCBwb3N0IDIpIGFzIGEgZml4IGlmIDMp
IHR1cm5zIG91dCB0byBiZSBub3QgZmVhc2libGUuCj4gPgo+ID4gSSB3b3VsZCBqdXN0IGRvIDEp
Lgo+ID4KPiA+IFRvIHNvbWUgZXh0ZW50LCB0aGUgd2FybmluZ3MgYXJlIGZvciBhdm9pZGluZyBw
b29yIGRlc2lnbiBvbiBuZXcKPiA+IGJpbmRpbmdzLiBXZSBuZWVkIGEgd2F5IHRvIGRpc3Rpbmd1
aXNoIGJldHdlZW4gZXhpc3RpbmcgYm9hcmRzIGFuZCBuZXcKPiA+IG9uZXMuIE1heWJlIGR0cyBu
ZWVkcyB0byBsZWFybiBzb21lIHdhcm5pbmcgZGlzYWJsZSBhbm5vdGF0aW9ucyBvciB3ZQo+ID4g
bmVlZCBwZXIgdGFyZ2V0IHdhcm5pbmcgc2V0dGluZ3MgKERUQ19GTEFHU19mb28uZHRiID8pLiBP
ciBtYXliZSB0aGlzCj4gPiBjaGVjayBpcyBqdXN0IHRvbyBzdHJpY3QuCj4KPiBTbyBJIHdhcyBh
bHdheXMgd29uZGVyaW5nIGFib3V0IHRoaXMgY2hlY2ssIGFjdHVhbGx5LiBBIHNpbXBsZS1idXMK
PiBkZXNjcmliZXMgYSBidXMgd2hpY2ggaXMgbWFwcGVkIGludG8gdGhlIENQVSBhZGRyZXNzIHNw
YWNlIChpbiBjb250cmFzdAo+IHRvIHNheSBhbiBJMkMgYnVzLCBmb3IgaW5zdGFuY2UpLiBTbyBj
aGlsZHJlbiBvZiB0aGlzIGJ1cyBub2RlIHR5cGljYWxseQo+IGhhdmUgYSByZWcgcHJvcGVydHku
Cj4KPiBOb3cgYWxzbyB0aG9zZSBzaW1wbGUtYnVzIG5vZGVzIHNlZW0gdG8gYmUgdXNlZCB0byBs
b2dpY2FsbHkgZ3JvdXAKPiBoYXJkd2FyZSBpbiBhIERUIChzZWUgdGhpcyAibW90aGVyYm9hcmQi
IG5vZGUgaGVyZSkuICpJZiogd2UgZ28gd2l0aAo+IHRoaXMsIHdlIHNob3VsZCBhbHNvIGFsbG93
IG90aGVyIHN1Ym5vZGVzLCBmb3IgaW5zdGFuY2UgZml4ZWQtY2xvY2tzOgo+IGFmdGVyIGFsbCB0
aGVyZSBpcyBwcm9iYWJseSBhbiBhY3R1YWwgZml4ZWQgY3J5c3RhbCBvc2NpbGxhdG9yIG9uIHRo
ZQo+IG1vdGhlcmJvYXJkLCBzbyBpdCB3b3VsZCBhbHNvIGJlbG9uZyBpbiB0aGVyZS4KClllcywg
dGhhdCdzIHByb2JhYmx5IHJpZ2h0LiBXZSdkIHdhbnQgdGhpbmdzIGdyb3VwZWQgaWYgdGhpcyB3
YXMKc29tZXRoaW5nIGFwcGxpZWQgYXMgYW4gb3ZlcmxheS4KCj4gSSBzZWUgdGhhdCAoYWIpdXNp
bmcgc2ltcGxlLWJ1cyBmb3IgKmp1c3QqIGdyb3VwaW5nIG5vZGVzIGlzIHByb2JhYmx5Cj4gbm90
IGEgZ29vZCBkZXNpZ24sIGJ1dCBJIGRvbid0IHNlZSB3aHkgKmV2ZXJ5KiBjaGlsZCBtdXN0IGJl
IG1hcHBlZCBpbnRvCj4gdGhlIGFkZHJlc3Mgc3BhY2UuCj4KPiBNYXliZSBkdGMncyBzaW1wbGUt
YnVzIGNoZWNrIHNob3VsZCBpbmRlZWQgYmUgcmVsYXhlZCwgdG8ganVzdCByZXF1aXJlCj4gKmF0
IGxlYXN0IG9uZSogY2hpbGQgd2l0aCBhIHJlZyBvciByYW5nZXMgcHJvcGVydHksIGJ1dCBhbHNv
IGFsbG93IG90aGVyCj4gbm9kZXM/CgpJdCdzIG1hZGUgeW91IHRoaW5rIGFib3V0IHRoZSBwcm9w
ZXIgbG9jYXRpb24sIHNvIGl0J3MgYWNjb21wbGlzaGVkCml0cyBnb2FsLiBNYXliZSB0aGlzIGlz
IG9uZSB0aGF0J3Mgbm90IHdpdGhvdXQgZmFsc2UgcG9zaXRpdmVzLiBJdAp3b3VsZCBiZSBnb29k
IHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4gd2hhdCdzIGZvciBzdXJlIGEgd2FybmluZyBhbmQKd2hh
dCdzIG1heWJlIGEgd2FybmluZyBhcyBqdXN0IGJsaW5kbHkgZml4aW5nIHRoZSB3YXJuaW5nIGlz
IG5vdCB0aGUKYW5zd2VyLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
