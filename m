Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2AF1B1341
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwsSz5PpILkLj7jjlY+9R1lhx9RQiqIwM0P+XAAqTc8=; b=HJvtqTvq7rfddL
	WBYx8kAGFa39Pp56HusddhLT8l4kNOcZiXJ9jthr4dOzXYa9mGDzp1tFqcon3R8N/Ans54Uk5EJ56
	T0uIMIq2ExXjdijhgZbStwNbPrADLSLCC5FoKZwtIRqDQi0OKgxiyqhQDwnVjPp0kIO5Of6KCDCSI
	VHIB9w1BMs3DRVUhrBmfQR2ndaDBy/4rOIzHF3d01/JpcdwoLewBdNyJxipRUF8G1CsM3RtKvDgeu
	iyF0uvbjEXSCDuahgGCx0B3p3mOqUuLjqLydieqggnXIee3+8or8M4j1mcmFaIM2SPfS9REo2TnI6
	i5irVA/z0FMRGzGFP9Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaNH-0001OV-EV; Mon, 20 Apr 2020 17:38:27 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaN3-0001Nc-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:38:15 +0000
IronPort-SDR: tAvu7Wl48TEsnaB7PulT+ixBzPRiwOq5sbKncbgg0QUee+ogpRNW+3G3xzfHJIO4OYbY4d4n/N
 TeEzyDsz1Eyw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 10:38:12 -0700
IronPort-SDR: jXFMh9f+85u+2xYc9LWBLO1qTCipRpzuYVQpwJK5C1scNWIv66sCzwn7tksxx7xdWh5fiebynf
 FmNQdC49Ojug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="429210397"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2020 10:38:12 -0700
Date: Mon, 20 Apr 2020 10:44:10 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Felix Kuehling <felix.kuehling@amd.com>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420104410.3d1622e7@jacob-builder>
In-Reply-To: <65709b48-526b-ff43-760c-0fe0317d5e9c@amd.com>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica>
 <20200420081034.GA17305@infradead.org>
 <6b195512-fa73-9a49-03d8-1ed92e86f607@amd.com>
 <20200420115504.GA20664@infradead.org>
 <966e190e-ca9f-4c64-af05-43b0f0d8d012@amd.com>
 <65709b48-526b-ff43-760c-0fe0317d5e9c@amd.com>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_103814_051676_21BFF756 
X-CRM114-Status: GOOD (  28.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, devicetree@vger.kernel.org, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, Christoph Hellwig <hch@infradead.org>,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAyMCBBcHIgMjAyMCAxMTowMDoyOCAtMDQwMApGZWxpeCBLdWVobGluZyA8ZmVsaXgu
a3VlaGxpbmdAYW1kLmNvbT4gd3JvdGU6Cgo+IEFtIDIwMjAtMDQtMjAgdW0gODo0MCBhLm0uIHNj
aHJpZWIgQ2hyaXN0aWFuIEvDtm5pZzoKPiA+IEFtIDIwLjA0LjIwIHVtIDEzOjU1IHNjaHJpZWIg
Q2hyaXN0b3BoIEhlbGx3aWc6ICAKPiA+PiBPbiBNb24sIEFwciAyMCwgMjAyMCBhdCAwMTo0NDo1
NlBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOiAgCj4gPj4+IEFtIDIwLjA0LjIwIHVt
IDEwOjEwIHNjaHJpZWIgQ2hyaXN0b3BoIEhlbGx3aWc6ICAKPiA+Pj4+IE9uIE1vbiwgQXByIDIw
LCAyMDIwIGF0IDA5OjQyOjEzQU0gKzAyMDAsIEplYW4tUGhpbGlwcGUgQnJ1Y2tlcgo+ID4+Pj4g
d3JvdGU6ICAKPiA+Pj4+PiBSaWdodCwgSSBjYW4gc2VlIHRoZSBhcHBlYWwuIEkgc3RpbGwgbGlr
ZSBoYXZpbmcgYSBzaW5nbGUgbW11Cj4gPj4+Pj4gbm90aWZpZXIgcGVyCj4gPj4+Pj4gbW0gYmVj
YXVzZSBpdCBlbnN1cmVzIHdlIGFsbG9jYXRlIGEgc2luZ2xlIFBBU0lEIHBlciBtbSAoYXMKPiA+
Pj4+PiByZXF1aXJlZCBieQo+ID4+Pj4+IHg4NikuIEkgc3VwcG9zZSBvbmUgYWx0ZXJuYXRpdmUg
aXMgdG8gbWFpbnRhaW4gYSBoYXNodGFibGUgb2YKPiA+Pj4+PiBtbS0+cGFzaWQsCj4gPj4+Pj4g
dG8gYXZvaWQgaXRlcmF0aW5nIG92ZXIgYWxsIGJvbmRzIGR1cmluZyBhbGxvY2F0aW9uLiAgCj4g
Pj4+PiBHaXZlbiB0aGF0IHRoZSBQQVNJRCBpcyBhIHByZXR0eSBnZW5lcmljIGFuZCBpbXBvcnRh
bnQgY29uY2VwdAo+ID4+Pj4gY2FuIHdlIGp1c3QgYWRkIGl0IGRpcmVjdGx5IHRvIHRoZSBtbV9z
dHJ1Y3QgYW5kIGFsbG9jYXRlIGl0Cj4gPj4+PiBsYXppbHkgb25jZSB3ZSBmaXJzdCBuZWVkIGl0
PyAgCj4gPj4+IFdlbGwgdGhlIHByb2JsZW0gaXMgdGhhdCB0aGUgUEFTSUQgbWlnaHQgYXMgd2Vs
bCBiZSBkZXZpY2UKPiA+Pj4gc3BlY2lmaWMuIEUuZy4KPiA+Pj4gc29tZSBkZXZpY2VzIHVzZSAx
NmJpdCBQQVNJRHMsIHNvbWUgMTViaXQsIHNvbWUgb3RoZXIgb25seSAxMmJpdC4KPiA+Pj4KPiA+
Pj4gU28gd2hhdCBjb3VsZCAoYXQgbGVhc3QgaW4gdGhlb3J5KSBoYXBwZW4gaXMgdGhhdCB5b3Ug
bmVlZCB0bwo+ID4+PiBhbGxvY2F0ZSBkaWZmZXJlbnQgUEFTSURzIGZvciB0aGUgc2FtZSBwcm9j
ZXNzIGJlY2F1c2UgZGlmZmVyZW50Cj4gPj4+IGRldmljZXMgbmVlZCBvbmUuICAKPiA+PiBUaGlz
IGRpcmVjdGx5IGNvbnRyYWRpY3RzIHRoZSBzdGF0ZW1lbnQgZnJvbSBKZWFuLVBoaWxpcHBlIGFi
b3ZlCj4gPj4gdGhhdCB4ODYgcmVxdWlyZXMgYSBzaW5nbGUgUEFTSUQgcGVyIG1tX3N0cnVjdC7C
oCBJZiB3ZSBtYXkgbmVlZAo+ID4+IGRpZmZlcmVudCBQQVNJRHMgZm9yIGRpZmZlcmVudCBkZXZp
Y2VzIGFuZCBjYW4gYWN0dWFsbHkgc3VwcG9ydAo+ID4+IHRoaXMganVzdCBhbGxvY2F0aW5nIG9u
ZSBwZXIgW2RldmljZSwgbW1fc3RydWN0XSB3b3VsZCBtYWtlIG1vc3QKPiA+PiBzZW5zZSBvZiBt
ZSwgYXMgaXQgZG9lc24ndCBjb3VwbGUgb3RoZXJ3aXNlIGRpc2pvaW50IHN0YXRlLiAgCj4gPgo+
ID4gV2VsbCBJJ20gbm90IGFuIGV4cGVydCBvbiB0aGlzIHRvcGljLiBGZWxpeCBjYW4gcHJvYmFi
bHkgdGVsbCB5b3UgYQo+ID4gYml0IG1vcmUgYWJvdXQgdGhhdC4KPiA+Cj4gPiBNYXliZSBpdCBp
cyBzdWZmaWNpZW50IHRvIGtlZXAgdGhlIGFsbG9jYXRlZCBQQVNJRHMgYXMgc21hbGwgYXMKPiA+
IHBvc3NpYmxlIGFuZCByZXR1cm4gYW4gYXBwcm9wcmlhdGUgZXJyb3IgaWYgYSBkZXZpY2UgY2Fu
J3QgZGVhbCB3aXRoCj4gPiB0aGUgYWxsb2NhdGVkIG51bWJlci4KPiA+Cj4gPiBJZiBhIGRldmlj
ZSBjYW4gb25seSBkZWFsIHdpdGggMTJiaXQgUEFTSURzIGFuZCBtb3JlIHRoYW4gMl4xMiB0cnkK
PiA+IHRvIHVzZSBpdCB0aGVyZSBpc24ndCBtdWNoIGVsc2Ugd2UgY2FuIGRvIHRoYW4gcmV0dXJu
aW5nIGFuIGVycm9yCj4gPiBhbnl3YXkuICAKPiAKPiBJJ20gcHJvYmFibHkgbWlzc2luZyBzb21l
IGNvbnRleHQuIEJ1dCBsZXQgbWUgdHJ5IGdpdmluZyBhIHVzZWZ1bAo+IHJlcGx5Lgo+IAo+IFRo
ZSBoYXJkd2FyZSBhbGxvd3MgeW91IHRvIGhhdmUgZGlmZmVyZW50IFBBU0lEcyBmb3IgZWFjaCBk
ZXZpY2UKPiByZWZlcnJpbmcgdG8gdGhlIHNhbWUgYWRkcmVzcyBzcGFjZS4gQnV0IEkgdGhpbmsg
aXQncyBPSyBmb3Igc29mdHdhcmUKPiB0byBjaG9vc2Ugbm90IHRvIGRvIHRoYXQuIElmIExpbnV4
IHdhbnRzIHRvIG1hbmFnZSBvbmUgUEFTSUQKPiBuYW1lc3BhY2UgZm9yIGFsbCBkZXZpY2VzLCB0
aGF0J3MgYSByZWFzb25hYmxlIGNob2ljZSBJTU8uCj4gCk9uIFZULWQsIHN5c3RlbSB3aWRlIFBB
U0lEIG5hbWVzcGFjZSBpcyByZXF1aXJlZC4gSGVyZSBpcyBhIHNlY3Rpb24gb2YKdGhlIGRvY3Vt
ZW50YXRpb24gSSBhbSB3b3JraW5nIG9uLgoKTmFtZXNwYWNlcwo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09CklPQVNJRHMgYXJlIGxpbWl0ZWQgc3lz
dGVtIHJlc291cmNlcyB0aGF0IGRlZmF1bHQgdG8gMjAgYml0cyBpbgpzaXplLiBTaW5jZSBlYWNo
IGRldmljZSBoYXMgaXRzIG93biB0YWJsZSwgdGhlb3JldGljYWxseSB0aGUgbmFtZXNwYWNlCmNh
biBiZSBwZXIgZGV2aWNlIGFsc28uIEhvd2V2ZXIsIFZULWQgYWxzbyBzdXBwb3J0cyBzaGFyZWQg
d29ya3F1ZXVlCmFuZCBFTlFDTURbMV0gd2hlcmUgb25lIElPQVNJRCBjb3VsZCBiZSB1c2VkIHRv
IHN1Ym1pdCB3b3JrIG9uCm11bHRpcGxlIGRldmljZXMuIFRoaXMgcmVxdWlyZXMgSU9BU0lEIHRv
IGJlIHN5c3RlbS13aWRlIG9uIEludGVsIFZULWQKcGxhdGZvcm1zLiBUaGlzIGlzIGFsc28gdGhl
IHJlYXNvbiB3aHkgZ3Vlc3QgbXVzdCB1c2UgZW11bGF0ZWQgdmlydHVhbApjb21tYW5kIGludGVy
ZmFjZSB0byBhbGxvY2F0ZSBJT0FTSUQgZnJvbSB0aGUgaG9zdC4KCk9uIFZULWQsIHN0b3JhZ2Ug
b2YgSU9BU0lEIHRhYmxlIGlzIGF0IHBlciBkZXZpY2Ugd2hpbGUgdGhlCmdyYW51bGFyaXR5IG9m
IGFzc2lnbm1lbnQgaXMgcGVyIElPQVNJRC4gRXZlbiB0aG91Z2gsIGVhY2ggZ3Vlc3QKSU9BU0lE
IG11c3QgaGF2ZSBhIGJhY2tpbmcgaG9zdCBJT0FTSUQsIGd1ZXN0IElPQVNJRCBjYW4gYmUgZGlm
ZmVyZW50CnRoYW4gaXRzIGhvc3QgSU9BU0lELiBUaGUgbmFtZXNwYWNlIG9mIGd1ZXN0IElPQVNJ
RCBpcyBjb250cm9sbGVkIGJ5ClZNTSwgd2hpY2ggZGVjaWRlZHMgd2hldGhlciBpZGVudGl0eSBt
YXBwaW5nIG9mIEctSCBJT0FTSURzIGlzIG5lY2Vzc2FyeS4KCjEuCmh0dHBzOi8vc29mdHdhcmUu
aW50ZWwuY29tL3NpdGVzL2RlZmF1bHQvZmlsZXMvbWFuYWdlZC9jNS8xNS9hcmNoaXRlY3R1cmUt
aW5zdHJ1Y3Rpb24tc2V0LWV4dGVuc2lvbnMtcHJvZ3JhbW1pbmctcmVmZXJlbmNlLnBkZgoKRm9y
IHRoZSBwZXIgbW1fc3RydWN0IFBBU0lEIHF1ZXN0aW9uIGJ5IENocmlzdGlhbiwgd2UgYXJlIHBy
b3Bvc2luZwp0aGF0IGluIHg4NiBjb250ZXh0IGFuZCBhIGxhenkgZnJlZS4KCmh0dHBzOi8vbGtt
bC5vcmcvbGttbC8yMDIwLzMvMzAvOTEwCgo+IERpZmZlcmVudCBkZXZpY2VzIGhhdmUgZGlmZmVy
ZW50IGxpbWl0cyBmb3IgdGhlIHNpemUgb2YgUEFTSUQgdGhleSBjYW4KPiBzdXBwb3J0LiBGb3Ig
ZXhhbXBsZSBBTUQgR1BVcyBzdXBwb3J0IDE2LWJpdHMgYnV0IHRoZSBJT01NVSBzdXBwb3J0cwo+
IGxlc3MuIFNvIG9uIEFQVXMgd2UgdXNlIHNtYWxsIFBBU0lEcyBmb3IgY29udGV4dHMgdGhhdCB3
YW50IHRvIHVzZQo+IElPTU1VdjIgdG8gYWNjZXNzIG1lbW9yeSwgYnV0IGJpZ2dlciBQQVNJRHMg
Zm9yIGNvbnRleHRzIHRoYXQgZG8gbm90Lgo+IAo+IEkgY2hvb3NlIHRoZSB3b3JkICJjb250ZXh0
IiBkZWxpYmVyYXRlbHksIGJlY2F1c2UgdGhlIGFtZGdwdSBkcml2ZXIKPiB1c2VzIFBBU0lEcyBl
dmVuIHdoZW4gd2UncmUgbm90IHVzaW5nIElPTU1VdjIsIGFuZCB3ZSdyZSB1c2luZyB0aGVtIHRv
Cj4gaWRlbnRpZnkgR1BVIHZpcnR1YWwgYWRkcmVzcyBzcGFjZXMuIFRoZXJlIGNhbiBiZSBtb3Jl
IHRoYW4gb25lIHBlcgo+IHByb2Nlc3MuIEluIHByYWN0aWNlIHlvdSBjYW4gaGF2ZSB0d28sIG9u
ZSBmb3IgZ3JhcGhpY3MgKG5vdCBTVk0sCj4gZG9lc24ndCB1c2UgSU9NTVV2MikgYW5kIG9uZSBm
b3IgS0ZEIGNvbXB1dGUgKFNWTSwgY2FuIHVzZSBJT01NVXYyIG9uCj4gQVBVcykuCj4gCj4gQmVj
YXVzZSB0aGUgSU9NTVV2MiBzdXBwb3J0cyBvbmx5IHNtYWxsZXIgUEFTSURzLCB3ZSB3YW50IHRv
IGF2b2lkCj4gZXhoYXVzdGluZyB0aGF0IHNwYWNlIHdpdGggUEFTSUQgYWxsb2NhdGlvbnMgdGhh
dCBkb24ndCB1c2UgdGhlCj4gSU9NTVV2Mi4gU28gb3VyIFBBU0lEIGFsbG9jYXRpb24gZnVuY3Rp
b24gaGFzIGEgInNpemUiIHBhcmFtZXRlciwgYW5kCj4gd2UgdHJ5IHRvIGFsbG9jYXRlZCBhIFBB
U0lEIGFzIGJpZyBhcyBwb3NzaWJsZSBpbiBvcmRlciB0byBsZWF2ZSBtb3JlCj4gcHJlY2lvdXMg
c21hbGxlciBQQVNJRHMgZm9yIGNvbnRleHRzIHRoYXQgbmVlZCB0aGVtLgo+IAo+IFRoZSBib3R0
b20gbGluZSBpcywgd2hlbiB5b3UgYWxsb2NhdGUgYSBQQVNJRCBmb3IgYSBjb250ZXh0LCB5b3Ug
d2FudAo+IHRvIGtub3cgaG93IHNtYWxsIGl0IG5lZWRzIHRvIGJlIGZvciBhbGwgdGhlIGRldmlj
ZXMgdGhhdCB3YW50IHRvIHVzZQo+IGl0LiBJZiB5b3UgbWFrZSBpdCB0b28gYmlnLCBzb21lIGRl
dmljZSB3aWxsIG5vdCBiZSBhYmxlIHRvIHVzZSBpdC4KPiBJZiB5b3UgbWFrZSBpdCB0b28gc21h
bGwsIHlvdSB3YXN0ZSBwcmVjaW91cyBQQVNJRHMgdGhhdCBjb3VsZCBiZQo+IHVzZWQgZm9yIG90
aGVyIGNvbnRleHRzIHRoYXQgbmVlZCB0aGVtLgo+IApTbyBmb3IgQU1ELCBzeXN0ZW0td2lkZSBQ
QVNJRCBhbGxvY2F0aW9uIHdvcmtzIHdpdGggdGhlCnJlc3RyaWN0aW9uL29wdGltaXphdGlvbiBh
Ym92ZT8KCj4gUmVnYXJkcywKPiDCoCBGZWxpeAo+IAoKW0phY29iIFBhbl0KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
