Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321B51C7377
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GrT0/i2vfXg1GxsuCaFXgHEUVNz/t+/GQcIJsDkVTSA=; b=pH8XQr/+sN08+c
	wAhTjEjjcr6SBvve4Dk4l8qEBbo3Ry+wXrOetVO1xzCGNhWt87R159nuMvt4RvhVip8DziHNa2UiL
	pVmuEQMaVFExliYYpKY+EZn+xN0a1FISQmom8540D07HLdpm1T5oMp8H6vGailiOLGcSzxzjdI5f6
	8ZH+5z4Ur9KpRZ1sGDybA8DjHpsbDDrZncFUvMswgTgc7yd2z4JuymIazHor4dbwaCoFjq/aWO+ao
	7YYFYgitMA2qocl4V2H/9sZAie0jNTZZ+Lc8kEoicBr95UKfe3mKnI5YEbyOj/SAXnmyh1aOLJKAa
	zIx5dmyntPybG88Uaxhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLV6-0005Ar-Qm; Wed, 06 May 2020 14:58:20 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLUw-0005AH-MA
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:58:12 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HKTX19p1z1tBxW;
 Wed,  6 May 2020 16:58:08 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HKTX0WZ9z1qv7v;
 Wed,  6 May 2020 16:58:08 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 8prpPn8b4VFT; Wed,  6 May 2020 16:58:06 +0200 (CEST)
X-Auth-Info: joOXOhu0ZLlQ4TzH0UKzkHH/FQ3E3yfdX4rqUl0Du5E=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  6 May 2020 16:58:06 +0200 (CEST)
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200429163743.67854-1-marex@denx.de>
 <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
 <1d9cbde1-2be1-f54e-7c65-202f2bc7e0a9@denx.de>
 <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
 <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
 <c012b356-c935-3536-a3eb-0683f4339dda@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <dde82c6c-ec30-ad28-406d-4bd955c670c0@denx.de>
Date: Wed, 6 May 2020 16:58:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c012b356-c935-3536-a3eb-0683f4339dda@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_075811_021827_1C3E6A5C 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS82LzIwIDQ6NTUgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gCj4gCj4gT24gNS82
LzIwIDQ6MzkgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+PiBPbiA1LzYvMjAgNDoyNiBQTSwgQWxl
eGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+Cj4+Pgo+Pj4KPj4+PiBBbGwgcmlnaHQsIHRoYW5rcy4K
Pj4+Pgo+Pj4+IGJ0dyBJIGhhZCB0aGlzIGludGVybmFsIGRpc2N1c3Npb24gbm93IGFib3V0IGhh
bmRsaW5nIHRoZSBjb21iaW5hdG9yaWFsCj4+Pj4gZXhwbG9zaW9uIG9mIGJvYXJkIERUcyBoZXJl
LiBJZiB3ZSBzdXBwb3J0IHRoZW0gYWxsLCBieSB0aGUgZW5kIG9mIHRoZQo+Pj4+IGxpZmVzcGFu
IG9mIHRoZXNlIGRldmljZXMsIHdlIGVuZCB1cCB3aXRoOgo+Pj4+Cj4+Pj4gU1RNMzJNUDE1ezEs
Myw3fXthLGMsZCxmfSBTb00gcmV2LiB7MC4uN30wMCBvbiBiYXNlYm9hcmQgcmV2LiB7MC4uN30w
MC4KPj4+Pgo+Pj4+IFRoZXJlIHdvbid0IGJlIGV2ZXJ5IFNvTSBhbmQgYmFzZWJvYXJkIHJldmlz
aW9uIGNvbWJpbmF0aW9uIGFsbCByaWdodC4KPj4+PiBCdXQgZXZlbiB0aGUgYW1vdW50IG9mIFNv
TSBvcHRpb25zIGdpdmVzIG1lIDEyIERUcy4gVGhhdCBpcyBub3QgYSBsb3cKPj4+PiBudW1iZXIu
IERvZXMgU1QgaGF2ZSBzb21lIHBsYW4gdG8gaGFuZGxlIHN1Y2ggc2l0dWF0aW9uID8KPj4+Cj4+
PiBZZXMgSSBoYXZlIHRoZSBzYW1lIHBvaW50IGluIG1pbmQuIEhvdyB0byBtYWludGFpbiBhbGwg
Ym9hcmRzID8gU2hvdWxkCj4+PiB3ZSByZWZ1c2Ugc29tZSBib2FyZHMgYW5kIG9ubHkga2VlcCBv
bmUgYXMgZXhhbXBsZSA/Cj4+Cj4+IEJ1dCB3aGljaCBvbmVzIGRvIHlvdSB3YW50IHRvIGRyb3A/
IFRoZSBwZGsyIGlzIGEgZGV2a2l0ICwgc28geW91IGNhbgo+PiBwdXQgaW4gYW55IFNvTSBvcHRp
b24sIHRoYXQncyB0aGUgcHJvYmxlbS4KPiAKPiBPayBidXQgd2UgY291bGQgY2hvaWNlIHRvIGJ1
aWxkIG9ubHkgb25lIChvciBmZXcpIHBvc3NpYmlsaXRpZXMuIEkgbWVhbgo+IG1heWJlIG9ubHkg
bXAxNTcgPwoKQnV0IHRoYXQgb25lIGlzbid0IGdvbm5hIHdvcmsgZm9yIGUuZy4gMTUzIHRoZW4s
IHdvdWxkIGl0PwoKPj4+PiBJIGNhbiBpbWFnaW5lIHRoYXQgVS1Cb290IGNhbiBwYXRjaCB0aGUg
RFQgYW5kIGVuYWJsZS9kaXNhYmxlCj4+Pj4gZnVuY3Rpb25hbGl0eSAsIHdoaWNoIGNvdWxkIGhh
bmRsZSB0aGUge2EsYyxkLGZ9IG9wdGlvbnMgYW5kIHJlZHVjZSB0aGUKPj4+PiBhbW91bnQgb2Yg
RFRzLiBJdCBjb3VsZCBwb3NzaWJseSBhbHNvIGhhbmRsZSB0aGUgezEsMyw3fSBvcHRpb25zLgo+
Pj4+Cj4+Pgo+Pj4gSXQgaXMgc29tZXRoaW5nIEkgZGlzY3Vzc2VkIHdpdGggS2V2aW4gSGlsbWFu
IGF0IEVMQ0UgYW5kIHNvbWV0aW1lIHdpdGgKPj4+IFJvYiBvbiBJSVJjLiBXZSBjb3VsZCB1c2Ug
dS1ib290IHRvIGhhbmRsZSBkaWZmZXJlbmNlcyBiZXR3ZWVuIFNvQywgYW5kCj4+PiBib2FyZHMu
IFRlY2huaWNhbGx5IGl0J3MgcG9zc2libGUgYnV0IHRoZSBtYWluIGlzc3VlIGRvaW5nIHRoYXQg
aXMswqAgeW91Cj4+PiB3aWxsIGhpZGUgc29tZSB1cGRhdGVzIGluIHlvdXIgYm9vdGxvYWRlciBh
bmQgdGhlbiB5b3VyIGR0YiB1c2VkIGJ5Cj4+PiBrZXJuZWwgd2lsbCBub3QgcmVmbGVjdCB5b3Vy
IGR0cyBmaWxlLiBJdCBjb3VsZCBiZSBjb25mdXNlZCBmb3IKPj4+IGN1c3RvbWVycyBhbmQgdXNl
cnMuCj4+Cj4+IFllcy4KPj4KPj4+PiBBbnkgb3RoZXIgaWRlYXMgPwo+Pj4KPj4+IFdoYXQgaXMg
Zm9yIHlvdSB0aGUgbWFpbiBpc3N1ZSA/IHRoZSBudW1iZXIgb2YgZmlsZXMgdG8gYWRkIG9yIGhv
dyB0bwo+Pj4gbWFpbnRhaW4gYWxsIHRob3NlIGZpbGVzID8KPj4KPj4gVGhlIG51bWJlci4gTWFp
bnRhaW5pbmcgdGhlbSBpcyBub3QgdGhhdCBtdWNoIG9mIGEgcHJvYmxlbS4KPiAKPiBJIGFncmVl
Cj4gCj4+Cj4+PiBJZiBpdCBpcyB0aGUgbnVtYmVyIG9mIGZpbGVzIHRvIGFkZCwgd2UgY2FuIHRo
aW5rIGFib3V0IHNldmVyYWwgd2F5czoKPj4+Cj4+PiAxLUFzIG1lbnRpb25lZCBhYm92ZSwgdG8g
b25seSBrZWVwIGtpbmQgb2YgcmVmZXJlbmNlIHBsYXRmb3Jtcwo+Pj4KPj4+IDItSGF2ZSB2ZW5k
b3IgZGlyZWN0b3JpZXMgaW4gYXJjaC9hcm0vYm9vdC9kdHMgKGJ1dCBpdCdzIGFub3RoZXIgc3Rv
cnkKPj4+IHRvIG1ha2UgaXQgYWNjZXB0ZWQpCj4+Cj4+IE1heWJlIHRoYXQncyBzb21ldGhpbmcg
d2Ugc2hvdWxkIGNvbnNpZGVyIGZvciBhcm0zMiwgYnV0IHRoYXQncyBhCj4+IGRpZmZlcmVudCBk
aXNjdXNzaW9uIGFsdG9nZXRoZXIuCj4gCj4gSSBnb25uYSBzZWUgaG93IHRvIHN0YXJ0IGRpc2N1
c3Npb24gb24gdGhhdCAobWF5YmUgdGhhbmtzIHRvIExpbmFybyBhbmQKPiBkZXZpY2UgdHJlZSBl
dm9sdXRpb24pCgpBbGwgcmlnaHQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
