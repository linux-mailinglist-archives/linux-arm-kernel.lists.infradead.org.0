Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E71184AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjKBJx62YPUDDcE3oGTS4ykSijm//ZyNCYnHfnQtfKU=; b=ANYWVCSaZFajVR
	ez4r+8oPtyRyoik57jD/YFniNAAN82vnBFEWBRbxuMoUIOjfClxdX2zos6GDTerK33d2h+XPjwtN2
	y41/pgEu4P0NZrnhYLaxe6c+Gsx4utao7gIe3HtM2QGFOATMfkzRI61ntmRMIkRfby9E3zxdXlRM0
	+l5xz7i886ukrDV4y/Rt9oYi3BZwfKBzGEQRtsm0GaLhMMt2f/eG2e2KHNAP0Zz3AaV6RifiYgPUd
	PZMLhXDj6r9b0F0OLDPfwCxirFI2mWXJYXALruvXusIPmPXZkfAH6S12bei2s/0z6SgQ+r+KTmthE
	wUY9DzprMSaZQy3jOEjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecZ2-0008AA-Ot; Tue, 10 Dec 2019 10:16:20 +0000
Received: from mout.web.de ([212.227.15.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecYt-00088Y-D8; Tue, 10 Dec 2019 10:16:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de;
 s=dbaedf251592; t=1575972961;
 bh=3lu1/bDzlHQWncDoTWVRGXTFeZBsALALSvK0V4xQUsY=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=KFb25BYRz38RT7bBf9g68vibTN2tb4JGx9opUc1mZNJ4Not8GUBMr7buSnrGJUqQx
 7axuRPjrS5qBaXUm59c8a/RaxEmtkkRg7iTR1WqRYdIGTgMCcre1VaK47DMHJqGnNI
 f0BU9UDZvOg/etK6APcDSsREplsuuJu18HeoRsQs=
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.43.108] ([89.204.137.56]) by smtp.web.de (mrweb003
 [213.165.67.108]) with ESMTPSA (Nemesis) id 0LZvfZ-1htANw25Az-00lm0J; Tue, 10
 Dec 2019 11:16:01 +0100
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi module
 at sdio0
To: Kalle Valo <kvalo@codeaurora.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>
References: <20191209223822.27236-1-smoch@web.de> <2668270.pdtvSLGib8@diego>
 <2cf70216-8d98-4122-4f4e-b8254089a017@web.de> <6162240.GiEx4hqPFh@diego>
 <0101016eef171394-2c71e1b8-45b9-4e38-96f9-2841dd0607ba-000000@us-west-2.amazonses.com>
From: Soeren Moch <smoch@web.de>
Message-ID: <e8742d18-9dd9-bd97-1d4a-0c5312501b24@web.de>
Date: Tue, 10 Dec 2019 11:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <0101016eef171394-2c71e1b8-45b9-4e38-96f9-2841dd0607ba-000000@us-west-2.amazonses.com>
Content-Language: en-GB
X-Provags-ID: V03:K1:BmouxPORzFnUtMfMs9rkSg06N45biyMWFv+dkxM532l+MBmsCq9
 NKrsNRGYig8S6iERHaN1OEDubM+pu6B4PQehaKPwuJUFbld0HZvWXcyJ1iCZKgK+h1b76D6
 OwuGqbC6k/i4YNYXPy1kRnaSgy69AyTCLqMbYxtDKTTvk8OoS2CaXCk90NFm9+Y6kvbd5Y2
 0ekhcoci7MjDZSaZonzrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JdUVEkMY6j4=:YPPupy08imKC1CuXy723Fb
 oojqA1+dEiyvgS6ZUBJAZ5A65eTviEtBJV4o4OCd9ZA0kmqfrU80oq0mQclUw/wMuiqNbxiCR
 y3Da5meb5biCNAXVnAmQdeYt3q/eFc2EPwS3yjNRHv1nfPso7gsgJz7qXwGCRNvtMiKifD0Nb
 ma8Hl8QLWIb4RYsLeGebnCYbfNUx+9uxFhYtM3unf340sOM0G4jBgHmJQa7k3pV0dP/WByyFR
 3KD3zRjPgaOaS2P8Hos9QmYpyzRkb7ibRvaAzLfiDmqDqD4M+z5/oP6gZ5+6N/zurIPDpEgNc
 7Dkum/I2cTVCcVwNCJSmuRR+KW6hgNJbCneE4NBvWpHMbjOtAO/86+inVWXFOVLEN+jtOU9qZ
 be7EN7NjWMk7OBd5jHdWtj62PoGnd3/SZaF8tHEjWOrEnsGROV6ElDlSQpM8muQlkuqzH++H6
 /F9+ghMAT/MTY+U162haEdsMeN3DSYtZuNWhs9Pp6CVre4pB3eisliYdbTAzIunnA7iKFNf0c
 q6/Dyf2qv0hWHMqQBamdigB/TMxAgzmlPP/4BbFeYHgEAcbQvuMC6q1Y+qGeWtMBr+pUSMgCD
 pRgSgyJtjBQzR92BWJG8jV4viPa/pHr9iQCcVowjH8n8GvHAh+2WXMn4LXCQiMrfXpp7IJG1E
 qRhinRvo+RsPHe5n3//NEkdSVJiqi8j9cc3mu9nDbm7svfuTupNsQNrmbL+qxs36z0Eunprxm
 djgO6OSSSrhJUbglhLouU3/dNMWySsEpF+UDGOoTb37xsgE4t3uK+gCGNK2lsm7a5EMLPJ6gh
 IjfH2+CYhAPEs36M+7OykUU8DD3p5fQ7PDsYvJ60leWKTChqOSAlmZ8kBYftkBmGy6f/kA0SW
 z0qnFc4vt16ogKGe9d+Psh2aB4cZup83qt7ybXBfqe42hDs6vlYAZakOIbBiOHYq9Pmbbfhmi
 OBTDn4mXyonqoD6LY5e06xvv779fPeFeIvIejlH+9Owo50mtK17RDqY1Ug0uRb3CrsJi/5DGt
 Sk7WpDtlOam9IzBt9otYxh7d+pVc+1hEiZxZlTTZAvr9ORNWwaYrVh4VdBisOI5LMVoCbUq63
 dbXBbt7JW2CX/pqtLvdti16g+lFrtaL1m7J4fYosqSG9ICUMKQhoxdbqXXlJD00XM66nK/Zu7
 /Tr4MHJlY7TFY4F3JsCPRei2XP0PUQ9BBeFZwM80D9dA21UTof7jWkvPnZHcRiU3JOV7mEaXB
 rnyk7ZdfPzyWIuqkjyOqA9ffuicoDRxB6qKykZA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_021611_737253_489D509F 
X-CRM114-Status: GOOD (  16.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (smoch[at]web.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.15.4 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.4 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: brcm80211-dev-list.pdl@broadcom.com, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, brcm80211-dev-list@cypress.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxMC4xMi4xOSAxMDoxNCwgS2FsbGUgVmFsbyB3cm90ZToKPiBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cml0ZXM6Cj4KPj4gSGkgU29lcmVuLAo+Pgo+PiBBbSBEaWVuc3Rh
ZywgMTAuIERlemVtYmVyIDIwMTksIDAwOjI5OjIxIENFVCBzY2hyaWViIFNvZXJlbiBNb2NoOgo+
Pj4gT24gMTAuMTIuMTkgMDA6MDgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4+IEFtIE1vbnRh
ZywgOS4gRGV6ZW1iZXIgMjAxOSwgMjM6Mzg6MjIgQ0VUIHNjaHJpZWIgU29lcmVuIE1vY2g6Cj4+
Pj4+IFJvY2tQcm82NCBzdXBwb3J0cyBhbiBBbXBhayBBUDYzNTlTQSBiYXNlZCB3aWZpL2J0IGNv
bWJvIG1vZHVsZS4KPj4+Pj4gVGhlIEJDTTQzNTkvOSB3aWZpIGNvbnRyb2xsZXIgaW4gdGhpcyBt
b2R1bGUgaXMgY29ubmVjdGVkIHRvIHNkaW8wLAo+Pj4+PiBlbmFibGUgdGhpcyBpbnRlcmZhY2Uu
Cj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFNvZXJlbiBNb2NoIDxzbW9jaEB3ZWIuZGU+Cj4+
Pj4+IC0tLQo+Pj4+PiBOb3Qgc3VyZSB3aGVyZSB0byBwbGFjZSBleGFjdGx5IHRoZSBzZGlvMCBu
b2RlIGluIHRoZSBkdHMgYmVjYXVzZQo+Pj4+PiBleGlzdGluZyBzZCBub2RlcyBhcmUgbm90IHNv
cnRlZCBhbHBoYWJldGljYWxseS4KPj4+Pj4KPj4+Pj4gVGhpcyBsYXN0IHBhdGNoIGluIHRoaXMg
YnJjbWZtYWMgcGF0Y2ggc2VyaWVzIHByb2JhYmx5IHNob3VsZCBiZSBwaWNrZWQKPj4+Pj4gdXAg
YnkgSGVpa28gaW5kZXBlbmRlbnRseSBvZiB0aGUgcmVzdCBvZiB0aGlzIHNlcmllcy4gSXQgd2Fz
IHNlbnQgdG9nZXRoZXIKPj4+Pj4gdG8gc2hvdyBob3cgdGhpcyBicmNtZm1hYyBleHRlbnNpb24g
Zm9yIDQzNTktc2RpbyBzdXBwb3J0IHdpdGggUlNEQiBpcwo+Pj4+PiB1c2VkIGFuZCB0ZXN0ZWQu
Cj4+Pj4gbm9kZSBwbGFjZW1lbnQgbG9va3MgZ29vZCBzbyBJIGNhbiBhcHBseSBpdCwganVzdCBh
IGdlbmVyYWwgcXVlc3Rpb25zCj4+Pj4gSSBvbmx5IGdvdCBwYXRjaCA4LzggYXJlIHBhdGNoZXMg
MS03IHJlbGV2YW50IGZvciB0aGlzIG9uZSBhbmQgd2hhdCBhcmUgdGhleT8KPj4+IFBhdGNoZXMg
MS03IGFyZSB0aGUgcGF0Y2hlcyB0byBzdXBwb3J0IHRoZSBCQ000MzU5IGNoaXBzZXQgd2l0aCBT
RElPCj4+PiBpbnRlcmZhY2UgaW4gdGhlIGxpbnV4IGJyY21mbWFjIG5ldC13aXJlbGVzcyBkcml2
ZXIsIHNlZSBbMV0uCj4+Pgo+Pj4gU28gdGhpcyBwYXRjaCBzZXJpZXMgaGFzIDIgcGFydHM6Cj4+
PiBwYXRjaGVzIDEtNzogYWRkIHN1cHBvcnQgZm9yIHRoZSB3aWZpIGNoaXBzZXQgaW4gdGhlIHdp
cmVsZXNzIGRyaXZlciwKPj4+IHRoaXMgaGFzIHRvIGdvIHRocm91Z2ggbmV0LXdpcmVsZXNzCj4+
PiBwYXRjaCA4OiBlbmFibGUgdGhlIHdpZmkgbW9kdWxlIHdpdGggdGhpcyBjaGlwc2V0IG9uIFJv
Y2tQcm82NCwgdGhpcyBwYXRjaAo+PiBUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uIDotKSAu
Cj4+Cj4+IEFzIHBhdGNoIDggIm9ubHkiIGRvZXMgdGhlIGNvcmUgc2RpbyBub2RlLCBpdCBkb2Vz
bid0IHJlYWxseSBkZXBlbmQgb24gdGhlCj4+IGVhcmxpZXIgb25lcyBhbmQgeW91IGNhbiBzdWJt
aXQgYW55IHVhcnQtaG9va3MgZm9yIGJsdWV0b290aCBvbmNlIHRoZQo+PiBvdGhlciBwYXRjaGVz
IGxhbmQgSSBndWVzcy4KPj4KPj4KPj4+IElmIHRoaXMgd2FzIGNvbmZ1c2luZywgd2hhdCB3b3Vs
ZCBiZSB0aGUgaWRlYWwgd2F5IHRvIHBvc3Qgc3VjaCBzZXJpZXM/Cj4+IEkgdGhpbmsgZXZlcnkg
bWFpbnRhaW5lciBoYXMgc29tZSBzbGlnaHRseSBkaWZmZXJlbnQgcGVyc3BlY3RpdmUgb24gdGhp
cywKPj4gYnV0IHBlcnNvbmFsbHkgSSBsaWtlIGdldHRpbmcgdGhlIHdob2xlIHNlcmllcyB0byBm
b2xsb3cgdGhlIGRpc2N1c3Npb24gYnV0Cj4+IGFsc28gdG8ganVzdCBzZWUgd2hlbiB0aGUgZHJp
dmVyLXNpZGUgY2hhbmdlcyBnZXQgbWVyZ2VkLCBhcyB0aGUgZHRzLXBhcnRzCj4+IG5lZWQgdG8g
d2FpdCBmb3IgdGhhdCBpbiBhIGxvdCBvZiBjYXNlcy4KPiBGV0lXIEkgcHJlZmVyIHRoZSBzYW1l
IGFzIEhlaWtvLiBJZiBJIGRvbid0IHNlZSBhbGwgdGhlIHBhdGNoZXMgaW4gdGhlCj4gcGF0Y2hz
ZXQgSSBzdGFydCB3b3JyeWluZyBpZiBwYXRjaHdvcmsgbG9zdCB0aGVtLCBvciBzb21ldGhpbmcs
IGFuZCB0aGVuCj4gaXQgdGFrZXMgbW9yZSB0aW1lIGZyb20gbWUgdG8gaW52ZXN0aWdhdGUgd2hh
dCBoYXBwZW5lZC4gU28gSSBzdHJvbmdseQo+IHJlY29tbWVuZCBzZW5kaW5nIHRoZSB3aG9sZSBz
ZXJpZXMgdG8gZXZlcnlvbmUgYXMgaXQgc2F2ZXMgdGltZS4KPgpUaGFua3MgZm9yIHlvdXIgZXhw
bGFuYXRpb24uCkkgd2lsbCBrZWVwIHRoaXMgaW4gbWluZCBmb3IgZnV0dXJlIHN1Ym1pc3Npb25z
LgoKU29lcmVuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
