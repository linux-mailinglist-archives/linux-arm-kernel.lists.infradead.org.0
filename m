Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9EC1279DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 12:20:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mxqG4Q+2SUbdIApqWFkUrrGqo0SU6Ch5+kVfwewW4NE=; b=lMisf5Apl+t7yG
	grbCaPyrwC2IoLoOULAEcxxxtm0gml3eL6xw+o3wOArPHudLyk5Zv1u/BtJyaezhFjiVj6eS1R/tV
	048frnpbdA/GXtEp2Bpqyb7pcPyaOSDdOqpatFcOj+Wj0hgo4Il1qFKKWZ+ugrJf2lhHccinyOCUe
	17gNUAlAMAFi6+/1oTYcBFzA2RcoRsqAj8CztzDGbxWoPdwEjdjdxMDBxAegb2k4Jw/K++6OpMJ58
	1qFC681Y8To60/OHOmuhrukLQld7QwClbn1SuGfzVg0+63suHmLQI6Rqyv3LxHz3gvVgHs9Y5LyFy
	kcuEE1k9FhtvMfXMN9wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiGKW-0002c0-Rm; Fri, 20 Dec 2019 11:20:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiGK2-0002bF-7g; Fri, 20 Dec 2019 11:19:55 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBKBJmXY077739;
 Fri, 20 Dec 2019 05:19:48 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1576840788;
 bh=sV3c+XTjU6aaDgJfY7gJXAPn3MoQyP4XcBTQ4wW8CWU=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=N5vzaNYomMJrZf76bXGsjV9Vbe67kUiYs1nsjBwSVIvnr0cTxNjVgELhywMYIQaxO
 DFIETdi7iNmJVAXN91D7TFZbdzquhbau0dVuc4ebkpbZJk9dKvJKqwzJ2yjaV8LdcV
 xd4pkU5SNL7PVwe3muXBTr7jYZXn3hFwoGOTut6w=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBKBJmMK110425
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 20 Dec 2019 05:19:48 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 20
 Dec 2019 05:19:48 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 20 Dec 2019 05:19:48 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBKBJjTc112304;
 Fri, 20 Dec 2019 05:19:45 -0600
Subject: Re: [PATCH RESEND 1/2] dt-bindings: phy: drop #clock-cells from
 rockchip,px30-dsi-dphy
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, Rob Herring
 <robh@kernel.org>
References: <20191216122448.27867-1-heiko@sntech.de>
 <20191216175615.GA23392@bogus> <12525836.FhlgEYrHGb@diego>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <45c59145-5705-90f9-ff0e-c84cf8d17e8b@ti.com>
Date: Fri, 20 Dec 2019 16:51:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <12525836.FhlgEYrHGb@diego>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_031954_355277_47165E94 
X-CRM114-Status: GOOD (  14.33  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNi8xMi8xOSAxMTozMSBwbSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgUm9iLAo+
IAo+IEFtIE1vbnRhZywgMTYuIERlemVtYmVyIDIwMTksIDE4OjU2OjE1IENFVCBzY2hyaWViIFJv
YiBIZXJyaW5nOgo+PiBPbiBNb24sIDE2IERlYyAyMDE5IDEzOjI0OjQ3ICswMTAwLCBIZWlrbyBT
dHVlYm5lciB3cm90ZToKPj4+IEZyb206IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0
aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+Pgo+Pj4gRnVydGhlciByZXZpZXcgb2YgdGhlIGRzaSBj
b21wb25lbnRzIGZvciB0aGUgcHgzMCByZXZlYWxlZCB0aGF0IHRoZQo+Pj4gcGh5IHNob3VsZG4n
dCBleHBvc2UgdGhlIHBsbCBhcyBjbG9jayBidXQgaW5zdGVhZCBoYW5kbGUgc2V0dGluZ3MKPj4+
IHZpYSBwaHkgcGFyYW1ldGVycy4KPj4+Cj4+PiBBcyB0aGUgcGh5IGJpbmRpbmcgaXMgbmV3IGFu
ZCBub3QgdXNlZCBhbnl3aGVyZSB5ZXQsIGp1c3QgZHJvcCB0aGVtCj4+PiBzbyB0aGV5IGRvbid0
IGdldCB1c2VkLgo+Pj4KPj4+IEZpeGVzOiAzODE3Yzc5NjExNzkgKCJkdC1iaW5kaW5nczogcGh5
OiBhZGQgeWFtbCBiaW5kaW5nIGZvciByb2NrY2hpcCxweDMwLWRzaS1kcGh5IikKPj4+IFNpZ25l
ZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5lckB0aGVvYnJvbWEtc3lzdGVt
cy5jb20+Cj4+PiAtLS0KPj4+IEhpIEtpc2hvbiwKPj4+Cj4+PiBtYXliZSBzdWl0YWJsZSBhcyBh
IGZpeCBmb3IgNS41LXJjPwo+Pj4KPj4+IFRoYW5rcwo+Pj4gSGVpa28KPj4+Cj4+PiAgLi4uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLHB4MzAtZHNpLWRwaHkueWFtbCAgICAgIHwg
NSAtLS0tLQo+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGRlbGV0aW9ucygtKQo+Pj4KPj4KPj4gUGxl
YXNlIGFkZCBBY2tlZC1ieS9SZXZpZXdlZC1ieSB0YWdzIHdoZW4gcG9zdGluZyBuZXcgdmVyc2lv
bnMuIEhvd2V2ZXIsCj4+IHRoZXJlJ3Mgbm8gbmVlZCB0byByZXBvc3QgcGF0Y2hlcyAqb25seSog
dG8gYWRkIHRoZSB0YWdzLiBUaGUgdXBzdHJlYW0KPj4gbWFpbnRhaW5lciB3aWxsIGRvIHRoYXQg
Zm9yIGFja3MgcmVjZWl2ZWQgb24gdGhlIHZlcnNpb24gdGhleSBhcHBseS4KPj4KPj4gSWYgYSB0
YWcgd2FzIG5vdCBhZGRlZCBvbiBwdXJwb3NlLCBwbGVhc2Ugc3RhdGUgd2h5IGFuZCB3aGF0IGNo
YW5nZWQuCj4gCj4gc29ycnkgYWJvdXQgdGhhdC4gVGhlIG9yaWdpbmFsIHJlc3BvbnNlIHNvbWVo
b3cgZGlkIG5vdCB0aHJlYWQgY29ycmVjdGx5Cj4gaW4gbXkgbWFpbCBjbGllbnQsIHByb2JhYmx5
IHNvbWUgZmF1bHQgb24gbXkgc2lkZSwgc28gSSd2ZSBvbmx5IGZvdW5kIHlvdXIKPiBtYWlsIGp1
c3Qgbm93IGJ5IGRpZ2dpbmcgaGFyZC4KPiAKPiBAS2lzaG9uLCB0aGUgb3JpZ2luYWwgbWFpbCBh
bHJlYWR5IGdvdCBhbgo+IAo+IEFja2VkLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3Jn
PgoKbWVyZ2VkIG5vdywgVGhhbmtzIQoKLUtpc2hvbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
