Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF721464C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 10:46:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MrYS6oDYJoB1X7bKAaQWyznV0Yk751vtc5XYUPNcvY=; b=ulZdN2+1t/Ojlp
	7NT3LlyPfYetI8N6oaTuSGKznf2HeTeMLciE9pJuIdyCskiNMU8mPqjEOhDIwZYvlwTc6Q2Bp1OPi
	fMGEUX25XP3O23J21TdDl7GwxWXfxIPlq1EoSkx0xROJvyFEFTv1LrgCaQ0xSviZGAcBWuvkKmYx5
	mwlgabgdNCFK3UMaXpQmpTfIa2zwY1AHqbfmOqlLCEBkJrRgl8/dhnXmScbBQ7vlMbV+aGSJgzbY5
	HohMOhCkP+TwapFt0UOd7tQFaVG9hNqkiYKQPVURdzFhZEvJLRtJkwe2uQoeTay8QgdhDK0XNl2gt
	8TuV/YRirs1bkTFPF+gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZ3o-0006lA-Ms; Thu, 23 Jan 2020 09:46:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZ3e-0006kB-T2
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 09:45:52 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00N9jbZ5117672;
 Thu, 23 Jan 2020 03:45:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579772738;
 bh=0OarRbl/p4h9x83lCORIsIyAzrGcOjoV4wCt5Jo9hQk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=W5031Zc7aA8LS+kXhKpqvHJVX28BU3duSOdx5GzHp29UVHDE3ziLjnAiwgUStCEmZ
 pbNhhVhIziO45KZ/lSxGMPY8nXMbUwo80IXOWlyO3yY/UYsCuMpf32tvM3hOi+vFGR
 MC293yeKgWwZorXSnm+Ai9DA/nLYEBSQohiheXSk=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00N9jb6S013992
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 23 Jan 2020 03:45:37 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 23
 Jan 2020 03:45:37 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 23 Jan 2020 03:45:37 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00N9jZPV115897;
 Thu, 23 Jan 2020 03:45:35 -0600
Subject: Re: [PATCH v2 1/9] arm64: dts: ti: k3-am65-main: Correct main NAVSS
 representation
To: Lokesh Vutla <lokeshvutla@ti.com>, <t-kristo@ti.com>, <nm@ti.com>
References: <20200122082621.4974-1-peter.ujfalusi@ti.com>
 <20200122082621.4974-2-peter.ujfalusi@ti.com>
 <600df214-620b-fa41-82ef-01132d9bdfae@ti.com>
 <04a1bb97-f308-f866-ad4f-907cd7fb3515@ti.com>
 <469a35b0-9b60-7faf-2b1b-a77f9f502a50@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <52078b70-b5dd-103a-45ea-55fd36cba480@ti.com>
Date: Thu, 23 Jan 2020 11:46:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <469a35b0-9b60-7faf-2b1b-a77f9f502a50@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_014551_018280_A27D4998 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMy8wMS8yMDIwIDEwLjMyLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gCj4gCj4gT24gMjIv
MDEvMjAgNTowOSBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDIyLzAxLzIw
MjAgMTMuMDMsIExva2VzaCBWdXRsYSB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMjIvMDEvMjAgMTo1
NiBQTSwgUGV0ZXIgVWpmYWx1c2kgd3JvdGU6Cj4+Pj4gTkFWU1MgaXMgYSBzdWJzeXN0ZW0gY29u
dGFpbmluZyBkaWZmZXJlbnQgSVBzLCBpdCBpcyBub3QgcmVhbGx5IGEgYnVzLgo+Pj4+IENoYW5n
ZSB0aGUgY29tcGF0aWJsZSBmcm9tICJzaW1wbGUtYnVzIiB0byAic2ltcGxlLW1mZCIgdG8gcmVm
bGVjdCB0aGF0Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVy
LnVqZmFsdXNpQHRpLmNvbT4KPj4+PiAtLS0KPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy90aS9r
My1hbTY1LW1haW4uZHRzaSB8IDQgKystLQo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2sz
LWFtNjUtbWFpbi5kdHNpCj4+Pj4gaW5kZXggZWZiMjQ1Nzk5MjJjLi5lNDBmN2FjYmVjNDIgMTAw
NjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1LW1haW4uZHRzaQo+
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kKPj4+PiBA
QCAtMzg1LDggKzM4NSw4IEBAIGludHJfbWFpbl9ncGlvOiBpbnRlcnJ1cHQtY29udHJvbGxlcjAg
ewo+Pj4+ICAJCXRpLHNjaS1ybS1yYW5nZS1naXJxID0gPDB4MT47Cj4+Pj4gIAl9Owo+Pj4+ICAK
Pj4+PiAtCWNiYXNzX21haW5fbmF2c3M6IGludGVyY29ubmVjdDAgewo+Pj4+IC0JCWNvbXBhdGli
bGUgPSAic2ltcGxlLWJ1cyI7Cj4+Pj4gKwljYmFzc19tYWluX25hdnNzOiBuYXZzc0AzMDgwMDAw
MCB7Cj4+Pgo+Pj4gVGhpcyBpbnRyb2R1Y2VzIGJlbG93IGR0YyB3YXJuaW5nIHdoZW4gYnVpbHQg
d2l0aCBXPTEKPj4+Cj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3RpL2szLWFtNjUtbWFpbi5kdHNp
OjM4OC4zNS01MzAuNDogV2FybmluZwo+Pj4gKHVuaXRfYWRkcmVzc192c19yZWcpOiAvaW50ZXJj
b25uZWN0QDEwMDAwMC9uYXZzc0AzMDgwMDAwMDogbm9kZSBoYXMgYSB1bml0Cj4+PiBuYW1lLCBi
dXQgbm8gcmVnIHByb3BlcnR5Cj4+Cj4+IEludGVyZXN0aW5nLCB0aGUgZXhhbXBsZSBpbgo+PiBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZG1hL3RpL2szLXVkbWEueWFtbAo+Pgo+
PiBpcyBiYXNpY2FsbHkgdGhlIHNhbWUgYW5kIGR0X2JpbmRpbmdfY2hlY2sgaXMgaGFwcHkgYWJv
dXQgaXQ6Cj4+IERUQyAgICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2RtYS90
aS9rMy11ZG1hLmV4YW1wbGUuZHQueWFtbAo+PiBDSEVDSyAgIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9kbWEvdGkvazMtdWRtYS5leGFtcGxlLmR0LnlhbWwKPj4KPj4gYnV0IGl0
IHNjcmVhbWVkIHdoZW4gSSBoYWQgdGhlIHNpbXBsZS1idXMgaW4gdGhlcmUgKGNvcGllZCBmcm9t
IHRoZQo+PiBleGlzdGluZyBkdHNpIGZpbGUpLgo+Pgo+PiBUaGUgbm9kZSBuYW1lIGZvciBzaW1w
bGUtYnVzIF9tdXN0XyBiZQo+PiAnXihidXN8c29jfGF4aXxhaGJ8YXBiKShAWzAtOWEtZl0rKT8k
Jwo+Pgo+PiBJIHdvdWxkIG5vdCB1c2UgYW55IG9mIHRoZXNlIHRvIE5BVlNTIG5vZGUuLi4KPj4K
Pj4+IHRoaXMgaXMgcmVwcmVzZW50aW5nIGNiYXNzIGluc2lkZSBtYWluX25hdnNzLCBqdXN0IGxp
a2UgY2Jhc3NfbWFpbi4gWW91IGNhbiBkcm9wCj4+PiB0aGlzIHBhdGNoIGFuZCB0aGUgc2ltaWxh
ciBtY3UgdmVyc2lvbi4KPj4KPj4gQWNjb3JkaW5nIHRvIERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvbWZkLnR4dDoKPj4gLSBjb21wYXRpYmxlIDogInNpbXBsZS1tZmQiIC0g
dGhpcyBzaWduaWZpZXMgdGhhdCB0aGUgb3BlcmF0aW5nIHN5c3RlbQo+PiAgIHNob3VsZCBjb25z
aWRlciBhbGwgc3Vibm9kZXMgb2YgdGhlIE1GRCBkZXZpY2UgYXMgc2VwYXJhdGUgZGV2aWNlcwo+
PiAgIGFraW4gdG8gaG93ICJzaW1wbGUtYnVzIiBpbmRpY2F0ZXMgd2hlbiB0byBzZWUgc3Vibm9k
ZXMgYXMgY2hpbGRyZW4KPj4gICBmb3IgYSBzaW1wbGUgbWVtb3J5LW1hcHBlZCBidXMuCj4+Cj4+
IE5BVlNTIGlzIGZhbGxpbmcgaW50byBzaW1wbGUtbWZkIGFzIHRoZSBkZXZpY2VzIHVuZGVyIGl0
IGFyZSBpbmRlcGVuZGVudAo+PiBkZXZpY2VzLgo+IAo+IG9rYXksIG1heSBiZSByZW5hbWUgY2Jh
c3NfbWFpbl9uYXZzcyB0byBtYWluX25hdnNzLgoKQWN0dWFsbHkgd2UgZG9uJ3QgZXZlbiBuZWVk
IGxhYmVsIGZvciBhbnkgb2YgdGhlIE5BVlNTIG5vZGVzLgoKPiAKPiBUaGFua3MgYW5kIHJlZ2Fy
ZHMsCj4gTG9rZXNoCj4gCj4+Cj4+Pgo+Pj4gVGhhbmtzIGFuZCByZWdhcmRzLAo+Pj4gTG9rZXNo
Cj4+Pgo+Pj4+ICsJCWNvbXBhdGlibGUgPSAic2ltcGxlLW1mZCI7Cj4+Pj4gIAkJI2FkZHJlc3Mt
Y2VsbHMgPSA8Mj47Cj4+Pj4gIAkJI3NpemUtY2VsbHMgPSA8Mj47Cj4+Pj4gIAkJcmFuZ2VzOwo+
Pj4+Cj4+Cj4+IC0gUMOpdGVyCj4+Cj4+IFRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBv
cmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+PiBZLXR1bm51cy9CdXNpbmVzcyBJRDog
MDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxlOiBIZWxzaW5raQo+PgoKLSBQw6l0ZXIKClRl
eGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNp
bmtpLgpZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWljaWxl
OiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
