Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A39A17B7A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 08:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Os9BpC5hltUn8Ha9dQsVWUGjlk83sSPfDatmydeqSDk=; b=UaLmpbuka2uIejsfzUNt8GLAR
	O/YIg+J8GbUUwtlVyPBjZsjjUnPp3dZxC9WuQl79Tpzj3A4H2EN70lHkrxuGrYub2yVQvAKJVJMal
	wyE4JOmesTE3Lj4LY6ao/D0GewG3xghEQ8hLhdTwZWl7/ASmHmFuLgavRdcIE8ArJuVGStDI/TsOh
	Vl0k1/5dijYapoiooq/XlrtrEFpFig4P8tzjQ4UPxOJdeVkPmm+LgqAc9XRpX9+kdWmNl06iYCRfR
	anhWCD/fZfs9Gd+vrAEGNbm4XkfD2pWQeqKOkv3AW47n1MsJHN5g/3LGYZzUGXWD0n4MBsQ+zHMnl
	d3Xbb7TxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA7eO-0001UG-0t; Fri, 06 Mar 2020 07:44:04 +0000
Received: from uho.ysoft.cz ([81.19.3.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA7eG-0001Tg-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 07:43:58 +0000
Received: from [10.1.8.111] (unknown [10.1.8.111])
 by uho.ysoft.cz (Postfix) with ESMTP id E1D0DA09A2;
 Fri,  6 Mar 2020 08:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ysoft.com;
 s=20160406-ysoft-com; t=1583480626;
 bh=VQ2yfrk082krOOc+X5xfsM6cnf+28cUcXlzWreCfHzg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=CmpXh/XC8gLmgngZR43hA84rY5noqvaYDPq46k5cw1ETsCmylpKOQD5RDLBkCPJT4
 YoWJqGnKWxca6t2AV7ADR0WmhOh6lxe0EAbsPU/ANudHdAvo0G7gd2rMO4bwJP8is/
 GUwZ/RTuRLXHp4Y9ST+r6z6HPpCw65jl8tZN5QNY=
Subject: Re: Inverted PWM output on iMX6
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Paul Barker <pbarker@konsulko.com>
References: <20200305132232.1aced378@ub1910>
 <20200305133649.bx7r7d4ntwi75qqb@pengutronix.de>
From: =?UTF-8?B?TWljaGFsIFZva8OhxI0=?= <michal.vokac@ysoft.com>
Message-ID: <619c279c-5dd7-8d81-3527-dc37f8827104@ysoft.com>
Date: Fri, 6 Mar 2020 08:43:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200305133649.bx7r7d4ntwi75qqb@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_234356_395941_A8EEA969 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDUuIDAzLiAyMCAxNDozNiwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4gT24gVGh1LCBNYXIgMDUsIDIwMjAgYXQgMDE6MjI6MzJQTSArMDAwMCwgUGF1bCBCYXJrZXIg
d3JvdGU6Cj4+IEkgcmVjZW50bHkgcmFuIGludG8gYW4gaXNzdWUgdXNpbmcgdGhlIHB3bS1mYW4g
ZHJpdmVyIHdpdGggYW4gaW52ZXJ0ZWQKPj4gUFdNIG91dHB1dCBvbiBpTVg2Lgo+Pgo+PiBUaGUg
ZmFuIGlzIGRlZmluZWQgaW4gdGhlIGRldmljZSB0cmVlIGFzIGZvbGxvd3M6Cj4+Cj4+IAlmYW4w
OiBwd20tZmFuIHsKPj4gCQljb21wYXRpYmxlID0gInB3bS1mYW4iOwo+PiAJCXB3bXMgPSA8JnB3
bTIgMCAyNTAwMCBQV01fUE9MQVJJVFlfSU5WRVJURUQ+Owo+PiAJCS4uLgo+PiAJfQo+Pgo+PiBJ
biBwd21faW14MjdfcHJvYmUoKSB0aGUgc3VwcG9ydCBmb3IgYSB0aGlyZCBgZmxhZ3NgIGFyZ3Vt
ZW50IGluIGEgcHdtCj4+IHJlZmVyZW5jZSBpcyBlbmFibGVkOgo+Pgo+PiAJaW14LT5jaGlwLm9m
X3hsYXRlID0gb2ZfcHdtX3hsYXRlX3dpdGhfZmxhZ3M7Cj4+IAlpbXgtPmNoaXAub2ZfcHdtX25f
Y2VsbHMgPSAzOwo+Pgo+PiBIb3dldmVyLCB0aGUgZmxhZyBpcyBpZ25vcmVkIGFuZCB0aGUgb3V0
cHV0IGlzIG5vdCBpbnZlcnRlZC4KPj4KPj4gQnkgYWRkaW5nIHNvbWUgcHJpbnRzIEkgc2F3IHRo
YXQgd2hlbiBvZl9wd21feGxhdGVfd2l0aF9mbGFncygpIGlzCj4+IGNhbGxlZCwgYXJncy0+YXJn
c19jb3VudCBpcyAyIGluc3RlYWQgb2YgMy4KPj4KPj4gTG9va2luZyBhdCB0aGUgZGVmaW5pdGlv
biBvZiB0aGUgcHdtIGRldmljZSBpdHNlbGYgaW4gaW14NnFkbC5kdHNpIEkKPj4gY2FuIHNlZSB0
aGF0IHRoZSBudW1iZXIgb2YgY2VsbHMgaW4gYSBwd20gcmVmZXJlbmNlIGlzIHNldCB0byAyIG5v
dCAzOgo+Pgo+PiAJcHdtMjogcHdtQDIwODQwMDAgewo+PiAJCSNwd20tY2VsbHMgPSA8Mj47Cj4+
IAkJLi4uCj4+IAl9Owo+Pgo+PiBUaGF0IHNlZW1zIHRvIGJlIHByZXZlbnRpbmcgYSB0aGlyZCBh
cmd1bWVudCBmcm9tIGJlaW5nIHBhc3NlZC4KPj4KPj4gSSBjYW4gY2hhbmdlIGAjcHdtLWNlbGxz
YCB0byA8Mz4gYW5kIHRoZW4gZXZlcnl0aGluZyB3b3JrcyBmb3IgbXkKPj4gZGV2aWNlIGJ1dCBJ
J20gbm90IHN1cmUgdGhhdCBpcyB0aGUgY29ycmVjdCBzb2x1dGlvbiBmb3IgZXZlcnlvbmUuIFRo
YXQKPj4gd291bGQgcmVxdWlyZSBhbGwgcHdtIHJlZmVyZW5jZXMgb24gaU1YNiBkZXZpY2VzIHRv
IHVzZSAzIGNlbGxzLiBUaGUKPj4gY29kZSBpbiBvZl9wd21feGxhdGVfd2l0aF9mbGFncygpIHNl
ZW1zIHRvIGJlIGJ1aWx0IHRvIGhhbmRsZSBlaXRoZXIgMgo+PiBvciAzIGFyZ3VtZW50IGNlbGxz
IGJ1dCBJIGNhbid0IHNlZSBhbnkgd2F5IHRvIGFsbG93IHRoaXMgY2hvaWNlIGluIHRoZQo+PiBk
ZXZpY2UgdHJlZS4KPj4KPj4gSWYgdGhlIHNvbHV0aW9uIGlzIHRvIHNldCBgI3B3bS1jZWxsc2Ag
dG8gPDM+IEknbSBoYXBweSB0byBzZW5kIGEgcGF0Y2gKPj4gd2hpY2ggZG9lcyB0aGlzIGFuZCB1
cGRhdGVzIGFsbCBwd20gcmVmZXJlbmNlcyBpbiBkZXZpY2UgdHJlZXMgd2hpY2gKPj4gaW5jbHVk
ZSBgaW14NmRxbC5kdHNpYC4gQmVmb3JlIEkgZG8gdGhhdCBJJ2QgbGlrZSB0byBrbm93IHRoYXQg
aXQncyB0aGUKPj4gY29ycmVjdCBhcHByb2FjaCB0aG91Z2guCj4+Cj4+IEZvciBjb250ZXh0IEkn
dmUgY29uZmlybWVkIHRoaXMgaXMgdGhlIGNhc2UgaW4gTGludXggNS40IGFuZCB0aGF0IHRoZQo+
PiByZWxldmFudCBmaWxlcyBoYXZlbid0IGNoYW5nZWQgYmV0d2VlbiB0aGF0IHJlbGVhc2UgYW5k
IDUuNi4wLXJjNC4KPiAKPiBJIHRoaW5rIGNoYW5naW5nIHRoYXQgaXMgZmluZS4gSG93ZXZlciB5
b3UnZCBoYXZlIHRvIGNhcmUgdGhhdCBhbGwKPiBpbi10cmVlIHVzZXJzIHRoYXQgcmVseSBvbiAj
cHdtLWNlbGxzID0gPDI+IGFyZSBmaXhlZCBhY2NvcmRpbmdseS4KPiAKPiBJJ2QgZG86IGFkZCAj
cHdtLWNlbGxzID0gPDM+IGluIHRoZSBjcHUuZHRzaSBhbmQgdGhlbiBhZGFwdCBhbGwKPiBtYWNo
aW5lLmR0cyB0byBhZGQgI3B3bS1jZWxscyA9IDwyPiB1bnRpbCB0aGVyZSBhcmUgbm8gbW9yZSBj
aGFuZ2VzIHRvCj4gdGhlIGdlbmVyYXRlZCBmaWxlcyBjb21wYXJlZCB0byB0aGUgY3VycmVudCBz
dGF0ZS4KCkkgc29sdmVkIHRoYXQgaW4gdGhlIHBhc3Qgb24gb3VyIGJvYXJkIHRoZSBzYW1lIHdh
eSBhcyBvdGhlciBpbXg2IGJvYXJkcwpkaWQuIEp1c3Qgb3ZlcnJpZGUgdGhlICNwd20tY2VsbHMg
cHJvcGVydHkgaW4geW91ciBib2FyZCBzcGVjaWZpYyBkZXZpY2V0cmVlCmFuZCB5b3UgYXJlIGZp
bmU6CgogICBsaW51eC1zcmMkIGdpdCBncmVwIHB3bS1jZWxscyAtLSBhcmNoL2FybS9ib290L2R0
cy9pbXg2Ki0qCiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZkbC15YXBwNC1jb21tb24uZHRzaTog
ICAgICNwd20tY2VsbHMgPSA8Mz47CiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2lteDZxLWRpc3BsYXk1
LmR0c2k6ICAjcHdtLWNlbGxzID0gPDM+OwogICBhcmNoL2FybS9ib290L2R0cy9pbXg2cS1tY2Nt
b242LmR0czogICAgI3B3bS1jZWxscyA9IDwzPjsKICAgYXJjaC9hcm0vYm9vdC9kdHMvaW14NnFk
bC10eDYuZHRzaTogICAgICNwd20tY2VsbHMgPSA8Mz47CiAgIGFyY2gvYXJtL2Jvb3QvZHRzL2lt
eDZxZGwtdHg2LmR0c2k6ICAgICAjcHdtLWNlbGxzID0gPDM+OwogICBhcmNoL2FybS9ib290L2R0
cy9pbXg2dWwtdHg2dWwuZHRzaTogICAgI3B3bS1jZWxscyA9IDwzPjsKICAgYXJjaC9hcm0vYm9v
dC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMgPSA8Mz47CiAgIGFyY2gvYXJt
L2Jvb3QvZHRzL2lteDZ1bGwtY29saWJyaS5kdHNpOiAjcHdtLWNlbGxzID0gPDM+OwogICBhcmNo
L2FybS9ib290L2R0cy9pbXg2dWxsLWNvbGlicmkuZHRzaTogI3B3bS1jZWxscyA9IDwzPjsKICAg
YXJjaC9hcm0vYm9vdC9kdHMvaW14NnVsbC1jb2xpYnJpLmR0c2k6ICNwd20tY2VsbHMgPSA8Mz47
CgpNaWNoYWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
