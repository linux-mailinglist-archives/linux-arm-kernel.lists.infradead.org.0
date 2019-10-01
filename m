Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA762C366D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:56:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Subject:To:From:
	Message-ID:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BWbHJo/hagritgkP+o63gUISgKg78UrTxOdrAnVk+j4=; b=X4wxTXB6uWOUNfJhcN1VMa6yj
	qoZ/n5g4Rq5stvKmEsBfKJnFff6tnV3LT1N0jRsO12M63+a7WSldzQalnWOT+uqV5gl3J5nOVh90L
	koGRYA5dShMISB88PCkE8UmspkcKidHqEcYOuKPPXge87Y/Ihk2iGfir0prHFygD/abMCHLdDOOsT
	ilH6AQh72XSUiKDd2wrZnfZJFhBFiH6ZgFom1FeFmH3EEia3S4zAq9gki3skgzGGV1URVhbbO6PEx
	9F5WetE3IkwccTtjMx+4XJKxSha2R0P1gVPAwy0+H9o2DXuTtOfRq1N5gNzwHBwuRP6n8mXqe6ksE
	35O5HNXXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIdZ-0004ps-Np; Tue, 01 Oct 2019 13:56:21 +0000
Received: from mx.0dd.nl ([5.2.79.48])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIdR-0004oJ-Bm; Tue, 01 Oct 2019 13:56:16 +0000
Received: from mail.vdorst.com (mail.vdorst.com [IPv6:fd01::250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.0dd.nl (Postfix) with ESMTPS id 12E3B5FBC5;
 Tue,  1 Oct 2019 15:56:09 +0200 (CEST)
Authentication-Results: mx.0dd.nl; dkim=pass (2048-bit key;
 secure) header.d=vdorst.com header.i=@vdorst.com header.b="MiBJ1OfY"; 
 dkim-atps=neutral
Received: from www (www.vdorst.com [192.168.2.222])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.vdorst.com (Postfix) with ESMTPSA id C2B87358FB;
 Tue,  1 Oct 2019 15:56:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.vdorst.com C2B87358FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vdorst.com;
 s=default; t=1569938168;
 bh=VuIg/nbWnzaooWQXgf0jLELVIM9W+Vd2ZvGPUadAMPM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MiBJ1OfYk48VHA6HrblhjA6Hb3aditWR5YfLHeFqJ81AE7DkXN8+UQKKcKcjYHAnm
 zigKND8kk+B83zm98YLtU5LWqT4toLQK/YrVYyM7o68njxwvBb46NbJMYFOIqHq2+a
 Id6P3ktrp23DiZwgLPnly/D/Y9Pq3lkXKmZ0Kjt2ayaTiMeFG6Epdi+WPri9j+DM6l
 cqyuF8nMF2is2g6LcHid4qI6I2nO4LCM90z5YpJKeMVOYsT7dQ/kinbeRU913TllAE
 TLo82X/M/GHIiwM5mkxMGqC2Aa8nsH0+7scM3UL2CwVYi8VU/O1IzdFqkUia3Oiel0
 +fn3sWWHhQbUA==
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1]) by
 www.vdorst.com (Horde Framework) with HTTPS; Tue, 01 Oct 2019 13:56:08 +0000
Date: Tue, 01 Oct 2019 13:56:08 +0000
Message-ID: <20191001135608.Horde.OSYef8s44rR0XHw22Bf55r8@www.vdorst.com>
From: =?utf-8?b?UmVuw6k=?= van Dorst <opensource@vdorst.com>
To: MarkLee <Mark-MC.Lee@mediatek.com>
Subject: Re: [PATCH net 2/2] arm: dts: mediatek: Fix mt7629 dts to reflect
 the latest dt-binding
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
 <20191001123150.23135-3-Mark-MC.Lee@mediatek.com>
In-Reply-To: <20191001123150.23135-3-Mark-MC.Lee@mediatek.com>
User-Agent: Horde Application Framework 5
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_065613_687227_BE6EF77E 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Felix Fietkau <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="Yes"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFya0xlZSwKClF1b3RpbmcgTWFya0xlZSA8TWFyay1NQy5MZWVAbWVkaWF0ZWsuY29tPjoK
Cj4gKiBSZW1vdmVzIG1lZGlhdGVrLHBoeXNwZWVkIHByb3BlcnR5IGZyb20gZHRzaSB0aGF0IGlz
IHVzZWxlc3MgaW4gUEhZTElOSwo+ICogU2V0IGdtYWMwIHRvIGZpeGVkLWxpbmsgc2dtaWkgMi41
R2JpdCBtb2RlCj4gKiBTZXQgZ21hYzEgdG8gZ21paSBtb2RlIHRoYXQgY29ubmVjdCB0byBhIGlu
dGVybmFsIGdwaHkKPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmtMZWUgPE1hcmstTUMuTGVlQG1lZGlh
dGVrLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5LXJmYi5kdHMgfCAxMyAr
KysrKysrKysrKystCj4gIGFyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS5kdHNpICAgIHwgIDIgLS0K
PiAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL210NzYyOS1yZmIuZHRzICAKPiBiL2FyY2gv
YXJtL2Jvb3QvZHRzL210NzYyOS1yZmIuZHRzCj4gaW5kZXggMzYyMWI3ZDJiMjJhLi42YmYxZjdk
OGRkYjUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5LXJmYi5kdHMKPiAr
KysgYi9hcmNoL2FybS9ib290L2R0cy9tdDc2MjktcmZiLmR0cwo+IEBAIC02Niw5ICs2NiwyMSBA
QAo+ICAJcGluY3RybC0xID0gPCZlcGh5X2xlZHNfcGlucz47Cj4gIAlzdGF0dXMgPSAib2theSI7
Cj4KPiArCWdtYWMwOiBtYWNAMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJtZWRpYXRlayxldGgtbWFj
IjsKPiArCQlyZWcgPSA8MD47Cj4gKwkJcGh5LW1vZGUgPSAic2dtaWkiOwo+ICsJCWZpeGVkLWxp
bmsgewo+ICsJCQlzcGVlZCA9IDwyNTAwPjsKPiArCQkJZnVsbC1kdXBsZXg7Cj4gKwkJCXBhdXNl
Owo+ICsJCX07Cj4gKwl9Owo+ICsKPiAgCWdtYWMxOiBtYWNAMSB7Cj4gIAkJY29tcGF0aWJsZSA9
ICJtZWRpYXRlayxldGgtbWFjIjsKPiAgCQlyZWcgPSA8MT47Cj4gKwkJcGh5LW1vZGUgPSAiZ21p
aSI7Cj4gIAkJcGh5LWhhbmRsZSA9IDwmcGh5MD47Cj4gIAl9Owo+Cj4gQEAgLTc4LDcgKzkwLDYg
QEAKPgo+ICAJCXBoeTA6IGV0aGVybmV0LXBoeUAwIHsKPiAgCQkJcmVnID0gPDA+Owo+IC0JCQlw
aHktbW9kZSA9ICJnbWlpIjsKPiAgCQl9Owo+ICAJfTsKPiAgfTsKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vYm9vdC9kdHMvbXQ3NjI5LmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9tdDc2MjkuZHRz
aQo+IGluZGV4IDk2MDhiYzJjY2IzZi4uODY3Yjg4MTAzYjlkIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtL2Jvb3QvZHRzL210NzYyOS5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvbXQ3NjI5
LmR0c2kKPiBAQCAtNDY4LDE0ICs0NjgsMTIgQEAKPiAgCQkJY29tcGF0aWJsZSA9ICJtZWRpYXRl
ayxtdDc2Mjktc2dtaWlzeXMiLCAic3lzY29uIjsKPiAgCQkJcmVnID0gPDB4MWIxMjgwMDAgMHgz
MDAwPjsKPiAgCQkJI2Nsb2NrLWNlbGxzID0gPDE+Owo+IC0JCQltZWRpYXRlayxwaHlzcGVlZCA9
ICIyNTAwIjsKPiAgCQl9Owo+Cj4gIAkJc2dtaWlzeXMxOiBzeXNjb25AMWIxMzAwMDAgewo+ICAJ
CQljb21wYXRpYmxlID0gIm1lZGlhdGVrLG10NzYyOS1zZ21paXN5cyIsICJzeXNjb24iOwo+ICAJ
CQlyZWcgPSA8MHgxYjEzMDAwMCAweDMwMDA+Owo+ICAJCQkjY2xvY2stY2VsbHMgPSA8MT47Cj4g
LQkJCW1lZGlhdGVrLHBoeXNwZWVkID0gIjI1MDAiOwo+ICAJCX07Cj4gIAl9Owo+ICB9Owo+IC0t
Cj4gMi4xNy4xCgpEb2VzIE1UNzYyOSBzb2MgaGFzIHRoZSBzYW1lIFNHTUlJIElQIGJsb2NrIGFz
IG9uIHRoZSBNVDc2MjI/CklmIHRoYXQgaXMgdGhlIGNhc2UgdGhlbiBwaHktbW9kZSBzaG91bGQg
c2V0IHRvICIyNTAwYmFzZS14Ii4KU2VlIGRpc2N1c3Npb24gYWJvdXQgdGhlIE1UNzYyMiBbMV0g
YW5kIGR0cyBvZiAgCm10NzYyMi1iYW5hbmFwaS1icGktcjY0LmR0c1syXVszXQoKTm90ZSB0aGUg
Y29kZSBvbmx5IHNldCB0aGUgcGh5IGluIG92ZXJjbG9jayBtb2RlIGlmIHBoeW1vZGUgPSAgCjI1
MDBiYXNlLXggYW5kIHRoZQpsaW5rIGlzIGEgZml4ZWQtbGluaywgc2VlIFs0XS4KQWxzcCB0aGUg
Y3VycmVudCBjb2RlIGRvZXNuJ3Qgc3VwcG9ydCBzZ21paSBzbyB3ZWxsLiBTZ21paSBhdCAyLjVH
Yml0IGlzIG5vdApzdXBwb3J0ZWQgYXQgYWxsLgoKR3JlYXRzLAoKUmVuw6kKClsxXTogIApodHRw
czovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAxOTA4MjIxNDQ0MzMuR1QxMzI5NEBzaGVsbC5h
cm1saW51eC5vcmcudWsvClsyXTogIApodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAx
OTA4MjUxNzQzNDEuMjA3NTAtNC1vcGVuc291cmNlQHZkb3JzdC5jb20vClszXTogIApodHRwczov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9kYXZlbS9uZXQuZ2l0L3Ry
ZWUvYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5k
dHMjbjEyMgpbNF06ICAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvZGF2ZW0vbmV0LmdpdC90cmVlL2RyaXZlcnMvbmV0L2V0aGVybmV0L21lZGlhdGVrL210
a19zZ21paS5jI243MgoKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
