Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006BD1DCDAE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 15:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxuSvpS9DcZuQ0XLCg+DnoE1y2ryZLcRZSaEOT2UKDg=; b=W0nblLZBwYhljj
	Cgkm7Tv7amSIDSGXnJI0zsxJ4H12NNg/dD2sbtjknoLPn6i4A4dupNHHHdrjm6UruR9rYLrdcBK0R
	E2rtQMazkr2lborECZEYlBb4GdxBz1hB66/IhIfDNjNUE0c7a/LUcEqXaK81Y9iZvN0qSNk7XN54n
	t07tszPKG2BZYzUPcn8d3cqXXhVFERDRx2OZYz9kSFLDKP0yCUms9FnwJWUSnE2NDSiwPEGgj88vG
	lm53wW0M+sMuYIGNK1GlWFzFdh6QSDk6AOVE6iOfM5MB/tHlnlDGTtuuFrgCha8USVkDVCUjGBj2Q
	fOM1HmPIPBjCDFHXBFyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbksB-0002rW-Pa; Thu, 21 May 2020 13:04:31 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbkpZ-0000eT-RJ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 13:01:53 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b28so1885212vsa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 06:01:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=benyossef-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=gjDV6wdVoxT/9fCvE29lP7McG7rySuctHCYfO/Iaawk=;
 b=A+cQUoka9CcrIXRfGc4hOl7D5nMttgd+RnJxbpmoqAMxSpZ4YwMuG4O/6mBqPOHB2j
 RvIXdFW+ybr+/4P/gi8LwGD3Ql4S5peFYQ07yHi8L+9s/Jt+80TLsm7pcdXZ5kasdIyR
 BiFRneP7lXDC/KRv8cDRbeYukoJuWZek6kSWr1UMqUL0lWEpYbW6qCXlUt18xR0X6tOV
 dhrF1uw4Y42NIgfJtgh1q4Np6zKi6ACdRXG5rYyzTRVG1aq43HEKLA4LNAnZ6s4H3Upq
 329mT8IZIpMQIofWvmGUbByrdWpEFMPlyD/GW4jBEGI4qS3H/93959QAfF1sz9AEBHKM
 SyFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=gjDV6wdVoxT/9fCvE29lP7McG7rySuctHCYfO/Iaawk=;
 b=sXU6z4K1oz+EVwsdb2GiSuHtlaMowqI2PasOPp4tGwfGfEvINlbEhu6PgzU50wwzZB
 8Pg7IkzX4czEb5EdO4a8uvHzRnpFaO+0GpyyyUEKKLgIhZZ1OvyNzQPJXA8xQY7Q9PVq
 ckmFuM4TklN5bHdYAwXQHqQO39bEMsScyyuTslbMGYRMVpIleUKlYvL83XJG/DXd8X2o
 GLfTLp+K2jDLId8Pb1a1B6buqmkDOxi4fE5pPRnD6Eq3XI7hIV7ZO1sFq7TSPZoOIe1T
 NC+L0s5VEt+sPBO95v17jt8PUkJU+24qjsXfPZZy6rT8xNDT62dgDWP5u025Pxsj3xyz
 lE8Q==
X-Gm-Message-State: AOAM531gs0/D92J4RweiG6jo4MhrYoElwHXJL+d6gaDRQINsOQ9xB2bo
 rL7ZO+ogH8wVjfSLDANkao+Bau2dJ5xOs7/NzE/XhA==
X-Google-Smtp-Source: ABdhPJye19zWdmn8Su73iyvBPelzLJXAOZwEgE+CL1ky9yRyelHLRGrsW2SRu5NtsPzuYpEhektLLbXaCkf3RClTkBU=
X-Received: by 2002:a67:f890:: with SMTP id h16mr7035241vso.193.1590066105863; 
 Thu, 21 May 2020 06:01:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200519190211.76855-1-ardb@kernel.org>
 <16394356.0UTfFWEGjO@tauon.chronox.de>
 <CAMj1kXF=Duh1AsAQy+aLWMcJPQ4RFL5p9-Mnmn-XAiCkzyGFbg@mail.gmail.com>
 <2010567.jSmZeKYv2B@tauon.chronox.de>
 <CAMj1kXGNqo=d-hgK=0zBZCoJYgSxxhhm=Jdk2gAGXPo1-KSCgA@mail.gmail.com>
In-Reply-To: <CAMj1kXGNqo=d-hgK=0zBZCoJYgSxxhhm=Jdk2gAGXPo1-KSCgA@mail.gmail.com>
From: Gilad Ben-Yossef <gilad@benyossef.com>
Date: Thu, 21 May 2020 16:01:34 +0300
Message-ID: <CAOtvUMc8PhToLDVO+Y4NVhVkA6B7yndp3gbaeaQZJtrW_NSzaw@mail.gmail.com>
Subject: Re: [RFC/RFT PATCH 0/2] crypto: add CTS output IVs for arm64 and
 testmgr
To: Ard Biesheuvel <ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_060149_957942_E089E949 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephan Mueller <smueller@chronox.de>, Eric Biggers <ebiggers@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJkLAoKVGhhbmsgeW91IGZvciBsb29waW5nIG1lIGluLgoKT24gV2VkLCBNYXkgMjAsIDIw
MjAgYXQgMTA6MDkgQU0gQXJkIEJpZXNoZXV2ZWwgPGFyZGJAa2VybmVsLm9yZz4gd3JvdGU6Cj4K
PiBPbiBXZWQsIDIwIE1heSAyMDIwIGF0IDA5OjAxLCBTdGVwaGFuIE11ZWxsZXIgPHNtdWVsbGVy
QGNocm9ub3guZGU+IHdyb3RlOgo+ID4KPiA+IEFtIE1pdHR3b2NoLCAyMC4gTWFpIDIwMjAsIDA4
OjU0OjEwIENFU1Qgc2NocmllYiBBcmQgQmllc2hldXZlbDoKPiA+Cj4gPiBIaSBBcmQsCj4gPgo+
ID4gPiBPbiBXZWQsIDIwIE1heSAyMDIwIGF0IDA4OjQ3LCBTdGVwaGFuIE11ZWxsZXIgPHNtdWVs
bGVyQGNocm9ub3guZGU+IHdyb3RlOgo+IC4uLgo+ID4gPiA+IFRoZSBzdGF0ZSBvZiBhbGwgYmxv
Y2sgY2hhaW5pbmcgbW9kZXMgd2UgY3VycmVudGx5IGhhdmUgaXMgZGVmaW5lZCB3aXRoCj4gPiA+
ID4gdGhlCj4gPiA+ID4gSVYuIFRoYXQgaXMgdGhlIHJlYXNvbiB3aHkgSSBtZW50aW9uZWQgaXQg
Y2FuIGJlIGltcGxlbWVudGVkIHN0YXRlbGVzcwo+ID4gPiA+IHdoZW4gSSBhbSBhYmxlIHRvIGdl
dCB0aGUgSVYgb3V0cHV0IGZyb20gdGhlIHByZXZpb3VzIG9wZXJhdGlvbi4KPiA+ID4KPiA+ID4g
QnV0IGl0IGlzIHNpbXBseSB0aGUgc2FtZSBhcyB0aGUgcGVudWx0aW1hdGUgYmxvY2sgb2YgY2lw
aGVydGV4dC4gU28KPiA+ID4geW91IGNhbiBzaW1wbHkgY2FwdHVyZSBpdCBhZnRlciBlbmNyeXB0
LCBvciBiZWZvcmUgZGVjcnlwdC4gVGhlcmUgaXMKPiA+ID4gcmVhbGx5IG5vIG5lZWQgdG8gcmVs
eSBvbiB0aGUgQ1RTIHRyYW5zZm9ybWF0aW9uIHRvIHBhc3MgaXQgYmFjayB0bwo+ID4gPiB5b3Ug
dmlhIHRoZSBidWZmZXIgdGhhdCBpcyBvbmx5IHNwZWNpZmllZCB0byBwcm92aWRlIGFuIGlucHV0
IHRvIHRoZQo+ID4gPiBDVFMgdHJhbnNmb3JtLgo+ID4KPiA+IExldCBtZSByZWNoZWNrIHRoYXQg
YXMgSSBhbSBub3QgZnVsbHkgc3VyZSBvbiB0aGF0IG9uZS4gQnV0IGlmIGl0IGNhbiBiZQo+ID4g
aGFuZGxlZCB0aGF0IHdheSwgaXQgd291bGQgbWFrZSBsaWZlIGVhc2llci4KPgo+IFBsZWFzZSBy
ZWZlciB0byBwYXRjaCAyLiBUaGUgLml2X291dCB0ZXN0IHZlY3RvcnMgd2VyZSBhbGwgc2ltcGx5
Cj4gY29waWVkIGZyb20gdGhlIGFwcHJvcHJpYXRlIG9mZnNldCBpbnRvIHRoZSBhc3NvY2lhdGVk
IC5jdGV4dCBtZW1iZXIuCgpOb3Qgc3VycHJpc2luZ2x5IHNpbmNlIHRvIHRoZSBiZXN0IG9mIG15
IHVuZGVyc3RhbmRpbmcgdGhpcyBiZWhhdmlvdXIKaXMgbm90IHN0cmljdGx5IHNwZWNpZmllZCwg
Y2NyZWUgY3VycmVudGx5IGZhaWxzIHRoZSBJViBvdXRwdXQgY2hlY2sKd2l0aCB0aGUgMm5kIHZl
cnNpb24gb2YgdGhlIHBhdGNoLgoKSWYgSSB1bmRlcnN0YW5kIHlvdSBjb3JyZWN0bHksIHRoZSBl
eHBlY3RlZCBvdXRwdXQgSVYgaXMgc2ltcGx5IHRoZQpuZXh0IHRvIGxhc3QgYmxvY2sgb2YgdGhl
IGNpcGhlcnRleHQ/CgpUaGFua3MsCkdpbGFkCgoKCi0tIApHaWxhZCBCZW4tWW9zc2VmCkNoaWVm
IENvZmZlZSBEcmlua2VyCgp2YWx1ZXMgb2YgzrIgd2lsbCBnaXZlIHJpc2UgdG8gZG9tIQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
