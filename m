Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295CF9C04A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 23:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTVIT2HFTNx9bAOLBqachnYve2+x5W7uX7kAOzf83B4=; b=QXSYiCKdNh89Dw
	nW1ML4amLyigtUa3pqYvwZvCS/ENio9qSdpzPXHoiNEt597EUdSZ2kxzQA5cugVOY3WG4GhUJAPCL
	K7AEqar5UN4MVLY174abk1kD6hYgPHYp2IA/RI3lQpLv6yB+74scol0Bx8cEvQW8vEQ8YwrRjp7tE
	4VgsXrJfUX+zRrcHynywyaY9VaJFh2uqWBNFKcRUKJFMBkYngrZ2QjNbibg+WHdj3UzsEfcmT7+mH
	9l0JUzIZlkzjEJr1+3tdzMC4o6jjmkVgfON5Ar+xxRp+p3pfppeyEE1vfe++SsgTYP4+We4zFhLmR
	SGwScUZFnW8pZiRsHuTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1dIl-0005gn-4F; Sat, 24 Aug 2019 21:10:23 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1dII-0005gQ-HB
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 21:09:56 +0000
Received: by mail-wr1-x442.google.com with SMTP id t16so11729255wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 14:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FkjZ8qKkvQYfR6BJQNr4e3eCJhy1+hJifOeV8qI4Omk=;
 b=bNLaqR9BU6YywOvEbCfVpFN+ePqx7BbInNyyp9KWkOTiFaaY/MmvbBJ4/WN4xDUUcZ
 Hdx9bb11XqrPiRMJYyOcejyUun6YZHoSkUntjpEXCZ/c+797/XQDS+l+AzJm0EXmSp2R
 WMZXGYFBufUkLGhvaPb2+T0NAmpQL17B3P5XWFb1JcY3YQkrD8dGRoij2QNYNMLl6VtI
 2s0hYcpJK9FIgtOfnjpmJJkt9rz8mxG2E9GkWxjrCqvqFa2RpONws3u4lU2x0d+514vR
 OFL699Oz0+zRC83sXiDxPB6SxzLAND0Kvoe3qi8tefzUK0mnSeuurNCJp6hG6m4c5vuC
 xgcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FkjZ8qKkvQYfR6BJQNr4e3eCJhy1+hJifOeV8qI4Omk=;
 b=XrSNsF9K/rPIyo9UheYlAxQ3mgU3IQePy3vI2TvG+H/ZFBcjjjHZqDZK8mNkycvxa3
 fj7Sd3YtF8BJrduXK4yRlrkA+vPkoX532gkQbehwb6VYp1esUJaPR9pd9retndCA151j
 6I56fY9JVk4lVfnagjhgOnI9yacWhfmmoXSrfihnrIV9VAKUiP79APcAQ/iu5xp/iXqN
 kiQ1xlkE36+atztmN4j73p2p99M3vC29bkpHV/XcQSMnOevwqpifpikRlcVp8NgIWIoL
 XJ3aLP7mLR4uVJgsPWuvdbjoISlfwqXQY0ufkNZCYxDRPQ61pm0vjEMx3IqBrjeMa0Lf
 G1Cg==
X-Gm-Message-State: APjAAAVzGnu/w/G4YKRa+PfxvkCb8XSvWMB+4we5CnsVB/sXdgbzZhfL
 qNaNBcvAj2PqS86lSDNahXc=
X-Google-Smtp-Source: APXvYqw4hzk4xWwD1PLfs9EWba/vUMqttL5IbCDTVE8WFS6LCiHKJMEhZTrBfhSt2l4H6+LR4cjIZg==
X-Received: by 2002:a5d:4cc5:: with SMTP id c5mr12185978wrt.278.1566680992387; 
 Sat, 24 Aug 2019 14:09:52 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id 12sm6865462wmi.34.2019.08.24.14.09.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 14:09:51 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Date: Sat, 24 Aug 2019 23:09:49 +0200
Message-ID: <1690798.2HKiRSsjat@jernej-laptop>
In-Reply-To: <20190824133057.rhpj3xuzr3vymdiy@core.my.home>
References: <20190820151934.3860-1-megous@megous.com>
 <10880274.nteIY8W56H@jernej-laptop>
 <20190824133057.rhpj3xuzr3vymdiy@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_140954_600479_FD7F144A 
X-CRM114-Status: GOOD (  38.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jernej.skrabec[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDE1OjMwOjU3IENFU1QgamUgT25kxZllaiBK
aXJtYW4gbmFwaXNhbChhKToKPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwMzoxNjo0MVBNICsw
MjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgc29ib3RhLCAyNC4gYXZndXN0IDIw
MTkgb2IgMTU6MDU6NDQgQ0VTVCBqZSBPbmTFmWVqIEppcm1hbiBuYXBpc2FsKGEpOgo+ID4gPiBP
biBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwMjo1MTo1NFBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMg
d3JvdGU6Cj4gPiA+ID4gRG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDE0OjQ2OjU0IENF
U1QgamUgT25kxZllaiBKaXJtYW4gCm5hcGlzYWwoYSk6Cj4gPiA+ID4gPiBIaSwKPiA+ID4gPiA+
IAo+ID4gPiA+ID4gT24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgMDI6MzI6MzJQTSArMDIwMCwgSmVy
bmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiA+ID4gPiBIaSEKPiA+ID4gPiA+ID4gCj4gPiA+ID4g
PiA+IERuZSB0b3JlaywgMjAuIGF2Z3VzdCAyMDE5IG9iIDE3OjE5OjMzIENFU1QgamUgbWVnb3Vz
QG1lZ291cy5jb20KPiA+ID4gPiAKPiA+ID4gPiBuYXBpc2FsKGEpOgo+ID4gPiA+ID4gPiA+IEZy
b206IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29tPgo+ID4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiA+IFJUQyBvbiBINiBpcyBtb3N0bHkgdGhlIHNhbWUgYXMgb24gSDUgYW5kIEgzLiBJ
dCBoYXMgc2xpZ2h0Cj4gPiA+ID4gPiA+ID4gZGlmZmVyZW5jZXMKPiA+ID4gPiA+ID4gPiBtb3N0
bHkgaW4gZmVhdHVyZXMgdGhhdCBhcmUgbm90IHlldCBzdXBwb3J0ZWQgYnkgdGhpcyBkcml2ZXIu
Cj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gU29tZSBkaWZmZXJlbmNlcyBhcmUgYWxyZWFk
eSBzdGF0ZWQgaW4gdGhlIGNvbW1lbnRzIGluIGV4aXN0aW5nCj4gPiA+ID4gPiA+ID4gY29kZS4K
PiA+ID4gPiA+ID4gPiBPbmUgb3RoZXIgZGlmZmVyZW5jZSBpcyB0aGF0IEg2IGhhcyBleHRyYSBi
aXQgaW4gTE9TQ19DVFJMX1JFRywKPiA+ID4gPiA+ID4gPiBjYWxsZWQKPiA+ID4gPiA+ID4gPiBF
WFRfTE9TQ19FTiB0byBlbmFibGUvZGlzYWJsZSBleHRlcm5hbCBsb3cgc3BlZWQgY3J5c3RhbAo+
ID4gPiA+ID4gPiA+IG9zY2lsbGF0b3IuCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gSXQg
YWxzbyBoYXMgYml0IEVYVF9MT1NDX1NUQSBpbiBMT1NDX0FVVE9fU1dUX1NUQV9SRUcsIHRvIGNo
ZWNrCj4gPiA+ID4gPiA+ID4gd2hldGhlcgo+ID4gPiA+ID4gPiA+IGV4dGVybmFsIGxvdyBzcGVl
ZCBvc2NpbGxhdG9yIGlzIHdvcmtpbmcgY29ycmVjdGx5Lgo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+
ID4gPiA+IFRoaXMgcGF0Y2ggYWRkcyBzdXBwb3J0IGZvciBlbmFibGluZyBMT1NDIHdoZW4gbmVj
ZXNzYXJ5Ogo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiA+IC0gZHVyaW5nIHJlcGFyZW50aW5n
Cj4gPiA+ID4gPiA+ID4gLSB3aGVuIHByb2JpbmcgdGhlIGNsb2NrCj4gPiA+ID4gPiA+ID4gCj4g
PiA+ID4gPiA+ID4gSDYgYWxzbyBoYXMgY2FwYWNiaWxpdHkgdG8gYXV0b21hdGljYWxseSByZXBh
cmVudCBSVEMgY2xvY2sgZnJvbQo+ID4gPiA+ID4gPiA+IGV4dGVybmFsIGNyeXN0YWwgb3NjaWxs
YXRvciwgdG8gaW50ZXJuYWwgUkMgb3NjaWxsYXRvciwgaWYKPiA+ID4gPiA+ID4gPiBleHRlcm5h
bAo+ID4gPiA+ID4gPiA+IG9zY2lsbGF0b3IgZmFpbHMuIFRoaXMgaXMgZW5hYmxlZCBieSBkZWZh
dWx0LiBEaXNhYmxlIGl0IGR1cmluZwo+ID4gPiA+ID4gPiA+IHByb2JlLgo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdv
dXMuY29tPgo+ID4gPiA+ID4gPiA+IFJldmlld2VkLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnNAY3Np
ZS5vcmc+Cj4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gIGRy
aXZlcnMvcnRjL3J0Yy1zdW42aS5jIHwgNDAKPiA+ID4gPiA+ID4gPiAgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKystLQo+ID4gPiA+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwg
MzggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMgYi9kcml2ZXJzL3J0Yy9y
dGMtc3VuNmkuYwo+ID4gPiA+ID4gPiA+IGluZGV4IGQ1MGVlMDIzYjU1OS4uYjBjMzc1MmJlZDNm
IDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+
ID4gPiA+ID4gKysrIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiA+ID4gPiBAQCAt
MzIsOSArMzIsMTEgQEAKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiAgLyogQ29udHJvbCBy
ZWdpc3RlciAqLwo+ID4gPiA+ID4gPiA+ICAjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTAkJCQkKMHgw
MDAwCj4gPiA+ID4gPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMX0tFWQkJCSgweDE2YWEK
PiA+IAo+ID4gPDwgMTYpCj4gPiAKPiA+ID4gPiA+ID4gPiArI2RlZmluZSBTVU42SV9MT1NDX0NU
UkxfQVVUT19TV1RfQllQQVNTCQlCSVQoMTUpCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBVc2Vy
IG1hbnVhbCBzYXlzIHRoYXQgYWJvdmUgZmllbGQgaXMgYml0IDE0Lgo+ID4gPiA+ID4gCj4gPiA+
ID4gPiBTZWUgdGhlIHByZXZpb3VzIGRpc2N1c3Npb24sIHRoaXMgaXMgZnJvbSBCU1AuCj4gPiA+
ID4gCj4gPiA+ID4gSSBoYXZlIHR3byB2ZXJzaW9ucyBvZiBCU1AgKGRvbid0IGFzayBtZSB3aGlj
aCkgd2hpY2ggaGF2ZSB0aGlzIHNldCBhcwo+ID4gPiA+IGJpdAo+ID4gPiA+IDE0IGFuZCBjaGFu
Z2luZyB0aGlzIHRvIDE0IGFjdHVhbGx5IHNvbHZlcyBhbGwgbXkgcHJvYmxlbXMgd2l0aCBMT1ND
Cj4gPiA+ID4gKG5vCj4gPiA+ID4gbW9yZSBpc3N1ZXMgd2l0aCBzZXR0aW5nIFJUQyBhbmQgSERN
SS1DRUMgd29ya3Mgbm93IC0gaXQgdXNlcyBMT1NDIGFzCj4gPiA+ID4gcGFyZW50KSBvbiBUYW5p
eCBUWDYgYm94Lgo+ID4gPiAKPiA+ID4gSW50ZXJlc3RpbmcuIElzIExPU0MgZmVkIGV4dGVybmFs
bHkgZ2VuZXJhdGVkIGNsb2NrLCBvciBpcyBpdCBzZXR1cCBhcyBhCj4gPiA+IGNyeXN0YWwgb3Nj
aWxsYXRvciBvbiB5b3VyIGJvYXJkPwo+ID4gCj4gPiBJIHJlYWxseSBkb24ndCBrbm93LCBidXQg
aGVyZSBpcyBEVDogaHR0cDovL2l4LmlvLzFUaEkKPiA+IAo+ID4gPiBBbnl3YXksIHNlZSBoZXJl
Ogo+ID4gPiAKPiA+ID4gaHR0cHM6Ly9tZWdvdXMuY29tL2dpdC9saW51eC90cmVlL2RyaXZlcnMv
cnRjL3J0Yy1zdW54aS5oP2g9aDYtNC45LWJzcCNuCj4gPiA+IDY0OQo+ID4gPiBodHRwczovL21l
Z291cy5jb20vZ2l0L2xpbnV4L3RyZWUvZHJpdmVycy9ydGMvcnRjLXN1bnhpLmM/aD1oNi00Ljkt
YnNwI24KPiA+ID4gNjUyCj4gPiAKPiA+IEludGVyZXN0aW5nLCA0LjkgQlNQIGhhcyBhZGRpdGlv
bmFsIGJpdCBkZWZpbml0aW9uLCB3aGljaCBpcyBub3QKPiA+IGRvY3VtZW50ZWQgaW4gbWFudWFs
IGFuZCAzLjEwIEJTUCB0byB3aGljaCBJIHJlZmVyLgo+ID4gCj4gPiBJIHdhcyByZWZlcnJpbmcg
dG8gMy4xMCBCU1AsIHdoaWNoIHVzZXMgb25seSBiaXQgMTQuIEkgdGhvdWdodCB0aGF0IHlvdQo+
ID4gbmFtZWQgaXQgZGlmZmVyZW50bHkuCj4gPiAKPiA+ID4gSXQgd291bGQgYmUgbmljZSB0byBr
bm93IHdoYXQncyByZWFsbHkgaGFwcGVuaW5nLgo+ID4gPiAKPiA+ID4gTXkgb3V0cHV0IGlzOgo+
ID4gPiAKPiA+ID4gWyAgICAwLjgzMjI1Ml0gc3VuNmktcnRjIDcwMDAwMDAucnRjOiByZWdpc3Rl
cmVkIGFzIHJ0YzAKPiA+ID4gWyAgICAwLjgzMjI1N10gc3VuNmktcnRjIDcwMDAwMDAucnRjOiBS
VEMgZW5hYmxlZAo+ID4gPiBbICAgIDEuNzI4OTY4XSBzdW42aS1ydGMgNzAwMDAwMC5ydGM6IHNl
dHRpbmcgc3lzdGVtIGNsb2NrIHRvCj4gPiA+IDE5NzAtMDEtMDFUMDA6MDA6MDcgVVRDICg3KQo+
ID4gCj4gPiBXaXRoIGNoYW5nZSwgSSBnZXQgc2FtZSBvdXRwdXQuCj4gPiAKPiA+ID4gSSB0aGlu
aywgeW91IG1heSBoYXZlIGp1c3QgZW5hYmxlZCB0aGUgYXV0byBzd2l0Y2ggZmVhdHVyZSwgYW5k
IHJ1bm5pbmcKPiA+ID4gdGhlCj4gPiA+IGNsb2NrIGZyb20gbG93IHByZWNpc2lvbiBSQyBvc2Np
bGxhdG9yIHdpdGggeW91ciBwYXRjaC4KPiA+IAo+ID4gVHJ1ZSwgbm93IEkgdGhpbmsgdGhlcmUg
aXMgbm8gZXh0ZXJuYWwgY3J5c3RhbCwgYnV0IEknbSBzdGlsbCBub3Qgc3VyZSBob3cKPiA+IHRv
IGNvbmZpcm0gdGhhdC4KPiAKPiBWaXN1YWxseT8KPiAKPiBUaGF0IHdvdWxkIGV4cGxhaW4gd2h5
IGl0IGRvZXNuJ3Qgd29yayBmb3IgeW91LiBUaGUgbWFpbmxpbmUgUlRDIGRyaXZlcgo+IGRpc2Fi
bGVzIGF1dG8tc3dpdGNoIGZlYXR1cmUsIGFuZCBpZiB5b3VyIGJvYXJkIGRvZXNuJ3QgaGF2ZSBh
IGNyeXN0YWwgZm9yCj4gTE9TQywgUlRDIHdpbGwgbm90IGdlbmVyYXRlIGEgY2xvY2sgZm9yIHRo
ZSBSVEMuCj4gCj4gSDYncyBkdHNpIGRlc2NyaWJlcyBieSBkZWZhdWx0IGEgc2l0dWF0aXVvbiB3
aXRoIGV4dGVybmFsIDMyayBjcnlzdGFsCj4gb3NjaWxsYXRvci4gU2VlIGV4dF9vc2MzMmsgbm9k
ZS4gVGhhdCdzIGluY29ycmVjdCBmb3IgeW91ciBib2FyZCBpZiBpdAo+IGRvZXNuJ3QgaGF2ZSB0
aGUgY3J5c3RhbC4gWW91IG5lZWQgdG8gZml4IHRoaXMgaW4gdGhlIERUUyBmb3IgeW91ciBib2Fy
ZAo+IGluc3RlYWQgb2YgcGF0Y2hpbmcgdGhlIGRyaXZlci4KCkkgc2VlIHRoYXQgcmVwYXJlbnRp
bmcgaXMgc3VwcG9ydGVkLCBidXQgSSdtIG5vdCBzdXJlIGhvdyB0byBmaXggdGhhdCBpbiBEVC4g
CkFueSBzdWdnZXN0aW9uPwoKPiAKPiBUaGUgZHJpdmVyIGhhcyBwYXJlbnQgY2xvY2sgc2VsZWN0
aW9uIGxvZ2ljIGluIGNhc2UgdGhlIExPU0MgY3J5c3RhbCBpcyBub3QKPiB1c2VkLgo+IAo+IFlv
dXIgcGF0Y2ggZW5hYmxlcyBhdXRvbWF0aWMgZGV0ZWN0aW9uIG9mIExPU0MgZmFpbHVyZSBhbmQg
UlRDIGNoYW5nZXMgY2xvY2sKPiB0byBMT1NDIGF1dG9tYXRpY2FsbHksIGRlc3BpdGUgd2hhdCdz
IGRlc2NyaWJlZCBpbiB0aGUgRFRTLiBUaGF0IG1heSBmaXgKPiB0aGUgaXNzdWUsIGJ1dCBpcyBu
b3QgdGhlIGNvcnJlY3Qgc29sdXRpb24uCj4gCj4gUmVnaXN0ZXJzIG9uIG15IGJvYXJkIGxvb2sg
bGlrZSB0aGlzIChleHRlcm5hbCAzMmsgb3NjIGlzIHVzZWQpIGZvcgo+IHJlZmVyZW5jZToKPiAK
PiBMT1NDX0NUUkxfUkVHWzcwMDAwMDBdOiA4MDExCj4gCUtFWV9GSUVMRCAgICAgICAgICAgICAg
ICAgICAgICA/Pz8gICAgICAgICAgICAgICAgICAoMCkKPiAJTE9TQ19BVVRPX1NXVF9CWVBBU1Mg
ICAgICAgICAgIEVOICAgICAgICAgICAgICAgICAgICgxKQo+IAlMT1NDX0FVVE9fU1dUX0VOICAg
ICAgICAgICAgICAgRElTICAgICAgICAgICAgICAgICAgKDApCj4gCUVYVF9MT1NDX0VOICAgICAg
ICAgICAgICAgICAgICBFTiAgICAgICAgICAgICAgICAgICAoMSkKPiAJRVhUX0xPU0NfR1NNICAg
ICAgICAgICAgICAgICAgIExPVyAgICAgICAgICAgICAgICAgICgwKQo+IAlCQVRURVJZX0RJUiAg
ICAgICAgICAgICAgICAgICAgRElTQ0hBUkdFICAgICAgICAgICAgKDApCj4gCUxPU0NfU1JDX1NF
TCAgICAgICAgICAgICAgICAgICBFWFQzMmsgICAgICAgICAgICAgICAoMSkKPiAKPiBMT1NDX0FV
VE9fU1dUX1NUQV9SRUdbNzAwMDAwNF06IDEKPiAJRVhUX0xPU0NfU1RBICAgICAgICAgICAgICAg
ICAgIE9LICAgICAgICAgICAgICAgICAgICgwKQo+IAlMT1NDX0FVVE9fU1dUX1BFTkQgICAgICAg
ICAgICAgTk9FRkYgICAgICAgICAgICAgICAgKDApCj4gCUxPU0NfU1JDX1NFTF9TVEEgICAgICAg
ICAgICAgICBFWFQzMksgICAgICAgICAgICAgICAoMSkKPiAKCkluIG15IGNhc2UgTE9TQ19DVFJM
X1JFRyBoYXMgdmFsdWUgMHg0MDEwIGFuZCBMT1NDX0FVVE9fU1dUX1NUQV9SRUcKaGFzIHZhbHVl
IDB4NCwgc28gdGhlcmUgaXMgaXNzdWUgd2l0aCBleHRlcm5hbCBjcnlzdGFsIChpdCdzIG1pc3Np
bmcpIGFuZCBSVEMgCnN3aXRjaGVkIHRvIGludGVybmFsIG9uZS4KCkJUVywgd2hhdCdzIHdyb25n
IHdpdGggYXV0b21hdGljIHN3aXRjaGluZz8gV2h5IGlzIGl0IGRpc2FibGVkPwoKQmVzdCByZWdh
cmRzLApKZXJuZWoKCj4gcmVnYXJkcywKPiAJby4KPiAKPiA+ID4gVGhlIHJlYWwgaXNzdWUgcHJv
YmFibHkgaXMgdGhhdCB0aGUgbWFpbmxpbmUgZHJpdmVyIGlzIG1pc3NpbmcgdGhpczoKPiA+ID4g
Cj4gPiA+IGh0dHBzOi8vbWVnb3VzLmNvbS9naXQvbGludXgvdHJlZS9kcml2ZXJzL3J0Yy9ydGMt
c3VueGkuYz9oPWg2LTQuOS1ic3Ajbgo+ID4gPiA2NTAKPiA+IAo+ID4gTm90IHN1cmUgd2hhdCB5
b3UgbWVhbiBieSB0aGF0LiBleHQgdnMuIGludCBzb3VyY2Ugc2VsZWN0aW9uPwo+ID4gCj4gPiAK
PiA+IAo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+ID4gcmVnYXJkcywKPiA+
ID4gCj4gPiA+IAlvLgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
