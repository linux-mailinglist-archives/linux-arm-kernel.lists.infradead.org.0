Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E931950FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 07:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fmvzdw2D6WwKzjWytvjLruQ+tn+W4tAVbrSFt+WsfK8=; b=I1y6aUTK2xXRgfJ8nZhaYDh5I
	R2KnaBNOqeH97bacsmDZ2IoduMvotabE6E+qAKS3FGBgzb0gtIg2rcWm4c1/ClHB+B8lcyITvvsEo
	YmUBeSnLBdy5XMRsCRS8aLz1tHzv+qJpFVfV+R1vn6BxWvbZMJxxtbGywoenVPKErlKN9zPVdXeJR
	WBMfFxbZhYvLhod4XsQdyVe4YfzzQ53zQNsrSOhArwWEHf3MUpyjgJTCH7yg1p0KdBx0OA64I5N56
	ovhlmJw+V7AF2ojAZFtyb5hlCQmNDHf9bE7BMVbKJ2xbfj1hXqeymmVun00CD7mMGfMHyJbdzfD1b
	372gcXQ1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHiLs-0000Oc-Oc; Fri, 27 Mar 2020 06:20:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHiLk-0000O7-1V; Fri, 27 Mar 2020 06:20:13 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: myjosserand) with ESMTPSA id 8D9F6290B99
Subject: Re: [PATCH 1/2] ARM: Rockchip: Handle rk3288/rk3288w revision
To: Geert Uytterhoeven <geert@linux-m68k.org>
References: <20200302155703.278421-1-mylene.josserand@collabora.com>
 <20200302155703.278421-2-mylene.josserand@collabora.com>
 <2221545.2vEflg7qi2@diego>
 <CAMuHMdXJQqaCcMko9GUAeUiYQzmy3vnX42yVQNPzhj5ijtFuYA@mail.gmail.com>
 <5802ec08-5e6a-8547-ee8e-dde630791235@collabora.com>
 <CAMuHMdVKFT7eNK0RUi3miJ08O9FMAVs5Qz=YmbHH5-9UUzLNPw@mail.gmail.com>
From: Mylene Josserand <mylene.josserand@collabora.com>
Message-ID: <5efe50ad-a88e-bc8c-de08-3be355ad9e53@collabora.com>
Date: Fri, 27 Mar 2020 07:20:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVKFT7eNK0RUi3miJ08O9FMAVs5Qz=YmbHH5-9UUzLNPw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_232012_219394_6E18F5C4 
X-CRM114-Status: GOOD (  17.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgR2VlcnQsCgpPbiAzLzI2LzIwIDQ6MzEgUE0sIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToK
PiBIaSBNeWxlbmUsCj4gCj4gT24gVGh1LCBNYXIgMjYsIDIwMjAgYXQgMjo1MCBQTSBNeWxlbmUg
Sm9zc2VyYW5kCj4gPG15bGVuZS5qb3NzZXJhbmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IE9u
IDMvNi8yMCAxMTo0NSBBTSwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+Pj4gT24gV2VkLCBN
YXIgNCwgMjAyMCBhdCAxMjowMCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3
cm90ZToKPj4+PiBBbSBNb250YWcsIDIuIE3DpHJ6IDIwMjAsIDE2OjU3OjAyIENFVCBzY2hyaWVi
IE15bMOobmUgSm9zc2VyYW5kOgo+Pj4+PiBEZXRlcm1pbmUgd2hpY2ggcmV2aXNpb24gb2Ygcmsz
Mjg4IGJ5IGNoZWNraW5nIHRoZSBIRE1JIHZlcnNpb24uCj4+Pj4+IEFjY29yZGluZyB0byB0aGUg
Um9ja2NoaXAgQlNQIGtlcm5lbCwgb24gcmszMjg4dywgdGhlIEhETUkKPj4+Pj4gcmV2aXNpb24g
ZXF1YWxzIDB4MUEgd2hpY2ggaXMgbm90IHRoZSBjYXNlIGZvciB0aGUgcmszMjg4IFsxXS4KPj4+
Pj4KPj4+Pj4gQXMgdGhlc2UgU09DIGhhdmUgc29tZSBkaWZmZXJlbmNlcywgdGhlIG5ldyBmdW5j
dGlvbgo+Pj4+PiAnc29jX2lzX3JrMzI4OHcnIHdpbGwgaGVscCB1cyB0byBrbm93IG9uIHdoaWNo
IHJldmlzaW9uCj4+Pj4+IHdlIGFyZS4KPj4+Pgo+Pj4+IHdoYXQgaGFwcGVuZWQgdG8ganVzdCBo
YXZpbmcgYSBkaWZmZXJlbnQgY29tcGF0aWJsZSBpbiB0aGUgZHRzPwo+Pj4+IEFrYSBkb2luZyBh
Cj4+Pj4KPj4+PiByazMyODh3LmR0c2kgd2l0aAo+Pj4+Cj4+Pj4gI2luY2x1ZGUgInJrMzI4OC5k
dHNpIgo+Pj4+Cj4+Pj4gJmNydSB7Cj4+Pj4gICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2No
aXAscmszMjg4dy1jcnUiOwo+Pj4+IH0KPj4+Pgo+Pj4+IEkgc29tZWhvdyBkb24ndCBleHBlY3Qg
Ym9hcmRzIHRvIGp1c3Qgc3dpdGNoIGJldHdlZW4gc29jIHZhcmlhbnRzCj4+Pj4gb24gdGhlIGZs
eS4KPj4+Pgo+Pj4+IEFsc28sIGRvaW5nIHRoaW5ncyBpbiBtYWNoLXJvY2tjaGlwIGlzIG5vdCB2
ZXJ5IGZ1dHVyZS1wcm9vZjoKPj4+Pgo+Pj4+ICgxKSBoYXZpbmcgcmFuZG9tIHNvYy1zcGVjaWZp
YyBBUElzIHNwYW5uaW5nIHRoZSBrZXJuZWwgZmVlbHMgd3JvbmcsCj4+Pj4gICAgICAgZXNwZWNp
YWxseSBhcyBhdCBzb21lIHBvaW50IGl0IG1pZ2h0IG5vdCBiZSBjb250YWluZWQgdG8gb3VyIG93
biBzcGVjaWFsCj4+Pj4gICAgICAgZHJpdmVycyBsaWtlIHRoZSBjcnUuIEkgY2Fubm90IHJlYWxs
eSBzZWUgcGVvcGxlIGJlaW5nIGVudGh1c2lhc3RpYyBpZgo+Pj4+ICAgICAgIHNvbWV0aGluZyBs
aWtlIHRoaXMgd291bGQgYmUgbmVlZGVkIGluIHNheSB0aGUgY29yZSBBbmFsb2dpeC1EUCBicmlk
Z2UgOy0pCj4+Pgo+Pj4gSW5kZWVkLiAgWW91J3JlIGJldHRlciBvZiByZWdpc3RlcmluZyBhbiBz
b2NfZGV2aWNlX2F0dHJpYnV0ZSB1c2luZwo+Pj4gc29jX2RldmljZV9yZWdpc3RlcigpLCBhZnRl
ciB3aGljaCBhbnkgZHJpdmVyIGNhbiB1c2Ugc29jX2RldmljZV9tYXRjaCgpCj4+PiB0byBkaWZm
ZXJlbnRpYXRlIGJhc2VkIG9uIHRoZSBTb0MgcmV2aXNpb24uCj4+Cj4+IFRoYW5rIHlvdSBmb3Ig
dGhpcyBzdWdnZXN0aW9uLiBUaGUgaXNzdWUgaXMgdGhhdCBjbG9ja3MgYXJlIHJlZ2lzdGVyZWQK
Pj4gYXQgYW4gZWFybHkgc3RhZ2Ugb2YgdGhlIGJvb3Qgc28gdXNpbmcgaW5pdGNhbGxzIGlzIHRv
byBsYXRlIGZvciB0aGUKPj4gY2xvY2sgZGlmZmVyZW50aWF0aW9uIDooCj4gCj4gSUMsIHJrMzg4
IGlzIHN0aWxsIHVzaW5nIENMS19PRl9ERUNMQVJFKCkuCj4gV2hhdCBhYm91dCBjb252ZXJ0aW5n
IGl0IHRvIGEgcGxhdGZvcm0gZHJpdmVyLCByZWdpc3RlcmVkIGZyb20gZS5nLgo+IHN1YnN5c19p
bml0Y2FsbCgpPwo+IElmIHlvdSBuZWVkIHNvbWUgY2xvY2tzIGVhcmx5IChlLmcuIGZvciB0aW1l
cnMpLCB5b3UgY2FuIGRvIHNwbGl0Cj4gcmVnaXN0cmF0aW9uLCB3aXRoIHRoZSBlYXJseSBwYXJ0
IHN0aWxsIHVzaW5nIENMS19PRl9ERUNMQVJFKCkuCj4gVGhhdCBzaG91bGQgd29yaywgYXNzdW1l
ZCB0aGUgdGltZXIgY2xvY2tzIGRvbid0IG5lZWQgZGlmZmVyZW50aWF0aW9uLgo+IAo+IEdye29l
dGplLGVldGluZ31zLAo+IAo+ICAgICAgICAgICAgICAgICAgICAgICAgICBHZWVydAo+IAoKb2gs
IG5pY2UsIHRoYW5rcyBmb3IgdGhlIGhlbHAhCkkgd2lsbCB0cnkgdGhhdCBhbmQgc2VuZCBhIG5l
dyB2ZXJzaW9uIGlmIGl0IGlzIHdvcmtpbmcgZmluZS4KCkJlc3QgcmVnYXJkcywKTXlsw6huZQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
