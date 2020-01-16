Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A7813DD7E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:34:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGA/bg7CEnGvXJS1yxO2S5mUt/94Sv5r8ICa1OWdAY0=; b=uOVjaVsQ1ty5an
	Urld3daNMFw+cEKUevmjvr2COe11cdAldsuBwVQPXmJwTAhLQcaRU0yFbVTMEGQ2L7Y8IvJxZUZeO
	aefHHfGBBEK2k6rUjP/vRfKTqz6tZHW9v3X02ZXy/MqtPkufUn5K9r8zKAPNjX8DWrWWklvfU8+c2
	3jfEZ9G4PzY6fpjIOsYmkj7cF7pBQPrxzSm4mSuklSx+Q77E9x/7UqV0VbI+SpzTOmx1L/j82NfP+
	zO/v8LFTWNhK2l4tL/mP5nDfXg5kUAgfZfXrvblW1gBIlg/E6ruoP6ylVlzdgXQSae43/BfJq/dYY
	5aMBc5HZ0RIEiM3exN6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is6De-0004TC-5E; Thu, 16 Jan 2020 14:33:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is6DP-0004SJ-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 14:33:48 +0000
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
 [209.85.219.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 200BC2087E
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 14:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579185223;
 bh=zCTzRzpxW45hf9zhu97cl/HH/TkaKoXKxG33ubUlcis=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=lzvmVPxC0YoX1GCXF9xUvPrjSs4rABccejlMEYJBJejJBHBYBFbLHbl9I1uSYPV0s
 3EY+xd0XAuDU9RZq3eOwaUXPY3w86rI2ei6fInbAhyjKcskoR3Ss6JG1AD0V/OTu72
 nbcIyHgK5xQvFUJjrWjxwTqxbhEM7tjwPVQtLOqo=
Received: by mail-qv1-f52.google.com with SMTP id f16so9135469qvi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 06:33:43 -0800 (PST)
X-Gm-Message-State: APjAAAWJ6IcleZYXF44XcabZ70mgqDy6W1HdoQh1fod28bJs/jpzTP7N
 TulJUitfXu8ud2JQyfs3vq409AYLBAfdOUbnSw==
X-Google-Smtp-Source: APXvYqxpzOz30rqleYyMHf6/FcDEmshzxEl/xINJJW+FtV85eSNgGaPEZdKTK/HozyW+hT6davB/mrOR0U63bbSIPFg=
X-Received: by 2002:ad4:450a:: with SMTP id k10mr2710244qvu.136.1579185222222; 
 Thu, 16 Jan 2020 06:33:42 -0800 (PST)
MIME-Version: 1.0
References: <20200110134823.14882-1-ludovic.barre@st.com>
 <20200110134823.14882-6-ludovic.barre@st.com>
 <20200115145645.GA599@bogus> <2ce63f11-8b0c-8261-63fa-cd19e874c537@st.com>
In-Reply-To: <2ce63f11-8b0c-8261-63fa-cd19e874c537@st.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 16 Jan 2020 08:33:30 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJMGY-n07e81iAsj+P7wPHFojBerNnjx8vtvqLTDA7yEw@mail.gmail.com>
Message-ID: <CAL_JsqJMGY-n07e81iAsj+P7wPHFojBerNnjx8vtvqLTDA7yEw@mail.gmail.com>
Subject: Re: [PATCH 5/9] dt-bindings: mmc: mmci: add delay block base register
 for sdmmc
To: Ludovic BARRE <ludovic.barre@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_063344_057753_7F5DF517 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMTYsIDIwMjAgYXQgMzoyMSBBTSBMdWRvdmljIEJBUlJFIDxsdWRvdmljLmJh
cnJlQHN0LmNvbT4gd3JvdGU6Cj4KPiBIaSBSb2IKPgo+IExlIDEvMTUvMjAgw6AgMzo1NiBQTSwg
Um9iIEhlcnJpbmcgYSDDqWNyaXQgOgo+ID4gT24gRnJpLCBKYW4gMTAsIDIwMjAgYXQgMDI6NDg6
MTlQTSArMDEwMCwgTHVkb3ZpYyBCYXJyZSB3cm90ZToKPiA+PiBUbyBzdXBwb3J0IHRoZSBzZHIx
MDQgbW9kZSwgdGhlIHNkbW1jIHZhcmlhbnQgaGFzIGEKPiA+PiBoYXJkd2FyZSBkZWxheSBibG9j
ayB0byBtYW5hZ2UgdGhlIGNsb2NrIHBoYXNlIHdoZW4gc2FtcGxpbmcKPiA+PiBkYXRhIHJlY2Vp
dmVkIGJ5IHRoZSBjYXJkLgo+ID4+Cj4gPj4gVGhpcyBwYXRjaCBhZGRzIGEgc2Vjb25kIGJhc2Ug
cmVnaXN0ZXIgKG9wdGlvbmFsKSBmb3IKPiA+PiBzZG1tYyBkZWxheSBibG9jay4KPiA+Pgo+ID4+
IFNpZ25lZC1vZmYtYnk6IEx1ZG92aWMgQmFycmUgPGx1ZG92aWMuYmFycmVAc3QuY29tPgo+ID4+
IC0tLQo+ID4+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWNpLnR4
dCB8IDIgKysKPiA+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiA+Pgo+ID4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tY2ku
dHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21tYy9tbWNpLnR4dAo+ID4+
IGluZGV4IDZkM2M2MjZlMDE3ZC4uNGVjOTIxZTRiZjM0IDEwMDY0NAo+ID4+IC0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jaS50eHQKPiA+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tY2kudHh0Cj4gPj4gQEAgLTI4LDYg
KzI4LDggQEAgc3BlY2lmaWMgZm9yIHV4NTAwIHZhcmlhbnQ6Cj4gPj4gICAtIHN0LHNpZy1waW4t
ZmJjbGsgICAgICAgOiBmZWVkYmFjayBjbG9jayBzaWduYWwgcGluIHVzZWQuCj4gPj4KPiA+PiAg
IHNwZWNpZmljIGZvciBzZG1tYyB2YXJpYW50Ogo+ID4+ICstIHJlZyAgICAgICAgICAgICAgICAg
ICAgICAgIDogYSBzZWNvbmQgYmFzZSByZWdpc3RlciBtYXkgYmUgZGVmaW5lZCBpZiBhIGRlbGF5
Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIGJsb2NrIGlzIHByZXNlbnQgYW5kIHVz
ZWQgZm9yIHR1bmluZy4KPiA+Cj4gPiBXaGljaCBjb21wYXRpYmxlcyBoYXZlIGEgMm5kIHJlZyBl
bnRyeT8KPgo+IEluIGZhY3QsIG1tY2kgZHJpdmVyIGlzIEFSTSBBbWJhIGRyaXZlciAoYXJtLHBy
aW1lY2VsbCkgYW5kIGhhcyBvbmx5IG9uZQo+IGNvbXBhdGlibGUgImFybSxwbDE4eCIuCj4gVGhl
IHZhcmlhbnRzIGFyZSBpZGVudGlmaWVkIGJ5IHByaW1lY2VsbC1wZXJpcGhpZCBwcm9wZXJ0eQo+
IChkaXNjb3ZlcmVkIGF0IHJ1bnRpbWUgd2l0aCBIVyBibG9jayByZWdpc3RlciBvciBkZWZpbmVk
IGJ5Cj4gZGV2aWNlIHRyZWUgcHJvcGVydHkgImFybSxwcmltZWNlbGwtcGVyaXBoaWQiKS4KPgo+
IFRoZSBkZWZhdWx0cyAiYXJtLHBsMTh4IiB2YXJpYW50cyBoYXZlIG9ubHkgb25lIGJhc2UgcmVn
aXN0ZXIsCj4gYnV0IHRoZSBTRE1NQyBuZWVkIGEgc2Vjb25kIGJhc2UgcmVnaXN0ZXIgZm9yIHRo
ZXNlCj4gZGVsYXkgYmxvY2sgcmVnaXN0ZXJzLgo+Cj4gZXhhbXBsZSBvZiBzZG1tYyBub2RlOgo+
ICAgICAgICAgc2RtbWMxOiBzZG1tY0A1ODAwNTAwMCB7Cj4gICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAiYXJtLHBsMTh4IiwgImFybSxwcmltZWNlbGwiOwo+ICAgICAgICAgICAgICAgICBh
cm0scHJpbWVjZWxsLXBlcmlwaGlkID0gPDB4MDAyNTMxODA+Owo+ICAgICAgICAgICAgICAgICBy
ZWcgPSA8MHg1ODAwNTAwMCAweDEwMDA+LCA8MHg1ODAwNjAwMCAweDEwMDA+Owo+ICAgICAgICAg
fTsKPgo+IHdoYXQgZG8geW91IGFkdmlzZT8KCkkgbWlzc2VkIHRoYXQgdGhpcyBpcyBhIHByaW1l
Y2VsbCBibG9jay4gSnVzdCBnaXZlIHNvbWUgaW5kaWNhdGlvbgp3aGljaCB2YXJpYW50cyBoYXZl
IHRoaXMgMm5kIHJhbmdlLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
