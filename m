Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB921EF872
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:58:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9eZWgrwCLNeDT8WBOVNTLpqMSTjuBq9w0HLVXgMdwSs=; b=TW4+52tnepGNh5J7tN4GHoG9N
	ai1nNdMaZeGldiTdNhUtvMpymkSGCESVcgH0cFg4Yo+lGIRXKNxnVq8g1bjmLCSFq+2lEPIVOeHq3
	m8wjhXYWEIE2O0gLrRAPf4E7XHEGadyogJswA9ELj+tIQcSB951diwbro6NnoB/Y0gtzFYeLb1y2v
	ETNYWZoC3VwopsCtkSqkygVvsrTkFEmM9qO+++VdnN8DtNyyYXM8OXgRxcXGGpLRLTRYdipuQnXc5
	K3beetm304o1QpHgQexoyBv65l/YrA7BxdjjDlxWi0hgvahfgyDJzjQb5GsszdGKsa6P7jDX3ZDIT
	cW9C6ywhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBvw-00043l-W6; Fri, 05 Jun 2020 12:58:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBvn-00042t-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:58:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCABA31B;
 Fri,  5 Jun 2020 05:58:42 -0700 (PDT)
Received: from [10.57.10.23] (unknown [10.57.10.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 40DF63F305;
 Fri,  5 Jun 2020 05:58:40 -0700 (PDT)
Subject: Re: Please help to confirm the risk if using TPIDRRO_EL0 to save CPU
 number, thanks.
To: Will Deacon <will@kernel.org>, Mark Brown <broonie@kernel.org>
References: <1D289F1E6D91D2489524BBB0B8880A7DA1A39219@dggeml509-mbx.china.huawei.com>
 <20200601070311.GA8601@willie-the-truck>
 <20200605121029.GE5413@sirena.org.uk>
 <20200605123302.GA19936@willie-the-truck>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <a46ddb53-2226-c9c3-bf3f-0fcc5d924b1e@arm.com>
Date: Fri, 5 Jun 2020 13:58:39 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200605123302.GA19936@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_055844_036847_E9099E2F 
X-CRM114-Status: GOOD (  20.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: "fujun \(F\)" <oliver.fu@hisilicon.com>,
 Wuxuecheng <wuxuecheng@hisilicon.com>, "Lixin \(Victor,
 Kirin\)" <victor.lixin@hisilicon.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNi0wNSAxMzozMywgV2lsbCBEZWFjb24gd3JvdGU6Cj4gT24gRnJpLCBKdW4gMDUs
IDIwMjAgYXQgMDE6MTA6MjlQTSArMDEwMCwgTWFyayBCcm93biB3cm90ZToKPj4gT24gTW9uLCBK
dW4gMDEsIDIwMjAgYXQgMDg6MDM6MTJBTSArMDEwMCwgV2lsbCBEZWFjb24gd3JvdGU6Cj4+PiBP
biBGcmksIE1heSAyOSwgMjAyMCBhdCAwOTowMzozN0FNICswMDAwLCBMaXhpbiAoVmljdG9yLCBL
aXJpbikgd3JvdGU6Cj4+Cj4+Pj4gICAgIEludGVsIG9wdGltaXplZCBnZXRjcHUgc3lzY2FsbCBv
biBMaW51eC9BbmRyb2lkIHN5c3RlbSBieSB1c2luZyB2RFNPLCBidXQKPj4+PiAgICAgQVJNIGRv
ZXNuJ3QgZG8gYW55IG9wdGltaXphdGlvbnMgZm9yIGdldGNwdSBzeXNjYWxsLgo+Pgo+Pj4+ICAg
ICBJbiBBcHBsZSBvcGVuIHNvdXJjZSwgVFBJRFJST19FTDAvVFBJRFJVUk8gaXMgdXNlZCB0byBz
YXZlIHRoZSBDUFUgbnVtYmVyLAo+Pj4+ICAgICBbMV1odHRwczovL29wZW5zb3VyY2UuYXBwbGUu
Y29tL3NvdXJjZS94bnUveG51LTQ1NzAuMS40Ni9vc2Ztay9hcm0vY3N3aXRjaC5zLmF1dG8uaHRt
bAo+Pgo+Pj4+ICAgICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgSXMgdGhlcmUgYW55IHJpc2sgaWYg
dXNpbmcgVFBJRFJST19FTDAvVFBJRFJVUk8gdG8gaW1wbGVtZW50Cj4+Pj4gICAgIHRoZSB2RFNP
IGZvciBnZXRjcHU/IElzIHRoZXJlIGFueSBwb3NzaWJsZSB0byBicmVhayBhbnkgQVJNIEFCST8g
Q2FuIHlvdQo+Pj4+ICAgICBoZWxwIHVzIHRvIGNvbmZpcm0gdGhlIGNvbnNpZGVyYXRpb25zPwo+
Pgo+Pj4gRG8geW91IGhhdmUgYSB1c2UtY2FzZSBmb3IgaGlnaC1wZXJmb3JtYW5jZSBnZXRjcHUo
KSB0aGF0IGlzbid0IGJldHRlcgo+Pj4gc3VpdGVkIHRvIHJzZXEoKT8KPj4KPj4gSSBhY3R1YWxs
eSBoYXZlIGFuIGltcGxlbWVudGF0aW9uIG9mIHRoaXMgdGhhdCBJJ2QgYmVlbiB3YWl0aW5nIGZv
ciB0aGUKPj4gZW5kIG9mIHRoZSBtZXJnZSB3aW5kb3cgdG8gcG9zdCwgbGFyZ2VseSBiZWNhdXNl
IEkgZmlyc3QgaGVhcmQgb2YgdGhlCj4+IHVzZSBvZiByZXN0YXJ0YWJsZSBzZXF1ZW5jZXMgZm9y
IHRoaXMgYWZ0ZXIgSSdkIGFscmVhZHkgaW1wbGVtZW50ZWQgdGhlCj4+IHZEU08gdmVyc2lvbiAt
IHRoaXMgc3R1ZmYgaXMgbm90IGFzIGRpc2NvdmVyYWJsZSBhcyBvbmUgbWlnaHQgZGVzaXJlLgo+
PiBJdCBkb2Vzbid0IHN0b3JlIHRoZSBDUFUgSUQgZGlyZWN0bHkgaW4gVFBJRFJSTyBidXQgcmF0
aGVyIHVzZXMgVFBJRERSUk8KPj4gdG8gc3RvcmUgdGhlIG9mZnNldCBvZiBhIHBlci1DUFUgc3Ry
dWN0IGluIHRoZSB2RFNPIGRhdGEgaW4gb3JkZXIgdG8KPj4gYWxsb3cgZm9yIHRoZSBhZGRpdGlv
biBvZiBmdXJ0aGVyIGRhdGEgaW4gdGhlIGZ1dHVyZS4gIEknbGwgcG9zdCBpdAo+PiB0b2RheSBm
b3IgZGlzY3Vzc2lvbi4KPj4KPj4gVGhlIGxhdGVzdCB2ZXJzaW9uIG9mIHRoZSBNYXRoaWV1J3Mg
Z2xpYmMgaW50ZWdyYXRpb24gcGF0Y2hlcyBpczoKPj4KPj4gICAgICBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9sa21sLzIwMjAwNTI3MTg1MTMwLjU2MDQtMy1tYXRoaWV1LmRlc25veWVyc0BlZmZp
Y2lvcy5jb20vCj4+Cj4+IFRoZSBvbmx5IHRoaW5ncyBJIGNhbiBzZWUgd2hlcmUgdGhlIHZEU08g
ZG9lcyBiZXR0ZXIgYXJlIHN1cHBvcnQgZm9yIHRoZQo+PiBub2RlIHBhcmFtZXRlciBvZiBnZXRj
cHUoKSBhbmQgdGhlIGVhc2Ugb2YgaW1wbGVtZW50YXRpb24gZm9yIHRoZSB1c2VycywKPj4gdGhl
IHJlc3RhcnRhYmxlIHNlcXVlbmNlcyBjb2RlIHdhcyBtZXJnZWQgYWxsIHRoZSB3YXkgYmFjayBp
biB2NC4xOCBhbmQKPj4gaXQncyBzdGlsbCBub3QgdXNlZCBieSBhbnkgb2YgdGhlIGxpYmNzIGFz
IGZhciBhcyBJIGNhbiBzZWUuICBUaGUgbm9kZQo+PiB0byBDUFUgbWFwcGluZyBpcyBzdGF0aWMg
c28gSSdtIG5vdCBzdXJlIGhvdyBleGNpdGluZyB0aGF0IGlzLCBpdCBjb3VsZAo+PiBiZSBsb29r
ZWQgdXAgc2VwYXJhdGVseSB3aGVuIHByb2Nlc3NpbmcgZGF0YSBpZiBpdCdzIGltcG9ydGFudCwg
YnV0IHRoZQo+PiBlYXNlIG9mIHVzZSBmZWVscyBsaWtlIHNvbWV0aGluZy4KPj4KPj4gT25lIGlt
cG9ydGFudCBjYXZlYXQgd2l0aCB1c2luZyBUUElEUlJPIGlzIHRoYXQgaWYgS1BUSSBpcyBhY3Rp
dmUgdGhlbgo+PiB0aGUgS1BUSSB0cmFtcG9saW5lIHVzZXMgVFBJRFJSTyBhcyBhIHNjcmF0Y2gg
cmVnaXN0ZXIgc28gdW5sZXNzIHdlIGNhbgo+PiBmaW5kIGFub3RoZXIgcmVnaXN0ZXIgZm9yIHNj
cmF0Y2ggdXNhZ2UgdGhlIHVzZXIgd291bGQgbmVlZCB0byBnaXZlIHVwCj4+IHRoZSBwcm90ZWN0
aW9ucyBvZmZlcmVkIGJ5IEtQVEkgb3IgcnVuIG9uIGZ1dHVyZSBoYXJkd2FyZSB3aGljaCBjYW4g
dXNlCj4+IEUwUEQgaW5zdGVhZC4gIFRoaXMgc2V2ZXJlbHkgbGltaXRzIHRoZSB1c2VmdWxuZXNz
IG9uIGN1cnJlbnQgc3lzdGVtcy4KPiAKPiBXZSBvbmx5IHRyYXNoIFRQSURSUk8gb24gZW50cnks
IHNvIEkgdGhpbmsgeW91IGNvdWxkIHJlcG9wdWxhdGUgaXQgb24gZXZlcnkKPiBleGNlcHRpb24g
ZnJvbSB1c2Vyc3BhY2UgYW5kIGl0ICpzaG91bGQqIHdvcmsgd2l0aCBLUFRJIChmYW1vdXMgbGFz
dCB3b3JkcyEpCgpJcyB0aGF0IG5vdCBhbHJlYWR5IHRoZSBjYXNlIGdpdmVuIHRoYXQgd2Uga2Vl
cCBUTFMgZ3ViYmlucyBpbiB0aGVyZSBmb3IgCmNvbXBhdCB0YXNrcz8KClJvYmluLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
