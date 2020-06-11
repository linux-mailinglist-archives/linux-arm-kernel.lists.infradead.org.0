Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D03D1F6949
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:44:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jluOCNtzg0XShtsv05gYiuHbBLYlghUAqpbRef+lTsE=; b=OHxxT3/M1IvI5G
	3x0B7hHxnT07r6yL5edApHYfzMa7d+u7lr7dvau/cDEQSJzVUMFlYFzm7ng3er/t+oPCJp22aM3u/
	bTYlvoKW9qJuUkAslnt2o/4RlbtWWzK+hfBs01APEUkhi/G9KAO//2NYC8zD+PtqSq7w/KTNq5kR7
	TxYh0EnvAYzyBGaUpv+13x2h11qAsMxkGa3X9F2H4klbjfF1ZLkvhT4n4BKHrL4xKwjpVVOihON5q
	iRcLZBrmgSMt4rQ6CBkIw9VymklMlntEh+7zil9r+DO3XVeCCtYvWlFHYxxEKjgFtZAa8FCFaYm70
	aPT184m9Hax0fH9xN0Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNVG-0008Pu-Q1; Thu, 11 Jun 2020 13:44:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNV8-0008Od-1P
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 13:44:15 +0000
Received: from localhost (mobile-166-170-222-206.mycingular.net
 [166.170.222.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99BB7207ED;
 Thu, 11 Jun 2020 13:44:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591883053;
 bh=xVUiCstzwxRiqsIstYcB/oExcpYP3mQ06Uzbjsb1RaA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fCcWdDxUhizLu05tim7PdziyoQm0TsunDkVTg5gnd7NVQ1v3Z0WssIgGmBFQfHtjv
 RhzS1KxhkAIB/8lcKjWTAKHFcrZKT3jWnGdHyhvzRbe6z7xUsGSLs5/OdaMspITUr5
 l7XwqkZoKSdNXIH6IjuwKxi8iamLy2XFOjKChtzg=
Date: Thu, 11 Jun 2020 08:44:10 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Zhangfei Gao <zhangfei.gao@linaro.org>
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
Message-ID: <20200611134410.GA1586057@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d8a7ec4-b578-a97a-7835-453806f4e3ef@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_064414_120090_AA08DEFC 
X-CRM114-Status: GOOD (  33.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTEsIDIwMjAgYXQgMTA6NTQ6NDVBTSArMDgwMCwgWmhhbmdmZWkgR2FvIHdy
b3RlOgo+IE9uIDIwMjAvNi8xMCDkuIrljYgxMjo0OSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+
IE9uIFR1ZSwgSnVuIDA5LCAyMDIwIGF0IDExOjE1OjA2QU0gKzAyMDAsIEFybmQgQmVyZ21hbm4g
d3JvdGU6Cj4gPiA+IE9uIFR1ZSwgSnVuIDksIDIwMjAgYXQgNjowMiBBTSBaaGFuZ2ZlaSBHYW8g
PHpoYW5nZmVpLmdhb0BsaW5hcm8ub3JnPiB3cm90ZToKPiA+ID4gPiBPbiAyMDIwLzYvOSDkuIrl
jYgxMjo0MSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gPiA+IE9uIE1vbiwgSnVuIDA4LCAy
MDIwIGF0IDEwOjU0OjE1QU0gKzA4MDAsIFpoYW5nZmVpIEdhbyB3cm90ZToKPiA+ID4gPiA+ID4g
T24gMjAyMC82LzYg5LiK5Y2INzoxOSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gPiA+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW9tbXUuYwo+ID4gPiA+ID4gPiA+ID4gQEAgLTI0MTgs
NiArMjQxOCwxMCBAQCBpbnQgaW9tbXVfZndzcGVjX2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBz
dHJ1Y3QKPiA+ID4gPiA+ID4gPiA+IGZ3bm9kZV9oYW5kbGUgKmlvbW11X2Z3bm9kZSwKPiA+ID4g
PiA+ID4gPiA+ICAgICAgICAgICAgZndzcGVjLT5pb21tdV9md25vZGUgPSBpb21tdV9md25vZGU7
Cj4gPiA+ID4gPiA+ID4gPiAgICAgICAgICAgIGZ3c3BlYy0+b3BzID0gb3BzOwo+ID4gPiA+ID4g
PiA+ID4gICAgICAgICAgICBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3c3BlYyk7Cj4gPiA+
ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiArICAgICAgIGlmIChkZXZfaXNfcGNpKGRldikp
Cj4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgcGNpX2ZpeHVwX2RldmljZShwY2lfZml4
dXBfZmluYWwsIHRvX3BjaV9kZXYoZGV2KSk7Cj4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+
ID4gPiAKPiA+ID4gPiA+ID4gPiA+IFRoZW4gcGNpX2ZpeHVwX2ZpbmFsIHdpbGwgYmUgY2FsbGVk
IHR3aWNlLCB0aGUgZmlyc3QgaW4gcGNpX2J1c19hZGRfZGV2aWNlLgo+ID4gPiA+ID4gPiA+ID4g
SGVyZSBpbiBpb21tdV9md3NwZWNfaW5pdCBpcyB0aGUgc2Vjb25kIHRpbWUsIHNwZWNpZmljYWxs
eSBmb3IgaW9tbXVfZndzcGVjLgo+ID4gPiA+ID4gPiA+ID4gV2lsbCBzZW5kIHRoaXMgd2hlbiA1
LjgtcmMxIGlzIG9wZW4uCj4gPiA+ID4gPiA+ID4gV2FpdCwgdGhpcyB3aG9sZSBmaXh1cCBhcHBy
b2FjaCBzZWVtcyB3cm9uZyB0byBtZS4gIE5vIG1hdHRlciBob3cgeW91Cj4gPiA+ID4gPiA+ID4g
ZG8gdGhlIGZpeHVwLCBpdCdzIHN0aWxsIGEgZml4dXAsIHdoaWNoIG1lYW5zIGl0IHJlcXVpcmVz
IG9uZ29pbmcKPiA+ID4gPiA+ID4gPiBtYWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24ndCB3YW50
IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5kb3IvRGV2aWNlIElECj4gPiA+ID4gPiA+ID4gZm9yIGV2
ZXJ5IG5ldyBBTUJBIGRldmljZSB0aGF0IGNvbWVzIGFsb25nLCBkbyB3ZT8KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNlIGhhcyBzdGFuZGFyZCBQQ0kg
Y2ZnIHNwYWNlLCBidXQgcGh5c2ljYWwKPiA+ID4gPiA+ID4gaW1wbGVtZW50YXRpb24gaXMgYmFz
ZSBvbiBBTUJBCj4gPiA+ID4gPiA+IFRoZXkgY2FuIHByb3ZpZGUgcGFzaWQgZmVhdHVyZS4KPiA+
ID4gPiA+ID4gSG93ZXZlciwKPiA+ID4gPiA+ID4gMSwgZG9lcyBub3Qgc3VwcG9ydCB0bHAgc2lu
Y2UgdGhleSBhcmUgbm90IHJlYWwgcGNpIGRldmljZXMuCj4gPiA+ID4gPiA+IDIuIGRvZXMgbm90
IHN1cHBvcnQgcHJpLCBpbnN0ZWFkIHN1cHBvcnQgc3RhbGwgKHByb3ZpZGVkIGJ5IHNtbXUpCj4g
PiA+ID4gPiA+IEFuZCBzdGFsbCBpcyBub3QgYSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRl
c2NyaWJlZCBpbiBzdHJ1Y3QgcGNpX2RldiwKPiA+ID4gPiA+ID4gYnV0IGluIHN0cnVjdCBpb21t
dV9md3NwZWMuCj4gPiA+ID4gPiA+IFNvIHdlIHVzZSB0aGlzIGZpeHVwIHRvIHRlbGwgcGNpIHN5
c3RlbSB0aGF0IHRoZSBkZXZpY2VzIGNhbiBzdXBwb3J0IHN0YWxsLAo+ID4gPiA+ID4gPiBhbmQg
aGVyZWJ5IHN1cHBvcnQgcGFzaWQuCj4gPiA+ID4gPiBUaGlzIGRpZCBub3QgYW5zd2VyIG15IHF1
ZXN0aW9uLiAgQXJlIHlvdSBwcm9wb3NpbmcgdGhhdCB3ZSB1cGRhdGUgYQo+ID4gPiA+ID4gcXVp
cmsgZXZlcnkgdGltZSBhIG5ldyBBTUJBIGRldmljZSBpcyByZWxlYXNlZD8gIEkgZG9uJ3QgdGhp
bmsgdGhhdAo+ID4gPiA+ID4gd291bGQgYmUgYSBnb29kIG1vZGVsLgo+ID4gPiA+IFllcywgeW91
IGFyZSByaWdodCwgYnV0IHdlIGRvIG5vdCBoYXZlIGFueSBiZXR0ZXIgaWRlYSB5ZXQuCj4gPiA+
ID4gQ3VycmVudGx5IHdlIGhhdmUgdGhyZWUgZmFrZSBwY2kgZGV2aWNlcywgd2hpY2ggc3VwcG9y
dCBzdGFsbCBhbmQgcGFzaWQuCj4gPiA+ID4gV2UgaGF2ZSB0byBsZXQgcGNpIHN5c3RlbSBrbm93
IHRoZSBkZXZpY2UgY2FuIHN1cHBvcnQgcGFzaWQsIGJlY2F1c2Ugb2YKPiA+ID4gPiBzdGFsbCBm
ZWF0dXJlLCB0aG91Z2ggbm90IHN1cHBvcnQgcHJpLgo+ID4gPiA+IERvIHlvdSBoYXZlIGFueSBv
dGhlciBpZGVhcz8KPiA+ID4gSXQgc291bmRzIGxpa2UgdGhlIGJlc3Qgd2F5IHdvdWxkIGJlIHRv
IGFsbG9jYXRlIGEgUENJIGNhcGFiaWxpdHkgZm9yIGl0LCBzbwo+ID4gPiBkZXRlY3Rpb24gY2Fu
IGJlIGRvbmUgdGhyb3VnaCBjb25maWcgc3BhY2UsIGF0IGxlYXN0IGluIGZ1dHVyZSBkZXZpY2Vz
LAo+ID4gPiBvciBwb3NzaWJseSBhZnRlciBhIGZpcm13YXJlIHVwZGF0ZSBpZiB0aGUgY29uZmln
IHNwYWNlIGluIHlvdXIgc3lzdGVtCj4gPiA+IGlzIGNvbnRyb2xsZWQgYnkgZmlybXdhcmUgc29t
ZXdoZXJlLiAgT25jZSB0aGVyZSBpcyBhIHByb3BlciBtZWNoYW5pc20KPiA+ID4gdG8gZG8gdGhp
cywgdXNpbmcgZml4dXBzIHRvIGRldGVjdCB0aGUgZWFybHkgZGV2aWNlcyB0aGF0IGRvbid0IHVz
ZSB0aGF0Cj4gPiA+IHNob3VsZCBiZSB1bmNvbnRyb3ZlcnNpYWwuIEkgaGF2ZSBubyBpZGVhIHdo
YXQgdGhlIHByb2Nlc3Mgb3IgdGltZWxpbmUKPiA+ID4gaXMgdG8gYWRkIG5ldyBjYXBhYmlsaXRp
ZXMgaW50byB0aGUgUENJZSBzcGVjaWZpY2F0aW9uLCBvciBpZiB0aGlzIG9uZQo+ID4gPiB3b3Vs
ZCBiZSBhY2NlcHRhYmxlIHRvIHRoZSBQQ0kgU0lHIGF0IGFsbC4KPiA+IFRoYXQgc291bmRzIGxp
a2UgYSBwb3NzaWJpbGl0eS4gIFRoZSBzcGVjIGFscmVhZHkgZGVmaW5lcyBhCj4gPiBWZW5kb3It
U3BlY2lmaWMgRXh0ZW5kZWQgQ2FwYWJpbGl0eSAoUENJZSByNS4wLCBzZWMgNy45LjUpIHRoYXQg
bWlnaHQKPiA+IGJlIGEgY2FuZGlkYXRlLgo+IFdpbGwgaW52ZXN0aWdhdGUgdGhpcywgdGhhbmtz
IEJqb3JuCgpGV0lXLCB0aGVyZSdzIGFsc28gYSBWZW5kb3ItU3BlY2lmaWMgQ2FwYWJpbGl0eSB0
aGF0IGNhbiBhcHBlYXIgaW4gdGhlCmZpcnN0IDI1NiBieXRlcyBvZiBjb25maWcgc3BhY2UgKHRo
ZSBWZW5kb3ItU3BlY2lmaWMgRXh0ZW5kZWQKQ2FwYWJpbGl0eSBtdXN0IGFwcGVhciBpbiB0aGUg
IkV4dGVuZGVkIENvbmZpZ3VyYXRpb24gU3BhY2UiIGZyb20KMHgxMDAtMHhmZmYpLgoKPiA+ID4g
SWYgZGV0ZWN0aW9uIGNhbm5vdCBiZSBkb25lIHRocm91Z2ggUENJIGNvbmZpZyBzcGFjZSwgdGhl
IG5leHQgYmVzdAo+ID4gPiBhbHRlcm5hdGl2ZSBpcyB0byBwYXNzIGF1eGlsaWFyeSBkYXRhIHRo
cm91Z2ggZmlybXdhcmUuIE9uIERUIGJhc2VkCj4gPiA+IG1hY2hpbmVzLCB5b3UgY2FuIGxpc3Qg
bm9uLWhvdHBsdWdnYWJsZSBQQ0llIGRldmljZXMgYW5kIGFkZCBjdXN0b20KPiA+ID4gcHJvcGVy
dGllcyB0aGF0IGNvdWxkIGJlIHJlYWQgZHVyaW5nIGRldmljZSBlbnVtZXJhdGlvbi4gSSBhc3N1
bWUKPiA+ID4gQUNQSSBoYXMgc29tZXRoaW5nIHNpbWlsYXIsIGJ1dCBJIGhhdmUgbm90IGRvbmUg
dGhhdC4KPiBZZXMsIHRoYW5rcyBBcm5kCj4gPiBBQ1BJIGhhcyBfRFNNIChBQ1BJIHY2LjMsIHNl
YyA5LjEuMSksIHdoaWNoIG1pZ2h0IGJlIGEgY2FuZGlkYXRlLiAgSQo+ID4gbGlrZSB0aGlzIGJl
dHRlciB0aGFuIGEgUENJIGNhcGFiaWxpdHkgYmVjYXVzZSB0aGUgcHJvcGVydHkgeW91IG5lZWQK
PiA+IHRvIGV4cG9zZSBpcyBub3QgYSBQQ0kgcHJvcGVydHkuCj4gX0RTTSBtYXkgbm90IHdvcmth
YmxlLCBzaW5jZSBpdCBpcyB3b3JraW5nIGluIHJ1bnRpbWUuCj4gV2UgbmVlZCBzdGFsbCBpbmZv
cm1hdGlvbiBpbiBpbml0IHN0YWdlLCBuZWl0aGVyIHRvbyBlYXJseSAoYWZ0ZXIgYWxsb2NhdGlv
bgo+IG9mIGlvbW11X2Z3c3BlYykKPiBub3IgdG9vIGxhdGUgKGJlZm9yZSBhcm1fc21tdV9hZGRf
ZGV2aWNlICkuCgpJJ20gbm90IGF3YXJlIG9mIGEgcmVzdHJpY3Rpb24gb24gd2hlbiBfRFNNIGNh
biBiZSBldmFsdWF0ZWQuICBJJ20KbG9va2luZyBhdCBBQ1BJIHY2LjMsIHNlYyA5LjEuMS4gIEFy
ZSB5b3Ugc2VlaW5nIHNvbWV0aGluZyBkaWZmZXJlbnQ/Cgo+IEJ5IHRoZSB3YXksIEl0IHdvdWxk
IGJlIGEgbG9uZyB0aW1lIGlmIHdlIG5lZWQgbW9kaWZ5IGVpdGhlciBwY2llCj4gc3BlYyBvciBh
Y3BpIHNwZWMuICBDYW4gd2UgdXNlIHBjaV9maXh1cF9kZXZpY2UgaW4gaW9tbXVfZndzcGVjX2lu
aXQKPiBmaXJzdCwgaXQgaXMgcmVsYXRpdmVseSBzaW1wbGUgYW5kIG1lZXQgdGhlIHJlcXVpcmVt
ZW50IG9mIHBsYXRmb3JtCj4gZGV2aWNlIHVzaW5nIHBhc2lkLCBhbmQgdGhleSBhcmUgYWxyZWFk
eSBpbiBwcm9kdWN0LgoKTmVpdGhlciB0aGUgUENJIFZlbmRvci1TcGVjaWZpYyBDYXBhYmlsaXR5
IG5vciB0aGUgQUNQSSBfRFNNIHJlcXVpcmVzCmEgc3BlYyBjaGFuZ2UuICBCb3RoIGNhbiBiZSBj
b21wbGV0ZWx5IHZlbmRvci1kZWZpbmVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJt
LWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
