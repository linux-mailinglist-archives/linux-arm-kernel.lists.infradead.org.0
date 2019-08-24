Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1759BDCF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 14:52:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dbXI66rRTkWsG+s+E3kHRzdenRXcv2md+zs42oTXYNM=; b=RAn/CbzfIghk7w
	B0FKp9fIOw9H5BA/ifbZfxcMhIh6xAgspupOF3SuuyCXXcrxYKKqcWzm9fLhROBcONpNJG54bcjJ1
	sO18mejTQfcPydwmTAaEhFYwj82bjNl+kwUpWTzR5TRh8bJ4sHRyHHu/aVDQITCQxUZHirMpatf6k
	g9XnQ1imo4SbQbDRfASBArosmhO8Fe7gnnjAGbL39VWVlON2EbZ3CcRFscRuKG7pxHtVID3LESBOI
	VL+jC6E9qSIRi5y37d3yZmi8K+5uyPuLQ2YcvRBKdZN/MsRNCO2nbOTC7Njp/smEVm4Z5rkklDD3O
	H2m/WbU99L6MWJumkyqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1VWc-000371-SM; Sat, 24 Aug 2019 12:52:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1VWP-00036i-UL
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 12:51:59 +0000
Received: by mail-wm1-x344.google.com with SMTP id i63so11572079wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 05:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JSgBV9MBCShO23OlCjtj1CCdf6hYfzoSBp8lTwJA768=;
 b=DQOWN/QllzrZCKEEfJTX0d8DK3Q5l62tpgb+ClmsobNkM1smqVElk3LZXWQHZ8TcQN
 VXmjUPPTANYEMYy8ya0ffCri/QQPYPLd5H87tV451FJyxCg0TghiSUJwWn2W8LZcSloS
 sOnlX/pwGpiGUjzswmORlJ4WYCCwvz7w93/KCN+hrMI7KGdCUSrk860aGdFloR1fp7r0
 b6hyFdwrayXWxGob/65C7mvd97h3ciFXy5CLD5erFAMPlGs1SqV2WxHGTu5vlFycHIOf
 3TkZaq+L/nCfXLv6AvvVroLIrrnAZydWXDMOLCUfneleK0ho5G2hBagGBgODfO8+Onob
 XCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JSgBV9MBCShO23OlCjtj1CCdf6hYfzoSBp8lTwJA768=;
 b=iFszkbPmpzqhZToQdmEemCgEmxvmAhNEnixMNz554yhQgLUM4BxG6khx7d9+TqlXX0
 6K1Cy3XjHOkmrkVnV0M5ahlteP3FYThnZdb9hzd7BZI/0jZp8lshWr/9uuxkvYY8uuhn
 qHYDEWnnSLEAE3HBVVlFvsGmWn7DSXMfQY5SY9z+YO1sUB+p3r0D507oztTVgtgTe1iv
 CfvWFvJs1aE2g+0V2MfIcJat6SQjhLSYNhLcrG6rxoVyI8H1SzEnvH/BYsjSSDtxuzwY
 GwZ1+CYDrgrZ9bHttSI3br5Q7Vo5POa348Ttvv5eK1TB8B+itZY3dBm0hiYh0m/czjE0
 vInQ==
X-Gm-Message-State: APjAAAVmiWBaXn+0BlkMBNTVwiMzSmlHcC7dRRN4mXySkhy4dv7CC9zw
 DNOpZ3/fCNZfBiK2sf+vJAE=
X-Google-Smtp-Source: APXvYqyvhwbblN+bZH29XrpPziQbV1Z4wd+D5QAB1tLgIqjaVKuNScNG/puKVyL3rPXsdJYddWsrBg==
X-Received: by 2002:a1c:a003:: with SMTP id j3mr10880353wme.42.1566651116545; 
 Sat, 24 Aug 2019 05:51:56 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net.
 [86.58.59.25])
 by smtp.gmail.com with ESMTPSA id 12sm6028495wmi.34.2019.08.24.05.51.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 24 Aug 2019 05:51:55 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com, megous@megous.com
Subject: Re: [linux-sunxi] [PATCH v2 2/3] rtc: sun6i: Add support for H6 RTC
Date: Sat, 24 Aug 2019 14:51:54 +0200
Message-ID: <2544007.NTLiB2pbcT@jernej-laptop>
In-Reply-To: <20190824124654.nqtlkam2gsaqsj77@core.my.home>
References: <20190820151934.3860-1-megous@megous.com>
 <10586215.O0B29uHg7A@jernej-laptop>
 <20190824124654.nqtlkam2gsaqsj77@core.my.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_055157_981708_4519FEA1 
X-CRM114-Status: GOOD (  28.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

RG5lIHNvYm90YSwgMjQuIGF2Z3VzdCAyMDE5IG9iIDE0OjQ2OjU0IENFU1QgamUgT25kxZllaiBK
aXJtYW4gbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCAwMjoz
MjozMlBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBIaSEKPiA+IAo+ID4gRG5l
IHRvcmVrLCAyMC4gYXZndXN0IDIwMTkgb2IgMTc6MTk6MzMgQ0VTVCBqZSBtZWdvdXNAbWVnb3Vz
LmNvbSAKbmFwaXNhbChhKToKPiA+ID4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnb3VzQG1lZ291
cy5jb20+Cj4gPiA+IAo+ID4gPiBSVEMgb24gSDYgaXMgbW9zdGx5IHRoZSBzYW1lIGFzIG9uIEg1
IGFuZCBIMy4gSXQgaGFzIHNsaWdodCBkaWZmZXJlbmNlcwo+ID4gPiBtb3N0bHkgaW4gZmVhdHVy
ZXMgdGhhdCBhcmUgbm90IHlldCBzdXBwb3J0ZWQgYnkgdGhpcyBkcml2ZXIuCj4gPiA+IAo+ID4g
PiBTb21lIGRpZmZlcmVuY2VzIGFyZSBhbHJlYWR5IHN0YXRlZCBpbiB0aGUgY29tbWVudHMgaW4g
ZXhpc3RpbmcgY29kZS4KPiA+ID4gT25lIG90aGVyIGRpZmZlcmVuY2UgaXMgdGhhdCBINiBoYXMg
ZXh0cmEgYml0IGluIExPU0NfQ1RSTF9SRUcsIGNhbGxlZAo+ID4gPiBFWFRfTE9TQ19FTiB0byBl
bmFibGUvZGlzYWJsZSBleHRlcm5hbCBsb3cgc3BlZWQgY3J5c3RhbCBvc2NpbGxhdG9yLgo+ID4g
PiAKPiA+ID4gSXQgYWxzbyBoYXMgYml0IEVYVF9MT1NDX1NUQSBpbiBMT1NDX0FVVE9fU1dUX1NU
QV9SRUcsIHRvIGNoZWNrIHdoZXRoZXIKPiA+ID4gZXh0ZXJuYWwgbG93IHNwZWVkIG9zY2lsbGF0
b3IgaXMgd29ya2luZyBjb3JyZWN0bHkuCj4gPiA+IAo+ID4gPiBUaGlzIHBhdGNoIGFkZHMgc3Vw
cG9ydCBmb3IgZW5hYmxpbmcgTE9TQyB3aGVuIG5lY2Vzc2FyeToKPiA+ID4gCj4gPiA+IC0gZHVy
aW5nIHJlcGFyZW50aW5nCj4gPiA+IC0gd2hlbiBwcm9iaW5nIHRoZSBjbG9jawo+ID4gPiAKPiA+
ID4gSDYgYWxzbyBoYXMgY2FwYWNiaWxpdHkgdG8gYXV0b21hdGljYWxseSByZXBhcmVudCBSVEMg
Y2xvY2sgZnJvbQo+ID4gPiBleHRlcm5hbCBjcnlzdGFsIG9zY2lsbGF0b3IsIHRvIGludGVybmFs
IFJDIG9zY2lsbGF0b3IsIGlmIGV4dGVybmFsCj4gPiA+IG9zY2lsbGF0b3IgZmFpbHMuIFRoaXMg
aXMgZW5hYmxlZCBieSBkZWZhdWx0LiBEaXNhYmxlIGl0IGR1cmluZwo+ID4gPiBwcm9iZS4KPiA+
ID4gCj4gPiA+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ291c0BtZWdvdXMuY29t
Pgo+ID4gPiBSZXZpZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zQGNzaWUub3JnPgo+ID4gPiAt
LS0KPiA+ID4gCj4gPiA+ICBkcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYyB8IDQwICsrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBp
bnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcnRjL3J0Yy1zdW42aS5jIGIvZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gaW5k
ZXggZDUwZWUwMjNiNTU5Li5iMGMzNzUyYmVkM2YgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMv
cnRjL3J0Yy1zdW42aS5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+
IEBAIC0zMiw5ICszMiwxMSBAQAo+ID4gPiAKPiA+ID4gIC8qIENvbnRyb2wgcmVnaXN0ZXIgKi8K
PiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMCQkJCTB4MDAwMAo+ID4gPiAgI2RlZmluZSBT
VU42SV9MT1NDX0NUUkxfS0VZCQkJKDB4MTZhYSA8PCAxNikKPiA+ID4gCj4gPiA+ICsjZGVmaW5l
IFNVTjZJX0xPU0NfQ1RSTF9BVVRPX1NXVF9CWVBBU1MJCUJJVCgxNSkKPiA+IAo+ID4gVXNlciBt
YW51YWwgc2F5cyB0aGF0IGFib3ZlIGZpZWxkIGlzIGJpdCAxNC4KPiAKPiBTZWUgdGhlIHByZXZp
b3VzIGRpc2N1c3Npb24sIHRoaXMgaXMgZnJvbSBCU1AuCgpJIGhhdmUgdHdvIHZlcnNpb25zIG9m
IEJTUCAoZG9uJ3QgYXNrIG1lIHdoaWNoKSB3aGljaCBoYXZlIHRoaXMgc2V0IGFzIGJpdCAxNCAK
YW5kIGNoYW5naW5nIHRoaXMgdG8gMTQgYWN0dWFsbHkgc29sdmVzIGFsbCBteSBwcm9ibGVtcyB3
aXRoIExPU0MgKG5vIG1vcmUgCmlzc3VlcyB3aXRoIHNldHRpbmcgUlRDIGFuZCBIRE1JLUNFQyB3
b3JrcyBub3cgLSBpdCB1c2VzIExPU0MgYXMgcGFyZW50KSBvbiAKVGFuaXggVFg2IGJveC4KCkJl
c3QgcmVnYXJkcywKSmVybmVqCgo+IAo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4gPiBCZXN0IHJlZ2Fy
ZHMsCj4gPiBKZXJuZWoKPiA+IAo+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfQUxNX0RI
TVNfQUNDCQlCSVQoOSkKPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMX1JUQ19ITVNfQUND
CQlCSVQoOCkKPiA+ID4gICNkZWZpbmUgU1VONklfTE9TQ19DVFJMX1JUQ19ZTURfQUNDCQlCSVQo
NykKPiA+ID4gCj4gPiA+ICsjZGVmaW5lIFNVTjZJX0xPU0NfQ1RSTF9FWFRfTE9TQ19FTgkJQklU
KDQpCj4gPiA+IAo+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfRVhUX09TQwkJCUJJVCgw
KQo+ID4gPiAgI2RlZmluZSBTVU42SV9MT1NDX0NUUkxfQUNDX01BU0sJCUdFTk1BU0soOSwgNykK
PiA+ID4gCj4gPiA+IEBAIC0xMjgsNiArMTMwLDggQEAgc3RydWN0IHN1bjZpX3J0Y19jbGtfZGF0
YSB7Cj4gPiA+IAo+ID4gPiAgCXVuc2lnbmVkIGludCBoYXNfcHJlc2NhbGVyIDogMTsKPiA+ID4g
IAl1bnNpZ25lZCBpbnQgaGFzX291dF9jbGsgOiAxOwo+ID4gPiAgCXVuc2lnbmVkIGludCBleHBv
cnRfaW9zYyA6IDE7Cj4gPiA+IAo+ID4gPiArCXVuc2lnbmVkIGludCBoYXNfbG9zY19lbiA6IDE7
Cj4gPiA+ICsJdW5zaWduZWQgaW50IGhhc19hdXRvX3N3dCA6IDE7Cj4gPiA+IAo+ID4gPiAgfTsK
PiA+ID4gIAo+ID4gPiAgc3RydWN0IHN1bjZpX3J0Y19kZXYgewo+ID4gPiAKPiA+ID4gQEAgLTE5
MCw2ICsxOTQsMTAgQEAgc3RhdGljIGludCBzdW42aV9ydGNfb3NjX3NldF9wYXJlbnQoc3RydWN0
IGNsa19odwo+ID4gPiAqaHcsCj4gPiA+IHU4IGluZGV4KSB2YWwgJj0gflNVTjZJX0xPU0NfQ1RS
TF9FWFRfT1NDOwo+ID4gPiAKPiA+ID4gIAl2YWwgfD0gU1VONklfTE9TQ19DVFJMX0tFWTsKPiA+
ID4gIAl2YWwgfD0gaW5kZXggPyBTVU42SV9MT1NDX0NUUkxfRVhUX09TQyA6IDA7Cj4gPiA+IAo+
ID4gPiArCWlmIChydGMtPmRhdGEtPmhhc19sb3NjX2VuKSB7Cj4gPiA+ICsJCXZhbCAmPSB+U1VO
NklfTE9TQ19DVFJMX0VYVF9MT1NDX0VOOwo+ID4gPiArCQl2YWwgfD0gaW5kZXggPyBTVU42SV9M
T1NDX0NUUkxfRVhUX0xPU0NfRU4gOiAwOwo+ID4gPiArCX0KPiA+ID4gCj4gPiA+ICAJd3JpdGVs
KHZhbCwgcnRjLT5iYXNlICsgU1VONklfTE9TQ19DVFJMKTsKPiA+ID4gIAlzcGluX3VubG9ja19p
cnFyZXN0b3JlKCZydGMtPmxvY2ssIGZsYWdzKTsKPiA+ID4gCj4gPiA+IEBAIC0yMTUsNiArMjIz
LDcgQEAgc3RhdGljIHZvaWQgX19pbml0IHN1bjZpX3J0Y19jbGtfaW5pdChzdHJ1Y3QKPiA+ID4g
ZGV2aWNlX25vZGUgKm5vZGUsIGNvbnN0IGNoYXIgKmlvc2NfbmFtZSA9ICJydGMtaW50LW9zYyI7
Cj4gPiA+IAo+ID4gPiAgCWNvbnN0IGNoYXIgKmNsa291dF9uYW1lID0gIm9zYzMyay1vdXQiOwo+
ID4gPiAgCWNvbnN0IGNoYXIgKnBhcmVudHNbMl07Cj4gPiA+IAo+ID4gPiArCXUzMiByZWc7Cj4g
PiA+IAo+ID4gPiAgCXJ0YyA9IGt6YWxsb2Moc2l6ZW9mKCpydGMpLCBHRlBfS0VSTkVMKTsKPiA+
ID4gIAlpZiAoIXJ0YykKPiA+ID4gCj4gPiA+IEBAIC0yMzUsOSArMjQ0LDE4IEBAIHN0YXRpYyB2
b2lkIF9faW5pdCBzdW42aV9ydGNfY2xrX2luaXQoc3RydWN0Cj4gPiA+IGRldmljZV9ub2RlICpu
b2RlLCBnb3RvIGVycjsKPiA+ID4gCj4gPiA+ICAJfQo+ID4gPiAKPiA+ID4gKwlyZWcgPSBTVU42
SV9MT1NDX0NUUkxfS0VZOwo+ID4gPiArCWlmIChydGMtPmRhdGEtPmhhc19hdXRvX3N3dCkgewo+
ID4gPiArCQkvKiBCeXBhc3MgYXV0by1zd2l0Y2ggdG8gaW50IG9zYywgb24gZXh0IGxvc2MgZmFp
bHVyZSAKKi8KPiA+ID4gKwkJcmVnIHw9IFNVTjZJX0xPU0NfQ1RSTF9BVVRPX1NXVF9CWVBBU1M7
Cj4gPiA+ICsJCXdyaXRlbChyZWcsIHJ0Yy0+YmFzZSArIFNVTjZJX0xPU0NfQ1RSTCk7Cj4gPiA+
ICsJfQo+ID4gPiArCj4gPiA+IAo+ID4gPiAgCS8qIFN3aXRjaCB0byB0aGUgZXh0ZXJuYWwsIG1v
cmUgcHJlY2lzZSwgb3NjaWxsYXRvciAqLwo+ID4gPiAKPiA+ID4gLQl3cml0ZWwoU1VONklfTE9T
Q19DVFJMX0tFWSB8IFNVTjZJX0xPU0NfQ1RSTF9FWFRfT1NDLAo+ID4gPiAtCSAgICAgICBydGMt
PmJhc2UgKyBTVU42SV9MT1NDX0NUUkwpOwo+ID4gPiArCXJlZyB8PSBTVU42SV9MT1NDX0NUUkxf
RVhUX09TQzsKPiA+ID4gKwlpZiAocnRjLT5kYXRhLT5oYXNfbG9zY19lbikKPiA+ID4gKwkJcmVn
IHw9IFNVTjZJX0xPU0NfQ1RSTF9FWFRfTE9TQ19FTjsKPiA+ID4gKwl3cml0ZWwocmVnLCBydGMt
PmJhc2UgKyBTVU42SV9MT1NDX0NUUkwpOwo+ID4gPiAKPiA+ID4gIAkvKiBZZXMsIEkga25vdywg
dGhpcyBpcyB1Z2x5LiAqLwo+ID4gPiAgCXN1bjZpX3J0YyA9IHJ0YzsKPiA+ID4gCj4gPiA+IEBA
IC0zNDUsNiArMzYzLDIzIEBAIENMS19PRl9ERUNMQVJFX0RSSVZFUihzdW44aV9oM19ydGNfY2xr
LAo+ID4gPiAiYWxsd2lubmVyLHN1bjhpLWgzLXJ0YyIsIENMS19PRl9ERUNMQVJFX0RSSVZFUihz
dW41MGlfaDVfcnRjX2NsaywKPiA+ID4gImFsbHdpbm5lcixzdW41MGktaDUtcnRjIiwgc3VuOGlf
aDNfcnRjX2Nsa19pbml0KTsKPiA+ID4gCj4gPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IHN1bjZp
X3J0Y19jbGtfZGF0YSBzdW41MGlfaDZfcnRjX2RhdGEgPSB7Cj4gPiA+ICsJLnJjX29zY19yYXRl
ID0gMTYwMDAwMDAsCj4gPiA+ICsJLmZpeGVkX3ByZXNjYWxlciA9IDMyLAo+ID4gPiArCS5oYXNf
cHJlc2NhbGVyID0gMSwKPiA+ID4gKwkuaGFzX291dF9jbGsgPSAxLAo+ID4gPiArCS5leHBvcnRf
aW9zYyA9IDEsCj4gPiA+ICsJLmhhc19sb3NjX2VuID0gMSwKPiA+ID4gKwkuaGFzX2F1dG9fc3d0
ID0gMSwKPiA+ID4gK307Cj4gPiA+ICsKPiA+ID4gK3N0YXRpYyB2b2lkIF9faW5pdCBzdW41MGlf
aDZfcnRjX2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSkKPiA+ID4gK3sKPiA+ID4g
KwlzdW42aV9ydGNfY2xrX2luaXQobm9kZSwgJnN1bjUwaV9oNl9ydGNfZGF0YSk7Cj4gPiA+ICt9
Cj4gPiA+ICtDTEtfT0ZfREVDTEFSRV9EUklWRVIoc3VuNTBpX2g2X3J0Y19jbGssICJhbGx3aW5u
ZXIsc3VuNTBpLWg2LXJ0YyIsCj4gPiA+ICsJCSAgICAgIHN1bjUwaV9oNl9ydGNfY2xrX2luaXQp
Owo+ID4gPiArCj4gPiA+IAo+ID4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzdW42aV9ydGNfY2xr
X2RhdGEgc3VuOGlfdjNfcnRjX2RhdGEgPSB7Cj4gPiA+ICAKPiA+ID4gIAkucmNfb3NjX3JhdGUg
PSAzMjAwMCwKPiA+ID4gIAkuaGFzX291dF9jbGsgPSAxLAo+ID4gPiAKPiA+ID4gQEAgLTY3NSw2
ICs3MTAsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCBzdW42aV9ydGNfZHRf
aWRzW10KPiA+ID4gPSB7Cj4gPiA+IAo+ID4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVy
LHN1bjhpLXI0MC1ydGMiIH0sCj4gPiA+ICAJeyAuY29tcGF0aWJsZSA9ICJhbGx3aW5uZXIsc3Vu
OGktdjMtcnRjIiB9LAo+ID4gPiAgCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUwaS1o
NS1ydGMiIH0sCj4gPiA+IAo+ID4gPiArCXsgLmNvbXBhdGlibGUgPSAiYWxsd2lubmVyLHN1bjUw
aS1oNi1ydGMiIH0sCj4gPiA+IAo+ID4gPiAgCXsgLyogc2VudGluZWwgKi8gfSwKPiA+ID4gIAo+
ID4gPiAgfTsKPiA+ID4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUob2YsIHN1bjZpX3J0Y19kdF9pZHMp
Owo+ID4gCj4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+ID4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiA+IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
