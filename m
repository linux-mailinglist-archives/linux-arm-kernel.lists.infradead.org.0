Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E41129BC73
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 09:57:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXcxVL31aYhqxVhPHk0ZoH5cDtwXvGPqGhy3oTN//a8=; b=cYXD65vOIG4Pof
	ni8w5j3F8t184exMMQrWKwgthNBA9Yf/EWATq6v9Q+HUW7LyzeenKDIX25tEpH6tzZu0wD9FZkl7t
	CD5GHr7fMaq3XdH7JM135iTDnCRIeFhnqxBV+gISNRccY0OW3gzObiGKgG7luuDGs9ZiQQUQRJOxw
	mvrYEmlqFofKha3VGjeRk6G1tbRT36luREA5Hg/VTibrl+CNU2HEHc9DPQsucWORpWg6qCpmKLUuR
	7TcQUU+I0Kv5bYL8I1g1eYsoYE7LMkp/I4zylx7A1jCRhXGxTsRLP7jukQz60Yy9nYn7DILNe9ItF
	5Hqftk/VmjRJhDKJIlSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Qvi-0007TU-MV; Sat, 24 Aug 2019 07:57:46 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1QvE-0007M0-7T
 for linux-arm-kernel@lists.infradead.org; Sat, 24 Aug 2019 07:57:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id s21so25614106ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 24 Aug 2019 00:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Rt7wtYCc1s5tor1o81jIoZmh+z8hgaSPweyus4OLaDI=;
 b=K3z+flYVSNNSWoTBFmevj6fYPEM2G+divlFtL3oFGJ/e/x/iInhDr1dHK6vOFA/Sbp
 0UBZ0ILyiMLYwgPhEtNbPrCfbqGmZtE/iabl81cCpUXQwu/WVEpKa5tCim0w1eCIh71t
 eInx/aknxqQIs4gIxsdejGNRIx8xP+U2vTrq8ZHY1WRqCjxz80WNyH+rIwQ2mT6JfE1B
 QwqIwtiPieUU8kHxEfuWEcHR8GIRvzO2XbMzcLUUBoaBKhzkgm+6/ek9kkwQndKDRlwN
 Bo6V5oJZr/cP6fVAv0g7HenkS6s1hcn7PjRTIxgVGyzPH3mpyl52vEoa/RUroG5wsa33
 XzSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Rt7wtYCc1s5tor1o81jIoZmh+z8hgaSPweyus4OLaDI=;
 b=KVfkJpUd/w8QQYjRtE8C3VNjFxae06o2a+iuZUPdgdglvXeZOdgbAJgjo6Hxmtr/dh
 4OMTTho5rj3H/5PZZ4bo1xEa5NIMf44DSu7RCNp14R7Dv3tOdN8FAyQxR5+4Wxi/pH3h
 1LwKMso2AZm4wDSkkXOnfOlFwnl7sE6jtKOJhpnk3dHwo3Be9cDIBlGAo320iScFzes0
 ReKprMq9lA+HN6oEFX3rpQiyH3CmWJzfooedTpBdaqJXH1sTZ+PDojzITwfmaAtR6ZJm
 K5sWJgPOyzcKRgkkCSoNHKFy1iXSHKNBXN7XVh+tTYTkn80XdNOfozcUNaP2luHPwv7d
 Mrrw==
X-Gm-Message-State: APjAAAWvI+rQp06EoLqEZY8/RezYzEpBKX5S9Ij8hmnouSP5DVQRzVaC
 s94K1OOKI1yRm0spanR+aC2/CSCM38jy7HRNlD4sEw==
X-Google-Smtp-Source: APXvYqwxcXr8xhaFGFkwJobfl5gf6+4v9QSf+/e/XxuJihI8hsXlCsjVuqNrS0RHDZAcIleIWvUKgloQNh3YdFkKQX8=
X-Received: by 2002:a6b:b8c4:: with SMTP id
 i187mr12749931iof.102.1566633430565; 
 Sat, 24 Aug 2019 00:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190815110944.3579-1-murphyt7@tcd.ie>
 <20190815110944.3579-2-murphyt7@tcd.ie>
 <20190820094143.GA24154@infradead.org>
In-Reply-To: <20190820094143.GA24154@infradead.org>
From: Tom Murphy <murphyt7@tcd.ie>
Date: Sat, 24 Aug 2019 08:56:59 +0100
Message-ID: <CALQxJussiGDzWFT1xhko6no5jZNOezWCFuJQUCr4XwH4NHri3Q@mail.gmail.com>
Subject: Re: [PATCH V5 1/5] iommu/amd: Remove unnecessary locking from AMD
 iommu driver
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_005716_269321_49A45390 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Kukjin Kim <kgene@kernel.org>, Andy Gross <agross@kernel.org>,
 linux-s390@vger.kernel.org, Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 David Woodhouse <dwmw2@infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PkkgaGF2ZSB0byBhZG1pdCBJIGRvbid0IGZ1bGx5IHVuZGVyc3RhbmQgdGhlIGNvbmN1cnJlbmN5
IGlzc3VlcyBoZXJlLCBidXQgbmVpdGhlciBkbyBJIHVuZGVyc3RhbmQgd2hhdCB0aGUgbXV0ZXgg
eW91IHJlbW92ZWQgbWlnaHQgaGF2ZSBoZWxwZWQgdG8gc3RhcnQgd2l0aC4KCkVhY2ggcmFuZ2Ug
aW4gdGhlIHBhZ2UgdGFibGVzIGlzIHByb3RlY3RlZCBieSB0aGUgSU8gdmlydHVhbCBhZGRyZXNz
CmFsbG9jYXRvci4gVGhlIGlvbW11IGRyaXZlciBhbGxvY2F0ZXMgYW4gSU9WQSByYW5nZSB1c2lu
ZyBsb2NrcyBiZWZvcmUKaXQgd3JpdGVzIHRvIGEgcGFnZSB0YWJsZSByYW5nZS4gVGhlIElPVkEg
YWxsb2NhdG9yIGFjdHMgbGlrZSBhIGxvY2sKb24gYSBzcGVjaWZpYyByYW5nZSBvZiB0aGUgcGFn
ZSB0YWJsZXMuIFNvIHdlIGNhbiBoYW5kbGUgbW9zdCBvZiB0aGUKY29uY3VycmVuY3kgaXNzdWVz
IGluIHRoZSBJT1ZBIGFsbG9jYXRvciBhbmQgYXZvaWQgbG9ja2luZyB3aGlsZQp3cml0aW5nIHRv
IGEgcmFuZ2UgaW4gdGhlIHBhZ2UgdGFibGVzLgoKSG93ZXZlciBiZWNhdXNlIHdlIGhhdmUgbXVs
dGlwbGUgbGV2ZWxzIG9mIHBhZ2VzIHdlIG1pZ2h0IGhhdmUgdG8KYWxsb2NhdGUgYSBtaWRkbGUg
cGFnZSAoYSBQTUQpIHdoaWNoIGNvdmVycyBtb3JlIHRoYW4gdGhlIElPVkEgcmFuZ2UKd2UgaGF2
ZSBhbGxvY2F0ZWQuClRvIHNvbHZlIHRoaXMgd2UgY291bGQgdXNlIGxvY2tzOgoKLy9wc2V1ZG8g
Y29kZQpsb2NrX3BhZ2VfdGFibGUoKQppZiAod2UgbmVlZCB0byBhbGxvY2F0ZSBtaWRkbGUgcGFn
ZXMpIHsKIC8vYWxsb2NhdGUgdGhlIHBhZ2UKIC8vc2V0IHRoZSBQTUQgdmFsdWUKfQp1bmxvY2tf
cGFnZV90YWJsZSgpCgpidXQgd2UgY2FuIGFjdHVhbGx5IGF2b2lkIGhhdmluZyBhbnkgbG9ja2lu
ZyBieSBkb2luZyB0aGUgZm9sbG93aW5nOgoKLy9wc2V1ZG8gY29kZQppZiAod2UgbmVlZCB0byBh
bGxvY2F0ZSBtaWRkbGUgcGFnZXMpIHsKIC8vYWxsb2NhdGUgdGhlIHBhZ2UKIC8vY21weGNoZzY0
IHRvIHNldCB0aGUgUE1EIGlmIGl0IHdhc24ndCBhbHJlYWR5IHNldCBzaW5jZSB3ZSBsYXN0IGNo
ZWNrZWQKIGlmICh0aGUgUE1EIHdhcyBzZXQgd2hpbGUgc2luY2Ugd2UgbGFzdCBjaGVja2VkKQog
ICAvL2ZyZWUgdGhlIHBhZ2Ugd2UganVzdCBhbGxvY2F0ZWQKfQoKSW4gdGhpcyBjYXNlIHdlIGNh
biBlbmQgdXAgZG9pbmcgYSBwb2ludGxlc3MgcGFnZSBhbGxvY2F0ZSBhbmQgZnJlZQpidXQgaXQn
cyB3b3J0aCBpdCB0byBhdm9pZCB1c2luZyBsb2NrcwoKWW91IGNhbiBzZWUgdGhpcyBpbiB0aGUg
aW50ZWwgaW9tbXUgY29kZSBoZXJlOgpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgv
YmxvYi85MTQwZDhiZGQ0YzVhMDRhYmUxODFiYjMwMDM3ODM1NWQ1Njk5MGE0L2RyaXZlcnMvaW9t
bXUvaW50ZWwtaW9tbXUuYyNMOTA0Cgo+d2hhdCB0aGUgbXV0ZXggeW91IHJlbW92ZWQgbWlnaHQg
aGF2ZSBoZWxwZWQgdG8gc3RhcnQgd2l0aC4KVGhlIG11dGV4IEkgcmVtb3ZlZCBpcyBhcmd1YWJs
eSBjb21wbGV0ZWx5IHVzZWxlc3MuCgpJbiB0aGUgZG1hIG9wcyBwYXRoIHdlIGhhbmRsZSB0aGUg
SU9WQSBhbGxvY2F0aW9ucyBpbiB0aGUgZHJpdmVyIHNvIHdlCmNhbiBiZSBzdXJlIGEgY2VydGFp
biByYW5nZSBpcyBwcm90ZWN0ZWQgYnkgdGhlIElPVkEgYWxsb2NhdG9yLgoKQmVjYXVzZSB0aGUg
aW9tbXUgb3BzIHBhdGggZG9lc24ndCBoYW5kbGUgdGhlIElPVkEgYWxsb2NhdGlvbnMgaXQKc2Vl
bXMgcmVhc29uYWJsZSB0byBsb2NrIHRoZSBwYWdlIHRhYmxlcyB0byBhdm9pZCB0d28gd3JpdGVy
cyB3cml0aW5nCnRvIHRoZSBzYW1lIHJhbmdlIGF0IHRoZSBzYW1lIHRpbWUuIFdpdGhvdXQgdGhl
IGxvY2sgaXQncyBjb21wbGV0ZQpjaGFvcyBhbmQgYWxsIHdyaXRlcnMgY2FuIGJlIHdyaXRpbmcg
dG8gdGhlIHNhbWUgcmFuZ2UgYXQgdGhlIHNhbWUKdGltZSByZXN1bHRpbmcgaW4gY29tcGxldGUg
Z2FyYmFnZS4KQlVUIHRoZSBsb2NraW5nIGRvZXNuJ3QgYWN0dWFsbHkgbWFrZSBhbnkgcmVhbCBk
aWZmZXJlbmNlLiBFdmVuIHdpdGgKbG9ja2luZyB3ZSBzdGlsbCBoYXZlIGEgcmFjZSBjb25kaXRp
b24gaWYgdHdvIHdyaXRlcnMgd2FudCB0byB3cml0ZSB0bwp0aGUgc2FtZSByYW5nZSBhdCB0aGUg
c2FtZSB0aW1lLCB0aGUgcmFjZSBpcyBqdXN0IHdob2V2ZXIgZ2V0cyB0aGUKbG9jayBmaXJzdCwg
d2Ugc3RpbGwgY2FuJ3QgYmUgc3VyZSB3aGF0IHRoZSByZXN1bHQgd2lsbCBiZS4gU28gdGhlCnJl
c3VsdCBpcyBzdGlsbCBnYXJiYWdlLCBqdXN0IHNsaWdodGx5IG1vcmUgdXNhYmxlIGdhcmJhZ2Ug
YmVjYXVzZSBhdApsZWFzdCB0aGUgcmFuZ2UgaXMgY29ycmVjdCBmb3Igb25lIHdyaXRlci4KSXQg
anVzdCBtYWtlcyBubyBzZW5zZSB0byBldmVyIGhhdmUgdHdvIHdyaXRlcnMgd3JpdGluZyB0byB0
aGUgc2FtZQpyYW5nZSBhbmQgYWRkaW5nIGEgbG9jayBkb2Vzbid0IGZpeCB0aGF0LgpBbHJlYWR5
IHRoZSBJbnRlbCBpb21tdSBvcHMgcGF0aCBkb2Vzbid0IHVzZSBsb2NrcyBmb3IgaXQncyBwYWdl
IHRhYmxlCnNvIHRoaXMgaXNuJ3QgYSBuZXcgaWRlYSBJJ20ganVzdCBkb2luZyB0aGUgc2FtZSBm
b3IgdGhlIEFNRCBpb21tdQpkcml2ZXIKCkRvZXMgYWxsIHRoYXQgbWFrZSBzZW5zZT8KCk9uIFR1
ZSwgMjAgQXVnIDIwMTkgYXQgMTA6NDEsIENocmlzdG9waCBIZWxsd2lnIDxoY2hAaW5mcmFkZWFk
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIEF1ZyAxNSwgMjAxOSBhdCAxMjowOTozOVBNICswMTAw
LCBUb20gTXVycGh5IHdyb3RlOgo+ID4gV2UgY2FuIHJlbW92ZSB0aGUgbXV0ZXggbG9jayBmcm9t
IGFtZF9pb21tdV9tYXAgYW5kIGFtZF9pb21tdV91bm1hcC4KPiA+IGlvbW11X21hcCBkb2VzbuKA
mXQgbG9jayB3aGlsZSBtYXBwaW5nIGFuZCBzbyBubyB0d28gY2FsbHMgc2hvdWxkIHRvdWNoCj4g
PiB0aGUgc2FtZSBpb3ZhIHJhbmdlLiBUaGUgQU1EIGRyaXZlciBhbHJlYWR5IGhhbmRsZXMgdGhl
IHBhZ2UgdGFibGUgcGFnZQo+ID4gYWxsb2NhdGlvbnMgd2l0aG91dCBsb2NrcyBzbyB3ZSBjYW4g
c2FmZWx5IHJlbW92ZSB0aGUgbG9ja3MuCj4KPiBJJ3ZlIGJlZW4gbG9va2luZyBvdmVyIHRoZSBj
b2RlIGFuZCB0cnlpbmcgdG8gdW5kZXJzdGFuZCBob3cgdGhlCj4gc3luY2hyb25pemF0aW9uIHdv
cmtzLiAgSSBndWVzIHdlIHRoZSBjbXB4Y2hnNjQgaW4gZnJlZV9jbGVhcl9wdGUKPiBpcyB0aGUg
aW1wb3J0YW50IHBvaW50IGhlcmU/ICBJIGhhdmUgdG8gYWRtaXQgSSBkb24ndCBmdWxseSB1bmRl
cnN0YW5kCj4gdGhlIGNvbmN1cnJlbmN5IGlzc3VlcyBoZXJlLCBidXQgbmVpdGhlciBkbyBJIHVu
ZGVyc3RhbmQgd2hhdCB0aGUKPiBtdXRleCB5b3UgcmVtb3ZlZCBtaWdodCBoYXZlIGhlbHBlZCB0
byBzdGFydCB3aXRoLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
