Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA2183416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:06:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HHUmAgFTl75S9D5GjKBsyqBS0+ZDVSCFVRH2L9xiQj4=; b=AxOzFOGmpd9S6zDkEza+uqRQM
	ol/pfH3xK+dK+mBsM0fGgHrw037bCag0yteHfsh6lBEQ1FkjT0j//zosrOo+kzMBRDnhEsTS9s/8l
	Xsh1Xd2G5WqDSBNdkxFxlDmCHtkjvTJ86LfntqDKtXxijwX16Yx00P+dsRNKbv0vfMhMQuLlgo33X
	3WTqGllI1X0wLbbjicl1nM3ZhjWI4w6r85BhipKUi5bUHYmCuIxqYqezmXOiV/H//j2dj9w3ZxVdk
	lj6LwdWtyFlpyNXyuc+V4mg6G0FOttjXMcGqSFsmJZrBUPFiv683IMQ3Za4imFd8YCJcfEnhdhZZC
	r8K1Yfp0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPPr-0001x2-4W; Thu, 12 Mar 2020 15:06:31 +0000
Received: from web0081.zxcs.nl ([2a06:2ec0:1::81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPPj-0001wC-2C
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 15:06:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=pascalroeleven.nl; s=x; h=Message-ID:References:In-Reply-To:Subject:Cc:To:
 From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J6aDQGjkdfrS52YkEz3ek5dt906Ty2Nt38vKTDhn80w=; b=hG2lKuGOULLVa42qYNnOMiU+E+
 1fF6zxRYgwLngJMFHPGArXhjerUxJQ3plKRZCO5TSTnVi+2Q8tQ6C+C6aNn40pyjspW7YwCzKMQpp
 syAzO2hUtLaflC0V1kUwjCmFDeZWQlAgJ7edx0xUiyAyRK6Ve3MXMeFoqm/8SuhsGbjvvflanRDwi
 uJZM+RCzqt5AIQOpws1Wm09byjKK1YZDLkylSTk29ub38ToQxSkCbjKk9IDDgGd0OfMXuFUP4xsVe
 79E3bHRr3rpcvkxTdxEe+saXneBo447d07pKSoi/9Akj0hMmJk75kVHMFuA+GZIae8997/r68Trkv
 7nt7VLxQ==;
Received: from spamrelay.zxcs.nl ([185.104.28.12]:47086
 helo=mail-slave02.zxcs.nl)
 by web0081.zxcs.nl with esmtp (Exim 4.92.3)
 (envelope-from <dev@pascalroeleven.nl>)
 id 1jCPPT-002SyE-RZ; Thu, 12 Mar 2020 16:06:07 +0100
MIME-Version: 1.0
Date: Thu, 12 Mar 2020 16:06:07 +0100
From: Pascal Roeleven <dev@pascalroeleven.nl>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: pwm: sun4i: pwm-backlight not working since 5.6-rc1
In-Reply-To: <20200312132942.2kfspvmoc3mxkdx4@pengutronix.de>
References: <6185b5540ca082d887d7d13330c9d938@pascalroeleven.nl>
 <20200312132942.2kfspvmoc3mxkdx4@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.2
Message-ID: <6e995c4c22c4e6c93acb1f491e5aa109@pascalroeleven.nl>
X-Sender: dev@pascalroeleven.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_080623_251664_ADD16A71 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wMy0xMiAxNDoyOSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gT24gVGh1LCBN
YXIgMTIsIDIwMjAgYXQgMDE6MjI6MTNQTSArMDEwMCwgUGFzY2FsIFJvZWxldmVuIHdyb3RlOgo+
PiBIaSBhbGwsCj4+IAo+PiBJIGFtIHdvcmtpbmcgb24gYWRkaW5nIGFuIG9sZCBBMTAgZGV2aWNl
IHRvIG1haW5saW5lIGFuZCBub3RpY2VkIGFuIAo+PiBpc3N1ZQo+PiB3aGVuIHRlc3Rpbmcgb24g
NS41LjggdnMgbWFzdGVyLgo+PiAKPj4gU2luY2UgNS42LXJjMSwgSSBjYW4ndCBjb250cm9sIHRo
ZSBicmlnaHRuZXNzIG9mIG15IExDRCBiYWNrbGlnaHQgCj4+IGFueW1vcmUuCj4+IFRoZSBiYWNr
bGlnaHQgc3RheXMgb24gZnVsbCBicmlnaHRuZXNzIGluc3RlYWQuIEkgYW0gY29udHJvbGxpbmcg
dGhlCj4+IGJyaWdodG5lc3MgdmFsdWUgdmlhIHN5c2ZzIGZvciB0ZXN0aW5nLgo+PiAKPj4gSSBh
bSBub3Qgc3VyZSBpZiB0aGlzIGlzIGEgZ2VuZXJhbCBwd20tc3VuNGkgaXNzdWUgb3IgaWYgaXQg
aXMgcmVsYXRlZCAKPj4gdG8KPj4gdGhlIGJhY2tsaWdodC4gSG93ZXZlciBJIG5hcnJvd2VkIGl0
IGRvd24gdG8gb25lIGNvbW1pdCBmb3IgcHdtLXN1bjRpOgo+PiAKPj4gZmE0ZDgxNzg0NjgxYTI2
YmNmN2QyYTQzYzZhYzVjZjk5MWVmMjhmNQo+PiAKPj4gSWYgSSB1c2UgcHdtLXN1bjRpLmMgZnJv
bSA1YjA5MGI0MzBkNzUwOTYxMzA1MDMwMjMyMzE0YjZhY2RiMDEwMmFhIG9uCj4+IG1hc3Rlciwg
dGhlIGJhY2tsaWdodCB3b3JrcyBmaW5lLiBVbmZvcnR1bmF0ZWx5LCBkdWUgdG8gbXkgbGFjayBv
ZiAKPj4ga2VybmVsCj4+IGV4cGVyaWVuY2UsIEkgY2FuJ3Qgc2VlIGhvdyB0aGUgY29tbWl0IGFi
b3ZlIGJyb2tlIGl0Lgo+IAo+IEhtbSwgSSBjYW5ub3Qgc2VlIGhvdyBmYTRkODE3ODQ2ODFhMjZi
Y2Y3ZDJhNDNjNmFjNWNmOTkxZWYyOGY1IGJyZWFrcwo+IHRoaXMuIExvb2tpbmcgYXQgdGhlIG91
dHB1dCBvZgo+IAo+IAlnaXQgc2hvdyAtYiBmYTRkODE3ODQ2ODFhMjZiY2Y3ZDJhNDNjNmFjNWNm
OTkxZWYyOGY1Cj4gCj4gKGkuZS4gaWdub3Jpbmcgd2hpdGVzcGFjZSBjaGFuZ2VzKSBJIGRvbid0
IHNlZSBob3cgdGhlIGJlaGF2aW91ciB5b3UncmUKPiByZXBvcnRpbmcgY2FuIGJlIGV4cGxhaW5l
ZC4KPiAKPiBBcmUgeW91IHN1cmUgdGhhdCBmYTRkODE3ODQ2ODFhMjZiY2Y3ZDJhNDNjNmFjNWNm
OTkxZWYyOGY1IGlzIHRoZSBiYWQKPiBjb21taXQ/Cj4gCj4gQ2FuIHlvdSBpbnN0YWxsIGEgdG9v
bCB0byBpbnNwZWN0IHJlZ2lzdGVyIHZhbHVlcyBhbmQgY2hlY2sgaG93IHRoZQo+IGFmZmVjdGVk
IHJlZ2lzdGVycyBjaGFuZ2UgaWYgeW91IHN3aXRjaCBrZXJuZWwgdmVyc2lvbnMgYW5kL29yIHB3
bQo+IHNldHRpbmdzPwo+IAo+IChlLmcuCj4gCW1lbXRvb2wgbWQgMHgxYzIwZTAwKzB4Ywo+ICkK
PiAKPiBCZXN0IHJlZ2FyZHMKPiBVd2UKClRoYW5rcyBmb3IgeW91ciByZXNwb25zZS4KClllcyBJ
IGFtIHN1cmUgdGhhdCBpcyB0aGUgY29tbWl0LiBJZiBJIGFtIG9uIG1hc3RlciwgYW5kIHJlcGxh
Y2UgCnB3bS1zdW40aS5jIHdpdGggdGhlIG9uZSBmcm9tIDViMDkwYjQzLCBldmVyeXRoaW5nIHdv
cmtzLiBJZiBJIHRoZW4gCmFwcGx5IGZhNGQ4MTc4LCBpdCBzdG9wcyB3b3JraW5nLgoKQW5kIHN0
cmFuZ2VseSB0aGUgb3V0cHV0IG9mIHRoZSByZWdpc3RlcnMgaXMgZXhhY3RseSB0aGUgc2FtZSBi
ZWZvcmUgYW5kIAphZnRlciBmYTRkODE3ODoKCjAxYzIwZTAwOiAwMDAwMDA1MCAwMDEzMDAxNCAw
MDAwMDAwMCAoZnVsbCBicmlnaHRuZXNzKQowMWMyMGUwMDogMDAwMDAwNTAgMDAxMzAwMDYgMDAw
MDAwMDAgKG1pbiBicmlnaHRuZXNzKQoKRXZlbiB3aGVuIEknbSBvbiA1YjA5MGI0MyBhbmQgY2hl
cnJ5LXBpY2sgZmE0ZDgxNzggY2FuIEkgcmVwcm9kdWNlIHRoZSAKaXNzdWUuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
