Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991CF841C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIYuKNApY5asdHJp0E3p3k2YjNpwOP27rDT8/FFUhYc=; b=tUVPh7115MMU4X
	yzN9/WtoZN+taoIJD7oK9urVy5GRxBIk1OfdyDmRIhfg/mLys5LDNhC1ny5aATlal+snv36dto5+f
	6J60MeDgHVWXCN/q2Tjing6V2jmmAwXZdFHzZb/hC8nC9OIUw9fD9ggM/z2phOWyDvm/s9s1nwsEV
	+aJIdQyN9x4EG/YYzhiJTDIJ8uieS7FG4Mi46NFYrTCGTRyodF6AuFd47kgxJE2WJImn9hsZ6ui5U
	DCdVdOGwGUEb0o/JYZzQFqNUgzKXuvgXaszcEtXCIzseUiM7R9A8AYGh15PDfQc+7AbpwgCAoZFYQ
	m0yp8gviS2C1xzSldAZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB22-00020y-4l; Wed, 07 Aug 2019 01:46:26 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvB1p-000205-Fc
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:46:15 +0000
Received: by mail-qk1-x742.google.com with SMTP id s145so64595306qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 18:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Wak8i9w6OdTRtUHqAOC/FqYb378e6DnxD7J6RLwSEUg=;
 b=EmTpCuI6DV/r0JoivFYBORLewXyG7wQLx21/h+hNHHsnynGNqExf1mPCB9IABaQel+
 XSn2AHfcUWLL5pxz9MVNDNJMckEO+K88WjLZZUwocO8EWp/vC6srPSZR8Bk40iCD/sN1
 OadKoIfBJx6Pqe8jZpzJqLY97pk+ZVcmjRBLVcTV9nmJctJ5ma0gRbMks2hrZbvCAVGJ
 xEeNsW/eRdw/HJWzIHZy99TlMDtf6ZiXOGU7lwVjDWP9l58LWrUrq0RngcQX0kbpoU6L
 8+u0x8qiD23Blp6wfRGMZG/VXmZPUzPAeuAbbrOzF66WGm9arDZTRtHyA15bUJL1L/Q6
 h7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=Wak8i9w6OdTRtUHqAOC/FqYb378e6DnxD7J6RLwSEUg=;
 b=M1iE/9d4kcrRb05Qd7bJz1HUR27DfMvMP14huH4iys12mrPeidtfc6csZQJxZAQmgp
 uclFeX6XjbY9zlqHyLwkHcCO+jCZxaBO3I1wnQ1MiYU1kfFqz9Q26guQaNukuKdLrUUr
 XueB4BJ+NRmcWXKSFYu8lwenwdXQEubC7BGjPsxwO0BPWY26na0Ed5FeSEMofL+DEfa1
 l7TtvL3tRHsJ3ko6vOC1GRCrj5/PaNeyrny7OMza+7waNjtxDW3EZVQUMhIZOkmXK0Ur
 yDBGSdqRXykh0+OE91WGCRJ0SmXOeaA+y5g/FzRdUJkPCcBAan5CA/7F/HtjwIBmVZWV
 4Tkw==
X-Gm-Message-State: APjAAAUBiFP13b8yJMfTDyW+NhE5Gbk735pq8xpuIVOSq5RctsRf3kn9
 B7KZkEGJkyc7AKua6ifOAMcFLA==
X-Google-Smtp-Source: APXvYqyC6LA+bqlva3FUGwWlV3SdgLm8b4r0Krlol+e/Qtpe8z+9hnyRtScFTS4qnBl9M41IYjG9iQ==
X-Received: by 2002:a37:490c:: with SMTP id w12mr6156780qka.327.1565142372411; 
 Tue, 06 Aug 2019 18:46:12 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net.
 [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id u18sm36912167qkj.98.2019.08.06.18.46.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 18:46:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: "of/platform: Pause/resume sync state during init and
 of_platform_populate()" with a warning on arm64
From: Qian Cai <cai@lca.pw>
In-Reply-To: <CAGETcx_TYxgohR7C5SRRbSmfKNhS90i64KjtA38N19g_Kz3euA@mail.gmail.com>
Date: Tue, 6 Aug 2019 21:46:10 -0400
Message-Id: <6326D2D1-8641-48D1-BDD5-4F4B8BADB286@lca.pw>
References: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
 <CAGETcx_TYxgohR7C5SRRbSmfKNhS90i64KjtA38N19g_Kz3euA@mail.gmail.com>
To: Saravana Kannan <saravanak@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_184613_521743_14B9EA43 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyA2LCAyMDE5LCBhdCA5OjIyIFBNLCBTYXJhdmFuYSBLYW5uYW4gPHNhcmF2YW5h
a0Bnb29nbGUuY29tPiB3cm90ZToKPiAKPiBPbiBUdWUsIEF1ZyA2LCAyMDE5IGF0IDU6NDYgUE0g
UWlhbiBDYWkgPGNhaUBsY2EucHc+IHdyb3RlOgo+PiAKPj4gSXQgbG9va3MgbGlrZSB0aGUgbGlu
dXgtbmV4dCBjb21taXQg4oCcb2YvcGxhdGZvcm06IFBhdXNlL3Jlc3VtZSBzeW5jIHN0YXRlIGR1
cmluZyBpbml0IGFuZCBvZl9wbGF0Zm9ybV9wb3B1bGF0ZSgp4oCdIFsxXQo+PiBJbnRyb2R1Y2Vk
IGEgd2FybmluZyB3aGlsZSBib290aW5nIGFybTY0Lgo+PiAKPj4gWzFdIGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2xrbWwvMjAxOTA3MzEyMjE3MjEuMTg3NzEzLTYtc2FyYXZhbmFrQGdvb2dsZS5j
b20vCj4+IAo+PiBbICAgOTMuNDQ5MzAwXVsgICAgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYz
LjQuYXV0bzogaWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdCAoZmVhdHVyZXMgMHgwMDAwMTcwZCkKPj4g
WyAgIDkzLjQ2NDg3M11bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My40LmF1dG86IGFs
bG9jYXRlZCA1MjQyODggZW50cmllcyBmb3IgY21kcQo+PiBbICAgOTMuNDg1NDgxXVsgICAgVDFd
IGFybS1zbW11LXYzIGFybS1zbW11LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVz
IGZvciBldnRxCj4+IFsgICA5My40OTYzMjBdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJtLXNtbXUt
djMuNS5hdXRvOiBvcHRpb24gbWFzayAweDIKPj4gWyAgIDkzLjUwMjkxN11bICAgIFQxXSBhcm0t
c21tdS12MyBhcm0tc21tdS12My41LmF1dG86IGlhcyA0NC1iaXQsIG9hcyA0NC1iaXQgKGZlYXR1
cmVzIDB4MDAwMDE3MGQpCj4+IFsgICA5My42MjE4MThdWyAgICBUMV0gYXJtLXNtbXUtdjMgYXJt
LXNtbXUtdjMuNS5hdXRvOiBhbGxvY2F0ZWQgNTI0Mjg4IGVudHJpZXMgZm9yIGNtZHEKPj4gWyAg
IDkzLjY0MzAwMF1bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My41LmF1dG86IGFsbG9j
YXRlZCA1MjQyODggZW50cmllcyBmb3IgZXZ0cQo+PiBbICAgOTQuNTE5NDQ1XVsgICAgVDFdIGxp
YnBoeTogRml4ZWQgTURJTyBCdXM6IHByb2JlZAo+PiBbICAgOTQuNTI0NjQ5XVsgICAgVDFdIEVG
SSBWYXJpYWJsZXMgRmFjaWxpdHkgdjAuMDggMjAwNC1NYXktMTcKPj4gWyAgIDk0LjYwMTE2Nl1b
ICAgIFQxXSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE3Cj4+IFsgICA5NC43NjYw
MDhdWyAgICBUMV0genN3YXA6IGxvYWRlZCB1c2luZyBwb29sIGx6by96YnVkCj4+IFsgICA5NC43
NzQ3NDVdWyAgICBUMV0ga21lbWxlYWs6IEtlcm5lbCBtZW1vcnkgbGVhayBkZXRlY3RvciBpbml0
aWFsaXplZCAobWVtcG9vbCBzaXplOiAxNjM4NCkKPj4gWyAgIDk0Ljc3NDc1Nl1bIFQxNjk5XSBr
bWVtbGVhazogQXV0b21hdGljIG1lbW9yeSBzY2FubmluZyB0aHJlYWQgc3RhcnRlZAo+PiBbICAg
OTQuODEyMzM4XVsgVDEzNjhdIHBjaWVwb3J0IDAwMDA6MGY6MDAuMDogQWRkaW5nIHRvIGlvbW11
IGdyb3VwIDAKPj4gWyAgIDk0Ljk4NDQ2Nl1bICAgIFQxXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJl
IF0tLS0tLS0tLS0tLS0KPj4gWyAgIDk0Ljk4OTgyN11bICAgIFQxXSBVbm1hdGNoZWQgc3luY19z
dGF0ZSBwYXVzZS9yZXN1bWUhCj4+IFsgICA5NC45ODk4OTRdWyAgICBUMV0gV0FSTklORzogQ1BV
OiAyNSBQSUQ6IDEgYXQgZHJpdmVycy9iYXNlL2NvcmUuYzo2OTEgZGV2aWNlX2xpbmtzX3N1cHBs
aWVyX3N5bmNfc3RhdGVfcmVzdW1lKzB4MTAwLzB4MTI4Cj4+IFsgICA5NS4wMDYwNjJdWyAgICBU
MV0gTW9kdWxlcyBsaW5rZWQgaW46Cj4+IFsgICA5NS4wMDk4MTVdWyAgICBUMV0gQ1BVOiAyNSBQ
SUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUuMy4wLXJjMy1uZXh0LTIwMTkwODA2
KyAjMTEKPj4gWyAgIDk1LjAxODE2MV1bICAgIFQxXSBIYXJkd2FyZSBuYW1lOiBIUEUgQXBvbGxv
IDcwICAgICAgICAgICAgIC9DMDFfQVBBQ0hFX01CICAgICAgICAgLCBCSU9TIEw1MF81LjEzXzEu
MTEgMDYvMTgvMjAxOQo+PiBbICAgOTUuMDI4NTkzXVsgICAgVDFdIHBzdGF0ZTogNjA0MDAwMDkg
KG5aQ3YgZGFpZiArUEFOIC1VQU8pCj4+IFsgICA5NS4wMzQwNzddWyAgICBUMV0gcGMgOiBkZXZp
Y2VfbGlua3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPj4gWyAgIDk1
LjA0MTEyNF1bICAgIFQxXSBsciA6IGRldmljZV9saW5rc19zdXBwbGllcl9zeW5jX3N0YXRlX3Jl
c3VtZSsweDEwMC8weDEyOAo+PiBbICAgOTUuMDQ4MTY3XVsgICAgVDFdIHNwIDogMzRmZjgwMDgw
NmU2ZmJjMAo+PiBbICAgOTUuMDUyMTcyXVsgICAgVDFdIHgyOTogMzRmZjgwMDgwNmU2ZmMwMCB4
Mjg6IDAwMDAwMDAwMDAwMDAwMDAKPj4gWyAgIDk1LjA1ODE3N11bICAgIFQxXSB4Mjc6IDAwMDAw
MDAwMDAwMDAwMDAgeDI2OiAwMDAwMDAwMDAwMDAwMDAwCj4+IFsgICA5NS4wNjQxODFdWyAgICBU
MV0geDI1OiAwMDAwMDAwMDAwMDAwMDM4IHgyNDogMDAwMDAwMDAwMDAwMDAwMAo+PiBbICAgOTUu
MDcwMTg1XVsgICAgVDFdIHgyMzogMDAwMDAwMDAwMDAwMDAwMCB4MjI6IDAwMDAwMDAwMDAwMDAw
MTkKPj4gWyAgIDk1LjA3NjE4OV1bICAgIFQxXSB4MjE6IDAwMDAwMDAwMDAwMDAwMDAgeDIwOiBm
OWZmODA4YjgwNGU2YzUwCj4+IFsgICA5NS4wODIxOTNdWyAgICBUMV0geDE5OiBmZmZmMTAwMDE0
YTZlNjAwIHgxODogMDAwMDAwMDAwMDAwMDA0MAo+PiBbICAgOTUuMDg4MTk3XVsgICAgVDFdIHgx
NzogMDAwMDAwMDAwMDAwMDAwMCB4MTY6IDg2ZmY4MDA5OWQ1ODFiNTAKPj4gWyAgIDk1LjA5NDIw
MV1bICAgIFQxXSB4MTU6IDAwMDAwMDAwMDAwMDAwMDAgeDE0OiBmZmZmMTAwMDEwMDg2ZDFjCj4+
IFsgICA5NS4xMDAyMDVdWyAgICBUMV0geDEzOiBmZmZmMTAwMDEwOWQ4Njg4IHgxMjogZmZmZmZm
ZmZmZmZmZmZmZgo+PiBbICAgOTUuMTA2MjA5XVsgICAgVDFdIHgxMTogMDAwMDAwMDAwMDAwMDBm
OSB4MTA6IGZmZmYwODA4YjgwNGU2YzYKPj4gWyAgIDk1LjExMjIxM11bICAgIFQxXSB4OSA6IDRi
NzFhZDUyMmM4NTFkMDAgeDggOiA0YjcxYWQ1MjJjODUxZDAwCj4+IFsgICA5NS4xMTgyMTddWyAg
ICBUMV0geDcgOiA2MTcwMjA2NTc0NjE3NDczIHg2IDogZmZmZjEwMDAxNDA3Njk3Mgo+PiBbICAg
OTUuMTI0MjIxXVsgICAgVDFdIHg1IDogMzRmZjgwMDgwNmU2ZjhmMCB4NCA6IDAwMDAwMDAwMDAw
MDAwMGYKPj4gWyAgIDk1LjEzMDIyNV1bICAgIFQxXSB4MyA6IGZmZmYxMDAwMTAxYmZhNWMgeDIg
OiAwMDAwMDAwMDAwMDAwMDAxCj4+IFsgICA5NS4xMzYyMjldWyAgICBUMV0geDEgOiAwMDAwMDAw
MDAwMDAwMDAxIHgwIDogMDAwMDAwMDAwMDAwMDAyMgo+PiBbICAgOTUuMTQyMjMzXVsgICAgVDFd
IENhbGwgdHJhY2U6Cj4+IFsgICA5NS4xNDUzNzRdWyAgICBUMV0gIGRldmljZV9saW5rc19zdXBw
bGllcl9zeW5jX3N0YXRlX3Jlc3VtZSsweDEwMC8weDEyOAo+PiBbICAgOTUuMTUyMDc0XVsgICAg
VDFdICBvZl9wbGF0Zm9ybV9zeW5jX3N0YXRlX2luaXQrMHgxMC8weDFjCj4+IFsgICA5NS4xNTc1
NTddWyAgICBUMV0gIGRvX29uZV9pbml0Y2FsbCsweDJmOC8weDYwMAo+PiBbICAgOTUuMTYyMTcy
XVsgICAgVDFdICBkb19pbml0Y2FsbF9sZXZlbCsweDM3Yy8weDNmYwo+PiBbICAgOTUuMTY2OTU5
XVsgICAgVDFdICBkb19iYXNpY19zZXR1cCsweDM0LzB4NGMKPj4gWyAgIDk1LjE3MTMxM11bICAg
IFQxXSAga2VybmVsX2luaXRfZnJlZWFibGUrMHgxODgvMHgyNGMKPj4gWyAgIDk1LjE3NjM2M11b
ICAgIFQxXSAga2VybmVsX2luaXQrMHgxOC8weDMzNAo+PiBbICAgOTUuMTgwNTQzXVsgICAgVDFd
ICByZXRfZnJvbV9mb3JrKzB4MTAvMHgxOAo+PiBbICAgOTUuMTg0ODA5XVsgICAgVDFdIC0tLVsg
ZW5kIHRyYWNlIGE5ZWE2OGM5MDI1NDBmZTUgXS0tLQo+PiBbICAgOTUuMjY5MDg1XVsgICAgVDFd
IEZyZWVpbmcgdW51c2VkIGtlcm5lbCBtZW1vcnk6IDI4NjcySwo+PiBbICAxMDEuMDY5ODYwXVsg
ICAgVDFdIENoZWNrZWQgVytYIG1hcHBpbmdzOiBwYXNzZWQsIG5vIFcrWCBwYWdlcyBmb3VuZAo+
PiBbICAxMDEuMDc2MjY1XVsgICAgVDFdIFJ1biAvaW5pdCBhcyBpbml0IHByb2Nlc3MKPj4gWyAg
MTAxLjE4NjM1OV1bICAgIFQxXSBzeXN0ZW1kWzFdOiBTeXN0ZW0gdGltZSBiZWZvcmUgYnVpbGQg
dGltZSwgYWR2YW5jaW5nIGNsb2NrLgo+IAo+IAo+IEkgdGVzdGVkIGl0IGFnYWluIG9uIG15IGRl
dmljZSAob24gYW4gb2xkZXIga2VybmVsKSBhbmQgSSBkb24ndCBzZWUKPiB0aGlzIHdhcm5pbmcu
IElzIHRoaXMgb24gYW4gQVJNNjQgdGFyZ2V0IHdpdGhvdXQgYSBwb3B1bGF0ZWQgRFQ/CgpQcm9i
YWJseSwgL3N5cy9maXJtd2FyZS9kZXZpY2V0cmVlIGlzIGFsbCBlbXB0eS4KCj4gVGhhdCdzIHRo
ZSBvbmx5IHRoaW5nIEkgY2FuIHNlZSB0aGF0IGNvdWxkIGNhdXNlIHRoaXMgd2FybmluZy4KPiAK
PiBUaGlzIGlzIGxpdGVyYWxseSB0aGUgY29kZSB3aXRoIHRoZSBtYXRjaGluZyBwYXVzZS9yZXN1
bWUuIEkgY2FuJ3QKPiB0aGluayBvZiBhbnkgb3RoZXIgd2F5IHRoZSBwYXVzZS9yZXN1bWUgY291
bGQgaGF2ZSBlbmRlZCB1cCBub3QKPiBtYXRjaGluZy4KPiAKPiBzdGF0aWMgaW50IF9faW5pdCBv
Zl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlX2luaXQodm9pZCkKPiB7Cj4gICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbm9kZTsKPiAKPiAgICAgICAgaWYgKCFvZl9oYXZlX3BvcHVsYXRlZF9k
dCgpKQo+ICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwo+IAo+ICAgICAgICBwbGF0Zm9y
bV9idXNfdHlwZS5hZGRfbGlua3MgPSBvZl9saW5rX3RvX3N1cHBsaWVyczsKPiAgICAgICAgZGV2
aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcGF1c2UoKTsgPD09PT09PT09PT09IFBBVVNF
Cj4gICAgICAgIC8qCj4gICAgICAgICAqIEhhbmRsZSBjZXJ0YWluIGNvbXBhdGlibGVzIGV4cGxp
Y2l0bHksIHNpbmNlIHdlIGRvbid0IHdhbnQgdG8gY3JlYXRlCj4gICAgICAgICAqIHBsYXRmb3Jt
X2RldmljZXMgZm9yIGV2ZXJ5IG5vZGUgaW4gL3Jlc2VydmVkLW1lbW9yeSB3aXRoIGEKPiAgICAg
ICAgICogImNvbXBhdGlibGUiLAo+ICAgICAgICAgKi8KPiAgICAgICAgZm9yX2VhY2hfbWF0Y2hp
bmdfbm9kZShub2RlLCByZXNlcnZlZF9tZW1fbWF0Y2hlcykKPiAgICAgICAgICAgICAgICBvZl9w
bGF0Zm9ybV9kZXZpY2VfY3JlYXRlKG5vZGUsIE5VTEwsIE5VTEwpOwo+IAo+ICAgICAgICBub2Rl
ID0gb2ZfZmluZF9ub2RlX2J5X3BhdGgoIi9maXJtd2FyZSIpOwo+ICAgICAgICBpZiAobm9kZSkg
ewo+ICAgICAgICAgICAgICAgIG9mX3BsYXRmb3JtX3BvcHVsYXRlKG5vZGUsIE5VTEwsIE5VTEws
IE5VTEwpOwo+ICAgICAgICAgICAgICAgIG9mX25vZGVfcHV0KG5vZGUpOwo+ICAgICAgICB9Cj4g
Cj4gICAgICAgIC8qIFBvcHVsYXRlIGV2ZXJ5dGhpbmcgZWxzZS4gKi8KPiAgICAgICAgb2ZfcGxh
dGZvcm1fZGVmYXVsdF9wb3B1bGF0ZShOVUxMLCBOVUxMLCBOVUxMKTsKPiAKPiAgICAgICAgcmV0
dXJuIDA7Cj4gfQo+IGFyY2hfaW5pdGNhbGxfc3luYyhvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVs
YXRlX2luaXQpOwo+IAo+IHN0YXRpYyBpbnQgX19pbml0IG9mX3BsYXRmb3JtX3N5bmNfc3RhdGVf
aW5pdCh2b2lkKQo+IHsKPiAgICAgICAgZGV2aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVf
cmVzdW1lKCk7IDw9PT09PT09PT0gUkVTVU1FCj4gICAgICAgIHJldHVybiAwOwo+IH0KPiBsYXRl
X2luaXRjYWxsX3N5bmMob2ZfcGxhdGZvcm1fc3luY19zdGF0ZV9pbml0KTsKPiAKPiBUaGFua3Ms
Cj4gU2FyYXZhbmEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
