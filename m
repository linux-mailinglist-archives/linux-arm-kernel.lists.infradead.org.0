Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FF11F0373
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 01:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xIbj9330DMsfriIhP5R+m/nVrBvHsDmHD/LQTyed3B0=; b=SYC+32Dz68OWzO
	Iy6PzsEddaLtaXHwzd/6vLH4oamG6ir3Qn/3ubLO2MoURZBh0FWilWQktjgGFNbhULzqhDnKRGEJy
	hTZY9im0E/YGgYShCxflVgEbAud9LWxQkdwEUhTbslzn4uCYn1a7SnPyjDoE/y6FS1+6AFBSl+PMD
	CT2/MVYhiMpVT7dzZskk3s6wK/czPa88NKR/UnJRmNh7PSJ962fOhtYIefHGWQvgZirDozibRTmzL
	y+tXuUwFPUz1K6i/gpoKy7rkLU25tHIOz7gUVc69Vy7xVZx6DyvNmS0kI7PJ2XJJgJNCDHhFSrQHu
	4MiEuVpFHiercDc4nVBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhLcR-000425-Qx; Fri, 05 Jun 2020 23:19:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhLcJ-00041X-62
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 23:19:16 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B1CC7207D0;
 Fri,  5 Jun 2020 23:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591399152;
 bh=pxsClvnIPBaS8ODkk62CMx4DJx6gcP1jIo9ANMgure4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=cWVCuuhZEXopJ/fy8/HaCu7gj+qdiUHK7yyWdnF7I+g00606Q27D/lHhs2F+KUUbI
 qPalWOJ7gwNYAzD0Zb2lhQotEE4HBkdYrzhA669gi2oRrAkyKg2JRbaRxC86n+xjd9
 CZzarVVqj34lwCRUNnhR0Wkc6VA4FmF+zD+p5VbA=
Date: Fri, 5 Jun 2020 18:19:09 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200605231909.GA1155454@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <779f4044-cf6a-b0d3-916f-0274450c07d3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_161915_263845_F2ABE487 
X-CRM114-Status: GOOD (  23.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMDQsIDIwMjAgYXQgMDk6MzM6MDdQTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IE9uIDIwMjAvNi8yIOS4iuWNiDE6NDEsIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBP
biBUaHUsIE1heSAyOCwgMjAyMCBhdCAwOTozMzo0NEFNICswMjAwLCBKb2VyZyBSb2VkZWwgd3Jv
dGU6Cj4gPiA+IE9uIFdlZCwgTWF5IDI3LCAyMDIwIGF0IDAxOjE4OjQyUE0gLTA1MDAsIEJqb3Ju
IEhlbGdhYXMgd3JvdGU6Cj4gPiA+ID4gSXMgdGhpcyBzbG93ZG93biBzaWduaWZpY2FudD8gIFdl
IGFscmVhZHkgaXRlcmF0ZSBvdmVyIGV2ZXJ5IGRldmljZQo+ID4gPiA+IHdoZW4gYXBwbHlpbmcg
UENJX0ZJWFVQX0ZJTkFMIHF1aXJrcywgc28gaWYgd2UgdXNlZCB0aGUgZXhpc3RpbmcKPiA+ID4g
PiBQQ0lfRklYVVBfRklOQUwsIHdlIHdvdWxkbid0IGJlIGFkZGluZyBhIG5ldyBsb29wLiAgV2Ug
d291bGQgb25seSBiZQo+ID4gPiA+IGFkZGluZyB0d28gbW9yZSBpdGVyYXRpb25zIHRvIHRoZSBs
b29wIGluIHBjaV9kb19maXh1cHMoKSB0aGF0IHRyaWVzCj4gPiA+ID4gdG8gbWF0Y2ggcXVpcmtz
IGFnYWluc3QgdGhlIGN1cnJlbnQgZGV2aWNlLiAgSSBkb3VidCB0aGF0IHdvdWxkIGJlIGEKPiA+
ID4gPiBtZWFzdXJhYmxlIHNsb3dkb3duLgo+ID4gPiBJIGRvbid0IGtub3cgaG93IHNpZ25pZmlj
YW50IGl0IGlzLCBidXQgSSByZW1lbWJlciBwZW9wbGUgY29tcGxhaW5pbmcKPiA+ID4gYWJvdXQg
YWRkaW5nIG5ldyBQQ0kgcXVpcmtzIGJlY2F1c2UgaXQgdGFrZXMgdG9vIGxvbmcgZm9yIHRoZW0g
dG8gcnVuCj4gPiA+IHRoZW0gYWxsLiBUaGF0IHdhcyBpbiB0aGUgZGlzY3Vzc2lvbiBhYm91dCB0
aGUgcXVpcmsgZGlzYWJsaW5nIEFUUyBvbgo+ID4gPiBBTUQgU3RvbmV5IHN5c3RlbXMuCj4gPiA+
IAo+ID4gPiBTbyBpdCBwcm9iYWJseSBkZXBlbmRzIG9uIGhvdyBtYW55IFBDSSBkZXZpY2VzIGFy
ZSBpbiB0aGUgc3lzdGVtIHdoZXRoZXIKPiA+ID4gaXQgY2F1c2VzIGFueSBtZWFzdXJlYWJsZSBz
bG93ZG93bi4KPiA+IEkgZm91bmQgdGhpcyBbMV0gZnJvbSBQYXVsIE1lbnplbCwgd2hpY2ggd2Fz
IGEgc2xvd2Rvd24gY2F1c2VkIGJ5Cj4gPiBxdWlya191c2JfZWFybHlfaGFuZG9mZigpLiAgSSB0
aGluayB0aGUgcmVhbCBwcm9ibGVtIGlzIGluZGl2aWR1YWwKPiA+IHF1aXJrcyB0aGF0IHRha2Ug
YSBsb25nIHRpbWUuCj4gPiAKPiA+IFRoZSBQQ0lfRklYVVBfSU9NTVUgdGhpbmdzIHdlJ3JlIHRh
bGtpbmcgYWJvdXQgc2hvdWxkIGJlIGZhc3QsIGFuZCBvZgo+ID4gY291cnNlLCB0aGV5J3JlIG9u
bHkgcnVuIGZvciBtYXRjaGluZyBkZXZpY2VzIGFueXdheS4gIFNvIEknZCByYXRoZXIKPiA+IGtl
ZXAgdGhlbSBhcyBQQ0lfRklYVVBfRklOQUwgdGhhbiBhZGQgYSB3aG9sZSBuZXcgcGhhc2UuCj4g
PiAKPiBUaGFua3MgQmpvcm4gZm9yIHRha2luZyB0aW1lIGZvciB0aGlzLgo+IElmIHNvLCBpdCB3
b3VsZCBiZSBtdWNoIHNpbXBsZXIuCj4gCj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4g
QEAgLTI0MTgsNiArMjQxOCwxMCBAQCBpbnQgaW9tbXVfZndzcGVjX2luaXQoc3RydWN0IGRldmlj
ZSAqZGV2LCBzdHJ1Y3QKPiBmd25vZGVfaGFuZGxlICppb21tdV9md25vZGUsCj4gwqDCoMKgwqDC
oMKgwqAgZndzcGVjLT5pb21tdV9md25vZGUgPSBpb21tdV9md25vZGU7Cj4gwqDCoMKgwqDCoMKg
wqAgZndzcGVjLT5vcHMgPSBvcHM7Cj4gwqDCoMKgwqDCoMKgwqAgZGV2X2lvbW11X2Z3c3BlY19z
ZXQoZGV2LCBmd3NwZWMpOwo+ICsKPiArwqDCoMKgwqDCoMKgIGlmIChkZXZfaXNfcGNpKGRldikp
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpX2ZpeHVwX2RldmljZShwY2lfZml4
dXBfZmluYWwsIHRvX3BjaV9kZXYoZGV2KSk7Cj4gKwo+IAo+IFRoZW4gcGNpX2ZpeHVwX2ZpbmFs
IHdpbGwgYmUgY2FsbGVkIHR3aWNlLCB0aGUgZmlyc3QgaW4gcGNpX2J1c19hZGRfZGV2aWNlLgo+
IEhlcmUgaW4gaW9tbXVfZndzcGVjX2luaXQgaXMgdGhlIHNlY29uZCB0aW1lLCBzcGVjaWZpY2Fs
bHkgZm9yIGlvbW11X2Z3c3BlYy4KPiBXaWxsIHNlbmQgdGhpcyB3aGVuIDUuOC1yYzEgaXMgb3Bl
bi4KCldhaXQsIHRoaXMgd2hvbGUgZml4dXAgYXBwcm9hY2ggc2VlbXMgd3JvbmcgdG8gbWUuICBO
byBtYXR0ZXIgaG93IHlvdQpkbyB0aGUgZml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2gg
bWVhbnMgaXQgcmVxdWlyZXMgb25nb2luZwptYWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24ndCB3
YW50IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5kb3IvRGV2aWNlIElECmZvciBldmVyeSBuZXcgQU1C
QSBkZXZpY2UgdGhhdCBjb21lcyBhbG9uZywgZG8gd2U/CgpCam9ybgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
