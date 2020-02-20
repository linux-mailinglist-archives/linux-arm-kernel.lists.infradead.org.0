Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BBE165E5B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 14:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qfs6qKIB9h8IOAtdFXeOshOeDRV7fVgzHFoq2BwgUKo=; b=KocQNMX63CqaFLQfCyg6RwCHa
	PVhJizmBBVLct+D/jrLP9x3MHdUZultHaEmSVH0Ff0goDul/MEDh7Ob6Wge2PYEx0+YO40/0IHyC0
	q41Kx9Iud9+xbH2wvxHIy/IixMWIV9EYwPhW46gSB+HD3xNe+PTLKMbZODRHncB+YTCbSA/4tuWmz
	2Vn0rwrKNu9nKIHjzn3oCPrCwgMeeVlnqCgvRZViKk7KFBjfQ5yG3jwkwJ+/P+FMTDFSnHC/uSpcW
	LC76tMefEC4Mh1rGF4SZpnKxy8GWXPhEcH+HOjDR+4VYx1fOYheECJqJ0MmSAc94E+h5isHTES6G4
	vPCLVADyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4laZ-0005s7-7B; Thu, 20 Feb 2020 13:09:59 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4laQ-0005rT-9i
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 13:09:52 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01KD4iRd017726; Thu, 20 Feb 2020 14:09:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=wUo+rOcziXoZHOEnRfM4e41jdLfo3cichwE/6Du2kU0=;
 b=kJoyVX0xMt6C4QuB8S+tAO2HZw6Yc6+BOIDxPPR9n+gcYKdYjT4aMcjOgZ+E5ZLEZNb1
 LnF2deI6FYam1xmFRvMCjlZuSZGeLbaZDXNgCQI0DcW5y5bVf2tR2Gn8G92hq5wz84Eh
 g3YyK8u0bpA5gAUlrd7i/TLLkF23Ttl8gT5FyH7BEve03E8qjubZlEISK1+6ERek0Yt1
 xuSnpAYajYCr7JTkfkIGW8uGu2x7yubfy4xDcHOmHqmfsGmSdjd4+fDAyqVlyL4f3fhX
 CTC6HukbAhwwArQtz2I8Elb4evEMipW7sR5JITN3iP4rk/hR80CipVlqiXMAwEdNWK9n uA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2y8ub5s6v0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 20 Feb 2020 14:09:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C7F2E100038;
 Thu, 20 Feb 2020 14:09:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 99C632B5006;
 Thu, 20 Feb 2020 14:09:32 +0100 (CET)
Received: from lmecxl0912.lme.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 20 Feb
 2020 14:09:31 +0100
Subject: Re: [PATCH v2 0/2] Add GPIO level-sensitive interrupt support
To: Marek Vasut <marex@denx.de>, Thomas Gleixner <tglx@linutronix.de>, Jason
 Cooper <jason@lakedaemon.net>, Marc Zyngier <marc.zyngier@arm.com>, Linus
 Walleij <linus.walleij@linaro.org>
References: <20200218131218.10789-1-alexandre.torgue@st.com>
 <b5a2dcab-06db-4863-ac5c-28f4ef0c5ac9@denx.de>
 <32e409e6-d475-802a-6a90-c8ba6c0cf6d5@st.com>
 <088e786c-511e-cf95-fc41-5343b8134407@denx.de>
 <d271f09b-6391-779a-b133-66bcdfbb0ec6@st.com>
 <38e7cf57-2f89-7615-0841-316355a9102f@denx.de>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <66520848-f630-e210-aecb-96c8828605b7@st.com>
Date: Thu, 20 Feb 2020 14:09:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <38e7cf57-2f89-7615-0841-316355a9102f@denx.de>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-20_04:2020-02-19,
 2020-02-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_050950_696728_C33A1DA5 
X-CRM114-Status: GOOD (  23.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyZWsKCk9uIDIvMTkvMjAgNjoyNCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4gT24gMi8x
OS8yMCAxMDoyMCBBTSwgQWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPiBIaSwKPiBbLi4uXQo+Pj4+
Pj4gVGhpcyBzZXJpZXMgYWRkcyB0aGUgcG9zc2liaWxpdHkgdG8gaGFuZGxlIGdwaW8gaW50ZXJy
dXB0cyBvbiBsZXZlbC4KPj4+Pj4+Cj4+Pj4+PiBHUElPIGhhcmR3YXJlIGJsb2NrIGlzIGRpcmVj
dGx5IGxpbmtlZCB0byBFWFRJIGJsb2NrIGJ1dCBFWFRJIGhhbmRsZXMKPj4+Pj4+IGV4dGVybmFs
IGludGVycnVwdHMgb25seSBvbiBlZGdlLiBUbyBiZSBhYmxlIHRvIGhhbmRsZSBHUElPCj4+Pj4+
PiBpbnRlcnJ1cHQgb24KPj4+Pj4+IGxldmVsIGEgImhhY2siIGlzIGRvbmUgaW4gZ3BpbyBpcnEg
Y2hpcDogcGFyZW50IGludGVycnVwdCAoZXh0aSBpcnEKPj4+Pj4+IGNoaXApCj4+Pj4+PiBpcyBy
ZXRyaWdnZXJlZCBmb2xsb3dpbmcgaW50ZXJydXB0IHR5cGUgYW5kIGdwaW8gbGluZSB2YWx1ZS4K
Pj4+Pj4+Cj4+Pj4+PiBJbiBleHRpIGlycSBjaGlwLCByZXRyaWdnZXIgb3BzIGZ1bmN0aW9uIGlz
IGFkZGVkLgo+Pj4+Pgo+Pj4+PiBidHcuIHRoaXMgbWlnaHQgYmUgdW5yZWxhdGVkLCBidXQgaXMg
aXQgcG9zc2libGUgdG8gaGF2ZSBlLmcuIGdwaW9DMgo+Pj4+PiBzZXQKPj4+Pj4gYXMgdHJpZ2dl
ci1sZXZlbC1sb3cgYW5kIGdwaW9EMiBzZXQgYXMgdHJpZ2dlci1lZGdlLWZhbGxpbmcgPyBJdCBz
ZWVtcwo+Pj4+PiA4ZWIyZGZlZTlmYjEgKCJwaW5jdHJsOiBzdG0zMjogYWRkIGxvY2sgbWVjaGFu
aXNtIGZvciBpcnFtdXgKPj4+Pj4gc2VsZWN0aW9uIikKPj4+Pj4gcHJldmVudHMgdGhhdC4KPj4+
Pj4KPj4+Pgo+Pj4+IE5vIGl0J3Mgbm90IHBvc3NpYmxlLiBFYWNoIGdwaW8gbGluZSBkb2Vzbid0
IGhhdmUgYSBkZWRpY2F0ZWQgRXh0aSBsaW5lCj4+Pj4gRWFjaCBFeHRpIGxpbmUgaXMgbXV4aW5n
IGJldHdlZW4gZ3BpbyBiYW5rcy4KPj4+Cj4+PiBPSywgdGhhdCBjb25maXJtcyBteSBhc3N1bXB0
aW9uLgo+Pj4KPj4+PiBNYXBwaW5nIGlzIGRvbmUgYXMgZm9sbG93aW5nOgo+Pj4+Cj4+Pj4gRVhU
STAgPSBBMCBvciBCMCBvciBDMCAuLi4uIG9yIFowIDogc2VsZWN0ZWQgYnkgTXV4Cj4+Pj4gRVhU
STEgPSBBMSBvciBCMSBvciBDMSAuLi4ub3IgWjEgOiBzZWxlY3RlZCBieSBNdXgKPj4+PiBFWFRJ
MiA9IEEyIG9yIEIyIG9yIEMyIC4uLi5vciBaMiA6IHNlbGVjdGVkIGJ5IE11eAo+Pj4+IC4uLgo+
Pj4KPj4+IElzIGl0IGF0IGxlYXN0IHBvc3NpYmxlIHRvIGhhdmUgSVJRcyBvZiB0aGUgc2FtZSB0
eXBlIG9uIHRoZSBzYW1lIGV4dGkKPj4+IGxpbmU/IEUuZy4gZ3Bpb0EyIG9mIHRyaWdnZXItZWRn
ZS1mYWxsaW5nIGFuZCBncGlvQjIKPj4+IHRyaWdnZXItZWRnZS1mYWxsaW5nID8KPj4+Cj4+Cj4+
IFNvcnJ5IEkgZG9uJ3QgY2F0Y2ggeW91ciBwb2ludC4gSWYgeW91IGFscmVhZHkgc3VjY2VlZCB0
byBnZXQgZ3Bpb0EyLAo+PiB0aGVuIHlvdSB3aWxsIGZhaWxlZCB0byBnZXQgZ3Bpb0IyIGJ1dCBs
b29raW5nIGF0IGZ1bmN0aW9uIGNhbGwgc3RhY2sgd2UKPj4gY291bGQgZ2V0IGFuIG90aGVyIGlz
c3VlLgo+IAo+IENvbnNpZGVyaW5nIHRoZSBFWFRJIGxpbmUgbGltaXRhdGlvbnMsIEknZCBsaWtl
IHRvIGtub3cgd2hhdCBraW5kIG9mIElSUQo+IGlucHV0IGNvbmZpZ3VyYXRpb24gaXMgYWxsb3dl
ZC92YWxpZCBhbmQgd2hhdCBraW5kIG9mIGNvbmZpZ3VyYXRpb24gaXMKPiBub3QgdmFsaWQuCgpB
cyBhIG11eCBpcyB1c2VkIHRvIHNlbGVjdCB3aGljaCBHUElPW0EuLlpdX1ggaGFzIHRvIGJlIG1h
cHBlZCBvbiBleHRpX1ggCmxpbmUsIG9ubHkgb25lIEdQSU8gY2FuIGJlIHVzZWQgb24gdGhlIEVY
VEkgbGluZS4KCkZvciBleGFtcGxlLCBvbiBFWFRJMiB5b3UgY291bGQgbWFwIGVpdGhlciBncGlv
YTIgb3IgZ3Bpb2IyIG9yIAouLi4uZ3Bpb3oyIGJ1dCBub3QgZ3Bpb2EyIGFuZCBncGlvYjIgaW4g
dGhlIHNhbWUgdGltZS4KCgo+IAo+PiBMZXRzIHRha2UgZXhhbXBsZSB3aGVyZSB5b3Ugc3VjY2Vl
ZCB0byBnZXQgZ3Bpb2EyIGFzIGludGVycnVwdCAodXNpbmcKPj4gaW50ZXJydXB0IGJpbmRpbmdz
KSBhbmQgbm93IHlvdSB0cnkgdG8gZG8gdGhlIHNhbWUgZm9yIGdwaW9iMiwgeW91IHdpbGwKPj4g
aGF2ZSAocm91Z2hseSk6Cj4+Cj4+IHN0bTMyX2dwaW9faXJxX3JlcXVlc3RfcmVzb3VyY2VzIChm
b3IgZ3Bpb2IyKSAtLT4gc3VjY2VlZAo+Pgo+PiBzdG0zMl9ncGlvX3NldF90eXBlCj4+ICDCoHwK
Pj4gIMKgfC0tPiBzdG0zMl9leHRpX3NldF90eXBlIHR5cGUgLT4gY2hhbmdlIGV4dGkgbGluZSAy
IHRyaWdnZXIgcmVnaXN0ZXJzCj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgd2l0aCBncGlvYjIgYmluZGluZy4KPj4K
Pj4gc3RtMzJfZ3Bpb19kb21haW5fYWN0aXZhdGUgLS0+IGZhaWxlZCBhcyBleHRpIGxpbmUyIGlz
IGFscmVhZHkgdXNlZAo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJ5
IGdwaW9hMi4KPj4KPj4gU28gYXMgc3RtMzJfZ3Bpb19zZXRfdHlwZSBpcyBjYWxsZWQgYmVmb3Jl
IGNoZWNraW5nIHRoYW4gZXh0aSBsaW5lIGlzCj4+IGF2YWlsYWJsZSwgdHlwZSBjb3VsZCBiZSBj
aGFuZ2VkIGFuZCBiZWhhdmlvciBvZiBncGlvYTIgaW50ZXJydXB0IGJyb2tlbi4KPj4KPj4gU29s
dXRpb24gd291bGQgYmUgdG8gbW92ZSB0aGUgZXh0aSBsaW5lIG11eCBjaGVjayBmcm9tCj4+IHN0
bTMyX2dwaW9fZG9tYWluX2FjdGl2YXRlIHRvwqAgc3RtMzJfZ3Bpb19pcnFfcmVxdWVzdF9yZXNv
dXJjZXMgY2FsbGJhY2suCj4gCj4gU28gdGhlIGhhcmR3YXJlIGRvZXMgc3VwcG9ydCB1c2luZyBi
b3RoIGdwaW9BMiBhbmQgZ3Bpb0IyIGFzIGFuCj4gaW50ZXJydXB0IHNvdXJjZSwgZm9yIGRpZmZl
cmVudCBkcml2ZXJzLCBpZiB0aGV5IGFyZSBvZiB0aGUgc2FtZQo+IGludGVycnVwdCB0eXBlLiBF
eGNlcHQgdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24gZG9lcyBub3QgcGVybWl0IHRoYXQuCj4g
CgpObyBoYXJkd2FyZSBkb2Vzbid0IGFsbG93IGl0IGZvciByZWFzb24gZXhwbGFpbiBhYm92ZS4K
Cj4gSWYgdGhlIGludGVycnVwdCB0eXBlcyBhcmUgZGlmZmVyZW50LCB0aGF0IGlzIG5vdCBzdXBw
b3J0ZWQgYnkgdGhlIGhhcmR3YXJlLgo+IAo+IENvcnJlY3QgPwo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
