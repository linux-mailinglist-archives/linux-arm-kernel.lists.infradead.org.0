Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A53A124D15
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Di70kwSM5FrbkePjJ0AbLc7c2JkJIE2OdIUaDMW8EA4=; b=iITz4uSgcnGFdn
	wEFERMZ0yidGeuzRpXWfbmsF2FuMZGqmIVSSTdlVgbGLwYcD6jGXZlwlLnAcUNvmmVomUNS9ONhl5
	JmnKiNjafc2dlexnXZoGOXqJ3av2ebn4Puylkha3KXncV8hZ2F/L83nQK/yXm4EWbu4RMC7lmEW56
	todhUcSSJxYlfjQprxbYcW8SdedDoYnMzbJmhKkCXBrbE2iJczcafyKMhpYIO2BwRloUSqAbam6UR
	tZh+uxW8k5Pmx61sbNUEhdM6X3mg3B80O+1VM6HGuHUa5oBaQcJWc/hLCV8iS/8sLzM4ed17oOKJO
	w/sIWTFj+NvibjufesYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2H9-0006P8-Me; Tue, 21 May 2019 10:45:43 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2H2-0006L8-Pt
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:45:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FTzz7OWRvXlxG8one4ToUfIysCVkEwXpU2o6YloZMrI=; b=0XL7bLantOsLpR+awlykwcXWR
 d51q/GWcI+AcTAxN+9LdZWKACZhGbhWTc0mnYIIHJydORHmJyrbA0j5UXSQdgfHhvIOCdk5GSlZ6y
 Usg1BakwswAkb3MYHiHD+ZHFTjY7Ct5NDx3q3YMRoNtsZvmhY9qjTlefHMEpYvi4TJ7IXgEfWIu77
 E4FSDhLq+ov8gW6kzqTk+S3v/fFnl3YCGWL05CAEw4L8JszD8BHz22lUZ/km96PDdngy8n9II8f7S
 OvIRkqZbRQ2sANe4d078ndZQWIX5i2/3NpFIoNbhrZsqY+3Bv1B9iQgeqiHz36Nevzq2n9iiOgjIM
 BLJKjtMLA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52560)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hT2Gh-0000XG-NK; Tue, 21 May 2019 11:45:15 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hT2Ge-0005lk-Co; Tue, 21 May 2019 11:45:12 +0100
Date: Tue, 21 May 2019 11:45:12 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Subject: Re: ARM router NAT performance affected by random/unrelated commits
Message-ID: <20190521104512.2r67fydrgniwqaja@shell.armlinux.org.uk>
References: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a9ba4c9-3cb7-eb64-4aac-d43b59224442@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_034536_835208_055F7696 
X-CRM114-Status: GOOD (  10.52  )
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

T24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMTI6Mjg6NDhQTSArMDIwMCwgUmFmYcWCIE1pxYJlY2tp
IHdyb3RlOgo+IEhpLAo+IAo+IEkgd29yayBvbiBob21lIHJvdXRlcnMgYmFzZWQgb24gQnJvYWRj
b20ncyBOb3J0aHN0YXIgU29Dcy4gVGhvc2UgZGV2aWNlcwo+IGhhdmUgQVJNIENvcnRleC1BOSBh
bmQgbW9zdCBvZiB0aGVtIGFyZSBkdWFsLWNvcmUuCj4gCj4gQXMgZm9yIGhvbWUgcm91dGVycywg
bXkgbWFpbiBjb25jZXJuIGlzIG5ldHdvcmsgcGVyZm9ybWFuY2UuIFRoYXQgQ1BVCj4gaXNuJ3Qg
cG93ZXJmdWwgZW5vdWdoIHRvIGhhbmRsZSBnaWdhYml0IHRyYWZmaWMgc28gYWxsIGtpbmQgb2YK
PiBvcHRpbWl6YXRpb25zIGRvIG1hdHRlci4gSSBub3RpY2VkIHNvbWUgdW5leHBlY3RlZCBjaGFu
Z2VzIGluIE5BVAo+IHBlcmZvcm1hbmNlIHdoZW4gc3dpdGNoaW5nIGJldHdlZW4ga2VybmVscy4K
PiAKPiBNeSBoYXJkd2FyZSBpcyBCQ000NzA5NCBTb0MgKGR1YWwgY29yZSBBUk0pIHdpdGggaW50
ZWdyYXRlZCBuZXR3b3JrCj4gY29udHJvbGxlciBhbmQgZXh0ZXJuYWwgQkNNNTMwMTIgc3dpdGNo
LgoKR3Vlc3NpbmcsIEknZCBzYXkgaXQncyB0byBkbyB3aXRoIHRoZSBwbGFjZW1lbnQgb2YgY29k
ZSB3cnQgY2FjaGVsaW5lcy4KWW91IGNvdWxkIHRyeSBhbGlnbmluZyBzb21lIG9mIHRoZSBjYWNo
ZSBmbHVzaGluZyBjb2RlIHRvIGEgY2FjaGUgbGluZQphbmQgc2VlIHdoYXQgZWZmZWN0IHRoYXQg
aGFzLgoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVr
L2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1
YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcgdG8gc3Bl
ZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
