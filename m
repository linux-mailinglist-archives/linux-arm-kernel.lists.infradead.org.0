Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245772CBBB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 18:21:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CIxzfXCQv574Jh81c0g0xj4EouM7TlHwp81Lrbzt1Zo=; b=ogl/Ho1moI/2QZaczJUNMTflTT
	pYHYNjafU1yJKbipPBvGmZueiKvD9mruTWQafu4ppa7hrzsoPqJrt2QHNbPsFjfQmKpF6S8exYR0L
	H+XL5rlN5rRryJK/xZRYZ7Fv01pUlgXNMDLA52MCyg2Div48KtHGu8rIqHd5LbgKrtdHtCwZxKcUp
	U+Krtc+JdcDYf9iWqxl+odPMFHKvT7tG2VyWumY94U8LhhwKbfXdvpDGZLVBfJOrA66MuBV8ocJvH
	T+RFsaJY77MqFvaFxM9ZlNmHDY9/6YLNStUsWp/s46IC8yxHZwN6fwA96DQtr60lHVXn87e0sI+AH
	22gqfZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVer5-00063H-Mo; Tue, 28 May 2019 16:21:39 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVeqy-00062u-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 16:21:34 +0000
Received: by mail-yw1-xc44.google.com with SMTP id k128so8138018ywf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 09:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=MmnmmjS/U+RWNF/Hr0scTDk3DkBZp7sbjnxe0L1QEMc=;
 b=HPt+dHPa6YLeN2MtWlGQswIU9hU+wq6YJUPSz+0HdJjKWvwfQo2fnw3vWalKRWcTOT
 qv34UYdJ8ct4omWgkCqitrRXk0S+72OkEETLXNFrjgoHgFlvvDvRnHyMEalsozm3Aiz4
 9a/5zK1ytIHqGxzaiTcIEq4i8jPF/MT5OsVihETfAvR9e+Xo5439oH3GSXFm9bawOixI
 9tPDFuzBibiFQUs2i4r/VA3y5OuP3vbykzwDVZFTYW6IwdkWl0hQlj1J0W2x0A+kYv4M
 HNY/W9OnOb022xtuEdGjXTHiszVA/BN4SNNVRVuv0RjYnd2L/cFw2rzk1JDrYeM9ujBL
 JFkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=MmnmmjS/U+RWNF/Hr0scTDk3DkBZp7sbjnxe0L1QEMc=;
 b=K/fRtyttcHpoxNKwRV8csQDnbh5WB8x0F0ibV+cLpMImnSdX0rnML7janHQ9sxgx0/
 sQiyMOnPn2Qhp5NB4x4BBPJtYwZheTHXfVbQu0Ey3YUpKVp1jfwhONOyLoxRkJtzZ+gO
 5woDlpvinzZ8E2yCac2Thi9aga+nq4xajhvJmyCkOZVX1MqfzUtCeJPm214CMTBHXeq+
 33tgwhXIgbKk+3x+Tp3kABai0kvwGTfVGsicIIMMjgZVACtR6dixMRIu2CGO9NM2vvxn
 AWFYlJyIGoSh5+76B+6rPpcdxO7XyEm50QDrlU6dskeSAWrmDkYvz6N/740XuAQvBsNy
 0CsA==
X-Gm-Message-State: APjAAAWgFwXyFYjrwThyXVP0tgDn+M9+O8YdkT4+4d3kxQSkWHZiu6P2
 8eKQXfNTSV5dJx+HdjEHN/6mVyEP51dU+Ublu08=
X-Google-Smtp-Source: APXvYqx8Iswg2TaiWeC96V9UXaWt0tjBUtBZSyfsRsuSyAxo9dXuCv1EUDxCL5uyMDqPFcyK/qdDa1jzX5U5AQm/8KE=
X-Received: by 2002:a81:997:: with SMTP id 145mr13076277ywj.457.1559060490188; 
 Tue, 28 May 2019 09:21:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190526222536.10917-1-peron.clem@gmail.com>
 <20190527134805.j7t4ffstrnhdml47@core.my.home>
 <CAJiuCcdnQa0TArduT4yBbUyd+dOaM0cQ1JcRUQLXLR6s_5e8sA@mail.gmail.com>
 <20190527163117.hpealt6cttqzqdxz@core.my.home>
 <20190527172337.5qxh5qeqnul55gsb@core.my.home>
 <CAJiuCccnRCqez2uG-pU8XY4Z=5S8rDwFB3rgsBovPHY1Uxyazw@mail.gmail.com>
 <20190527193016.yxngu5grsqnctx3z@core.my.home>
 <20190527195330.pugb7ypvnyv32fug@core.my.home>
In-Reply-To: <20190527195330.pugb7ypvnyv32fug@core.my.home>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Tue, 28 May 2019 18:21:19 +0200
Message-ID: <CAJiuCccpnEqw_tGXST+WtGmZLbE+=wN1Hn9HKrk1+4WsW-abiA@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 00/10] Allwinner A64/H6 IR support
To: megous@megous.com, =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree <devicetree@vger.kernel.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_092132_096591_A03B6A2F 
X-CRM114-Status: GOOD (  37.38  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgT25kxZllaiwKCk9uIE1vbiwgMjcgTWF5IDIwMTkgYXQgMjE6NTMsICdPbmTFmWVqIEppcm1h
bicgdmlhIGxpbnV4LXN1bnhpCjxsaW51eC1zdW54aUBnb29nbGVncm91cHMuY29tPiB3cm90ZToK
Pgo+IEhpIENsw6ltZW50LAo+Cj4gT24gTW9uLCBNYXkgMjcsIDIwMTkgYXQgMDk6MzA6MTZQTSAr
MDIwMCwgdmVyZWpuYSB3cm90ZToKPiA+IEhpIENsw6ltZW50LAo+ID4KPiA+IE9uIE1vbiwgTWF5
IDI3LCAyMDE5IGF0IDA4OjQ5OjU5UE0gKzAyMDAsIENsw6ltZW50IFDDqXJvbiB3cm90ZToKPiA+
ID4gSGkgT25kcmVqLAo+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gSSdtIHRlc3Rpbmcgb24gT3Jhbmdl
IFBpIDMuCj4gPiA+ID4KPiA+ID4gPiBXaXRoIHlvdXIgcGF0Y2hlcywgSSBnZXQga2VybmVsIGxv
Y2t1cCBhZnRlciB+MSBtaW51dGUgb2YgdXNlIChzc2ggc3RvcHMKPiA+ID4gPiByZXNwb25kaW5n
L3NlcmlhbCBjb25zb2xlIHN0b3BzIHJlc3BvbmRpbmcpLiBJIGRvbid0IGhhdmUgUkMgY29udHJv
bGxlciB0byB0ZXN0Cj4gPiA+ID4gdGhlIENJUi4gQnV0IGp1c3QgZW5hYmxpbmcgdGhlIENJUiBj
YXVzZXMga2VybmVsIHRvIGhhbmcgc2hvcnRseSBhZnRlciBib290Lgo+ID4gPiA+Cj4gPiA+ID4g
SSB0cmllZCBib290aW5nIG11bHRpcGxlIHRpbWVzLiBPdGhlciByZXN1bHRzOgo+ID4gPiA+Cj4g
PiA+ID4gYm9vdCAyOgo+ID4gPiA+Cj4gPiA+ID4gLSBzc2ggaGFuZ3MgZXZlbiBiZWZvcmUgY29u
bmVjdGluZyAoZXRoZXJuZXQgY3Jhc2hlcy9pcyByZXNldCkKPiA+ID4gPgo+ID4gPiA+IElORk86
IHJjdV9zY2hlZCBkZXRlY3RlZCBzdGFsbHMgb24gQ1BVcy90YXNrczoKPiA+ID4gPiByY3U6ICAg
IDAtLi4uLjogKDEgR1BzIGJlaGluZCkgaWRsZT02NGEvMC8weDMgc29mdGlycT00MDkxLzQwOTEg
ZnFzPTI0MzcKPiA+ID4gPiBkd21hYy1zdW44aSA1MDIwMDAwLmV0aGVybmV0IGV0aDA6IFJlc2V0
IGFkYXB0ZXIuCj4gPiA+ID4gcmN1OiBJTkZPOiByY3Vfc2NoZWQgZGV0ZWN0ZWQgZXhwZWRpdGVk
IHN0YWxscyBvbiBDUFVzL3Rhc2tzOiB7IDAtLi4uIH0gNTY5NiBqaWZmaWVzIHM6IDgxIHJvb3Q6
IDB4MS8uCj4gPiA+ID4gcmN1OiBibG9ja2luZyByY3Vfbm9kZSBzdHJ1Y3R1cmVzOgo+ID4gPiA+
ICByY3U6IElORk86IHJjdV9zY2hlZCBkZXRlY3RlZCBzdGFsbHMgb24gQ1BVcy90YXNrczoKPiA+
ID4gPiByY3U6ICAgIDAtLi4uLjogKDEgR1BzIGJlaGluZCkgaWRsZT02NGEvMC8weDMgc29mdGly
cT00MDkxLzQwOTEgZnFzPTk3MTQKPiA+ID4gPiByY3U6IElORk86IHJjdV9zY2hlZCBkZXRlY3Rl
ZCBleHBlZGl0ZWQgc3RhbGxzIG9uIENQVXMvdGFza3M6IHsgMC0uLi4gfSAyMTU2OCBqaWZmaWVz
IHM6IDgxIHJvb3Q6IDB4MS8uCj4gPiA+ID4gcmN1OiBibG9ja2luZyByY3Vfbm9kZSBzdHJ1Y3R1
cmVzOgo+ID4gPiA+IHJjdTogSU5GTzogcmN1X3NjaGVkIGRldGVjdGVkIHN0YWxscyBvbiBDUFVz
L3Rhc2tzOgo+ID4gPiA+IHJjdTogICAgMC0uLi4uOiAoMSBHUHMgYmVoaW5kKSBpZGxlPTY0YS8w
LzB4MyBzb2Z0aXJxPTQwOTEvNDA5MSBmcXM9MTcyMDMKPiA+ID4gPgo+ID4gPiA+IGFib3ZlIG1l
c3NhZ2VzIGFwcGVhciByZWd1bGFybHkuCj4gPiA+ID4KPiA+ID4gPiBib290IDM6Cj4gPiA+ID4K
PiA+ID4gPiByY3U6IElORk86IHJjdV9zY2hlZCBkZXRlY3RlZCBzdGFsbHMgb24gQ1BVcy90YXNr
czoKPiA+ID4gPiByY3U6ICAgIDAtLi4uLjogKDkgR1BzIGJlaGluZCkgaWRsZT05OTIvMC8weDMg
c29mdGlycT02MTIzLzYxMjMgZnFzPTI2MDAKPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gU29tZXRp
bWVzIHNlcmlhbCBjb25zb2xlIGtlZXBzIHdvcmtpbmcuIFNvbWV0aW1lcyBpdCBsb2NrcyB1cCB0
b28gKGJ1dCBub3QKPiA+ID4gPiBmcmVxdWVudGx5KS4gU3RvcmFnZSBsb2NrcyB1cCBhbHdheXMg
KGFueSBwcm9ncmFtIHRoYXQgd2FzIG5vdCBydW4gYmVmb3JlCj4gPiA+ID4gdGhlIGNyYXNoIGNh
bid0IGJlIHN0YXJ0ZWQgYW5kIGxvY2sgdXAgdGhlIGtlcm5lbCBoYXJkLCBwcm9ncmFtcyB0aGF0
Cj4gPiA+ID4gd2VyZSBleGVjdXRlZCBwcmlvciwgY2FuIGJlIHJ1biBhZ2FpbikuCj4gPiA+ID4K
PiA+ID4gPgo+ID4gPiA+IEV4YWN0bHkgdGhlIHNhbWUga2VybmVsIGJ1aWxkIG9uIEg1IHNlZW1z
IHRvIHdvcmsgKG9yIGF0IGxlYXN0IEkgd2FzIG5vdCBhYmxlIHRvCj4gPiA+ID4gdHJpZ2dlciB0
aGUgY3Jhc2gpLiBTbyB0aGlzIHNlZW1zIHRvIGJlIGxpbWl0ZWQgdG8gSDYgZm9yIG5vdy4KPiA+
ID4gPgo+ID4gPiA+IEkgc3VzcGVjdCB0aGF0IHRoZSBjcmFzaCBvY2N1cnMgc29vbmVyIGlmIEkg
dmFyeSB0aGUgbGlnaHQgKHR1cm4gb24vb2ZmIHRoZSB0YWJsZQo+ID4gPiA+IGxhbXAgbGlnaHQp
Lgo+ID4gPiA+Cj4gPiA+ID4gV2l0aG91dCB5b3VyIHBhdGNoZXMsIGV2ZXJ5dGhpbmcgd29ya3Mg
ZmluZSBvbiBINiwgYW5kIEkgbmV2ZXIgc2VlCj4gPiA+ID4gY3Jhc2hlcy9sb2NrdXBzLgo+ID4g
PiA+Cj4gPiA+ID4gSSB0aXJlZCBwaHlzaWNhbGx5IGNvdmVyaW5nIHRoZSBJUiByZWNlaXZlciwg
YW5kIHRoYXQgaGVscHMgcHJldmVudGluZyB0aGUKPiA+ID4gPiBjcmFzaC4gQXMgc29vbiBhcyBJ
IHVuY292ZXIgaXQsIHRoZSBjcmFzaCBoYXBwZW5zIGFnYWluIGluIDFzIG9yIHNvOgo+ID4gPiA+
Cj4gPiA+ID4gcmN1OiBJTkZPOiByY3Vfc2NoZWQgZGV0ZWN0ZWQgc3RhbGxzIG9uIENQVXMvdGFz
a3M6Cj4gPiA+ID4gcmN1OiAgICAwLS4uLi46ICgxIEdQcyBiZWhpbmQpIGlkbGU9NGVhLzAvMHgz
IHNvZnRpcnE9NDQ4My80NDg0IGZxcz0yNDQ0Cj4gPiA+ID4gcmN1OiBJTkZPOiByY3Vfc2NoZWQg
ZGV0ZWN0ZWQgc3RhbGxzIG9uIENQVXMvdGFza3M6Cj4gPiA+ID4gcmN1OiAgICAwLS4uLi46ICgx
IEdQcyBiZWhpbmQpIGlkbGU9NGVhLzAvMHgzIHNvZnRpcnE9NDQ4My80NDg0IGZxcz05Nzc3Cj4g
PiA+ID4KPiA+ID4gPiBUaGlzIHRpbWUgSSBnb3QgdGhlIGh1bmcgdGFzayBhbmQgcmVib290OiAo
cHJvYmFibHkgbm90IGRpcmVjdGx5IHJlbGF0ZWQpCj4gPiA+ID4KPiA+ID4gPiBJTkZPOiB0YXNr
IGZpbmQ6NTYwIGJsb2NrZWQgZm9yIG1vcmUgdGhhbiAxMjAgc2Vjb25kcy4KPiA+ID4gPiAgICAg
ICBOb3QgdGFpbnRlZCA1LjIuMC1yYzIrICM3Cj4gPiA+ID4gImVjaG8gMCA+IC9wcm9jL3N5cy9r
ZXJuZWwvaHVuZ190YXNrX3RpbWVvdXRfc2VjcyIgZGlzYWJsZXMgdGhpcyBtZXNzYWdlLgo+ID4g
PiA+IGZpbmQgICAgICAgICAgICBEICAgIDAgICA1NjAgICAgNTUxIDB4MDAwMDAwMDAKPiA+ID4g
PiBDYWxsIHRyYWNlOgo+ID4gPiA+ICBfX3N3aXRjaF90bysweDZjLzB4OTAKPiA+ID4gPiAgX19z
Y2hlZHVsZSsweDFmNC8weDU3OAo+ID4gPiA+ICBzY2hlZHVsZSsweDI4LzB4YTgKPiA+ID4gPiAg
aW9fc2NoZWR1bGUrMHgxOC8weDM4Cj4gPiA+ID4gIF9fbG9ja19wYWdlKzB4MTJjLzB4MjA4Cj4g
PiA+ID4gIHBhZ2VjYWNoZV9nZXRfcGFnZSsweDIzOC8weDJlOAo+ID4gPiA+ICBfX2dldF9ub2Rl
X3BhZ2UrMHg2Yy8weDMxMAo+ID4gPiA+ICBmMmZzX2dldF9ub2RlX3BhZ2UrMHgxNC8weDIwCj4g
PiA+ID4gIGYyZnNfaWdldCsweDcwLzB4YzYwCj4gPiA+ID4gIGYyZnNfbG9va3VwKzB4Y2MvMHgy
MTgKPiA+ID4gPiAgX19sb29rdXBfc2xvdysweDc4LzB4MTYwCj4gPiA+ID4gIGxvb2t1cF9zbG93
KzB4M2MvMHg2MAo+ID4gPiA+ICB3YWxrX2NvbXBvbmVudCsweDFlNC8weDJlMAo+ID4gPiA+ICBw
YXRoX2xvb2t1cGF0LmlzcmEuMTMrMHg1Yy8weDFlMAo+ID4gPiA+ICBmaWxlbmFtZV9sb29rdXAu
cGFydC4yMysweDZjLzB4ZTgKPiA+ID4gPiAgdXNlcl9wYXRoX2F0X2VtcHR5KzB4NGMvMHg2MAo+
ID4gPiA+ICB2ZnNfc3RhdHgrMHg3OC8weGQ4Cj4gPiA+ID4gIF9fc2Vfc3lzX25ld2ZzdGF0YXQr
MHgyNC8weDQ4Cj4gPiA+ID4gIF9fYXJtNjRfc3lzX25ld2ZzdGF0YXQrMHgxOC8weDIwCj4gPiA+
ID4gIGVsMF9zdmNfaGFuZGxlcisweDljLzB4MTcwCj4gPiA+ID4gIGVsMF9zdmMrMHg4LzB4Ywo+
ID4gPiA+IEtlcm5lbCBwYW5pYyAtIG5vdCBzeW5jaW5nOiBodW5nX3Rhc2s6IGJsb2NrZWQgdGFz
a3MKPiA+ID4gPiBDUFU6IDEgUElEOiAzNCBDb21tOiBraHVuZ3Rhc2tkIE5vdCB0YWludGVkIDUu
Mi4wLXJjMisgIzcKPiA+ID4gPiBIYXJkd2FyZSBuYW1lOiBPcmFuZ2VQaSAzIChEVCkKPiA+ID4g
PiBDYWxsIHRyYWNlOgo+ID4gPiA+ICBkdW1wX2JhY2t0cmFjZSsweDAvMHhmOAo+ID4gPiA+ICBz
aG93X3N0YWNrKzB4MTQvMHgyMAo+ID4gPiA+ICBkdW1wX3N0YWNrKzB4YTgvMHhjYwo+ID4gPiA+
ICBwYW5pYysweDEyNC8weDJkYwo+ID4gPiA+ICBwcm9jX2RvaHVuZ190YXNrX3RpbWVvdXRfc2Vj
cysweDAvMHg0MAo+ID4gPiA+ICBrdGhyZWFkKzB4MTIwLzB4MTI4Cj4gPiA+ID4gIHJldF9mcm9t
X2ZvcmsrMHgxMC8weDE4Cj4gPiA+ID4gU01QOiBzdG9wcGluZyBzZWNvbmRhcnkgQ1BVcwo+ID4g
PiA+IEtlcm5lbCBPZmZzZXQ6IGRpc2FibGVkCj4gPiA+ID4gQ1BVIGZlYXR1cmVzOiAweDAwMDIs
MjAwMDIwMDAKPiA+ID4gPiBNZW1vcnkgTGltaXQ6IG5vbmUKPiA+ID4gPiBSZWJvb3RpbmcgaW4g
MyBzZWNvbmRzLi4KPiA+ID4gPgo+ID4gPiA+Cj4gPiA+ID4gTWVhbndoaWxlIEg1IGJhc2VkIGJv
YXJkIG5vdyBydW5zIGZvciAxNSBtaW51dGVzIHdpdGhvdXQgaXNzdWVzLgo+ID4gPiA+Cj4gPiA+
ID4gU28gdG8gc3VtIHVwOgo+ID4gPiA+Cj4gPiA+ID4gLSB0aGVzZSBjcmFzaGVzIGFyZSBkZWZp
bml0ZWx5IEg2IElSIHJlbGF0ZWQKPiA+ID4gPiAgIC0gdGhlIHNhbWUga2VybmVsLCBvbiBINSB3
b3Jrcwo+ID4gPiA+ICAgLSBjb3ZlcmluZyB0aGUgc2Vuc29yIHByZXZlbnRzIHRoZSBjcmFzaGVz
IG9uIEg2Cj4gPiA+ID4KPiA+ID4gPiBTbyB3ZSBzaG91bGQgcHJvYmFibHkgaG9sZCBvbiB3aXRo
IHRoZSBzZXJpZXMsIHVudGlsIHRoaXMgaXMgZmlndXJlZCBvdXQuCj4gPiA+Cj4gPiA+IFRoYW5r
cyBmb3IgdGVzdGluZywgYnV0IEkgdGhpbmsgaXQncyBtb3JlIGhhcmR3YXJlIHJlbGF0ZWQuCj4g
PiA+IEl0IHNlZW1zIHRoYXQgeW91ciBJUiBpcyBmbG9vZGVkIG9yIG1pc2NvbmZpZ3VyZWQgZm9y
IHlvdXIgYm9hcmQuCj4gPiA+IENvdWxkIHlvdSBhZGQgYSBzaW1wbGUgcHJpbnQgaW4gdGhlICJz
dW54aV9pcl9pcnEiCj4gPgo+ID4gWWVzLCBJIGdldCBmbG9vZCBvZiBJUlFzIHdpdGggc3RhdHVz
ID0gMHgzMC4gKGFmdGVyIEkgdHVybiBvbiB0aGUgbGFtcCwKPiA+IGJ1dCBpdCBwZXJzaXN0cyBl
dmVuIGFmdGVyIEkgdHVybiBpdCBvZmYgYW5kIGNvdmVyIHRoZSBJUiBzZW5zb3IpLgo+Cj4gSW50
ZXJlc3RpbmdseSwgc3RhdHVzIGFsc28gY29udGFpbnMgUkFDLCBhbmQgaXQncyAwIGluIHRoaXMg
Y2FzZS4gU28gdGhlCj4gaW50ZXJydXB0IGlmIGZpcmluZyB3aXRoICJObyBhdmFpbGFibGUgZGF0
YSBpbiBSWCBGSUZPIiByZXBlYXRlZGx5LiBSZWdhcmRsZXNzCj4gb2YgaW5wdXQuCj4KPiBTbyB0
aGVyZSdzIHNvbWV0aGluZyBlbHNlIHVwLgoKUmVhbGx5IHdlaXJkIGluZGVlZC4uLgoKSSBoYXZl
IHB1c2hlZCBhIG5ldyB2ZXJzaW9uLCB3aGVyZSBJIGRpZG4ndCBlbmFibGVkIHRoZSBzdXBwb3J0
IGZvcgpvdGhlcnMgSDYgYm9hcmQgYW5kIHRoZSBjb3ZlciBsZXR0ZXIgaW5jbHVkZSBhIGxpbmsg
dG8gdGhpcyB0aHJlYWQuCgpJdCB3b3VsZCBiZSBncmVhdCBpZiBvdGhlciBzdW54aSB1c2VycyBj
b3VsZCB0ZXN0IHRoaXMgc2VyaWVzLCB0bwpjaGVjayBpZiB0aGlzIGlzc3VlIGluIHByZXNlbnQg
aW4gb3RoZXIgT1BpMyAvIFBpbmUgSDY0LgoKUmVnYXJkcywKQ2zDqW1lbnQKPgo+IHJlZ2FyZHMs
Cj4gICAgICAgICBvLgo+Cj4gPiBUaGF0J3Mgd2VpcmQsIGJlY2F1c2Ugb24gSDYgaW4gQ0lSX1JY
U1RBLCBiaXQgNSBpcyB1bmRlZmluZWQgYnV0IGNvcnJlc3BvbmRpbmcKPiA+IGJpdCBpbiBDSVJf
UlhJTlQgaXMgRFJRX0VOIChSWCBGSUZPIERNQSBFbmFibGUpCj4gPgo+ID4gU28gSSdtIG5vdCBz
dXJlIHdoYXQgaXQgY291bGQgYmUgZmxvb2RlZCB3aXRoIGFuZCB3aHkgSVJRcyBrZWVwIGJlaW5n
Cj4gPiBmaXJlZCwgZXZlbiB3aXRoIG5vIHNlbnNvciBpbnB1dCBhZnRlciB0aGUgRklGTyBpcyBy
ZWFkLgo+ID4KPiA+IHJlZ2FyZHMsCj4gPiAgICAgICBvLgo+ID4KPiA+ID4gSWYgaXQncyBjb25m
aXJtZWQsIG1heWJlIHR3ZWFrIHRoZSB0aHJlc2hvbGQgY29uZmlndXJhdGlvbiBvcgo+ID4gPiBp
bXBsZW1lbnQgdGhlIG5ldyBhY3RpdmVfdGhyZXNob2xkIHdpbGwgaGVscC4KPiA+ID4KPiA+ID4g
V2l0aCBteSBoYXJkd2FyZSBCZWVsaW5rIEdTMSBhbmQgb24gSmVybmVqJ3MgYm9hcmQgKEE2NCkg
dGhlcmUgaXMgbm8gaXNzdWUuCj4gPiA+Cj4gPiA+IEkgd2lsbCBkaXNhYmxlIGFsbCB0aGUgb3Ro
ZXIgSDYgYm9hcmRzIHVudGlsIHNvbWVvbmUgdGVzdCBpdC4KPiA+ID4KPiA+ID4gUmVnYXJkcywK
PiA+ID4gQ2zDqW1lbnQKPiA+Cj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCj4KPiAtLQo+IFlvdSByZWNl
aXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2ds
ZSBHcm91cHMgImxpbnV4LXN1bnhpIiBncm91cC4KPiBUbyB1bnN1YnNjcmliZSBmcm9tIHRoaXMg
Z3JvdXAgYW5kIHN0b3AgcmVjZWl2aW5nIGVtYWlscyBmcm9tIGl0LCBzZW5kIGFuIGVtYWlsIHRv
IGxpbnV4LXN1bnhpK3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb20uCj4gVG8gdmlldyB0aGlz
IGRpc2N1c3Npb24gb24gdGhlIHdlYiwgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9k
L21zZ2lkL2xpbnV4LXN1bnhpLzIwMTkwNTI3MTk1MzMwLnB1Z2I3eXB2bnl2MzJmdWclNDBjb3Jl
Lm15LmhvbWUuCj4gRm9yIG1vcmUgb3B0aW9ucywgdmlzaXQgaHR0cHM6Ly9ncm91cHMuZ29vZ2xl
LmNvbS9kL29wdG91dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
