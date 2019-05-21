Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B1C24DCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb4c6PIwiBV6E639mtYHqgkDZb38fScTRYzaMbAiRjI=; b=gD7zZfk9bPBcGy
	ovnPqv/ubX3oieK2U/tjwS50ED+/hikBBk6QtBbR7S8fRDArOAPGturzfwWe+iA1xRC6/bXHbKvG2
	ZoaPka/HLVK8EMqN1bJ0vR89hBvQ66YQmsv7eX9Sgs8naML9WGP+2GaIJqwA//E+nkafPzxevCgX3
	FBsFPZC1DKX6ejqaDOjiYopmVItxpMVipmYZRiFO2C57w6QgkpqoX+fvxTW4601BXtJWdgAhFDfbY
	GiNqqxQ0Z7cXYkuE0/1VgtfqubXD80y0h+cxYHCfZZVkfKYL4axdBzfJkcVMmJ7VQJICMwBfwVO30
	gWJG3wedWyPMaLzFEsOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2nx-0003yH-Mi; Tue, 21 May 2019 11:19:37 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2nq-0003wk-9W
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:19:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PewI+qr+FzkZGyMnmOEx8flWAwSCMRgcYSeVi2xaIu0=; b=JmHUemTbsJjHFKH8LAh6uuUcf
 kjfVVKy4nBa+JqUgvV6PFYa4Yisl8K0MmJJskQ7RKQecJ8rn8+dpwwYFb8MFq/c4aEqVANOP3gfsc
 H8IWtN2O42oN4dlFWvq/i+xnj8qV/QX6D97j3Px+BxsC69tHDvTm7vSfz+NBEWzB+gkKU3Add8TeC
 JNJd91u4/5akCxcEPwPxfxu8yhUlCyKksXJspBBlpBEojvwO7MvyNIV3DdoNTM6DUVwD5MfHMwzJ7
 zkoJMuXXCZbNp0VhPUZPSnEUmiW0aW7wDSlXEFmdRMYsIHNMnRtCrbWQMDyaq+BXRqijvP2KfgiAy
 wlbYEj96Q==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52562)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hT2nc-0000ih-Fb; Tue, 21 May 2019 12:19:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hT2nb-0005mq-KF; Tue, 21 May 2019 12:19:15 +0100
Date: Tue, 21 May 2019 12:19:15 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: ARM router NAT performance affected by random/unrelated commits
Message-ID: <20190521111915.3hklypo5pwi3fcgh@shell.armlinux.org.uk>
References: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
 <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
 <CACna6ryVxFr8ho3ekY4Q_J=TamVLv9ZMDaHJFUGcEGSRrSVaHA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACna6ryVxFr8ho3ekY4Q_J=TamVLv9ZMDaHJFUGcEGSRrSVaHA@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_041930_333713_220009EF 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jo-Philipp Wich <jo@mein.io>, Network Development <netdev@vger.kernel.org>,
 John Crispin <john@phrozen.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-block@vger.kernel.org, Jonas Gorski <jonas.gorski@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDE6MTY6MTJQTSArMDIwMCwgUmFmYcWCIE1pxYJlY2tp
IHdyb3RlOgo+IE9uIFR1ZSwgMjEgTWF5IDIwMTkgYXQgMTI6NDUsIFJ1c3NlbGwgS2luZyAtIEFS
TSBMaW51eCBhZG1pbgo+IDxsaW51eEBhcm1saW51eC5vcmcudWs+IHdyb3RlOgo+ID4gT24gVHVl
LCBNYXkgMjEsIDIwMTkgYXQgMTI6Mjg6NDhQTSArMDIwMCwgUmFmYcWCIE1pxYJlY2tpIHdyb3Rl
Ogo+ID4gPiBJIHdvcmsgb24gaG9tZSByb3V0ZXJzIGJhc2VkIG9uIEJyb2FkY29tJ3MgTm9ydGhz
dGFyIFNvQ3MuIFRob3NlIGRldmljZXMKPiA+ID4gaGF2ZSBBUk0gQ29ydGV4LUE5IGFuZCBtb3N0
IG9mIHRoZW0gYXJlIGR1YWwtY29yZS4KPiA+ID4KPiA+ID4gQXMgZm9yIGhvbWUgcm91dGVycywg
bXkgbWFpbiBjb25jZXJuIGlzIG5ldHdvcmsgcGVyZm9ybWFuY2UuIFRoYXQgQ1BVCj4gPiA+IGlz
bid0IHBvd2VyZnVsIGVub3VnaCB0byBoYW5kbGUgZ2lnYWJpdCB0cmFmZmljIHNvIGFsbCBraW5k
IG9mCj4gPiA+IG9wdGltaXphdGlvbnMgZG8gbWF0dGVyLiBJIG5vdGljZWQgc29tZSB1bmV4cGVj
dGVkIGNoYW5nZXMgaW4gTkFUCj4gPiA+IHBlcmZvcm1hbmNlIHdoZW4gc3dpdGNoaW5nIGJldHdl
ZW4ga2VybmVscy4KPiA+ID4KPiA+ID4gTXkgaGFyZHdhcmUgaXMgQkNNNDcwOTQgU29DIChkdWFs
IGNvcmUgQVJNKSB3aXRoIGludGVncmF0ZWQgbmV0d29yawo+ID4gPiBjb250cm9sbGVyIGFuZCBl
eHRlcm5hbCBCQ001MzAxMiBzd2l0Y2guCj4gPgo+ID4gR3Vlc3NpbmcsIEknZCBzYXkgaXQncyB0
byBkbyB3aXRoIHRoZSBwbGFjZW1lbnQgb2YgY29kZSB3cnQgY2FjaGVsaW5lcy4KPiAKPiBUaGF0
IHdhcyBteSBndWVzcyBhcyB3ZWxsLCB0aGF0J3Mgd2h5IEkgdHJpZWQgImNhY2hlc3RhdCIgdG9v
bC4KPiAKPiAKPiA+IFlvdSBjb3VsZCB0cnkgYWxpZ25pbmcgc29tZSBvZiB0aGUgY2FjaGUgZmx1
c2hpbmcgY29kZSB0byBhIGNhY2hlIGxpbmUKPiA+IGFuZCBzZWUgd2hhdCBlZmZlY3QgdGhhdCBo
YXMuCj4gCj4gQ2FuIHlvdSBnaXZlIG1lIHNvbWUgZXh0cmEgaGludCBvbiBob3cgdG8gZG8gdGhh
dCwgcGxlYXNlPyBJIHRyaWVkCj4gc2VhcmNoaW5nIGZvciBpdCBhIGJpdCBidXQgSSBkaWRuJ3Qg
ZmluZCBhbnkgY2xlYXIgYXJ0aWNsZSBvbiB0aGF0Cj4gbWF0dGVyLgoKSUlSQywgdGhlIGNhY2hl
IGxpbmUgc2l6ZSBvbiBDb3J0ZXggQTkgaXMgMzIgYnl0ZXMsIHNvIHRoZSBhc3NlbWJsZXIKZGly
ZWN0aXZlIHdvdWxkIGJlICIuYWxpZ24gNSIuICBQbGFjZSB0aGF0IGluIGFyY2gvYXJtL21tL2Nh
Y2hlLXY3LlMKYmVmb3JlIHY3X2RtYV9jbGVhbl9yYW5nZSBhbmQgdjdfZG1hX2ludl9yYW5nZS4K
Ci0tIApSTUsncyBQYXRjaCBzeXN0ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZl
bG9wZXIvcGF0Y2hlcy8KRlRUQyBicm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJp
YTogc3luYyBhdCAxMi4xTWJwcyBkb3duIDYyMmticHMgdXAKQWNjb3JkaW5nIHRvIHNwZWVkdGVz
dC5uZXQ6IDExLjlNYnBzIGRvd24gNTAwa2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
