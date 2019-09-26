Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCFDBFB75
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 00:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ITIJ361LbkmlXXTtk+51ARjloeKb0gk1PWgirAS8WF8=; b=QJ9CUzxm3EKpOP
	88Hjl2AITkt9pTt7H1Jy9vvC2Qziz5Lq/6pmUwp4+xN/Q3oUbhQb7a6ziigajWqhei9qQ3OAY7VzS
	Mj2YZOnfUVfbLPCkblEvhHOw9y2/9m66HVjbDByoIr50HbF5AV3F46suvhLz32dRnNxLqcM64D2mq
	8Ld3cqgyJuCT8ZGjDZIbIC257oPB9ckIxl/vkn+M/3dolV/irurZK/qpG+aNRt4zs0vnj06QbEo/W
	vGS9XuDXekdq7T7LLgI8EZI2i/u065ruAqShmr6d4NU3s+5kiJSVoWmF+FNG1hMgxwj3fc9CIcI64
	6VbLck0T1wwX+my3IFug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDcbr-0005Cm-DT; Thu, 26 Sep 2019 22:51:39 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDcba-0005Bq-TV
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 22:51:25 +0000
Received: by mail-pl1-x644.google.com with SMTP id f19so261804plr.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 15:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version:content-transfer-encoding;
 bh=kg+W2f5e/pogc4hGhrCGEqMguXq5FDO31U9eHUNSVU8=;
 b=doq6egEf3LmGnlfezLhjQYmyH9WNiUDMElP8GikmAOh7DM8SV20L7QhN+Jvey9pbDt
 C9c2VT7GuS73tOkt5Ed0UHo5K8cTBGyf4trSfNwwP1JlrNpcP1tS6txwiKHKn6aRA7D0
 KK7BevD9aR5UOMIXyhDUxNBAV1wC/0MVWxgjBUlih/SCPDlFaDZFJShXDZjC8WY86VZ4
 2EgPqNpG/IpiEV2sgHZYGNGfLp5J3/o4zl+kOinTMaO+LipU23kg0/3Tz8BhoGodzKON
 hbsMy0+A397W+GVOMRGyRzkyXOTywv4U3+LNiQyTP264fqQIZ5g2eGH6Oktu/xqCnMaW
 KNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=kg+W2f5e/pogc4hGhrCGEqMguXq5FDO31U9eHUNSVU8=;
 b=Z3agjowfOyZfStO6ymxmTZDMxtpkBbrh261LnsNVIhpKPdnDVRAoJ3dczwbaS4XTYK
 3cKGCv5lLAmHDhOgoCNNOBi9ak7cXY0uZ4N3cSrlrd18WKAoALbS+6DSXzzyQkkCJp7U
 dc48mafOpkbty7TSSDHpMPNTNCz5YjbdPlYfOMMvHd3guXRtwtcgObjXAzJ7ULaexa0O
 gig7AodmpUm8R9hhds5wMsy5gee+4TnvADiVnJu9XfRz7dY2QzMBtSXhAQF8GpV48GP5
 p8SWYeGvsA4nXXf2SJOLIRYVvJ+4B5V8fK3CQ5sYijEbeDqIGTL1rMNo/SZidXkghkx2
 AesA==
X-Gm-Message-State: APjAAAWTocFF4YrXf4rtPxtP2X0p/S3Xm62QXfa0sqpbu4U+1mBWARdX
 PxWHyTVafyM6ea1H6VsdScWkmbxjz0dmgw==
X-Google-Smtp-Source: APXvYqwm2QmMOmlapOmvCZzfzmqAyybOChJa6QGvuyVRnsVKtwIzD0kUT3oqqJ7MALibHdkkoDNQbA==
X-Received: by 2002:a17:902:bc46:: with SMTP id
 t6mr1047383plz.307.1569538282342; 
 Thu, 26 Sep 2019 15:51:22 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id 64sm322938pfx.31.2019.09.26.15.51.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 26 Sep 2019 15:51:21 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: CPUfreq fail on rk3399-firefly
In-Reply-To: <7h8srjzuen.fsf@baylibre.com>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk> <7hmugdynmk.fsf@baylibre.com>
 <2314814.WbdfqDVNqK@phil> <7hv9uq9wfe.fsf@baylibre.com>
 <c973d3fa-5f0d-c277-7c83-6227942a671a@rock-chips.com>
 <7hd0gvzuvw.fsf@baylibre.com> <7h8srjzuen.fsf@baylibre.com>
Date: Thu, 26 Sep 2019 15:51:20 -0700
Message-ID: <7hh84yisd3.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_155122_957091_44ACF08A 
X-CRM114-Status: GOOD (  20.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-build-reports@lists.linaro.org, linux-rockchip@lists.infradead.org,
 linux-next@vger.kernel.org,
 =?utf-8?B?6Zer5a2d?= =?utf-8?B?5Yab?= <andy.yan@rock-chips.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

S2V2aW4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4gd3JpdGVzOgoKPiBLZXZpbiBIaWxt
YW4gPGtoaWxtYW5AYmF5bGlicmUuY29tPiB3cml0ZXM6Cj4KPj4gS2V2ZXIgWWFuZyA8a2V2ZXIu
eWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JpdGVzOgo+Pgo+Pj4gSGkgS2V2aW4sIEhlaWtvLAo+Pj4K
Pj4+IE9uIDIwMTkvOC8yMiDkuIrljYgyOjU5LCBLZXZpbiBIaWxtYW4gd3JvdGU6Cj4+Pj4gSGkg
SGVpa28sCj4+Pj4KPj4+PiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cml0ZXM6
Cj4+Pj4KPj4+Pj4gQW0gRGllbnN0YWcsIDEzLiBBdWd1c3QgMjAxOSwgMTk6MzU6MzEgQ0VTVCBz
Y2hyaWViIEtldmluIEhpbG1hbjoKPj4+Pj4+IFsgcmVzZW50IHdpdGggY29ycmVjdCBhZGRyIGZv
ciBsaW51eC1yb2NrY2hpcCBsaXN0IF0KPj4+Pj4+Cj4+Pj4+PiBNYXJrIEJyb3duIDxicm9vbmll
QGtlcm5lbC5vcmc+IHdyaXRlczoKPj4+Pj4+Cj4+Pj4+Pj4gT24gVGh1LCBKdWwgMTgsIDIwMTkg
YXQgMDQ6Mjg6MDhBTSAtMDcwMCwga2VybmVsY2kub3JnIGJvdCB3cm90ZToKPj4+Pj4+Pgo+Pj4+
Pj4+IFRvZGF5J3MgLW5leHQgc3RhcnRlZCBmYWlsaW5nIHRvIGJvb3QgZGVmY29uZmlnIG9uIHJr
MzM5OS1maXJlZmx5Ogo+Pj4+Pj4+Cj4+Pj4+Pj4+IGFybTY0Ogo+Pj4+Pj4+PiAgICAgIGRlZmNv
bmZpZzoKPj4+Pj4+Pj4gICAgICAgICAgZ2NjLTg6Cj4+Pj4+Pj4+ICAgICAgICAgICAgICByazMz
OTktZmlyZWZseTogMSBmYWlsZWQgbGFiCj4+Pj4+Pj4gSXQgaGl0cyBhIEJVRygpIHRyeWluZyB0
byBzZXQgdXAgY3B1ZnJlcToKPj4+Pj4+Pgo+Pj4+Pj4+IFsgICA4Ny4zODE2MDZdIGNwdWZyZXE6
IGNwdWZyZXFfb25saW5lOiBDUFUwOiBSdW5uaW5nIGF0IHVubGlzdGVkIGZyZXE6IDIwMDAwMCBL
SHoKPj4+Pj4+PiBbICAgODcuMzkzMjQ0XSBjcHVmcmVxOiBjcHVmcmVxX29ubGluZTogQ1BVMDog
VW5saXN0ZWQgaW5pdGlhbCBmcmVxdWVuY3kgY2hhbmdlZCB0bzogNDA4MDAwIEtIego+Pj4+Pj4+
IFsgICA4Ny40Njk3NzddIGNwdWZyZXE6IGNwdWZyZXFfb25saW5lOiBDUFU0OiBSdW5uaW5nIGF0
IHVubGlzdGVkIGZyZXE6IDEyMDAwIEtIego+Pj4+Pj4+IFsgICA4Ny40ODg1OTVdIGNwdSBjcHU0
OiBfZ2VuZXJpY19zZXRfb3BwX2Nsa19vbmx5OiBmYWlsZWQgdG8gc2V0IGNsb2NrIHJhdGU6IC0y
Mgo+Pj4+Pj4+IFsgICA4Ny40OTE4ODFdIGNwdWZyZXE6IF9fdGFyZ2V0X2luZGV4OiBGYWlsZWQg
dG8gY2hhbmdlIGNwdSBmcmVxdWVuY3k6IC0yMgo+Pj4+Pj4+IFsgICA4Ny40OTUzMzVdIC0tLS0t
LS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+Pj4+Pj4+IFsgICA4Ny40OTY4MjFdIGtl
cm5lbCBCVUcgYXQgZHJpdmVycy9jcHVmcmVxL2NwdWZyZXEuYzoxNDM4IQo+Pj4+Pj4+IFsgICA4
Ny40OTg0NjJdIEludGVybmFsIGVycm9yOiBPb3BzIC0gQlVHOiAwIFsjMV0gUFJFRU1QVCBTTVAK
Pj4+Pj4+Pgo+Pj4+Pj4+IEknbSBzdHJ1Z2dsaW5nIHRvIHNlZSBhbnl0aGluZyByZWxldmFudCBp
biB0aGUgZGlmZiBmcm9tIHllc3RlcmRheSwgdGhlCj4+Pj4+Pj4gdW5saXN0ZWQgZnJlcXVlbmN5
IHdhcm5pbmdzIHdlcmUgdGhlcmUgaW4gdGhlIGxvZ3MgeWVzdGVyZGF5IGJ1dCBubyBvb3BzCj4+
Pj4+Pj4gYW5kIEknbSBub3Qgc2VlaW5nIGFueSBjaGFuZ2VzIGluIGNwdWZyZXEsIGNsayBvciBh
bnl0aGluZyByZWxldmFudAo+Pj4+Pj4+IGxvb2tpbmcuCj4+Pj4+Pj4KPj4+Pj4+PiBGdWxsIGJv
b3Rsb2cgYW5kIG90aGVyIGluZm8gY2FuIGJlIGZvdW5kIGhlcmU6Cj4+Pj4+Pj4KPj4+Pj4+PiAJ
aHR0cHM6Ly9rZXJuZWxjaS5vcmcvYm9vdC9pZC81ZDMwMmQ4MzU5YjUxNDk4ZDA0OWU5ODMvCj4+
Pj4+PiBJIGNvbmZpcm0gdGhhdCBkaXNhYmxpbmcgQ1BVZnJlcSBpbiB0aGUgZGVmY29uZmlnIChD
T05GSUdfQ1BVX0ZSRVE9bikKPj4+Pj4+IG1ha2VzIHRoZSBmaXJlZmx5IGJvYXJkIHN0YXJ0IHdv
cmtpbmcgYWdhaW4uCj4+Pj4+Pgo+Pj4+Pj4gTm90ZSB0aGF0IHRoZSBkZWZhdWx0IGRlZmNvbmZp
ZyBlbmFibGVzIHRoZSAicGVyZm9ybWFuY2UiIENQVWZyZXEKPj4+Pj4+IGdvdmVybm9yIGFzIHRo
ZSBkZWZhdWx0IGdvdmVybm9yLCBzbyBkdXJpbmcga2VybmVsIGJvb3QsIGl0IHdpbGwgYWx3YXlz
Cj4+Pj4+PiBzd2l0Y2ggdG8gdGhlIG1heCBmcmVxdWVuY3kuCj4+Pj4+Pgo+Pj4+Pj4gRm9yIGZ1
biwgSSBzZXQgdGhlIGRlZmF1bHQgZ292ZXJub3IgdG8gInVzZXJzcGFjZSIgc28gdGhlIGtlcm5l
bAo+Pj4+Pj4gd291bGRuJ3QgbWFrZSBhbnkgT1BQIGNoYW5nZXMsIGFuZCB0aGF0IGxlYWRzIHRv
IGEgc2xpZ2h0bHkgbW9yZQo+Pj4+Pj4gaW5mb3JtYXRpdmUgc3BsYXRbMV0KPj4+Pj4+Cj4+Pj4+
PiBUaGVyZSBpcyBzdGlsbCBhbiBPUFAgY2hhbmdlIGhhcHBlbmluZyBiZWNhdXNlIHRoZSBkZXRl
Y3RlZCBPUFAgaXMgbm90Cj4+Pj4+PiBvbmUgdGhhdCdzIGxpc3RlZCBpbiB0aGUgdGFibGUsIHNv
IGl0IHRyaWVzIHRvIGNoYW5nZSB0byBhIGxpc3RlZCBPUFAKPj4+Pj4+IGFuZCBmYWlscyBpbiB0
aGUgYm93ZWxzIG9mIGNsa19zZXRfcmF0ZSgpCj4+Pj4+IFRob3VnaCBJIHRoaW5rIHRoYXQgbWln
aHQgb25seSBiZSBhIHN5bXB0b20gYXMgd2VsbC4KPj4+Pj4gQm90aCB0aGUgUExMIHNldHRpbmcg
Y29kZSBhcyB3ZWxsIGFzIHRoZSBhY3R1YWwgY3B1LWNsb2NrIGltcGxlbWVudGF0aW9uCj4+Pj4+
IGlzIHVuY2hhbmdlZCBzaW5jZSAyMDE3IChhbmQgcnVucyBqdXN0IGZpbmUgb24gYWxsIGJvYXJk
cyBpbiBteSBmYXJtKS4KPj4+Pj4KPj4+Pj4gT25lIHNvdXJjZSBmb3IgdGhlc2UgaXNzdWVzIGlz
IG9mdGVuIHRoZSByZWd1bGF0b3Igc3VwcGx5aW5nIHRoZSBjcHUKPj4+Pj4gZ29pbmcgaGF5d2ly
ZSAtIGFrYSB0aGUgdm9sdGFnZSBub3QgbWF0Y2hpbmcgdGhlIG9wcC4KPj4+Pj4KPj4+Pj4gQXMg
aW4gdGhpcyBlcnJvci1jYXNlIGl0J3MgQ1BVNCBiZWluZyBzZXQsIHRoaXMgd291bGQgbWVhbiBp
dCBtaWdodAo+Pj4+PiBiZSB0aGUgYmlnIGNsdXN0ZXIgc3VwcGxpZWQgYnkgdGhlIGV4dGVybmFs
IHN5cjgyNSAoZmFuNTM1NSBjbG9uZSkKPj4+Pj4gdGhhdCBtaWdodCBhY3QgdXAuIEluIHRoZSBG
aXJlZmx5LXJrMzM5OSBjYXNlIHRoaXMgaXMgZXZlbiBzdHJhbmdlci4KPj4+Pj4KPj4+Pj4gVGhl
cmUgaXMgYSBkaXNjcmVwYW5jeSBiZXR3ZWVuIHRoZSAiZmNzLHN1c3BlbmQtdm9sdGFnZS1zZWxl
Y3RvciIKPj4+Pj4gYmV0d2VlbiBkaWZmZXJlbnQgYm9vdGxvYWRlciB2ZXJzaW9ucyAoaG93IHRo
ZSBzZWxlY3Rpb24tcGluIGlzIHNldCB1cCksCj4+Pj4+IHNvIHRoZSBrZXJuZWwgbWlnaHQgYWN0
dWFsbHkgd3JpdGUgaGlzIHJlcXVlc3RlZCB2b2x0YWdlIHRvIHRoZSB3cm9uZwo+Pj4+PiByZWdp
c3RlciAobm90IHRoZSBvbmUgZm9yIGFjdHVhbCB2b2x0YWdlLCBidXQgdGhlIHNlY29uZCBzZXQg
dXNlZCBmb3IKPj4+Pj4gdGhlIHN1c3BlbmQgdm9sdGFnZSkuCj4+Pj4+Cj4+Pj4+IERpZCB5b3Ug
YnkgY2hhbmNlIHN3YXAgYm9vdGxvYWRlcnMgYXQgc29tZSBwb2ludCBpbiByZWNlbnQgcGFzdD8K
Pj4+PiBObywgaGF2ZW4ndCB0b3VjaGVkIGJvb3Rsb2FkZXIgc2luY2UgSSBpbml0aWFsbHkgc2V0
dXAgdGhlIGJvYXJkLgo+Pj4KPj4+IFRoZSBDUFUgdm9sdGFnZSBkb2VzIG5vdCBhZmZlY3QgYnkg
Ym9vdGxvYWRlciBmb3Iga2VybmVsIHNob3VsZCBoYXZlIGl0cyAKPj4+IG93biBvcHAtdGFibGUs
Cj4+Pgo+Pj4gdGhlIGJvb3Rsb2FkZXIgbWF5IG9ubHkgYWZmZWN0IHRoZSBjZW50ZXIvbG9naWMg
cG93ZXIgc3VwcGx5Lgo+Pj4KPj4+Pgo+Pj4+PiBJJ2QgYXNzdW1lIFsyXSBtaWdodCBhY3R1YWxs
eSBiZSB0aGUgc2FtZSBpc3N1ZSBsYXN0IHllYXIsIHRob3VnaAo+Pj4+PiB0aGUgQ0ktbG9ncyBh
cmUgbm90IGF2YWlsYWJsZSBhbnltb3JlIGl0IHNlZW1zLgo+Pj4+Pgo+Pj4+PiBDb3VsZCB5b3Ug
dHJ5IHRvIHNldCB0aGUgdmRkX2NwdV9iIHJlZ3VsYXRvciB0byBkaXNhYmxlZCwgc28gdGhhdAo+
Pj4+PiBjcHVmcmVxIGZvciB0aGlzIGNsdXN0ZXIgZGVmZXJzIGFuZCBzZWUgd2hhdCBoYXBwZW5z
Pwo+Pj4+IFllcywgdGhpcyBjaGFuZ2VbMV0gZGVmaW5pdGVseSBtYWtlcyB0aGluZ3MgYm9vdCBy
ZWxpYWJseSBhZ2Fpbiwgc28KPj4+PiB0aGVyZSdzIGRlZmludGllbHkgc29tZXRoaW5nIGEgYml0
IHVuc3RhYmxlIHdpdGggdGhpcyByZWd1bGF0b3IsIGF0Cj4+Pj4gbGVhc3Qgb24gdGhpcyBmaXJl
Zmx5Lgo+Pj4KPj4+IElzIGl0IHBvc3NpYmxlIHRvIHRhcmdldCB3aGljaCBwYXRjaCBpbnRyb2R1
Y2UgdGhpcyBidWc/IFRoaXMgYm9hcmTCoCAKPj4+IHNob3VsZCBoYXZlIHdvcmsgY29ycmVjdGx5
IGZvciBhIGxvbmcgdGltZSB3aXRoIHVwc3RyZWFtIHNvdXJjZSBjb2RlLgo+Pgo+PiBVbmZvcnR1
bmF0ZWx5LCBpdCBzZWVtcyB0byBiZSBhIHJlZ3VsYXIsIGJ1dCBpbnRlcm1pdHRlbnQgZmFpbHVy
ZSwgc28KPj4gYmlzZWN0aW9uIGlzIG5vdCBwcm9kdWNpbmcgYW55dGhpbmcgcmVsaWFibGUuCj4+
Cj4+IFlvdSBjYW4gc2VlIHRoYXQgYm90aCBpbiBtYWlubGluZVsxXSBhbmQgaW4gbGludXgtbmV4
dFsyXSB0aGVyZSBhcmUKPj4gcGVyaW9kaWMgZmFpbHVyZXMsIGJ1dCBpdCdzIGhhcmQgdG8gc2Vl
IGFueSBwYXR0ZXJucy4KPgo+IEV2ZW4gd29yc2UsIEkgKHJlKXRlc3RlZCBtYWlubGluZSBmb3Ig
dmVyc2lvbnMgdGhhdCB3ZXJlIHByZXZpb3VzbHkKPiBwYXNzaW5nICh2NS4yLCB2NS4zLXJjNSkg
YW5kIHRoZXkgYXJlIGFsc28gZmFpbGluZyBub3cuCj4KPiBUaGV5IHdvcmsgYWdhaW4gaWYgSSBk
aXNhYmxlIHRoYXQgcmVndWxhdG9yIGFzIHN1Z2dlc3RlZCBieSBIZWlrby4KPgo+IFNvIHRoaXMg
aXMgaW5jcmVhc2luZ2x5IHBvaW50aW5nIHRvIGZhaWxpbmcgaGFyZHdhcmUuCgpUaGlzIGlzIG5v
dyBmYWlsaW5nIGluIHRoZSB2NS4yIHN0YWJsZSB0cmVlLgoKQW55IHN1Z2dlc3Rpb25zIG9uIHdo
YXQgdG8gZG8/ICBvdGhlcndpc2UsIEknbGwganVzdCBuZWVkIHRvIGRpc2FibGUKdGhpcyBib2Fy
ZC4KCk9yLCBpZiBzb21lb25lIHdhbnRzIHRvIGRvbmF0ZSBhIG5ldyByazMzOTktZmlyZWZseSBm
b3IgbXkgbGFiLCBJJ2QgYmUKZ2xhZCB0byB0cnkgcmVwbGFjaW5nIGl0LgoKS2V2aW4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
