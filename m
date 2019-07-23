Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E556972008
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 21:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QVFWtSk0bI6OejyqInMdOZW/qwnQYggl8GTgEuVYyI8=; b=SjnX1yfXzBkDk6MugSk1t2l3E
	z54RyFMasjCYN+dQbZTMnjQQDX+hG/h0sKL47DWbVnpWyhEgj8LG0lERCK3DjuRQtt7SGXHHt6Khk
	IDWWCU224/ksJzVHgDCjDK0VqLV0KjBSfnbItT/jP6ByGvSfg/bv0tiPGQ0fq5mIfGSc4ZlCgAIBh
	0gCzJ/LJD2p2vXxHuDeaTEDuZhbb0bhXkPa0Si4SAWJiMeP1GFepLkZ+ohqdpOFMVkAF3ZuNtysjW
	0RAAn0F8b2dFpiCz2CM/Ts9w+BN1LM2ke7jzeTSwmLgdNcMiRUMsR9pYRiZDvjPMfUBXjojcOiCQh
	jKl7RhjpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq0Lk-0005jz-Ba; Tue, 23 Jul 2019 19:21:24 +0000
Received: from mo6-p01-ob.smtp.rzone.de ([2a01:238:20a:202:5301::3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq0LY-0005jF-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 19:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1563909670;
 s=strato-dkim-0002; d=hartkopp.net;
 h=In-Reply-To:Date:Message-ID:From:References:Cc:To:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=he5sP/UnYRdg7pQSOIFoDcFhgsFtVLjdk2e1xrBdNME=;
 b=XaKitVelaPbKN/qyFijHYTWpNE++Fj9vSoczXVFjhLFsY7qy/g3F/CnicMP6ECujH/
 q55cQEJ8Adqv114/vyrTBtqxtxFdSp9/CPrZLwJyjN0pS9vB0Fm1IAk4plFd/Sd2I0Kz
 od3RNUACLNYOmxDgFZAN0TzGjf+szt33oWaQO6jtdvZRXEhWpR8ZNmHh2mbzqnCIo8Tr
 SBjel7FMx8dV6cicivKe5GNYgIM1QxUWouYgD6f2QQSTT6wuKhKbsTLd5p4PEd5UdnsG
 qFoyMkM2GS80h2HTyJ3ejl8E0QoqQjtjCU55VMK/1cz+JsWnQpVE9OmVsKCFtjc+s8lP
 EQVA==
X-RZG-AUTH: ":P2MHfkW8eP4Mre39l357AZT/I7AY/7nT2yrDxb8mjG14FZxedJy6qgO1o3PMaViOoLMJV8h6liA="
X-RZG-CLASS-ID: mo00
Received: from [192.168.1.200] by smtp.strato.de (RZmta 44.24 DYNA|AUTH)
 with ESMTPSA id k05d3bv6NJL6f8n
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Tue, 23 Jul 2019 21:21:06 +0200 (CEST)
Subject: Re: TS-219 RTC issue with Debian Buster
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <99a8e2cc-61a2-3b43-0d72-6f001cffe572@hartkopp.net>
 <20190723190636.tuzob2w2fznmtsmb@pengutronix.de>
From: Oliver Hartkopp <socketcan@hartkopp.net>
Message-ID: <4a5c0768-0383-0a16-8d3f-639dc9530abf@hartkopp.net>
Date: Tue, 23 Jul 2019 21:21:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723190636.tuzob2w2fznmtsmb@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_122113_073809_41C1B2EB 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5301:0:0:3 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rtc@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>, tbm@cyrius.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8gVXdlLAoKbmljZSB0byByZWFkIGZyb20geW91IGFnYWluIDotKQoKSSB0aGluayBJIGFs
cmVhZHkgc29sdmVkIHRoZSBwcm9ibGVtLCBzZWUgaGVyZToKaHR0cHM6Ly9tYXJjLmluZm8vP2w9
bGludXgtYXJtLWtlcm5lbCZtPTE1NjM5MDg3NTYyOTI1OSZ3PTIKCldpbGwgZmlsZSBhIERlYmlh
biBidWcgZm9yIGl0IC4uLgoKTWFueSB0aGFua3MsCk9saXZlcgoKT24gMjMuMDcuMTkgMjE6MDYs
IFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IEhlbGxvIE9saXZlciwKPiAKPiBJIGFkZGVkIHRo
ZSBSVEMgbWFpbnRhaW5lcnMgYW5kIGxpc3QgdG8gQ2MuCj4gCj4gT24gVHVlLCBKdWwgMjMsIDIw
MTkgYXQgMDU6MzA6NDhQTSArMDIwMCwgT2xpdmVyIEhhcnRrb3BwIHdyb3RlOgo+PiBJIHVwZ3Jh
ZGVkIG15IFRTLTIxOSB0byBEZWJpYW4gQnVzdGVyIHdpdGggS2VybmVsIDQuMTkuMC01LW1hcnZl
bGwuCj4+Cj4+IFRoZXkgdXNlIGR0YnMvNC4xOS4wLTUtbWFydmVsbC8uL2tpcmt3b29kLXRzMjE5
LTYyODIuZHRiCj4+Cj4+IFVuZm9ydHVuYXRlbHkgdGhlIFJUQyBkb2Vzbid0IHNlZW0gdG8gd29y
ay4KPj4KPj4gcm9vdEB4eHh4eDp+IyBod2Nsb2NrIC12IC0tdGVzdAo+PiBod2Nsb2NrIGZyb20g
dXRpbC1saW51eCAyLjMzLjEKPj4gU3lzdGVtIFRpbWU6IDE1NjMyOTYyMjMuNDI1NjQ4Cj4+IFRy
eWluZyB0byBvcGVuOiAvZGV2L3J0YzAKPj4gVXNpbmcgdGhlIHJ0YyBpbnRlcmZhY2UgdG8gdGhl
IGNsb2NrLgo+PiBMYXN0IGRyaWZ0IGFkanVzdG1lbnQgZG9uZSBhdCAxNTYzMjkxNDcyIHNlY29u
ZHMgYWZ0ZXIgMTk2OQo+PiBMYXN0IGNhbGlicmF0aW9uIGRvbmUgYXQgMTU2MzI5MTQ3MiBzZWNv
bmRzIGFmdGVyIDE5NjkKPj4gSGFyZHdhcmUgY2xvY2sgaXMgb24gVVRDIHRpbWUKPj4gQXNzdW1p
bmcgaGFyZHdhcmUgY2xvY2sgaXMga2VwdCBpbiBVVEMgdGltZS4KPj4gV2FpdGluZyBmb3IgY2xv
Y2sgdGljay4uLgo+PiBod2Nsb2NrOiBzZWxlY3QoKSB0byAvZGV2L3J0YzAgdG8gd2FpdCBmb3Ig
Y2xvY2sgdGljayB0aW1lZCBvdXQKPj4gLi4uc3luY2hyb25pemF0aW9uIGZhaWxlZAo+PiBUZXN0
IG1vZGU6IG5vdGhpbmcgd2FzIGNoYW5nZWQuCj4+IFdpdGggc3RyYWNlIHRoZSBjbG9jayB0aWNr
IHByb2JsZW0gbG9va3MgbGlrZSB0aGlzOgo+Pgo+PiB3cml0ZSgxLCAiV2FpdGluZyBmb3IgY2xv
Y2sgdGljay4uLlxuIiwgMjZXYWl0aW5nIGZvciBjbG9jayB0aWNrLi4uCj4+ICkgPSAyNgo+PiBp
b2N0bCg0LCBSVENfVUlFX09OKSAgICAgICAgICAgICAgICAgICAgPSAwCj4+IF9uZXdzZWxlY3Qo
NSwgWzRdLCBOVUxMLCBOVUxMLCB7dHZfc2VjPTEwLCB0dl91c2VjPTB9KSA9IDAgKFRpbWVvdXQp
Cj4+IHdyaXRlKDIsICJod2Nsb2NrOiAiLCA5aHdjbG9jazogKSAgICAgICAgICAgICAgICA9IDkK
Pj4gd3JpdGUoMiwgInNlbGVjdCgpIHRvIC9kZXYvcnRjMCB0byB3YWl0IGZvIi4uLiwgNTRzZWxl
Y3QoKSB0byAvZGV2L3J0YzAgdG8KPj4gd2FpdCBmb3IgY2xvY2sgdGljayB0aW1lZCBvdXQpID0g
NTQKPj4gd3JpdGUoMiwgIlxuIiwgMSkgICAgICAgICAgICAgICAgICAgICAgID0gMQo+PiBpb2N0
bCg0LCBQSE5fTk9UX09IIG9yIFJUQ19VSUVfT0ZGKSAgICAgPSAwCj4gCj4gTWF5YmUgcnRjLW12
IHNob3VsZCBzZXQgdWllX3Vuc3VwcG9ydGVkIGlmIG5vIGlycSBpcyBhcXVpcmVkPwo+IAo+PiBJ
dCBsb29rcyB0aGUgc2FtZSB3aXRoCj4+Cj4+ICMgaHdjbG9jayAtLWhjdG9zeXMKPj4gaHdjbG9j
azogc2VsZWN0KCkgdG8gL2Rldi9ydGMwIHRvIHdhaXQgZm9yIGNsb2NrIHRpY2sgdGltZWQgb3V0
Cj4gCj4gaHdjbG9jayAoZnJvbSB1dGlsLWxpbnV4KSBpcyBiZWluZyBzdHVwaWQgaGVyZS4gVGhl
IHRyYWR0aW9uYWwgUlRDIG9uCj4gdGhlIHg4NiBwbGF0Zm9ybSBoYXMgYSByZXNvbHV0aW9uIG9m
IDFzIG9ubHkgYW5kIGlmIHlvdSBzZXQgaXQgdGhlIG5leHQKPiBpbmNyZW1lbnQgaXMgMSBzZWNv
bmQgYWZ0ZXIgdGhlIGxhc3QgaW5jcmVtZW50IGluc3RlYWQgb2YgMSBzZWNvbmQgYWZ0ZXIKPiB0
aGUgbmV3IHRpbWUgd2FzIHNldC4gU28gaHdjbG9jayB3YWl0cyBmb3IgYW4gdXBkYXRlIGV2ZW50
IGFuZCB0aGVuIHNldHMKPiB0aGUgbmV3IHRpbWUgKGluIHNvbWUgY2FzZXMgdG8gYSB0YWQgbGF0
ZXIgdGhhbiByZXF1ZXN0ZWQpIHRvIGVuc3VyZSB0aGUKPiBQQyBjbG9jayBpcyBvZmYgYnkgbGVz
cyB0aGFuIGhhbGYgYSBzZWNvbmQuIEZvciBtb3N0IChpZiBub3QgYWxsKSBvdGhlcgo+IFJUQ3Mg
dGhpcyBpcyB3cm9uZyBhbmQgc3RpbGwgd29yc2UgaWYgdGhlIFJUQyBpbiBxdWVzdGlvbiBkb2Vz
bid0Cj4gc3VwcG9ydCBVSUUuCj4gCj4+IEkgd29uZGVyIHdoZXRoZXIgdGhlIHByb2JsZW0gY29t
ZXMgZnJvbSBhIG1pc3NpbmcgaW50ZXJydXB0IGFzc2lnbm1lbnQKPj4KPj4gcnRjOiBydGNAMTAz
MDAgewo+PiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAibWFydmVsbCxraXJrd29vZC1ydGMi
LCAibWFydmVsbCxvcmlvbi1ydGMiOwo+PiAgICAgICAgICAgICAgIHJlZyA9IDwweDEwMzAwIDB4
MjA+Owo+PiAgICAgICAgICAgICAgIGludGVycnVwdHMgPSA8NTM+OyAgICAgICAgICAgIDwtIEhF
UkUhPyEKPj4gICAgICAgICAgICAgICBjbG9ja3MgPSA8JmdhdGVfY2xrIDc+Owo+PiAgICAgICAg
ICAgICAgICAgfTsKPj4KPj4gLi4uIEkgZm91bmQgaW4gbGludXgvYXJjaC9hcm0vYm9vdC9kdHMv
a2lya3dvb2QtNjI4Mi5kdHNpID8hPwo+Pgo+PiBJbiAvcHJvYy9pbnRlcnJ1cHRzIHRoZXJlJ3Mg
bm8gcnRjIGFzc2lnbmVkIHRvIGFuIGludGVycnVwdCA1My4KPiAKPiBXaGF0IGlzIHRoZSBvdXRw
dXQgb2YgZG1lc2cgfCBncmVwIDEwMzAwID8KPiAgIAo+PiBBY2Nlc3NpbmcgdGhlIHJ0YyB2YWx1
ZXMgKHRpbWUvZGF0ZSkgdmlhIC9zeXMvY2xhc3MvcnRjL3J0YzAgZW50cmllcyB3b3Jrcwo+PiB3
ZWxsIGFuZCBzZXR0aW5nIHRoZSBkYXRlL3RpbWUgdmlhICJod2Nsb2NrIC0tc3lzdG9oYyIgZG9l
cyBpdHMgam9iIHRvby4gU28KPj4gSTJDIGFuZCB0aGUgcnRjX3MzNTM5MGEgZHJpdmVyIHNlZW0g
dG8gd29yayBzbyBmYXIuCj4gCj4gWW91J3JlIG5vdCB1c2luZyB0aGUgczM1MzkwYSBkcml2ZXIs
IGRvIHlvdT8KPiAgIAo+PiBBbnkgaWRlYXMgd2h5IGh3Y2xvY2sgZmFpbHMgdG8gd29yayBwcm9w
ZXJseT8KPiAKPiBUcnkgaWYKPiAKPiAJYnVzeWJveCBod2Nsb2NrCj4gCj4gd29ya3MgYmV0dGVy
IGZvciB5b3UuIEF0IGxlYXN0IHRoaXMgb25lIGRvZXNuJ3QgaGF2ZSB0aGlzIHN0cmFuZ2UgUEMK
PiBxdWlyay4KPiAgIAo+IEJlc3QgcmVnYXJkcwo+IFV3ZQo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
