Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1E1E386C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:42:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5OAtQtQ9vxeB7V9zCKMoTgDYql/I7Y2Jk5gjrX2/5MA=; b=dsGY6WzNRrvFUuDF9zVDazt3N
	RWxo9iuAAPXFKwTATJ19rSPkYVA4bHi6t6z3NnZusnl3JmggGoqLXvZiDJ5P2o62wzlfscTJPCeeG
	ysm2gMet6FmIdY7L7hesOxuqTkEThMlphplPmNIiQMKK2okFBsy4tNDZNEqkyAYktU4Af0Y6joATs
	GH9zCWbhq3FdsLPBQcH81Cf114iHhLbJRcJSzjZlfWACqeAEEc6CZLXLCFsHC6L92Ya52AASdR+UP
	Afqu/o0gEqkNpxcF7PIiPrbn3ZbddA7JvfGvUjvXjWlNcPFKQoTMx7j5r5BgJe4EGMEzDRKVLfMXY
	py8F4fQ6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgBz-0001IP-1y; Thu, 24 Oct 2019 16:42:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8p-0005nb-GT
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:39:18 +0000
Received: by mail-wr1-x441.google.com with SMTP id w18so26299890wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sngj5o7xGqkV7qLAUdwJIeVbqtdWhiZfcov4EWWcqNw=;
 b=gu2EmY8T4fHww6db/Ps4E+DzcyakXOegNWEK+k+nCJBavbQOa3coQ2lLDuLLKpJgH0
 527sNalb8QrTyi16p3DfITfSx5Uh69Exsq2JOE5TJeLj6XP0RQhsbmm/y5o4ArWSOXT8
 yRbTAwvueOgdrfReKGZhjfTNT1DmuokenN3BY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sngj5o7xGqkV7qLAUdwJIeVbqtdWhiZfcov4EWWcqNw=;
 b=p3ma6JMD/4JJZpVK/WEG9Dts7c3dkeYYb0j8i3dtjhjbfmuc3BgAysJr2iRJCttJZG
 K7gwk3sEQgfcLXUw+0bdaTj9eO+NcAehjR6XlIITUfKjSaOJyWChKPkXIbEmQ8+MgGzT
 9ACKqVSNT0v4Tr/+AZyWs4ZMjVP2fKOoPZvHKE/5qM4fkgz4/9fR2ERNPCyX/F/QdM2H
 Q6xe7bY1/VsClXOzw/KcgpkN0uS2PXBklz9FoMXv5kTmghu9trAnJoDveVD+0ExfHfs6
 jHx0iR1KTNaMR1GcdV3VSYcFMtEZORAhzR7iAErEAA+nDWeX6srl7hFRYPtYbdmiijOj
 jufQ==
X-Gm-Message-State: APjAAAUF8uAsthkSctDqZh0EO5qiN2n0AuD8BPuPEG84qw4m4Q98zpso
 Pe/rYfhzF1Y9Gf1d6PE+X5MM7/YoXjAqZdSm
X-Google-Smtp-Source: APXvYqyjhwovBTIEeMIpp6iSPZUvbueC+kdSnLk0tQnTPL2W+dwVPjZ4eNHddf0WxnYytVJv5c2dZQ==
X-Received: by 2002:adf:9f08:: with SMTP id l8mr4473943wrf.325.1571935153628; 
 Thu, 24 Oct 2019 09:39:13 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id c16sm13340678wrw.32.2019.10.24.09.39.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 24 Oct 2019 09:39:12 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] gpio: Add xgs-iproc driver
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 linus.walleij@linaro.org, bgolaszewski@baylibre.com, robh+dt@kernel.org,
 mark.rutland@arm.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com
References: <20191024004816.5539-1-chris.packham@alliedtelesis.co.nz>
 <20191024004816.5539-3-chris.packham@alliedtelesis.co.nz>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <94183c8d-6ab2-50a4-a1a3-5348a2e1d8da@broadcom.com>
Date: Thu, 24 Oct 2019 09:39:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191024004816.5539-3-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093915_625683_1BC7301E 
X-CRM114-Status: GOOD (  32.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXMsCgpTb21lIGNsZWFudXBzLgoKT24gMjAxOS0xMC0yMyA1OjQ4IHAubS4sIENocmlz
IFBhY2toYW0gd3JvdGU6Cj4gVGhpcyBkcml2ZXIgc3VwcG9ydHMgdGhlIENoaXAgQ29tbW9uIEEg
R1BJTyBjb250cm9sbGVyIHByZXNlbnQgb24gYQo+IG51bWJlciBvZiBCcm9hZGNvbSBzd2l0Y2gg
QVNJQ3Mgd2l0aCBpbnRlZ3JhdGVkIFNvQ3MuIFRoZSBjb250cm9sbGVyIGlzCj4gc2ltaWxhciB0
byB0aGUgcGluY3RybC1uc3AtZ3BpbyBhbmQgcGluY3RybC1pcHJvYy1ncGlvIGJsb2NrcyBidXQK
PiBkaWZmZXJlbnQgZW5vdWdoIHRoYXQgYSBzZXBhcmF0ZSBkcml2ZXIgaXMgcmVxdWlyZWQuCj4K
PiBUaGlzIGhhcyBiZWVuIHBvcnRlZCBmcm9tIEJyb2FkY29tJ3MgWExESyA1LjAuMyByZXRhaW5p
bmcgb25seSB0aGUgQ0NBCj4gc3VwcG9ydCAocGluY3RybC1pcHJvYy1ncGlvIGNvdmVycyBDQ0Ip
Lgo+Cj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgUGFja2hhbSA8Y2hyaXMucGFja2hhbUBhbGxpZWR0
ZWxlc2lzLmNvLm56Pgo+IC0tLQo+Cj4gTm90ZXM6Cj4gICAgICBDaGFuZ2VzIGluIHYzOgo+ICAg
ICAgLSBwcmVmaXggbG9jYWwgI2RlZmluZXMgd2l0aCAnSVBST0MnCj4gICAgICAtIHVzZSB7cmVh
ZGwsd3JpdGVsfV9yZWxheGVkCj4gICAgICAtIHJlbW92ZSB1bm5lY2Vzc2FyeSBoZWFkZXJzCj4g
ICAgICAtIGFjdHVhbGx5IHVzZSBzcGlubG9jayB0byBndWFyZCBoYXJkd2FyZSBhY2Nlc3Nlcwo+
ICAgICAgCj4gICAgICBDaGFuZ2VzIGluIHYyOgo+ICAgICAgLSB1c2UgbW9yZSBvZiB0aGUgZ2Vu
ZXJpYyBpbmZyYXN0cnVjdHVyZSBmb3IgZ3BpbyBjaGlwcwo+ICAgICAgLSBoYW5kbGluZyB0aGUg
cm9vdCBpbnRlcnJ1cHQgaXMgc3RpbGwgZG9uZSBtYW51YWxseSBkdWUgdG8gc2hhcmluZyB3aXRo
IHVhcnQwLgo+Cj4gICBkcml2ZXJzL2dwaW8vS2NvbmZpZyAgICAgICAgICB8ICAgOSArCj4gICBk
cml2ZXJzL2dwaW8vTWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gICBkcml2ZXJzL2dwaW8vZ3Bp
by14Z3MtaXByb2MuYyB8IDMyMSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDMzMSBpbnNlcnRpb25zKCspCj4gICBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9ncGlvL2dwaW8teGdzLWlwcm9jLmMKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwaW8vS2NvbmZpZyBiL2RyaXZlcnMvZ3Bpby9LY29uZmlnCj4gaW5kZXggMzhlMDk2ZTY5MjVm
Li40YjNjMGY4Mzk3ZDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL0tjb25maWcKPiArKysg
Yi9kcml2ZXJzL2dwaW8vS2NvbmZpZwo+IEBAIC0xNTYsNiArMTU2LDE1IEBAIGNvbmZpZyBHUElP
X0JSQ01TVEIKPiAgIAloZWxwCj4gICAJICBTYXkgeWVzIGhlcmUgdG8gZW5hYmxlIEdQSU8gc3Vw
cG9ydCBmb3IgQnJvYWRjb20gU1RCIChCQ003WFhYKSBTb0NzLgo+ICAgCj4gK2NvbmZpZyBHUElP
X1hHU19JUFJPQwpQbGFjZSBjb25maWcgb3B0aW9uIGluIGFscGhhIG9yZGVyIGluIHRoaXMgZmls
ZSwgbGlrZSB0aGUgcmVzdCBvZiB0aGUgCmNvbmZpZyBvcHRpb25zLsKgIFBlcmhhcHMgY2hhbmdl
IHRoZSBuYW1lIHRvIENPTkZJR19CQ01fR1BJT19YR1NfSVBST0MKPiArCXRyaXN0YXRlICJCUkNN
IFhHUyBpUHJvYyBHUElPIHN1cHBvcnQiCj4gKwlkZXBlbmRzIG9uIE9GX0dQSU8gJiYgKEFSQ0hf
QkNNX0lQUk9DIHx8IENPTVBJTEVfVEVTVCkKPiArCXNlbGVjdCBHUElPX0dFTkVSSUMKPiArCXNl
bGVjdCBHUElPTElCX0lSUUNISVAKPiArCWRlZmF1bHQgQVJDSF9CQ01fSVBST0MKPiArCWhlbHAK
PiArCSAgU2F5IHllcyBoZXJlIHRvIGVuYWJsZSBHUElPIHN1cHBvcnQgZm9yIEJyb2FkY29tIFhH
UyBpUHJvYyBTb0NzLgo+ICsKPiAgIGNvbmZpZyBHUElPX0NBREVOQ0UKPiAgIAl0cmlzdGF0ZSAi
Q2FkZW5jZSBHUElPIHN1cHBvcnQiCj4gICAJZGVwZW5kcyBvbiBPRl9HUElPCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3Bpby9NYWtlZmlsZSBiL2RyaXZlcnMvZ3Bpby9NYWtlZmlsZQo+IGluZGV4
IGQyZmQxOWMxNWJhZS4uMzc4M2MzZDQzZmJlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3Bpby9N
YWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9NYWtlZmlsZQo+IEBAIC0zNyw2ICszNyw3IEBA
IG9iai0kKENPTkZJR19HUElPX0JDTV9LT05BKQkJKz0gZ3Bpby1iY20ta29uYS5vCj4gICBvYmot
JChDT05GSUdfR1BJT19CRDcwNTI4KQkJKz0gZ3Bpby1iZDcwNTI4Lm8KPiAgIG9iai0kKENPTkZJ
R19HUElPX0JEOTU3MU1XVikJCSs9IGdwaW8tYmQ5NTcxbXd2Lm8KPiAgIG9iai0kKENPTkZJR19H
UElPX0JSQ01TVEIpCQkrPSBncGlvLWJyY21zdGIubwo+ICtvYmotJChDT05GSUdfR1BJT19YR1Nf
SVBST0MpCQkrPSBncGlvLXhncy1pcHJvYy5vCmNvbmZpZyBvcHRpb25zIGFyZSBpbiBhbHBoYSBv
cmRlcgo+ICAgb2JqLSQoQ09ORklHX0dQSU9fQlQ4WFgpCQkrPSBncGlvLWJ0OHh4Lm8KPiAgIG9i
ai0kKENPTkZJR19HUElPX0NBREVOQ0UpCQkrPSBncGlvLWNhZGVuY2Uubwo+ICAgb2JqLSQoQ09O
RklHX0dQSU9fQ0xQUzcxMVgpCQkrPSBncGlvLWNscHM3MTF4Lm8KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncGlvL2dwaW8teGdzLWlwcm9jLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby14Z3MtaXByb2Mu
Ywo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5mY2Y0MWNmOWVm
YzMKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8teGdzLWlwcm9jLmMK
PiBAQCAtMCwwICsxLDMyMSBAQAo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAo+ICsvKgo+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTcgQnJvYWRjb20gQ29ycG9yYXRpb24KQ2hh
bmdlICJCcm9hZGNvbSBDb3Jwb3JhdGlvbiIgdG8gIkJyb2FkY29tLiIKPiArICovCj4gKwo+ICsj
aW5jbHVkZSA8bGludXgva2VybmVsLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pbml0Lmg+Cj4gKyNp
bmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICsjaW5j
bHVkZSA8bGludXgvaW50ZXJydXB0Lmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9pby5oPgo+ICsjaW5j
bHVkZSA8bGludXgvZ3Bpby9kcml2ZXIuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvc3BpbmxvY2suaD4KI2luY2x1ZGVzIHNob3VsZCBi
ZSBpbiBhbHBoYSBvcmRlcgo+ICsKPiArI2RlZmluZSBJUFJPQ19DQ0FfSU5UX0ZfR1BJT0lOVAkJ
QklUKDApCj4gKyNkZWZpbmUgSVBST0NfQ0NBX0lOVF9TVFMJCTB4MjAKPiArI2RlZmluZSBJUFJP
Q19DQ0FfSU5UX01BU0sJCTB4MjQKPiArCj4gKyNkZWZpbmUgSVBST0NfR1BJT19DQ0FfRElOCQkw
eDAKPiArI2RlZmluZSBJUFJPQ19HUElPX0NDQV9ET1VUCQkweDQKPiArI2RlZmluZSBJUFJPQ19H
UElPX0NDQV9PVVRfRU4JCTB4OAo+ICsjZGVmaW5lIElQUk9DX0dQSU9fQ0NBX0lOVF9MRVZFTAkw
eDEwCj4gKyNkZWZpbmUgSVBST0NfR1BJT19DQ0FfSU5UX0xFVkVMX01BU0sJMHgxNAo+ICsjZGVm
aW5lIElQUk9DX0dQSU9fQ0NBX0lOVF9FVkVOVAkweDE4Cj4gKyNkZWZpbmUgSVBST0NfR1BJT19D
Q0FfSU5UX0VWRU5UX01BU0sJMHgxQwo+ICsjZGVmaW5lIElQUk9DX0dQSU9fQ0NBX0lOVF9FREdF
CQkweDI0Cj4gKwo+ICtzdHJ1Y3QgaXByb2NfZ3Bpb19jaGlwIHsKPiArCXN0cnVjdCBpcnFfY2hp
cCBpcnFjaGlwOwo+ICsJc3RydWN0IGdwaW9fY2hpcCBnYzsKPiArCXNwaW5sb2NrX3QgbG9jazsK
PiArCXN0cnVjdCBkZXZpY2UgKmRldjsKPiArCXZvaWQgX19pb21lbSAqYmFzZTsKPiArCXZvaWQg
X19pb21lbSAqaW50cjsKPiArfTsKPiArCj4gK3N0YXRpYyBpbmxpbmUgc3RydWN0IGlwcm9jX2dw
aW9fY2hpcCAqCj4gK3RvX2lwcm9jX2dwaW8oc3RydWN0IGdwaW9fY2hpcCAqZ2MpCj4gK3sKPiAr
CXJldHVybiBjb250YWluZXJfb2YoZ2MsIHN0cnVjdCBpcHJvY19ncGlvX2NoaXAsIGdjKTsKPiAr
fQo+ICsKPiArc3RhdGljIHZvaWQgaXByb2NfZ3Bpb19pcnFfYWNrKHN0cnVjdCBpcnFfZGF0YSAq
ZCkKPiArewo+ICsJc3RydWN0IGdwaW9fY2hpcCAqZ2MgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBf
ZGF0YShkKTsKPiArCXN0cnVjdCBpcHJvY19ncGlvX2NoaXAgKmNoaXAgPSB0b19pcHJvY19ncGlv
KGdjKTsKPiArCWludCBwaW4gPSBkLT5od2lycTsKPiArCXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4g
Kwl1MzIgaXJxID0gZC0+aXJxOwo+ICsJdTMyIGlycV90eXBlLCBldmVudF9zdGF0dXMgPSAwOwo+
ICsKPiArCXNwaW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7Cj4gKwlpcnFfdHlw
ZSA9IGlycV9nZXRfdHJpZ2dlcl90eXBlKGlycSk7Cj4gKwlpZiAoaXJxX3R5cGUgJiBJUlFfVFlQ
RV9FREdFX0JPVEgpIHsKPiArCQlldmVudF9zdGF0dXMgfD0gQklUKHBpbik7Cj4gKwkJd3JpdGVs
X3JlbGF4ZWQoZXZlbnRfc3RhdHVzLAo+ICsJCQkgICAgICAgY2hpcC0+YmFzZSArIElQUk9DX0dQ
SU9fQ0NBX0lOVF9FVkVOVCk7Cj4gKwl9Cj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZjaGlw
LT5sb2NrLCBmbGFncyk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGlwcm9jX2dwaW9faXJxX3Vu
bWFzayhzdHJ1Y3QgaXJxX2RhdGEgKmQpCj4gK3sKPiArCXN0cnVjdCBncGlvX2NoaXAgKmdjID0g
aXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZCk7Cj4gKwlzdHJ1Y3QgaXByb2NfZ3Bpb19jaGlw
ICpjaGlwID0gdG9faXByb2NfZ3BpbyhnYyk7Cj4gKwlpbnQgcGluID0gZC0+aHdpcnE7Cj4gKwl1
bnNpZ25lZCBsb25nIGZsYWdzOwo+ICsJdTMyIGlycSA9IGQtPmlycTsKPiArCXUzMiBpbnRfbWFz
aywgaXJxX3R5cGUsIGV2ZW50X21hc2s7Cj4gKwo+ICsJc3Bpbl9sb2NrX2lycXNhdmUoJmNoaXAt
PmxvY2ssIGZsYWdzKTsKPiArCWlycV90eXBlID0gaXJxX2dldF90cmlnZ2VyX3R5cGUoaXJxKTsK
PiArCWV2ZW50X21hc2sgPSByZWFkbF9yZWxheGVkKGNoaXAtPmJhc2UgKyBJUFJPQ19HUElPX0ND
QV9JTlRfRVZFTlRfTUFTSyk7Cj4gKwlpbnRfbWFzayA9IHJlYWRsX3JlbGF4ZWQoY2hpcC0+YmFz
ZSArIElQUk9DX0dQSU9fQ0NBX0lOVF9MRVZFTF9NQVNLKTsKPiArCj4gKwlpZiAoaXJxX3R5cGUg
JiBJUlFfVFlQRV9FREdFX0JPVEgpIHsKPiArCQlldmVudF9tYXNrIHw9IDEgPDwgcGluOwo+ICsJ
CXdyaXRlbF9yZWxheGVkKGV2ZW50X21hc2ssCj4gKwkJCSAgICAgICBjaGlwLT5iYXNlICsgSVBS
T0NfR1BJT19DQ0FfSU5UX0VWRU5UX01BU0spOwo+ICsJfSBlbHNlIHsKPiArCQlpbnRfbWFzayB8
PSAxIDw8IHBpbjsKPiArCQl3cml0ZWxfcmVsYXhlZChpbnRfbWFzaywKPiArCQkJICAgICAgIGNo
aXAtPmJhc2UgKyBJUFJPQ19HUElPX0NDQV9JTlRfTEVWRUxfTUFTSyk7Cj4gKwl9Cj4gKwlzcGlu
X3VubG9ja19pcnFyZXN0b3JlKCZjaGlwLT5sb2NrLCBmbGFncyk7Cj4gK30KPiArCj4gK3N0YXRp
YyB2b2lkIGlwcm9jX2dwaW9faXJxX21hc2soc3RydWN0IGlycV9kYXRhICpkKQo+ICt7Cj4gKwlz
dHJ1Y3QgZ3Bpb19jaGlwICpnYyA9IGlycV9kYXRhX2dldF9pcnFfY2hpcF9kYXRhKGQpOwo+ICsJ
c3RydWN0IGlwcm9jX2dwaW9fY2hpcCAqY2hpcCA9IHRvX2lwcm9jX2dwaW8oZ2MpOwo+ICsJaW50
IHBpbiA9IGQtPmh3aXJxOwo+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPiArCXUzMiBpcnEgPSBk
LT5pcnE7Cj4gKwl1MzIgaXJxX3R5cGUsIGludF9tYXNrLCBldmVudF9tYXNrOwo+ICsKPiArCXNw
aW5fbG9ja19pcnFzYXZlKCZjaGlwLT5sb2NrLCBmbGFncyk7Cj4gKwlpcnFfdHlwZSA9IGlycV9n
ZXRfdHJpZ2dlcl90eXBlKGlycSk7Cj4gKwlldmVudF9tYXNrID0gcmVhZGxfcmVsYXhlZChjaGlw
LT5iYXNlICsgSVBST0NfR1BJT19DQ0FfSU5UX0VWRU5UX01BU0spOwo+ICsJaW50X21hc2sgPSBy
ZWFkbF9yZWxheGVkKGNoaXAtPmJhc2UgKyBJUFJPQ19HUElPX0NDQV9JTlRfTEVWRUxfTUFTSyk7
Cj4gKwo+ICsJaWYgKGlycV90eXBlICYgSVJRX1RZUEVfRURHRV9CT1RIKSB7Cj4gKwkJZXZlbnRf
bWFzayAmPSB+QklUKHBpbik7Cj4gKwkJd3JpdGVsX3JlbGF4ZWQoZXZlbnRfbWFzaywKPiArCQkJ
ICAgICAgIGNoaXAtPmJhc2UgKyBJUFJPQ19HUElPX0NDQV9JTlRfRVZFTlRfTUFTSyk7Cj4gKwl9
IGVsc2Ugewo+ICsJCWludF9tYXNrICY9IH5CSVQocGluKTsKPiArCQl3cml0ZWxfcmVsYXhlZChp
bnRfbWFzaywKPiArCQkJICAgICAgIGNoaXAtPmJhc2UgKyBJUFJPQ19HUElPX0NDQV9JTlRfTEVW
RUxfTUFTSyk7Cj4gKwl9Cj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZjaGlwLT5sb2NrLCBm
bGFncyk7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaXByb2NfZ3Bpb19pcnFfc2V0X3R5cGUoc3Ry
dWN0IGlycV9kYXRhICpkLCB1MzIgdHlwZSkKPiArewo+ICsJc3RydWN0IGdwaW9fY2hpcCAqZ2Mg
PSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiArCXN0cnVjdCBpcHJvY19ncGlvX2No
aXAgKmNoaXAgPSB0b19pcHJvY19ncGlvKGdjKTsKPiArCWludCBwaW4gPSBkLT5od2lycTsKPiAr
CXVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4gKwl1MzIgaXJxID0gZC0+aXJxOwo+ICsJdTMyIGV2ZW50
X3BvbCwgaW50X3BvbDsKPiArCWludCByZXQgPSAwOwo+ICsKPiArCXNwaW5fbG9ja19pcnFzYXZl
KCZjaGlwLT5sb2NrLCBmbGFncyk7Cj4gKwlzd2l0Y2ggKHR5cGUgJiBJUlFfVFlQRV9TRU5TRV9N
QVNLKSB7Cj4gKwljYXNlIElSUV9UWVBFX0VER0VfUklTSU5HOgo+ICsJCWV2ZW50X3BvbCA9IHJl
YWRsX3JlbGF4ZWQoY2hpcC0+YmFzZSArIElQUk9DX0dQSU9fQ0NBX0lOVF9FREdFKTsKPiArCQll
dmVudF9wb2wgJj0gfkJJVChwaW4pOwo+ICsJCXdyaXRlbF9yZWxheGVkKGV2ZW50X3BvbCwgY2hp
cC0+YmFzZSArIElQUk9DX0dQSU9fQ0NBX0lOVF9FREdFKTsKPiArCQlicmVhazsKPiArCWNhc2Ug
SVJRX1RZUEVfRURHRV9GQUxMSU5HOgo+ICsJCWV2ZW50X3BvbCA9IHJlYWRsX3JlbGF4ZWQoY2hp
cC0+YmFzZSArIElQUk9DX0dQSU9fQ0NBX0lOVF9FREdFKTsKPiArCQlldmVudF9wb2wgfD0gQklU
KHBpbik7Cj4gKwkJd3JpdGVsX3JlbGF4ZWQoZXZlbnRfcG9sLCBjaGlwLT5iYXNlICsgSVBST0Nf
R1BJT19DQ0FfSU5UX0VER0UpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBJUlFfVFlQRV9MRVZFTF9I
SUdIOgo+ICsJCWludF9wb2wgPSByZWFkbF9yZWxheGVkKGNoaXAtPmJhc2UgKyBJUFJPQ19HUElP
X0NDQV9JTlRfTEVWRUwpOwo+ICsJCWludF9wb2wgJj0gfkJJVChwaW4pOwo+ICsJCXdyaXRlbF9y
ZWxheGVkKGludF9wb2wsIGNoaXAtPmJhc2UgKyBJUFJPQ19HUElPX0NDQV9JTlRfTEVWRUwpOwo+
ICsJCWJyZWFrOwo+ICsJY2FzZSBJUlFfVFlQRV9MRVZFTF9MT1c6Cj4gKwkJaW50X3BvbCA9IHJl
YWRsX3JlbGF4ZWQoY2hpcC0+YmFzZSArIElQUk9DX0dQSU9fQ0NBX0lOVF9MRVZFTCk7Cj4gKwkJ
aW50X3BvbCB8PSBCSVQocGluKTsKPiArCQl3cml0ZWxfcmVsYXhlZChpbnRfcG9sLCBjaGlwLT5i
YXNlICsgSVBST0NfR1BJT19DQ0FfSU5UX0xFVkVMKTsKPiArCQlicmVhazsKPiArCWRlZmF1bHQ6
Cj4gKwkJLyogc2hvdWxkIG5vdCBjb21lIGhlcmUgKi8KPiArCQlyZXQgPSAtRUlOVkFMOwo+ICsJ
CWdvdG8gb3V0X3VubG9jazsKPiArCX0KPiArCj4gKwlpZiAodHlwZSAmIElSUV9UWVBFX0xFVkVM
X01BU0spCj4gKwkJaXJxX3NldF9oYW5kbGVyX2xvY2tlZChpcnFfZ2V0X2lycV9kYXRhKGlycSks
IGhhbmRsZV9sZXZlbF9pcnEpOwo+ICsJZWxzZSBpZiAodHlwZSAmIElSUV9UWVBFX0VER0VfQk9U
SCkKPiArCQlpcnFfc2V0X2hhbmRsZXJfbG9ja2VkKGlycV9nZXRfaXJxX2RhdGEoaXJxKSwgaGFu
ZGxlX2VkZ2VfaXJxKTsKPiArCj4gK291dF91bmxvY2s6Cj4gKwlzcGluX3VubG9ja19pcnFyZXN0
b3JlKCZjaGlwLT5sb2NrLCBmbGFncyk7Cj4gKwo+ICsJcmV0dXJuIHJldDsKPiArfQo+ICsKPiAr
c3RhdGljIGlycXJldHVybl90IGlwcm9jX2dwaW9faXJxX2hhbmRsZXIoaW50IGlycSwgdm9pZCAq
ZGF0YSkKPiArewo+ICsJc3RydWN0IGdwaW9fY2hpcCAqZ2MgPSAoc3RydWN0IGdwaW9fY2hpcCAq
KWRhdGE7Cj4gKwlzdHJ1Y3QgaXByb2NfZ3Bpb19jaGlwICpjaGlwID0gdG9faXByb2NfZ3Bpbyhn
Yyk7Cj4gKwlpbnQgYml0Owo+ICsJdW5zaWduZWQgbG9uZyBpbnRfYml0cyA9IDA7Cj4gKwl1MzIg
aW50X3N0YXR1czsKPiArCj4gKwkvKiBnbyB0aHJvdWdoIHRoZSBlbnRpcmUgR1BJT3MgYW5kIGhh
bmRsZSBhbGwgaW50ZXJydXB0cyAqLwo+ICsJaW50X3N0YXR1cyA9IHJlYWRsX3JlbGF4ZWQoY2hp
cC0+aW50ciArIElQUk9DX0NDQV9JTlRfU1RTKTsKPiArCWlmIChpbnRfc3RhdHVzICYgSVBST0Nf
Q0NBX0lOVF9GX0dQSU9JTlQpIHsKPiArCQl1MzIgZXZlbnQsIGxldmVsOwo+ICsKPiArCQkvKiBH
ZXQgbGV2ZWwgYW5kIGVkZ2UgaW50ZXJydXB0cyAqLwo+ICsJCWV2ZW50ID0KPiArCQkgICAgcmVh
ZGxfcmVsYXhlZChjaGlwLT5iYXNlICsgSVBST0NfR1BJT19DQ0FfSU5UX0VWRU5UX01BU0spOwo+
ICsJCWV2ZW50ICY9IHJlYWRsX3JlbGF4ZWQoY2hpcC0+YmFzZSArIElQUk9DX0dQSU9fQ0NBX0lO
VF9FVkVOVCk7Cj4gKwkJbGV2ZWwgPSByZWFkbF9yZWxheGVkKGNoaXAtPmJhc2UgKyBJUFJPQ19H
UElPX0NDQV9ESU4pOwo+ICsJCWxldmVsIF49IHJlYWRsX3JlbGF4ZWQoY2hpcC0+YmFzZSArIElQ
Uk9DX0dQSU9fQ0NBX0lOVF9MRVZFTCk7Cj4gKwkJbGV2ZWwgJj0KPiArCQkgICAgcmVhZGxfcmVs
YXhlZChjaGlwLT5iYXNlICsgSVBST0NfR1BJT19DQ0FfSU5UX0xFVkVMX01BU0spOwo+ICsJCWlu
dF9iaXRzID0gbGV2ZWwgfCBldmVudDsKPiArCj4gKwkJZm9yX2VhY2hfc2V0X2JpdChiaXQsICZp
bnRfYml0cywgZ2MtPm5ncGlvKQo+ICsJCQlnZW5lcmljX2hhbmRsZV9pcnEoaXJxX2xpbmVhcl9y
ZXZtYXAoZ2MtPmlycS5kb21haW4sIGJpdCkpOwo+ICsJfQo+ICsKPiArCXJldHVybiBpbnRfYml0
cyA/IElSUV9IQU5ETEVEIDogSVJRX05PTkU7Cj4gK30KPiArCj4gK3N0YXRpYyBpbnQgaXByb2Nf
Z3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICt7Cj4gKwlzdHJ1Y3Qg
ZGV2aWNlICpkZXYgPSAmcGRldi0+ZGV2Owo+ICsJc3RydWN0IGRldmljZV9ub2RlICpkbiA9IHBk
ZXYtPmRldi5vZl9ub2RlOwo+ICsJc3RydWN0IGlwcm9jX2dwaW9fY2hpcCAqY2hpcDsKPiArCXUz
MiBudW1fZ3Bpb3M7Cj4gKwlpbnQgaXJxLCByZXQ7Cj4gKwo+ICsJY2hpcCA9IGRldm1fa3phbGxv
YyhkZXYsIHNpemVvZigqY2hpcCksIEdGUF9LRVJORUwpOwo+ICsJaWYgKCFjaGlwKQo+ICsJCXJl
dHVybiAtRU5PTUVNOwo+ICsKPiArCWNoaXAtPmRldiA9IGRldjsKPiArCXBsYXRmb3JtX3NldF9k
cnZkYXRhKHBkZXYsIGNoaXApOwo+ICsJc3Bpbl9sb2NrX2luaXQoJmNoaXAtPmxvY2spOwo+ICsK
PiArCWNoaXAtPmJhc2UgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVzb3VyY2UocGRldiwgMCk7
Cj4gKwlpZiAoSVNfRVJSKGNoaXAtPmJhc2UpKQo+ICsJCXJldHVybiBQVFJfRVJSKGNoaXAtPmJh
c2UpOwo+ICsKPiArCXJldCA9IGJncGlvX2luaXQoJmNoaXAtPmdjLCBkZXYsIDQsCj4gKwkJCSBj
aGlwLT5iYXNlICsgSVBST0NfR1BJT19DQ0FfRElOLAo+ICsJCQkgY2hpcC0+YmFzZSArIElQUk9D
X0dQSU9fQ0NBX0RPVVQsCj4gKwkJCSBOVUxMLAo+ICsJCQkgY2hpcC0+YmFzZSArIElQUk9DX0dQ
SU9fQ0NBX09VVF9FTiwKPiArCQkJIE5VTEwsCj4gKwkJCSAwKTsKPiArCWlmIChyZXQpIHsKPiAr
CQlkZXZfZXJyKGRldiwgInVuYWJsZSB0byBpbml0IEdQSU8gY2hpcFxuIik7Cj4gKwkJcmV0dXJu
IHJldDsKPiArCX0KPiArCj4gKwljaGlwLT5nYy5sYWJlbCA9IGRldl9uYW1lKGRldik7Cj4gKwlp
ZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZG4sICJuZ3Bpb3MiLCAmbnVtX2dwaW9zKSkKPiArCQlj
aGlwLT5nYy5uZ3BpbyA9IG51bV9ncGlvczsKPiArCj4gKwlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJx
KHBkZXYsIDApOwo+ICsJaWYgKGlycSA+IDApIHsKPiArCQlzdHJ1Y3QgZ3Bpb19pcnFfY2hpcCAq
Z2lycTsKPiArCQlzdHJ1Y3QgaXJxX2NoaXAgKmlycWM7Cj4gKwkJdTMyIHZhbDsKPiArCj4gKwkJ
aXJxYyA9ICZjaGlwLT5pcnFjaGlwOwo+ICsJCWlycWMtPm5hbWUgPSBkZXZfbmFtZShkZXYpOwo+
ICsJCWlycWMtPmlycV9hY2sgPSBpcHJvY19ncGlvX2lycV9hY2s7Cj4gKwkJaXJxYy0+aXJxX21h
c2sgPSBpcHJvY19ncGlvX2lycV9tYXNrOwo+ICsJCWlycWMtPmlycV91bm1hc2sgPSBpcHJvY19n
cGlvX2lycV91bm1hc2s7Cj4gKwkJaXJxYy0+aXJxX3NldF90eXBlID0gaXByb2NfZ3Bpb19pcnFf
c2V0X3R5cGU7Cj4gKwo+ICsJCWNoaXAtPmludHIgPSBkZXZtX3BsYXRmb3JtX2lvcmVtYXBfcmVz
b3VyY2UocGRldiwgMSk7Cj4gKwkJaWYgKElTX0VSUihjaGlwLT5pbnRyKSkKPiArCQkJcmV0dXJu
IFBUUl9FUlIoY2hpcC0+aW50cik7Cj4gKwo+ICsJCS8qIEVuYWJsZSBHUElPIGludGVycnVwdHMg
Zm9yIENDQSBHUElPICovCj4gKwkJdmFsID0gcmVhZGxfcmVsYXhlZChjaGlwLT5pbnRyICsgSVBS
T0NfQ0NBX0lOVF9NQVNLKTsKPiArCQl2YWwgfD0gSVBST0NfQ0NBX0lOVF9GX0dQSU9JTlQ7Cj4g
KwkJd3JpdGVsX3JlbGF4ZWQodmFsLCBjaGlwLT5pbnRyICsgSVBST0NfQ0NBX0lOVF9NQVNLKTsK
PiArCj4gKwkJLyoKPiArCQkgKiBEaXJlY3RseSByZXF1ZXN0IHRoZSBpcnEgaGVyZSBpbnN0ZWFk
IG9mIHBhc3NpbmcKPiArCQkgKiBhIGZsb3ctaGFuZGxlciB0byBncGlvY2hpcF9zZXRfY2hhaW5l
ZF9pcnFjaGlwLAo+ICsJCSAqIGJlY2F1c2UgdGhlIGlycSBpcyBzaGFyZWQuCj4gKwkJICovCj4g
KwkJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShkZXYsIGlycSwgaXByb2NfZ3Bpb19pcnFfaGFuZGxl
ciwKPiArCQkJCSAgICAgICBJUlFGX1NIQVJFRCwgY2hpcC0+Z2MubGFiZWwsICZjaGlwLT5nYyk7
Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZXJyKGRldiwgIkZhaWwgdG8gcmVxdWVzdCBJUlEl
ZDogJWRcbiIsIGlycSwgcmV0KTsKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4gKwo+ICsJCWdp
cnEgPSAmY2hpcC0+Z2MuaXJxOwo+ICsJCWdpcnEtPmNoaXAgPSBpcnFjOwo+ICsJCS8qIFRoaXMg
d2lsbCBsZXQgdXMgaGFuZGxlIHRoZSBwYXJlbnQgSVJRIGluIHRoZSBkcml2ZXIgKi8KPiArCQln
aXJxLT5wYXJlbnRfaGFuZGxlciA9IE5VTEw7Cj4gKwkJZ2lycS0+bnVtX3BhcmVudHMgPSAwOwo+
ICsJCWdpcnEtPnBhcmVudHMgPSBOVUxMOwo+ICsJCWdpcnEtPmRlZmF1bHRfdHlwZSA9IElSUV9U
WVBFX05PTkU7Cj4gKwkJZ2lycS0+aGFuZGxlciA9IGhhbmRsZV9zaW1wbGVfaXJxOwo+ICsJfQo+
ICsKPiArCXJldCA9IGRldm1fZ3Bpb2NoaXBfYWRkX2RhdGEoZGV2LCAmY2hpcC0+Z2MsIGNoaXAp
Owo+ICsJaWYgKHJldCkgewo+ICsJCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGFkZCBHUElPIGNo
aXBcbiIpOwo+ICsJCXJldHVybiByZXQ7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiAr
Cj4gK3N0YXRpYyBpbnQgX19leGl0IGlwcm9jX2dwaW9fcmVtb3ZlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCj4gK3sKPiArCXN0cnVjdCBpcHJvY19ncGlvX2NoaXAgKmNoaXA7Cj4gKwo+
ICsJY2hpcCA9IHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpOwo+ICsJaWYgKCFjaGlwKQo+ICsJ
CXJldHVybiAtRU5PREVWOwo+ICsKPiArCWlmIChjaGlwLT5pbnRyKSB7Cj4gKwkJdTMyIHZhbDsK
PiArCj4gKwkJdmFsID0gcmVhZGxfcmVsYXhlZChjaGlwLT5pbnRyICsgSVBST0NfQ0NBX0lOVF9N
QVNLKTsKPiArCQl2YWwgJj0gfklQUk9DX0NDQV9JTlRfRl9HUElPSU5UOwo+ICsJCXdyaXRlbF9y
ZWxheGVkKHZhbCwgY2hpcC0+aW50ciArIElQUk9DX0NDQV9JTlRfTUFTSyk7Cj4gKwl9Cj4gKwo+
ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lk
IGJjbV9pcHJvY19ncGlvX29mX21hdGNoW10gX19pbml0Y29uc3QgPSB7Cj4gKwl7IC5jb21wYXRp
YmxlID0gImJyY20saXByb2MtZ3Bpby1jY2EiIH0sCj4gKwl7fQo+ICt9Owo+ICtNT0RVTEVfREVW
SUNFX1RBQkxFKG9mLCBiY21faXByb2NfZ3Bpb19vZl9tYXRjaCk7Cj4gKwo+ICtzdGF0aWMgc3Ry
dWN0IHBsYXRmb3JtX2RyaXZlciBiY21faXByb2NfZ3Bpb19kcml2ZXIgPSB7Cj4gKwkuZHJpdmVy
ID0gewo+ICsJCS5uYW1lID0gImlwcm9jLXhncy1ncGlvIiwKPiArCQkub3duZXIgPSBUSElTX01P
RFVMRSwKPiArCQkub2ZfbWF0Y2hfdGFibGUgPSBiY21faXByb2NfZ3Bpb19vZl9tYXRjaCwKPiAr
CX0sCj4gKwkucHJvYmUgPSBpcHJvY19ncGlvX3Byb2JlLAo+ICsJLnJlbW92ZSA9IGlwcm9jX2dw
aW9fcmVtb3ZlLAo+ICt9Owo+ICsKPiArbW9kdWxlX3BsYXRmb3JtX2RyaXZlcihiY21faXByb2Nf
Z3Bpb19kcml2ZXIpOwo+ICsKPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJYR1MgSVBST0MgR1BJTyBk
cml2ZXIiKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCB2MiIpOwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
