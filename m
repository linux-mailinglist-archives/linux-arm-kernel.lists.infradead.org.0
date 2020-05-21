Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5296C1DC82B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 10:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MDqAlbC8+ElgFx5MeTjh8gSz1IgcVipK+h191WT4LkY=; b=QSn+sciw+IE8Qpf0W6sxJ6oMO
	VLn8MhrTux7bt5n3nLIL+R623t21PV7hS9t5FH8DlPYrouosJ8Sm4N72CgvR7vfQQwkEs44MxDVFA
	nudgOzwz5oHDn2kavA/MjHUmohePGh0tZQpWVgnyi/aTNXfuuo10gjBAoTPZFhoNkYvruICs4SEI8
	4GG6EGMuvZ4I40bLwgJZ/0N/DnOLK57gafQV63lsQJcAn3JJBexzjCy/WqhktnXsDPJaec6TByeOm
	4a55NI3fdU7eym6Tl2Q3DAdz2Cj644QxYa+bN9IynjoR1fPUhS+aeL3GTr1DDUrZkJcIxU9zmQsZN
	1vu8IFrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgAT-00031W-VP; Thu, 21 May 2020 08:03:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgAF-00030v-Nh
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 08:02:55 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BAEF206B6;
 Thu, 21 May 2020 08:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590048170;
 bh=20tTTOYEwvoUZhxuG6pTOEJ9kVbHEMoIEq+QIeYr6NM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xmQ6Etw1WmZZALH8oERbv+ThlOwuzHri2L9kza8Aws3ROB+42SKzQGBM9+P39xGIh
 HKs6NHB9nEFS04pYA9BmbWphcV3EmCTl6F7PfZW736erDxqsI3yy3G0HvfE9oTcmev
 bVqJNob4Feer6e21QrecJt5hyFAX38u7wqpXJp5c=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jbgAC-00EAnS-Kf; Thu, 21 May 2020 09:02:48 +0100
MIME-Version: 1.0
Date: Thu, 21 May 2020 09:02:48 +0100
From: Marc Zyngier <maz@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: Possible race while masking IRQ on Allwinner A20
In-Reply-To: <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
References: <11042983.UNsANRFJuY@pc-42>
 <20200521072634.6ig7jcuy5tmvmojf@gilmour.lan>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <7b8772cbdb9ed907981b18a0ffbc7762@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: maxime@cerno.tech, jerome.pouiller@silabs.com,
 linux-arm-kernel@lists.infradead.org, marc.dorval@silabs.com, wens@csie.org,
 tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_010254_413973_146F9FB3 
X-CRM114-Status: GOOD (  27.35  )
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
 Thomas Gleixner <tglx@linutronix.de>,
 =?UTF-8?Q?J=C3=A9r=C3=B4me_Pouiller?= <jerome.pouiller@silabs.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF4aW1lLCBKw6lyw7RtZSwKCk9uIDIwMjAtMDUtMjEgMDg6MjYsIE1heGltZSBSaXBhcmQg
d3JvdGU6Cj4gSGkhCj4gCj4gQWRkaW5nIFRob21hcyBhbmQgTWFyYyBpbiBDYy4KPiAKPiBPbiBU
dWUsIE1heSAxOSwgMjAyMCBhdCAxMDo1OToyNkFNICswMjAwLCBKw6lyw7RtZSBQb3VpbGxlciB3
cm90ZToKPj4gSSBoYXZlIHNvbWUgdHJvdWJsZSB3aXRoIGludGVncmF0aW9uIG9mIHRoZSB3Zngg
ZHJpdmVyWzFdIG9uIEFsbHdpbm5lcgo+PiBBMjAgcGxhdGZvcm0uCj4+IAo+PiBUaGUgY2hpcCBX
RjIwMCBpcyBjb25uZWN0ZWQgdG8gdGhlIFNESU8gYnVzLiBBdCB0aGUgYmVnaW5uaW5nLCBJIHRy
aWVkCj4+IHRvIHVzZSB0aGUgSVJRIHByb3ZpZGVkIGJ5IHRoZSBTRElPIGJ1cy4gSG93ZXZlciwg
SSBoYXZlIG5vdGljZWQgSQo+PiByZWNlaXZlZCBzb21lIElSUXMgdHdpY2UuIFNpbmNlIHRoZSBJ
UlEgbGluZSBpcyBtdWx0aXBsZXhlZCB3aXRoIHRoZQo+PiBkYXRhIGxpbmUsIGl0IGlzIG5vdCB2
ZXJ5IGNsZWFyIGlmIGl0IGlzIGEgYnVnLCBvciBpZiB0aGUgU0RJTyBkZXZpY2UKPj4gaGFzIHRv
IHN1cHBvcnQgdGhhdC4KPj4gCj4+IFRoZSBjaGlwIFdGMjAwIGFsbG93cyB0byB1c2UgYSBkZWRp
Y2F0ZWQgbGluZSBmb3IgdGhlIElSUSAoYWthCj4+ICJPdXQtT2YtQmFuZCIgSVJRKS4gU28gSSBo
YXZlIGVuYWJsZWQgdGhpcyBmZWF0dXJlIHdpdGggYSBlZGdlIAo+PiB0cmlnZ2VyZWQKPj4gSVJR
LiBIb3dldmVyLCBJIG1pc3NlZCBzb21lIElSUXMuIEluZGVlZCwgaXQgc2VlbXMgdGhhdCBBbGx3
aW5uZXIgdXNlIAo+PiBhCj4+IDMyS0h6IGNsb2NrIHRvIHNhbXBsZSB0aGUgSVJRcy4gSXQgaXMg
bm90IGZhc3QgZW5vdWdoIGZvciB1cy4gSSB0aGluayAKPj4gaXQKPj4gZXhwbGFpbnMgd2h5IHdl
IG1pc3Mgc29tZSBJUlFzICh1c2luZyB0aGUgYXR0cmlidXRlIAo+PiAiaW5wdXQtZGVib3VuY2Ui
WzJdLAo+PiBJIHRyaWVkIHRvIGVuYWJsZSB0aGUgMjRNaHogY2xvY2ssIGJ1dCB3aXRob3V0IHN1
Y2Nlc3MpLgo+IAo+IFdpdGhvdXQgc3VjY2VzcyBhcyBpbiB5b3UgY291bGRuJ3QgbWFrZSBpdCB1
c2UgdGhlIDI0TUh6IGNsb2NrLCBvciAKPiB1c2luZyBpdAo+IGRpZG4ndCBjaGFuZ2UgYW55dGhp
bmc/Cj4gCj4gQnV0IHllYWgsIG1pc3NpbmcgYW4gZWRnZSBpbnRlcnJ1cHQgaXMgYm91bmQgdG8g
aGFwcGVuIGF0IHNvbWUgcG9pbnQsIAo+IGFuZCBhCj4gbGV2ZWwgaW50ZXJydXB0IGlzIGdvaW5n
IHRvIGJlIG1vcmUgcmVsaWFibGUgKGVzcGVjaWFsbHkgaWYgeW91IGNhbid0IAo+IHJlY292ZXIK
PiBmcm9tIGEgbWlzc2VkIGludGVycnVwdCkuCj4gCj4+IE5ldmVybWluZCwgSSB0cmllZCB0byB1
c2UgYSBsZXZlbCB0cmlnZ2VyZWQgSVJRIChhbmQgbXkgcmVxdWVzdCBpcyBvbgo+PiB0aGlzIHBh
cnQpLiBBcyB5b3UgY2FuIHNlZSBpbiB0aGUgd2Z4IGRyaXZlciAoaW4gIGJ1c19zZGlvLmMgYW5k
IAo+PiBiaC5jKSwKPj4gSSB1c2UgYSB0aHJlYWRlZCBJUlEgZm9yIHRoYXQuIFVuZm9ydHVuYXRl
bHksIEkgcmVjZWl2ZSBzb21lIElSUXMgCj4+IHR3aWNlLgo+PiBJIHRyYWNlZCB0aGUgcHJvYmxl
bSwgSSBnZXQ6Cj4+IAo+PiAgUVNHUmVuZGVyVGhyZWFkLTk4MSAgIFswMDBdIGQuaC4gICAyNDcu
NDg1NTI0OiBpcnFfaGFuZGxlcl9lbnRyeTogCj4+IGlycT04MCBuYW1lPXdmeAo+PiAgUVNHUmVu
ZGVyVGhyZWFkLTk4MSAgIFswMDBdIGQuaC4gICAyNDcuNDg1NTQ3OiBpcnFfaGFuZGxlcl9leGl0
OiAKPj4gaXJxPTgwIHJldD1oYW5kbGVkCj4+ICBRU0dSZW5kZXJUaHJlYWQtOTgxICAgWzAwMF0g
ZC5oLiAgIDI0Ny40ODU2MDA6IGlycV9oYW5kbGVyX2VudHJ5OiAKPj4gaXJxPTgwIG5hbWU9d2Z4
Cj4+ICBRU0dSZW5kZXJUaHJlYWQtOTgxICAgWzAwMF0gZC5oLiAgIDI0Ny40ODU2MDY6IGlycV9o
YW5kbGVyX2V4aXQ6IAo+PiBpcnE9ODAgcmV0PWhhbmRsZWQKPj4gICAgICAgaXJxLzgwLXdmeC0y
NjAgICBbMDAxXSAuLi4uICAgMjQ3LjQ4NTgyODogaW9fcmVhZDMyOiBDT05UUk9MOiAKPj4gMDAw
MGYwNDYKPj4gICAgICAgaXJxLzgwLXdmeC0yNjAgICBbMDAxXSAuLi4uICAgMjQ3LjQ4NjA3Mjog
aW9fcmVhZDMyOiBDT05UUk9MOiAKPj4gMDAwMGYwNDYKPj4gICAgIGt3b3JrZXIvMToxSC0xMTYg
ICBbMDAxXSAuLi4uICAgMjQ3LjQ4NjIxNDogaW9fcmVhZDogUVVFVUU6IDhiIDAwIAo+PiA4NCAx
OCAwMCAwMCAwMCAwMCAwMSAwMCAxNSA4MiAyYiA0OCAwMSAxZSA4OCA0MiAzMCAwMCAwOCA2YiBk
NyBjMyA1MyAKPj4gZTAgMjggODAgODggNjcgMzIgYWYgLi4uICgxOTIgYnl0ZXMpCj4+ICAgICBr
d29ya2VyLzE6MUgtMTE2ICAgWzAwMV0gLi4uLiAgIDI0Ny40OTMwOTc6IGlvX3JlYWQ6IFFVRVVF
OiAwMCAwMCAKPj4gMDAgMDAgMDAgMDAgMDAgMDAgMDYgMDYgMDAgNmEgM2YgOTUgMDAgNjAgMDAg
MDAgMDAgMDAgMDggNjIgMDAgMDAgMDEgCj4+IDAwIDVlIDAwIDAwIDA3IDI4IDgwIC4uLiAoMTky
IGJ5dGVzKQo+PiAgICAgWy4uLl0KPj4gCj4+IE9uIHRoaXMgdHJhY2UsIHdlIGNhbiBzZWU6Cj4+
ICAgLSB0aGUgaGFyZCBJUlEgaGFuZGxlcgo+PiAgIC0gdGhlIElSUSBhY2tub3dsZWRnZSBmcm9t
IHRoZSB0aHJlYWQgaXJxLzgwLXdmeC0yNjAKPj4gICAtIHRoZSBhY2Nlc3MgdG8gdGhlIGRhdGEg
ZnJvbSBrd29ya2VyLzE6MUgtMTE2Cj4+IAo+PiBBcyBmYXIgYXMgSSB1bmRlcnN0YW5kLCB0aGUg
Zmlyc3QgY2FsbCB0byB0aGUgSVJRIGhhbmRsZXIgKGF0Cj4+IDI0Ny40ODU1MjQpIHNob3VsZCBt
YXNrIHRoZSBJUlEgODAuIFNvLCB0aGUgc2Vjb25kIElSUSAoYXQgMjQ3LjQ4NTYwMCkKPj4gc2hv
dWxkIG5vdCBoYXBwZW4gYW5kIHRoZSB0aHJlYWQgaXJxLzgwIHNob3VsZCBiZSB0cmlnZ2VyZWQg
b25seSBvbmNlLgo+PiAKPj4gRG8geW91IGhhdmUgYW55IGlkZWEgb2Ygd2hhdCBpcyBnb2luZyB3
cm9uZyB3aXRoIHRoaXMgSVJRPwo+IAo+IFRoYXQncyBwcmV0dHkgd2VpcmQgaW5kZWVkLiBNeSBm
aXJzdCBndWVzcyB3YXMgdGhhdCB5b3Ugd2VyZW4ndCB1c2luZwo+IElSUUZfT05FU0hPVCwgYnV0
IGl0IGxvb2tzIGxpa2UgeW91IGFyZS4gTXkgbmV4dCBsZWFkIHdvdWxkIGJlIHRvIHNlZSAKPiBp
ZiB0aGUKPiBtYXNrIC8gdW5tYXNrIGhvb2tzIGluIHRoZSBwaW5jdHJsIGRyaXZlciBhcmUgcHJv
cGVybHkgY2FsbGVkIChhbmQgCj4gYWN0dWFsbHkgZG8KPiB3aGF0IHRoZXkgYXJlIHN1cHBvc2Vk
IHRvIGRvKS4gSSdtIG5vdCBzdXJlIHdlIGhhdmUgYW55IGluLXRyZWUgdXNlciBvZiAKPiBhCj4g
dGhyZWFkZWQgSVJRIGF0dGFjaGVkIHRvIHRoZSBwaW5jdHJsIGRyaXZlciwgc28gaXQgbWlnaHQg
aGF2ZSBiZWVuIAo+IGJyb2tlbiBmb3IKPiBxdWl0ZSBzb21lIHRpbWUuCgpXaGF0IGlzIGNlcnRh
aW5seSBwdXp6bGluZyBpcyB0aGF0IHRoaXMgZHJpdmVyIGRvZXNuJ3Qgc2VlbSB0byB1c2UKdGhy
ZWFkZWQgSVJRcyBhdCBhbGwuIEluc3RlYWQsIGl0IHVzZXMgaXRzIG93biB3b3JrcXVldWUgdGhh
dCBzZWVtcwp0byBieXBhc3MgdGhlIGNvcmUgSVJRIHN1YnN5c3RlbSBhbHRvZ2V0aGVyLiBTbyBh
bnkgZ3VhcmFudGVlIHdlJ2QKZXhwZWN0IGdvZXMgYXQgb2YgdGhlIHdpbmRvdy4KCkl0IGlzIGFs
c28gcHJldHR5IHVuY2xlYXIgdG8gbWUgaG93IHdoZXRoZXIgdGhlIEhXIHN1cHBvcnRzIHN3aXRj
aApmcm9tIGVkZ2UgdG8gbGV2ZWwgc2lnbmFsbGluZy4gVGhlIHJlcXVlc3RfaXJxKCkgY2FsbCBk
ZWZpbml0ZWx5IGFza3MKZm9yIGVkZ2UsIGFuZCBJIGRvbid0IGtub3cgaG93IHlvdSdkIGluc3Ry
dWN0IHRoZSBIVyB0byBjaGFuZ2UgaXRzCnNpZ25hbGxpbmcgbWV0aG9kIChpbiBnZW5lcmFsLCBp
dCBpc24ndCBwb3NzaWJsZSkuCgpUaGFua3MsCgogICAgICAgICBNLgotLSAKSmF6eiBpcyBub3Qg
ZGVhZC4gSXQganVzdCBzbWVsbHMgZnVubnkuLi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
