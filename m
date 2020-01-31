Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5A14F220
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 19:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=H9JVM4F2uZLPHaIrKx9ufnskj/DZnuoKY4zwvEDQ6Dk=; b=JxFGWphQcMPcuTmogPlTTbs7P
	DxpQeO4afNiw2jt02MSrzoCMxg2FyyvlB7cXbNjiGvjOGq2mOcexsaYZSi/mPrzRXgj0MhPpXP9rI
	7SNHmZjX7yQKR0caQJPcFU+DaaKUBOkcTejMpgYCWwAop37rgxFVUKDjsA8kkCZCI/iThS+4Wl0w/
	IIEc9+oP2QKEkDr1t/E13xmUDbrgWxVdXYZs+tq6tcOK2o6ZJul/8zz3iPu6Qi1/dC/sPnlONjgSp
	jl1Rg/ylsh7h7LEi40oZAKzLVeLWf+QajlNRYekM9LSsk9vukFh+ZTeIYYrIB8h20ajGwMCdruQdZ
	5Ax/UiMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixayp-0004ES-Ju; Fri, 31 Jan 2020 18:25:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixayh-0004Df-Mg
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 18:25:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A0E97FEC;
 Fri, 31 Jan 2020 10:25:12 -0800 (PST)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BB963F68E;
 Fri, 31 Jan 2020 10:25:10 -0800 (PST)
Subject: Re: [PATCH v2 0/7] Introduce bus firewall controller framework
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Sudeep Holla <sudeep.holla@arm.com>
References: <20200128153806.7780-1-benjamin.gaignard@st.com>
 <20200128163628.GB30489@bogus> <7f54ec36-8022-a57a-c634-45257f4c6984@st.com>
 <20200128171639.GA36496@bogus> <26eb1fde-5408-43f0-ccba-f0c81e791f54@st.com>
 <6a6ba7ff-7ed9-e573-63ca-66fca609075b@arm.com>
 <c4d5c46a-7f90-ff2b-9496-26102114c5e6@st.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <3624ec3e-b06a-907d-ebfa-8516b14cb306@arm.com>
Date: Fri, 31 Jan 2020 18:25:09 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <c4d5c46a-7f90-ff2b-9496-26102114c5e6@st.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_102515_830251_0147B6E6 
X-CRM114-Status: GOOD (  28.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, "robh@kernel.org" <robh@kernel.org>,
 Loic PALLARDY <loic.pallardy@st.com>, "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "system-dt@lists.openampproject.org" <system-dt@lists.openampproject.org>,
 "broonie@kernel.org" <broonie@kernel.org>, "lkml@metux.net" <lkml@metux.net>,
 "linux-imx@nxp.com" <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "fabio.estevam@nxp.com" <fabio.estevam@nxp.com>,
 "stefano.stabellini@xilinx.com" <stefano.stabellini@xilinx.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjkvMDEvMjAyMCAxOjQwIHBtLCBCZW5qYW1pbiBHQUlHTkFSRCB3cm90ZToKPiAKPiBPbiAx
LzI4LzIwIDExOjA2IFBNLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIwMjAtMDEtMjggODow
NiBwbSwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cj4+Pgo+Pj4gT24gMS8yOC8yMCA2OjE3IFBN
LCBTdWRlZXAgSG9sbGEgd3JvdGU6Cj4+Pj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQgMDQ6NDY6
NDFQTSArMDAwMCwgQmVuamFtaW4gR0FJR05BUkQgd3JvdGU6Cj4+Pj4+IE9uIDEvMjgvMjAgNToz
NiBQTSwgU3VkZWVwIEhvbGxhIHdyb3RlOgo+Pj4+Pj4gT24gVHVlLCBKYW4gMjgsIDIwMjAgYXQg
MDQ6Mzc6NTlQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4+Pj4gQnVzIGZp
cmV3YWxsIGZyYW1ld29yayBhaW1zIHRvIHByb3ZpZGUgYSBrZXJuZWwgQVBJIHRvIHNldCB0aGUK
Pj4+Pj4+PiBjb25maWd1cmF0aW9uCj4+Pj4+Pj4gb2YgdGhlIGhhcndhcmUgYmxvY2tzIGluIGNo
YXJnZSBvZiBidXNzZXMgYWNjZXNzIGNvbnRyb2wuCj4+Pj4+Pj4KPj4+Pj4+PiBGcmFtZXdvcmsg
YXJjaGl0ZWN0dXJlIGlzIGluc3BpcmF0ZWQgYnkgcGluY3RybCBmcmFtZXdvcms6Cj4+Pj4+Pj4g
LSBhIGRlZmF1bHQgY29uZmlndXJhdGlvbiBjb3VsZCBiZSBhcHBsaWVkIGJlZm9yZSBiaW5kIHRo
ZSBkcml2ZXIuCj4+Pj4+Pj4gIMKgwqDCoMKgIElmIGEgY29uZmlndXJhdGlvbiBjb3VsZCBub3Qg
YmUgYXBwbGllZCB0aGUgZHJpdmVyIGlzIG5vdCBiaW5kCj4+Pj4+Pj4gIMKgwqDCoMKgIHRvIGF2
b2lkIGRvaW5nIGFjY2Vzc2VzIG9uIHByb2hpYml0ZWQgcmVnaW9ucy4KPj4+Pj4+PiAtIGNvbmZp
Z3VyYXRpb25zIGNvdWxkIGJlIGFwbGxpZWQgZHluYW1pY2FsbHkgYnkgZHJpdmVycy4KPj4+Pj4+
PiAtIGRldmljZSBub2RlIHByb3ZpZGVzIHRoZSBidXMgZmlyZXdhbGwgY29uZmlndXJhdGlvbnMu
Cj4+Pj4+Pj4KPj4+Pj4+PiBBbiBleGFtcGxlIG9mIGJ1cyBmaXJld2FsbCBjb250cm9sbGVyIGlz
IFNUTTMyIEVUWlBDIGhhcmR3YXJlIGJsb2NrCj4+Pj4+Pj4gd2hpY2ggZ290IDMgcG9zc2libGUg
Y29uZmlndXJhdGlvbnM6Cj4+Pj4+Pj4gLSB0cnVzdDogaGFyZHdhcmUgYmxvY2tzIGFyZSBvbmx5
IGFjY2Vzc2libGUgYnkgc29mdHdhcmUgcnVubmluZwo+Pj4+Pj4+IG9uIHRydXN0Cj4+Pj4+Pj4g
IMKgwqDCoMKgIHpvbmUgKGkuZSBvcC10ZWUgZmlybXdhcmUpLgo+Pj4+Pj4+IC0gbm9uLXNlY3Vy
ZTogaGFyZHdhcmUgYmxvY2tzIGFyZSBhY2Nlc3NpYmxlIGJ5IG5vbi1zZWN1cmUKPj4+Pj4+PiBz
b2Z0d2FyZSAoaS5lLgo+Pj4+Pj4+ICDCoMKgwqDCoCBsaW51eCBrZXJuZWwpLgo+Pj4+Pj4+IC0g
Y29wcm9jZXNzb3I6IGhhcmR3YXJlIGJsb2NrcyBhcmUgb25seSBhY2Nlc3NpYmxlIGJ5IHRoZQo+
Pj4+Pj4+IGNvcHJvY2Vzc29yLgo+Pj4+Pj4+IFVwIHRvIDk0IGhhcmR3YXJlIGJsb2NrcyBvZiB0
aGUgc29jIGNvdWxkIGJlIG1hbmFnZWQgYnkgRVRaUEMuCj4+Pj4+Pj4KPj4+Pj4+IC9tZSBjb25m
dXNlZC4gSXMgRVRaUEMgYWNjZXNzaWJsZSBmcm9tIHRoZSBub24tc2VjdXJlIGtlcm5lbCBzcGFj
ZSB0bwo+Pj4+Pj4gYmVnaW4gd2l0aCA/IElmIHNvLCBpcyBpdCBhbGxvd2VkIHRvIGNvbmZpZ3Vy
ZSBoYXJkd2FyZSBibG9ja3MgYXMKPj4+Pj4+IHNlY3VyZQo+Pj4+Pj4gb3IgdHJ1c3RlZCA/IEkg
YW0gZmFpbGluZyB0byB1bmRlcnN0YW5kIHRoZSBvdmVyYWxsIGRlc2lnbiBvZiBhCj4+Pj4+PiBz
eXN0ZW0KPj4+Pj4+IHdpdGggRVRaUEMgY29udHJvbGxlci4KPj4+Pj4gTm9uLXNlY3VyZSBrZXJu
ZWwgY291bGQgcmVhZCB0aGUgdmFsdWVzIHNldCBpbiBFVFpQQywgaWYgaXQgZG9lc24ndAo+Pj4+
PiBtYXRjaAo+Pj4+PiB3aXRoIHdoYXQgaXMgcmVxdWlyZWQgYnkgdGhlIGRldmljZSBub2RlIHRo
ZSBkcml2ZXIgd29uJ3QgYmUgcHJvYmVkLgo+Pj4+Pgo+Pj4+IE9LLCBidXQgSSB3YXMgdW5kZXIg
dGhlIGltcHJlc3Npb24gdGhhdCBpdCB3YXMgbWFkZSBjbGVhciB0aGF0IExpbnV4IGlzCj4+Pj4g
bm90IGZpcm13YXJlIHZhbGlkYXRpb24gc3VpdGUuIFRoZSBmaXJtd2FyZSBuZWVkIHRvIGVuc3Vy
ZSBhbGwgdGhlCj4+Pj4gZGV2aWNlcwo+Pj4+IHRoYXQgYXJlIG5vdCBhY2Nlc3NpYmxlIGluIHRo
ZSBMaW51eCBrZXJuZWwgYXJlIG1hcmtlZCBhcyBkaXNhYmxlZCBhbmQKPj4+PiB0aGlzIG5lZWRz
IHRvIGhhcHBlbiBiZWZvcmUgZW50ZXJpbmcgdGhlIGtlcm5lbC4gU28gaWYgdGhpcyBpcyB3aGF0
Cj4+Pj4gdGhpcwo+Pj4+IHBhdGNoIHNlcmllcyBhY2hpZXZlcywgdGhlbiB0aGVyZSBpcyBubyBu
ZWVkIGZvciBpdC4gUGxlYXNlIHN0b3AKPj4+PiBwdXJzdWluZwo+Pj4+IHRoaXMgYW55IGZ1cnRo
ZXIgb3IgcHJvdmlkZSBhbnkgb3RoZXIgcmVhc29ucyhpZiBhbnkpIHRvIGhhdmUgaXQuIFVudGls
Cj4+Pj4geW91IGhhdmUgb3RoZXIgcmVhc29ucywgTkFDSyBmb3IgdGhpcyBzZXJpZXMuCj4+Pgo+
Pj4gTm8gaXQgZG9lc24ndCBkaXNhYmxlIHRoZSBub2Rlcy4KPj4+Cj4+PiBXaGVuIHRoZSBmaXJt
d2FyZSBkaXNhYmxlIGEgbm9kZSBiZWZvcmUgdGhlIGtlcm5lbCB0aGF0IG1lYW5zIGl0IGNoYW5n
ZQo+Pj4KPj4+IHRoZSBEVEIgYW5kIHRoYXQgaXMgYSBwcm9ibGVtIHdoZW4geW91IHdhbnQgdG8g
c2lnbiBpdC4gV2l0aCBteSBwcm9wb3NhbAo+Pj4KPj4+IHRoZSBEVEIgcmVtYWlucyB0aGUgc2Ft
ZS4KPj4KPj4gPz8/Cj4+Cj4+IDovCj4+Cj4+IFRoZSBEVEIgaXMgdXNlZCB0byBwYXNzIHRoZSBr
ZXJuZWwgY29tbWFuZCBsaW5lLCBtZW1vcnkgcmVzZXJ2YXRpb25zLAo+PiByYW5kb20gc2VlZHMs
IGFuZCBhbGwgbWFubmVyIG9mIG90aGVyIHRoaW5ncyBkeW5hbWljYWxseSBnZW5lcmF0ZWQgYnkK
Pj4gZmlybXdhcmUgYXQgYm9vdC10aW1lLiBBcG9sb2dpZXMgZm9yIGJlaW5nIGJsdW50IGJ1dCBp
ZiAiY2hhbmdpbmcgdGhlCj4+IERUQiIgaXMgY29uc2lkZXJlZCBhIHByb2JsZW0gdGhlbiBJIGNh
bid0IGhlbHAgYnV0IHRoaW5rIHlvdSdyZSBkb2luZwo+PiBpdCB3cm9uZy4KPiAKPiBZZXMgYnV0
IEkgd291bGQgbGlrZSB0byBsaW1pdCB0aGUgbnVtYmVyIG9mIGNhc2VzIHdoZXJlIGEgZmlybXdh
cmUgaGFzCj4gdG8gY2hhbmdlIHRoZSBEVEIuCgpTdXJlLCBidXQgdW5sZXNzIHlvdSBjYW4gbGlt
aXQgdGhhdCBudW1iZXIgdG8gc3RyaWN0bHkgemVybywgdGhlbiAKcHJlc3VtYWJseSB0aGUgZmly
bXdhcmUgbXVzdCBoYXZlIHRoZSBnZW5lcmFsIGNhcGFiaWxpdHkgdG8gdmVyaWZ5LCAKbW9kaWZ5
LCBhbmQgcmUtc2lnbiBhIERUQi4gQXQgdGhhdCBwb2ludCBoYXZpbmcgaXQgYWxzbyB0d2VhayB0
aGUgc3RhdHVzIApvZiBub2RlcyB0aGF0IGl0IHdhbnRzIGZvciBpdHNlbGYgZG9lc24ndCBzZWVt
IGxpa2UgYSBwYXJ0aWN1bGFybHkgYmlnIGFzay4KCj4gV2l0aCB0aGlzIHByb3Bvc2FsIG5vZGVz
IHJlbWFpbiB0aGUgc2FtZSBhbmQgZW1iZWRkZWQgdGhlIGZpcmV3YWxsCj4gY29uZmlndXJhdGlv
bihzKS4KPiAKPiBVbnRpbCBub3cgZmlyZXdhbGwgY29uZmlndXJhdGlvbiBpcyAic3RhdGljIiwg
dGhlIGZpcm13YXJlIGRpc2FibGUgKG9yCj4gcmVtb3ZlKSB0aGUgbm9kZXMgbm90IGFjY2Vzc2li
bGUgZnJvbSBMaW51eC4KPiAKPiBJZiBMaW51eCBjYW4gcmVseSBvbiBub2RlJ3MgZmlyZXdhbGwg
aW5mb3JtYXRpb24gaXQgY291bGQgYWxsb3cgc3dpdGNoCj4gZHluYW1pY2FsbHkgYW4gaGFyZHdh
cmUgYmxvY2sgZnJvbSBMaW51eCB0byBhIGNvcHJvY2Vzc29yLgo+IAo+IEZvciBleGFtcGxlIExp
bnV4IGNvdWxkIG1hbmFnZSB0aGUgZGlzcGxheSBwaXBlIGNvbmZpZ3VyYXRpb24gYW5kIHdoZW4K
PiBnb2luZyB0byBzdXNwZW5kIGhhbmRvdmVyIHRoZSBkaXNwbGF5IGhhcmR3YXJlIGJsb2NrIHRv
IGEgY29wcm9jZXNzb3IgaW4KPiBjaGFyZ2UgYSByZWZyZXNoaW5nIG9ubHkgc29tZSBwaXhlbHMu
CgpBbmQgbGlrZSBJJ20gc3VyZSBJIHNhaWQgYmVmb3JlLCB0aGUgaW50ZXJmYWNlIGJldHdlZW4g
TGludXggYW5kIHRoZSAKU2VjdXJlIGVudmlyb25tZW50IHRvIHVsdGltYXRlbHkgYWNoaWV2ZSB0
aGF0IHdpbGwgYWxtb3N0IGNlcnRhaW5seSBtYWtlIAppbnNwZWN0aW5nIGEgcGFzc2l2ZSBzdGF0
dXMgYml0IGluIGEgcmVnaXN0ZXIgcmVkdW5kYW50IGFueXdheS4KCkluIHRoZSBpbnRlcmVzdCBv
ZiBiZWluZyBwcm9kdWN0aXZlLCB0aG91Z2gsIHRoZXJlIGlzIGFub3RoZXIgd2F5IG9mIApsb29r
aW5nIGF0IHRoaXMuIElmIHdlIGRyb3AgdGhlIHByZXRlbmNlIHRoYXQgaXQncyBpbiBhbnkgd2F5
IGdlbmVyaWMgb3IgCmV2ZXIgZ29pbmcgdG8gYmUgcmVsZXZhbnQgYmV5b25kIGNlcnRhaW4gY29u
ZmlndXJhdGlvbnMgb2YgY2VydGFpbiAKU1RNaWNybyBTb0NzLCB0aGVuIGluIHBsYWluIHRlcm1z
IGl0J3MganVzdCBzb21lIGJsb2NrIG9mIE1NSU8gcmVnaXN0ZXJzIAp0aGF0IGhhdmUgKnNvbWV0
aGluZyogdG8gZG8gd2l0aCB2YXJpb3VzIG90aGVyIGRldmljZXMuIEF0IHRoYXQgcG9pbnQsIAp0
aGUgYW5zd2VyIGlzIGp1c3QgdG8gdHJlYXQgaXQgYXMgYSBzeXNjb24gYW5kIG1ha2UgdGhlIHJl
bGV2YW50IGRyaXZlcnMgCmZvciB0aG9zZSBTb0NzIGF3YXJlIG9mIGl0LiBJJ20gbW9zdCBmYW1p
bGlhciB3aXRoIHRoZSAiR2VuZXJhbCBSZWdpc3RlciAKRmlsZSIgb24gUm9ja2NoaXAgU29DcyBh
cyBhIHByaW1lIGV4YW1wbGUgb2YgImJ1bmNoIG9mIHJlZ2lzdGVycyB0aGF0IApyZWxhdGUgdG8g
dGhlIGludGVncmF0aW9uIG9mIHZhcmlvdXMgSVAgYmxvY2tzIiwgd2hpY2ggbWFuYWdlcyB0byBi
ZSAKc3VwcG9ydGVkIGp1c3QgZmluZSB3aXRob3V0IGludmFzaXZlIGhvb2tzIGluIHRoZSBkcml2
ZXIgY29yZS4KClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
