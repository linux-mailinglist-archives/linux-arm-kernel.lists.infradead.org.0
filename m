Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB3DFA733
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:22:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HbrvxU0u2Bp61R9pDy237eUXnntn4kSRvKoC7KNeYRc=; b=MVIFT9n5tgMVBYUo5T/1PHFqr
	q9YneNuHZJjeK+T5VLxvtM+0TbnknfsM+NX1e7/+7bMewUv+Skh/6hXQecdguwKm2fBiFcoP7VTLk
	eILxIXDueFI1NTqgqgOcUBVVIdodffTJwTlAhBf3izJXHTgZoNAjX5z39hvAdZCUNJgDGhBPLtzTS
	vqf9KQnBSsBJolQcCay9/+RDg0+WLpp1lxBRisQvbAz910qDxH7lRhwndOj2rNmlx92XmqJd5oVpq
	yfe+AqYvKySDz8aw0Li8VlUvFQKymN5JUjthNTEriMqx8s/pIQ5JVi1PU9ZiNsIyaM7rQ5vliz+JO
	5qxjCt58Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjEQ-0005Tt-MS; Wed, 13 Nov 2019 03:22:10 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjE0-0005Fc-LS; Wed, 13 Nov 2019 03:21:47 +0000
Received: from localhost (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 7A8752AD;
 Wed, 13 Nov 2019 11:21:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P23561T140362385442560S1573615294290308_; 
 Wed, 13 Nov 2019 11:21:37 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e71cf5987c7f79efdeaf657392ddab2c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: dianders@chromium.org
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <ef8830f3-10d1-7b71-0e18-232f2eaeef2d@web.de>
 <1eaef5d5-c923-da56-b9c4-48d517b3c969@rock-chips.com>
 <1780044.CQmMckQ5VN@diego>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b752ba88-8931-0e03-a010-650129253afd@rock-chips.com>
Date: Wed, 13 Nov 2019 11:21:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1780044.CQmMckQ5VN@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_192145_107765_7CD75E58 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 dianders@chromium.org, Soeren Moch <smoch@web.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Andy Yan <andyshrk@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVpa28sCgogwqDCoMKgIENvdWxkIHlvdSBoZWxwIHRvIGp1c3QgcGljayB0aGUgZmlyc3QgcGF0
Y2ggYW5kIGRyb3AgdGhlIG90aGVyIDIgCnBhdGNoZXM/CgogwqDCoMKgIEkgdGhpbmsgaXQncyBi
ZXR0ZXIgdG8gZml4IGluIHRoZSBVLUJvb3QgZmlyc3Qgc28gdGhhdCB0aGUgCnN0YWJpbGl0eSBp
c3N1ZSB3aWxsIGJlIGZpeGVkLAoKYW5kIHRoZSB1cGRhdGUgaW4ga2VybmVsIGR0cyBpcyBub3Qg
c28gdXJnZW50IGZvciBrZXJuZWwgZHJpdmVyIGFjdHVhbGx5IApub3Qgc2V0dGluZwoKdGhpcyBw
d20gcmVndWxhdG9yLgoKIMKgwqDCoCBJIHdhbnQgdG8gYWRkIGEgcGF0Y2ggZm9yIHJrMzM5OS1y
b2MtcGMsIHNpbmNlIE1hcmt1cyBSZWljaGwgCmFscmVhZHkgc2VuZCBpdCwKCnNvIGl0J3MgT0sg
Zm9yIHRoYXQgYm9hcmQsIGFuZCBmb3Igcm9jazk2MC9GaWN1cywgdGhlIHZkZF9sb2cgaXMgcmVt
b3ZlZCAKZm9yIHN0YWJpbGl0eQoKaXNzdWUsIHRoZW4gd2UgaGF2ZSB0byB1cGRhdGUgVS1Cb290
IGZpcnN0IGJlZm9yZSBrZXJuZWwgY2FuIGFkZCB0aGUgCnZkZF9sb2cgYmFjay4KCgpUaGFua3Ms
CgotIEtldmVyCgpPbiAyMDE5LzExLzEyIOS4i+WNiDQ6MTAsIEhlaWtvIFN0w7xibmVyIHdyb3Rl
Ogo+IEhpIEtldmVyLAo+Cj4gQW0gRGllbnN0YWcsIDEyLiBOb3ZlbWJlciAyMDE5LCAwOTowNDo0
OSBDRVQgc2NocmllYiBLZXZlciBZYW5nOgo+PiBPbiAyMDE5LzExLzExIOS4i+WNiDQ6NDIsIFNv
ZXJlbiBNb2NoIHdyb3RlOgo+Pj4gT24gMTEuMTEuMTkgMDE6NTEsIEtldmVyIFlhbmcgd3JvdGU6
Cj4+Pj4gU2luY2UgdGhlcmUgaXMgbm8gZGV2ZnJlcSB1c2VkIGZvciB2ZGRfbG9nLCBzbyB0aGUg
dmRkX2xvZyhwd20gcmVndWxhdG9yKQo+Pj4+IHdpbGwgYmUgJ2VuYWJsZScgd2l0aCB0aGUgZHRz
IG5vZGUgYXQgYSBkZWZhdWx0IFBXTSBzdGF0ZSB3aXRoIGhpZ2ggb3IgbG93Cj4+Pj4gb3V0cHV0
LiBCb3RoIHRvbyBoaWdoIG9yIHRvbyBsb3cgZm9yIHZkZF9sb2cgaXMgbm90IGdvb2QgZm9yIHRo
ZSBib2FyZCwKPj4+PiBhZGQgaW5pdCB2b2x0YWdlIGZvciBkcml2ZXIgdG8gbWFrZSB0aGUgcmVn
dWxhdG9yIGdldCBpbnRvIGEga25vdyBvdXRwdXQuCj4+Pj4KPj4+PiBOb3RlIHRoYXQgdGhpcyB3
aWxsIGJlIHVzZWQgYnkgVS1Cb290IGZvciBpbml0IHZvbHRhZ2Ugb3V0cHV0LCBhbmQgdGhpcwo+
Pj4+IGlzIHZlcnkgaW1wb3J0YW50IGZvciBpdCBtYXkgZ2V0IHN5c3RlbSBoYW5nIHNvbWV3aGVy
ZSBkdXJpbmcgc3lzdGVtCj4+Pj4gYm9vdCB1cCB3aXRoIHJlZ3VsYXRvciBlbmFibGUgYW5kIHdp
dGhvdXQgdGhpcyBpbml0IHZhbHVlLgo+Pj4gSSB0aGluayBpdCdzIGEgZ29vZCBpZGVhIHRvIGlu
Y2x1ZGUgdGhpcyBzZXR0aW5nIGluIHRoZSBtYWluIGR0cyBmb3IgdGhlCj4+PiBib2FyZHMgKG5v
dCBpbiB1LWJvb3Qgc3BlY2lmaWMgYWRkaXRpb25zIGFzIGlzIGRvbmUgbm93KS4gQnV0IHRoZXJl
IGlzCj4+PiAoZm9yIHNvbWUgcmVhc29uPykgbm8gZG9jdW1lbnRlZCBiaW5kaW5nIGZvciByZWd1
bGF0b3ItaW5pdC1taWNyb3ZvbHQgaW4KPj4+IGxpbnV4Lgo+Pgo+PiBPaGgsIEkgZm9yZ290IHRo
ZSBrZXJuZWwgZHJpdmVyIGRvZXMgbm90IHN1cHBvcnQgdGhpcyBwcm9wZXJ0eS4KPj4KPj4gQEhl
aWtvLCBjYW4gd2UgYWRkIHRoaXMgJ3JlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCcgd2l0aG91dCBk
cml2ZXIKPj4gc3VwcG9ydCBidXQgYWRkaW5nIGRvY3VtZW50IGZvcgo+Pgo+PiBpdCBhdCBkdC1i
aW5kaW5nPwo+IEluIHRoZW9yeSB5ZXMsIGJ1dCB5b3Ugd291bGQgc3RpbGwgbmVlZCB0byBnZXQg
RFQgbWFpbnRhaW5lcnMKPiBhbmQgTWFyayBCcm93biAocmVndWxhdG9yIG1haW50YWluZXIpIGlu
dm9sdmVkIGJlZm9yZSB0aGF0Lgo+Cj4gRXNwZWNpYWxseSBhcyB0aGlzIGlzIGEgaW5kaXZpZHVh
bCBwcm9wZXJ0eSB5b3Ugd2lsbCBuZWVkIHRvIGhhdmUKPiBhIGdvb2QgZXhjdXNlIHdoeSB5b3Un
cmUgbm90IGltcGxlbWVudGluZyBpdCBpbiB0aGUga2VybmVsIGFzIHdlbGwuCj4KPiBBbmQgb2Yg
Y291cnNlIHlvdSB3aWxsIG5lZWQgdG8ga2VlcCBpbiBtaW5kIHRoYXQgaXQgbWlnaHQgYmUKPiBp
biB0aGUga2VybmVsIGluIHRoZSBmdXR1cmUuCj4KPgo+IEhlaWtvCj4KPgo+Cj4+Cj4+IFRoYW5r
cywKPj4KPj4gLSBLZXZlcgo+Pgo+Pj4gUmVnYXJkcywKPj4+IFNvZXJlbgo+Pj4+IENDOiBFbGFp
bmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+PiBDQzogUGV0ZXIgUm9iaW5z
b24gPHBicm9iaW5zb25AZ21haWwuY29tPgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEtldmVyIFlhbmcg
PGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiAgICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ldmIuZHRzICAgICAgICAgIHwgMSArCj4+Pj4g
ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMgICAgICB8
IDEgKwo+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWh1Z3N1bi14
OTkuZHRzICAgfCAxICsKPj4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1raGFkYXMtZWRnZS5kdHNpIHwgMSArCj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktbGVlei1wNzEwLmR0cyAgICB8IDEgKwo+Pj4+ICAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0cyAgICAgfCAxICsKPj4+PiAgICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzICAgICAgIHwgMSArCj4+
Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyAg
ICB8IDEgKwo+Pj4+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXNhcHBo
aXJlLmR0c2kgICAgfCAxICsKPj4+PiAgICA5IGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygr
KQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
Mzk5LWV2Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1ldmIuZHRz
Cj4+Pj4gaW5kZXggNzcwMDhkY2E0NWJjLi5mYTI0MWFlYjExYjAgMTAwNjQ0Cj4+Pj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZXZiLmR0cwo+Pj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2Yi5kdHMKPj4+PiBAQCAtNjUsNiAr
NjUsNyBAQAo+Pj4+ICAgIAkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2NlbnRlciI7Cj4+Pj4gICAg
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+Pj4+ICAgIAkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MTQwMDAwMD47Cj4+Pj4gKwkJcmVndWxhdG9yLWluaXQtbWljcm92
b2x0ID0gPDk1MDAwMD47Cj4+Pj4gICAgCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4+ICAgIAkJ
cmVndWxhdG9yLWJvb3Qtb247Cj4+Pj4gICAgCQlzdGF0dXMgPSAib2theSI7Cj4+Pj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZmlyZWZseS5kdHMKPj4+PiBpbmRl
eCA5MmRlODNkZDRkYmMuLjRlNDUyNjlmY2RmZiAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1maXJlZmx5LmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWZpcmVmbHkuZHRzCj4+Pj4gQEAgLTIwOCw2ICsy
MDgsNyBAQAo+Pj4+ICAgIAkJcmVndWxhdG9yLWJvb3Qtb247Cj4+Pj4gICAgCQlyZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDw0MzAwMDA+Owo+Pj4+ICAgIAkJcmVndWxhdG9yLW1heC1taWNyb3Zv
bHQgPSA8MTQwMDAwMD47Cj4+Pj4gKwkJcmVndWxhdG9yLWluaXQtbWljcm92b2x0ID0gPDk1MDAw
MD47Cj4+Pj4gICAgCQl2aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPj4+PiAgICAJfTsKPj4+PiAg
ICB9Owo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1odWdzdW4teDk5LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWh1
Z3N1bi14OTkuZHRzCj4+Pj4gaW5kZXggYzEzM2U4ZDY0YjJhLi42OTJmMzE1NGVkYzMgMTAwNjQ0
Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktaHVnc3VuLXg5
OS5kdHMKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1odWdz
dW4teDk5LmR0cwo+Pj4+IEBAIC0xMDAsNiArMTAwLDcgQEAKPj4+PiAgICAJCXJlZ3VsYXRvci1u
YW1lID0gInZkZF9sb2ciOwo+Pj4+ICAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAw
MDAwPjsKPj4+PiAgICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+Pj4+
ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+Pj4+ICAgIAkJcmVndWxh
dG9yLWFsd2F5cy1vbjsKPj4+PiAgICAJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4+ICAgIAl9Owo+
Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFk
YXMtZWRnZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta2hhZGFz
LWVkZ2UuZHRzaQo+Pj4+IGluZGV4IDQ5NDRkNzhhMGExYy4uYzJhYzgwZDk5MzAxIDEwMDY0NAo+
Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtoYWRhcy1lZGdl
LmR0c2kKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFk
YXMtZWRnZS5kdHNpCj4+Pj4gQEAgLTc5LDYgKzc5LDcgQEAKPj4+PiAgICAJCXJlZ3VsYXRvci1i
b290LW9uOwo+Pj4+ICAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4+
PiAgICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+Pj4+ICsJCXJlZ3Vs
YXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+Pj4+ICAgIAkJdmluLXN1cHBseSA9IDwm
dnN5c18zdjM+Owo+Pj4+ICAgIAl9Owo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWxlZXotcDcxMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1sZWV6LXA3MTAuZHRzCj4+Pj4gaW5kZXggNzNiZTM4YTUzNzk2
Li5jMzJhYmNjNGRkYzEgMTAwNjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktbGVlei1wNzEwLmR0cwo+Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LWxlZXotcDcxMC5kdHMKPj4+PiBAQCAtMTAxLDYgKzEwMSw3IEBACj4+
Pj4gICAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4+PiAgICAJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDgwMDAwMD47Cj4+Pj4gICAgCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxNDAw
MDAwPjsKPj4+PiArCQlyZWd1bGF0b3ItaW5pdC1taWNyb3ZvbHQgPSA8OTUwMDAwPjsKPj4+PiAg
ICAJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+Pj4+ICAgIAl9Owo+Pj4+ICAgIH07Cj4+
Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5n
ZXBpLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0
cwo+Pj4+IGluZGV4IDA1NDFkZmNlOTI0ZC4uOWQ2NzRjNTFmMDI1IDEwMDY0NAo+Pj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0cwo+Pj4+ICsr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW9yYW5nZXBpLmR0cwo+Pj4+
IEBAIC0xNjQsNiArMTY0LDcgQEAKPj4+PiAgICAJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4+ICAg
IAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4+PiAgICAJCXJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+Pj4+ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jv
dm9sdCA9IDw5NTAwMDA+Owo+Pj4+ICAgIAkJdmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4+Pj4g
ICAgCX07Cj4+Pj4gICAgfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcm9jLXBjLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszMzk5LXJvYy1wYy5kdHMKPj4+PiBpbmRleCAxOWY3NzMyZDcyOGMuLjdkODU2Y2UxZDE1NiAx
MDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2Mt
cGMuZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
LXBjLmR0cwo+Pj4+IEBAIC0xMjksNiArMTI5LDcgQEAKPj4+PiAgICAJCXJlZ3VsYXRvci1ib290
LW9uOwo+Pj4+ICAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4+PiAg
ICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+Pj4+ICsJCXJlZ3VsYXRv
ci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+Pj4+ICAgIAkJdmluLXN1cHBseSA9IDwmdmNj
M3YzX3N5cz47Cj4+Pj4gICAgCX07Cj4+Pj4gICAgfTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKPj4+PiBpbmRleCBlNTQ0ZGVi
NjFkMjguLjhmYmNjYmM4YmY0NyAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzCj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cwo+Pj4+IEBAIC0xNzQsNiArMTc0LDcg
QEAKPj4+PiAgICAJCXJlZ3VsYXRvci1ib290LW9uOwo+Pj4+ICAgIAkJcmVndWxhdG9yLW1pbi1t
aWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4+PiAgICAJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0g
PDE3MDAwMDA+Owo+Pj4+ICsJCXJlZ3VsYXRvci1pbml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+
Pj4+ICAgIAkJdmluLXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4+Pj4gICAgCX07Cj4+Pj4gICAg
fTsKPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
c2FwcGhpcmUuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXNhcHBo
aXJlLmR0c2kKPj4+PiBpbmRleCAxYmMxNTc5Njc0ZTUuLmY4ZTJjYjhjMDYyNCAxMDA2NDQKPj4+
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1zYXBwaGlyZS5kdHNp
Cj4+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktc2FwcGhpcmUu
ZHRzaQo+Pj4+IEBAIC0xMzMsNiArMTMzLDcgQEAKPj4+PiAgICAJCXJlZ3VsYXRvci1ib290LW9u
Owo+Pj4+ICAgIAkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8ODAwMDAwPjsKPj4+PiAgICAJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+Owo+Pj4+ICsJCXJlZ3VsYXRvci1p
bml0LW1pY3Jvdm9sdCA9IDw5NTAwMDA+Owo+Pj4+ICAgIAkJdmluLXN1cHBseSA9IDwmdmNjX3N5
cz47Cj4+Pj4gICAgCX07Cj4+Pj4gICAgfTsKPj4KPj4KPgo+Cj4KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
