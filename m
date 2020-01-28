Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4314014AF4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:59:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SzFK5katTjDBf0JvlBKYB0s6zhKzKMkIEIvZFAOB/zU=; b=gyDOIj4HydriLm
	CDWQPn4Y9AEppcv9MVpDTZiskN5HrrveZuCeSl4K33G+ph5yGmxjIwex4nwJ3mb4/p9ZrJ+1bFiOz
	UIYVCMO2ux7lOj1Zbv4WqhPO0ZMN9nboLRuSuzHfYBJ5nYHRsGEXU+tTbbeJWpC7ne1yUQc43DOWg
	b5lDO7d06xcWpSi1BiJc4e5gy3VpSBGnlCjE4DP6S1TM4kVDednHqB8REMAuiTMVHqJOq7DvShS7v
	h9+OHfyQhxHgckVh735UhE1jUrtucmBrJwIzR5q5NEWWLazsHPXbX9DOp7XhO4QUxVcgu13AtjC3K
	Oj9LAgKXaBXjycbQ2mKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJtw-0005QJ-Hl; Tue, 28 Jan 2020 05:59:04 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJtl-0005PP-AN
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:58:54 +0000
Received: by mail-qv1-xf42.google.com with SMTP id o18so5726702qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 21:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=c0h7rYcoZ0lnrGD/XxyJMfaoFLjp1NniklKakWoray4=;
 b=EglEFcMYyd98Eida6AY+NMphbBS8kJsP0X0ApI59nOpqCn3Nl1Szl1bHShgwoferSf
 1hZVx3Q5C0Q8xxWepxz1a4Ur3vT2JFINgCQ3nQ1oKHHE5tU/OE6EjD35QSPDEZlG/AZL
 rD9qRyuv6VbbVu8EbRHGDQIV4Liim7MuRZU2tIUqbbdRModzVoa1JJDtra+JLMB2sB+5
 HcOtgV2k0cRotMveWVwFwff8QtCBqjdDLfGs4BEQSU+iDmPNgoS2D7MI+BN6wpt7cmsM
 7GNehJKcMqlwv4JIx123sDwt+fpYXTzFR9XNgP9s1g17k0NS+OhUSc50Fhgnw0d/mV2O
 Jnmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=c0h7rYcoZ0lnrGD/XxyJMfaoFLjp1NniklKakWoray4=;
 b=aNkdjoPQZH+lG7kRnFIgZc/A/qZR6E70zg38okP3oTlzIt+j7JooUS3+q3VPrsrWD8
 6HUOdVDknhqBnA0/GLeCbck+V/2pRvzTAhvlrr8ZOAZSPBtuFt5peVae8vnpa2ZAU2YJ
 ljNje62vNnuqVBGsyzzqtOwcV2SD5dr1EpGujqz6cAiijVfEmlKZa9/HlhkG+05DO6T7
 iSLWqVlFer1FIGxVW12lNk+6NMVR+TjLLIxrRqeFr9m0IvHZHixJ21b4ya1dO1quxrYB
 6XAvnwCGvc0ZSb+enjONHuDVLEJm0EzzzbxVwiDn6j51TyOByxLPEvsrOhP77x41pRUO
 55lg==
X-Gm-Message-State: APjAAAXegVzXyMpxpvkWYeYxda0aYQQwZUS2+kq0rJoNnk34qhoHNb72
 hsGjFiUC7G3NwYrHrWUq8rA=
X-Google-Smtp-Source: APXvYqwzXesaPphmgkW9JDTlcbBg1qU7k/gLMQ7NBODzOVvGB7rzmf2XegdXu1cqnPdt8fItzyH+fA==
X-Received: by 2002:a0c:8149:: with SMTP id 67mr20879339qvc.146.1580191131891; 
 Mon, 27 Jan 2020 21:58:51 -0800 (PST)
Received: from auth1-smtp.messagingengine.com (auth1-smtp.messagingengine.com.
 [66.111.4.227])
 by smtp.gmail.com with ESMTPSA id q5sm11696534qkf.14.2020.01.27.21.58.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Jan 2020 21:58:51 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailauth.nyi.internal (Postfix) with ESMTP id 2FF2B21F57;
 Tue, 28 Jan 2020 00:58:49 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 28 Jan 2020 00:58:49 -0500
X-ME-Sender: <xms:mM0vXhy1k0rqP3N2FaLwbZiAhUCyVZJmfcSWQVC-2TBHbkndq8QpYg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfeefgdeklecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpeeuohhquhhn
 ucfhvghnghcuoegsohhquhhnrdhfvghnghesghhmrghilhdrtghomheqnecuffhomhgrih
 hnpehkvghrnhgvlhdrohhrghenucfkphephedvrdduheehrdduuddurdejudenucevlhhu
 shhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegsohhquhhnodhmvg
 hsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdeiledvgeehtdeigedqudejjeekheeh
 hedvqdgsohhquhhnrdhfvghngheppehgmhgrihhlrdgtohhmsehfihigmhgvrdhnrghmvg
X-ME-Proxy: <xmx:mM0vXuMC-EZ8Dl0ZwftIanMJYfeundzl_Luiphfhne_U03f08rRpLw>
 <xmx:mM0vXm9KXgJkqG7MmJvv0fAat9DncJoq77zQVi1J__F3fQ7hRbkPFw>
 <xmx:mM0vXr75l8HEboSTz3ODhnZ7QNzbh0ZE-hr2kAuh1FRjJZxqJ3gF9g>
 <xmx:mc0vXvc-5hiSbBlHUaXhTqglAifLLqbpCg6U9MDHPnWC4uq-yNKvoHqb1FY>
Received: from localhost (unknown [52.155.111.71])
 by mail.messagingengine.com (Postfix) with ESMTPA id F2345306B27D;
 Tue, 28 Jan 2020 00:58:47 -0500 (EST)
Date: Tue, 28 Jan 2020 13:58:46 +0800
From: Boqun Feng <boqun.feng@gmail.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [RFC 0/6] vDSO support for Hyper-V guest on ARM64
Message-ID: <20200128055846.GA83200@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
References: <20191216001922.23008-1-boqun.feng@gmail.com>
 <ef6cb7ba-b448-cfa5-abbb-1d99d1396ce5@arm.com>
 <20200124063215.GA93938@debian-boqun.qqnc3lrjykvubdpftowmye0fmh.lx.internal.cloudapp.net>
 <4cdf2188-8909-4b90-ca78-92cef520b23d@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4cdf2188-8909-4b90-ca78-92cef520b23d@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_215853_358616_E451D1DB 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [boqun.feng[at]gmail.com]
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
Cc: Sasha Levin <sashal@kernel.org>, linux-hyperv@vger.kernel.org,
 Stefano Stabellini <sstabellini@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, linux-kernel@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>, xen-devel@lists.xenproject.org,
 Thomas Gleixner <tglx@linutronix.de>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMTA6MjQ6NDRBTSArMDAwMCwgVmluY2Vuem8gRnJhc2Np
bm8gd3JvdGU6Cj4gSGkgQm9xdW4gRmVuZywKPiAKPiBPbiAyNC8wMS8yMDIwIDA2OjMyLCBCb3F1
biBGZW5nIHdyb3RlOgo+ID4gSGkgVmluY2Vuem8sCj4gPiAKPiAKPiBbLi4uXQo+IAo+ID4+Cj4g
Pj4gSSBoYWQgYSBsb29rIHRvIHlvdXIgcGF0Y2hlcyBhbmQgb3ZlcmFsbCwgSSBjb3VsZCBub3Qg
dW5kZXJzdGFuZCB3aHkgd2UgY2FuJ3QKPiA+PiB1c2UgdGhlIGFyY2hfdGltZXIgdG8gZG8gdGhl
IHNhbWUgdGhpbmdzIHlvdSBhcmUgZG9pbmcgd2l0aCB0aGUgb25lIHlvdQo+ID4+IGludHJvZHVj
ZWQgaW4gdGhpcyBzZXJpZXMuIFdoYXQgY29uZnVzZXMgbWUgaXMgdGhhdCBLVk0gd29ya3MganVz
dCBmaW5lIHdpdGggdGhlCj4gPj4gYXJjaF90aW1lciB3aGljaCB3YXMgZGVzaWduZWQgd2l0aCB2
aXJ0dWFsaXphdGlvbiBpbiBtaW5kLiBXaHkgZG8gd2UgbmVlZAo+ID4+IGFub3RoZXIgb25lPyBD
b3VsZCB5b3UgcGxlYXNlIGV4cGxhaW4/Cj4gPj4KPiA+IAo+ID4gUGxlYXNlIG5vdGUgdGhhdCB0
aGUgZ3Vlc3QgVk0gb24gSHlwZXItViBmb3IgQVJNNjQgZG9lc24ndCB1c2UKPiA+IGFyY2hfdGlt
ZXIgYXMgdGhlIGNsb2Nrc291cmNlLiBTZWU6Cj4gPiAKPiA+IAlodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1hcm0ta2VybmVsLzE1NzAxMjkzNTUtMTYwMDUtNy1naXQtc2VuZC1lbWFpbC1t
aWtlbGxleUBtaWNyb3NvZnQuY29tLwo+ID4gCj4gPiAsICBBQ1BJX1NJR19HVERUIGlzIHVzZWQg
Zm9yIHNldHRpbmcgdXAgSHlwZXItViBzeW50aGV0aWMgY2xvY2tzb3VyY2UKPiA+IGFuZCBvdGhl
ciBpbml0aWFsaXphdGlvbiB3b3JrLgo+ID4KPiAKPiBJIGhhZCBhIGxvb2sgYSBsb29rIGF0IGl0
IGFuZCBteSBxdWVzdGlvbiBzdGFuZHMsIHdoeSBkbyB3ZSBuZWVkIGFub3RoZXIgdGltZXIKPiBv
biBhcm02ND8KPiAKClNvcnJ5IGZvciB0aGUgbGF0ZSByZXNwb25zZS4gSXQncyB3ZWVrZW5kIGFu
ZCBDaGluZXNlIE5ldyBZZWFyLCBzbyBJIGdvdAp0byBzcGVuZCBzb21lIHRpbWUgbWFraW5nIChh
bmQgbW9zdGx5IGVhdGluZykgZHVtcGxpbmdzIDstKQoKQWZ0ZXIgZGlzY3Vzc2lvbiB3aXRoIE1p
Y2hhZWwsIGhlcmUgaXMgc29tZSBleHBsYW5hdGlvbiB3aHkgd2UgbmVlZAphbm90aGVyIHRpbWVy
OgoKVGhlIHN5bnRoZXRpYyBjbG9ja3MgdGhhdCBIeXBlci1WIHByZXNlbnRzIGluIGEgZ3Vlc3Qg
Vk0gd2VyZSBvcmlnaW5hbGx5CmNyZWF0ZWQgZm9yIHRoZSB4ODYgYXJjaGl0ZWN0dXJlLiBUaGV5
IHByb3ZpZGUgYSBsZXZlbCBvZiBhYnN0cmFjdGlvbgp0aGF0IHNvbHZlcyBwcm9ibGVtcyBsaWtl
IGNvbnRpbnVpdHkgYWNyb3NzIGxpdmUgbWlncmF0aW9ucyB3aGVyZSB0aGUKaGFyZHdhcmUgY2xv
Y2sgKGkuZS4sIFRTQyBpbiB0aGUgY2FzZSB4ODYpIGZyZXF1ZW5jeSBtYXkgYmUgZGlmZmVyZW50
CmFjcm9zcyB0aGUgbWlncmF0aW9uLiBXaGVuIEh5cGVyLVYgd2FzIGJyb3VnaHQgdG8gQVJNNjQs
IHRoaXMKYWJzdHJhY3Rpb24gd2FzIG1haW50YWluZWQgdG8gcHJvdmlkZSBjb25zaXN0ZW5jeSBh
Y3Jvc3MgdGhlIHg4NiBhbmQKQVJNNjQgYXJjaGl0ZWN0dXJlcywgYW5kIGZvciBib3RoIFdpbmRv
d3MgYW5kIExpbnV4IGd1ZXN0IFZNcy4gICBUaGUKY29yZSBMaW51eCBjb2RlIGZvciB0aGUgSHlw
ZXItViBjbG9ja3MgKGluCmRyaXZlcnMvY2xvY2tzb3VyY2UvaHlwZXJ2X3RpbWVyLmMpIGlzIGFy
Y2hpdGVjdHVyZSBuZXV0cmFsIGFuZCB3b3JrcyBvbgpib3RoIHg4NiBhbmQgQVJNNjQuIEFzIHlv
dSBjYW4gc2VlLCB0aGlzIHBhcnQgaXMgZG9uZSBpbiBNaWNoYWVsJ3MKcGF0Y2hzZXQuCgpBcmd1
YWJseSwgSHlwZXItViBmb3IgQVJNNjQgc2hvdWxkIGhhdmUgb3B0aW1pemVkIGZvciBjb25zaXN0
ZW5jeSB3aXRoCnRoZSBBUk02NCBjb21tdW5pdHkgcmF0aGVyIHdpdGggdGhlIGV4aXN0aW5nIHg4
NiBpbXBsZW1lbnRhdGlvbiBhbmQKZXhpc3RpbmcgZ3Vlc3QgY29kZSBpbiBXaW5kb3dzLiBCdXQg
YXQgdGhpcyBwb2ludCwgaXQgaXMgd2hhdCBpdCBpcywKYW5kIHRoZSBIeXBlci1WIGNsb2NrcyBk
byBzb2x2ZSBwcm9ibGVtcyBsaWtlIG1pZ3JhdGlvbiB0aGF0IGFyZW7igJl0CmFkZHJlc3NlZCBp
biBBUk02NCB1bnRpbCB2OC40IG9mIHRoZSBhcmNoaXRlY3R1cmUgd2l0aCB0aGUgYWRkaXRpb24g
b2YKdGhlIGNvdW50ZXIgaGFyZHdhcmUgc2NhbGluZyBmZWF0dXJlLiBIeXBlci1WIGRvZXNu4oCZ
dCBjdXJyZW50bHkgbWFwIHRoZQpBUk0gYXJjaCB0aW1lciBpbnRlcnJ1cHRzIGludG8gZ3Vlc3Qg
Vk1zLCBzbyB3ZSBuZWVkIHRvIHVzZSB0aGUgZXhpc3RpbmcKSHlwZXItViBjbG9ja3MgYW5kIHRo
ZSBjb21tb24gY29kZSB0aGF0IGFscmVhZHkgZXhpc3RzLgoKCkRvZXMgdGhlIGFib3ZlIGFuc3dl
ciB5b3VyIHF1ZXN0aW9uPwoKUmVnYXJkcywKQm9xdW4KCj4gPiBTbyBqdXN0IHRvIGJlIGNsZWFy
LCB5b3VyIHN1Z2dlc3Rpb24gaXMKPiA+IAo+ID4gMSkgSHlwZXItViBndWVzdCBvbiBBUk02NCBz
aG91bGQgdXNlIGFyY2hfdGltZXIgYXMgY2xvY2tzb3VyY2UgYW5kIHZEU08KPiA+IHdpbGwganVz
dCB3b3JrLgo+ID4gCj4gPiBvcgo+ID4gCj4gPiAyKSBFdmVuIHRob3VnaCBhcmNoX3RpbWVyIGlz
IG5vdCB1c2VkIGFzIHRoZSBjbG9ja3NvdXJjZSwgd2UgY2FuIHN0aWxsCj4gPiB1c2UgaXQgZm9y
IHZEU08uCj4gPiAKPiA+ID8KPiA+IAo+IAo+IE9wdGlvbiAjMSB3b3VsZCBiZSB0aGUgcHJlZmVy
cmVkIHNvbHV0aW9uLCB1bmxlc3MgdGhlcmUgaXMgYSBnb29kIHJlYXNvbiBhZ2FpbnN0Lgo+IAo+
ID4gUmVnYXJkcywKPiA+IEJvcXVuCj4gPiAKPiAKPiAtLSAKPiBSZWdhcmRzLAo+IFZpbmNlbnpv
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
