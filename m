Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7504317587F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hRQcz29OfECWnj4D3lvzLHMyYtpn70iaX4IsRQYGOT0=; b=rWj04x2SDs3oMr
	iVFZVBaEAvTYBW1iDs1cKdUj2+Pr+aafNY6nuTao466YJYcno06x3pInhF/BYiQQWIVoUCn3FZd+j
	O+vB5Oq0TVhpaUI51JMh79bfHD8gLSssagHT1UbWFFya1AND2nvlQMnlghnt2hCMPP2AE4c6VQzXz
	hTX/1BTEeW6nJtkpWs5LeAdE4Umk0cd0vKMg+axS3ddPnjUDesScxE1EzBI91H16R0akFoP2Ikx5m
	K96G2LFB/WcyRufrIBW5NyB3riG32GnaIA5WD26L0/xu41hi9mPy1dcgcFCFZqgZuRZrN3jAGAeJI
	c6GEZdq8bKGH8GC7adkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iQF-0005JL-6z; Mon, 02 Mar 2020 10:35:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iQ4-0004lZ-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:35:30 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1j8iQ3-0006CW-My; Mon, 02 Mar 2020 11:35:27 +0100
Subject: Re: [PATCH 2/3] ARM: dts: stm32: add STM32MP1-based Linux Automation
 MC-1 board
To: Alexandre Torgue <alexandre.torgue@st.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 linux-stm32@st-md-mailman.stormreply.com, mcoquelin.stm32@gmail.com,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
References: <20200226143826.1146-1-a.fatoum@pengutronix.de>
 <20200226143826.1146-2-a.fatoum@pengutronix.de>
 <244a4502-03e0-836c-2ce2-7fa6cef3c188@st.com>
 <fbba971d7501c774ce0081f22dcff4ef74002a4d.camel@pengutronix.de>
 <e227de9a-7440-7e1f-2928-5648cbbe44c1@st.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a9a7c18b-c8a2-f566-b8a0-198551f60827@pengutronix.de>
Date: Mon, 2 Mar 2020 11:35:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <e227de9a-7440-7e1f-2928-5648cbbe44c1@st.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023529_020798_031AFCFB 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzLzIvMjAgMTE6MjkgQU0sIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4gT24gMy8y
LzIwIDExOjE4IEFNLCBMdWNhcyBTdGFjaCB3cm90ZToKPj4gT24gTW8sIDIwMjAtMDMtMDIgYXQg
MTE6MDYgKzAxMDAsIEFsZXhhbmRyZSBUb3JndWUgd3JvdGU6Cj4+Pj4gKwo+Pj4+ICsmZ3B1IHsK
Pj4+PiArwqDCoMKgIHN0YXR1cyA9ICJva2F5IjsKPj4+PiArfTsKPj4KPj4gVGhpcyBxdWVzdGlv
biBpcyBtb3JlIHRvIHRoZSBTVCBndXlzIHRoYW4gdGhpcyBzcGVjaWZpYyBEVDogV2h5IGlzIHRo
ZQo+PiBHUFUgbWFya2VkIGFzIGRpc2FibGVkIGluIHRoZSBTb0MgZHRzaSBmaWxlPyBUaGlzIGRl
dmljZSBpcyBhbHdheXMKPj4gcHJlc2VudCBvbiB0aGUgU29DIGFuZCBBRkFJQ1MgdGhlcmUgYXJl
IG5vIGJvYXJkIGxldmVsIGRlcGVuZGVuY2llcywgc28KPj4gdGhlcmUgaXMgbm8gcmVhc29uIHRv
IGhhdmUgaXQgZGlzYWJsZWQgYnkgZGVmYXVsdCwgcmlnaHQ/IFJlbW92aW5nIHRoZQo+PiBzdGF0
dXMgcHJvcGVydHkgZnJvbSB0aGUgZHRzaSB3b3VsZCByZW1vdmUgdGhlIG5lZWQgZm9yIHRoaXMg
b3ZlcnJpZGUKPj4gb24gdGhlIGJvYXJkIERULgo+IAo+IFlvdSBhcmUgcmlnaHQuIFdpdGggbmV3
IHN0bTMyIGRldmljZSB0cmVlIGRpdmVyc2l0eSwgaXQgbWFrZXMgbm8gbG9uZ2VyIHNlbnMgdG8g
ZGlzYWJsZSBHUFUgbm9kZSBpbiBzdG0zMm1wMTU3IGR0c2kgZmlsZS4gSW5kZWVkLCB3ZSB1c2Ug
bm93IGRlZGljYXRlZCBmaWxlcyBmb3IgZWFjaCBTb0MgKHN0bTMybXAxNTEgLyBzdG0zMm1wMTUz
IC9zdG0zMm1wMTU3KS4KPiAKPiBBaG1hZCwgY2FuIHlvdSBhZGQgdGhpcyBtb2RpZmljYXRpb24g
aW4geW91ciBzZXJpZXMgcGxlYXNlID8KCldpbGwgcHJlcHJlbmQgaXQgdG8gdjIuCgpDaGVlcnMs
CkFobWFkCgotLSAKUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAg
ICAgICAgICAgICAgICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGls
ZGVzaGVpbSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkx
Ny0wICAgIHwKQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4
OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
