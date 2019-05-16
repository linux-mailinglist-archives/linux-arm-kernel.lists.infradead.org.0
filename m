Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BFB2046D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 13:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dzHxy9TI3qtxPUotbOsmKMvUWGVuH1URcslyU8JALIw=; b=OOV6CJ9k007XxEU/N3RTk9huF
	t35QFrWuLe6WN+UjrKFqrrajABIQQr3eplLqIl1NN9d8xW1njlwJgbxto2h5zWlEnMChvil9G+wa+
	qepdV/TTCGTs5C05z1ycwPbamGO4VkFC0l4hSyezOU16wKyLTBLqJhDLmkO8pZknR/xBGBZuDZ/GJ
	zUC5I3US5yc2wqPMmH0OjbxFLZCdNE8+AcF5N9QdM4Lc7GjVLzPWlB+WCLt6Gp8GMArDj9PkRIUPD
	BZreBMHd+gguH6c0hZ4zYPpXfkY5YRVipYUZs4I5IGAhTjKFiVz/6N0vnMG0D+FrZdngFT0blEqgK
	JM2twfcjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hREPv-0000hR-Lm; Thu, 16 May 2019 11:19:19 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hREPo-0000gd-1X
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 11:19:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ABF4F19BF;
 Thu, 16 May 2019 04:19:09 -0700 (PDT)
Received: from [10.1.196.75] (e110467-lin.cambridge.arm.com [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 91A6F3F71E;
 Thu, 16 May 2019 04:19:07 -0700 (PDT)
Subject: Re: [PATCH v4 0/8] Allwinner H6 Mali GPU support
To: Rob Herring <rob.e.herring@gmail.com>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
References: <20190512174608.10083-1-peron.clem@gmail.com>
 <20190513151405.GW17751@phenom.ffwll.local>
 <de50a9da-669f-ab25-2ef2-5ffb90f8ee03@baylibre.com>
 <CAJiuCccuEw0BK6MwROR+XUDvu8AJTmZ5tu=pYwZbGAuvO31pgg@mail.gmail.com>
 <CAJiuCccWa5UTML68JDQq6q8SyNZzVWwQWTOL=+84Bh4EMHGC3A@mail.gmail.com>
 <3c2c9094-69d4-bace-d5ee-c02b7f56ac82@arm.com>
 <CAJiuCcd=gCQJ4mxn3wNhHXveOhFLnYSEs+cnOMHcALPvd7bQZw@mail.gmail.com>
 <CAC=3edbn1yXih5vP0SwsDkqRB0j5q0c4FL0jhCq9DQ9Wt2-hAA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <e8618889-9b22-7f9f-7451-3c08a80a0f9b@arm.com>
Date: Thu, 16 May 2019 12:19:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAC=3edbn1yXih5vP0SwsDkqRB0j5q0c4FL0jhCq9DQ9Wt2-hAA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_041912_101854_25EC58B4 
X-CRM114-Status: GOOD (  26.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTYvMDUvMjAxOSAwMDoyMiwgUm9iIEhlcnJpbmcgd3JvdGU6Cj4gT24gV2VkLCBNYXkgMTUs
IDIwMTkgYXQgNTowNiBQTSBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPiB3
cm90ZToKPj4KPj4gSGkgUm9iaW4sCj4+Cj4+IE9uIFR1ZSwgMTQgTWF5IDIwMTkgYXQgMjM6NTcs
IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5jb20+IHdyb3RlOgo+Pj4KPj4+IE9uIDIw
MTktMDUtMTQgMTA6MjIgcG0sIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPj4+PiBIaSwKPj4+Pgo+
Pj4+IE9uIFR1ZSwgMTQgTWF5IDIwMTkgYXQgMTc6MTcsIENsw6ltZW50IFDDqXJvbiA8cGVyb24u
Y2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+Pj4+Pgo+Pj4+PiBIaSwKPj4+Pj4KPj4+Pj4gT24gVHVl
LCAxNCBNYXkgMjAxOSBhdCAxMjoyOSwgTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGli
cmUuY29tPiB3cm90ZToKPj4+Pj4+Cj4+Pj4+PiBIaSwKPj4+Pj4+Cj4+Pj4+PiBPbiAxMy8wNS8y
MDE5IDE3OjE0LCBEYW5pZWwgVmV0dGVyIHdyb3RlOgo+Pj4+Pj4+IE9uIFN1biwgTWF5IDEyLCAy
MDE5IGF0IDA3OjQ2OjAwUE0gKzAyMDAsIHBlcm9uLmNsZW1AZ21haWwuY29tIHdyb3RlOgo+Pj4+
Pj4+PiBGcm9tOiBDbMOpbWVudCBQw6lyb24gPHBlcm9uLmNsZW1AZ21haWwuY29tPgo+Pj4+Pj4+
Pgo+Pj4+Pj4+PiBIaSwKPj4+Pj4+Pj4KPj4+Pj4+Pj4gVGhlIEFsbHdpbm5lciBINiBoYXMgYSBN
YWxpLVQ3MjAgTVAyLiBUaGUgZHJpdmVycyBhcmUKPj4+Pj4+Pj4gb3V0LW9mLXRyZWUgc28gdGhp
cyBzZXJpZXMgb25seSBpbnRyb2R1Y2UgdGhlIGR0LWJpbmRpbmdzLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
V2UgZG8gaGF2ZSBhbiBpbi10cmVlIG1pZGdhcmQgZHJpdmVyIG5vdyAoc2luY2UgNS4yKS4gRG9l
cyB0aGlzIHN0dWZmIHdvcmsKPj4+Pj4+PiB0b2dldGhlciB3aXRoIHlvdXIgZHQgY2hhbmdlcyBo
ZXJlPwo+Pj4+Pj4KPj4+Pj4+IE5vLCBidXQgaXQgc2hvdWxkIGJlIGVhc3kgdG8gYWRkLgo+Pj4+
PiBJIHdpbGwgZ2l2ZSBpdCBhIHRyeSBhbmQgbGV0IHlvdSBrbm93Lgo+Pj4+IEFkZGVkIHRoZSBi
dXNfY2xvY2sgYW5kIGEgcmFtcCBkZWxheSB0byB0aGUgZ3B1X3ZkZCBidXQgdGhlIGRyaXZlcgo+
Pj4+IGZhaWwgYXQgcHJvYmUuCj4+Pj4KPj4+PiBbICAgIDMuMDUyOTE5XSBwYW5mcm9zdCAxODAw
MDAwLmdwdTogY2xvY2sgcmF0ZSA9IDQzMjAwMDAwMAo+Pj4+IFsgICAgMy4wNTgyNzhdIHBhbmZy
b3N0IDE4MDAwMDAuZ3B1OiBidXNfY2xvY2sgcmF0ZSA9IDEwMDAwMDAwMAo+Pj4+IFsgICAgMy4x
Nzk3NzJdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtYWxpLXQ3MjAgaWQgMHg3MjAgbWFqb3IgMHgx
Cj4+Pj4gbWlub3IgMHgxIHN0YXR1cyAweDAKPj4+PiBbICAgIDMuMTg3NDMyXSBwYW5mcm9zdCAx
ODAwMDAwLmdwdTogZmVhdHVyZXM6IDAwMDAwMDAwLDEwMzA5ZTQwLAo+Pj4+IGlzc3VlczogMDAw
MDAwMDAsMjEwNTQ0MDAKPj4+PiBbICAgIDMuMTk1NTMxXSBwYW5mcm9zdCAxODAwMDAwLmdwdTog
RmVhdHVyZXM6IEwyOjB4MDcxMTAyMDYKPj4+PiBTaGFkZXI6MHgwMDAwMDAwMCBUaWxlcjoweDAw
MDAwODA5IE1lbToweDEgTU1VOjB4MDAwMDI4MjEgQVM6MHhmCj4+Pj4gSlM6MHg3Cj4+Pj4gWyAg
ICAzLjIwNzE3OF0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IHNoYWRlcl9wcmVzZW50PTB4MyBsMl9w
cmVzZW50PTB4MQo+Pj4+IFsgICAgMy4yMzgyNTddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBGYXRh
bCBlcnJvciBkdXJpbmcgR1BVIGluaXQKPj4+PiBbICAgIDMuMjQ0MTY1XSBwYW5mcm9zdDogcHJv
YmUgb2YgMTgwMDAwMC5ncHUgZmFpbGVkIHdpdGggZXJyb3IgLTEyCj4+Pj4KPj4+PiBUaGUgRU5P
TUVNIGlzIGNvbWluZyBmcm9tICJwYW5mcm9zdF9tbXVfaW5pdCIKPj4+PiBhbGxvY19pb19wZ3Rh
YmxlX29wcyhBUk1fTUFMSV9MUEFFLCAmcGZkZXYtPm1tdS0+cGd0YmxfY2ZnLAo+Pj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwZmRldik7Cj4+Pj4KPj4+PiBX
aGljaCBpcyBkdWUgdG8gYSBjaGVjayBpbiB0aGUgcGd0YWJsZSBhbGxvYyAiY2ZnLT5pYXMgIT0g
NDgiCj4+Pj4gYXJtLWxwYWUgaW8tcGd0YWJsZTogYXJtX21hbGlfbHBhZV9hbGxvY19wZ3RhYmxl
IGNmZy0+aWFzIDMzIGNmZy0+b2FzIDQwCj4+Pj4KPj4+PiBEUkkgc3RhY2sgaXMgdG90YWxseSBu
ZXcgZm9yIG1lLCBjb3VsZCB5b3UgZ2l2ZSBtZSBhIGxpdHRsZSBjbHVlIGFib3V0Cj4+Pj4gdGhp
cyBpc3N1ZSA/Cj4+Pgo+Pj4gSGVoLCB0aGlzIGlzIHByb2JhYmx5IHRoZSBvbmUgYml0IHdoaWNo
IGRvZXNuJ3QgcmVhbGx5IGNvdW50IGFzICJEUkkgc3RhY2siLgo+Pj4KPj4+IFRoYXQncyBtZXJl
bHkgYSBzb21ld2hhdC1jb25zZXJ2YXRpdmUgc2FuaXR5IGNoZWNrIC0gSSdtIHByZXR0eSBzdXJl
IGl0Cj4+PiAqc2hvdWxkKiBiZSBmaW5lIHRvIGNoYW5nZSB0aGUgdGVzdCB0byAiY2ZnLT5pYXMg
PiA0OCIgKGlvLXBndGFibGUKPj4+IGl0c2VsZiBvdWdodCB0byBjb3BlKS4gWW91J2xsIGp1c3Qg
Z2V0IHRvIGJlIHRoZSBmaXJzdCB0byBhY3R1YWxseSB0ZXN0Cj4+PiBhIG5vbi00OC1iaXQgY29u
ZmlndXJhdGlvbiBoZXJlIDopCj4+Cj4+IFRoYW5rcyBhIGxvdCwgdGhlIHByb2JlIHNlZW1zIGZp
bmUgbm93IDopCj4+Cj4+IEkgdHJ5IHRvIHJ1biBnbG1hcmsyIDoKPj4gIyBnbG1hcmsyLWVzMi1k
cm0KPj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PQo+PiAgICAgIGdsbWFyazIgMjAxNy4wNwo+PiA9PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4+ICAgICAgT3BlbkdMIEluZm9ybWF0aW9u
Cj4+ICAgICAgR0xfVkVORE9SOiAgICAgcGFuZnJvc3QKPj4gICAgICBHTF9SRU5ERVJFUjogICBw
YW5mcm9zdAo+PiAgICAgIEdMX1ZFUlNJT046ICAgIE9wZW5HTCBFUyAyLjAgTWVzYSAxOS4xLjAt
cmMyCj4+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KPj4gW2J1aWxkXSB1c2UtdmJvPWZhbHNlOgo+Pgo+PiBCdXQgaXQgc2VlbXMgdGhhdCBI
NiBpcyBub3Qgc28gZWFzeSB0byBhZGQgOiguCj4+Cj4+IFsgIDM0NS4yMDQ4MTNdIHBhbmZyb3N0
IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4+IFsgIDM0NS4yMDk2MTddIHBhbmZyb3N0
IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPj4gMHgwMDAw
MDAwMDAyNDAwNDAwCj4+IFsgIDM0NS4yMDk2MTddIFJlYXNvbjogVE9ETwo+PiBbICAzNDUuMjA5
NjE3XSByYXcgZmF1bHQgc3RhdHVzOiAweDgwMDAwMkMxCj4+IFsgIDM0NS4yMDk2MTddIGRlY29k
ZWQgZmF1bHQgc3RhdHVzOiBTTEFWRSBGQVVMVAo+PiBbICAzNDUuMjA5NjE3XSBleGNlcHRpb24g
dHlwZSAweEMxOiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEKPj4gWyAgMzQ1LjIwOTYxN10gYWNj
ZXNzIHR5cGUgMHgyOiBSRUFECj4+IFsgIDM0NS4yMDk2MTddIHNvdXJjZSBpZCAweDgwMDAKPj4g
WyAgMzQ1LjcyOTk1N10gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBq
cz0wLAo+PiBzdGF0dXM9MHg4LCBoZWFkPTB4MjQwMDQwMCwgdGFpbD0weDI0MDA0MDAsIHNjaGVk
X2pvYj0wMDAwMDAwMDllMjA0ZGU5Cj4+IFsgIDM0Ni4wNTU4NzZdIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBtbXUgaXJxIHN0YXR1cz0xCj4+IFsgIDM0Ni4wNjA2ODBdIHBhbmZyb3N0IDE4MDAwMDAu
Z3B1OiBVbmhhbmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPj4gMHgwMDAwMDAwMDAyQzAw
QTAwCj4+IFsgIDM0Ni4wNjA2ODBdIFJlYXNvbjogVE9ETwo+PiBbICAzNDYuMDYwNjgwXSByYXcg
ZmF1bHQgc3RhdHVzOiAweDgxMDAwMkMxCj4+IFsgIDM0Ni4wNjA2ODBdIGRlY29kZWQgZmF1bHQg
c3RhdHVzOiBTTEFWRSBGQVVMVAo+PiBbICAzNDYuMDYwNjgwXSBleGNlcHRpb24gdHlwZSAweEMx
OiBUUkFOU0xBVElPTl9GQVVMVF9MRVZFTDEKPj4gWyAgMzQ2LjA2MDY4MF0gYWNjZXNzIHR5cGUg
MHgyOiBSRUFECj4+IFsgIDM0Ni4wNjA2ODBdIHNvdXJjZSBpZCAweDgxMDAKPj4gWyAgMzQ2LjU2
MTk1NV0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBqcz0xLAo+PiBz
dGF0dXM9MHg4LCBoZWFkPTB4MmMwMGEwMCwgdGFpbD0weDJjMDBhMDAsIHNjaGVkX2pvYj0wMDAw
MDAwMGI1NWE5YTg1Cj4+IFsgIDM0Ni41NzM5MTNdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUg
aXJxIHN0YXR1cz0xCj4+IFsgIDM0Ni41Nzg3MDddIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhh
bmRsZWQgUGFnZSBmYXVsdCBpbiBBUzAgYXQgVkEKPj4gMHgwMDAwMDAwMDAyQzAwQjgwCj4+IFsg
IDM0Ni41Nzg3MDddIFJlYXNvbjogVE9ETwo+PiBbICAzNDYuNTc4NzA3XSByYXcgZmF1bHQgc3Rh
dHVzOiAweDgwMDAwMkMxCj4+IFsgIDM0Ni41Nzg3MDddIGRlY29kZWQgZmF1bHQgc3RhdHVzOiBT
TEFWRSBGQVVMVAo+PiBbICAzNDYuNTc4NzA3XSBleGNlcHRpb24gdHlwZSAweEMxOiBUUkFOU0xB
VElPTl9GQVVMVF9MRVZFTDEKPj4gWyAgMzQ2LjU3ODcwN10gYWNjZXNzIHR5cGUgMHgyOiBSRUFE
Cj4+IFsgIDM0Ni41Nzg3MDddIHNvdXJjZSBpZCAweDgwMDAKPj4gWyAgMzQ3LjA3Mzk0N10gcGFu
ZnJvc3QgMTgwMDAwMC5ncHU6IGdwdSBzY2hlZCB0aW1lb3V0LCBqcz0wLAo+PiBzdGF0dXM9MHg4
LCBoZWFkPTB4MmMwMGI4MCwgdGFpbD0weDJjMDBiODAsIHNjaGVkX2pvYj0wMDAwMDAwMGNmNmFm
OGU4Cj4+IFsgIDM0Ny4xMDQxMjVdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBtbXUgaXJxIHN0YXR1
cz0xCj4+IFsgIDM0Ny4xMDg5MzBdIHBhbmZyb3N0IDE4MDAwMDAuZ3B1OiBVbmhhbmRsZWQgUGFn
ZSBmYXVsdCBpbiBBUzAgYXQgVkEKPj4gMHgwMDAwMDAwMDAyODAwOTAwCj4+IFsgIDM0Ny4xMDg5
MzBdIFJlYXNvbjogVE9ETwo+PiBbICAzNDcuMTA4OTMwXSByYXcgZmF1bHQgc3RhdHVzOiAweDgx
MDAwMkMxCj4+IFsgIDM0Ny4xMDg5MzBdIGRlY29kZWQgZmF1bHRuIHRoaSBzdGF0dXM6IFNMQVZF
IEZBVUxUCj4+IFsgIDM0Ny4xMDg5MzBdIGV4Y2VwdGlvbiB0eXBlIDB4QzE6IFRSQU5TTEFUSU9O
X0ZBVUxUX0xFVkVMMQo+PiBbICAzNDcuMTA4OTMwXSBhY2Nlc3MgdHlwZSAweDI6IFJFQUQKPj4g
WyAgMzQ3LjEwODkzMF0gc291cmNlIGlkIDB4ODEwMAo+PiBbICAzNDcuNjE3OTUwXSBwYW5mcm9z
dCAxODAwMDAwLmdwdTogZ3B1IHNjaGVkIHRpbWVvdXQsIGpzPTEsCj4+IHN0YXR1cz0weDgsIGhl
YWQ9MHgyODAwOTAwLCB0YWlsPTB4MjgwMDkwMCwgc2NoZWRfam9iPTAwMDAwMDAwOTMyNWZkYjcK
Pj4gWyAgMzQ3LjYyOTkwMl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IG1tdSBpcnEgc3RhdHVzPTEK
Pj4gWyAgMzQ3LjYzNDY5Nl0gcGFuZnJvc3QgMTgwMDAwMC5ncHU6IFVuaGFuZGxlZCBQYWdlIGZh
dWx0IGluIEFTMCBhdCBWQQo+PiAweDAwMDAwMDAwMDI4MDBBODAKPiAKPiBJcyB0aGlzIDMyIG9y
IDY0IGJpdCB1c2Vyc3BhY2U/IEkgdGhpbmsgNjQtYml0IGRvZXMgbm90IHdvcmsgd2l0aAo+IFQ3
eHguIFlvdSBtaWdodCBuZWVkIHRoaXNbMV0uCgpbIE9vb2guLi4gdGhhdCBtYWtlcyBUNjIwIGFj
dHVhbGx5IGRvIHN0dWZmIHdpdGhvdXQgZmFsbGluZyBvdmVyIApkZXJlZmVyZW5jaW5nIFZBIDAg
c29tZXdoZXJlIGhhbGZ3YXkgdGhyb3VnaCB0aGUgam9iIGNoYWluIDpECgpJIHNoYWxsIGNvbnRp
bnVlIHRvIHBsYXkuLi4gXQoKPiBZb3UgbWF5IGFsc28gYmUgdGhlIGZpcnN0IHRvIHRyeSBUNzIw
LAo+IHNvIGl0IGNvdWxkIGJlIHNvbWV0aGluZyBlbHNlLgoKSSB3YXMgZXhwZWN0aW5nIHRvIHNl
ZSBhIHNpbWlsYXIgYmVoYXZpb3VyIHRvIG15IFQ2MjAgKHdoaWNoIEkgbm93IAphc3N1bWUgd2Fz
IGRvd24gdG8gNjQtYml0IGpvYiBkZXNjcmlwdG9ycyBzb3J0LW9mLWJ1dC1ub3QtcXVpdGUgd29y
a2luZykgCmJ1dCB0aGlzIGRvZXMgbG9vayBhIGJpdCBtb3JlIGZ1bmRhbWVudGFsIC0gdGhlIGZh
Y3QgdGhhdCBpdCdzIGEgbGV2ZWwgMSAKZmF1bHQgd2l0aCBWQSA9PSBoZWFkID09IHRhaWwgc3Vn
Z2VzdHMgdG8gbWUgdGhhdCB0aGUgTU1VIGNhbid0IHNlZSB0aGUgCnBhZ2UgdGFibGVzIGF0IGFs
bCB0byB0cmFuc2xhdGUgYW55dGhpbmcuIEkgcmVhbGx5IGhvcGUgdGhhdCB0aGUgSDYgR1BVIApp
bnRlZ3JhdGlvbiBkb2Vzbid0IHN1ZmZlciBmcm9tIHRoZSBzYW1lIERNQSBvZmZzZXQgYXMgdGhl
IEFsbHdpbm5lciAKZGlzcGxheSBwaXBlbGluZSBzdHVmZiwgYmVjYXVzZSB0aGF0IHdvdWxkIGJl
IGEgcmVhbCBwYWluIHRvIHN1cHBvcnQgaW4gCmlvLXBndGFibGUuCgpSb2Jpbi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
