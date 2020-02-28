Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED03173A72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:56:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bq8JYD96z9zNSVXrpd9Cog6sc6vSNRcFteQh/5YQkWI=; b=rZGHx7he7NutJE
	WRnNSvBq2Tgv0IHTCVlrcMwG60702IV3FS/+9RcV8B/RmL4hW1RkiTRxbGdMwD6Vz3CaqW730IWLG
	lqc32XPxZhL6k3l4E7QldNyk9nMLpyF4COY9Fa6a/q5XV6YWyDIeNafblZiubfr53KEigfAPqjM9y
	B5wf22lcONay92j0cnYvZ6/JPExIJf5A+Etrm8zLHjgyvy89ZSw5vT2cBnj4fJFL80Lus02kVrjGs
	S5kmns8kvuMsZ+YQ5SQK7b5hY20YUrUlS0mW11JWnybquchRXhXxPrp5+sa9OFyOokk/34/Ft3ahn
	/AP7dsHemrT90ke/9Qrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7h4G-00087E-BQ; Fri, 28 Feb 2020 14:56:44 +0000
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7h46-000868-6O; Fri, 28 Feb 2020 14:56:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id D085F3941E12;
 Fri, 28 Feb 2020 15:56:31 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1dWdwfYRA7sh; Fri, 28 Feb 2020 15:56:29 +0100 (CET)
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for
 Pinebook Pro
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200227180630.166982-1-t.schramm@manjaro.org>
 <20200227180630.166982-3-t.schramm@manjaro.org> <12370413.gKdrHkWbHd@diego>
From: Tobias Schramm <t.schramm@manjaro.org>
Message-ID: <37190f26-48aa-dcad-d4b1-8a534ba1360e@manjaro.org>
Date: Fri, 28 Feb 2020 15:57:10 +0100
MIME-Version: 1.0
In-Reply-To: <12370413.gKdrHkWbHd@diego>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_065634_382834_4A9EC16E 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.38.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Alexis Ballier <aballier@gentoo.org>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-kernel@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 enric.balletbo@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Vivek Unune <npcomplete13@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgp0aGFua3MgZm9yIHRoZSByZXZpZXcuIEknbGwgaW1wbGVtZW50IHRoZSBjaGFu
Z2VzIGFuZCBzZW5kIGEgdjIuCgo+PiArCQljb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4+ICsJ
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICsJCXBpbmN0cmwtMCA9IDwmcHdybGVkX2dw
aW8gJnNscGxlZF9ncGlvPjsKPj4gKwo+PiArCQlncmVlbi1sZWQgewo+PiArCQkJY29sb3IgPSA8
TEVEX0NPTE9SX0lEX0dSRUVOPjsKPj4gKwkJCWRlZmF1bHQtc3RhdGUgPSAib2ZmIjsKPj4gKwkJ
CWZ1bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1BPV0VSOwo+PiArCQkJZ3Bpb3MgPSA8JmdwaW8wIFJL
X1BCMyBHUElPX0FDVElWRV9ISUdIPjsKPj4gKwkJCWxhYmVsID0gImdyZWVuOmRpc2stYWN0aXZp
dHkiOwo+PiArCQkJbGludXgsZGVmYXVsdC10cmlnZ2VyID0gIm1tYzIiOwo+IGhtbSwgTEVEX0ZV
TkNUSU9OX1BPV0VSIGJ1dCB0cmlnZ2VyIGZvciBtbWMyID8KPiBTbyBpZiB0aGVyZSBpcyBubyBh
Y3Rpdml0eSBvbiB0aGUgTEVEIGl0IGxvb2tzIHRvIGJlIG9mZj8KCkkgc2VlIHdoeSB0aGlzIGlz
IGxvb2tpbmcgd2VpcmQuIEl0IGRvZXMgbm90IG1ha2UgYSB3aG9sZSBsb3Qgb2Ygc2Vuc2UKYXQg
dGhlIG1vbWVudCBhbmQgSSdsbCBjaGFuZ2UgdGhhdCBmb3IgdjIuwqAKCkhvd2V2ZXIgSSBoYXZl
IGEgcGF0Y2ggaW4gdGhlIG1ha2luZyB0aGF0IGFkZHMgIi1pbnZlcnRlZCIgdmFyaWFudHMgZm9y
CmFsbCB0cmlnZ2VycyBzbyB0aGUgcG93ZXIgTEVEIGNhbiBiZSB0dXJuZWQgb2YgYnJpZWZseSB0
byBpbmRpY2F0ZSBtbWMKYWN0aXZpdHkuCgpOb3Qgc3VyZSB3ZXRoZXIgcGVvcGxlIHdpbGwgbGlr
ZSBpdCBvciBub3QgYnV0IEknbGwgdHJ5IGl0IGFzIGEgUkZDLgoKPj4gKwkgKiBvZiB3YWtldXAg
c291cmNlcyB3aXRob3V0IGRpc2FibGluZyB0aGUgd2hvbGUga2V5Cj4gQWxzbyBjYW4geW91IGV4
cGxhaW4gdGhlIHByb2JsZW0gYSBiaXQ/IElmIHRoZXJlIGlzIGEgZGVmaWNpdCBpbiB0aGUgaW5w
dXQKPiBzdWJzeXN0ZW0gcmVnYXJkaW5nIHdha2V1cCBldmVudHMsIGR0IGlzIG5vcm1hbGx5IG5v
dCB0aGUgcGxhY2UgdG8gd29yawo+IGFyb3VuZCB0aGluZ3MgW3dlJ3JlIHN1cHBvc2VkIHRvIGJl
IE9TIGluZGVwZW5kZW50XQoKVGhlIGlzc3VlIGlzIHRoYXQgc29tZSB1c2VycyB3YW50ZWQgdG8g
YmUgYWJsZSB0byBjb250cm9sIHRoZSB3YWtldXAKZnVuY3Rpb25hbGl0eSBvZiB0aGUga2V5cyBz
ZXBhcmF0ZWx5IHZpYSBzeXNmcy4gVGhhdCBkb2VzIG5vdCBzZWVtIHRvIGJlCnBvc3NpYmxlIHdo
ZW4gY29tYmluaW5nIGJvdGgga2V5cyBpbnRvIG9uZSBncGlvLWtleXMgbm9kZS4gQSBtb3JlCmRl
dGFpbGVkIGV4cGxhbmF0aW9uIG9mIHRoZSBpc3N1ZSBjYW4gYmUgZm91bmQgYXQgWzFdLgoKPj4g
KyZpMmMwIHsKPj4gKwljbG9jay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKPj4gKwlpMmMtc2NsLXJp
c2luZy10aW1lLW5zID0gPDE2OD47Cj4+ICsJaTJjLXNjbC1mYWxsaW5nLXRpbWUtbnMgPSA8ND47
Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+ICsJcms4MDg6IHBtaWNAMWIgewo+PiArCQlj
b21wYXRpYmxlID0gInJvY2tjaGlwLHJrODA4IjsKPj4gKwkJcmVnID0gPDB4MWI+Owo+PiArCQkj
Y2xvY2stY2VsbHMgPSA8MT47Cj4+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJ4aW4zMmsiLCAi
cms4MDgtY2xrb3V0MiI7Cj4+ICsJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8zPjsKPj4gKwkJ
aW50ZXJydXB0cyA9IDwxMCBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+PiArCQlwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8JnBtaWNfaW50X2xfZ3Bpbz47Cj4+ICsJ
CXJvY2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyOwo+PiArCQl3YWtldXAtc291cmNlOwo+
PiArCj4+ICsJCXZkZGlvLXN1cHBseSA9IDwmdmNjXzN2MD47Cj4gd2hlcmUgZG9lcyB0aGlzIGNv
bWUgZnJvbT8gQWthIGl0J3Mgbm90IHNwZWNpZmllZCBpbiB0aGUgZHQtYmluZGluZwo+ICh0aG91
Z2ggdGhlIGV4YW1wbGUgZmFsc2VseSB1c2VzIGl0KSBhbmQgYWxzbyBub3QgcmVmZXJlbmNlZCBp
biB0aGUgZHJpdmVyLgoKVGhpcyBkb2VzIGxpa2VseSBjb21lIGZyb20gdGhlIEJTUCBkdHMuIFNl
ZW1zIEkgbWlzc2VkIGl0IHdoaWxlIGNoZWNraW5nCmJpbmRpbmdzLgoKClRoYW5rcyBhZ2FpbiBm
b3IgdGhlIHJldmlldywKClRvYmlhcwoKClsxXSBodHRwczovL2dpdGxhYi5tYW5qYXJvLm9yZy90
c3lzL2xpbnV4LXBpbmVib29rLXByby9pc3N1ZXMvNQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
