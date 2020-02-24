Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1277E16ADE3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 18:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0MCnmSonIH3wfWdDOlcaraWxiRzC8C/omgQu/ArG3U=; b=BTxBBPkTIBVYoF
	8KzJ3HxgDm8VVxerq7xhaCQGckHLdhPo+etEdL9OUuTD7orsSgulRYNqLE7/K4o3+lIeYA+StmPqs
	sK9mV7JBLP53pXY+pUeaJSzLcNysVn8RaURHzgVrQvKYGklrOvBWqqkz6ErPn0DWe8Gc4HUhpKpwZ
	nrBmEmRny1fknGA0THVSKG7rCjbdxhbibRDdLWKpXnwRLUVz4VPTiHjQ3a58p2w9/JvBBT0VPLWOc
	FjUmwJn7qd0PStEZ3ymkbehMHtJVYrrXsuQQIOBd/7B6vUpRsL6DUc48WZ98kxrh8/+KFG9h3zhjt
	pz0ssYr1VKjVAcqUaKcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Hkn-00035U-DH; Mon, 24 Feb 2020 17:42:49 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Hhn-0008Rb-9Z
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 17:39:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582565980; bh=bssBG1gkye/nYahI0KI7q69HyEXw05nP1PGKKo8PTDc=;
 h=Date:From:To:Subject:References:X-My-GPG-KeyId:From;
 b=FoSjuyUEQg2Zi08JDwJhfQKkeU+UWADJZHnAIBU7RY8JU1qByM7iZvFuW4x2nwBhW
 LQFABB99Nv08xlfT9LxVBgzfhtmJdwqdWhQL/3tmhYi4PipX5/Iz3/KcHZUkzBtI1T
 2QNNcU+zW2sm3ErVaf8txlY3VNGztiHLu/jjvP6E=
Date: Mon, 24 Feb 2020 18:39:40 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] ARM: dts: sun8i-a83t: Add thermal trip points/cooling
 maps
Message-ID: <20200224173940.huwpaqhrc5ngbmji@core.my.home>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
References: <20200224165417.334617-1-megous@megous.com>
 <2e4213a6-2aaf-641c-f741-9503f3ffd5fe@linaro.org>
 <20200224172328.yauwfgov664ayrd6@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224172328.yauwfgov664ayrd6@core.my.home>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093943_687962_97F7F69E 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDY6MjM6MjhQTSArMDEwMCwgbWVnb3VzIGhsYXZuaSB3
cm90ZToKPiBIaSwgCj4gCj4gT24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgMDY6MDY6MjBQTSArMDEw
MCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPiBPbiAyNC8wMi8yMDIwIDE3OjU0LCBPbmRyZWog
SmlybWFuIHdyb3RlOgo+ID4gPiBUaGlzIGVuYWJsZXMgcGFzc2l2ZSBjb29saW5nIGJ5IGRvd24t
cmVndWxhdGluZyBDUFUgdm9sdGFnZQo+ID4gPiAgCQkJY2xvY2tzID0gPCZjY3UgQ0xLX0MxQ1BV
WD47Cj4gPiA+IEBAIC0xMTg4LDEyICsxMTg4LDYwIEBAIGNwdTBfdGhlcm1hbDogY3B1MC10aGVy
bWFsIHsKPiA+ID4gIAkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKPiA+ID4gIAkJCXBv
bGxpbmctZGVsYXkgPSA8MD47Cj4gPiA+ICAJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRocyAwPjsK
PiA+ID4gKwo+ID4gPiArCQkJdHJpcHMgewo+ID4gPiArCQkJCWNwdTBfaG90OiBjcHUtaG90IHsK
PiA+ID4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8ODAwMDA+Owo+ID4gPiArCQkJCQloeXN0ZXJlc2lz
ID0gPDIwMDA+Owo+ID4gPiArCQkJCQl0eXBlID0gInBhc3NpdmUiOwo+ID4gPiArCQkJCX07Cj4g
PiA+ICsKPiA+ID4gKwkJCQljcHUwX3ZlcnlfaG90OiBjcHUtdmVyeS1ob3Qgewo+ID4gPiArCQkJ
CQl0ZW1wZXJhdHVyZSA9IDwxMDAwMDA+Owo+ID4gPiArCQkJCQloeXN0ZXJlc2lzID0gPDA+Owo+
ID4gPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKPiA+ID4gKwkJCQl9Owo+ID4gPiArCQkJfTsK
PiA+ID4gKwo+ID4gPiArCQkJY29vbGluZy1tYXBzIHsKPiA+ID4gKwkJCQljcHUtaG90LWxpbWl0
IHsKPiA+ID4gKwkJCQkJdHJpcCA9IDwmY3B1MF9ob3Q+Owo+ID4gPiArCQkJCQljb29saW5nLWRl
dmljZSA9IDwmY3B1MCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ID4gPiAr
CQkJCQkJCSA8JmNwdTEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiA+ID4g
KwkJCQkJCQkgPCZjcHUyIFRIRVJNQUxfTk9fTElNSVQgVEhFUk1BTF9OT19MSU1JVD4sCj4gPiA+
ICsJCQkJCQkJIDwmY3B1MyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+Owo+ID4g
PiArCQkJCX07Cj4gPiA+ICsJCQl9Owo+ID4gPiAgCQl9Owo+ID4gPiAgCj4gPiA+ICAJCWNwdTFf
dGhlcm1hbDogY3B1MS10aGVybWFsIHsKPiA+ID4gIAkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9
IDwwPjsKPiA+IAo+ID4gTm8gcG9sbGluZyB0byBtaXRpZ2F0ZT8KPiAKPiBQb2xsaW5nIHRvIG1p
dGlnYXRlIHdoYXQ/Cj4gCj4gVGhlIGRyaXZlciBpcyB1c2luZyBpbnRlcnJ1cHRzIHdoZW5ldmVy
IG5ldyByZWFkaW5nIGlzIGF2YWlsYWJsZSwgYW5kCj4gbm90aWZpZXMgdHogb2YgdGhlIGNoYW5n
ZS4gSSBkb24ndCBoYXZlIGEgcmVhc29uIHRvIGJlbGlldmUgYW55IG5ldwo+IHZhbHVlcyBhcmUg
YXZhaWxhYmxlIGZyb20gdGhlcm1hbCBzZW5zb3Igb3V0c2lkZSBvZiB0aGUgaW50ZXJydXB0Cj4g
cGVyaW9kLgoKVG8gYmUgbW9yZSBjbGVhciwgbmV3IHRlbXBlcmF0dXJlcyBhcmUgYXZhaWxhYmxl
IGZyb20gdGhlIHRoZXJtYWwgc2Vuc29yIGRyaXZlcgphdCB0aGUgcmF0ZSBvZiA0IHBlciBzZWNv
bmQsIHdoaWNoIHNob3VsZCBiZSBlbm91Z2ggdG8gZG8gcXVpY2sgYWRqdXN0bWVudHMgdG8KdGhl
IHRoZXJtYWwgem9uZS9jb29saW5nIGRldmljZSBldmVuIGZvciBxdWljayB0ZW1wZXJhdHVyZSBy
aXNlcy4KCmh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjYtcmMzL3NvdXJjZS9k
cml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jI0w0NDIKClRoZXJlJ3Mgbm8gc2xvdy9mYXN0
IHBlcmlvZCBkZXBlbmRpbmcgb24gd2hldGhlciB0aGUgY29vbGluZyBpcyBhY3RpdmUuCkl0J3Mg
YWx3YXlzIGZhc3QgYW5kIG5vIHBvbGxpbmcgb2YgdGhlIHRoZXJtYWwgc2Vuc29yIGlzIG5lZWRl
ZC4KCnJlZ2FyZHMsCglvLgoKPiA+ID4gIAkJCXBvbGxpbmctZGVsYXkgPSA8MD47Cj4gPiA+ICAJ
CQl0aGVybWFsLXNlbnNvcnMgPSA8JnRocyAxPjsKPiA+ID4gKwo+ID4gPiArCQkJdHJpcHMgewo+
ID4gPiArCQkJCWNwdTFfaG90OiBjcHUtaG90IHsKPiA+ID4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8
ODAwMDA+Owo+ID4gPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4gPiArCQkJCQl0eXBl
ID0gInBhc3NpdmUiOwo+ID4gCj4gPiBJJ20gY3VyaW91cywgY2FuIHlvdSByZWFsbHkgcmVhY2gg
dGhpcyB0ZW1wZXJhdHVyZSB3aXRoIGEgY29ydGV4LWE3Cj4gPiBydW5uaW5nIGF0IDEuMkdIeiBt
YXg/Cj4gCj4gVGhhdCBkZXBlbmRzIG9uIGFtYmllbnQgdGVtcGVyYXR1cmUuIEknZCBzYXkgZWFz
aWx5LiBNeSBBODNUIGlzIHJ1bm5pbmcKPiBpbmlzaWRlIGVuY2xvc2VkIHNwYWNlIHdpdGggbm8g
Y29vbGluZyBvdGhlciB0aGFuIGRpc3NpcGF0aW5nIGhlYXQgdG8KPiB0aGUgYm9hcmQuCj4gCj4g
QW55d2F5LCBJJ20gcnVubmluZyBteSBBODNUIGJvYXJkcyBhdCAxLjhHSHouIEFuZCBBODNUIGNh
biBydW4gdXAgdG8gMkdIego+IGF0IHRoZSBiZXN0IFNvQyBiaW4uCj4gCj4gSSdsbCBwcm9iYWJs
eSBzdWJtaXQgdXBkYXRlZCBjcHVmcmVxIHRhYmxlIGF0IHNvbWUgcG9pbnQgdG9vLCBvbmNlIEkg
Zml4Cj4gaXQgdXAgdG8gdXNlIHRoZSBTb0MgYmluIGluZm9ybWF0aW9uLgo+IAo+IGh0dHBzOi8v
bWVnb3VzLmNvbS9naXQvbGludXgvY29tbWl0Lz9oPXRocy01LjYmaWQ9MTcxYjdjM2MzZGI5OGI1
OTM5ZDI4ZDBjOTZiMzg0ZWRkYTk1Y2VjMwo+IAo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4gPiA+ICsJ
CQkJfTsKPiA+ID4gKwo+ID4gPiArCQkJCWNwdTFfdmVyeV9ob3Q6IGNwdS12ZXJ5LWhvdCB7Cj4g
PiA+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEwMDAwMD47Cj4gPiA+ICsJCQkJCWh5c3RlcmVzaXMg
PSA8MD47Cj4gPiA+ICsJCQkJCXR5cGUgPSAiY3JpdGljYWwiOwo+ID4gPiArCQkJCX07Cj4gPiA+
ICsJCQl9Owo+ID4gPiArCj4gPiA+ICsJCQljb29saW5nLW1hcHMgewo+ID4gPiArCQkJCWNwdS1o
b3QtbGltaXQgewo+ID4gPiArCQkJCQl0cmlwID0gPCZjcHUxX2hvdD47Cj4gPiA+ICsJCQkJCWNv
b2xpbmctZGV2aWNlID0gPCZjcHUxMDAgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJTUlU
PiwKPiA+ID4gKwkJCQkJCQkgPCZjcHUxMDEgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05PX0xJ
TUlUPiwKPiA+ID4gKwkJCQkJCQkgPCZjcHUxMDIgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFMX05P
X0xJTUlUPiwKPiA+ID4gKwkJCQkJCQkgPCZjcHUxMDMgVEhFUk1BTF9OT19MSU1JVCBUSEVSTUFM
X05PX0xJTUlUPjsKPiA+ID4gKwkJCQl9Owo+ID4gPiArCQkJfTsKPiA+ID4gIAkJfTsKPiA+ID4g
IAo+ID4gPiAgCQlncHVfdGhlcm1hbDogZ3B1LXRoZXJtYWwgewo+ID4gPiAKPiA+IAo+ID4gCj4g
PiAtLSAKPiA+ICA8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBz
b3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCj4gPiAKPiA+IEZvbGxvdyBMaW5hcm86ICA8aHR0
cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8Cj4gPiA8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8Cj4gPiA8aHR0cDovL3d3dy5saW5h
cm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwo+ID4gCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
