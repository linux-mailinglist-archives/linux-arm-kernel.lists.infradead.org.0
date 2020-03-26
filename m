Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCB71943A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:55:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K9LlDhUdNBWvxyeqKCL/R136pSMZRh4E711ItGZGMTE=; b=f13g1Vjkp3vThSdj5vIf2c+35
	jFEPzaMI7Kqap56yVK7Tn2Uezqk6uS+6PtT1Hqi+Nhz9Xtbhdx4w69GLLt9vGQc4L8IQDA+w9sDgQ
	P57uCjp9BPmv728tR/0bWz6zh8B1mIur2m1+uTSKRs//awKDucxVuz/jtbSfdTXXyiKapNWtCVKpu
	zuOp8AjI4WagykfB85LkhJDeLO2FDTPR2kzdkrL1XNXmNwBDjElx1e5GldyWBs8FtI+ng1i+6UHjo
	9BgIUI4NMJ+Ieh90j4yUmigklm9AN6qSCTeT69wZa+414KoNCLd+dVW7Dv6CFeOG1BIfg4+/wpmKT
	gTEAhs7RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHUqv-0001a9-Rn; Thu, 26 Mar 2020 15:55:29 +0000
Received: from smtp97.iad3a.emailsrvr.com ([173.203.187.97])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHUqm-0001Zh-3S
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 15:55:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=softiron.com;
 s=20191119-3p77dzn5; t=1585238112;
 bh=1U/ta59IQKSqiQNPiq7ygYSvRpees6nNakv02S4EyPo=;
 h=Subject:To:From:Date:From;
 b=frbNRIfNwfn3LU3cvCP6b7uVgKPnmI/BxohaszsVftQEOFcY0HT4O9nF6fakKlhXT
 U0J2kFqJnyYCnjyOk2kIq+BDr2iMVHr2hvIL12lbHdZokHkVHJ7HtMSmqS791Q14V2
 SYlHlpGr72yi8LjHVTEETRX6WAH75DZEV06mzzAU=
X-Auth-ID: alan@softiron.com
Received: by smtp29.relay.iad3a.emailsrvr.com (Authenticated sender:
 alan-AT-softiron.com) with ESMTPSA id 8203824F74; 
 Thu, 26 Mar 2020 11:55:11 -0400 (EDT)
X-Sender-Id: alan@softiron.com
Received: from [10.1.1.115] (99-117-187-177.lightspeed.dybhfl.sbcglobal.net
 [99.117.187.177]) (using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
 by 0.0.0.0:465 (trex/5.7.12); Thu, 26 Mar 2020 11:55:12 -0400
Subject: Re: pinctrl states vs pinmux vs gpio (i2c bus recovery)
To: Ludovic.Desroches@microchip.com, linux@armlinux.org.uk,
 linus.walleij@linaro.org
References: <20191206173343.GX25745@shell.armlinux.org.uk>
 <CACRpkdZv2rzA8AbFZKq0XVBaXNJR8c5tsb+1KTZ7fNuWjm5cbQ@mail.gmail.com>
 <20191213002010.GO25745@shell.armlinux.org.uk>
 <1ca5d81d-5aa9-8f8d-8731-4d34de9c6bfa@softiron.com>
 <4f9bb480-ba8d-b70e-961b-d6032232d250@softiron.com>
 <edb09f97-7748-f7d0-cad6-e79db7950b0d@microchip.com>
 <c193dd83-4cdc-9f3f-560e-828cf6e8a8db@softiron.com>
 <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
From: Alan Ott <alan@softiron.com>
Message-ID: <ae952fa3-4b20-5571-875c-408408d7ecb1@softiron.com>
Date: Thu, 26 Mar 2020 11:55:10 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <538ed844-4be1-4bda-a198-8b5706ee818b@microchip.com>
Content-Language: en-US
X-Classification-ID: 6dc90d9b-25d1-4e0e-986b-45d58dc0e2c1-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_085520_405228_6BA1EDB0 
X-CRM114-Status: GOOD (  36.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [173.203.187.97 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [173.203.187.97 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kamel.bouhara@bootlin.com, linux-gpio@vger.kernel.org,
 Codrin.Ciubotariu@microchip.com, linux-arm-kernel@lists.infradead.org,
 wsa@the-dreams.de
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMy8yNi8yMCAyOjUzIEFNLCBMdWRvdmljLkRlc3JvY2hlc0BtaWNyb2NoaXAuY29tIHdyb3Rl
Ogo+IE9uIDMvMjUvMjAyMCAxMDowOSBQTSwgQWxhbiBPdHQgd3JvdGU6Cj4+IEVYVEVSTkFMIEVN
QUlMOiBEbyBub3QgY2xpY2sgbGlua3Mgb3Igb3BlbiBhdHRhY2htZW50cyB1bmxlc3MgeW91IGtu
b3cKPj4gdGhlIGNvbnRlbnQgaXMgc2FmZQo+Pgo+PiBPbiAzLzI1LzIwIDQ6MDYgUE0sIEx1ZG92
aWMuRGVzcm9jaGVzQG1pY3JvY2hpcC5jb20gd3JvdGU6Cj4+PiBPbiAzLzI1LzIwMjAgMTo0MiBQ
TSwgQWxhbiBPdHQgd3JvdGU6Cj4+Pj4gRVhURVJOQUwgRU1BSUw6IERvIG5vdCBjbGljayBsaW5r
cyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3Uga25vdwo+Pj4+IHRoZSBjb250ZW50IGlz
IHNhZmUKPj4+Pgo+Pj4+IE9uIDIvMjcvMjAgMTE6NDcgQU0sIEFsYW4gT3R0IHdyb3RlOgo+Pj4+
PiBPbiAxMi8xMi8xOSA3OjIwIFBNLCBSdXNzZWxsIEtpbmcgLSBBUk0gTGludXggYWRtaW4gd3Jv
dGU6Cj4+Pj4+PiBPbiBNb24sIERlYyAwOSwgMjAxOSBhdCAwMToyMDoxNUFNICswMTAwLCBMaW51
cyBXYWxsZWlqIHdyb3RlOgo+Pj4+Pj4+IEhpIFJ1c3NlbGwsCj4+Pj4+Pj4KPj4+Pj4+PiB2ZXJ5
IG5pY2UgZGVzY3JpcHRpb24gb2YgdGhpcyBkdWFsLW1vZGUgcHJvYmxlbS4KPj4+Pj4+Pgo+Pj4+
Pj4+IEkgd2lzaCBJIGhhZCBhIHNpbXBsZSBhbmQgZWxlZ2FudCB3YXkgd2UgY291bGQgbWFrZSBp
dAo+Pj4+Pj4+IHVuYW1iaWd1b3VzIGFuZCBzaW1wbGUgdG8gdXNlIC4uLiBidXQgaXQgYmVhdHMg
bWUgcmlnaHQKPj4+Pj4+PiBub3cuCj4+Pj4+Pj4KPj4+Pj4+PiBPbiBGcmksIERlYyA2LCAyMDE5
IGF0IDY6MzMgUE0gUnVzc2VsbCBLaW5nIC0gQVJNIExpbnV4IGFkbWluCj4+Pj4+Pj4gPGxpbnV4
QGFybWxpbnV4Lm9yZy51az4gd3JvdGU6Cj4+Pj4+Pj4KPj4+Pj4+Pj4gT25lIG1heSBleHBlY3Q6
Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcGluY3RybF9zZWxlY3Rfc3Rh
dGUoaTJjX2lteC0+cGluY3RybCwKPj4+Pj4+Pj4gaTJjX2lteC0+cGluY3RybF9waW5zX2RlZmF1
bHQpOwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiB0byBjaGFuZ2UgdGhlbSBiYWNrIHRvIHRoZSBkZWZhdWx0
IHN0YXRlLCBidXQgdGhhdCB3b3VsZCBiZQo+Pj4+Pj4+PiBpbmNvcnJlY3QuCj4+Pj4+Pj4+IFRo
ZSBmaXJzdCB0aGluZyB0aGF0IHBpbmN0cmxfc2VsZWN0X3N0YXRlKCkgZG9lcyBpcyBjaGVjayB3
aGV0aGVyCj4+Pj4+Pj4+Cj4+Pj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcC0+c3RhdGUgPT0g
c3RhdGUKPj4+Pj4+Pj4KPj4+Pj4+Pj4gd2hpY2ggaXQgd2lsbCBkbywgYXMgdGhlIHBpbmN0cmwg
bGF5ZXIgaGFzbid0IGJlZW4gaW5mb3JtZWQgb2YgdGhlCj4+Pj4+Pj4+IGNoYW5nZSB0aGF0IGhh
cyBoYXBwZW5lZCBiZWhpbmQgaXRzIGJhY2sgYXQgdGhlIHBpbm11eCBsZXZlbC4KPj4+Pj4+PiBT
b21lIHBpbiBjb250cm9sbGVycyBoYXZlIHRoZSAuc3RyaWN0IHByb3BlcnR5IHNldAo+Pj4+Pj4+
IGluIHRoZWlyIHN0cnVjdCBwaW5tdXhfb3BzOgo+Pj4+Pj4+Cj4+Pj4+Pj4gKiBAc3RyaWN0OiBk
byBub3QgYWxsb3cgc2ltdWx0YW5lb3VzIHVzZSBvZiB0aGUgc2FtZSBwaW4gZm9yIEdQSU8gYW5k
Cj4+Pj4+Pj4gYW5vdGhlcgo+Pj4+Pj4+ICrCoMKgwqDCoMKgIGZ1bmN0aW9uLiBDaGVjayBib3Ro
IGdwaW9fb3duZXIgYW5kIG11eF9vd25lciBzdHJpY3RseSBiZWZvcmUKPj4+Pj4+PiBhcHByb3Zp
bmcKPj4+Pj4+PiAqwqDCoMKgwqDCoCB0aGUgcGluIHJlcXVlc3QuCj4+Pj4+Pj4KPj4+Pj4+PiBU
aGUgbm9uLXN0cmljdCBwaW4gY29udHJvbGxlcnMgYXJlIHRob3NlIHRoYXQgYWN0dWFsbHkgYWxs
b3cgR1BJTwo+Pj4+Pj4+IGFuZCBkZXZpY2UgZnVuY3Rpb25zIHRvIGJlIHVzZWQgb24gdGhlIHNh
bWUgcGh5c2ljYWwgbGluZSBhdCB0aGUKPj4+Pj4+PiBzYW1lIHRpbWUuIEluIHRoaXMgY2FzZSB0
aGVyZSBpcyBub3Qgc3BlY2lhbCBHUElPIG1vZGUgZm9yIHRoZQo+Pj4+Pj4+IGxpbmUgaW4gc29t
ZSBtdXhpbmcgcmVnaXN0ZXJzLCB0aGV5IGFyZSBqdXN0IHBoeXNpY2FsbHkgY29ubmVjdGVkCj4+
Pj4+Pj4gc29tZWhvdy4KPj4+Pj4+Pgo+Pj4+Pj4+IE9uZSB1c2VjYXNlIGlzIHNvcnQgb2YgbGlr
ZSBob3cgdGNwZHVtcCB3b3JrIGZvcgo+Pj4+Pj4+IGV0aGVybmV0IGludGVyZmFjZXM6IGEgR1BJ
TyByZWdpc3RlciBjYW4gInNub29wIiBvbiBhIHBpbiB3aGlsZQo+Pj4+Pj4+IGluIHVzZWQgYnkg
YW5vdGhlciBkZXZpY2UuCj4+Pj4+Pj4KPj4+Pj4+PiBCdXQgaXQgd291bGQgbm90YWJseSBhbHNv
IGFsbG93IHlvdSB0byBkcml2ZSB0aGUgbGluZSBhbmQgaW50ZXJmZXJlCj4+Pj4+Pj4gd2l0aCB0
aGUgZGV2aWNlLiBXaGljaCBpcyBleGFjdGx5IHdoYXQgdGhpcyBJMkMgcmVjb3ZlcnkgbWVjaGFu
aXNtCj4+Pj4+Pj4gZG9lcywganVzdCB0aGF0IGl0cyBwaW4gY29udHJvbGxlciBpcyBhY3R1YWxs
eSBzdHJpY3QsIHdpbGwgbm90IGFsbG93Cj4+Pj4+Pj4gdGhlIHNhbWUgbGluZSB0byBiZSB1c2Vk
IGZvciBHUElPIGFuZCBzb21lIG90aGVyIGZ1bmN0aW9uIGF0IHRoZQo+Pj4+Pj4+IHNhbWUgdGlt
ZSwgc28gSSBzdXBwb3NlIGkuTVggc2hvdWxkIHByb2JhYmx5IGV4cGxvcmUgdGhlCj4+Pj4+Pj4g
c3RyaWN0IG1vZGUuCj4+Pj4+Pj4KPj4+Pj4+PiBFbmFibGluZyB0aGF0IHdpbGwgc2FkbHkgbWFr
ZSB0aGUgcHJvYmxlbSBNT1JFIGNvbXBsZXgKPj4+Pj4+PiBmb3IgdGhpcyBJMkMgcmVjb3Zlcnks
IHJlcXVpcmluZyBhIGN5Y2xlIG9mCj4+Pj4+Pj4gZ3Bpb2RfcHV0KCkvZ3Bpb2RfZ2V0KCkgdG8g
Z2V0IGl0IHJlbGVhc2VkIGZyb20gR1BJTyBtb2RlLCBpLmUuCj4+Pj4+Pj4gd2Ugd291bGQgbmVl
ZCB0byBqdXN0IGdldCB0aGUgR1BJTyB3aGVuIHRoaXMgaXMgc3RyaWN0bHkgbmVlZGVkLgo+Pj4+
Pj4+IFVzaW5nIGRldm1fZ3Bpb2RfZ2V0KCkgYW5kIGtlZXBpbmcgYSByZWZlcmVuY2UgZGVzY3Jp
cHRvcgo+Pj4+Pj4+IGFyb3VuZCB3b3VsZCBub3Qgd29yayBhbGwgb2YgYSBzdWRkZW4uCj4+Pj4+
Pj4KPj4+Pj4+PiBJIGFtIHRoaW5raW5nIHdoZXRoZXIgd2UgY2FuIGhhbmRsZSB0aGUgbm9uLXN0
cmljdCBjb250cm9sbGVycwo+Pj4+Pj4+IGluIGEgbW9yZSBlbGVnYW50IHdheSwgb3IgYWRkIHNv
bWUgQVBJIHRvIGV4cGxpY2l0bHkgaGFuZCBvdmVyCj4+Pj4+Pj4gYmV0d2VlbiBkZXZpY2UgZnVu
Y3Rpb24gYW5kIEdQSU8gZnVuY3Rpb24uIEJ1dCBJIGNhbid0IHJlYWxseQo+Pj4+Pj4+IHNlZSBz
b21lIG9idmlvdXMgc29sdXRpb24uCj4+Pj4+PiBXaGF0IEknbSBjdXJyZW50bHkgdHJ5aW5nIGlz
IChlcnJvciBoYW5kbGluZyByZW1vdmVkIGZvciBicmV2aXR5KToKPj4+Pj4+Cj4+Pj4+PiAgwqDC
oMKgwqAgc3RydWN0IGkyY19idXNfcmVjb3ZlcnlfaW5mbyAqYnJpID0gJmkyYy0+cmVjb3Zlcnk7
Cj4+Pj4+Pgo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBpMmMtPnBpbmN0cmwgPSBkZXZtX3Bp
bmN0cmxfZ2V0KGRldik7Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+cGluY3RybF9k
ZWZhdWx0ID0gcGluY3RybF9sb29rdXBfc3RhdGUoaTJjLT5waW5jdHJsLAo+Pj4+Pj4KPj4+Pj4+
IFBJTkNUUkxfU1RBVEVfREVGQVVMVCk7Cj4+Pj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIGkyYy0+
cGluY3RybF9yZWNvdmVyeSA9IHBpbmN0cmxfbG9va3VwX3N0YXRlKGkyYy0+cGluY3RybCwKPj4+
Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICJyZWNvdmVyeSIpOwo+Pj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBicmktPnNkYV9n
cGlvZCA9IGRldm1fZ3Bpb2RfZ2V0KGRldiwgInNkYSIsCj4+Pj4+PiBHUElPRF9PVVRfSElHSF9P
UEVOX0RSQUlOKTsKPj4+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgYnJpLT5zY2xfZ3Bpb2QgPSBk
ZXZtX2dwaW9kX2dldChkZXYsICJzY2wiLAo+Pj4+Pj4gR1BJT0RfT1VUX0hJR0hfT1BFTl9EUkFJ
Tik7Cj4+Pj4+Pgo+Pj4+Pj4gIMKgwqDCoMKgIHBpbmN0cmxfc2VsZWN0X3N0YXRlKGkyYy0+cGlu
Y3RybCwgaTJjLT5waW5jdHJsX3JlY292ZXJ5KTsKPj4+Pj4+ICDCoMKgwqDCoCByZXR1cm4gcGlu
Y3RybF9zZWxlY3Rfc3RhdGUoaTJjLT5waW5jdHJsLCBpMmMtPnBpbmN0cmxfZGVmYXVsdCk7Cj4+
Pj4+Pgo+Pj4+Pj4gd2hpY2ggc2VlbXMgZ29vZCBlbm91Z2ggdG8gZ2V0IHRoZSBwaW5zIGJhY2sg
aW50byBpMmMgbW9kZSBhZnRlciB0aGUKPj4+Pj4+IGdwaW9zIGFyZSBvYnRhaW5lZC7CoCBUaGVu
IHdlIHN3aXRjaCB0aGUgcGluY3RybCBzdGF0ZSBiZXR3ZWVuCj4+Pj4+PiBwaW5jdHJsX3JlY292
ZXJ5IGFuZCBwaW5jdHJsX2RlZmF1bHQgYXMgd2UgaGF2ZSBuZWVkIHRvLgo+Pj4+Pj4KPj4+Pj4+
IFRoZSBwcm9ibGVtIGlzLCB0aGUgZ2VuZXJpYyBpMmMgYnVzIHJlY292ZXJ5IGNvZGUgd2FudHMg
dGhlIGdwaW9kCj4+Pj4+PiBkZXNjcmlwdG9ycyB0byBiZSBzZXR1cCBhbmQgaW5wbGFjZSBieSB0
aGUgdGltZSBpMmNfaW5pdF9yZWNvdmVyeSgpCj4+Pj4+PiBpcyBjYWxsZWQgKHdoaWNoIGlzIGNh
bGxlZCB3aGVuIHRoZSBhZGFwdGVyIGlzIHJlZ2lzdGVyZWQpIHNvCj4+Pj4+PiBob2xkaW5nIG9m
ZiB1bnRpbCB3ZSBuZWVkIHRvIGRvIHJlY292ZXJ5IGRvZXNuJ3Qgd29yay4KPj4+Pj4+Cj4+Pj4+
PiBUaGlzIHNlZW1zIHRvIHdvcmsgZm9yIHRoaXMgU29DIEknbSBjdXJyZW50bHkgd29ya2luZyB3
aXRoLCBidXQgSQo+Pj4+Pj4gdGhpbmsgdGhlcmUncyBtb3JlIG9uIHRoZSBob3Jpem9uIC0gSSdt
IGhhdmluZyB0aGUgc2FtZSBwcm9ibGVtcwo+Pj4+Pj4gb24gYW5vdGhlciBTb0Mgd2hpY2ggYWxz
byBuZWVkcyBidXMgcmVjb3ZlcnkgaW1wbGVtZW50ZWQsIGFuZCBhcwo+Pj4+Pj4gdGhlIHByb2Js
ZW0gZGV2aWNlIGlzIGJlaGluZCBhbiBJMkMgYnVzIG11eCwgd2hlbiBpdCBsb2NrcyB0aGUgSTJD
Cj4+Pj4+PiBidXMsIGl0IGtpbGxzIGFsbCBJMkMgYnVzZXMgcm9vdGVkIGF0IHRoYXQgcGFydGlj
dWxhciBTb0MgSTJDCj4+Pj4+PiBjb250cm9sbGVyLsKgIEhvd2V2ZXIsIHRoZXJlJ3MgYSBwcm9i
bGVtIC0gdGhlIHBpbmN0cmxzIGZvciB0aGF0IFNvQwo+Pj4+Pj4gYXJlIHNldCBieSBST00gZmly
bXdhcmUgYXQgYm9vdCB0aW1lIGJ5IHJlYWRpbmcgYSB0YWJsZSBmcm9tIHRoZQo+Pj4+Pj4gYm9v
dCBtZWRpYS7CoCAqVW5wcmludGFibGVzIGFib3V0IGZpcm13YXJlIGJlaW5nIHRvbyB3YXkgbGlt
aXRpbmcqLiA6cAo+Pj4+Pj4KPj4+PiAgwqAgPgo+Pj4+PiBIaSBhbGwsIHdoYXQncyB0aGUgY3Vy
cmVudCBzdGF0ZSBvZiB0aGlzPyBJIGNhbiBjb25maXJtIHRoYXQgdGhpcyBpcwo+Pj4+PiBicm9r
ZW4gd2l0aCB0aGUgYXQ5MSBpMmMgY29udHJvbGxlcidzIHJlY292ZXJ5IG1vZGVbMV0sIHdoaWNo
IGlzCj4+Pj4+IGltcGxlbWVudGVkIGV4YWN0bHkgdGhlIHNhbWUgYXMgb3RoZXIgaTJjIG1hc3Rl
ciByZWNvdmVyeSBtb2Rlcywgc28gSQo+Pj4+PiBzdXNwZWN0IHRoZW0gdG8gYmUgYnJva2VuIGFz
IHdlbGwuCj4+Pj4+Cj4+Pj4+IEknbSB1c2luZyA1LjUuNiB3aXRoIHRoaXMgcGF0Y2ggYXBwbGll
ZCAod2hpY2ggYWRkcyB0aGUgcmVjb3ZlcnkpOgo+Pj4+PiAgwqDCoMKgwqDCoCBodHRwczovL3Bh
dGNod29yay5rZXJuZWwub3JnL2NvdmVyLzExMzMzODgzLwo+Pj4+Pgo+Pj4+PiBJdCB3b3JrZWQg
ZmluZSB3aXRoIDUuMiwgYnV0IGhhcyBub3cgYnJva2VuLCB0aGUgd2F5IFJ1c3NlbGwgZGVzY3Jp
YmVzLAo+Pj4+PiBpbiA1LjUuNiBhbmQgYWxzbyBvbiB0aGUgbGF0ZXN0IDUuNi1yYzMuIFJ1c3Nl
bGwncyBzdWdnZXN0ZWQgd29ya2Fyb3VuZAo+Pj4+PiBvZiBzZXR0aW5nIHRoZSBwaW5jdHJsIHRv
IHJlY292ZXJ5IChncGlvKSBhbmQgdGhlbiBiYWNrIHRvIGRlZmF1bHQgZG9lcwo+Pj4+PiBtYWtl
IGl0IHdvcmsuCj4+Pj4+Cj4+Pj4+IEFsYW4uCj4+Pj4+Cj4+Pj4+IFsxXSBjdXJyZW50bHkgdGhl
IHBhdGNoIGZvciBpMmMgcmVjb3ZlcnkgZm9yIGF0OTEgaXMgYWNjZXB0ZWQgdG8KPj4+Pj4gV29s
ZnJhbQo+Pj4+PiBTYW5nJ3MgZm9yLW5leHQgdHJlZS4KPj4+Pj4KPj4+Pgo+Pj4+IElzIHRoZXJl
IGFueSB3b3JkIG9uIHRoaXM/Cj4+Pj4KPj4+Cj4+PiBJbnRlcm5hbGx5IHdlIGhhdmUgbWFuYWdl
ZCBpdCBpbiB0aGUgc2FtZSB3YXkgYXMgdGhlIG9uZSBzdWdnZXN0ZWQgYnkKPj4+IFJ1c3NlbGwu
Cj4+Pgo+Pj4gV2Ugd29uZGVyZWQgaWYgd2Ugc2hvdWxkIG1haW5saW5lIGl0IG9yIG5vdCBhcyBp
dCdzIHJlYWxseSB0cmlja3kgdG8KPj4+IHByb2NlZWQgbGlrZSB0aGlzLgo+Pgo+PiBDZXJ0YWlu
bHkgaXQgbmVlZHMgdG8gd29yayBpbiBtYWlubGluZSB0aG91Z2gsIHJpZ2h0PyBOb3QganVzdCBp
biB0aGUKPj4gbGludXg0c2FtIHZlbmRvciBrZXJuZWw/Cj4gCj4gSXQgaGFzIGJlZW4gZml4ZWQg
dHdvIGRheXMgYWdvLiBXZSdsbCBzZW5kIGl0IGFuZCBzZWUgaWYgaXQgd2lsbCBiZQo+IGFjY2Vw
dGVkLgo+IAo+IEJ5IHRoZSB3YXksIHdpdGggd2hpY2ggU29DIGhhdmUgeW91IGVuY291bnRlcmVk
IHRoaXMgaXNzdWU/IEl0IGlzIG9mCj4gaW50ZXJlc2V0IGFzIHdlIGhhdmUgdHdvIGRpZmZlcmVu
dCBwaW4gY29udHJvbGxlcnMuCgpTQU1BNUQzMwoKPiAKPj4KPj4+Cj4+PiBJbiB0aGUgZnV0dXJl
LCB3ZSBtYXkgZGVjbGFyZSBvdXIgcGluY3RybCBhcyBzdHJpY3Qgd2hpY2ggc2hvdWxkIGNhdXNl
Cj4+PiBhbm90aGVyIGJyZWFrYWdlLi4uIEl0J3Mgbm90IGRvbmUgeWV0IGJlY2F1c2Ugd2hlbiBJ
IHRyaWVkIHRvIGRvIGl0LAo+Pj4gbWF5YmUgaXQgaGFzIGNoYW5nZWQgbm93LCBJIHdhcyBub3Qg
YWJsZSB0byBhcHBseSB0aGUgcGluIGNvbmZpZ3VyYXRpb24KPj4+IHRvIHRoZSBwaW4gbXV4ZWQg
YXMgYSBncGlvLgo+Pj4KPj4KPj4gVGhlIGxhcmdlciBxdWVzdGlvbiBJIHRoaW5rIGlzLCBpcyB0
aGlzIGEgYnJlYWthZ2UgaW4gZ3Bpbz8gaTJjLWF0OTEgaXMKPj4gbm90IHRoZSBvbmx5IGkyYyBk
cml2ZXIgd2hpY2ggdXNlcyBncGlvLWJhc2VkIGJ1cyByZWNvdmVyeSwgYW5kIG1hbnkgb2YKPj4g
dGhlbSB1c2UgbmVhcmx5IHRoZSBleGFjdCBzYW1lIGNvZGUgYXMgaTJjLWF0OTEuIEFyZSB0aGV5
IGFsbCBicm9rZW4KPj4gd2l0aCB0aGlzIGtlcm5lbCB1cGRhdGUgdG9vPwo+Pgo+IAo+IEkgZG9u
J3Qga25vdyB3aGF0IGNoYW5nZWQgaW4gZ3BpbyBvciBwaW5jdHJsLiBUaGlua2luZyBtb3JlIGFi
b3V0IGl0Cj4gSSdhbSBzdXJwcmlzZWQgaXQgaGFkIHdvcmtlZC4gSW4gbXkgbWluZCwgZ3Bpb2Rf
Z2V0IGhhcyBhbHdheXMgZW5kZWQKPiB3aXRoIGEgY2FsbCB0byB0aGUgZ3Bpb19yZXF1ZXN0X2Vu
YWJsZSBvcGVyYXRpb24gc28gY2hhbmdpbmcgdGhlIG11eCB0bwo+IGEgZ3BpbyBmdW5jdGlvbi4K
CkkgZGVmaW5pdGVseSBkaWQgYW4gQS9CIHRlc3Qgd2l0aCA1LjIgYW5kIDUuNSBiZWZvcmUgd3Jp
dGluZyB0aGUgZW1haWwsIAphbmQgSSBhbHNvIGRlZmluaXRlbHkgdHJhY2VkIGl0IGRvd24gdG8g
ZGV2bV9ncGlvZF9nZXQoKSAoaWU6IGxlYXZlIGFsbCAKdGhlIHJlc3QgYW5kIHRha2UgdGhvc2Ug
dHdvIGxpbmVzIG91dCBpbiA1LjUsIGFuZCB0aGF0IG1hZGUgaXQgbm90IGZhaWwpLgoKQWdhaW4s
IG90aGVyIGkyYyBjb250cm9sbGVycyBhcmUgYnVpbHQgdGhlIGV4YWN0IHNhbWUgd2F5LCB3aXRo
IGEgCmhhbmRmdWwgb2YgdGhlbSB1c2luZyB0aGUgc2FtZSBjb3BpZWQvcGFzdGVkIGNvZGUuIEkg
c3VzcGVjdCB0aGV5IGFyZSAKYnJva2VuIHRvbyAod2hlbiBncGlvIGJ1cyByZWNvdmVyeSBpcyBl
bmFibGVkKS4gSWYgdGhleSdyZSBub3QsIHRoZW4gCmRvZXMgaXQgbWVhbiBkZXZtX2dwaW9kX2dl
dCgpIHdvcmtzIGRpZmZlcmVudGx5IG9uIGRpZmZlcmVudCBDUFVzPwoKPiAKPiBUaGUgcGluY3Ry
bC1hdDkxIGRlZmluZXMgdGhlIGdwaW9fcmVxdWVzdF9lbmFibGUgb3Agd2hpbGUgdGhlCj4gcGlu
Y3RybC1hdDkxLXBpbzQgbm90IHlldC4gVGhhdCdzIHdoeSBJIGFza2VkIGZvciB0aGUgU29DIHlv
dSB1c2UuCj4KCk9rLgoKQWxhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
