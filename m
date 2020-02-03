Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57989150E55
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 18:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCy23Kn9uxB9fwGsEl+E7iPi5pdAXEa3hDGBatGrmvU=; b=duG+zk5jWfOjbq
	QVRN5n//95Zcj9dAfkmDtP9PorFYDtcmeJTCK4jxhIzGMoDtRVme3zfZ7WqoSqftqKKRLKEx1iqYr
	tiekBM5xqjqLdFVworSgkhZY4lv+P+nqALDD5LMnUx9g/RdFB7jBl7179/vn1btEAvShCmZjMoQ7a
	FICjSZvggQXJJV4igZDOfo0bm4Mp5mOfb+Dza/9/5Ma6zghy3LJEDk5EB0C8UxwlS3Qvwo2lnPHYT
	LW6NUYdvuuNVilbTugtVhZqPk3DITVDVRv9m+fu9YvAOxXDM96i+EcnPNipQkCDLrVT0LOBTrbraJ
	/YDFRrnvldza2DrG5SiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyfCv-00073g-Br; Mon, 03 Feb 2020 17:08:21 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyfCo-00072z-0u
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 17:08:16 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3F48368BFE; Mon,  3 Feb 2020 18:08:09 +0100 (CET)
Date: Mon, 3 Feb 2020 18:08:09 +0100
From: Christoph Hellwig <hch@lst.de>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PoC] arm: dma-mapping: direct: Apply dma_pfn_offset only when
 it is valid
Message-ID: <20200203170809.GA19293@lst.de>
References: <8eb68140-97b2-62ce-3e06-3761984aa5b1@ti.com>
 <20200114164332.3164-1-peter.ujfalusi@ti.com>
 <f8121747-8840-e279-8c7c-75a9d4becce8@arm.com>
 <28ee3395-baed-8d59-8546-ab7765829cc8@ti.com>
 <4f0e307f-29a9-44cd-eeaa-3b999e03871c@arm.com>
 <75843c71-1718-8d61-5e3d-edba6e1b10bd@ti.com> <20200130075332.GA30735@lst.de>
 <b2b1cb21-3aae-2181-fd79-f63701f283c0@ti.com> <20200130164010.GA6472@lst.de>
 <c37b12e4-0e0c-afa2-a8e4-782ccd57542d@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c37b12e4-0e0c-afa2-a8e4-782ccd57542d@ti.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_090814_365810_C2F92470 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: robh@kernel.org, vigneshr@ti.com, konrad.wilk@oracle.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org,
 rogerq@ti.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMzEsIDIwMjAgYXQgMDQ6MDA6MjBQTSArMDIwMCwgUGV0ZXIgVWpmYWx1c2kg
d3JvdGU6Cj4gSSBzZWUuIE15IFBvQyBwYXRjaCB3YXMgbm90IHRvbyBvZmYgdGhlbiA7KQo+IFNv
IHRoZSBwbGFuIGlzIHRvIGhhdmUgYSBnZW5lcmljIGltcGxlbWVudGF0aW9uIGZvciBhbGwgb2Yg
dGhlCj4gYXJjaGl0ZWN0dXJlLCByaWdodD8KCtCGIGRvbid0IGtub3cgb2YgYSBjb25jcmV0ZSBw
bGFuLCBidXQgdGhhdCdzIGRlZmludGl2ZWx5IHdoYXQgSSdkIGxpa2UKdG8gc2VlLgoKPiA+PiBU
aGUgZG1hX3Bmbl9vZmZzZXQgaXMgX3N0aWxsXyBhcHBsaWVkIHRvIHRoZSBtYXNrIHdlIGFyZSB0
cnlpbmcgdG8gc2V0Cj4gPj4gKGFuZCB2YWxpZGF0ZSkgdmlhIGRtYS1kaXJlY3QuCj4gPiAKPiA+
IEFuZCBmb3IgdGhlIGdlbmVyYWwgY2FzZSB0aGF0IGlzIGV4YWN0bHkgdGhlIHJpZ2h0IHRoaW5n
IHRvIGRvLCB3ZQo+ID4ganVzdCBuZWVkIHRvIGRlYWwgd2l0aCByZWFsbHkgb2RkIFpPTkVfRE1B
IHBsYWNlbWVudHMgbGlrZSB5b3Vycy4KPiAKPiBJJ20gc3RpbGwgbm90IGNvbnZpbmNlZCwgdGhl
IHBvaW50IG9mIHRoZSBETUEgbWFzaywgYXQgbGVhc3QgaG93IEkgc2VlCj4gaXQsIHRvIGNoZWNr
IHRoYXQgdGhlIGRtYSBhZGRyZXNzIGNhbiBiZSBoYW5kbGVkIGJ5IHRoZSBkZXZpY2UgKERNQSwK
PiBwZXJpcGhlcmFsIHdpdGggYnVpbHQgaW4gRE1BLCBldGMpLCBpdCBpcyBub3QgYWdhaW5zdCBw
aHlzaWNhbCBhZGRyZXNzLgo+IERvaW5nIHBoeXNfdG9fZG1hKCkgb24gdGhlIG1hc2sgZnJvbSB0
aGUgZG1hX3NldF9tYXNrKCkgaXMganVzdCB3cm9uZy4KCldlIGhhdmUgYSB0cmFuc2xhdGlvbiBi
ZXR3ZWVuIHRoZSBhZGRyZXNzZXMgdGhhdCB0aGUgZGV2aWNlIHNlZXMsIGFuZAp0aG9zZSB0aGF0
IHRoZSBDUFUgc2Vlcy4gIFRoZSBkZXZpY2UgY2FuIGFkZHJlc3MgTiBiaXRzIG9mIGFkZHJlc3Mg
c3BhY2UKYXMgc2VlbiBmcm9tIHRoZSBkZXZpY2UuICBUaGUgYWRkcmVzc2VzIGVuY29kZWQgaW4g
bWF4X3BmbiwKem9uZV9kbWFfYml0cyBvciB0aGUgaGFyY29kZWQgMzIgaW4gdGhlIHpvbmUgZG1h
IDMyIGNhc2UgYXJlIENQVSBhZGRyZXNzLgpTbyBubywgd2UgY2FuJ3QgYmxpbmRseSBjb21wYXJl
IHRob3NlLgoKCj4gPiBCdXQgdGhhdCB3aWxsIGNhdXNlIHlldCBhbm90aGVyIHJlZ3Jlc3Npb24g
aW4gd2hhdCB3ZSBoYXZlIGp1c3QgZml4ZWQKPiA+IHdpdGggdXNpbmcgdGhlIGdlbmVyaWMgZGly
ZWN0IG9wcywgYXQgd2hpY2ggcG9pbnRzIGl0IHR1cm5zIGludG8gd2hvCj4gPiBzY3JlYW1zIGxv
dWRlci4KPiAKPiBIZWhlLCBJIHNlZS4KPiBJIGdlbnVpbmVseSBjdXJpb3VzIHdoeSBrMiBwbGF0
Zm9ybSB3b3JrZWQganVzdCBmaW5lIHdpdGggTFBBRSAoaXQgbmVlZHMKPiBpdCksIGJ1dCBndXlz
IGhhZCBpc3N1ZXMgd2l0aCBMUEFFIG9uIGRyYTcvYW01Lgo+IFRoZSBmaXggZm9yIGRyYTcvYW01
IGJyb2tlIGsyLgo+IEFzIGZhciBhcyBJIGNhbiBzZWUgdGhlIG1haW4gKG9ubHkpIGRpZmZlcmVu
Y2UgaXMgdGhhdCBrMiBoYXZlCj4gZG1hX3Bmbl9vZmZzZXQgPSAweDc4MDAwMCwgd2hpbGUgZHJh
Ny9hbTUgaGF2ZSBpdCAwIChyZWFsbHkgZGlyZWN0IG1hcHBpbmcpLgoKSG93IG11Y2ggbWVtb3J5
IGRvZXMgdGhlIHBsYXRmb3JtIGhhdmU/ICBPbmNlIHlvdSBhcmUgYWJvdmUgMzItYml0cyB3b3J0
aApvZiBhZGRyZXNzIHNwYWNlIGRldmljZXMgd2l0aCBhIDMyLWJpdCBETUEgbWFzayBjYW4ndCBh
ZGRyZXNzIGFsbCB0aGUKbWVtb3J5LiAgTm93IGlmIGsyIGZvciBleGFtcGxlIG9ubHkgaGFkIGxl
c3MgdGhhbiA0RyBvZiBtZW1vcnksIGJ1dCBhdAphZGRyZXNzZXMgb3ZlciA0RywgYW5kIHRoZSBv
ZmZzZXQgY29tcGVuc2F0ZXMgZm9yIHRoZSBvZmZzZXQgb2YgdGhlIERSQU0KaXQgd29ya3Mgd2l0
aG91dCBib3VuY2UgYnVmZmVyaW5nIGFuZCB0aHVzIGRpZG4ndCBuZWVkIHN3aW90bGIuICBCdXQg
YW55CnBsYXRmb3JtIHRoYXQgaGFzIERSQU0gdGhhdCBpcyBub3QgYWRkcmVzc2FibGUgd2lsbCBu
ZWVkIHN3aW90bGIuCgo+ID4gIAl1NjQgbWluX21hc2s7Cj4gPiAgCj4gPiArCWlmIChtYXNrID49
IERNQV9CSVRfTUFTSygzMikpCj4gPiArCQlyZXR1cm4gMTsKPiA+ICsKPiAKPiBSaWdodCwgc28g
c2tpcHBpbmcgcGh5c190b19kbWEoKSBmb3IgdGhlIG1hc2sgYW5kIGJlbGlldmluZyB0aGF0IGl0
IHdpbGwKPiB3b3JrLi4KPiAKPiBJdCBkb2VzOiBhdWRpbyBhbmQgZG1hdGVzdCBtZW1jcHkgdGVz
dHMgYXJlIGp1c3QgZmluZSB3aXRoIHRoaXMsIE1NQwo+IGFsc28gcHJvYmVkIHdpdGggQURNQSBl
bmFibGVkLgo+IAo+IEFzIGZhciBhcyBJIGNhbiB0ZWxsIGl0IHdvcmtzIGFzIHdlbGwgYXMgZmFs
bGluZyBiYWNrIHRvIHRoZSBvbGQgYXJtIG9wcwo+IGluIGNhc2Ugb2YgTFBBRSAmJiBkbWFfcGZu
X29mZnNldCAhPSAwCj4gCj4gRndpdzoKPiBUZXN0ZWQtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRl
ci51amZhbHVzaUB0aS5jb20+Cj4gCj4gV291bGQgeW91IGJlIGNvbWZvcnRhYmxlIHRvIHNlbmQg
dGhpcyBwYXRjaCBmb3IgbWFpbmxpbmUgd2l0aAo+IEZpeGVzOiBhZDNjN2IxOGM1YjMgKCJhcm06
IHVzZSBzd2lvdGxiIGZvciBib3VuY2UgYnVmZmVyaW5nIG9uIExQQUUKPiBjb25maWdzIikKClRo
YXQgaXMgdGhlIGJpZyBxdWVzdGlvbi4gIEkgZG9uJ3QgZmVlbCBvdmVybHkgY29tZm9ydGFibGUg
YXMgSSd2ZSBiZWVuCnRyeWluZyB0byBnZXQgdGhpcyByaWdodCwgYnV0IHNvIGZhciBpdCBzZWVt
cyBsaWtlIHRoZSBsZWFzdCBiYWQgb3B0aW9uLgpJJ2xsIHNlbmQgb3V0IGEgcHJvcGVyIHBhdGNo
IHdpdGggdXBkYXRlZCBjb21tZW50cyBhbmQgd2lsbCBzZWUgd2hhdApwZW9wbGUgdGhpbmsuCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
