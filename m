Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E6EF1BF2F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:35:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adwLCSVCNnwApzsqSmJ5JAZuLV01g8Oy7X3MRi1j0Jc=; b=m+SAT/dn5rU/XF
	hiKYjgk4ETzXtAUkoYevTmerv0BSrHA5QRLERiW56V0y0846V1DdPUmf4cpETKlEEPVoiz1GX4rVH
	O/n94qk3SZUUSs+2zfs8kZzOLeXNA8slP8LCFXVQLjH26eTzWM+NrnmfNQ5V1xUxEdG541tPqTR0k
	8MOZKo/pe1yz/Xb/30joFHymKI2N+Q72zqafBeWz8XJkaczJALS/filaTh+F6TE7Xwh0Z1ge/RpqO
	70+CUVscIa1YoYFN6f6uLtLmlNG2nSAmEyEoya0jkmmLgq/YoFGpKHbyo0RuUfMRmPu7ik93Fq1K7
	s2BsfCa8wVsuqUwNUZtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4fS-0006oW-51; Thu, 30 Apr 2020 08:35:38 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4el-00045Z-Jc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:34:57 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49CTG52n6mz1rxLc;
 Thu, 30 Apr 2020 10:34:53 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49CTG5282Qz1qr4R;
 Thu, 30 Apr 2020 10:34:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id rO_cmmhBYBgv; Thu, 30 Apr 2020 10:34:52 +0200 (CEST)
X-Auth-Info: vfMMi5qkboyo/hM/S+7iw6zVKCTsG9PKMqbDqAskUi8=
Received: from [127.0.0.1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 30 Apr 2020 10:34:52 +0200 (CEST)
Subject: Re: [PATCH V5 00/20] ARM: dts: stm32: Repair AV96 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org
References: <20200422104613.96944-1-marex@denx.de>
 <e47b72fc-9591-021d-7abc-14a7166a4845@st.com>
 <9a5d29a4-14ae-1e4f-68fe-21e4f619625d@denx.de>
 <d1e9c84c-48a1-0eef-9da4-94c184ac179c@st.com>
From: Marek Vasut <marex@denx.de>
Message-ID: <2f02a4a1-a42a-a9c2-9cea-f6111f877fc3@denx.de>
Date: Thu, 30 Apr 2020 10:22:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <d1e9c84c-48a1-0eef-9da4-94c184ac179c@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_013456_075786_6E44500F 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Patrick Delaunay <patrick.delaunay@st.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Patrice Chotard <patrice.chotard@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNC8zMC8yMCA5OjM5IEFNLCBBbGV4YW5kcmUgVG9yZ3VlIHdyb3RlOgo+IAo+IAo+IE9uIDQv
MjkvMjAgNjo0MCBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+IE9uIDQvMjkvMjAgOTo1NiBBTSwg
QWxleGFuZHJlIFRvcmd1ZSB3cm90ZToKPj4+IEhpIE1hcmVrCj4+Pgo+Pj4gT24gNC8yMi8yMCAx
Mjo0NSBQTSwgTWFyZWsgVmFzdXQgd3JvdGU6Cj4+Pj4gVGhlIEFWOTYgYm9hcmQgZGV2aWNlIHRy
ZWUgaXMgY29tcGxldGVseSBicm9rZW4gYW5kIGRvZXMgbm90IG1hdGNoIHRoZQo+Pj4+IGhhcmR3
YXJlLiBUaGlzIHNlcmllcyBmaXhlcyBpdCB1cC4KPj4+Pgo+Pj4+IE1hcmVrIFZhc3V0ICgyMCk6
Cj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIFBNSUMgY29uZmlndXJhdGlvbiBv
biBBVjk2Cj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogUmVwYWlyIFBNSUMgaW50ZXJydXB0
IG9uIEFWOTYKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYWx0ZXJuYXRlIHBpbm11
eCBmb3IgZXRoZXJuZXQgUkdNSUkKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIg
ZXRoZXJuZXQgb3BlcmF0aW9uIG9uIEFWOTYKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBB
ZGQgbWlzc2luZyBldGhlcm5ldCBQSFkgcmVzZXQgb24gQVY5Ngo+Pj4+IMKgwqDCoCBBUk06IGR0
czogc3RtMzI6IEFkZCBtaXNzaW5nIGV0aGVybmV0IFBIWSBza2V3cyBvbiBBVjk2Cj4+Pj4gwqDC
oMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGFsdGVybmF0ZSBwaW5tdXggZm9yIFNETU1DIHBpbnMK
Pj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBSZXBhaXIgU0RNTUMxIG9wZXJhdGlvbiBvbiBB
Vjk2Cj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogQWRkIGVNTUMgYXR0YWNoZWQgdG8gU0RN
TUMyIG9uIEFWOTYKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgUVNQSSBOT1Igb24g
QVY5Ngo+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBjb25maWd1cmF0aW9uIEVFUFJP
TSBvbiBBVjk2Cj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBzdG0zMjogRW5hYmxlIFdpRmkgb24gQVY5
Ngo+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4IGZvciBV
U0FSVDIgcGlucwo+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEVuYWJsZSBCbHVldG9vdGgg
b24gQVY5Ngo+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBhbHRlcm5hdGUgcGlubXV4
IGZvciBMVERDIHBpbnMKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMyOiBBZGQgYmluZGluZ3Mg
Zm9yIEhETUkgdmlkZW8gb24gQVY5Ngo+Pj4+IMKgwqDCoCBBUk06IGR0czogc3RtMzI6IEFkZCBh
bHRlcm5hdGUgcGlubXV4IGZvciBTQUkyIHBpbnMKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0bTMy
OiBBZGQgYmluZGluZ3MgZm9yIGF1ZGlvIG9uIEFWOTYKPj4+PiDCoMKgwqAgQVJNOiBkdHM6IHN0
bTMyOiBBZGQgYmluZGluZ3MgZm9yIFVTQiBvbiBBVjk2Cj4+Pj4gwqDCoMKgIEFSTTogZHRzOiBz
dG0zMjogUmVuYW1lIExFRHMgdG8gbWF0Y2ggc2lsa3NjcmVlbiBvbiBBVjk2Cj4+Pj4KPj4+PiDC
oMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNS1waW5jdHJsLmR0c2nCoMKgwqAgfCAyODAg
KysrKysrKysrKysrKysrKysKPj4+PiDCoMKgIGFyY2gvYXJtL2Jvb3QvZHRzL3N0bTMybXAxNTdh
LWF2ZW5nZXI5Ni5kdHMgfCAzMjQKPj4+PiArKysrKysrKysrKysrKysrKystLQo+Pj4+IMKgwqAg
MiBmaWxlcyBjaGFuZ2VkLCA1NzIgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4+Pj4K
Pj4+PiBDYzogQWxleGFuZHJlIFRvcmd1ZSA8YWxleGFuZHJlLnRvcmd1ZUBzdC5jb20+Cj4+Pj4g
Q2M6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5v
cmc+Cj4+Pj4gQ2M6IE1heGltZSBDb3F1ZWxpbiA8bWNvcXVlbGluLnN0bTMyQGdtYWlsLmNvbT4K
Pj4+PiBDYzogUGF0cmljZSBDaG90YXJkIDxwYXRyaWNlLmNob3RhcmRAc3QuY29tPgo+Pj4+IENj
OiBQYXRyaWNrIERlbGF1bmF5IDxwYXRyaWNrLmRlbGF1bmF5QHN0LmNvbT4KPj4+PiBDYzogbGlu
dXgtc3RtMzJAc3QtbWQtbWFpbG1hbi5zdG9ybXJlcGx5LmNvbQo+Pj4+IFRvOiBsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4+Pgo+Pj4KPj4+IFNlcmllcyBhcHBsaWVkIG9u
IHN0bTMyLW5leHQuCj4+Cj4+IFRoYW5rcy4gSSBzZW50IG91dCB0aGUgcmVzdCwgd2hpY2ggc2hv
dWxkIGJlIHZlcnkgbXVjaCBhbGwgdGhlcmUgaXMgZm9yCj4+IG5vdyA6KSA+Cj4gCj4gSSBob3Bl
IDopLiBJIGhhZCBhIGxvb2sgb24gaXQgYW5kIGl0IHNvdW5kcyBnb29kLiBJJ2xsIG1lcmdlIGl0
IG5leHQgd2Vlay4KCk5pY2UsIHRoYW5rcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
