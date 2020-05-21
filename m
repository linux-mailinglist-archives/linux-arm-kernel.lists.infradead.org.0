Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987A1DCE4C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:39:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JL62cyxMYwcFJTQl+d+BY+fD9Gjt31wA676s7ViBTok=; b=eaqNRKLncPz53tYU22bcdeDTm
	ww0kJ/WRx/EQS/Vl+bSiw61Jj8nO5OXPi1Ogy9bjrnV00w9seWScRgLtd/dedu2m/cgv5n33yxRlJ
	DotNuu5WI1/HJo3oQSdYIwSOfLMgdoE2uVJYRxtihA9Pbb3zg/JgRZuiagNyAV8bU4Gvd4DYbqoD5
	mwv2UJo2TqS2qIvjWeBVgTpBTjQFHX1HwnvSd5bKEWrcS/7otVmSq55dkiYPqAvEFtM94+kURlrKZ
	3nOUjyluuDdM47fAnRl2lW7xo5+asuq7ay1cOEZcLKYtmOx41iJkkKeMNI3PmhoTm0N3dsFIcRdlr
	PecOhmjJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jblPv-0008CH-3U; Thu, 21 May 2020 13:39:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jblPk-0008BI-5f
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:39:13 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A35EE20721;
 Thu, 21 May 2020 13:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590068351;
 bh=TfAZkkutYSOlNpPiP4pi8OhLkiyDbz6QBQtY66/cLjQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=E0QRUi7kBKLGth89zdLY8dQxeszAfwgG5OQ9GfIeI9vy7ToRxp5CT/ln0Vgse12jp
 aGFbweXhukyKR7Bx2H0uffkKvtw4qhQi9v67LLlisBtsl3wIQiE6ReoHmWBRcBBJWB
 5DlXciDrIxRx/kUgOVypkLRI3r43OPKZ/ijxPGJ4=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jblPi-00EF5t-0e; Thu, 21 May 2020 14:39:10 +0100
MIME-Version: 1.0
Date: Thu, 21 May 2020 14:39:09 +0100
From: Marc Zyngier <maz@kernel.org>
To: =?UTF-8?Q?J=C3=A9r=C3=B4me_Pouiller?= <jerome.pouiller@silabs.com>
Subject: Re: Possible race while masking IRQ on Allwinner A20
In-Reply-To: <4055631.Zo4jul7Flx@pc-42>
References: <11042983.UNsANRFJuY@pc-42>
 <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
 <7b8772cbdb9ed907981b18a0ffbc7762@kernel.org> <4055631.Zo4jul7Flx@pc-42>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <faca3f8ee1269b70b46a271dbdf00265@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: jerome.pouiller@silabs.com, maxime@cerno.tech,
 linux-arm-kernel@lists.infradead.org, marc.dorval@silabs.com, wens@csie.org,
 tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_063912_257665_C6B0D580 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Marc Dorval <marc.dorval@silabs.com>, Chen-Yu Tsai <wens@csie.org>,
 Thomas Gleixner <tglx@linutronix.de>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0yMSAxNDoyOCwgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6Cj4gT24gVGh1cnNk
YXkgMjEgTWF5IDIwMjAgMTA6MDI6NDggQ0VTVCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+IE9uIDIw
MjAtMDUtMjEgMDg6MjYsIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4+ID4gT24gVHVlLCBNYXkgMTks
IDIwMjAgYXQgMTA6NTk6MjZBTSArMDIwMCwgSsOpcsO0bWUgUG91aWxsZXIgd3JvdGU6Cj4gWy4u
Ll0KPj4gPj4gTmV2ZXJtaW5kLCBJIHRyaWVkIHRvIHVzZSBhIGxldmVsIHRyaWdnZXJlZCBJUlEg
KGFuZCBteSByZXF1ZXN0IGlzIG9uCj4+ID4+IHRoaXMgcGFydCkuIEFzIHlvdSBjYW4gc2VlIGlu
IHRoZSB3ZnggZHJpdmVyIChpbiAgYnVzX3NkaW8uYyBhbmQKPj4gPj4gYmguYyksIEkgdXNlIGEg
dGhyZWFkZWQgSVJRIGZvciB0aGF0LiBVbmZvcnR1bmF0ZWx5LCBJIHJlY2VpdmUgc29tZSBJUlFz
Cj4+ID4+IHR3aWNlLgo+PiA+PiBJIHRyYWNlZCB0aGUgcHJvYmxlbSwgSSBnZXQ6Cj4+ID4+Cj4+
ID4+ICBRU0dSZW5kZXJUaHJlYWQtOTgxICAgWzAwMF0gZC5oLiAgIDI0Ny40ODU1MjQ6IGlycV9o
YW5kbGVyX2VudHJ5OiBpcnE9ODAgbmFtZT13ZngKPj4gPj4gIFFTR1JlbmRlclRocmVhZC05ODEg
ICBbMDAwXSBkLmguICAgMjQ3LjQ4NTU0NzogaXJxX2hhbmRsZXJfZXhpdDogaXJxPTgwIHJldD1o
YW5kbGVkCj4+ID4+ICBRU0dSZW5kZXJUaHJlYWQtOTgxICAgWzAwMF0gZC5oLiAgIDI0Ny40ODU2
MDA6IGlycV9oYW5kbGVyX2VudHJ5OiBpcnE9ODAgbmFtZT13ZngKPj4gPj4gIFFTR1JlbmRlclRo
cmVhZC05ODEgICBbMDAwXSBkLmguICAgMjQ3LjQ4NTYwNjogaXJxX2hhbmRsZXJfZXhpdDogaXJx
PTgwIHJldD1oYW5kbGVkCj4+ID4+ICAgICAgIGlycS84MC13ZngtMjYwICAgWzAwMV0gLi4uLiAg
IDI0Ny40ODU4Mjg6IGlvX3JlYWQzMjogQ09OVFJPTDogMDAwMGYwNDYKPj4gPj4gICAgICAgaXJx
LzgwLXdmeC0yNjAgICBbMDAxXSAuLi4uICAgMjQ3LjQ4NjA3MjogaW9fcmVhZDMyOiBDT05UUk9M
OiAwMDAwZjA0Ngo+PiA+PiAgICAga3dvcmtlci8xOjFILTExNiAgIFswMDFdIC4uLi4gICAyNDcu
NDg2MjE0OiBpb19yZWFkOiBRVUVVRTogOGIgMDAgODQgMTggMDAgMDAgMDAgMDAgMDEgMDAgMTUg
ODIgMmIgNDggMDEgMWUgODggNDIgMzAgMDAgMDggNmIgZDcgYzMgNTMgZTAgMjggODAgODggNjcg
MzIgYWYgLi4uICgxOTIgYnl0ZXMpCj4+ID4+ICAgICBrd29ya2VyLzE6MUgtMTE2ICAgWzAwMV0g
Li4uLiAgIDI0Ny40OTMwOTc6IGlvX3JlYWQ6IFFVRVVFOiAwMCAwMCAwMCAwMCAwMCAwMCAwMCAw
MCAwNiAwNiAwMCA2YSAzZiA5NSAwMCA2MCAwMCAwMCAwMCAwMCAwOCA2MiAwMCAwMCAwMSAwMCA1
ZSAwMCAwMCAwNyAyOCA4MCAuLi4gKDE5MiBieXRlcykKPj4gPj4gICAgIFsuLi5dCj4+ID4+Cj4+
ID4+IE9uIHRoaXMgdHJhY2UsIHdlIGNhbiBzZWU6Cj4+ID4+ICAgLSB0aGUgaGFyZCBJUlEgaGFu
ZGxlcgo+PiA+PiAgIC0gdGhlIElSUSBhY2tub3dsZWRnZSBmcm9tIHRoZSB0aHJlYWQgaXJxLzgw
LXdmeC0yNjAKPj4gPj4gICAtIHRoZSBhY2Nlc3MgdG8gdGhlIGRhdGEgZnJvbSBrd29ya2VyLzE6
MUgtMTE2Cj4+ID4+Cj4+ID4+IEFzIGZhciBhcyBJIHVuZGVyc3RhbmQsIHRoZSBmaXJzdCBjYWxs
IHRvIHRoZSBJUlEgaGFuZGxlciAoYXQKPj4gPj4gMjQ3LjQ4NTUyNCkgc2hvdWxkIG1hc2sgdGhl
IElSUSA4MC4gU28sIHRoZSBzZWNvbmQgSVJRIChhdCAyNDcuNDg1NjAwKQo+PiA+PiBzaG91bGQg
bm90IGhhcHBlbiBhbmQgdGhlIHRocmVhZCBpcnEvODAgc2hvdWxkIGJlIHRyaWdnZXJlZCBvbmx5
IG9uY2UuCj4+ID4+Cj4+ID4+IERvIHlvdSBoYXZlIGFueSBpZGVhIG9mIHdoYXQgaXMgZ29pbmcg
d3Jvbmcgd2l0aCB0aGlzIElSUT8KPj4gPgo+PiA+IFRoYXQncyBwcmV0dHkgd2VpcmQgaW5kZWVk
LiBNeSBmaXJzdCBndWVzcyB3YXMgdGhhdCB5b3Ugd2VyZW4ndCB1c2luZwo+PiA+IElSUUZfT05F
U0hPVCwgYnV0IGl0IGxvb2tzIGxpa2UgeW91IGFyZS4gTXkgbmV4dCBsZWFkIHdvdWxkIGJlIHRv
IHNlZQo+PiA+IGlmIHRoZSBtYXNrIC8gdW5tYXNrIGhvb2tzIGluIHRoZSBwaW5jdHJsIGRyaXZl
ciBhcmUgcHJvcGVybHkgY2FsbGVkCj4+ID4gKGFuZCBhY3R1YWxseSBkbyB3aGF0IHRoZXkgYXJl
IHN1cHBvc2VkIHRvIGRvKS4gSSdtIG5vdCBzdXJlIHdlIGhhdmUKPj4gPiBhbnkgaW4tdHJlZSB1
c2VyIG9mIGEgdGhyZWFkZWQgSVJRIGF0dGFjaGVkIHRvIHRoZSBwaW5jdHJsIGRyaXZlciwgc28K
Pj4gPiBpdCBtaWdodCBoYXZlIGJlZW4gYnJva2VuIGZvciBxdWl0ZSBzb21lIHRpbWUuCj4+IAo+
PiBXaGF0IGlzIGNlcnRhaW5seSBwdXp6bGluZyBpcyB0aGF0IHRoaXMgZHJpdmVyIGRvZXNuJ3Qg
c2VlbSB0byB1c2UKPj4gdGhyZWFkZWQgSVJRcyBhdCBhbGwuIEluc3RlYWQsIGl0IHVzZXMgaXRz
IG93biB3b3JrcXVldWUgdGhhdCBzZWVtcwo+PiB0byBieXBhc3MgdGhlIGNvcmUgSVJRIHN1YnN5
c3RlbSBhbHRvZ2V0aGVyLiBTbyBhbnkgZ3VhcmFudGVlIHdlJ2QKPj4gZXhwZWN0IGdvZXMgYXQg
b2YgdGhlIHdpbmRvdy4KPj4gCj4+IEl0IGlzIGFsc28gcHJldHR5IHVuY2xlYXIgdG8gbWUgaG93
IHdoZXRoZXIgdGhlIEhXIHN1cHBvcnRzIHN3aXRjaAo+PiBmcm9tIGVkZ2UgdG8gbGV2ZWwgc2ln
bmFsbGluZy4gVGhlIHJlcXVlc3RfaXJxKCkgY2FsbCBkZWZpbml0ZWx5IGFza3MKPj4gZm9yIGVk
Z2UsIGFuZCBJIGRvbid0IGtub3cgaG93IHlvdSdkIGluc3RydWN0IHRoZSBIVyB0byBjaGFuZ2Ug
aXRzCj4+IHNpZ25hbGxpbmcgbWV0aG9kIChpbiBnZW5lcmFsLCBpdCBpc24ndCBwb3NzaWJsZSku
Cj4gCj4gWW91IGFyZSB0YWxraW5nIGFib3V0IHRoZSB3ZnggZHJpdmVyPyBCZSBzdXJlIHlvdSBy
ZWFkIHRoZSByaWdodCAKPiB2ZXJzaW9uCj4gb2YgdGhlIGRyaXZlci4gVGhlIGFiaWxpdHkgdG8g
dXNlIGEgbGV2ZWwtdHJpZ2dlcmVkIElSUSBkb2VzIG5vdCBleGlzdCAKPiBpbgo+IHRoZSBzdGFi
bGUgdHJlZS4gWW91IGhhdmUgdG8gY2hlY2sgdGhlICJzdGFnaW5nLW5leHQiIHRyZWUgZnJvbSAK
PiBHcmVnWzFdLgoKUmlnaHQuIEl0IHN0aWxsIHJlbWFpbnMgdGhhdCBpbiB0aGlzIChuZXcpIGNv
ZGUsIHRoZSB0aHJlYWRlZCBoYW5kbGVyCnNlZW1zIHRvIGtpY2sgYSB3b3JrcXVldWUsIGFuZCBy
ZXR1cm5zIHNheWluZyAiSSdtIGRvbmUiLiBXaXRoIGEgbGV2ZWwKdHJpZ2dlcmVkIGludGVycnVw
dCwgdGhpcyBpcyBsaWtlbHkgdG8gcmVzdWx0IGluIGFuIGludGVycnVwdCBzdG9ybSBpZgpub3Ro
aW5nIG1hc2tzIHRoZSBpbnRlcnJ1cHQuCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3QgZGVh
ZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
