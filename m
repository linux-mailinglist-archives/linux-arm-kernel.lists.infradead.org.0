Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB326A9B4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:11:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2oQgeQak3EI/H4r2u3n+r4z9FTNWOgGHoWoyUxcIyA=; b=sx3DBGWBuIl5tW
	eLQOWeoQFsnTArZv3+Cu9hKjobk98EVk07xaDBuM+b4pgSyoya1KlSUtrzYvCrhNs1Figb2vpgNTy
	whdSYgU1boMYdkK5ey1xFd++hHAheYUF+plqDqEH6So1BjC1hugwRrbqVmJBB4W2EihsZ8bDsfc5U
	swO9ikYzczoW9/XvVl/puj3BCs9NgDlWcLEBW9uPsgcbTPD5ed2VZy0oFsWp8dH+uEpRVlWMU7gOT
	rA1o4o27DzgrNrFVjR/Q3GKYSOqKqNcEOByRmHOycjij2CaoNqamyZhBRBgnH4kvjH21UMM9Qio55
	dt7m6Yq9R9alW1H4hLgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lvR-0005eD-IY; Thu, 05 Sep 2019 07:11:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lvB-0005dd-2q
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:11:10 +0000
Received: by mail-wr1-x442.google.com with SMTP id 30so1309142wrk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=DFvvnaHLzFEzaTnNYzUt4Q2hQTFq/NK+O6UpsbmEMb0=;
 b=By8LGyThV3tQ7KpjUQafQj2mWoVF3UaQyPDD/AsSXb+5tk4zZFZVekW3CeEG2npb2B
 Jmy5Qb0Gklgk/axCGfbNZJSWL5JklgbojPM3DCPn25IMckFHtdSMHFMkMKwn7/d9ZmWv
 NLlXUPiedZKGcQzpUT6V3EIMJJci8gkcWnpcauUrUpDTBdDfs6O8etqFgheEto1vISaT
 rTOEicKYLY89K5mHry30Y6vbjFHGz2jb/uZ/4t9ZzErtlzLlh8SbtbMZiSpSdYxh5rsz
 Kv529cVvW8zneJb4OdeHcTYd38NSZx322XL6q16Xz2Oj3s9WMBkYdcj0JhBNbdVGNIE9
 JkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=DFvvnaHLzFEzaTnNYzUt4Q2hQTFq/NK+O6UpsbmEMb0=;
 b=n2R6bRUb2cLjrER9ff0kjY728G70jVjh3PpR/ccGD+vnFj8KaCs16fDUpjLyWFhvQ9
 kgEp3jFL+VQLWYgJvqp/bQqXc0GfKoLuE46gItXgF0y1jHIfsmbeZV9qcxOA01QiLFlK
 ngCYsUOfXmHVxFyvvtv+KoJpvM6HmKQAxOUVMq9/YyGfF1zSZjP6URgrCh9IzuFhXcRt
 AyoR8p1sf/LQm4tN/JKG9CoznBnuBOEPzlnD0+CZvQEF4HipthHb4G2bHIq3LtCjymYi
 7jq+ACVPGfgHCSKmJRRXzqahH8mVIYPeDwYBNQGpro8V+dTfruYXVGysVpTet6Aob467
 qZ2Q==
X-Gm-Message-State: APjAAAUKmCxdG1NSrKsjqu+RWKAi6aeWPE7OM6WSwXy2/mbeLfsTVd52
 9HKsysLfZbpK0uSWK5lPnwRPTA==
X-Google-Smtp-Source: APXvYqwmUfGIDO2UDqtQ8Ewygc0VpleSUBO6Yhj2gmAs7eRwG0RusGrqdiNi/OFtceHOm46lPN3l5g==
X-Received: by 2002:a5d:528a:: with SMTP id c10mr1153426wrv.111.1567667466248; 
 Thu, 05 Sep 2019 00:11:06 -0700 (PDT)
Received: from dell ([95.147.198.36])
 by smtp.gmail.com with ESMTPSA id m18sm1455462wrg.97.2019.09.05.00.11.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 00:11:05 -0700 (PDT)
Date: Thu, 5 Sep 2019 08:11:03 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Wolfram Sang <wsa@the-dreams.de>
Subject: Re: [PATCH 1/2] i2c: qcom-geni: Provide an option to select FIFO
 processing
Message-ID: <20190905071103.GX26880@dell>
References: <20190904113613.14997-1-lee.jones@linaro.org>
 <20190904203548.GC580@tuxbook-pro> <20190904212337.GF23608@ninjato>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190904212337.GF23608@ninjato>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_001109_143526_3636D6BC 
X-CRM114-Status: GOOD (  28.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
 alokc@codeaurora.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBTZXAgMjAxOSwgV29sZnJhbSBTYW5nIHdyb3RlOgoKPiBPbiBXZWQsIFNlcCAw
NCwgMjAxOSBhdCAwMTozNTo0OFBNIC0wNzAwLCBCam9ybiBBbmRlcnNzb24gd3JvdGU6Cj4gPiBP
biBXZWQgMDQgU2VwIDA0OjM2IFBEVCAyMDE5LCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiAKPiA+IFRo
ZSBzdWJqZWN0IGltcGxpZXMgdGhhdCB3ZSBzZWxlY3QgRklGTyBtb2RlIGluc3RlYWQgb2YgRE1B
LCBidXQgdGhhdCdzCj4gPiBub3QgcmVhbGx5IHRydWUsIGJlY2F1c2Ugd2l0aCBETUEgZW5hYmxl
ZCB3ZSBzdGlsbCBmYWxsIGJhY2sgdG8gRklGTyBmb3IKPiA+IG1lc3NhZ2VzIGJlbG93IDMyIGJ5
dGVzLiAKCkRvIHlvdSBtZWFuLCB3ZSBmYWxsIGJhY2sgdG8gRE1BPwoKPiA+IFNvIHdoYXQgdGhp
cyBkb2VzIGl0IHRvIGRpc2FibGUgRE1BLCB3aGljaCBuZWl0aGVyIHRoZSBzdWJqZWN0IG9yIHRo
ZSBEVAo+ID4gcHJvcGVydHkgZGVzY3JpYmVzLgo+ID4gCj4gPiBBbHNvIG1pc3NpbmcgaXMgYSBk
ZXNjcmlwdGlvbiBvZiB3aHkgdGhpcyBpcyBuZWVkZWQuCj4gCj4gWWVzLgo+IAo+IEkgYW0gd2ls
bGluZyB0byBoZWxwIHRvIGdldCB0aGlzIHJlc29sdmVkIHNvb25pc2guIEhvd2V2ZXIsIEkgaGF2
ZQo+IGlzc3VlcyB3aXRoIHRoZSBhcHByb2FjaC4KPiAKPiBJdCBsb29rcyBsaWtlIGEgd29ya2Fy
b3VuZCB0byBtZS4gSXQgd291bGQgYmUgaW50ZXJlc3RpbmcgdG8gaGVhciB3aGljaAo+IEkyQyBj
bGllbnQgYnJlYWtzIHdpdGggRE1BIGFuZCBpZiBpdCdzIGRyaXZlciBjYW4ndCBiZSBmaXhlZCBz
b21laG93Cj4gaW5zdGVhZC4gQnV0IGV2ZW4gaWYgd2UgYWdyZWUgb24gYSB3b3JrYXJvdW5kIHNo
b3J0IHRlcm0sIGFkZGluZyBhCj4gYmluZGluZyBmb3IgdGhpcyB3b3JrYXJvdW5kIHNlZW1zIGxp
a2UgYSBuby1nbyB0byBtZS4gV2UgaGF2ZSB0byBsaXZlCj4gd2l0aCB0aGlzIGJpbmRpbmcgZm9y
ZXZlci4gU2lkZW5vdGU6IEkgY291bGQgdGhpbmsgb2YgYSBnZW5lcmljCj4gJ2Rpc2FibGUtZG1h
JyB3aGljaCBjb3VsZCBiZSByZXVzZWQgZXZlcnl3aGVyZSBidXQgd2UgcHJvYmFibHkgd29uJ3Qg
Z2V0Cj4gdGhhdCB1cHN0cmVhbSB0aGF0IGxhdGUgaW4gdGhlIGN5Y2xlLgo+IAo+IElzIHRoZXJl
IG5vIG90aGVyIHdheSB0byBkaXNhYmxlIERNQSB3aGljaCBpcyBsb2NhbCB0byB0aGlzIGRyaXZl
ciBzbyB3ZQo+IGNhbiBlYXNpbHkgcmV2ZXJ0IHRoZSB3b3JrYXJvdW5kIGxhdGVyPwoKVGhpcyBp
cyB0aGUgbW9zdCBsb2NhbCBsb3ctaW1wYWN0IHNvbHV0aW9uIChub21lbmNsYXR1cmUgYXNpZGUp
LgoKVGhlIGJlYXV0aWZ1bCB0aGluZyBhYm91dCB0aGlzIGFwcHJvYWNoIGlzIHRoYXQsICppZiog
dGhlIEdlbmkgU0UgRE1BCmV2ZXIgc3RhcnRzIHdvcmtpbmcsIHdlIGNhbiByZW1vdmUgdGhlIEMg
Y29kZSBhbmQgYW55IG9sZCBwcm9wZXJ0aWVzCmxlZnQgaW4gb2xkZXIgRFRzIGp1c3QgYmVjb21l
IE5PT1AuICBPbGRlciBrZXJuZWxzIHdpdGggbmV3ZXIgRFRzCihsZXNzIG9mIGEgcHJpb3JpdHkp
ICpzdGlsbCogd29uJ3Qgd29yaywgYnV0IHRoZXkgZG9uJ3Qgd29yayBub3cKYW55d2F5LgoKTkI6
IFFDb20gaGF2ZSBhbHNvIG1hZGUgaXQgcHJldHR5IGNsZWFyIHRoYXQgRFRCcyAqbXVzdCogbWF0
Y2ggdGhlaXIKa2VybmVsIHZlcnNpb24uICBJIGtub3cgdGhpcyBpcyBjb250cm92ZXJzaWFsIGFt
b25nc3QgRFQgcHVyaXN0cywgYnV0Cml0J3Mgc3RpbGwgaG93IFFDb20gb3BlcmF0ZS4KClRoZSBv
ZmZlbmRpbmcgbGluZSBjYW4gYmUgZm91bmQgYXQgWzBdLiAgVGhlcmUgaXMgbm8gb2J2aW91cyBi
dWcgdG8KZml4IGFuZCB0aGlzIGNvZGUgb2J2aW91c2x5IHdvcmtzIHdlbGwgb24gc29tZSBvZiB0
aGUgaGFyZHdhcmUKcGxhdGZvcm1zIHVzaW5nIGl0LiAgQnV0IG9uIG91ciBwbGF0Zm9ybSAoTGVu
b3ZvIFlvZ2EgQzYzMCAtIFFDb20KU01EODUwKSB0aGF0IGZpbmFsIGNvbW1hbmQsIHdoaWNoIGlu
aXRpYXRlcyB0aGUgRE1BIHRyYW5zYWN0aW9uLCBlbmRzCnVwIHJlYm9vdGluZyB0aGUgbWFjaGlu
ZS4KCldpdGggcmVnYXJkcyB0byB0aGUgbm9tZW5jbGF0dXJlLCBteSBvcmlnaW5hbCBzdWdnZXN0
aW9uIHdhcwoncWNvbSxnZW5pLXNlLW5vLWRtYScuICBXb3VsZCB0aGF0IGJldHRlciBzdWl0IHlv
dXIgcmVxdWVzdD8KClswXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3NvYy9xY29tL3Fjb20tZ2Vu
aS1zZS5jI242NDQKCj4gPiA+IFNpZ25lZC1vZmYtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+Cj4gPiA+IC0tLQo+ID4gPiAgZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdl
bmkuYyB8IDE0ICsrKysrKysrKystLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2kyYy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jIGIvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29t
LWdlbmkuYwo+ID4gPiBpbmRleCBhODliZmNlNTM4OGUuLmRmZGJjZTA2NzgyNyAxMDA2NDQKPiA+
ID4gLS0tIGEvZHJpdmVycy9pMmMvYnVzc2VzL2kyYy1xY29tLWdlbmkuYwo+ID4gPiArKysgYi9k
cml2ZXJzL2kyYy9idXNzZXMvaTJjLXFjb20tZ2VuaS5jCj4gPiA+IEBAIC0zNTMsMTMgKzM1Mywx
NiBAQCBzdGF0aWMgdm9pZCBnZW5pX2kyY190eF9mc21fcnN0KHN0cnVjdCBnZW5pX2kyY19kZXYg
KmdpMmMpCj4gPiA+ICBzdGF0aWMgaW50IGdlbmlfaTJjX3J4X29uZV9tc2coc3RydWN0IGdlbmlf
aTJjX2RldiAqZ2kyYywgc3RydWN0IGkyY19tc2cgKm1zZywKPiA+ID4gIAkJCQl1MzIgbV9wYXJh
bSkKPiA+ID4gIHsKPiA+ID4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZ2kyYy0+c2UuZGV2
LT5vZl9ub2RlOwo+ID4gPiAgCWRtYV9hZGRyX3QgcnhfZG1hOwo+ID4gPiAgCXVuc2lnbmVkIGxv
bmcgdGltZV9sZWZ0Owo+ID4gPiAtCXZvaWQgKmRtYV9idWY7Cj4gPiA+ICsJdm9pZCAqZG1hX2J1
ZiA9IE5VTEw7Cj4gPiA+ICAJc3RydWN0IGdlbmlfc2UgKnNlID0gJmdpMmMtPnNlOwo+ID4gPiAg
CXNpemVfdCBsZW4gPSBtc2ctPmxlbjsKPiA+ID4gIAo+ID4gPiAtCWRtYV9idWYgPSBpMmNfZ2V0
X2RtYV9zYWZlX21zZ19idWYobXNnLCAzMik7Cj4gPiA+ICsJaWYgKCFvZl9wcm9wZXJ0eV9yZWFk
X2Jvb2wobnAsICJxY29tLGdlbmktc2UtZmlmbyIpKQo+ID4gPiArCQlkbWFfYnVmID0gaTJjX2dl
dF9kbWFfc2FmZV9tc2dfYnVmKG1zZywgMzIpOwo+ID4gPiArCj4gPiA+ICAJaWYgKGRtYV9idWYp
Cj4gPiA+ICAJCWdlbmlfc2Vfc2VsZWN0X21vZGUoc2UsIEdFTklfU0VfRE1BKTsKPiA+ID4gIAll
bHNlCj4gPiA+IEBAIC0zOTIsMTMgKzM5NSwxNiBAQCBzdGF0aWMgaW50IGdlbmlfaTJjX3J4X29u
ZV9tc2coc3RydWN0IGdlbmlfaTJjX2RldiAqZ2kyYywgc3RydWN0IGkyY19tc2cgKm1zZywKPiA+
ID4gIHN0YXRpYyBpbnQgZ2VuaV9pMmNfdHhfb25lX21zZyhzdHJ1Y3QgZ2VuaV9pMmNfZGV2ICpn
aTJjLCBzdHJ1Y3QgaTJjX21zZyAqbXNnLAo+ID4gPiAgCQkJCXUzMiBtX3BhcmFtKQo+ID4gPiAg
ewo+ID4gPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBnaTJjLT5zZS5kZXYtPm9mX25vZGU7
Cj4gPiA+ICAJZG1hX2FkZHJfdCB0eF9kbWE7Cj4gPiA+ICAJdW5zaWduZWQgbG9uZyB0aW1lX2xl
ZnQ7Cj4gPiA+IC0Jdm9pZCAqZG1hX2J1ZjsKPiA+ID4gKwl2b2lkICpkbWFfYnVmID0gTlVMTDsK
PiA+ID4gIAlzdHJ1Y3QgZ2VuaV9zZSAqc2UgPSAmZ2kyYy0+c2U7Cj4gPiA+ICAJc2l6ZV90IGxl
biA9IG1zZy0+bGVuOwo+ID4gPiAgCj4gPiA+IC0JZG1hX2J1ZiA9IGkyY19nZXRfZG1hX3NhZmVf
bXNnX2J1Zihtc2csIDMyKTsKPiA+ID4gKwlpZiAoIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChucCwg
InFjb20sZ2VuaS1zZS1maWZvIikpCj4gPiA+ICsJCWRtYV9idWYgPSBpMmNfZ2V0X2RtYV9zYWZl
X21zZ19idWYobXNnLCAzMik7Cj4gPiA+ICsKPiA+ID4gIAlpZiAoZG1hX2J1ZikKPiA+ID4gIAkJ
Z2VuaV9zZV9zZWxlY3RfbW9kZShzZSwgR0VOSV9TRV9ETUEpOwo+ID4gPiAgCWVsc2UKCgoKLS0g
CkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQKTGlu
YXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBMaW5h
cm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
