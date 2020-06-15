Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A28AB1F935E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 11:27:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p+OEUc+DXCx65Q7BOqdxxe9vtG5SgZtiSLVvM/Rf2U8=; b=gr+A4cKQppZneQ
	bCoNe0dEIJn8RmW1MdaFr9uzuUSLwA6dTyDT3YS/89wuZFFDgYxd305rkwjjppZOrh79hz83NC+BK
	FhqaD6pih5RpbvjCGgjoY7LhUVA+sGOrvq0AiGvS/CsOhQvB54gh3TmaFMRqW4aZ4H7iWezL6mSGg
	XckerKB0GkgvzPDsEQndojeWm6hdkU5jfj9oVZD8BleSr51du17miG+md+0hr3mRfeG3shnq8DPmd
	Hw+3OCDerYaQIOABDseKc/EJ6MXHrcl7ZRDuBftY/4ersaHohQrfFkuf4wWXtjHnDJbhweduO4esV
	ZELZ/82bEpWWxaePjTPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jklON-0004Mx-4o; Mon, 15 Jun 2020 09:26:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jklOC-0004Mc-Qd
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 09:26:50 +0000
Received: by mail-wm1-x342.google.com with SMTP id r9so13892526wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 02:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=Rzxkol7w2QC50xcBFexG/soZ0rzW0UYaIlHrmwy/Vl4=;
 b=lc/0UVSxPinnkjDB/lFuqYGDeDU3GTO/xQpG14bzThYrcAzSIf4rcgTtABwesYQmpk
 ZeZ393630Ant4rb6ydPcR037Ny5WHbHzrVRrSUjC8OiOndguT3fbjALpGxY3uIqF4+xy
 G1ROVao91s3C13/YISlmmLI8VYZXLxC0P3FVJrVvPi1id7KFd427AluMHr3mqBvePJIN
 rfDMCdtRR2HgrtpQf9WGtvgaJlsedSjanZYR5rOamASSWWy2HcJX7fjYPARmrc4cCR3h
 sEOAwa/hDp/2yGmDo3eYiDgB4+0KR5/c7ELTwXQoUcAOApfqXqz7IZP19e5bpylQpseK
 rSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=Rzxkol7w2QC50xcBFexG/soZ0rzW0UYaIlHrmwy/Vl4=;
 b=jyo5jW5pw1R+TpWAKQbaou2gw/jbXbqkX4gDmy9djwMmKGP8O8S/EyJwPi9FfMTClo
 xxGlqqMBVU6O0VlbemU+IQ7TpfS9nkZcg0Cy83VG7egeLk1wEIZeFUs3F2fSvg1GCP2D
 OlG0V2EPYjeH/HIltCT/CtiTfmxZoD9uSXj/s5NDZMOr+xADGxtUOvn/enJfWb6PW6ki
 os3lgw63VSDvKpD8z4HGhUS4uwEpO9ew5zmrz9mtSHOIkgzbGamzz/K7+c7Ar3vaxY9m
 bIIPTXjremowRSlcbmz32lZtwLvFipt1w1aYDXJYthfLN2X/JPT9zhPtctv1FVEFVTlB
 bQjQ==
X-Gm-Message-State: AOAM530flsj2Xh194wMGNCf0IPbgMF7+TTkTllm3hTTMGQj6U114y6qz
 9TFSyfyeY48B0ko5gyIw5PXrCw==
X-Google-Smtp-Source: ABdhPJwCaq+quncmRhoHqb9o1t8O7Lp9QJlLwsERoVR/Cy+mzVIJu9PSqQTp80ULC4g08tqY/VX/vA==
X-Received: by 2002:a1c:790a:: with SMTP id l10mr11470065wme.80.1592213207106; 
 Mon, 15 Jun 2020 02:26:47 -0700 (PDT)
Received: from dell ([2.27.167.101])
 by smtp.gmail.com with ESMTPSA id k21sm24685707wrd.24.2020.06.15.02.26.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Jun 2020 02:26:46 -0700 (PDT)
Date: Mon, 15 Jun 2020 10:26:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 1/3] mfd: core: Make a best effort attempt to match
 devices with the correct of_nodes
Message-ID: <20200615092644.GA2608702@dell>
References: <20200611191002.2256570-1-lee.jones@linaro.org>
 <4b188fb5-6667-720d-46e1-6f103efe8966@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4b188fb5-6667-720d-46e1-6f103efe8966@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_022648_868551_8D63D559 
X-CRM114-Status: GOOD (  15.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, gregkh@linuxfoundation.org, broonie@kernel.org,
 michael@walle.cc, linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 andriy.shevchenko@linux.intel.com, robin.murphy@arm.com,
 linus.walleij@linaro.org, linux@roeck-us.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCAxNCBKdW4gMjAyMCwgRnJhbmsgUm93YW5kIHdyb3RlOgoKPiBIaSBMZWUsCj4gCj4g
SSdtIGxvb2tpbmcgYXQgNS44LXJjMS4KPiAKPiBUaGUgb25seSB1c2Ugb2YgT0ZfTUZEX0NFTEwo
KSB3aGVyZSB0aGUgc2FtZSBjb21wYXRpYmxlIGlzIHNwZWNpZmllZAo+IGZvciBtdWx0aXBsZSBl
bGVtZW50cyBvZiBhIHN0cnVjdCBtZmRfY2VsbCBhcnJheSBpcyBmb3IgY29tcGF0aWJsZQo+ICJz
dGVyaWNzc29uLGFiODUwMC1wd20iIGluIGRyaXZlcnMvbWZkL2FiODUwMC1jb3JlLmM6Cj4gCj4g
ICAgICAgICBPRl9NRkRfQ0VMTCgiYWI4NTAwLXB3bSIsCj4gICAgICAgICAgICAgICAgICAgICBO
VUxMLCBOVUxMLCAwLCAxLCAic3Rlcmljc3NvbixhYjg1MDAtcHdtIiksCj4gICAgICAgICBPRl9N
RkRfQ0VMTCgiYWI4NTAwLXB3bSIsCj4gICAgICAgICAgICAgICAgICAgICBOVUxMLCBOVUxMLCAw
LCAyLCAic3Rlcmljc3NvbixhYjg1MDAtcHdtIiksCj4gICAgICAgICBPRl9NRkRfQ0VMTCgiYWI4
NTAwLXB3bSIsCj4gICAgICAgICAgICAgICAgICAgICBOVUxMLCBOVUxMLCAwLCAzLCAic3Rlcmlj
c3NvbixhYjg1MDAtcHdtIiksCj4gCj4gVGhlIG9ubHkgLmR0cyBvciAuZHRzaSBmaWxlcyB3aGVy
ZSBJIHNlZSBjb21wYXRpYmxlICJzdGVyaWNzc29uLGFiODUwMC1wd20iCj4gYXJlOgo+IAo+ICAg
IGFyY2gvYXJtL2Jvb3QvZHRzL3N0ZS1hYjg1MDAuZHRzaQo+ICAgIGFyY2gvYXJtL2Jvb3QvZHRz
L3N0ZS1hYjg1MDUuZHRzaQo+IAo+IFRoZXNlIHR3byAuZHRzaSBmaWxlcyBvbmx5IGhhdmUgYSBz
aW5nbGUgbm9kZSB3aXRoIHRoaXMgY29tcGF0aWJsZS4KPiBDaGFzaW5nIGJhY2sgdG8gLmR0cyBh
bmQgLmR0c2kgZmlsZXMgdGhhdCBpbmNsdWRlIHRoZXNlIHR3byAuZHRzaQo+IGZpbGVzLCBJIHNl
ZSBubyBjYXNlIHdoZXJlIHRoZXJlIGFyZSBtdWx0aXBsZSBub2RlcyB3aXRoIHRoaXMKPiBjb21w
YXRpYmxlLgo+IAo+IFNvIGl0IGxvb2tzIHRvIG1lIGxpa2UgdGhlcmUgaXMgbm8gLmR0cyBpbiBt
YWlubGluZSB0aGF0IGlzIHByb3ZpZGluZwo+IHRoZSB0aHJlZSAic3Rlcmljc3NvbixhYjg1MDAt
cHdtIiBub2RlcyB0aGF0IGRyaXZlcnMvbWZkL2FiODUwMC1jb3JlLmMKPiBpcyBleHBlY3Rpbmcu
ICBObyBjYXNlIHRoYXQgdGhlcmUgYXJlIG11bHRpcGxlIG1mZCBjaGlsZCBub2RlcyB3aGVyZQo+
IG1mZF9hZGRfZGV2aWNlKCkgd291bGQgYXNzaWduIHRoZSBmaXJzdCBvZiBuIGNoaWxkIG5vZGVz
IHdpdGggdGhlCj4gc2FtZSBjb21wYXRpYmxlIHRvIG11bHRpcGxlIGRldmljZXMuCj4gCj4gU28g
aXQgYXBwZWFycyB0byBtZSB0aGF0IGRyaXZlcnMvbWZkL2FiODUwMC1jb3JlLmMgaXMgY3VycmVu
dGx5IGJyb2tlbi4KPiBBbSBJIG1pc3Npbmcgc29tZXRoaW5nIGhlcmU/Cj4gCj4gSWYgSSBhbSBj
b3JyZWN0LCB0aGVuIGVpdGhlciBkcml2ZXJzL21mZC9hYjg1MDAtY29yZS5jIG9yCj4gc3RlLWFi
ODUwMC5kdHNpIGFuZCBzdGUtYWI4NTA1LmR0c2kgbmVlZCB0byBiZSBmaXhlZC4KCllvdXIgYW5h
bHlzaXMgaXMgY29ycmVjdC4KCkFsdGhvdWdoIGl0J3Mgbm90ICJicm9rZW4iLCBpdCBqdXN0IHdv
cmtzIHdoZW4gaXQgcmVhbGx5IHNob3VsZG4ndC4KCkkgd2lsbCBiZSBmaXhpbmcgdGhlICdhYjg1
MDAtcHdtJyBjYXNlIGluIGR1ZSBjb3Vyc2UuCgo+IE1vdmluZyBmb3J3YXJkLCB5b3VyIHByb3Bv
c2VkIE9GX01GRF9DRUxMX1JFRygpIG1ldGhvZCBzZWVtcyBhIGdvb2QKPiBhcHByb2FjaCAoSSBo
YXZlIG5vdCBjb21wbGV0ZWx5IHJlYWQgdGhlIGFjdHVhbCBjb2RlIGluIHRoZSBwYXRjaCB5ZXQK
PiB0aG91Z2gpLgoKVGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVj
aG5pY2FsIExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3Vy
Y2Ugc29mdHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRl
ciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
