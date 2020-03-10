Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A78A3180513
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7zdAeoe15yMA747CtJFkOKvrGRd0VhJFY5ZpPjkgQ/U=; b=QauJmzTUbCHu+cm4MnFWpx4al
	Uomkq8a4QqdYCaiBEpCoQ+okvUi/+YvLxuOM2gUFPgGj1iWtSqlUhc1NBclKY2Vp+G9z8+y3jrH2U
	sB1HbKarpEhWmtXpZT2zTcXz80I2GeAvxUaFhJk8g87cHhE6ADUEZShrmrZqoaNlfZTZBOozt11Zq
	UKtMgshCoaUJ0TPazSBQ+gb34jUN4vFHLQdCvYJfUlovQgSYMr5V7lpwedjXgCpCAnIyDmFUm6agf
	GcHFv4uMOVFRX6wMIMD0dI/5vU1UCQDmyl7LhVGfIJDG6W/GuHTnCIHYe7OpVRwrcY0cAnFjv/O++
	cqdCdyjSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiuA-0005x7-3b; Tue, 10 Mar 2020 17:42:58 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBitw-0005wQ-Sl
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:42:47 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e67d1850001>; Tue, 10 Mar 2020 10:42:29 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Tue, 10 Mar 2020 10:42:42 -0700
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Tue, 10 Mar 2020 10:42:42 -0700
Received: from [10.25.76.193] (172.20.13.39) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 10 Mar
 2020 17:42:38 +0000
Subject: Re: [PATCH V4 0/5] Add support for PCIe endpoint mode in Tegra194
From: Vidya Sagar <vidyas@nvidia.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303170103.GA9641@e121166-lin.cambridge.arm.com>
 <d1e3a42f-c179-fd03-fac0-7cd449580e5b@nvidia.com>
X-Nvconfidentiality: public
Message-ID: <b47de9cd-be18-1672-d72c-de4169fb90e5@nvidia.com>
Date: Tue, 10 Mar 2020 23:12:35 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d1e3a42f-c179-fd03-fac0-7cd449580e5b@nvidia.com>
X-Originating-IP: [172.20.13.39]
X-ClientProxiedBy: HQMAIL107.nvidia.com (172.20.187.13) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1583862149; bh=bLPWb514eTiRguIqWyQUJ1EnhXyKcsE4Sh+k6DY+ers=;
 h=X-PGP-Universal:Subject:From:To:CC:References:X-Nvconfidentiality:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=RlQB+FTkNz5F0SXLEO/yTQ8SMNanL+AgnZSs7APnpGPD29aFVrHIu7/2XdsBXpfTN
 oLmGHZzILdBpuK71YToaVxj4tF747++R+ZmplE7JyzZwVhKrTbynerz3VG5rp82e/X
 c0l8Cr06UY7c9sW2J0t1f7Q+dd+h52mMjaqvNlWoAPCJmtgL/P5gMzl+dxzgo2AXYx
 p8/XbyH9QzmEUPllXQaaxazA9iz0FJEoYpuLDqP4B52pMUKU+3kDPSj/1CJLxYxGOz
 y8ybSF/dpuI6NGQPoJ80bSJyw+f1s08p8sYy5CzQ+Lw8MJGZ5vXIqPFa807Y5Lm9+v
 2Ri/w9PRKuehA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_104244_946901_EB98A91E 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 linux-pci@vger.kernel.org, bhelgaas@google.com, andrew.murray@arm.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzLzMvMjAyMCAxMTo0MyBQTSwgVmlkeWEgU2FnYXIgd3JvdGU6Cj4gCj4gCj4gT24gMy8z
LzIwMjAgMTA6MzEgUE0sIExvcmVuem8gUGllcmFsaXNpIHdyb3RlOgo+PiBFeHRlcm5hbCBlbWFp
bDogVXNlIGNhdXRpb24gb3BlbmluZyBsaW5rcyBvciBhdHRhY2htZW50cwo+Pgo+Pgo+PiBPbiBU
dWUsIE1hciAwMywgMjAyMCBhdCAwNDoyNDoxM1BNICswNTMwLCBWaWR5YSBTYWdhciB3cm90ZToK
Pj4+IFRlZ3JhMTk0IGhhcyB0aHJlZSAoQzAsIEM0ICYgQzUpIGR1YWwgbW9kZSBQQ0llIGNvbnRy
b2xsZXJzIHRoYXQgY2FuIAo+Pj4gb3BlcmF0ZQo+Pj4gZWl0aGVyIGluIHJvb3QgcG9ydCBtb2Rl
IG9yIGluIGVuZCBwb2ludCBtb2RlIGJ1dCBvbmx5IGluIG9uZSBtb2RlIGF0IAo+Pj4gYSB0aW1l
Lgo+Pj4gUGxhdGZvcm0gUDI5NzItMDAwMCBzdXBwb3J0cyBlbmFibGluZyBlbmRwb2ludCBtb2Rl
IGZvciBDNSAKPj4+IGNvbnRyb2xsZXIuIFRoaXMKPj4+IHBhdGNoIHNlcmllcyBhZGRzIHN1cHBv
cnQgZm9yIFBDSWUgZW5kcG9pbnQgbW9kZSBpbiBib3RoIHRoZSBkcml2ZXIgCj4+PiBhcyB3ZWxs
IGFzCj4+PiBpbiBEVC4KPj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGRlcGVuZHMgb24gdGhlIGNoYW5n
ZXMgbWFkZSBmb3IgU3lub3BzeXMgRGVzaWduV2FyZSAKPj4+IGVuZHBvaW50Cj4+PiBtb2RlIHN1
YnN5c3RlbSB0aGF0IGFyZSByZWNlbnRseSBhY2NlcHRlZC4KPj4+IEAgaHR0cHM6Ly9wYXRjaHdv
cmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXBjaS9saXN0Lz9zZXJpZXM9MjAyMjExCj4+PiB3
aGljaCBpbiB0dXJuIGRlcGVuZHMgb24gdGhlIHBhdGNoIG1hZGUgYnkgS2lzaG9uCj4+PiBAIGh0
dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gvMTA5NzUxMjMvCj4+PiB3aGljaCBpcyBh
bHNvIHVuZGVyIHJldmlldy4KPj4+Cj4+PiBWNDoKPj4+ICogU3RhcnRlZCB1c2luZyB0aHJlYWRl
ZCBpcnFzIGluc3RlYWQgb2Yga3RocmVhZHMKPj4KPj4gSGkgVmlkeWEsCj4+Cj4+IHNvcnJ5IGZv
ciB0aGUgYm90aGVyLCBtYXkgSSBhc2sgeW91IHRvIHJlYmFzZSB0aGUgc2VyaWVzIChhZnRlcgo+
PiBhbnN3ZXJpbmcgVGhpZXJyeSdzIHF1ZXJ5KSBvbiB0b3Agb2YgbXkgcGNpL2VuZHBvaW50IGJy
YW5jaCBwbGVhc2UgPwo+Pgo+PiBQbGVhc2UgcmVzZW5kIGl0IGFuZCBJIHdpbGwgbWVyZ2UgcGF0
Y2hlcyB7MSwyLDV9IHRoZW4uCj4gU3VyZS4KPiBJIGp1c3Qgc2VudCBWNSBzZXJpZXMgcmViYXNp
bmcgcGF0Y2hlcyBvbiB0b3Agb2YgeW91ciBwY2kvZW5kcG9pbnQgYnJhbmNoLgpIaSwKU29ycnkg
dG8gYm90aGVyIHlvdSBhZ2Fpbi4KQ291bGQgeW91IHBsZWFzZSB0YWtlIGEgbG9vayBhdCBWNSBz
ZXJpZXM/CgpUaGFua3MsClZpZHlhIFNhZ2FyCj4gCj4gVGhhbmtzLAo+IFZpZHlhIFNhZ2FyCj4+
Cj4+IFRoYW5rcywKPj4gTG9yZW56bwo+Pgo+Pj4gVjM6Cj4+PiAqIFJlLW9yZGVyZWQgcGF0Y2hl
cyBpbiB0aGUgc2VyaWVzIHRvIG1ha2UgdGhlIGRyaXZlciBjaGFuZ2UgYXMgdGhlIAo+Pj4gbGFz
dCBwYXRjaAo+Pj4gKiBUb29rIGNhcmUgb2YgVGhpZXJyeSdzIHJldmlldyBjb21tZW50cwo+Pj4K
Pj4+IFYyOgo+Pj4gKiBBZGRyZXNzZWQgVGhpZXJyeSAmIEJqb3JuJ3MgcmV2aWV3IGNvbW1lbnRz
Cj4+PiAqIEFkZGVkIEVQIG1vZGUgc3BlY2lmaWMgYmluZGluZyBkb2N1bWVudGF0aW9uIHRvIGFs
cmVhZHkgZXhpc3RpbmcgCj4+PiBiaW5kaW5nIGRvY3VtZW50YXRpb24gZmlsZQo+Pj4gKiBSZW1v
dmVkIHBhdGNoIHRoYXQgZW5hYmxlcyBHUElPIGNvbnRyb2xsZXIgbm9kZXMgZXhwbGljaXRseSBh
cyB0aGV5IAo+Pj4gYXJlIGVuYWJsZWQgYWxyZWFkeQo+Pj4KPj4+IFZpZHlhIFNhZ2FyICg1KToK
Pj4+IMKgwqAgc29jL3RlZ3JhOiBicG1wOiBVcGRhdGUgQUJJIGhlYWRlcgo+Pj4gwqDCoCBkdC1i
aW5kaW5nczogUENJOiB0ZWdyYTogQWRkIERUIHN1cHBvcnQgZm9yIFBDSWUgRVAgbm9kZXMgaW4g
VGVncmExOTQKPj4+IMKgwqAgYXJtNjQ6IHRlZ3JhOiBBZGQgUENJZSBlbmRwb2ludCBjb250cm9s
bGVycyBub2RlcyBmb3IgVGVncmExOTQKPj4+IMKgwqAgYXJtNjQ6IHRlZ3JhOiBBZGQgc3VwcG9y
dCBmb3IgUENJZSBlbmRwb2ludCBtb2RlIGluIFAyOTcyLTAwMDAKPj4+IMKgwqDCoMKgIHBsYXRm
b3JtCj4+PiDCoMKgIFBDSTogdGVncmE6IEFkZCBzdXBwb3J0IGZvciBQQ0llIGVuZHBvaW50IG1v
ZGUgaW4gVGVncmExOTQKPj4+Cj4+PiDCoCAuLi4vYmluZGluZ3MvcGNpL252aWRpYSx0ZWdyYTE5
NC1wY2llLnR4dMKgwqDCoMKgIHwgMTI1ICsrKy0KPj4+IMKgIC4uLi9ib290L2R0cy9udmlkaWEv
dGVncmExOTQtcDI5NzItMDAwMC5kdHPCoMKgIHzCoCAxOCArCj4+PiDCoCBhcmNoL2FybTY0L2Jv
b3QvZHRzL252aWRpYS90ZWdyYTE5NC5kdHNpwqDCoMKgwqDCoCB8wqAgOTkgKysrCj4+PiDCoCBk
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9LY29uZmlnwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8
wqAgMzAgKy0KPj4+IMKgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtdGVncmExOTQu
Y8KgwqDCoCB8IDY4MSArKysrKysrKysrKysrKysrKy0KPj4+IMKgIGluY2x1ZGUvc29jL3RlZ3Jh
L2JwbXAtYWJpLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMCArLQo+
Pj4gwqAgNiBmaWxlcyBjaGFuZ2VkLCA5MTggaW5zZXJ0aW9ucygrKSwgNDUgZGVsZXRpb25zKC0p
Cj4+Pgo+Pj4gLS0gCj4+PiAyLjE3LjEKPj4+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
