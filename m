Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F06DB23FBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 19:58:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=amI9hGTgDzR1nKixSKiMhWcC3g9lJDHh2Us4HDY9bMg=; b=ltvpaHc/Mb7m//
	Ld+tFcCLCQSeMrggvewAkhcbQLP+tVRsMQBjmAfBp0FJN5C1wLIVBUWKcaA1rpJW1AlAkR2G0GA8k
	Nxnay1bV0lojtnEdDRip2mrC+6OBYZT9xa6rPelDAhtfCMif3krvqXFYfzL/oQn4fY/KHNgfKwVvP
	WiaBSG2UYreTUGybQlPKq26DNoLS1v8MhpXEw9ivgSavkBTeC9xL+h6ZSIHEquV6V31Ho9BGz0DzK
	pYUqVlsPJSZ9I7Xx0IXQz6xoX1wgAA6Rh7xeyjmCcbvtnHCZinlBpBmMpJF3GSdlixwqpD79lsGVP
	SiJWMdZS8EQrqE15HGfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSmXr-0001M4-6A; Mon, 20 May 2019 17:57:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSmXT-00014f-SV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 17:57:44 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD278206B6;
 Mon, 20 May 2019 17:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558375051;
 bh=ffyeII7/nmRLuGHHd0K9nhnUiqgQDgqqy1z0eKBOvyI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=e5o0BcOkg4n6pUD8iLQCFZBCxXxk4bt+VcQsAxSnABUsDz8bRFJlp3uKi8ivj++cG
 USpRioxQgHMiEFvvhoCwIZ8Dg7CKelyHjYARsgbKxU4iMl/ejfFsj8YIAwiA7N8MLU
 eBEAsroj+DCYjUrChLCxOo3iWOMJVat5EBKL8j6g=
Date: Mon, 20 May 2019 12:57:29 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Message-ID: <20190520175729.GC49425@google.com>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
 <20190513072539.GA27708@infradead.org>
 <3a8cea93-2aeb-e5e2-4d56-f0c6449073c3@nvidia.com>
 <20190516133426.GC101793@google.com>
 <bd08ccaa-c6ee-f966-91e4-bcd5d99d5cf2@nvidia.com>
 <20190517132453.GA30700@google.com>
 <ba611a45-9589-8dce-58e1-d99dd463265d@nvidia.com>
 <20190517185545.GB49425@google.com>
 <bf220eba-f9d7-81f3-6b75-db463c74fbfa@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf220eba-f9d7-81f3-6b75-db463c74fbfa@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_105732_272548_C9C46FFB 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, jonathanh@nvidia.com,
 Christoph Hellwig <hch@infradead.org>, kthota@nvidia.com,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, kishon@ti.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU2F0LCBNYXkgMTgsIDIwMTkgYXQgMDc6Mjg6MjlBTSArMDUzMCwgVmlkeWEgU2FnYXIgd3Jv
dGU6Cj4gT24gNS8xOC8yMDE5IDEyOjI1IEFNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gT24g
RnJpLCBNYXkgMTcsIDIwMTkgYXQgMTE6MjM6MzZQTSArMDUzMCwgVmlkeWEgU2FnYXIgd3JvdGU6
Cj4gPiA+IE9uIDUvMTcvMjAxOSA2OjU0IFBNLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiA+
IERvIHlvdSBoYXZlICJsc3BjaSAtdnZ4eHgiIG91dHB1dCBmb3IgdGhlIHJvb3QgcG9ydHMgaGFu
ZHk/Cj4gPiA+ID4gCj4gPiA+ID4gSWYgdGhlcmUncyBzb21lIGNsdWUgaW4gdGhlIHN0YW5kYXJk
IGNvbmZpZyBzcGFjZSB0aGF0IHdvdWxkIHRlbGwgdXMKPiA+ID4gPiB0aGF0IE1TSSB3b3JrcyBm
b3Igc29tZSBldmVudHMgYnV0IG5vdCBvdGhlcnMsIHdlIGNvdWxkIG1ha2UgdGhlIFBDSQo+ID4g
PiA+IGNvcmUgcGF5IGF0dGVudGlvbiBpdC4gIFRoYXQgd291bGQgYmUgdGhlIGJlc3Qgc29sdXRp
b24gYmVjYXVzZSBpdAo+ID4gPiA+IHdvdWxkbid0IHJlcXVpcmUgVGVncmEtc3BlY2lmaWMgY29k
ZS4KPiA+ID4gCj4gPiA+IEhlcmUgaXMgdGhlIG91dHB1dCBvZiAnbHNwY2kgdnZ4eHgnIGZvciBv
bmUgb2YgVGVncmExOTQncyByb290IHBvcnRzLgo+ID4gCj4gPiBUaGFua3MhCj4gPiAKPiA+IFRo
aXMgcG9ydCBhZHZlcnRpc2VzIGJvdGggTVNJIGFuZCBNU0ktWCwgYW5kIG5laXRoZXIgb25lIGlz
IGVuYWJsZWQuCj4gPiBUaGlzIHBhcnRpY3VsYXIgcG9ydCBkb2Vzbid0IGhhdmUgYSBzbG90LCBz
byBob3RwbHVnIGlzbid0IGFwcGxpY2FibGUKPiA+IHRvIGl0Lgo+ID4gCj4gPiBCdXQgaWYgSSB1
bmRlcnN0YW5kIGNvcnJlY3RseSwgaWYgTVNJIG9yIE1TSS1YIHdlcmUgZW5hYmxlZCBhbmQgdGhl
Cj4gPiBwb3J0IGhhZCBhIHNsb3QsIHRoZSBwb3J0IHdvdWxkIGdlbmVyYXRlIE1TSS9NU0ktWCBo
b3RwbHVnIGludGVycnVwdHMuCj4gPiBCdXQgUE1FIGFuZCBBRVIgZXZlbnRzIHdvdWxkIHN0aWxs
IGNhdXNlIElOVHggaW50ZXJydXB0cyAoZXZlbiB3aXRoCj4gPiBNU0kgb3IgTVNJLVggZW5hYmxl
ZCkuCj4gPiAKPiA+IERvIEkgaGF2ZSB0aGF0IHJpZ2h0PyAgSSBqdXN0IHdhbnQgdG8gbWFrZSBz
dXJlIHRoYXQgdGhlIHJlYXNvbiBmb3IKPiA+IFBNRSBiZWluZyBJTlR4IGlzIGEgcGVybWFuZW50
IGhhcmR3YXJlIGNob2ljZSBhbmQgdGhhdCBpdCdzIG5vdAo+ID4gcmVsYXRlZCB0byBNU0kgYW5k
IE1TSS1YIGN1cnJlbnRseSBiZWluZyBkaXNhYmxlZC4KPgo+IFllcy4gVGhhdHMgcmlnaHQuIEl0
cyBoYXJkd2FyZSBjaG9pY2UgdGhhdCBvdXIgaGFyZHdhcmUgZW5naW5lZXJzIG1hZGUgdG8KPiB1
c2UgSU5UeCBmb3IgUE1FIGluc3RlYWQgb2YgTVNJIGlycmVzcGVjdGl2ZSBvZiBNU0kvTVNJLVgg
ZW5hYmxlZC9kaXNhYmxlZAo+IGluIHRoZSByb290IHBvcnQuCgpIZXJlIGFyZSBtb3JlIHNwZWMg
cmVmZXJlbmNlcyB0aGF0IHNlZW0gYXBwbGljYWJsZToKCiAgLSBQQ0llIHI0LjAsIHNlYyA3Ljcu
MS4yIChNZXNzYWdlIENvbnRyb2wgUmVnaXN0ZXIgZm9yIE1TSSkgc2F5czoKCiAgICAgIE1TSSBF
bmFibGUg4oCTIElmIFNldCBhbmQgdGhlIE1TSS1YIEVuYWJsZSBiaXQgaW4gdGhlIE1TSS1YCiAg
ICAgIE1lc3NhZ2UgQ29udHJvbCByZWdpc3RlciAoc2VlIFNlY3Rpb24gNy45LjIpIGlzIENsZWFy
LCB0aGUKICAgICAgRnVuY3Rpb24gaXMgcGVybWl0dGVkIHRvIHVzZSBNU0kgdG8gcmVxdWVzdCBz
ZXJ2aWNlIGFuZCBpcwogICAgICBwcm9oaWJpdGVkIGZyb20gdXNpbmcgSU5UeCBpbnRlcnJ1cHRz
LgoKICAtIFBDSWUgcjQuMCwgc2VjIDcuNy4yLjIgKE1lc3NhZ2UgQ29udHJvbCBSZWdpc3RlciBm
b3IgTVNJLVgpIHNheXM6CgogICAgICBNU0ktWCBFbmFibGUg4oCTIElmIFNldCBhbmQgdGhlIE1T
SSBFbmFibGUgYml0IGluIHRoZSBNU0kgTWVzc2FnZQogICAgICBDb250cm9sIHJlZ2lzdGVyIChz
ZWUgU2VjdGlvbiA2LjguMS4zKSBpcyBDbGVhciwgdGhlIEZ1bmN0aW9uIGlzCiAgICAgIHBlcm1p
dHRlZCB0byB1c2UgTVNJLVggdG8gcmVxdWVzdCBzZXJ2aWNlIGFuZCBpcyBwcm9oaWJpdGVkIGZy
b20KICAgICAgdXNpbmcgSU5UeCBpbnRlcnJ1cHRzIChpZiBpbXBsZW1lbnRlZCkuCgpJIHJlYWQg
dGhhdCB0byBtZWFuIGEgZGV2aWNlIGlzIHByb2hpYml0ZWQgZnJvbSB1c2luZyBNU0kvTVNJLVgg
Zm9yCnNvbWUgaW50ZXJydXB0cyBhbmQgSU5UeCBmb3Igb3RoZXJzLiAgU2luY2UgVGVncmExOTQg
Y2Fubm90IHVzZQpNU0kvTVNJLVggZm9yIFBNRSwgaXQgc2hvdWxkIHVzZSBJTlR4IGZvciAqYWxs
KiBpbnRlcnJ1cHRzLiAgVGhhdAptYWtlcyB0aGUgTVNJL01TSS1YIENhcGFiaWxpdGllcyBzdXBl
cmZsdW91cywgYW5kIHRoZXkgc2hvdWxkIGJlCm9taXR0ZWQuCgpJZiB3ZSBzZXQgcGRldi0+bm9f
bXNpIGZvciBUZWdyYTE5NCwgd2UnbGwgYXZvaWQgTVNJL01TSS1YIGNvbXBsZXRlbHksCnNvIHdl
J2xsIGFzc3VtZSAqYWxsKiBpbnRlcnJ1cHRzIGluY2x1ZGluZyBob3RwbHVnIHdpbGwgYmUgSU5U
eC4gIFdpbGwKdGhhdCB3b3JrPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
