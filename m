Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BABEB870
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 21:35:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPNiTZ8hXOXHhaQVyzVLijUznlivluCq7QPoNbpRx9g=; b=aGjPbOixShrSZd
	tc9+qepBt4yhA4cXjU1II1qJbtmEU2ka+1rzpow0KjHNiWbo5+LReCA2sPiuvaYr0xnvUxyav0D0O
	r09+ozs44gT65dgbcY9WbqYpkqVFXAHwBwC+0FOZPgwc9iFK0m8Ps8/h4iAtWB/giqQF2OcPvuo06
	H44wghPSoxOsPjlCp7UQJ9g0arjiCTua5zM4Lk+dM/ic4/zeHqRKa2ysZkunJ+CcES7Yzp+v7qX2B
	+QR2nwNitmX+SkH1KkM0kBK0IiZ3u0IB8lqvo+YT/u1pycz+23O2eISSY9X4sW6jyL7oA3OK7KBJH
	8meQpegtGCWjAJ8oWbDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQHAY-0000Dg-RY; Thu, 31 Oct 2019 20:35:46 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQHAO-0000D8-J5
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 20:35:38 +0000
Received: by mail-ot1-x341.google.com with SMTP id z6so6598463otb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 13:35:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=t0DHiOISrXItcMrIJK7SNbmGlocu7WmjuFaA/UQvHXU=;
 b=LyxJI54a7aS6aahuK8tjqsI+3mX36WDCDNqP8G0+xINjLjsdsGEUOCNSBE1NQB0r9A
 73PRPl6P6FVHPLYa2wL5AOgtVDMwVzL3m5BlVDPY7l/LypJ5Ry0VKXlxO2YxR5b9/py0
 aB25HwbLUvvY4SMj84BJFGlrbNxQicZCwWpPvE5MVgqAm33bG6PakV32i7+EfXJcbdKq
 uNVT+sCHr5gBSV1Src6OFWyG9hVAyzfj03AuWJ/0h5DY2SFJchXi83YBzbW6+DgfdHgG
 zTu6YFMRtfkNPK5MaUEcI/A+L/4bs55GMkVNqEoLrAgojF4JkVrdbqHevSyox/Uc5Enw
 KBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=t0DHiOISrXItcMrIJK7SNbmGlocu7WmjuFaA/UQvHXU=;
 b=iq8TUmfQghg7NJCk1OTW5woHzNAY0be71M0oTXV3qT3Jdveje7RNXteK/7eemEPi7g
 rRM7Ebp0T5uCUI00/ToymHqynngF/EBzMQRUiopESdJc6VAGZK5KzioRZkZGm3OAS3wW
 i0ISnvLfBXBvXcnVBqtV+IUPIgu8VBuOtPFfsRx4QuUCSSovKe43jPY8+gRdgMgABFc9
 Hkc7rz+65lYprp+VkbiLgpf25x7Ega17JM9+1RZW8MskKGIKGwVToVGA3x7zeP/z4SpG
 k8NuPZdUEGhScKSQkCeTNd15wBeFfnGVCXOepZNfSxJ8AbdXwJZ25BdqdgvXFfnNXVnr
 wGyw==
X-Gm-Message-State: APjAAAV/zSbhOsJyTd2J6Pt0ew7NFlyXtkqt03QxvG54gOwNEUnlBqit
 vfVxhqkMfcDj0UXK2roi3nEWutunii4jcuDLbOw=
X-Google-Smtp-Source: APXvYqzpZ6MXM1sZZcFyRs7iX1/khcpzkLOTHDYjc2b2ymiPQ1xiya5F8HnCwIYFgL8hKFRE/2gjCTkKwbI3k5QjxEM=
X-Received: by 2002:a05:6830:602:: with SMTP id
 w2mr6176723oti.312.1572554135273; 
 Thu, 31 Oct 2019 13:35:35 -0700 (PDT)
MIME-Version: 1.0
References: <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com>
 <20190807115614.phm7sbyae6yajkug@flea>
 <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com>
 <20190808162628.pthvy3tgf3naj76s@flea>
 <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com>
 <20190812080420.saelmqb36vkelxn4@flea>
 <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
 <20190813053905.hu2hyi7fah2vujzz@flea>
 <CA+E=qVegU8M09tmbxGUaBSoueGU6PRsAtr9XWrc8V8HnCPjULg@mail.gmail.com>
 <CA+E=qVeArUV0u_17ty=HgaU35TwcBfQjSOJf0A5yM6L6+W-0Og@mail.gmail.com>
 <20190925110844.qfm5ris7xeze44th@gilmour>
 <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
In-Reply-To: <CAJiuCcfcmkb_BgDcDJziUwoZXAgLN4Bh0GGZKR3NVNRpnFhBEQ@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Thu, 31 Oct 2019 13:35:40 -0700
Message-ID: <CA+E=qVeopby6zn1PBsOGb0JjA6-viTN_iXxRnWF6+NGtbZ_BtQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
To: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_133536_658114_5E5952E0 
X-CRM114-Status: GOOD (  35.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 devicetree <devicetree@vger.kernel.org>,
 "Jared D . McNeill" <jmcneill@netbsd.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Harald Geyer <harald@ccbib.org>, Robin Murphy <robin.murphy@arm.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBPY3QgMzEsIDIwMTkgYXQgMTI6MTAgUE0gQ2zDqW1lbnQgUMOpcm9uIDxwZXJvbi5j
bGVtQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEp1c3QgYSByZW1hcmsgaGVyZSBidXQg
dGhlIGludGVycnVwdCBhcmUgZnJvbSAxNTIgdG8gMTU1IFNQSS4KPiBCdXQgdGhlcmUgaXMgYW4g
b2Zmc2V0IG9mIDMyIG5vIChyZW1vdmUgU0dJL1BQSSk/Cj4gVGhpcyBzaG91bGQgYmUgZnJvbSAx
MjAgdG8gMTIzCgpJIGFscmVhZHkgdHJpZWQgaXQgKGFuZCBJIGJlbGlldmUgc29tZW9uZSBhbHJl
YWR5IHN1Z2dlc3RlZCBpdCBhYm92ZSksCml0IGRvZXNuJ3QgZml4IFBNVSBpbnRlcnJ1cHRzIHRo
b3VnaC4KCj4gUmVnYXJkcywKPiBDbMOpbWVudAo+Cj4gT24gV2VkLCAyNSBTZXAgMjAxOSBhdCAx
MzowOSwgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBP
biBNb24sIFNlcCAyMywgMjAxOSBhdCAwNDo1NTo1OVBNIC0wNzAwLCBWYXNpbHkgS2hvcnV6aGlj
ayB3cm90ZToKPiA+ID4gT24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgNDo1MSBQTSBWYXNpbHkgS2hv
cnV6aGljayA8YW5hcnNvdWxAZ21haWwuY29tPiB3cm90ZToKPiA+ID4gPgo+ID4gPiA+IE9uIE1v
biwgQXVnIDEyLCAyMDE5IGF0IDEwOjM5IFBNIE1heGltZSBSaXBhcmQKPiA+ID4gPiA8bWF4aW1l
LnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gT24gTW9uLCBB
dWcgMTIsIDIwMTkgYXQgMTE6MDE6NTFBTSAtMDcwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6
Cj4gPiA+ID4gPiA+IE9uIE1vbiwgQXVnIDEyLCAyMDE5IGF0IDE6MDQgQU0gTWF4aW1lIFJpcGFy
ZCA8bWF4aW1lLnJpcGFyZEBib290bGluLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4KPiA+ID4g
PiA+ID4gPiBPbiBUaHUsIEF1ZyAwOCwgMjAxOSBhdCAxMjo1OTowN1BNIC0wNzAwLCBWYXNpbHkg
S2hvcnV6aGljayB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9uIFRodSwgQXVnIDgsIDIwMTkgYXQg
OToyNiBBTSBNYXhpbWUgUmlwYXJkIDxtYXhpbWUucmlwYXJkQGJvb3RsaW4uY29tPiB3cm90ZToK
PiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gT24gV2VkLCBBdWcgMDcsIDIwMTkg
YXQgMTA6MzY6MDhBTSAtMDcwMCwgVmFzaWx5IEtob3J1emhpY2sgd3JvdGU6Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gT24gV2VkLCBBdWcgNywgMjAxOSBhdCA0OjU2IEFNIE1heGltZSBSaXBhcmQgPG1h
eGltZS5yaXBhcmRAYm9vdGxpbi5jb20+IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IE9uIFR1ZSwgQXVnIDA2LCAyMDE5IGF0IDA3OjM5OjI2UE0gLTA3
MDAsIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBPbiBU
dWUsIEF1ZyA2LCAyMDE5IGF0IDI6MTQgUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJt
LmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4g
PiA+ID4gPiBPbiAyMDE5LTA4LTA2IDk6NTIgcG0sIFZhc2lseSBLaG9ydXpoaWNrIHdyb3RlOgo+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gT24gVHVlLCBBdWcgNiwgMjAxOSBhdCAxOjE5IFBN
IEhhcmFsZCBHZXllciA8aGFyYWxkQGNjYmliLm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBWYXNpbHkgS2hvcnV6aGlj
ayB3cml0ZXM6Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4+IE9uIFR1ZSwgQXVnIDYsIDIw
MTkgYXQgNzozNSBBTSBSb2JpbiBNdXJwaHkgPHJvYmluLm11cnBoeUBhcm0uY29tPiB3cm90ZToK
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+Cj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
Pj4+PiBPbiAwNi8wOC8yMDE5IDE1OjAxLCBWYXNpbHkgS2hvcnV6aGljayB3cm90ZToKPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+PiBMb29rcyBsaWtlIFBNVSBpbiBBNjQgaXMgYnJva2Vu
LCBpdCBnZW5lcmF0ZXMgbm8gaW50ZXJydXB0cyBhdCBhbGwgYW5kCj4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPj4+Pj4gYXMgcmVzdWx0ICdwZXJmIHRvcCcgc2hvd3Mgbm8gZXZlbnRzLgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Pj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Pj4+
IERvZXMgc29tZXRoaW5nIGxpa2UgJ3BlcmYgc3RhdCBzbGVlcCAxJyBhdCBsZWFzdCBjb3VudCBj
eWNsZXMgY29ycmVjdGx5Pwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Pj4gSXQgY291bGQg
d2VsbCBqdXN0IGJlIHRoYXQgdGhlIGludGVycnVwdCBudW1iZXJzIGFyZSB3cm9uZy4uLgo+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+Pgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+PiBM
b29rcyBsaWtlIGl0IGRvZXMsIGF0IGxlYXN0IHJlc3VsdCBsb29rcyBwbGF1c2libGU6Cj4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBJJ20g
dXNpbmcgcGVyZiBzdGF0IHJlZ3VsYXJseSAoY2FjaGUgYmVuY2htYXJrcykgYW5kIGl0IHdvcmtz
IGZpbmUuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+
ID4gPiA+PiBVbmZvcnR1bmF0ZWx5IEkgd2Fzbid0IGF3YXJlIHRoYXQgcGVyZiBzdGF0IGlzIGEg
cG9vciB0ZXN0IGZvcgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IHRoZSBpbnRlcnJ1cHRz
IHBhcnQgb2YgdGhlIG5vZGUsIHdoZW4gSSBhZGRlZCBpdC4gU28gSSdtIG5vdCB0b28KPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBzdXJwcmlzZWQgSSBnb3QgaXQgd3JvbmcuCj4gPiA+ID4g
PiA+ID4gPiA+ID4gPiA+ID4gPj4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+PiBIb3dldmVy
LCBpdCB3b3VsZCBiZSB1bmZvcnR1bmF0ZSBpZiB0aGUgbm9kZSBnb3QgcmVtb3ZlZCBjb21wbGV0
ZWx5LAo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4+IGJlY2F1c2UgcGVyZiBzdGF0IHdvdWxk
IG5vdCB3b3JrIGFueW1vcmUuIE1heWJlIHdlIGNhbiBvbmx5IHJlbW92ZQo+ID4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4+IHRoZSBpbnRlcnJ1cHRzIG9yIGp1c3QgZml4IHRoZW0gZXZlbiBpZiB0
aGUgSFcgZG9lc24ndCB3b3JrPwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gPiA+IEknbSBub3QgZmFtaWxpYXIgd2l0aCBQTVUgZHJpdmVyLiBJcyBp
dCBwb3NzaWJsZSB0byBnZXQgaXQgd29ya2luZwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4g
d2l0aG91dCBpbnRlcnJ1cHRzPwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+ID4gWXVwIC0geW91IGdldCBhIGdydW1weSBtZXNzYWdlIGZyb20gdGhlIGRy
aXZlciwgaXQgd2lsbCByZWZ1c2Ugc2FtcGxpbmcKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBl
dmVudHMgKHRoZSBvbmVzIHdoaWNoIHdlcmVuJ3Qgd29ya2luZyBhbnl3YXkpLCBhbmQgaWYgeW91
IG1lYXN1cmUKPiA+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBhbnl0aGluZyBmb3IgbG9uZyBlbm91
Z2ggdGhhdCBhIGNvdW50ZXIgb3ZlcmZsb3dzIHlvdSdsbCBnZXQgd29ua3kKPiA+ID4gPiA+ID4g
PiA+ID4gPiA+ID4gPiByZXN1bHRzLiBCdXQgZm9yIGNvdW50aW5nIGhhcmR3YXJlIGV2ZW50cyBv
dmVyIHJlbGF0aXZlbHkgc2hvcnQgcGVyaW9kcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+IGl0
J2xsIHN0aWxsIGRvIHRoZSBqb2IuCj4gPiA+ID4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
ID4gPiA+ID4gPiA+IEkgdHJpZWQgdG8gZHJvcCBpbnRlcnJ1cHRzIGNvbXBsZXRlbHkgZnJvbSB0
aGUgbm9kZSBidXQgJ3BlcmYgdG9wJyBpcwo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBzdGlsbCBi
cm9rZW4uIFRob3VnaCBub3cgaW4gZGlmZmVyZW50IHdheTogaXQgY29tcGxhaW5zICJjeWNsZXM6
IFBNVQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gPiBIYXJkd2FyZSBkb2Vzbid0IHN1cHBvcnQgc2Ft
cGxpbmcvb3ZlcmZsb3ctaW50ZXJydXB0cy4gVHJ5ICdwZXJmCj4gPiA+ID4gPiA+ID4gPiA+ID4g
PiA+IHN0YXQnIgo+ID4gPiA+ID4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiA+ID4gPiA+IEkg
aGF2ZSBubyBpZGVhIGlmIHRoYXQncyB0aGUgY3VscHJpdCwgYnV0IHdoYXQgaXMgdGhlIHN0YXRl
IG9mIHRoZQo+ID4gPiA+ID4gPiA+ID4gPiA+ID4gMHgwOTAxMDAwMCByZWdpc3Rlcj8KPiA+ID4g
PiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gPiA+IFdoYXQgcmVnaXN0ZXIgaXMgdGhhdCBh
bmQgaG93IGRvIEkgY2hlY2sgaXQ/Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+
IEl0J3MgaW4gdGhlIENQVVggQ29uZmlndXJhdGlvbiBibG9jaywgYW5kIHRoZSBiaXRzIGFyZSBs
YWJlbGxlZCBhcyBDUFUKPiA+ID4gPiA+ID4gPiA+ID4gRGVidWcgUmVzZXQuCj4gPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IEFuZCBpZiB5b3UgaGF2ZSBidXN5Ym94LCB5b3UgY2Fu
IHVzZSBkZXZtZW0uCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gQ1BVWCBjb25maWd1
cmF0aW9uIGJsb2NrIGlzIGF0IDB4MDE3MDAwMDAgYWNjb3JkaW5nIHRvIEE2NCB1c2VyCj4gPiA+
ID4gPiA+ID4gPiBtYW51YWwsIGFuZCBwYXJ0aWN1bGFyIHJlZ2lzdGVyIHlvdSdyZSBpbnRlcmVz
dGVkIGluIGlzIGF0IDB4MDE3MDAwODAsCj4gPiA+ID4gPiA+ID4gPiBpdHMgdmFsdWUgaXMgMHgx
MTEwMTEwRi4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBCaXRzIDE2LTE5IGFyZSBu
b3QgZGVmaW5lZCBpbiB1c2VyIG1hbnVhbCBhbmQgYXJlIG5vdCBzZXQuCj4gPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gPiBTb3JyeSwgSSBzb21laG93IHRob3VnaHQgdGhpcyB3YXMgZm9yIHRoZSBI
Ni4uLgo+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gSSBkb24ndCBoYXZlIGFueSBpZGVhIHRo
ZW4gOi8KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gT0ssIHNvIHdoYXQgc2hvdWxkIHdlIGRvPyAn
cGVyZiB0b3AnLydwZXJmIHJlY29yZCcgd29yayBmaW5lIGlmIFBNVQo+ID4gPiA+ID4gPiBub2Rl
IGlzIGRyb3BwZWQsIGJ1dCB0aGV5IGRvbid0IHdvcmsgaWYgUE1VIG5vZGUgaXMgcHJlc2VudCAo
ZXZlbiB3aXRoCj4gPiA+ID4gPiA+IGludGVycnVwdHMgZHJvcHBlZCkuIEknZCBwcmVmZXIgdG8g
aGF2ZSAncGVyZiB0b3AnIGFuZCAncGVyZiByZWNvcmQnCj4gPiA+ID4gPiA+IHdvcmtpbmcgaW5z
dGVhZCBvZiAncGVyZiBzdGF0Jwo+ID4gPiA+ID4KPiA+ID4gPiA+IFdlbGwsIGl0IGRvZXNuJ3Qg
d29yayBzbyB3ZSBzaG91bGQganVzdCByZW1vdmUgdGhlIG5vZGUsIGFuZCBpZgo+ID4gPiA+ID4g
c29tZW9uZSB3YW50cyBpdCBiYWNrLCB0aGV5IHNob3VsZCBmaWd1cmUgaXQgb3V0Lgo+ID4gPiA+
Cj4gPiA+ID4gSGV5IE1heGltZSwKPiA+ID4gPgo+ID4gPiA+IFNvIGNhbiB5b3UgbWVyZ2UgdGhp
cyBwYXRjaD8KPiA+ID4KPiA+ID4gQWRkZWQgbmV3IE1heGltZSdzIGVtYWlsIHRvIENDCj4gPgo+
ID4gUXVldWVkIGFzIGEgZml4IGZvciA1LjQsIHRoYW5rcyEKPiA+IE1heGltZQo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0Cj4gPiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
