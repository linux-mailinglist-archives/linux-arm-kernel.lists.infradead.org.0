Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A221C69D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEu9L94f28i6Yr+KVYc+S2IXW161cchYZvltDbujrLI=; b=bIomaCMu/mEdOa
	60XvwmHZ9w0t1+DWBHFCxt7nLdnYMGljyPygTLDGqeT8v/madSvominZO9LPF1YZ5hHitv/aO6wND
	4UayCDfQH8LnvSTb4+gwUIB/i2MdO9ina3xtNvXRfOvw0s8qPVS+XgrQJvqrE0xYaZIT3mBfU78Qf
	vUuSxlEC6eo6YvQlXMHhlEDC2aJzxzim8tz8PFVljK9vizwGLCf4ciaAUvWDGz7sLtlqookCzDQHb
	2/mby/D/u7z0z1TvQM7OZ1dO6Xr8GLdNxZ0HMwTYsz8qwKs+ByJtQlucnlbjzElV+OPPXOIygzcrh
	QTHCvSs5o3gfIpvZYb1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWECC-0001no-Gb; Wed, 06 May 2020 07:10:20 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEBv-0000ZK-Lq
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:10:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id 19so1039537ioz.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 00:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TNeZGBvQE65OD4RI/VJlF9TAoXRNVe2+IJUTG86DGbA=;
 b=WQsD3+apXpq3/3yaFrL3/0+eSLnGTDQTR0Fsp8/qK2Rthwbduv7jAJSEPLt4Z4Kevh
 NPCy2rzwD2NCLi8cWzq0DSsLTh0aoWwbMoRMOpvTno8FVluR5qx/lR7XFhsyAEV9sSHm
 c4VEg2dEhbt+Yk6QWE+yeBtAVjIv2B7YyuEttTHMLuDTailXpL5mtUQKNO9Y6OXVNZsO
 rY9KPUlOp9yTonJ3djuZnrAf68VmjVZc1wbWDHX43bgfMzTyteYwq7VthJBFsuribOf/
 ljdtuRUMLFbAroFkewRsGn2i4ldJtX0iI6wHQxUFNnYnSeRqYSkRSrPw6Yrupk0QHyVw
 EFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TNeZGBvQE65OD4RI/VJlF9TAoXRNVe2+IJUTG86DGbA=;
 b=QspErQ1CNB16bZeWY6e6tB4CvMl9kXdGr6YywOEYH9atmqKzi8rDsQNZs3y3rLrRwn
 rNogHURCk43nNdbStRHvnObgihRY0RiaHGgikxRGEEaXdkJtyt+41Hgqfvx0leVhAWPs
 TrPwfK/Xzo7m7cfhQ1WcQOrfHyH7Mm54yBPvQZfmKBjql9pEpA/x87B5zitqWM3qeXu9
 SOGY54jTA1/SWQqW8a2xkqRS1H0r1R95V1Jqjbe/pWa37Wg7NHDhQd9tRoSGX45hNRan
 8X4o3VsqSwjaZg0wH+vOzRgBZZaZQ3mStmuYipDB1/TGE+lkaYb0sVY8xBExSt2sUTC7
 z0uA==
X-Gm-Message-State: AGi0PuZJPUGlSXX04R/CC7AYdsrwmy6znvaf3AHPhK5LMgwbOMiuSrN2
 iVNUzmdlspSbTPx7OLWzCr3gpQi1x6bz3IHiFCzmPg==
X-Google-Smtp-Source: APiQypK8JUTpUHWQidMAM1RM6r/RYgCmN3qiFqNGsyI2sRX+0s50wlApjk2j2yJQrSBljYxkxedUj9ER2mJ5DgL7aSU=
X-Received: by 2002:a6b:8bd2:: with SMTP id n201mr7183055iod.131.1588749002876; 
 Wed, 06 May 2020 00:10:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <20200505110447.2404985c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200505110447.2404985c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 6 May 2020 09:09:52 +0200
Message-ID: <CAMRc=MfmuKd64YaqrkhGFThDZd0_tRecR5H0QLY0cDJWSM-VgQ@mail.gmail.com>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
To: Jakub Kicinski <kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001003_744939_F79A674A 
X-CRM114-Status: GOOD (  24.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFrdWIsCgp0aGFua3MgZm9yIHRoZSByZXZpZXcuCgp3dC4sIDUgbWFqIDIwMjAgbyAyMDow
NCBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPiBuYXBpc2HFgihhKToKPgo+ID4gKy8q
IFJlcHJlc2VudHMgdGhlIGFjdHVhbCBzdHJ1Y3R1cmUgb2YgZGVzY3JpcHRvcnMgdXNlZCBieSB0
aGUgTUFDLiBXZSBjYW4KPiA+ICsgKiByZXVzZSB0aGUgc2FtZSBzdHJ1Y3R1cmUgZm9yIGJvdGgg
VFggYW5kIFJYIC0gdGhlIGxheW91dCBpcyB0aGUgc2FtZSwgb25seQo+ID4gKyAqIHRoZSBmbGFn
cyBkaWZmZXIgc2xpZ2h0bHkuCj4gPiArICovCj4gPiArc3RydWN0IG10a19tYWNfcmluZ19kZXNj
IHsKPiA+ICsgICAgIC8qIENvbnRhaW5zIGJvdGggdGhlIHN0YXR1cyBmbGFncyBhcyB3ZWxsIGFz
IHBhY2tldCBsZW5ndGguICovCj4gPiArICAgICB1MzIgc3RhdHVzOwo+ID4gKyAgICAgdTMyIGRh
dGFfcHRyOwo+ID4gKyAgICAgdTMyIHZ0YWc7Cj4gPiArICAgICB1MzIgcmVzZXJ2ZWQ7Cj4gPiAr
fSBfX2FsaWduZWQoNCkgX19wYWNrZWQ7Cj4KPiBJdCB3aWxsIGJlIGFsaWduZWQgdG8gNCwgYmVj
YXVzZSB0aGUgbWVtYmVycyBhcmUgYWxsIDRCLiBBbmQgdGhlcmUgaXMKPiBubyBwb3NzaWJpbGl0
eSBvZiBob2xlcy4gWW91IGNhbiBzYWZlbHkgcmVtb3ZlIHRob3NlIGF0dHJzLgo+CgpJIG5vdGlj
ZWQgc29tZSBvdGhlciBkcml2ZXJzIHdob3NlIGRlc2NyaXB0b3JzIGFyZSB3ZWxsIGFsaWduZWQg
ZGVmaW5lCnRoZXNlIGF0dHJpYnV0ZXMgYW55d2F5IHNvIEkgYXNzdW1lZCBpdCdzIGEgY29udmVu
dGlvbi4gSSdsbCBkcm9wIHRoZW0KaW4gdjIuCgo+Cj4gPiArICAgICBzdGF0dXMgPSBkZXNjLT5z
dGF0dXM7Cj4gPiArCj4gPiArICAgICBpZiAoIShzdGF0dXMgJiBNVEtfTUFDX0RFU0NfQklUX0NP
V04pKQo+ID4gKyAgICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiArCj4gPiArICAgICBkZXNjX2Rh
dGEtPmxlbiA9IHN0YXR1cyAmIE1US19NQUNfREVTQ19NU0tfTEVOOwo+ID4gKyAgICAgZGVzY19k
YXRhLT5mbGFncyA9IHN0YXR1cyAmIH5NVEtfTUFDX0RFU0NfTVNLX0xFTjsKPiA+ICsgICAgIGRl
c2NfZGF0YS0+ZG1hX2FkZHIgPSBkZXNjLT5kYXRhX3B0cjsKPiA+ICsgICAgIGRlc2NfZGF0YS0+
c2tiID0gcmluZy0+c2tic1tyaW5nLT50YWlsXTsKPiA+ICsKPiA+ICsgICAgIGRlc2MtPmRhdGFf
cHRyID0gMDsKPiA+ICsgICAgIGRlc2MtPnN0YXR1cyA9IE1US19NQUNfREVTQ19CSVRfQ09XTjsK
PiA+ICsgICAgIGlmIChzdGF0dXMgJiBNVEtfTUFDX0RFU0NfQklUX0VPUikKPiA+ICsgICAgICAg
ICAgICAgZGVzYy0+c3RhdHVzIHw9IE1US19NQUNfREVTQ19CSVRfRU9SOwo+ID4gKwo+ID4gKyAg
ICAgZG1hX3dtYigpOwo+Cj4gV2hhdCBpcyB0aGlzIHNlcGFyYXRpbmc/CgpJJ2xsIGFkZCBjb21t
ZW50cyB0byBiYXJyaWVycyBpbiB2Mi4KCj4KPiA+ICsvKiBBbGwgcHJvY2Vzc2luZyBmb3IgVFgg
YW5kIFJYIGhhcHBlbnMgaW4gdGhlIG5hcGkgcG9sbCBjYWxsYmFjay4gKi8KPiA+ICtzdGF0aWMg
aXJxcmV0dXJuX3QgbXRrX21hY19oYW5kbGVfaXJxKGludCBpcnEsIHZvaWQgKmRhdGEpCj4gPiAr
ewo+ID4gKyAgICAgc3RydWN0IG10a19tYWNfcHJpdiAqcHJpdjsKPiA+ICsgICAgIHN0cnVjdCBu
ZXRfZGV2aWNlICpuZGV2Owo+ID4gKyAgICAgdW5zaWduZWQgaW50IHN0YXR1czsKPiA+ICsKPiA+
ICsgICAgIG5kZXYgPSBkYXRhOwo+ID4gKyAgICAgcHJpdiA9IG5ldGRldl9wcml2KG5kZXYpOwo+
ID4gKwo+ID4gKyAgICAgaWYgKG5ldGlmX3J1bm5pbmcobmRldikpIHsKPiA+ICsgICAgICAgICAg
ICAgbXRrX21hY19pbnRyX21hc2tfYWxsKHByaXYpOwo+ID4gKyAgICAgICAgICAgICBzdGF0dXMg
PSBtdGtfbWFjX2ludHJfcmVhZF9hbmRfY2xlYXIocHJpdik7Cj4gPiArCj4gPiArICAgICAgICAg
ICAgIC8qIFJYIENvbXBsZXRlICovCj4gPiArICAgICAgICAgICAgIGlmIChzdGF0dXMgJiBNVEtf
TUFDX0JJVF9JTlRfU1RTX0ZOUkMpCj4gPiArICAgICAgICAgICAgICAgICAgICAgbmFwaV9zY2hl
ZHVsZSgmcHJpdi0+bmFwaSk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIC8qIFRYIENvbXBsZXRl
ICovCj4gPiArICAgICAgICAgICAgIGlmIChzdGF0dXMgJiBNVEtfTUFDX0JJVF9JTlRfU1RTX1RO
VEMpCj4gPiArICAgICAgICAgICAgICAgICAgICAgc2NoZWR1bGVfd29yaygmcHJpdi0+dHhfd29y
ayk7Cj4gPiArCj4gPiArICAgICAgICAgICAgIC8qIE9uZSBvZiB0aGUgY291bnRlciByZWFjaGVk
IDB4ODAwMDAwMCAqLwo+ID4gKyAgICAgICAgICAgICBpZiAoc3RhdHVzICYgTVRLX01BQ19SRUdf
SU5UX1NUU19NSUJfQ05UX1RIKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgbXRrX21hY191
cGRhdGVfc3RhdHMocHJpdik7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgbXRrX21hY19yZXNl
dF9jb3VudGVycyhwcml2KTsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAg
ICAgICBtdGtfbWFjX2ludHJfdW5tYXNrX2FsbChwcml2KTsKPgo+IFdoeSBkbyB5b3UgdW5tYXNr
IGFsbCBJUlFzIGhlcmU/IFRoZSB1c3VhbCB3YXkgdG8gb3BlcmF0ZSBpcyB0byBsZWF2ZQo+IFRY
IGFuZCBSWCBJUlFzIG1hc2tlZCB1bnRpbCBOQVBJIGZpbmlzaGVzLgo+CgpJIGFjdHVhbGx5IGRp
ZCBpdCBiZWZvcmUgYXMgdGhlIGxlZnRvdmVyIGNvbW1lbnQgc2F5cyBhYm92ZSB0aGUKZnVuY3Rp
b24uIFRoZW4gSSB0aG91Z2h0IHRoaXMgd2F5IHdlIG1hc2sgaW50ZXJydXB0IGZvciBhIHNob3J0
ZXIKcGVyaW9kIG9mIHRpbWUuIEkgY2FuIGdvIGJhY2sgdG8gdGhlIHByZXZpb3VzIGFwcHJvYWNo
LgoKPiA+ICsgICAgIH0KPiA+ICsKPiA+ICsgICAgIHJldHVybiBJUlFfSEFORExFRDsKPiA+ICt9
Cj4KPiA+ICtzdGF0aWMgaW50IG10a19tYWNfZW5hYmxlKHN0cnVjdCBuZXRfZGV2aWNlICpuZGV2
KQo+ID4gK3sKPiA+ICsgICAgIC8qIFJlc2V0IGFsbCBjb3VudGVycyAqLwo+ID4gKyAgICAgbXRr
X21hY19yZXNldF9jb3VudGVycyhwcml2KTsKPgo+IFRoaXMgZG9lc24ndCByZXNldCB0aGUgY291
bnRlcnMgdG8gemVybywgcmlnaHQ/Cj4KClllcywgaXQgZG9lcyBhY3R1YWxseS4gSSdsbCBkcm9w
IGl0IGluIHYyIC0gaXQncyBub3QgbmVjZXNzYXJ5LgoKPgo+ID4gK3N0YXRpYyB2b2lkIG10a19t
YWNfdHhfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gPiArewo+ID4gKyAgICAgc3Ry
dWN0IG10a19tYWNfcHJpdiAqcHJpdjsKPiA+ICsgICAgIHN0cnVjdCBtdGtfbWFjX3JpbmcgKnJp
bmc7Cj4gPiArICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqbmRldjsKPiA+ICsgICAgIGJvb2wgd2Fr
ZSA9IGZhbHNlOwo+ID4gKyAgICAgaW50IHJldDsKPiA+ICsKPiA+ICsgICAgIHByaXYgPSBjb250
YWluZXJfb2Yod29yaywgc3RydWN0IG10a19tYWNfcHJpdiwgdHhfd29yayk7Cj4gPiArICAgICBu
ZGV2ID0gbXRrX21hY19nZXRfbmV0ZGV2KHByaXYpOwo+ID4gKyAgICAgcmluZyA9ICZwcml2LT50
eF9yaW5nOwo+ID4gKwo+ID4gKyAgICAgZm9yICg7Oykgewo+ID4gKyAgICAgICAgICAgICBtdGtf
bWFjX2xvY2socHJpdik7Cj4gPiArCj4gPiArICAgICAgICAgICAgIGlmICghbXRrX21hY19yaW5n
X2Rlc2NzX2F2YWlsYWJsZShyaW5nKSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIG10a19t
YWNfdW5sb2NrKHByaXYpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+ID4gKyAg
ICAgICAgICAgICB9Cj4gPiArCj4gPiArICAgICAgICAgICAgIHJldCA9IG10a19tYWNfdHhfY29t
cGxldGUocHJpdik7Cj4gPiArICAgICAgICAgICAgIG10a19tYWNfdW5sb2NrKHByaXYpOwo+ID4g
KyAgICAgICAgICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGJyZWFrOwo+
ID4gKwo+ID4gKyAgICAgICAgICAgICB3YWtlID0gdHJ1ZTsKPiA+ICsgICAgIH0KPiA+ICsKPiA+
ICsgICAgIGlmICh3YWtlKQo+ID4gKyAgICAgICAgICAgICBuZXRpZl93YWtlX3F1ZXVlKG5kZXYp
Owo+Cj4gVGhpcyBsb29rcyByYWN5LCBpZiB0aGUgVFggcGF0aCBydW5zIGluIHBhcmFsbGVsIHRo
ZSBxdWV1ZSBtYXkgaGF2ZQo+IGFscmVhZHkgYmVlbiBmaWxsZWQgdXAgYXQgdGhlIHBvaW50IHlv
dSB3YWtlIGl0IHVwLgo+Cj4gPiArfQo+Cj4gV2h5IGRvIHlvdSBjbGVhbiB0aGUgVFggcmluZyBm
cm9tIGEgd29yayByYXRoZXIgdGhhbiBmcm9tIHRoZSBOQVBJCj4gY29udGV4dD8KPgoKU28gdGhp
cyB3YXMgdW5jbGVhciB0byBtZSwgdGhhdCdzIHdoeSBJIHdlbnQgd2l0aCBhIHdvcmtxdWV1ZS4g
VGhlCmJ1ZGdldCBhcmd1bWVudCBpbiBuYXBpIHBvbGwgaXMgZm9yIFJYLiBTaG91bGQgSSBwdXQg
c29tZSBjYXAgb24gdGhlCm51bWJlciBvZiBUWCBkZXNjcmlwdG9ycyBwcm9jZXNzZWQgaW4gbmFw
aSBjb250ZXh0PwoKPgo+ID4gK3N0YXRpYyBpbnQgbXRrX21hY19yZWNlaXZlX3BhY2tldChzdHJ1
Y3QgbXRrX21hY19wcml2ICpwcml2KQo+ID4gK3sKPiA+ICsgICAgIHN0cnVjdCBuZXRfZGV2aWNl
ICpuZGV2ID0gbXRrX21hY19nZXRfbmV0ZGV2KHByaXYpOwo+ID4gKyAgICAgc3RydWN0IG10a19t
YWNfcmluZyAqcmluZyA9ICZwcml2LT5yeF9yaW5nOwo+ID4gKyAgICAgc3RydWN0IGRldmljZSAq
ZGV2ID0gbXRrX21hY19nZXRfZGV2KHByaXYpOwo+ID4gKyAgICAgc3RydWN0IG10a19tYWNfcmlu
Z19kZXNjX2RhdGEgZGVzY19kYXRhOwo+ID4gKyAgICAgc3RydWN0IHNrX2J1ZmYgKm5ld19za2I7
Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgbXRrX21hY19sb2NrKHByaXYpOwo+
ID4gKyAgICAgcmV0ID0gbXRrX21hY19yaW5nX3BvcF90YWlsKHJpbmcsICZkZXNjX2RhdGEpOwo+
ID4gKyAgICAgbXRrX21hY191bmxvY2socHJpdik7Cj4gPiArICAgICBpZiAocmV0KQo+ID4gKyAg
ICAgICAgICAgICByZXR1cm4gLTE7Cj4gPiArCj4gPiArICAgICBtdGtfbWFjX2RtYV91bm1hcF9y
eChwcml2LCAmZGVzY19kYXRhKTsKPiA+ICsKPiA+ICsgICAgIGlmICgoZGVzY19kYXRhLmZsYWdz
ICYgTVRLX01BQ19ERVNDX0JJVF9SWF9DUkNFKSB8fAo+ID4gKyAgICAgICAgIChkZXNjX2RhdGEu
ZmxhZ3MgJiBNVEtfTUFDX0RFU0NfQklUX1JYX09TSVpFKSkgewo+ID4gKyAgICAgICAgICAgICAv
KiBFcnJvciBwYWNrZXQgLT4gZHJvcCBhbmQgcmV1c2Ugc2tiLiAqLwo+ID4gKyAgICAgICAgICAg
ICBuZXdfc2tiID0gZGVzY19kYXRhLnNrYjsKPiA+ICsgICAgICAgICAgICAgZ290byBtYXBfc2ti
Owo+ID4gKyAgICAgfQo+ID4gKwo+ID4gKyAgICAgbmV3X3NrYiA9IG10a19tYWNfYWxsb2Nfc2ti
KG5kZXYpOwo+ID4gKyAgICAgaWYgKCFuZXdfc2tiKSB7Cj4gPiArICAgICAgICAgICAgIG5ldGRl
dl9lcnIobmRldiwgIm91dCBvZiBtZW1vcnkgZm9yIHNrYlxuIik7Cj4KPiBObyBuZWVkIGZvciBw
cmludGluZywga2VybmVsIHdpbGwgY29tcGxhaW4gbG91ZGx5IGFib3V0IG9vbS4KPgo+ID4gKyAg
ICAgICAgICAgICBuZGV2LT5zdGF0cy5yeF9kcm9wcGVkKys7Cj4gPiArICAgICAgICAgICAgIG5l
d19za2IgPSBkZXNjX2RhdGEuc2tiOwo+ID4gKyAgICAgICAgICAgICBnb3RvIG1hcF9za2I7Cj4g
PiArICAgICB9Cj4gPiArCj4gPiArICAgICBza2JfcHV0KGRlc2NfZGF0YS5za2IsIGRlc2NfZGF0
YS5sZW4pOwo+ID4gKyAgICAgZGVzY19kYXRhLnNrYi0+aXBfc3VtbWVkID0gQ0hFQ0tTVU1fTk9O
RTsKPiA+ICsgICAgIGRlc2NfZGF0YS5za2ItPnByb3RvY29sID0gZXRoX3R5cGVfdHJhbnMoZGVz
Y19kYXRhLnNrYiwgbmRldik7Cj4gPiArICAgICBkZXNjX2RhdGEuc2tiLT5kZXYgPSBuZGV2Owo+
ID4gKyAgICAgbmV0aWZfcmVjZWl2ZV9za2IoZGVzY19kYXRhLnNrYik7Cj4gPiArCj4gPiArbWFw
X3NrYjoKPiA+ICsgICAgIGRlc2NfZGF0YS5kbWFfYWRkciA9IG10a19tYWNfZG1hX21hcF9yeChw
cml2LCBuZXdfc2tiKTsKPiA+ICsgICAgIGlmIChkbWFfbWFwcGluZ19lcnJvcihkZXYsIGRlc2Nf
ZGF0YS5kbWFfYWRkcikpIHsKPiA+ICsgICAgICAgICAgICAgZGV2X2tmcmVlX3NrYihuZXdfc2ti
KTsKPiA+ICsgICAgICAgICAgICAgbmV0ZGV2X2VycihuZGV2LCAiRE1BIG1hcHBpbmcgZXJyb3Ig
b2YgUlggZGVzY3JpcHRvclxuIik7Cj4gPiArICAgICAgICAgICAgIHJldHVybiAtRU5PTUVNOwo+
Cj4gSW4gdGhpcyBjYXNlIG5vdGhpbmcgd2lsbCBldmVyIHJlcGxlbmlzaCB0aGUgUlggcmluZyBy
aWdodD8gSWYgd2UgaGl0Cj4gdGhpcyBjb25kaXRpb24gMTI4IHRpbWVzIHRoZSByaW5nIHdpbGwg
YmUgZW1wdHk/Cj4KCkluZGVlZC4gV2hhdCBzaG91bGQgSSBkbyBpZiB0aGlzIGZhaWxzIHRob3Vn
aD8KCkknbGwgYWRkcmVzcyBhbGwgb3RoZXIgaXNzdWVzIGluIHYyLgoKQmFydAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
