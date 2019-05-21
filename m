Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B645B247E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 08:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8n2HWgRFw3/frPJkRUZDpzwl4ECxlDgILGIApIxhkU=; b=Rk/zPsXwN3hDgv
	0VvyILY6nH1kRbV1t9T7QyeV+guN2wDxS8fhs387kpg5+5JLkA+GLBHbTG7F+ekoNbmtdV9y7AE97
	ilksjlYbgGTOHmFuqOwCxkBtzvKVdL1x+nwWnOmQXqzK2GRxyRuBxmbqUT4cxLaNQflltMKz5LYJy
	PaxxKXphdoSHLS+N+2gAlgyhRoo2bC64iz+YoiWtwe/ttMpKr9f0gOUBa76LF28NbShPIl/pVfbf0
	asywfVOHLfAcivxsAGb2k4PHnO2m7aeND0chUDLlzEVC79z5mjZirjQsxxDfy3QePXzU7wi0RmUoG
	UKUSd/BqCL+rhPSQASeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSy4P-0006LS-QH; Tue, 21 May 2019 06:16:17 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSy4F-0006Ko-Cq
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 06:16:08 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4L6Fxjl001707;
 Tue, 21 May 2019 01:15:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558419359;
 bh=BOlHodlIMYLCPqU3G35mi/bOn4BFg+tVJAITFyiE5m8=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=nZPL69h8s6y0ddhR/IbOVZ3IErJ86Zy4vfk7PFQn6L/VfX7sXYqFo8J35bmQotYVu
 MOpVBYmx2l2DaKh62mcpTYKvsRu8oQaT0pdo2jmdcJaRQXxgbuZF7RkCEAoXI9N87W
 GHyr4arkkL9Dc5leRzaWr5RPXkFvJMC/dPkEvN0E=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4L6Fxst101552
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 May 2019 01:15:59 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 21
 May 2019 01:15:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 21 May 2019 01:15:58 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4L6FuUi073060;
 Tue, 21 May 2019 01:15:57 -0500
Subject: Re: [PATCH] dmaengine: ti: edma: Enable support for polled (memcpy)
 completion
To: Vinod Koul <vkoul@kernel.org>
References: <20190514080909.10306-1-peter.ujfalusi@ti.com>
 <20190521050430.GS15118@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <ce1a2e96-bc4b-3998-0c36-362867907177@ti.com>
Date: Tue, 21 May 2019 09:16:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190521050430.GS15118@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_231607_547894_C9A4BC94 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMS8wNS8yMDE5IDguMDQsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMTQtMDUtMTksIDEx
OjA5LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gV2hlbiBhIERNQSBjbGllbnQgZHJpdmVyIGRl
Y2lkZXMgdGhhdCBpdCBpcyBub3QgcHJvdmlkaW5nIGNhbGxiYWNrIGZvcgo+PiBjb21wbGV0aW9u
IG9mIGEgdHJhbnNmZXIgKGFuZC9vciBkb2VzIG5vdCBzZXQgdGhlIERNQV9QUkVQX0lOVEVSUlVQ
VCkgYnV0Cj4+IGl0IHdpbGwgcG9sbCB0aGUgc3RhdHVzIG9mIHRoZSB0cmFuc2ZlciAoaW4gY2Fz
ZSBvZiBzaG9ydCBtZW1jcHkgZm9yCj4+IGV4YW1wbGUpIHdlIHdpbGwgbm90IGdldCBpbnRlcnJ1
cHQgZm9yIHRoZSBjb21wbGV0aW9uIG9mIHRoZSB0cmFuc2ZlciBhbmQKPj4gd2lsbCBub3QgbWFy
ayB0aGUgdHJhbnNhY3Rpb24gYXMgZG9uZS4KPj4KPj4gQ2hlY2sgdGhlIGV2ZW50IHJlZ2lzdGVy
cyAoRVIgYW5kIEVFUikgYW5kIGlmIHRoZSBjaGFubmVsIGlzIGluYWN0aXZlIHRoZW4KPj4gcmV0
dXJuIHdpb3RoIERNQV9DT01QTEVURSB0byBsZXQgdGhlIGNsaWVudCBrbm93IHRoYXQgdGhlIHRy
YW5zZmVyIGlzCj4gICAgICAgICBeXl5eXgo+IFR5cG8KCk9rCgo+IAo+PiBjb21wbGV0ZWQuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIFVqZmFsdXNpIDxwZXRlci51amZhbHVzaUB0aS5jb20+
Cj4+IC0tLQo+PiAgZHJpdmVycy9kbWEvdGkvZWRtYS5jIHwgMjMgKysrKysrKysrKysrKysrKysr
KystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEvdGkvZWRtYS5jIGIvZHJpdmVycy9kbWEv
dGkvZWRtYS5jCj4+IGluZGV4IGNlYWJkZWE0MGFlMC4uNzUwMTQ0NWFmMDY5IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2RtYS90aS9lZG1hLmMKPj4gKysrIGIvZHJpdmVycy9kbWEvdGkvZWRtYS5j
Cj4+IEBAIC0xMjExLDggKzEyMTEsOSBAQCBzdGF0aWMgc3RydWN0IGRtYV9hc3luY190eF9kZXNj
cmlwdG9yICplZG1hX3ByZXBfZG1hX21lbWNweSgKPj4gIAo+PiAgCWVkZXNjLT5wc2V0WzBdLnBh
cmFtLm9wdCB8PSBJVENDSEVOOwo+PiAgCWlmIChuc2xvdHMgPT0gMSkgewo+PiAtCQkvKiBFbmFi
bGUgdHJhbnNmZXIgY29tcGxldGUgaW50ZXJydXB0ICovCj4+IC0JCWVkZXNjLT5wc2V0WzBdLnBh
cmFtLm9wdCB8PSBUQ0lOVEVOOwo+PiArCQkvKiBFbmFibGUgdHJhbnNmZXIgY29tcGxldGUgaW50
ZXJydXB0IGlmIHJlcXVlc3RlZCAqLwo+PiArCQlpZiAodHhfZmxhZ3MgJiBETUFfUFJFUF9JTlRF
UlJVUFQpCj4+ICsJCQllZGVzYy0+cHNldFswXS5wYXJhbS5vcHQgfD0gVENJTlRFTjsKPj4gIAl9
IGVsc2Ugewo+PiAgCQkvKiBFbmFibGUgdHJhbnNmZXIgY29tcGxldGUgY2hhaW5pbmcgZm9yIHRo
ZSBmaXJzdCBzbG90ICovCj4+ICAJCWVkZXNjLT5wc2V0WzBdLnBhcmFtLm9wdCB8PSBUQ0NIRU47
Cj4+IEBAIC0xMjM5LDcgKzEyNDAsOSBAQCBzdGF0aWMgc3RydWN0IGRtYV9hc3luY190eF9kZXNj
cmlwdG9yICplZG1hX3ByZXBfZG1hX21lbWNweSgKPj4gIAkJfQo+PiAgCj4+ICAJCWVkZXNjLT5w
c2V0WzFdLnBhcmFtLm9wdCB8PSBJVENDSEVOOwo+PiAtCQllZGVzYy0+cHNldFsxXS5wYXJhbS5v
cHQgfD0gVENJTlRFTjsKPj4gKwkJLyogRW5hYmxlIHRyYW5zZmVyIGNvbXBsZXRlIGludGVycnVw
dCBpZiByZXF1ZXN0ZWQgKi8KPj4gKwkJaWYgKHR4X2ZsYWdzICYgRE1BX1BSRVBfSU5URVJSVVBU
KQo+PiArCQkJZWRlc2MtPnBzZXRbMV0ucGFyYW0ub3B0IHw9IFRDSU5URU47Cj4+ICAJfQo+PiAg
Cj4+ICAJcmV0dXJuIHZjaGFuX3R4X3ByZXAoJmVjaGFuLT52Y2hhbiwgJmVkZXNjLT52ZGVzYywg
dHhfZmxhZ3MpOwo+PiBAQCAtMTgwMSw2ICsxODA0LDIwIEBAIHN0YXRpYyBlbnVtIGRtYV9zdGF0
dXMgZWRtYV90eF9zdGF0dXMoc3RydWN0IGRtYV9jaGFuICpjaGFuLAo+PiAgCXVuc2lnbmVkIGxv
bmcgZmxhZ3M7Cj4+ICAKPj4gIAlyZXQgPSBkbWFfY29va2llX3N0YXR1cyhjaGFuLCBjb29raWUs
IHR4c3RhdGUpOwo+PiArCj4+ICsJaWYgKHJldCAhPSBETUFfQ09NUExFVEUgJiYgZWNoYW4tPmVk
ZXNjICYmICFlY2hhbi0+ZWRlc2MtPmN5Y2xpYykgewo+PiArCQlzdHJ1Y3QgZWRtYV9jYyAqZWNj
ID0gZWNoYW4tPmVjYzsKPj4gKwkJaW50IGNoYW5uZWwgPSBFRE1BX0NIQU5fU0xPVChlY2hhbi0+
Y2hfbnVtKTsKPj4gKwkJaW50IGogPSAoY2hhbm5lbCA+PiA1KTsKPj4gKwkJdW5zaWduZWQgaW50
IG1hc2sgPSBCSVQoY2hhbm5lbCAmIDB4MWYpOwo+IAo+IEdFTk1BU0sgb3IgZGVmaW5lIGEgbWFj
cm8gaW5zdGVhZCBvZiBhIG1hZ2ljIG51bWJlcj8KClNvIGl0IGlzIGJldHRlciB0byBjaGFuZ2Ug
dGhlIG90aGVyIHBsYWNlcyBmaXJzdCBmcm9tIHdoZXJlIEkgaGF2ZSBqdXN0CmNvcGllZCB0aGlz
LgoKPiAKPj4gKwkJdW5zaWduZWQgaW50IHNoX2VyID0gZWRtYV9zaGFkb3cwX3JlYWRfYXJyYXko
ZWNjLCBTSF9FUiwgaik7Cj4+ICsJCXVuc2lnbmVkIGludCBzaF9lZXIgPSBlZG1hX3NoYWRvdzBf
cmVhZF9hcnJheShlY2MsIFNIX0VFUiwgaik7Cj4+ICsKPj4gKwkJLyogVGhlIGNoYW5uZWwgaXMg
bm8gbG9uZ2VyIGFjdGl2ZSAqLwo+PiArCQlpZiAoIShzaF9lciAmIG1hc2spICYmICEoc2hfZWVy
ICYgbWFzaykpCj4+ICsJCQlyZXQgPSBETUFfQ09NUExFVEU7Cj4+ICsJfQo+PiArCj4+ICAJaWYg
KHJldCA9PSBETUFfQ09NUExFVEUgfHwgIXR4c3RhdGUpCj4+ICAJCXJldHVybiByZXQ7Cj4+ICAK
Pj4gLS0gCj4+IFBldGVyCj4+Cj4+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtr
YWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+PiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYx
NTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQo+IAoKLSBQw6l0ZXIKClRleGFz
IEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtp
LgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBI
ZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
