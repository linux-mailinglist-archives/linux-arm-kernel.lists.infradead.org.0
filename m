Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E647154997
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 17:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pli1fIXk9AFfgwU+A2vpT+kN7XAksm2DZwL7OaHv2c0=; b=pFCWFSgppkn7IZ
	lPWkC3uo1TjK3YpOziwMBzO7uKXfIQn6WqOt/3DPc1K4Lc4Npwc0IONhHj3BgaC19Lz3NfJp/pOqJ
	yk7k0tB13WrTJkeMC0m3RmnI+qhK3ez3OLBXKq7GjLnv03drAL6gDTRNoMIwI2cuo2hvP3ytNcarc
	aDeXqNW/QeCC7E2c0yPUXhUKQ7CE1s0w/vVLApnJ3do9tds7i0CUY7CRO7edQUjdGVcXLD7Spkq+N
	r0O/7AnEzqhj5Tz93AhanlgD1eF3r/w7PPGniIva8aDCNncvWNQxFToDsBNhKh2JQc9PV4J4RmDDG
	ntlS/pnyrucaZZ2Od+TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izkIj-0005c6-VE; Thu, 06 Feb 2020 16:46:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izkIb-0005bc-FJ
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 16:46:43 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so737862wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 08:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=loAhNVzsToCeFUtt4Vedin+3l88IYbYUEEJOgJLXKKQ=;
 b=L5OfpsxnjoEDYBIyYUTzAo7zosppZZUJ8kJHjeUACZsXoPWR8SKkQUeq6LppLGKR6M
 mnSEjWYZqSpbLbRema8M0rmg0kR1aQbjDXHseKLfCZnshvsaN8QB1dSF7FHMLOSfZcE6
 DD4UFj4ZFEvYLtpwHzP4HUOy/8NP8bG4K0unxTECGHq3823dWCrH/XB1xhdxXgAAPZVi
 EQpvoP3K3kAaHMRaYvpz2uYeJbhGd8hSR1XdBajUri03bLMH6F03fHG2J5YHyuRxmAgV
 2qTf2k/aMNwTUAorK20DCJ5+X0oj9PyHl2i2l8+wUz/fiJi2r1SGXuEaPuFGqKGCLBV9
 1Msg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=loAhNVzsToCeFUtt4Vedin+3l88IYbYUEEJOgJLXKKQ=;
 b=bwlq6332uB1MowMXvf8TWjveiTA2B63nhpqAKZLjofQAdbS/m9Wq+RGS1o691oNdt1
 vRvb272KB2y87LoIwvDmH91RMy2FJDiDfglmohFbR3azkBXhYgXGu7KOmLmYJLMWTsNP
 A8nH7/mBcxdunFDARBzSeMLGEi2qS5FfbFrYyv1yl29hbH3kNxRFmTxtFNIci96P/IJC
 6wzWbqVWWpjcYaHYBiFCj9FMDOwfAi3m/B2Rw3IxY/lhk9PlPzU07mBrtI/2mFlZ9NJl
 mIjJLqtlW6oqn/i/BQLCjDaDtVIMJbRFF8hOxZbs+VCYI4x8dLndKnd86ammQq7VEgOY
 +U5A==
X-Gm-Message-State: APjAAAUiO7BPIzUtFgcghtCHCdwLeniXXV6wSPYCjC2ANSqe03yh2ojk
 MC76q0W5XhgvZMf7axMdI8wuJw==
X-Google-Smtp-Source: APXvYqxUIGgf+91RMGU87pH6ddlf8OdSzFvpq7OzlYWuVQVnJEXRmpnLXxWRpBO01WNSdSgh4m7AEw==
X-Received: by 2002:a1c:4383:: with SMTP id q125mr5516331wma.88.1581007598592; 
 Thu, 06 Feb 2020 08:46:38 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:3889:2de0:ee2:ab1f?
 ([2a01:e34:ed2f:f020:3889:2de0:ee2:ab1f])
 by smtp.googlemail.com with ESMTPSA id f189sm114612wmf.16.2020.02.06.08.46.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Feb 2020 08:46:38 -0800 (PST)
Subject: Re: [PATCH v8 0/7] add thermal sensor driver for A64, A83T, H3, H5,
 H6, R40
To: Amit Kucheria <amit.kucheria@verdurent.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
References: <20191219172823.1652600-1-anarsoul@gmail.com>
 <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <af5383b5-2dd4-92ab-ded2-f1cde48bb21a@linaro.org>
Date: Thu, 6 Feb 2020 17:46:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAHLCerPWEDqEE8LRUiO5GpeP+BfnestocndBQq6oXAxVN=+3ow@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_084641_898785_D7C14F34 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megous@megous.com>,
 Linux PM list <linux-pm@vger.kernel.org>, Yangtao Li <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, "David S. Miller" <davem@davemloft.net>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CkhpIEFtaXQsCgpPbiAwNi8wMi8yMDIwIDE1OjEzLCBBbWl0IEt1Y2hlcmlhIHdyb3RlOgo+IEhp
IFZhc2lseSwKPiAKPiBGb3IgdGhpcyBlbnRpcmUgc2VyaWVzLCB0aGUgRFRTIGZpbGVzIGRvbid0
IGNvbnRhaW4gYW55IHRyaXAgcG9pbnRzLgo+IERpZCBJIG1pc3Mgc29tZSBvdGhlciBzZXJpZXM/
Cj4gCj4gQXQgYSBtaW5pbXVtLCB5b3Ugc2hvdWxkIGFkZCBzb21lICJob3QiIG9yICJjcml0aWNh
bCIgdHJpcCBwb2ludHMKPiBzaW5jZSB0aGVuIGRvbid0IHJlcXVpcmUgYSBjb29saW5nLW1hcCB3
aXRoIHRocm90dGxpbmcgYWN0aW9ucy4gSWYgeW91Cj4gaGF2ZSAicGFzc2l2ZSIgdHJpcCBwb2lu
dHMsIHRoZW4geW91IG5lZWQgdG8gcHJvdmlkZSBjb29saW5nLW1hcHMuCgpFeGNlcHQgSSdtIG1p
c3VuZGVyc3RhbmRpbmcgdGhlIGJpbmRpbmdzLCBhIHRoZXJtYWwgem9uZSBtdXN0IGRlZmluZQp0
aGVzZSByZXF1aXJlZCBwcm9wZXJ0aWVzOgoKLSBwb2xsaW5nLWRlbGF5Ci0gcG9sbGluZy1kZWxh
eS1wYXNzaXZlCi0gdGhlcm1hbC1zZW5zb3JzCi0gdHJpcHMKLSBjb29saW5nLW1hcHMKCgo+IFNp
bmNlIHRoaXMgc2VyaWVzIGhhcyBiZWVuIG1lcmdlZCwgY291bGQgeW91IHBsZWFzZSBmb2xsb3cg
dXAgd2l0aCBhCj4gZml4dXAgc2VyaWVzIHRvIGFkZCB0aGUgdHJpcCBwb2ludHM/Cj4gCj4gUmVn
YXJkcywKPiBBbWl0Cj4gcC5zLiBXZSBzaG91bGQgY2F0Y2ggYWxsIHRoaXMgYXV0b21hdGljYWxs
eSwgSSdsbCBzZW5kIG91dCB5YW1sCj4gYmluZGluZ3MgZm9yIHRoZSB0aGVybWFsIGZyYW1ld29y
ayBzb29uIHRoYXQgc2hvdWxkIGNhdGNoIHRoaXMgc3R1ZmYuCgorMQoKVGhlcmUgd2FzIGEgc21h
bGwgZGlzY3Vzc2lvbiBhYm91dCBjb252ZXJ0aW5nIHRoZSBiaW5kaW5nIHRvIGEgc2NoZW1hOgoK
aHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQvbGlzdHMvZGV2aWNldHJlZS9tc2czMzI0MjQuaHRtbAoK
Cgo+IE9uIFRodSwgRGVjIDE5LCAyMDE5IGF0IDEwOjU4IFBNIFZhc2lseSBLaG9ydXpoaWNrIDxh
bmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Pgo+PiBUaGlzIHBhdGNoc2V0IGFkZHMgZHJpdmVy
IGZvciB0aGVybWFsIHNlbnNvciBpbiBBNjQsIEE4M1QsIEgzLCBINSwKPj4gSDYgYW5kIFI0MCBT
b0NzLgo+Pgo+PiB2ODoKPj4gICAgICAgICAtIFt2YXNpbHldIEFkZHJlc3MgbW9yZSBNYXhpbWUn
cyBjb21tZW50cyBmb3IgZHQtc2NoZW1hCj4+ICAgICAgICAgLSBbdmFzaWx5XSBBZGQgbXlzZWxm
IHRvIE1BSU5UQUlORVJTIGZvciB0aGUgZHJpdmVyIGFuZCBzY2hlbWEKPj4gICAgICAgICAtIFt2
YXNpbHldIFJvdW5kIGNhbGlicmF0aW9uIGRhdGEgc2l6ZSB0byB3b3JkIGJvdW5kYXJ5IGZvciBI
NiBhbmQgQTY0Cj4+ICAgICAgICAgLSBbdmFzaWx5XSBDaGFuZ2Ugb2Zmc2V0IGZvciBBNjQgc2lu
Y2UgaXQgcmVwb3J0cyB0b28gbG93IHRlbXAgb3RoZXJ3aXNlLgo+PiAgICAgICAgICAgICAgICAg
ICAgTGlrZWx5IGNvbnZlcnNpb24gZm9ybXVsYSBpbiB1c2VyIG1hbnVhbCBpcyBub3QgY29ycmVj
dC4KPj4KPj4gdjc6Cj4+ICAgICAgICAgLSBbdmFzaWx5XSBBZGRyZXNzIE1heGltZSdzIGNvbW1l
bnRzIGZvciBkdC1zY2hlbWEKPj4gICAgICAgICAtIFt2YXNpbHldIE1vdmUgY29tbW9uIHBhcnQg
b2YgSDMgYW5kIEg1IGR0cyBpbnRvIHN1bnhpLWgzLWg1LmR0c2kKPj4gICAgICAgICAtIFt2YXNp
bHldIEFkZCBNYXhpbWUncyBhLWIgdG8gdGhlIGRyaXZlciBwYXRjaAo+Pgo+PiB2NjoKPj4gICAg
ICAgICAtIFtvbmRyZWosIHZhc2lseV0gU3F1YXNoIGFsbCBkcml2ZXIgcmVsYXRlZCBjaGFuZ2Vz
IGludG8gYQo+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaW5nbGUgcGF0Y2gKPj4gICAg
ICAgICAtIFtvbmRyZWpdIFJlbmFtZSBjYWxpYiAtPiBjYWxpYnJhdGlvbgo+PiAgICAgICAgIC0g
W29uZHJlal0gRml4IHRoZXJtYWwgem9uZSByZWdpc3RyYXRpb24gY2hlY2sKPj4gICAgICAgICAt
IFtvbmRyZWpdIExvd2VyIHJhdGUgb2Ygc2Vuc29yIGRhdGEgaW50ZXJydXB0cyB0byA0L3NlYy9z
ZW5zb3IKPj4gICAgICAgICAtIFtvbmRyZWpdIFJld29yayBzY2FsZS9vZmZzZXQgdmFsdWVzLCBI
NiBjYWxpYnJhdGlvbgo+PiAgICAgICAgIC0gW29uZHJlal0gRXhwbGljaXRseSBzZXQgbW9kIGNs
b2NrIHRvIDI0IE1Iego+PiAgICAgICAgIC0gW29uZHJlal0gU2V0IHVuZG9jdW1lbnRlZCBiaXRz
IGluIENUUkwwIGZvciBINgo+PiAgICAgICAgIC0gW29uZHJlal0gQWRkIHN1cHBvcnQgZm9yIEE4
M1QKPj4gICAgICAgICAtIFtvbmRyZWpdIEFkZCBkdHMgY2hhbmdlcyBmb3IgQTgzVCwgSDMsIEg1
LCBINgo+PiAgICAgICAgIC0gW3Zhc2lseV0gQWRkIGR0cyBjaGFuZ2VzIGZvciBBNjQKPj4gICAg
ICAgICAtIFt2YXNpbHldIEFkZHJlc3MgTWF4aW1lJ3MgY29tbWVudHMgZm9yIFlBTUwgc2NoZW1l
Cj4+ICAgICAgICAgLSBbdmFzaWx5XSBNYWtlIC5jYWxjX3RlbXAgY2FsbGJhY2sgbWFuZGF0b3J5
Cj4+ICAgICAgICAgLSBbdmFzaWx5XSBTZXQgLm1heF9yZWdpc3RlciBpbiByZWdtYXAgY29uZmln
LCBzbyByZWdzIGNhbiBiZQo+PiAgICAgICAgICAgICAgICAgICAgaW5zcGVjdGVkIHVzaW5nIGRl
YnVnZnMKPj4KPj4gT25kcmVqIEppcm1hbiAoNCk6Cj4+ICAgQVJNOiBkdHM6IHN1bjhpLWE4M3Q6
IEFkZCB0aGVybWFsIHNlbnNvciBhbmQgdGhlcm1hbCB6b25lcwo+PiAgIEFSTTogZHRzOiBzdW44
aS1oMzogQWRkIHRoZXJtYWwgc2Vuc29yIGFuZCB0aGVybWFsIHpvbmVzCj4+ICAgYXJtNjQ6IGR0
czogYWxsd2lubmVyOiBoNTogQWRkIHRoZXJtYWwgc2Vuc29yIGFuZCB0aGVybWFsIHpvbmVzCj4+
ICAgYXJtNjQ6IGR0czogYWxsd2lubmVyOiBoNjogQWRkIHRoZXJtYWwgc2Vuc29yIGFuZCB0aGVy
bWFsIHpvbmVzCj4+Cj4+IFZhc2lseSBLaG9ydXpoaWNrICgxKToKPj4gICBhcm02NDogZHRzOiBh
bGx3aW5uZXI6IGE2NDogQWRkIHRoZXJtYWwgc2Vuc29ycyBhbmQgdGhlcm1hbCB6b25lcwo+Pgo+
PiBZYW5ndGFvIExpICgyKToKPj4gICB0aGVybWFsOiBzdW44aTogYWRkIHRoZXJtYWwgZHJpdmVy
IGZvciBINi9INS9IMy9BNjQvQTgzVC9SNDAKPj4gICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWRk
IFlBTUwgc2NoZW1hIGZvciBzdW44aS10aGVybWFsIGRyaXZlcgo+PiAgICAgYmluZGluZ3MKPj4K
Pj4gIC4uLi90aGVybWFsL2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1sICAgICB8IDE2MCAr
KysrKwo+PiAgTUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICA4ICsKPj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3N1bjhpLWE4M3QuZHRzaSAgICAgICAgICAgICB8
ICAzNiArCj4+ICBhcmNoL2FybS9ib290L2R0cy9zdW44aS1oMy5kdHNpICAgICAgICAgICAgICAg
fCAgMjAgKwo+PiAgYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUuZHRzaSAgICAgICAgICAg
IHwgICA2ICsKPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQuZHRz
aSB8ICA0MiArKwo+PiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg1LmR0
c2kgIHwgIDI2ICsKPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oNi5k
dHNpICB8ICAzMyArCj4+ICBkcml2ZXJzL3RoZXJtYWwvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMTQgKwo+PiAgZHJpdmVycy90aGVybWFsL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgIHwgICAxICsKPj4gIGRyaXZlcnMvdGhlcm1hbC9zdW44aV90aGVybWFsLmMgICAgICAg
ICAgICAgICB8IDYzOSArKysrKysrKysrKysrKysrKysKPj4gIDExIGZpbGVzIGNoYW5nZWQsIDk4
NSBpbnNlcnRpb25zKCspCj4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1bjhpLWE4M3QtdGhzLnlhbWwKPj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3RoZXJtYWwvc3VuOGlfdGhlcm1hbC5jCj4+Cj4+
IC0tCj4+IDIuMjQuMQo+PgoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5v
cmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzog
IDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6
Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8u
b3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
