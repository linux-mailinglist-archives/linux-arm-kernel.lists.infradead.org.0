Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B26CA1C68EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCKpLbbhOjzYtGSyGFCQWr3wVTmvkz/qCMotGZozUYQ=; b=smnyjtQFC7cJP6
	Ay4QlHII61OUX4HmwWnraAVD7WZdxL21q5u2n/s83QtfQp3rEh1DU6xpb7NnjTRuT/R8A2ZT6tFdd
	LUK8CpkNlh/zzsdkyLslDoWQt3vrdLQN1xQxdAy3fCxk/Qu2hGam98TryS4C5wVQSJq8j/kM1VBvX
	vmm3wE3ShkVJJFKPxwwq/1FYjwJ/3ljZR2i83YV10Es80vT62eVRMiaOP5ECuS56TlrNvuFtIhIn0
	lGTO5B2505EW05pw8YizV4U0rlGa4kzXeLRC11PLInqbg3WueD0ReEZemqBZv5NKNgfDIoDeENk6l
	J5eRjCvqVhK2rF6JddTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDaO-0004pc-6N; Wed, 06 May 2020 06:31:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWDaH-0004os-1R
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 06:31:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FABC206E6;
 Wed,  6 May 2020 06:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588746668;
 bh=MFpFVaI2hBqLIIEtg/NvItpJR0h+j14MNwgPOuWazmw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EpM8LnS4QQfFuOoQTFa7n+QHGjWh3YEmilYrQugomeBUci0nAmOVSwBUCYpiqr60y
 gkhA4deBwBb7/bnir48213vvxpxHX/VqDE/7fxQjxRhiEDCBKswqdfvM+McIIzbG5z
 gUc+hqPi1yv77BCXNTrLlhzVnorh7IqsuBJjc0/E=
Date: Wed, 6 May 2020 08:31:05 +0200
From: 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
To: Hyunki Koo <hyunki00.koo@samsung.com>
Subject: Re: [PATCH v8 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Message-ID: <20200506063105.GA2246050@kroah.com>
References: <CGME20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651@epcas2p2.samsung.com>
 <20200420013300.17249-1-hyunki00.koo@samsung.com>
 <20200505142325.GA816056@kroah.com>
 <000001d62335$33d03410$9b709c30$@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001d62335$33d03410$9b709c30$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_233109_097757_9361CEE1 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 'Krzysztof Kozlowski' <krzk@kernel.org>, 'Kukjin Kim' <kgene@kernel.org>,
 linux-serial@vger.kernel.org, 'Jiri Slaby' <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDg6MzA6NDZBTSArMDkwMCwgSHl1bmtpIEtvbyB3cm90
ZToKPiBPbiBUdWVzZGF5LCBNYXkgNSwgMjAyMCBhdCAyMDIwIDExOjIzOjAwIFBNICswOTAwLCBH
cmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4gPiBPbiBNb24sIEFwciAyMCwgMjAyMCBhdCAxMDoz
Mjo1NkFNICswOTAwLCBIeXVua2kgS29vIHdyb3RlOgo+ID4gPiBUaGlzIHBhdGNoIGNoYW5nZSB0
aGUgbmFtZSBvZiBtYWNybyBmb3IgZ2VuZXJhbCB1c2FnZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9m
Zi1ieTogSHl1bmtpIEtvbyA8aHl1bmtpMDAua29vQHNhbXN1bmcuY29tPgo+ID4gCj4gPiBUaGlz
IHBhdGNoIHNlcmllcyBjcmVhdGVzIHRoZSBmb2xsb3dpbmcgYnVpbGQgZXJyb3IsIHdoaWNoIGlz
IG5vdAo+ID4gYWxsb3dlZDoKPiA+IAo+ID4gICBDQyBbTV0gIGRyaXZlcnMvdHR5L3NlcmlhbC9z
YW1zdW5nX3R0eS5vCj4gPiBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkuYzoxODY6MTM6
IHdhcm5pbmc6IOKAmHdyX3JlZ19iYXJyaWVy4oCZCj4gPiBkZWZpbmVkIGJ1dCBub3QgdXNlZCBb
LVd1bnVzZWQtZnVuY3Rpb25dCj4gPiAgIDE4NiB8IHN0YXRpYyB2b2lkIHdyX3JlZ19iYXJyaWVy
KHN0cnVjdCB1YXJ0X3BvcnQgKnBvcnQsIHUzMiByZWcsIHUzMiB2YWwpCj4gPiAgICAgICB8ICAg
ICAgICAgICAgIF5+fn5+fn5+fn5+fn5+Cj4gPiAKPiA+IFBsZWFzZSBmaXggdXAgYW5kIHJlc2Vu
ZC4gIEFsd2F5cyBtYWtlIHN1cmUgeW91IGtlZXAgdGhlIHJldmlld2VkLWJ5Cj4gPiB0YWdzIGZy
b20gb3RoZXJzIGFzIHdlbGwuCj4gPiAKPiA+IGdyZWcgay1oCj4gCj4gSSB0ZXN0ZWQgb24gbGF0
ZXN0IGtlcm5lbCB0b2RheSBvbmUgbW9yZSB0aW1lLCB0aGVyZSBpcyBubyBlcnJvciBhbmQgd2Fy
bmluZyBvbiBteSBzaWRlLCBub3Qgb25seSBwYXRjaCAxLzMgYW5kIHBhdGNoIDMvMwo+IExpbmUg
MTczNTogICBDQyAgICAgIGRyaXZlcnMvdHR5L3NlcmlhbC9zYW1zdW5nX3R0eS5vCj4gTGluZSAz
NDM6ICAgQ0MgICAgICBkcml2ZXJzL3R0eS9zZXJpYWwvc2Ftc3VuZ190dHkubwo+IAo+IHdyX3Jl
Z19iYXJyaWVyIGlzIG5vdCBkZWZpbmVkIGluIHBhdGNoIDEvMywgCj4gYW5kIHdyX3JlZ19iYXJy
aWVyIGlzIGRlZmluZSBhbmQgdXNlZCBpbiBwYXRjaDMvMwo+IGl0IG1pZ2h0IGJlIG5vIHdhcm5p
bmcuCgpBZnRlciBJIGFwcGx5IHRoaXMgc2VyaWVzLCBJIGdvdCB0aGUgYWJvdmUgYnVpbGQgd2Fy
bmluZyBvbiBteSBub3JtYWwKeDg2IHN5c3RlbSwgc28gSSBjYW4gbm90IHRha2UgdGhlIHBhdGNo
ZXMuICBQbGVhc2UgZml4IHVwIGFuZCByZXNlbmQuCgpncmVnIGstaAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
