Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6807216A366
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 11:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W1HIrGlTB9/Z2Uk88i0IuLbeGKI0ymbnQRNCI+0BtUg=; b=hHuyRiFajjkTUHTNc/Pq2baTO
	CLf3HJXpGwnZkuwVP6QVNBxzUCAE35YBA+gSRIYcsIKkjGATUpH9H2bqf2w9MgHZutMI5HyMWVhZL
	H27P7pU+Lp+wmo/AhsuPcmNRqVbsVPyIZ0JFdqYI9qf4nXD8h5tSN5EftW8nBOEfkqN70BM7dXWct
	fvX9tqhGzu0R9uhopEMLDOCljhixJJNXrmoUrhN0uPnvptmNJAzzaHHwo/JMlxa6yJZj0lvlE4Ud0
	6pyFlsapV3lIVuSB5HnNwPrYGdpiopyO3gRaPe8mXQBPMg2QfBRS+HUY/Zoc7hn5oa2JP7qMJVkZa
	oHhu9gWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6AXR-0006si-03; Mon, 24 Feb 2020 10:00:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6AWw-0005fR-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 10:00:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1930C30E;
 Mon, 24 Feb 2020 01:59:59 -0800 (PST)
Received: from [10.37.12.155] (unknown [10.37.12.155])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E8D63F703;
 Mon, 24 Feb 2020 01:59:57 -0800 (PST)
Subject: Re: [RFC PATCH v2 07/13] firmware: arm_scmi: Add notification
 dispatch and delivery
From: Lukasz Luba <lukasz.luba@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200214153535.32046-1-cristian.marussi@arm.com>
 <20200214153535.32046-8-cristian.marussi@arm.com>
 <e45e87e2-aaaf-c35b-b864-c080fd6e0ba6@arm.com>
 <d59c3f3e-324b-05fe-547d-1e64bf4c6a69@arm.com>
 <af8d2a1e-e78e-6d0e-4ffc-3af94cdc6784@arm.com>
Message-ID: <ce10673e-48a1-980c-cf05-a4fe2040d96f@arm.com>
Date: Mon, 24 Feb 2020 09:59:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <af8d2a1e-e78e-6d0e-4ffc-3af94cdc6784@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_020002_513629_C6409562 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyLzIxLzIwIDc6MTEgUE0sIEx1a2FzeiBMdWJhIHdyb3RlOgo+IAo+IAo+IE9uIDIvMjEv
MjAgNzowMSBQTSwgQ3Jpc3RpYW4gTWFydXNzaSB3cm90ZToKPj4gSGkgTHVrYXN6Cj4+Cj4+IFRo
YW5rcyBmb3IgeW91ciBmZWVkYmFjayAhCj4+Cj4+IE9uIDIxLzAyLzIwMjAgMTM6MjUsIEx1a2Fz
eiBMdWJhIHdyb3RlOgo+Pj4gSGkgQ3Jpc3RpYW4sCj4+Pgo+Pj4gSSBkaWRuJ3Qgd2FudCB0byBq
dW1wIGludG8geW91ciBkaXNjdXNzaW9uIHdpdGggSmltIGluIG90aGVyIGJyb2FkZXIKPj4+IHRo
cmVhZCB3aXRoIHRoaXMgc21hbGwgdGhvdWdodCwgc28gSSBhZGRlZCBhIGNvbW1lbnQgYmVsb3cu
Cj4+Pgo+Pj4gT24gMi8xNC8yMCAzOjM1IFBNLCBDcmlzdGlhbiBNYXJ1c3NpIHdyb3RlOgo+Pj4+
IEFkZCBjb3JlIFNDTUkgTm90aWZpY2F0aW9ucyBkaXNwYXRjaCBhbmQgZGVsaXZlcnkgc3VwcG9y
dCBsb2dpYyAKPj4+PiB3aGljaCBpcwo+Pj4gW3NuaXBdCj4+Pgo+Pj4+IEBAIC04NDAsNiArMTA3
MSwxMSBAQCBzdGF0aWMgc3RydWN0IHNjbWlfbm90aWZ5X29wcyBub3RpZnlfb3BzID0gewo+Pj4+
IMKgwqDCoCAqLwo+Pj4+IMKgwqAgaW50IHNjbWlfbm90aWZpY2F0aW9uX2luaXQoc3RydWN0IHNj
bWlfaGFuZGxlICpoYW5kbGUpCj4+Pj4gwqDCoCB7Cj4+Pj4gK8KgwqDCoCBzY21pX25vdGlmeV93
cSA9IGFsbG9jX3dvcmtxdWV1ZSgic2NtaV9ub3RpZnkiLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFdRX1VOQk9VTkQgfCBXUV9GUkVFWkFCTEUsIDApOwo+
Pj4KPj4+IEkgdGhpbmsgaXQgbWlnaHQgbGltaXQgc29tZSBwbGF0Zm9ybXMuIEl0IGRlcGVuZHMg
b24gdGhlaXIgd29ya2xvYWQuCj4+PiBJZiB0aGV5IGhhdmUgc29tZSBoaWdoIHByaW9yaXR5IHdv
cmtsb2FkcyB3aGljaCByZWx5IG9uIHRoaXMgbWVjaGFuaXNtcywKPj4+IHRoZXkgbWlnaHQgbmVl
ZCBhIFJUIHRhc2sgaGVyZS4gVGhlIHdvcmtxdWV1ZXMgd291bGQgYmUgc2NoZWR1bGVkIGluCj4+
PiBDRlMsIHNvIGl0IGRlcGVuZHMgb24gd29ya2xvYWQgaW4gdGhlcmUgKHdlIG1pZ2h0IGV2ZW4g
c2VlIDEwcyBtcyBkZWxheXMKPj4+IGluIHNjaGVkdWxpbmctdXAgdGhlbSkuIElmIHdlIHVzZSBS
VCB3ZSB3b3VsZCBncmFiIHRoZSBDUFUgZnJvbSBDRlMuCj4+Pgo+Pj4gSXQgd291bGQgYmUgZ29v
ZCBpZiBpdCBpcyBhIGN1c3RvbWl6YXRpb24gb3B0aW9uOiB3aGljaCBtZWNoYW5pc20KPj4+IHRv
IHVzZSBiYXNlZCBvbiBzb21lIGEgcGFyYW1ldGVyLiBUaGVuIHdlIGNvdWxkIGNyZWF0ZToKPj4+
IGEpIHdvcmtxdWV1ZSB3aXRoIHRoZSBmbGFncyBhYm92ZQo+Pj4gYikgd29ya3F1ZXVlIHdpdGgg
V1FfSElHSFBSSSAobGltaXRlZCBieSBtaW5pbXVtIG5pY2UpCj4+PiBjKSBrdGhyZWFkX2NyZWF0
ZV93b3JrZXIoKSB3aXRoIFJUL0RML0ZJRk8gc2NoZWQgcG9saWN5Cj4+PiDCoMKgwqAgKHdpdGgg
YWxzbyBhIHBhcmFtZXRlcml6ZWQgcHJpb3JpdHkpCj4+PiBJbiBkZWZhdWx0IGNsaWVudHMgbWln
aHQgdXNlIGEpIGJ1dCB3aGVuIHRoZXkgd2FudCB0byB0dW5lIHRoZWlyCj4+PiBwbGF0Zm9ybSwg
dGhleSBtaWdodCBjaGFuZ2Ugb25seSBhIHBhcmFtZXRlciBpbiB0aGVpciBzY21pIGNvZGUsCj4+
PiBub3QgbWFpbnRhaW5pbmcgYSBwYXRjaCBmb3IgdGhlIFJUIGZ1bmN0aW9uIG91dCBvZiB0cmVl
Lgo+Pgo+PiBJbiB0aGlzIHNlcmllcywgSSBoYXZlIG5vdCBhZGRyZXNzZWQgY29uZmlndXJhYmls
aXR5IGlzc3VlcyBhdCBhbGwgKGFzIAo+PiBub3RlZCBpbiB0aGUgY292ZXIpOgo+PiBpbiBmYWN0
IEkgd2FzIHRoaW5raW5nIHRoYXQgc3R1ZmYgbGlrZSBXUV9ISUdIUFJJIGZsYWdzIGFuZCAKPj4g
cGVyLXByb3RvY29sIHF1ZXVlIHNpemVzIGNvdWxkCj4+IGJlIGJlbmVmaWNpYWwgdG8gYmUgY3Vz
dG9taXphYmxlIGRlcGVuZGluZyBvbiB0aGUgc3BlY2lmaWMgcGxhdGZvcm0sIAo+PiBidXQgSSBo
YWQgbm90IGdvbmUgdG8KPj4gdGhlIGV4dHJlbWUgb2YgdGhpbmtpbmcgb2YgYWRvcHRpbmcgYSBk
ZWRpY2F0ZWQgUlQga3RocmVhZCBhcyBhIAo+PiB3b3JrZXIuLi5nb29kIHBvaW50Li4uaXQKPj4g
bWFrZXMgc3VyZWx5IHNlbnNlIHRvIGhhdmUgdGhpcyBjb25maWd1cmFibGUgb3B0aW9uIHRvIHRy
eSB0byByZWR1Y2UgCj4+IHRoZSBsYXRlbmN5IHdoZXJlIHBvc3NpYmxlLgo+Pgo+PiBJIHRoaW5r
IGl0J3MgaW1wb3J0YW50IHRvIGdpdmUgdGhlIHVzZXIgdGhlIHBvc3NpYmlsaXR5IHRvIGNvbmZp
Z3VyZSAKPj4gdGhlIGRlZmVycmVkIHdvcmtlcgo+PiBhcyB5b3Ugc3VnZ2VzdGVkLCBpZiB0aGUg
dXNlciBkZWNpZGVzIHRvIHJlbHkgb24gTGludXggdG8gaGFuZGxlIGEgCj4+IGNyaXRpY2FsIG5v
dGlmaWNhdGlvbiwKPj4gYnV0IEknZCBwcmVmZXIgcXVldWluZyB1cCB0aGlzIHdvcmsgeW91IHN1
Z2dlc3RlZCBvbiBhIGRpZmZlcmVudCAKPj4gc2VyaWVzIG9uIHRvcCBvZiB0aGlzIG9uZS4KPj4g
KHdoaWNoIGlzIHN0YXJ0aW5nIHRvIGJlIGEgbGl0dGxlIHRvIG11Y2ggdm9sdW1pbm91cy4uLmZv
ciBiZWluZyBqdXN0IAo+PiB0aGUgY29yZSBzdXBwb3J0KQo+IAo+IEFncmVlLCB5b3UgY2FuIGJ1
aWxkIHRoZXNlIGZlYXR1cmVzIGluY3JlbWVudGFsbHkuCgpBbHRob3VnaCwgYSBXUV9TWVNGUyBm
bGFnIHdvdWxkbid0IGhhcm0gdG9vIG11Y2ggdGhpcyB2ZXJzaW9uIGFuZCBtaWdodApnaXZlIHBv
c3NpYmlsaXR5IHRvIHR1bmUvZXhwZXJpbWVudCB3aXRoIGl0LgoKPiAKPiBSZWdhcmRzLAo+IEx1
a2Fzego+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
