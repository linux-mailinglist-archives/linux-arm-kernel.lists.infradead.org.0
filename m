Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 149A8175F75
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ke3wQL6WlBmheQJmRXy2LiD7Dp1ZSnyNwKUL9TmAeS0=; b=nmfQKoZF/IlafS
	BAtEQjEPZvlOZkvatNL6Y46liKZABCFMSWmY5WWlOQnlacIkojxW5hmWpWl26u6LPtuXtz5hFvOvh
	mcw2Vj/jV1cgqWw3x70thCAz2rv5RjVaeBysRxbnrGaZPxxnMmyk+iv5JgktgCLuZyh1osUmQ1Uht
	47T4GDQiKgadHKdzfMx4ahNYiij6s+qrHiPm39Onf/QUNah2jWx3m0q7957oM0an8EXxBmLSff3RN
	ED+sT9vm6Owl3VdwhF1QL/XmV5w7NicaYtnltpM+PYYZqlJO4WFIlx6KIYLLeheHOT8/KZ2hfg335
	Dy6LP+Hwt1E7Vidm86HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nq8-00016m-Pt; Mon, 02 Mar 2020 16:22:44 +0000
Received: from mail-out.m-online.net ([212.18.0.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nq1-00013Y-Nn
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:22:39 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48WQQw4np3z1rq9j;
 Mon,  2 Mar 2020 17:22:32 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48WQQw43zXz1qqlF;
 Mon,  2 Mar 2020 17:22:32 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id FUkd_oEz5BAG; Mon,  2 Mar 2020 17:22:31 +0100 (CET)
X-Auth-Info: /mgSVaOtHHN+ArB4hRwgEFDX1yr8DchUgbmZ1sPbr4M=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  2 Mar 2020 17:22:31 +0100 (CET)
Subject: Re: [PATCH V2 6/6] ARM: dts: stm32: Add DH Electronics DHCOM STM32MP1
 SoM and PDK2 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200119191143.50033-1-marex@denx.de>
 <20200119191143.50033-6-marex@denx.de>
 <1b288811-8ffb-a150-71ef-4c006e6d5740@st.com>
 <1ec643e9-217d-c83d-793f-c05d6c4502bd@denx.de>
 <46e68418-21c0-b82c-d226-4f5ada0ef351@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <07b15b36-6e68-47db-b2b3-e1e29a3b0399@denx.de>
Date: Mon, 2 Mar 2020 17:22:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <46e68418-21c0-b82c-d226-4f5ada0ef351@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_082237_926571_A849BA96 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.10 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.10 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yLzIwIDI6NDcgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gSGkgTWFyZWsKPiAK
PiBPbiAyLzIzLzIwIDM6MzcgUE0sIE1hcmVrIFZhc3V0IHdyb3RlOgo+PiBPbiAyLzEwLzIwIDU6
MzUgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+PiBIaSBNYXJlawo+Pgo+PiBIaSwKPj4K
Pj4+IE9uIDEvMTkvMjAgODoxMSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4gQWRkIHN1cHBv
cnQgZm9yIERIIEVsZWN0cm9uaWNzIERIQ09NIFNvTSBhbmQgUERLMiByZXYuIDQwMCBjYXJyaWVy
Cj4+Pj4gYm9hcmQuIFRoaXMgaXMgYW4gU29NIHdpdGggU1RNMzJNUDE1N0MgYW5kIGFuIGV2YWx1
YXRpb24ga2l0LiBUaGUKPj4+PiBiYXNlYm9hcmQgcHJvdmlkZXMgRXRoZXJuZXQsIFVBUlQsIFVT
QiwgQ0FOIGFuZCBvcHRpb25hbCBkaXNwbGF5Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTWFy
ZWsgVmFzdXQgPG1hcmV4QGRlbnguZGU+Cj4+Pj4gQ2M6IEFsZXhhbmRyZSBUb3JndWUgPGFsZXhh
bmRyZS50b3JndWVAc3QuY29tPgo+Pj4+IENjOiBNYXhpbWUgQ29xdWVsaW4gPG1jb3F1ZWxpbi5z
dG0zMkBnbWFpbC5jb20+Cj4+Pj4gQ2M6IFBhdHJpY2UgQ2hvdGFyZCA8cGF0cmljZS5jaG90YXJk
QHN0LmNvbT4KPj4+PiBDYzogUGF0cmljayBEZWxhdW5heSA8cGF0cmljay5kZWxhdW5heUBzdC5j
b20+Cj4+Pj4gQ2M6IGxpbnV4LXN0bTMyQHN0LW1kLW1haWxtYW4uc3Rvcm1yZXBseS5jb20KPj4+
PiBUbzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+Pj4gLS0tCj4+Pj4g
VjI6IC0gQWRkIHN0bTMybXAxIGludG8gdGhlIHN1YmplY3QgYW5kIGNvbW1pdCBtZXNzYWdlCj4+
Pj4gwqDCoMKgwqDCoCAtIFNvcnQgRFQgYWxwaGFudW1lcmljYWxseQo+Pj4+IMKgwqDCoMKgwqAg
LSBNb3ZlIGFsbCBwaW5jb250cm9sIGVudHJpZXMgaW50byBzdG0zMm1wMTUtcGluY3RybC5kdHNp
Cj4+Pj4gLS0tCj4+Pgo+Pj4gVGhhbmtzIHRvIGFkZCBhIG5ldyBTVE0zMiBib2FyZC4KPj4+Cj4+
PiBTZXJpZXMgYXBwbGllZCBvbiBzdG0zMi1uZXh0Lgo+Pgo+PiBIb3cgY29tZSB0aGVzZSBhcmUg
bm90IGluIG5leHQvbWFzdGVyIHlldCwgaXMgdGhlIGJyYW5jaCBub3QgYmVpbmcKPj4gbWVyZ2Vk
IGludG8gbmV4dCByZWd1bGFybHkgPwo+Pgo+IAo+IE5vIHRoaXMgYnJhbmNoIGlzIG5vdCBtZXJn
ZWQgcmVndWxhcmx5IGluIG5leHQvbWFzdGVyLiBZb3UnbGwgZ2V0IGl0IGluCj4gNS43LXJjMS4K
CkNhbiB3ZSBpbXByb3ZlIG9uIHRoYXQgPyAoYW5kIHRodXMgaW1wcm92ZSBvbiB0ZXN0aW5nKSA/
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
