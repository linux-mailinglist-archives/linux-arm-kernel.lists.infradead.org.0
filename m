Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF27F6F00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bXqd5c2qNNaaCV8pgYI4VmH4a6WUSfioz5vchVpwb38=; b=TrVVIoYQ29cJuY
	mySoXzdUljhuLCKFIX596k5AIdR1vxpPIFDP8SbN6/7rADTy7gxIitBgs7kZtlAAyVNrHhYRpUww2
	pKD3X71twF/a3rMm0Nz/RQfA6KcrQuw6ofgHRL5aFBAoDRsRE8JK2F/wf2q+g/SPfJGxX7mTWrAM+
	4RDBHHudI7PU2n4GrJsNAxjlmmDqnuCIncI9m6+1NmNGQLrofMEXY36Su/e4VA3r/YQVufLo7EeTS
	Jx9pfoHQZawIIOT8sxZ46e8UaClYJnQ+sgiebz5jSVx4aFfcQGSWhT57hP0X5YMLedcUEWWNmB2Dc
	7vyaMkkin6ZJGxwLrEPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU42X-0004pl-EM; Mon, 11 Nov 2019 07:23:09 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU42P-0004pG-Ty
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:23:03 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xAB7Mo9H020255;
 Mon, 11 Nov 2019 01:22:50 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573456970;
 bh=ARjva5ASHxGvNYQYfpbT0ZrbsWnn8VD961j4MKSYmaA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=RceyAqmcB8REiupGn3XULgm076zDGv2sdj5PuU1MR6m6D3yUXswJzj/QkorZEv6j7
 gQoN4SkRYl0IQetYDlzmd1J4k4aCqT0PLqDSSirKRMWjyKMAfZnG2464vzuGRMAS/p
 ekblp5gq32pBxbQewAwziaYcerO46tWp490grLRA=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB7Mor9123768;
 Mon, 11 Nov 2019 01:22:50 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 11
 Nov 2019 01:22:31 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 11 Nov 2019 01:22:47 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xAB7MidJ062267;
 Mon, 11 Nov 2019 01:22:45 -0600
Subject: Re: [PATCH v4 01/15] bindings: soc: ti: add documentation for k3
 ringacc
To: Vinod Koul <vkoul@kernel.org>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-2-peter.ujfalusi@ti.com>
 <20191111040747.GJ952516@vkoul-mobl>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <0cf34ab7-97cf-06e5-b8cb-50a0846a8b97@ti.com>
Date: Mon, 11 Nov 2019 09:24:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191111040747.GJ952516@vkoul-mobl>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_232302_104438_F1852127 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMS8xMS8yMDE5IDYuMDcsIFZpbm9kIEtvdWwgd3JvdGU6Cj4gT24gMDEtMTEtMTksIDEw
OjQxLCBQZXRlciBVamZhbHVzaSB3cm90ZToKPj4gRnJvbTogR3J5Z29yaWkgU3RyYXNoa28gPGdy
eWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPj4KPj4gVGhlIFJpbmcgQWNjZWxlcmF0b3IgKFJJTkdB
Q0Mgb3IgUkEpIHByb3ZpZGVzIGhhcmR3YXJlIGFjY2VsZXJhdGlvbiB0bwo+PiBlbmFibGUgc3Ry
YWlnaHRmb3J3YXJkIHBhc3Npbmcgb2Ygd29yayBiZXR3ZWVuIGEgcHJvZHVjZXIgYW5kIGEgY29u
c3VtZXIuCj4+IFRoZXJlIGlzIG9uZSBSSU5HQUNDIG1vZHVsZSBwZXIgTkFWU1Mgb24gVEkgQU02
NXggYW5kIGo3MjFlLgo+Pgo+PiBUaGlzIHBhdGNoIGludHJvZHVjZXMgUklOR0FDQyBkZXZpY2Ug
dHJlZSBiaW5kaW5ncy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogR3J5Z29yaWkgU3RyYXNoa28gPGdy
eWdvcmlpLnN0cmFzaGtvQHRpLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kg
PHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4gUmV2aWV3ZWQtYnk6IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+Cj4+IC0tLQo+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3RpL2sz
LXJpbmdhY2MudHh0IHwgNTkgKysrKysrKysrKysrKysrKysrKwo+PiAgMSBmaWxlIGNoYW5nZWQs
IDU5IGluc2VydGlvbnMoKykKPj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc29jL3RpL2szLXJpbmdhY2MudHh0Cj4+Cj4+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc29jL3RpL2szLXJpbmdhY2MudHh0
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy90aS9rMy1yaW5nYWNjLnR4
dAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRleCAwMDAwMDAwMDAwMDAuLjg2OTU0Y2Y0
ZmE5OQo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9zb2MvdGkvazMtcmluZ2FjYy50eHQKPj4gQEAgLTAsMCArMSw1OSBAQAo+PiArKiBU
ZXhhcyBJbnN0cnVtZW50cyBLMyBOYXZpZ2F0b3JTUyBSaW5nIEFjY2VsZXJhdG9yCj4+ICsKPj4g
K1RoZSBSaW5nIEFjY2VsZXJhdG9yIChSQSkgaXMgYSBtYWNoaW5lIHdoaWNoIGNvbnZlcnRzIHJl
YWQvd3JpdGUgYWNjZXNzZXMKPj4gK2Zyb20vdG8gYSBjb25zdGFudCBhZGRyZXNzIGludG8gY29y
cmVzcG9uZGluZyByZWFkL3dyaXRlIGFjY2Vzc2VzIGZyb20vdG8gYQo+PiArY2lyY3VsYXIgZGF0
YSBzdHJ1Y3R1cmUgaW4gbWVtb3J5LiBUaGUgUkEgZWxpbWluYXRlcyB0aGUgbmVlZCBmb3IgZWFj
aCBETUEKPj4gK2NvbnRyb2xsZXIgd2hpY2ggbmVlZHMgdG8gYWNjZXNzIHJpbmcgZWxlbWVudHMg
ZnJvbSBoYXZpbmcgdG8ga25vdyB0aGUgY3VycmVudAo+PiArc3RhdGUgb2YgdGhlIHJpbmcgKGJh
c2UgYWRkcmVzcywgY3VycmVudCBvZmZzZXQpLiBUaGUgRE1BIGNvbnRyb2xsZXIKPj4gK3BlcmZv
cm1zIGEgcmVhZCBvciB3cml0ZSBhY2Nlc3MgdG8gYSBzcGVjaWZpYyBhZGRyZXNzIHJhbmdlICh3
aGljaCBtYXBzIHRvIHRoZQo+PiArc291cmNlIGludGVyZmFjZSBvbiB0aGUgUkEpIGFuZCB0aGUg
UkEgcmVwbGFjZXMgdGhlIGFkZHJlc3MgZm9yIHRoZSB0cmFuc2FjdGlvbgo+PiArd2l0aCBhIG5l
dyBhZGRyZXNzIHdoaWNoIGNvcnJlc3BvbmRzIHRvIHRoZSBoZWFkIG9yIHRhaWwgZWxlbWVudCBv
ZiB0aGUgcmluZwo+PiArKGhlYWQgZm9yIHJlYWRzLCB0YWlsIGZvciB3cml0ZXMpLgo+PiArCj4+
ICtUaGUgUmluZyBBY2NlbGVyYXRvciBpcyBhIGhhcmR3YXJlIG1vZHVsZSB0aGF0IGlzIHJlc3Bv
bnNpYmxlIGZvciBhY2NlbGVyYXRpbmcKPj4gK21hbmFnZW1lbnQgb2YgdGhlIHBhY2tldCBxdWV1
ZXMuIFRoZSBLMyBTb0NzIGNhbiBoYXZlIG1vcmUgdGhhbiBvbmUgUkEgaW5zdGFuY2VzCj4+ICsK
Pj4gK1JlcXVpcmVkIHByb3BlcnRpZXM6Cj4+ICstIGNvbXBhdGlibGUJOiBNdXN0IGJlICJ0aSxh
bTY1NC1uYXZzcy1yaW5nYWNjIjsKPj4gKy0gcmVnCQk6IFNob3VsZCBjb250YWluIHJlZ2lzdGVy
IGxvY2F0aW9uIGFuZCBsZW5ndGggb2YgdGhlIGZvbGxvd2luZwo+PiArCQkgIG5hbWVkIHJlZ2lz
dGVyIHJlZ2lvbnMuCj4+ICstIHJlZy1uYW1lcwk6IHNob3VsZCBiZQo+PiArCQkgICJydCIgLSBU
aGUgUkEgUmluZyBSZWFsLXRpbWUgQ29udHJvbC9TdGF0dXMgUmVnaXN0ZXJzCj4+ICsJCSAgImZp
Zm9zIiAtIFRoZSBSQSBRdWV1ZXMgUmVnaXN0ZXJzCj4+ICsJCSAgInByb3h5X2djZmciIC0gVGhl
IFJBIFByb3h5IEdsb2JhbCBDb25maWcgUmVnaXN0ZXJzCj4+ICsJCSAgInByb3h5X3RhcmdldCIg
LSBUaGUgUkEgUHJveHkgRGF0YXBhdGggUmVnaXN0ZXJzCj4+ICstIHRpLG51bS1yaW5ncwk6IE51
bWJlciBvZiByaW5ncyBzdXBwb3J0ZWQgYnkgUkEKPj4gKy0gdGksc2NpLXJtLXJhbmdlLWdwLXJp
bmdzIDogVEktU0NJIFJNIHN1YnR5cGUgZm9yIEdQIHJpbmcgcmFuZ2UKPj4gKy0gdGksc2NpCTog
cGhhbmRsZSBvbiBUSS1TQ0kgY29tcGF0aWJsZSBTeXN0ZW0gY29udHJvbGxlciBub2RlCj4+ICst
IHRpLHNjaS1kZXYtaWQJOiBUSS1TQ0kgZGV2aWNlIGlkCj4+ICstIG1zaS1wYXJlbnQJOiBwaGFu
ZGxlIGZvciAidGksc2NpLWludGEiIGludGVycnVwdCBjb250cm9sbGVyCj4+ICsKPj4gK09wdGlv
bmFsIHByb3BlcnRpZXM6Cj4+ICsgLS0gdGksZG1hLXJpbmctcmVzZXQtcXVpcmsgOiBlbmFibGUg
cmluZ2FjYyAvIHVkbWEgcmluZyBzdGF0ZSBpbnRlcm9wZXJhYmlsaXR5Cj4+ICsJCSAgaXNzdWUg
c29mdHdhcmUgdy9hCj4+ICsKPj4gK0V4YW1wbGU6Cj4+ICsKPj4gK3JpbmdhY2M6IHJpbmdhY2NA
M2MwMDAwMDAgewo+PiArCWNvbXBhdGlibGUgPSAidGksYW02NTQtbmF2c3MtcmluZ2FjYyI7Cj4+
ICsJcmVnID0JPDB4MCAweDNjMDAwMDAwIDB4MCAweDQwMDAwMD4sCj4+ICsJCTwweDAgMHgzODAw
MDAwMCAweDAgMHg0MDAwMDA+LAo+PiArCQk8MHgwIDB4MzExMjAwMDAgMHgwIDB4MTAwPiwKPj4g
KwkJPDB4MCAweDMzMDAwMDAwIDB4MCAweDQwMDAwPjsKPj4gKwlyZWctbmFtZXMgPSAicnQiLCAi
Zmlmb3MiLAo+PiArCQkgICAgInByb3h5X2djZmciLCAicHJveHlfdGFyZ2V0IjsKPj4gKwl0aSxu
dW0tcmluZ3MgPSA8ODE4PjsKPj4gKwl0aSxzY2ktcm0tcmFuZ2UtZ3AtcmluZ3MgPSA8MHgyPjsg
LyogR1AgcmluZyByYW5nZSAqLwo+PiArCXRpLGRtYS1yaW5nLXJlc2V0LXF1aXJrOwo+PiArCXRp
LHNjaSA9IDwmZG1zYz47Cj4+ICsJdGksc2NpLWRldi1pZCA9IDwxODc+Owo+IAo+IHdoeSBkbyB3
ZSBuZWVkIGRldi1pZCBmb3I/IGRvZXNuJ3QgcGhhbmRsZSB0aGUgbGluZSBhYm92ZSBoZWxwPwoK
dGhlIHRpLHNjaS1kZXYtaWQgaXMgdGhlIGRldmljZSBJRCBvZiB0aGUgcmluZyBhY2NlbGVyYXRv
ciB3aGljaCBpcwpuZWVkZWQgZm9yIHRoZSByZXNvdXJjZSBtYW5hZ2VtZW50IGltcGxlbWVudGVk
IGluIHN5c2Z3LgoKVGhpcyBpcyBiYXNlZCBvbiBob3cgdGhlIHRpLHNjaS1pbnRhIGJpbmRpbmcg
aGFzIGRlZmluZWQgaXQ6CkRvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1
cHQtY29udHJvbGxlci90aSxzY2ktaW50YS50eHQKCkknbGwgdXBkYXRlIHRoZSBkb2N1bWVudCB0
byBtYWtlIGl0IGNsZWFyLgoKLSBQw6l0ZXIKClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ks
IFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDog
MDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
