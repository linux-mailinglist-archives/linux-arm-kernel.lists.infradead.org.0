Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C2E16EDB1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 19:16:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WMNK7Ndxw7h5dES82MJCN2V9Lfp4gGm3tr4ex9gVmpk=; b=GZR5EqKzoyFqiQ
	q0fMqp5cj+GO4ZrUu8+O1CgahC4Z3pf3JI25zbe5X7qoD4up+6puJhpO9Gwt3BOWaUG94ufsjOLlV
	/+/bEH+ybAL4VPrQ9QKHOlqy8EVh6ETdw8bwtOyTmgZx1jlCbL7vZacuO2YkL9b0Y5e4VyasAH3mV
	AQMGddowO0iX23+6ChJIFfDKU8MoYYm/CO1ro+sGscCmZSUR8XErXdxx0fIDXuajQuVkXhRAHk6Jk
	TLAF+e5sjpg8ENJVkr+TYai9BY1BwpdruokeSbc7Ksj9qt4J2f7jV8CDyKWz2YDyWUWFHdMuLgBIj
	sT2SEtR2VISKlWYq8fbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ekL-0003IC-BI; Tue, 25 Feb 2020 18:15:53 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ekC-0003H7-DZ
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 18:15:46 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48RnDC0GFRz1rnJD;
 Tue, 25 Feb 2020 19:15:39 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48RnDB6d0Cz1qx0G;
 Tue, 25 Feb 2020 19:15:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 6zuKGk_WylJD; Tue, 25 Feb 2020 19:15:36 +0100 (CET)
X-Auth-Info: 0IT4touvBjLmexdqSPYTkmvc17BwmPthOHw0G0rfafg=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Tue, 25 Feb 2020 19:15:36 +0100 (CET)
Subject: Re: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
To: Patrick DELAUNAY <patrick.delaunay@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
 <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
 <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
 <5efd7978050e48d783d10c989b5e78f5@SFHDAG6NODE3.st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <2f38781f-cf13-fa25-5585-c22d088d0a03@denx.de>
Date: Tue, 25 Feb 2020 18:56:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <5efd7978050e48d783d10c989b5e78f5@SFHDAG6NODE3.st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_101544_607037_6905714F 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Patrice CHOTARD <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMi8yNC8yMCA5OjM1IEFNLCBQYXRyaWNrIERFTEFVTkFZIHdyb3RlOgo+IEhpIE1hcmVrLAoK
SGksCgo+PiBGcm9tOiBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5kZT4KPj4gU2VudDogZGltYW5j
aGUgMjMgZsOpdnJpZXIgMjAyMCAxNTozOAo+Pgo+PiBPbiAyLzEwLzIwIDU6MzUgUE0sIEFsZXhh
bmRyZSBUb3JndWUgd3JvdGU6Cj4+PiBIaSBNYXJlawo+Pgo+PiBIaSwKPj4KPj4+IE9uIDEvMTkv
MjAgODoxMSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4gQWRkIHN1cHBvcnQgZm9yIERIIEVs
ZWN0cm9uaWNzIERIQ09NIFNvTSBhbmQgUERLMiByZXYuIDQwMCBjYXJyaWVyCj4+Pj4gYm9hcmQu
IFRoaXMgaXMgYW4gU29NIHdpdGggU1RNMzJNUDE1N0MgYW5kIGFuIGV2YWx1YXRpb24ga2l0LiBU
aGUKPj4+PiBiYXNlYm9hcmQgcHJvdmlkZXMgRXRoZXJuZXQsIFVBUlQsIFVTQiwgQ0FOIGFuZCBv
cHRpb25hbCBkaXNwbGF5Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTWFyZWsgVmFzdXQgPG1h
cmV4QGRlbnguZGU+Cj4+Pj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhhbmRyZS50b3JndWVA
c3QuY29tPgo+Pj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5zdG0zMkBnbWFpbC5j
b20+Cj4+Pj4gQ2M6IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmljZS5jaG90YXJkQHN0LmNvbT4KPj4+
PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5jb20+Cj4+Pj4gQ2M6
IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+PiBUbzogbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gLS0tCj4+Pj4gVjI6IC0gQWRkIHN0
bTMybXAxIGludG8gdGhlIHN1YmplY3QgYW5kIGNvbW1pdCBtZXNzYWdlCj4+Pj4gwqDCoMKgwqAg
LSBTb3J0IERUIGFscGhhbnVtZXJpY2FsbHkKPj4+PiDCoMKgwqDCoCAtIE1vdmUgYWxsIHBpbmNv
bnRyb2wgZW50cmllcyBpbnRvIHN0bTMybXAxNS1waW5jdHJsLmR0c2kKPj4+PiAtLS0KPj4+Cj4+
PiBUaGFua3MgdG8gYWRkIGEgbmV3IFNUTTMyIGJvYXJkLgo+Pj4KPj4+IFNlcmllcyBhcHBsaWVk
IG9uIHN0bTMyLW5leHQuCj4+Cj4+IEhvdyBjb21lIHRoZXNlIGFyZSBub3QgaW4gbmV4dC9tYXN0
ZXIgeWV0LCBpcyB0aGUgYnJhbmNoIG5vdCBiZWluZyBtZXJnZWQgaW50bwo+PiBuZXh0IHJlZ3Vs
YXJseSA/Cj4gCj4gVGhpcyBhY2NlcHRlZCBwYXRjaCBpcyBhbHJlYWR5IGluIHN0bTMyLW1hc3Rl
ciwgaW5jbHVkZWQgaW4gbGFzdGVkIHB1bGwgcmVxdWVzdCB1LWJvb3Qtc3RtMzItMjAyMDAyMTQK
PiAKPiBTSEExID0gMTk5NTM3MzA5YmE1M2QyOTRjMzEyODMwNjRkNjNkYWZjOTk1ZmJlZAo+IAo+
IE1lcmdlZCBpbiB1LWJvb3QvbWFzdGVyIGp1c3RlIGFmdGVyIHYyMDIwLjA0LXJjMgoKVGhpcyBp
cyBhIExpbnV4IGtlcm5lbCBwYXRjaHNldCB0aG91Z2ggPwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
