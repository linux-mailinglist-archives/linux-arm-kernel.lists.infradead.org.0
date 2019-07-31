Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61E5A7C8CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 18:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IVHDvpnOJOKfrRT06UK21fNri8OKsyN0iwy40lJo9B4=; b=RrcLCLzHDXfOss
	6GNqJmjl0sXOeoaijTK3Z+LQRHg8SQB1pWdQgG5PtaGx/E9SeRX4hmOeRDXNm7pDQetiELqdNmhvS
	aNLtxuxd/UmFvMR2hGlsGj+sbI/Vpq/OMJxbYiXCs8oxghyGHMvw+YUgy0b9IaAyLQtTfx8vKEni5
	8BT3LjrCs2p1FSiSfaZgB+APTq/lu8U7UwiIyOEHXsUcOdwrP1O5+v9TySYuhMBrpWwnIAmjxdo+s
	5CDX85aDjVnyafawm75TcZ88VGjRAgK/sCuI1Tfx7rLCIp6Uck21AtkBu039Uc0JljtMHO78xBQHN
	FsnfPJFCXvkHrzEm0JWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrZR-0003iT-R5; Wed, 31 Jul 2019 16:35:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrZJ-0003hB-SG
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 16:35:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id x1so20502516wrr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 09:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=yAjEQyZodCr08YAboEYwoqZJvAo0oHxkikmOr+pozrQ=;
 b=R60oGN5kWvEbHesJPw/XvDID5/dDGBW2ltPHWrTjo/r6I0wREmVwpyI79G4Jw2lkkT
 TsRo/AfXHnLh8J7hJYZieYA0nj2EwU/6MjccGyeAF5trdBquCafCwTMnfmM4sGf1Wakt
 WPjH4MKNZ4ZxRqb6og7hYZVwr52kPui8+vA7oa6kTjahSwMYIHk6hShU11cdNKlRalxT
 3N/M2kuVcY7e69FOX4qQvylYkO5GQhwg4jN7zhl4kHdk9Eb9nqwsJWncERuRyQ7dLBcL
 uGzE70Ydq1bFQ7NJBXHEPvkssNF/nOmDGDFC8X2jv+VWIn3eVhmC2w8KUiH+snu+prUY
 8qzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=yAjEQyZodCr08YAboEYwoqZJvAo0oHxkikmOr+pozrQ=;
 b=HPlfiKr61ink/EW1u69yiTvM72SjhPKZGm9SY1ov/xpLTcKws3vxusPTcFNptItMSG
 ZO46G+fgDASMtjwtHVAw6ukg0TP8UILGioCJJGlTp23mI5EPfbvogBNGpc2YtQEujnn4
 vSw6HZTdwLjYcFw2bnC1FkYc8yCiOKVUJtxk0Ks4lTJaHnp6M+U/xgKsUTL8eTnOJsdm
 fiYE3i0aFGR3IjryCPXylw0ZMnxKzkHIq/6SBeMpT/EDMOo+3bul0UiUw7NVgdZj9CrO
 YE3B1sHm6bHErzKKRlw0fr14FoFPNUojVd5D1hJ/fVaILF5hI4RGdRr5pk1iUAxVCzZj
 wSjA==
X-Gm-Message-State: APjAAAVbx7We3aN6YwuSscfljbC90ejxNtdttkEXKgZo99rG4Pxu8FPC
 M8Pt1AzhVd74unMkHHYQIao=
X-Google-Smtp-Source: APXvYqy99Kyk9xLby2T0bVAd+GOAXz9UpXHXC0+PRE1TqCjVllfYJ7+I3EnWVdrP2U5sxtCh0KLANg==
X-Received: by 2002:adf:de90:: with SMTP id w16mr795512wrl.217.1564590911914; 
 Wed, 31 Jul 2019 09:35:11 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id w23sm73532989wmi.45.2019.07.31.09.35.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 09:35:11 -0700 (PDT)
Date: Wed, 31 Jul 2019 09:35:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: next/master build: 221 builds: 11 failed, 210 passed, 13 errors, 
 1174 warnings (next-20190731)
Message-ID: <20190731163509.GA90028@archlinux-threadripper>
References: <5d41767d.1c69fb81.d6304.4c8c@mx.google.com>
 <20190731112441.GB4369@sirena.org.uk>
 <20190731113522.GA3426@kroah.com>
 <20190731.084824.2244928058443049.davem@davemloft.net>
 <20190731160043.GA15520@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731160043.GA15520@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_093513_925431_3F3802E4 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 kernel-build-reports@lists.linaro.org, netdev@vger.kernel.org,
 willy@infradead.org, broonie@kernel.org, linux-next@vger.kernel.org,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKdWwgMzEsIDIwMTkgYXQgMDY6MDA6NDNQTSArMDIwMCwgR3JlZyBLSCB3cm90ZToK
PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwODo0ODoyNEFNIC0wNzAwLCBEYXZpZCBNaWxsZXIg
d3JvdGU6Cj4gPiBGcm9tOiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRp
b24ub3JnPgo+ID4gRGF0ZTogV2VkLCAzMSBKdWwgMjAxOSAxMzozNToyMiArMDIwMAo+ID4gCj4g
PiA+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEyOjI0OjQxUE0gKzAxMDAsIE1hcmsgQnJvd24g
d3JvdGU6Cj4gPiA+PiBPbiBXZWQsIEp1bCAzMSwgMjAxOSBhdCAwNDowNzo0MUFNIC0wNzAwLCBr
ZXJuZWxjaS5vcmcgYm90IHdyb3RlOgo+ID4gPj4gCj4gPiA+PiBUb2RheSdzIC1uZXh0IGZhaWxz
IHRvIGJ1aWxkIGFuIEFSTSBhbGxtb2Rjb25maWcgZHVlIHRvOgo+ID4gPj4gCj4gPiA+PiA+IGFs
bG1vZGNvbmZpZyAoYXJtLCBnY2MtOCkg4oCVIEZBSUwsIDEgZXJyb3IsIDQwIHdhcm5pbmdzLCAw
IHNlY3Rpb24gbWlzbWF0Y2hlcwo+ID4gPj4gPiAKPiA+ID4+ID4gRXJyb3JzOgo+ID4gPj4gPiAg
ICAgZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmg6MTExOjM2OiBlcnJvcjogaW1wbGljaXQg
ZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24gJ3dyaXRlcSc7IGRpZCB5b3UgbWVhbiAnd3JpdGVsJz8g
Wy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCj4gPiA+PiAKPiA+ID4+IGFz
IGEgcmVzdWx0IG9mIHRoZSBjaGFuZ2VzIHRoYXQgaW50cm9kdWNlZDoKPiA+ID4+IAo+ID4gPj4g
V0FSTklORzogdW5tZXQgZGlyZWN0IGRlcGVuZGVuY2llcyBkZXRlY3RlZCBmb3IgTURJT19PQ1RF
T04KPiA+ID4+ICAgRGVwZW5kcyBvbiBbbl06IE5FVERFVklDRVMgWz15XSAmJiBNRElPX0RFVklD
RSBbPW1dICYmIE1ESU9fQlVTIFs9bV0gJiYgNjRCSVQgJiYgSEFTX0lPTUVNIFs9eV0gJiYgT0Zf
TURJTyBbPW1dCj4gPiA+PiAgIFNlbGVjdGVkIGJ5IFttXToKPiA+ID4+ICAgLSBPQ1RFT05fRVRI
RVJORVQgWz1tXSAmJiBTVEFHSU5HIFs9eV0gJiYgKENBVklVTV9PQ1RFT05fU09DICYmIE5FVERF
VklDRVMgWz15XSB8fCBDT01QSUxFX1RFU1QgWz15XSkKPiA+ID4+IAo+ID4gPj4gd2hpY2ggaXMg
dHJpZ2dlcmVkIGJ5IHRoZSBzdGFnaW5nIE9DVEVPTl9FVEhFUk5FVCBkcml2ZXIgd2hpY2ggbWlz
c2VzIGEKPiA+ID4+IDY0QklUIGRlcGVuZGVuY3kgYnV0IGFkZGVkIENPTVBJTEVfVEVTVCBpbiAx
NzFhOWJhZTY4YzcyZjIKPiA+ID4+IChzdGFnaW5nL29jdGVvbjogQWxsb3cgdGVzdCBidWlsZCBv
biAhTUlQUykuCj4gPiA+IAo+ID4gPiBBIHBhdGNoIHdhcyBwb3N0ZWQgZm9yIHRoaXMsIGJ1dCBp
dCBuZWVkcyB0byBnbyB0aHJvdWdoIHRoZSBuZXRkZXYgdHJlZQo+ID4gPiBhcyB0aGF0J3Mgd2hl
cmUgdGhlIG9mZmVuZGluZyBwYXRjaGVzIGFyZSBjb21pbmcgZnJvbS4KPiA+IAo+ID4gSSBkaWRu
J3QgY2F0Y2ggdGhhdCwgd2FzIG5ldGRldiBDQzonZD8KPiAKPiBOb3BlLCBqdXN0IHlvdSA6KAo+
IAo+IEknbGwgcmVzZW5kIGl0IG5vdyBhbmQgY2M6IG5ldGRldi4KPiAKPiB0aGFua3MsCj4gCj4g
Z3JlZyBrLWgKCklmIGl0IGlzIHRoaXMgcGF0Y2g6CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9u
ZXRkZXYvMjAxOTA3MzExNjAyMTkuR0EyMTE0QGtyb2FoLmNvbS8KCkl0IGRvZXNuJ3QgcmVzb2x2
ZSB0aGF0IGlzc3VlLiBJIGFwcGxpZWQgaXQgYW5kIHRlc3RlZCBvbiBuZXh0LTIwMTkwNzMxLgoK
JCBtYWtlIC1qJChucHJvYykgLXMgQVJDSD1hcm0gQ1JPU1NfQ09NUElMRT1hcm0tbGludXgtZ251
ZWFiaS0gTz1vdXQgZGlzdGNsZWFuIGFsbHllc2NvbmZpZyBkcml2ZXJzL25ldC9waHkvCgpXQVJO
SU5HOiB1bm1ldCBkaXJlY3QgZGVwZW5kZW5jaWVzIGRldGVjdGVkIGZvciBNRElPX09DVEVPTgog
IERlcGVuZHMgb24gW25dOiBORVRERVZJQ0VTIFs9eV0gJiYgTURJT19ERVZJQ0UgWz15XSAmJiBN
RElPX0JVUyBbPXldICYmIDY0QklUICYmIEhBU19JT01FTSBbPXldICYmIE9GX01ESU8gWz15XQog
IFNlbGVjdGVkIGJ5IFt5XToKICAtIE9DVEVPTl9FVEhFUk5FVCBbPXldICYmIFNUQUdJTkcgWz15
XSAmJiAoQ0FWSVVNX09DVEVPTl9TT0MgfHwgQ09NUElMRV9URVNUIFs9eV0pICYmIE5FVERFVklD
RVMgWz15XQouLi9kcml2ZXJzL25ldC9waHkvbWRpby1vY3Rlb24uYzogSW4gZnVuY3Rpb24gJ29j
dGVvbl9tZGlvYnVzX3Byb2JlJzoKLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6NDg6
Mzogd2FybmluZzogY2FzdCBmcm9tIHBvaW50ZXIgdG8gaW50ZWdlciBvZiBkaWZmZXJlbnQgc2l6
ZSBbLVdwb2ludGVyLXRvLWludC1jYXN0XQogICA0OCB8ICAgKHU2NClkZXZtX2lvcmVtYXAoJnBk
ZXYtPmRldiwgbWRpb19waHlzLCByZWdzaXplKTsKICAgICAgfCAgIF4KSW4gZmlsZSBpbmNsdWRl
ZCBmcm9tIC4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjE0OgouLi9kcml2ZXJzL25l
dC9waHkvbWRpby1jYXZpdW0uaDoxMTE6MzY6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBv
ZiBmdW5jdGlvbiAnd3JpdGVxJzsgZGlkIHlvdSBtZWFuICd3cml0ZWInPyBbLVdlcnJvcj1pbXBs
aWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KICAxMTEgfCAjZGVmaW5lIG9jdF9tZGlvX3dyaXRl
cSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikKICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fgouLi9kcml2ZXJzL25ldC9waHkvbWRpby1v
Y3Rlb24uYzo1NjoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ29jdF9tZGlvX3dyaXRl
cScKICAgNTYgfCAgb2N0X21kaW9fd3JpdGVxKHNtaV9lbi51NjQsIGJ1cy0+cmVnaXN0ZXJfYmFz
ZSArIFNNSV9FTik7CiAgICAgIHwgIF5+fn5+fn5+fn5+fn5+fgouLi9kcml2ZXJzL25ldC9waHkv
bWRpby1jYXZpdW0uaDoxMTE6NDg6IHdhcm5pbmc6IGNhc3QgdG8gcG9pbnRlciBmcm9tIGludGVn
ZXIgb2YgZGlmZmVyZW50IHNpemUgWy1XaW50LXRvLXBvaW50ZXItY2FzdF0KICAxMTEgfCAjZGVm
aW5lIG9jdF9tZGlvX3dyaXRlcSh2YWwsIGFkZHIpIHdyaXRlcSh2YWwsICh2b2lkICopYWRkcikK
ICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4K
Li4vZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmM6NTY6Mjogbm90ZTogaW4gZXhwYW5zaW9u
IG9mIG1hY3JvICdvY3RfbWRpb193cml0ZXEnCiAgIDU2IHwgIG9jdF9tZGlvX3dyaXRlcShzbWlf
ZW4udTY0LCBidXMtPnJlZ2lzdGVyX2Jhc2UgKyBTTUlfRU4pOwogICAgICB8ICBefn5+fn5+fn5+
fn5+fn4KLi4vZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmg6MTExOjQ4OiB3YXJuaW5nOiBj
YXN0IHRvIHBvaW50ZXIgZnJvbSBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXplIFstV2ludC10by1w
b2ludGVyLWNhc3RdCiAgMTExIHwgI2RlZmluZSBvY3RfbWRpb193cml0ZXEodmFsLCBhZGRyKSB3
cml0ZXEodmFsLCAodm9pZCAqKWFkZHIpCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBeCi4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5j
Ojc3OjI6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyAnb2N0X21kaW9fd3JpdGVxJwogICA3
NyB8ICBvY3RfbWRpb193cml0ZXEoc21pX2VuLnU2NCwgYnVzLT5yZWdpc3Rlcl9iYXNlICsgU01J
X0VOKTsKICAgICAgfCAgXn5+fn5+fn5+fn5+fn5+Ci4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9j
dGVvbi5jOiBJbiBmdW5jdGlvbiAnb2N0ZW9uX21kaW9idXNfcmVtb3ZlJzoKLi4vZHJpdmVycy9u
ZXQvcGh5L21kaW8tY2F2aXVtLmg6MTExOjQ4OiB3YXJuaW5nOiBjYXN0IHRvIHBvaW50ZXIgZnJv
bSBpbnRlZ2VyIG9mIGRpZmZlcmVudCBzaXplIFstV2ludC10by1wb2ludGVyLWNhc3RdCiAgMTEx
IHwgI2RlZmluZSBvY3RfbWRpb193cml0ZXEodmFsLCBhZGRyKSB3cml0ZXEodmFsLCAodm9pZCAq
KWFkZHIpCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBeCi4uL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jOjkxOjI6IG5vdGU6IGluIGV4
cGFuc2lvbiBvZiBtYWNybyAnb2N0X21kaW9fd3JpdGVxJwogICA5MSB8ICBvY3RfbWRpb193cml0
ZXEoc21pX2VuLnU2NCwgYnVzLT5yZWdpc3Rlcl9iYXNlICsgU01JX0VOKTsKICAgICAgfCAgXn5+
fn5+fn5+fn5+fn5+CmNjMTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwpt
YWtlWzNdOiAqKiogWy4uL3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6Mjc0OiBkcml2ZXJzL25ldC9w
aHkvbWRpby1vY3Rlb24ub10gRXJyb3IgMQptYWtlWzNdOiAqKiogV2FpdGluZyBmb3IgdW5maW5p
c2hlZCBqb2JzLi4uLgptYWtlWzJdOiAqKiogWy4uL01ha2VmaWxlOjE3ODA6IGRyaXZlcnMvbmV0
L3BoeS9dIEVycm9yIDIKbWFrZVsxXTogKioqIFsvaG9tZS9uYXRoYW4vY2JsL2xpbnV4LW5leHQv
TWFrZWZpbGU6MzMwOiBfX2J1aWxkX29uZV9ieV9vbmVdIEVycm9yIDIKbWFrZTogKioqIFtNYWtl
ZmlsZToxNzk6IHN1Yi1tYWtlXSBFcnJvciAyCgpUaGlzIGlzIHRoZSBkaWZmIHRoYXQgSSBjYW1l
IHVwIHdpdGggdG8gc29sdmUgdGhlIGVycm9ycyBwbHVzIHRoZSBjYXN0aW5nCndhcm5pbmdzIGJ1
dCBpdCBkb2Vzbid0IGZlZWwgcHJvcGVyIHRvIG1lLiBJZiB5b3UgYWxsIGZlZWwgb3RoZXJ3aXNl
LCBJCmNhbiBkcmFmdCB1cCBhIGZvcm1hbCBjb21taXQgbWVzc2FnZS4KCmRpZmYgLS1naXQgYS9k
cml2ZXJzL25ldC9waHkvS2NvbmZpZyBiL2RyaXZlcnMvbmV0L3BoeS9LY29uZmlnCmluZGV4IDIw
ZjE0YzVmYmI3ZS4uZWQyZWRmNGI1YjBlIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9waHkvS2Nv
bmZpZworKysgYi9kcml2ZXJzL25ldC9waHkvS2NvbmZpZwpAQCAtMTU5LDcgKzE1OSw3IEBAIGNv
bmZpZyBNRElPX01TQ0NfTUlJTQogCiBjb25maWcgTURJT19PQ1RFT04KIAl0cmlzdGF0ZSAiT2N0
ZW9uIGFuZCBzb21lIFRodW5kZXJYIFNPQ3MgTURJTyBidXNlcyIKLQlkZXBlbmRzIG9uIDY0QklU
CisJZGVwZW5kcyBvbiA2NEJJVCB8fCBDT01QSUxFX1RFU1QKIAlkZXBlbmRzIG9uIEhBU19JT01F
TSAmJiBPRl9NRElPCiAJc2VsZWN0IE1ESU9fQ0FWSVVNCiAJaGVscApkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmggYi9kcml2ZXJzL25ldC9waHkvbWRpby1jYXZpdW0u
aAppbmRleCBlZDVmOWJiNTQ0OGQuLjRiNzFiNzMzZWRiNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9u
ZXQvcGh5L21kaW8tY2F2aXVtLmgKKysrIGIvZHJpdmVycy9uZXQvcGh5L21kaW8tY2F2aXVtLmgK
QEAgLTEwOCw4ICsxMDgsMTAgQEAgc3RhdGljIGlubGluZSB1NjQgb2N0X21kaW9fcmVhZHEodTY0
IGFkZHIpCiAJcmV0dXJuIGN2bXhfcmVhZF9jc3IoYWRkcik7CiB9CiAjZWxzZQotI2RlZmluZSBv
Y3RfbWRpb193cml0ZXEodmFsLCBhZGRyKQl3cml0ZXEodmFsLCAodm9pZCAqKWFkZHIpCi0jZGVm
aW5lIG9jdF9tZGlvX3JlYWRxKGFkZHIpCQlyZWFkcSgodm9pZCAqKWFkZHIpCisjaW5jbHVkZSA8
bGludXgvaW8tNjQtbm9uYXRvbWljLWxvLWhpLmg+CisKKyNkZWZpbmUgb2N0X21kaW9fd3JpdGVx
KHZhbCwgYWRkcikJd3JpdGVxKHZhbCwgKHZvaWQgKikodWludHB0cl90KWFkZHIpCisjZGVmaW5l
IG9jdF9tZGlvX3JlYWRxKGFkZHIpCQlyZWFkcSgodm9pZCAqKSh1aW50cHRyX3QpYWRkcikKICNl
bmRpZgogCiBpbnQgY2F2aXVtX21kaW9idXNfcmVhZChzdHJ1Y3QgbWlpX2J1cyAqYnVzLCBpbnQg
cGh5X2lkLCBpbnQgcmVnbnVtKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9j
dGVvbi5jIGIvZHJpdmVycy9uZXQvcGh5L21kaW8tb2N0ZW9uLmMKaW5kZXggODMyNzM4MmFhNTY4
Li5hYjBkOGFiNTg4ZTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5j
CisrKyBiL2RyaXZlcnMvbmV0L3BoeS9tZGlvLW9jdGVvbi5jCkBAIC00NSw3ICs0NSw3IEBAIHN0
YXRpYyBpbnQgb2N0ZW9uX21kaW9idXNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
dikKIAl9CiAKIAlidXMtPnJlZ2lzdGVyX2Jhc2UgPQotCQkodTY0KWRldm1faW9yZW1hcCgmcGRl
di0+ZGV2LCBtZGlvX3BoeXMsIHJlZ3NpemUpOworCQkodTY0KSh1aW50cHRyX3QpZGV2bV9pb3Jl
bWFwKCZwZGV2LT5kZXYsIG1kaW9fcGh5cywgcmVnc2l6ZSk7CiAJaWYgKCFidXMtPnJlZ2lzdGVy
X2Jhc2UpIHsKIAkJZGV2X2VycigmcGRldi0+ZGV2LCAiZGV2X2lvcmVtYXAgZmFpbGVkXG4iKTsK
IAkJcmV0dXJuIC1FTk9NRU07CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
