Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6341C7301
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 16:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1S970MDBebrB7RhLtsxM+6JW6+YugcTqlNXjHxSvDU=; b=cb/x0nQBnaUpP4
	VPpnh+S9XSqh+zNuRIfxl2fxg+TKHwitBvaWlQ7XqQzIVOrEtM6oRnE4hr1DGHlcBe8S3/t88vmVO
	nlYYef30P2bp4FAbNaai6H9PUQGFHB/6igPEDDRp2XcUJgTh0q/9OAsXjRM+/7oKI1YC+Zt8V0K/F
	Op3g0eG7gilQg7L0xHOBV8fBbBIhIyBChbfNXk2XVKtv2aIjNn3c9NNKloEVOw/8B9Q5mbjOxvqDH
	aAME8j6sAQbxb8IQSSFIpl81naNGI5qR3ES34jXwrSPgbxB6qPGc2YuKumfqxfRx8wLeQhgwYipMA
	omGvaupdBdOTAgPnX0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLCb-0007Na-2N; Wed, 06 May 2020 14:39:13 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLCT-0007Mi-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 14:39:07 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49HK3V73NMz1r56m;
 Wed,  6 May 2020 16:39:02 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49HK3V65qJz1qv7v;
 Wed,  6 May 2020 16:39:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id byY3NckrvQFa; Wed,  6 May 2020 16:39:01 +0200 (CEST)
X-Auth-Info: bqmZQEPBqsSndopr7xYtlaT1XSGwHMI6HrM8T0rQEmY=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  6 May 2020 16:39:01 +0200 (CEST)
Subject: Re: [PATCH 01/12] ARM: dts: stm32: Add alternate pinmux for I2C2 pins
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200429163743.67854-1-marex@denx.de>
 <13aabff1-d4d0-7afb-6a57-a8136e35c6a4@st.com>
 <1d9cbde1-2be1-f54e-7c65-202f2bc7e0a9@denx.de>
 <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <6dc6b79f-2a20-3899-e42f-eabaeb33a829@denx.de>
Date: Wed, 6 May 2020 16:39:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <b100645c-32ac-325d-5838-0fab2c93df22@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_073906_020168_1B67046A 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
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
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNS82LzIwIDQ6MjYgUE0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gCj4gCj4gCj4+IEFs
bCByaWdodCwgdGhhbmtzLgo+Pgo+PiBidHcgSSBoYWQgdGhpcyBpbnRlcm5hbCBkaXNjdXNzaW9u
IG5vdyBhYm91dCBoYW5kbGluZyB0aGUgY29tYmluYXRvcmlhbAo+PiBleHBsb3Npb24gb2YgYm9h
cmQgRFRzIGhlcmUuIElmIHdlIHN1cHBvcnQgdGhlbSBhbGwsIGJ5IHRoZSBlbmQgb2YgdGhlCj4+
IGxpZmVzcGFuIG9mIHRoZXNlIGRldmljZXMsIHdlIGVuZCB1cCB3aXRoOgo+Pgo+PiBTVE0zMk1Q
MTV7MSwzLDd9e2EsYyxkLGZ9IFNvTSByZXYuIHswLi43fTAwIG9uIGJhc2Vib2FyZCByZXYuIHsw
Li43fTAwLgo+Pgo+PiBUaGVyZSB3b24ndCBiZSBldmVyeSBTb00gYW5kIGJhc2Vib2FyZCByZXZp
c2lvbiBjb21iaW5hdGlvbiBhbGwgcmlnaHQuCj4+IEJ1dCBldmVuIHRoZSBhbW91bnQgb2YgU29N
IG9wdGlvbnMgZ2l2ZXMgbWUgMTIgRFRzLiBUaGF0IGlzIG5vdCBhIGxvdwo+PiBudW1iZXIuIERv
ZXMgU1QgaGF2ZSBzb21lIHBsYW4gdG8gaGFuZGxlIHN1Y2ggc2l0dWF0aW9uID8KPiAKPiBZZXMg
SSBoYXZlIHRoZSBzYW1lIHBvaW50IGluIG1pbmQuIEhvdyB0byBtYWludGFpbiBhbGwgYm9hcmRz
ID8gU2hvdWxkCj4gd2UgcmVmdXNlIHNvbWUgYm9hcmRzIGFuZCBvbmx5IGtlZXAgb25lIGFzIGV4
YW1wbGUgPwoKQnV0IHdoaWNoIG9uZXMgZG8geW91IHdhbnQgdG8gZHJvcD8gVGhlIHBkazIgaXMg
YSBkZXZraXQgLCBzbyB5b3UgY2FuCnB1dCBpbiBhbnkgU29NIG9wdGlvbiwgdGhhdCdzIHRoZSBw
cm9ibGVtLgoKPj4gSSBjYW4gaW1hZ2luZSB0aGF0IFUtQm9vdCBjYW4gcGF0Y2ggdGhlIERUIGFu
ZCBlbmFibGUvZGlzYWJsZQo+PiBmdW5jdGlvbmFsaXR5ICwgd2hpY2ggY291bGQgaGFuZGxlIHRo
ZSB7YSxjLGQsZn0gb3B0aW9ucyBhbmQgcmVkdWNlIHRoZQo+PiBhbW91bnQgb2YgRFRzLiBJdCBj
b3VsZCBwb3NzaWJseSBhbHNvIGhhbmRsZSB0aGUgezEsMyw3fSBvcHRpb25zLgo+Pgo+IAo+IEl0
IGlzIHNvbWV0aGluZyBJIGRpc2N1c3NlZCB3aXRoIEtldmluIEhpbG1hbiBhdCBFTENFIGFuZCBz
b21ldGltZSB3aXRoCj4gUm9iIG9uIElJUmMuIFdlIGNvdWxkIHVzZSB1LWJvb3QgdG8gaGFuZGxl
IGRpZmZlcmVuY2VzIGJldHdlZW4gU29DLCBhbmQKPiBib2FyZHMuIFRlY2huaWNhbGx5IGl0J3Mg
cG9zc2libGUgYnV0IHRoZSBtYWluIGlzc3VlIGRvaW5nIHRoYXQgaXMswqAgeW91Cj4gd2lsbCBo
aWRlIHNvbWUgdXBkYXRlcyBpbiB5b3VyIGJvb3Rsb2FkZXIgYW5kIHRoZW4geW91ciBkdGIgdXNl
ZCBieQo+IGtlcm5lbCB3aWxsIG5vdCByZWZsZWN0IHlvdXIgZHRzIGZpbGUuIEl0IGNvdWxkIGJl
IGNvbmZ1c2VkIGZvcgo+IGN1c3RvbWVycyBhbmQgdXNlcnMuCgpZZXMuCgo+PiBBbnkgb3RoZXIg
aWRlYXMgPwo+IAo+IFdoYXQgaXMgZm9yIHlvdSB0aGUgbWFpbiBpc3N1ZSA/IHRoZSBudW1iZXIg
b2YgZmlsZXMgdG8gYWRkIG9yIGhvdyB0bwo+IG1haW50YWluIGFsbCB0aG9zZSBmaWxlcyA/CgpU
aGUgbnVtYmVyLiBNYWludGFpbmluZyB0aGVtIGlzIG5vdCB0aGF0IG11Y2ggb2YgYSBwcm9ibGVt
LgoKPiBJZiBpdCBpcyB0aGUgbnVtYmVyIG9mIGZpbGVzIHRvIGFkZCwgd2UgY2FuIHRoaW5rIGFi
b3V0IHNldmVyYWwgd2F5czoKPiAKPiAxLUFzIG1lbnRpb25lZCBhYm92ZSwgdG8gb25seSBrZWVw
IGtpbmQgb2YgcmVmZXJlbmNlIHBsYXRmb3Jtcwo+IAo+IDItSGF2ZSB2ZW5kb3IgZGlyZWN0b3Jp
ZXMgaW4gYXJjaC9hcm0vYm9vdC9kdHMgKGJ1dCBpdCdzIGFub3RoZXIgc3RvcnkKPiB0byBtYWtl
IGl0IGFjY2VwdGVkKQoKTWF5YmUgdGhhdCdzIHNvbWV0aGluZyB3ZSBzaG91bGQgY29uc2lkZXIg
Zm9yIGFybTMyLCBidXQgdGhhdCdzIGEKZGlmZmVyZW50IGRpc2N1c3Npb24gYWx0b2dldGhlci4K
Cj4gMy1PciBtYXliZSB1c2UgRFRCTyB0byBvdmVyd3JpdGUgc29tZSBjb25maWd1cmF0aW9uLgo+
IAo+IElmIHRoZSBjb25jZXJuIGlzIGFib3V0IGhvdyB0byBtYWludGFpbiwgbWF5YmUgSSdtIHdy
b25nIGJ1dCBJIHRoaW5rCj4gdGhhdCB3aXRoIGEgZ29vZCBzcGxpdCBhbmQgZmFjdG9yaXphdGlv
biB3ZSBjb3VsZCBtaW5pbWl6ZSBzdXBwb3J0Lgo+IAo+IEN1cnJlbnRseSBJIG9ubHkgdGhvc2Ug
dGhpbmdzIGluIG1pbmQgYnV0IG5vdGhpbmcgcmVhbGx5IG1hdHVyZS4KCkkgaG9wZSB0aGlzIHBh
dGNoc2V0IGRvZXMgdGhlIHNwbGl0IHJpZ2h0LCBpdCdzIHRoZSBudW1iZXIuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
