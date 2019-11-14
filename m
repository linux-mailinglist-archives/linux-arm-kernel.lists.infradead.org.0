Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E938FBDB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 02:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PY6FjCYg4NVAtILLrh4CVvouWiESGNk0xXDK6aWHKcU=; b=UXef6zXvTWID1/M1GgbVXPbtb
	yXtaEL2zEwzcYSd2kIQ/COWibypeXgxau1i/Tvzl9x5YQeMwbfkVLeusxr91U5Y6iCGvkbr/cjt5l
	mmyaWM5WdezAJgDuszdUzKA3CPlxqvSfIupvL/wBsSz7FmcY0mgkRETW9zAqlzWgb1AiNrkIexGvo
	6ploqfldg8nvDylhq9Az8XDTYy9hWJXss2wbOQPHcKVb1mhEiPKh2E4GobS6QTagOMm1Z4lbc81S9
	xGlh+ffJ9XrRPVy9yTekuWIKCyg9ttVpJKCtE3WE5E+PoIZCh8lKNI9WJ7w89HAeWeYQY/tBX8UiV
	mqUYGPPmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV4Kh-0005pA-Qk; Thu, 14 Nov 2019 01:54:03 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV4KY-0005oa-5V; Thu, 14 Nov 2019 01:53:56 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 1F1D8405;
 Thu, 14 Nov 2019 09:53:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P47878T139986162661120S1573696426616732_; 
 Thu, 14 Nov 2019 09:53:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <438ac3b0e67c996fd5c2911b5379e891>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: npcomplete13@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH 3/3] arm64: dts: rk3399: Add init voltage for vdd_log
To: Doug Anderson <dianders@chromium.org>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-3-kever.yang@rock-chips.com>
 <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <a6d41fc5-4ed5-6ec2-5697-ca2b0abe288c@rock-chips.com>
Date: Thu, 14 Nov 2019 09:53:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAD=FV=UjbPALRU2r0s27F4RxjsbDyQ+horUBezVQejk1pT=vqA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_175355_105807_1A62E93E 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.201 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
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
 Andy Yan <andyshrk@gmail.com>, Soeren Moch <smoch@web.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Pragnesh Patel <Pragnesh_Patel@mentor.com>,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Andrius_=c5=a0tikonas?= <andrius@stikonas.eu>,
 LKML <linux-kernel@vger.kernel.org>, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRG91ZywKCk9uIDIwMTkvMTEvMTQg5LiK5Y2IMTowMSwgRG91ZyBBbmRlcnNvbiB3cm90ZToK
PiBIaSwKPgo+IE9uIFN1biwgTm92IDEwLCAyMDE5IGF0IDQ6NTIgUE0gS2V2ZXIgWWFuZyA8a2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+IFNpbmNlIHRoZXJlIGlzIG5vIGRldmZy
ZXEgdXNlZCBmb3IgdmRkX2xvZywgc28gdGhlIHZkZF9sb2cocHdtIHJlZ3VsYXRvcikKPj4gd2ls
bCBiZSAnZW5hYmxlJyB3aXRoIHRoZSBkdHMgbm9kZSBhdCBhIGRlZmF1bHQgUFdNIHN0YXRlIHdp
dGggaGlnaCBvciBsb3cKPj4gb3V0cHV0LiBCb3RoIHRvbyBoaWdoIG9yIHRvbyBsb3cgZm9yIHZk
ZF9sb2cgaXMgbm90IGdvb2QgZm9yIHRoZSBib2FyZCwKPj4gYWRkIGluaXQgdm9sdGFnZSBmb3Ig
ZHJpdmVyIHRvIG1ha2UgdGhlIHJlZ3VsYXRvciBnZXQgaW50byBhIGtub3cgb3V0cHV0Lgo+Pgo+
PiBOb3RlIHRoYXQgdGhpcyB3aWxsIGJlIHVzZWQgYnkgVS1Cb290IGZvciBpbml0IHZvbHRhZ2Ug
b3V0cHV0LCBhbmQgdGhpcwo+PiBpcyB2ZXJ5IGltcG9ydGFudCBmb3IgaXQgbWF5IGdldCBzeXN0
ZW0gaGFuZyBzb21ld2hlcmUgZHVyaW5nIHN5c3RlbQo+PiBib290IHVwIHdpdGggcmVndWxhdG9y
IGVuYWJsZSBhbmQgd2l0aG91dCB0aGlzIGluaXQgdmFsdWUuCj4gSSdtIGEgdGFkIGJpdCBjb25m
dXNlZCBoZXJlLiAgV2hlbiBVLUJvb3QgYm9vdHMgdGhlIGtlcm5lbCwgaG93IGlzIHRoZQo+IFBX
TSBjb25maWd1cmVkPwo+Cj4gSSByZW1lbWJlciBmb2xrcyBnb2luZyB0aHJvdWdoIGEgbG90IG9m
IHdvcmsgdG8gbWFrZSBzdXJlIHRoYXQgd2UKPiBjb3VsZCBhY3R1YWxseSBfcmVhZF8gdGhlIFBX
TSBzdGF0ZSB0aGF0IHRoZSBib290bG9hZGVyIGdhdmUgdXMgYW5kCj4gcmVwb3J0IGl0IGFzIHRo
ZSBpbml0aWFsIHZvbHRhZ2UuICBJZiB0aGUga2VybmVsIGVuZHMgdXAgbmVlZGluZyB0bwo+IGNv
bmZpZ3VyZSB0aGUgUFdNIHJlZ3VsYXRvcidzIHBlcmlvZCBmb3Igc29tZSByZWFzb24sIEkgcmVt
ZW1iZXIgaXQKPiB3b3VsZCBhY3R1YWxseSBwaWNrIHNvbWV0aGluZyBjbG9zZS4gIElzIHRoYXQg
bm90IHdvcmtpbmcgZm9yIHlvdT8KPgo+IEZvciBpbnN0YW5jZSwgb24gcmszMjg4LXZleXJvbiB3
aGVuIEkgYm9vdCB1cCBtYWlubGluZSAobm8gZGV2ZnJlcSBvbgo+IHJrMzI4OC12ZXlyb24gb24g
bWFpbmxpbmUpIHRoZSB2ZGRfbG9naWMgcmVwb3J0cyAxLjIgdm9sdHMgYmVjYXVzZSBpdAo+IHJl
YWQgd2hhdCB0aGUgYm9vdGxvYWRlciBsZWZ0IGl0IGFzLgo+Cj4gLi4uYXJlIHlvdSBzYXlpbmcg
dGhhdCBVLUJvb3QgZG9lc24ndCBjb25maWd1cmUgdGhlIFBXTSBhbmQgeW91J3JlCj4gdHJ5aW5n
IHRvIGZpeCBpdCB1cCBpbiB0aGUga2VybmVsPwoKVS1Cb290IHdpbGwgY29uZmlndXJlIHRoZSBQ
V00gd2l0aCBkdHMgc2V0dGluZyhhbmQgbm93IFUtQm9vdCB3b3VsZCBsaWtlIAp0byBzeW5jIHRo
ZSBkdHMKCmZyb20ga2VybmVsIGRpcmVjdGx5KToKCi0gbm8gZHRzIG5vZGUgZm9yIHB3bSByZWd1
bGF0b3IsIGl0IHdpbGwgYmUgZGVmYXVsdCBhcyBpbnB1dCBJTyB3aXRob3V0IAphbnkgY29uZmln
dXJlOwoKLSB3aXRoIHB3bSByZWd1bGF0b3IgZHRzIGVuYWJsZSwgbm8gJ2luaXQtbWljcm92b2x0
JywgZW5hYmxlIFBXTSB3aXRoIApkZWZhdWx0IDAlIG91dHB1dDsKCi0gd2l0aCBwd20gcmVndWxh
dG9yIGR0cyB3aXRoICdpbml0LW1pY3Jvdm9sdCcsIGVuYWJsZSBQV00gd2l0aCAKY29ycmVzcG9u
ZGluZyBkdXR5IG91dHB1dDsKCldlIHNob3VsZCBsZWF2ZSBpdCBub3QgY29uZmlndXJlKGFyb3Vu
ZCAwLjlWIGZvciBtb3N0IG9mIGJvYXJkKSBvciAKY29uZmlndXJlIHRvIGNvcnJlY3QKCm91dHB1
dChzb21lIGJvYXJkcyBuZWVkIDAuOTVWIHdoaWxlIGRlZmF1bHQgaXMgMC45ViBmb3Igc3RhYmls
aXR5IGlzc3VlKS4KCkZvciB0aGUgcmszMzk5IGJvYXJkcyBvbiB1cHN0cmVhbSwgc29tZSBvZiB0
aGVtIGRvIG5vdCBoYXZlIGEgdmRkX2xvZyBpbiAKZHRzLAoKYW5kIG90aGVycyBoYXZlIGR0cyBu
b2RlIGJ1dCB3aXRob3V0ICdpbml0LW1pY3Jvdm9sdCcgZm9yIGluaXQgc2V0dGluZywgCnRoYXQn
cyB3aGF0IEkgd2FudAoKdG8gZml4IHRvIG1ha2Ugc3VyZSBhbGwgdGhlIGJvYXJkcyBjYW4gd29y
ayBjb3JyZWN0bHkuCgoKVGhhbmtzLAoKLSBLZXZlcgoKPgo+IC1Eb3VnCj4KPgo+IC1Eb3VnCj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
