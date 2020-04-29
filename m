Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 018E91BE428
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 18:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQxinKHgCkauWOxR+0F4V2h173eMsueaNsDwlk0c1t8=; b=bLXdEmkT8GBMJv
	SHbVuYxkfez83UHM+91BKCL4jNDJa2rBxCWZ0peITYK41kqAR1rDVt46DCebMQgiKYGSfmU2oJr8U
	s0Ic3bYdPwHwADekcJSitNNx5t1gi+mN++h0rLp/iA/5SnnaKndKqnvmdrifjJ+MNLEFvnxX/uPQv
	v5ADcx3n+6KnlLj/wFYaq895qomdXak/IKGCzcHl9IkEr17wIOu7azc7u3OdE7dkkvUkKhDbeYwYu
	oLVqIQRmWdVm4dVgRhjQ9N8/DciFukQbBJxIrmbkbKcN+PMs/dEf2vs6ctKkQdZwB+/vfnFbSdFj0
	ZHa/ANFUBOkWzTOx4KQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTpnD-0003Pn-K7; Wed, 29 Apr 2020 16:42:39 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTplP-00025Q-6D
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 16:40:49 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49C4596Bjfz1rs2Q;
 Wed, 29 Apr 2020 18:40:45 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49C4595GR0z1qqkP;
 Wed, 29 Apr 2020 18:40:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 5BMjDKLmcYFg; Wed, 29 Apr 2020 18:40:44 +0200 (CEST)
X-Auth-Info: 2OILK8JRk7oanegYFOtEzRhOZ8gy2ta3xQ80DatFi0U=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 29 Apr 2020 18:40:44 +0200 (CEST)
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200422104613.96944-1-marex@denx.de>
 <e47b72fc-9591-021d-7abc-14a7166a4845@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <9a5d29a4-14ae-1e4f-68fe-21e4f619625d@denx.de>
Date: Wed, 29 Apr 2020 18:40:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e47b72fc-9591-021d-7abc-14a7166a4845@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_094047_396603_8A0B4EF3 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

T24gNC8yOS8yMCA5OjU2IEFNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IEhpIE1hcmVrCj4g
Cj4gT24gNC8yMi8yMCAxMjo0NSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IFRoZSBBVjk2IGJv
YXJkIGRldmljZSB0cmVlIGlzIGNvbXBsZXRlbHkgYnJva2VuIGFuZCBkb2VzIG5vdCBtYXRjaCB0
aGUKPj4gaGFyZHdhcmUuIFRoaXMgc2VyaWVzIGZpeGVzIGl0IHVwLgo+Pgo+PiBNYXJlayBWYXN1
dCAoMjApOgo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIFBNSUMgY29uZmlndXJhdGlv
biBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgUE1JQyBpbnRlcnJ1cHQg
b24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9y
IGV0aGVybmV0IFJHTUlJCj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgZXRoZXJuZXQg
b3BlcmF0aW9uIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBtaXNzaW5nIGV0
aGVybmV0IFBIWSByZXNldCBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgbWlz
c2luZyBldGhlcm5ldCBQSFkgc2tld3Mgb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjog
QWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIFNETU1DIHBpbnMKPj4gwqDCoCBBUk06IGR0czogc3Rt
MzI6IFJlcGFpciBTRE1NQzEgb3BlcmF0aW9uIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3Rt
MzI6IEFkZCBlTU1DIGF0dGFjaGVkIHRvIFNETU1DMiBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6
IHN0bTMyOiBBZGQgUVNQSSBOT1Igb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRk
IGNvbmZpZ3VyYXRpb24gRUVQUk9NIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEVu
YWJsZSBXaUZpIG9uIEFWOTYKPj4gwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUg
cGlubXV4IGZvciBVU0FSVDIgcGlucwo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogRW5hYmxlIEJs
dWV0b290aCBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBp
bm11eCBmb3IgTFREQyBwaW5zCj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmluZGluZ3Mg
Zm9yIEhETUkgdmlkZW8gb24gQVY5Ngo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFsdGVy
bmF0ZSBwaW5tdXggZm9yIFNBSTIgcGlucwo+PiDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGJp
bmRpbmdzIGZvciBhdWRpbyBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmlu
ZGluZ3MgZm9yIFVTQiBvbiBBVjk2Cj4+IMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZW5hbWUgTEVE
cyB0byBtYXRjaCBzaWxrc2NyZWVuIG9uIEFWOTYKPj4KPj4gwqAgYXJjaC9hcm0vYm9vdC9kdHMv
c3RtMzJtcDE1LXBpbmN0cmwuZHRzacKgwqDCoCB8IDI4MCArKysrKysrKysrKysrKysrKwo+PiDC
oCBhcmNoL2FybS9ib290L2R0cy9zdG0zMm1wMTU3YS1hdmVuZ2VyOTYuZHRzIHwgMzI0ICsrKysr
KysrKysrKysrKysrKy0tCj4+IMKgIDIgZmlsZXMgY2hhbmdlZCwgNTcyIGluc2VydGlvbnMoKyks
IDMyIGRlbGV0aW9ucygtKQo+Pgo+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRv
cmd1ZUBzdC5jb20+Cj4+IENjOiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2Fk
aGFzaXZhbUBsaW5hcm8ub3JnPgo+PiBDYzogTWF4aW1lIENvcXVlbGluIDxtY29xdWVsaW4uc3Rt
MzJAZ21haWwuY29tPgo+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRAc3Qu
Y29tPgo+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+Cj4+
IENjOiBsaW51eC1zdG0zMkBzdC1tZC1tYWlsbWFuLnN0b3JtcmVwbHkuY29tCj4+IFRvOiBsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4KPiAKPiBTZXJpZXMgYXBwbGllZCBv
biBzdG0zMi1uZXh0LgoKVGhhbmtzLiBJIHNlbnQgb3V0IHRoZSByZXN0LCB3aGljaCBzaG91bGQg
YmUgdmVyeSBtdWNoIGFsbCB0aGVyZSBpcyBmb3IKbm93IDopCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
