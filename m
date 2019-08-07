Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4EC83EBC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31rP0YaYETm9Vaa2qkjhZryCtlr4/DamFMlxnIE1Iwg=; b=S6Fd5Rf1WsIl1Z
	cK/TouNP/jGEmIUy8t/ypDnrCiTWzcSYVPnyvfOPs/Crg5baJScly/KcE1GtvdvvPOQ61hG3kJQp0
	NHUZr4U0+an+FHsLnsgpRY40ZO/gf4hT+8oCTyJ8hV/Q/P3bLF1sDEgVVIFHZ6WaoWiKiNE1A0r81
	KgeACVx5jZNL001bxGToJb82DDGLrTHQj08W3dHRhSJedZOD9iWFbPUDM0SDTY2K68zEVIEQJUlRZ
	6nDOO0A0PX18QHJRNVHwgPfdl1f+Y3v2OtiwLiPDwNnN/cx8n/6puh2dPh5gvtbvPA32qZvWCARrv
	X59KfpqupDxPx0nr+YIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAgA-0006AJ-Ty; Wed, 07 Aug 2019 01:23:50 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAfz-00069L-Ou
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 01:23:41 +0000
Received: by mail-ot1-x342.google.com with SMTP id o101so97812518ota.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 18:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XOc3tRY+4s8d0XfiWvvs/QPATLaAozAh84PcRQxEWLM=;
 b=GNTmRKLx1mTu+C0+yD8oGiYEgpN8Ed2VrTeqTvsha4J6+EThN6gPct+RjsZktOSHUG
 3NGWefoJBoKXoeVgkcEu1O1LbM2wO2HG0QK6Xk9KvnOFIwQnY8FBjDCz+HyzSyl0H9Vo
 sjkHKA5WdxWcEVaiYYa5OpDjZxbC4bdRy0yBBtGGR+c1NQuJ4ade/5UXQ6kIUbA+OTwP
 59K5GpuNKKo+7onbGHvl8pLzddN3iBFdh3I2za6eU8Z42YwuQhG0l1cuGuY5dm2bn89d
 UmP9+QPE1Bqx3jat6AG543f01KQVPwWGGuU1/bmhABU1rjSTdudpx3/le/8fgit0/W3j
 g7Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XOc3tRY+4s8d0XfiWvvs/QPATLaAozAh84PcRQxEWLM=;
 b=TI6ByfNofmfG08YB2CbiqRwW4MwUZLXZIfW9R5IDE5JWWB/yE8PLZd3uTujVLIsEtg
 8bgRbVSRq1fzmD3/qmWS/5RyvxttPSoDOCt/XQAfqwAeL1HW+qUpS1oEwNyCAV3I5HXS
 uJBgUK5WMkjifv21WGU8lgKMs4GG/xkqacAJVPSMInztwth0VjxI977P59rX+Qfw0XGE
 4dyGrl1NzGrePOiOlNhuyGxS2qqSrW852uZjD0wVuCr4TKRim12hXtAOmeu8Mo1O5/PX
 Y8baF58PCtIzbmTvcW1WbZCtoW36puaHDBWDFHsV5tDHHwx8G78qNwbm5qsgWmpE+1ok
 niQQ==
X-Gm-Message-State: APjAAAXu+aGYe5X0PD4h/19DXxKfq9O7au775j3qZRom/xNqrNL4SIRQ
 8g9ANlR/pwG4n6FCEow//AnEmvbISDaj1czDjxCY2lg4ydTRZw==
X-Google-Smtp-Source: APXvYqxCEkZVgFa/uggGj84VI91P8SXI1u46BMoeb4gqY/9Gn1ikNdM9oD0yuntjY1a5IparwEFqAzJi0sUX8EKXfCk=
X-Received: by 2002:aca:d8c2:: with SMTP id p185mr3847116oig.30.1565141015214; 
 Tue, 06 Aug 2019 18:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
In-Reply-To: <B4B0AD7F-FA0F-4DA0-9A8B-EAE1CEE11759@lca.pw>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 6 Aug 2019 18:22:59 -0700
Message-ID: <CAGETcx_TYxgohR7C5SRRbSmfKNhS90i64KjtA38N19g_Kz3euA@mail.gmail.com>
Subject: Re: "of/platform: Pause/resume sync state during init and
 of_platform_populate()" with a warning on arm64
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_182339_815213_ECE41931 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

T24gVHVlLCBBdWcgNiwgMjAxOSBhdCA1OjQ2IFBNIFFpYW4gQ2FpIDxjYWlAbGNhLnB3PiB3cm90
ZToKPgo+IEl0IGxvb2tzIGxpa2UgdGhlIGxpbnV4LW5leHQgY29tbWl0IOKAnG9mL3BsYXRmb3Jt
OiBQYXVzZS9yZXN1bWUgc3luYyBzdGF0ZSBkdXJpbmcgaW5pdCBhbmQgb2ZfcGxhdGZvcm1fcG9w
dWxhdGUoKeKAnSBbMV0KPiBJbnRyb2R1Y2VkIGEgd2FybmluZyB3aGlsZSBib290aW5nIGFybTY0
Lgo+Cj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAxOTA3MzEyMjE3MjEuMTg3
NzEzLTYtc2FyYXZhbmFrQGdvb2dsZS5jb20vCj4KPiBbICAgOTMuNDQ5MzAwXVsgICAgVDFdIGFy
bS1zbW11LXYzIGFybS1zbW11LXYzLjQuYXV0bzogaWFzIDQ0LWJpdCwgb2FzIDQ0LWJpdCAoZmVh
dHVyZXMgMHgwMDAwMTcwZCkKPiBbICAgOTMuNDY0ODczXVsgICAgVDFdIGFybS1zbW11LXYzIGFy
bS1zbW11LXYzLjQuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVzIGZvciBjbWRxCj4gWyAg
IDkzLjQ4NTQ4MV1bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12My40LmF1dG86IGFsbG9j
YXRlZCA1MjQyODggZW50cmllcyBmb3IgZXZ0cQo+IFsgICA5My40OTYzMjBdWyAgICBUMV0gYXJt
LXNtbXUtdjMgYXJtLXNtbXUtdjMuNS5hdXRvOiBvcHRpb24gbWFzayAweDIKPiBbICAgOTMuNTAy
OTE3XVsgICAgVDFdIGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogaWFzIDQ0LWJpdCwg
b2FzIDQ0LWJpdCAoZmVhdHVyZXMgMHgwMDAwMTcwZCkKPiBbICAgOTMuNjIxODE4XVsgICAgVDFd
IGFybS1zbW11LXYzIGFybS1zbW11LXYzLjUuYXV0bzogYWxsb2NhdGVkIDUyNDI4OCBlbnRyaWVz
IGZvciBjbWRxCj4gWyAgIDkzLjY0MzAwMF1bICAgIFQxXSBhcm0tc21tdS12MyBhcm0tc21tdS12
My41LmF1dG86IGFsbG9jYXRlZCA1MjQyODggZW50cmllcyBmb3IgZXZ0cQo+IFsgICA5NC41MTk0
NDVdWyAgICBUMV0gbGlicGh5OiBGaXhlZCBNRElPIEJ1czogcHJvYmVkCj4gWyAgIDk0LjUyNDY0
OV1bICAgIFQxXSBFRkkgVmFyaWFibGVzIEZhY2lsaXR5IHYwLjA4IDIwMDQtTWF5LTE3Cj4gWyAg
IDk0LjYwMTE2Nl1bICAgIFQxXSBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE3Cj4g
WyAgIDk0Ljc2NjAwOF1bICAgIFQxXSB6c3dhcDogbG9hZGVkIHVzaW5nIHBvb2wgbHpvL3pidWQK
PiBbICAgOTQuNzc0NzQ1XVsgICAgVDFdIGttZW1sZWFrOiBLZXJuZWwgbWVtb3J5IGxlYWsgZGV0
ZWN0b3IgaW5pdGlhbGl6ZWQgKG1lbXBvb2wgc2l6ZTogMTYzODQpCj4gWyAgIDk0Ljc3NDc1Nl1b
IFQxNjk5XSBrbWVtbGVhazogQXV0b21hdGljIG1lbW9yeSBzY2FubmluZyB0aHJlYWQgc3RhcnRl
ZAo+IFsgICA5NC44MTIzMzhdWyBUMTM2OF0gcGNpZXBvcnQgMDAwMDowZjowMC4wOiBBZGRpbmcg
dG8gaW9tbXUgZ3JvdXAgMAo+IFsgICA5NC45ODQ0NjZdWyAgICBUMV0gLS0tLS0tLS0tLS0tWyBj
dXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gWyAgIDk0Ljk4OTgyN11bICAgIFQxXSBVbm1hdGNoZWQg
c3luY19zdGF0ZSBwYXVzZS9yZXN1bWUhCj4gWyAgIDk0Ljk4OTg5NF1bICAgIFQxXSBXQVJOSU5H
OiBDUFU6IDI1IFBJRDogMSBhdCBkcml2ZXJzL2Jhc2UvY29yZS5jOjY5MSBkZXZpY2VfbGlua3Nf
c3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPiBbICAgOTUuMDA2MDYyXVsg
ICAgVDFdIE1vZHVsZXMgbGlua2VkIGluOgo+IFsgICA5NS4wMDk4MTVdWyAgICBUMV0gQ1BVOiAy
NSBQSUQ6IDEgQ29tbTogc3dhcHBlci8wIE5vdCB0YWludGVkIDUuMy4wLXJjMy1uZXh0LTIwMTkw
ODA2KyAjMTEKPiBbICAgOTUuMDE4MTYxXVsgICAgVDFdIEhhcmR3YXJlIG5hbWU6IEhQRSBBcG9s
bG8gNzAgICAgICAgICAgICAgL0MwMV9BUEFDSEVfTUIgICAgICAgICAsIEJJT1MgTDUwXzUuMTNf
MS4xMSAwNi8xOC8yMDE5Cj4gWyAgIDk1LjAyODU5M11bICAgIFQxXSBwc3RhdGU6IDYwNDAwMDA5
IChuWkN2IGRhaWYgK1BBTiAtVUFPKQo+IFsgICA5NS4wMzQwNzddWyAgICBUMV0gcGMgOiBkZXZp
Y2VfbGlua3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9yZXN1bWUrMHgxMDAvMHgxMjgKPiBbICAgOTUu
MDQxMTI0XVsgICAgVDFdIGxyIDogZGV2aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVz
dW1lKzB4MTAwLzB4MTI4Cj4gWyAgIDk1LjA0ODE2N11bICAgIFQxXSBzcCA6IDM0ZmY4MDA4MDZl
NmZiYzAKPiBbICAgOTUuMDUyMTcyXVsgICAgVDFdIHgyOTogMzRmZjgwMDgwNmU2ZmMwMCB4Mjg6
IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgOTUuMDU4MTc3XVsgICAgVDFdIHgyNzogMDAwMDAwMDAw
MDAwMDAwMCB4MjY6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgOTUuMDY0MTgxXVsgICAgVDFdIHgy
NTogMDAwMDAwMDAwMDAwMDAzOCB4MjQ6IDAwMDAwMDAwMDAwMDAwMDAKPiBbICAgOTUuMDcwMTg1
XVsgICAgVDFdIHgyMzogMDAwMDAwMDAwMDAwMDAwMCB4MjI6IDAwMDAwMDAwMDAwMDAwMTkKPiBb
ICAgOTUuMDc2MTg5XVsgICAgVDFdIHgyMTogMDAwMDAwMDAwMDAwMDAwMCB4MjA6IGY5ZmY4MDhi
ODA0ZTZjNTAKPiBbICAgOTUuMDgyMTkzXVsgICAgVDFdIHgxOTogZmZmZjEwMDAxNGE2ZTYwMCB4
MTg6IDAwMDAwMDAwMDAwMDAwNDAKPiBbICAgOTUuMDg4MTk3XVsgICAgVDFdIHgxNzogMDAwMDAw
MDAwMDAwMDAwMCB4MTY6IDg2ZmY4MDA5OWQ1ODFiNTAKPiBbICAgOTUuMDk0MjAxXVsgICAgVDFd
IHgxNTogMDAwMDAwMDAwMDAwMDAwMCB4MTQ6IGZmZmYxMDAwMTAwODZkMWMKPiBbICAgOTUuMTAw
MjA1XVsgICAgVDFdIHgxMzogZmZmZjEwMDAxMDlkODY4OCB4MTI6IGZmZmZmZmZmZmZmZmZmZmYK
PiBbICAgOTUuMTA2MjA5XVsgICAgVDFdIHgxMTogMDAwMDAwMDAwMDAwMDBmOSB4MTA6IGZmZmYw
ODA4YjgwNGU2YzYKPiBbICAgOTUuMTEyMjEzXVsgICAgVDFdIHg5IDogNGI3MWFkNTIyYzg1MWQw
MCB4OCA6IDRiNzFhZDUyMmM4NTFkMDAKPiBbICAgOTUuMTE4MjE3XVsgICAgVDFdIHg3IDogNjE3
MDIwNjU3NDYxNzQ3MyB4NiA6IGZmZmYxMDAwMTQwNzY5NzIKPiBbICAgOTUuMTI0MjIxXVsgICAg
VDFdIHg1IDogMzRmZjgwMDgwNmU2ZjhmMCB4NCA6IDAwMDAwMDAwMDAwMDAwMGYKPiBbICAgOTUu
MTMwMjI1XVsgICAgVDFdIHgzIDogZmZmZjEwMDAxMDFiZmE1YyB4MiA6IDAwMDAwMDAwMDAwMDAw
MDEKPiBbICAgOTUuMTM2MjI5XVsgICAgVDFdIHgxIDogMDAwMDAwMDAwMDAwMDAwMSB4MCA6IDAw
MDAwMDAwMDAwMDAwMjIKPiBbICAgOTUuMTQyMjMzXVsgICAgVDFdIENhbGwgdHJhY2U6Cj4gWyAg
IDk1LjE0NTM3NF1bICAgIFQxXSAgZGV2aWNlX2xpbmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVz
dW1lKzB4MTAwLzB4MTI4Cj4gWyAgIDk1LjE1MjA3NF1bICAgIFQxXSAgb2ZfcGxhdGZvcm1fc3lu
Y19zdGF0ZV9pbml0KzB4MTAvMHgxYwo+IFsgICA5NS4xNTc1NTddWyAgICBUMV0gIGRvX29uZV9p
bml0Y2FsbCsweDJmOC8weDYwMAo+IFsgICA5NS4xNjIxNzJdWyAgICBUMV0gIGRvX2luaXRjYWxs
X2xldmVsKzB4MzdjLzB4M2ZjCj4gWyAgIDk1LjE2Njk1OV1bICAgIFQxXSAgZG9fYmFzaWNfc2V0
dXArMHgzNC8weDRjCj4gWyAgIDk1LjE3MTMxM11bICAgIFQxXSAga2VybmVsX2luaXRfZnJlZWFi
bGUrMHgxODgvMHgyNGMKPiBbICAgOTUuMTc2MzYzXVsgICAgVDFdICBrZXJuZWxfaW5pdCsweDE4
LzB4MzM0Cj4gWyAgIDk1LjE4MDU0M11bICAgIFQxXSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MTgK
PiBbICAgOTUuMTg0ODA5XVsgICAgVDFdIC0tLVsgZW5kIHRyYWNlIGE5ZWE2OGM5MDI1NDBmZTUg
XS0tLQo+IFsgICA5NS4yNjkwODVdWyAgICBUMV0gRnJlZWluZyB1bnVzZWQga2VybmVsIG1lbW9y
eTogMjg2NzJLCj4gWyAgMTAxLjA2OTg2MF1bICAgIFQxXSBDaGVja2VkIFcrWCBtYXBwaW5nczog
cGFzc2VkLCBubyBXK1ggcGFnZXMgZm91bmQKPiBbICAxMDEuMDc2MjY1XVsgICAgVDFdIFJ1biAv
aW5pdCBhcyBpbml0IHByb2Nlc3MKPiBbICAxMDEuMTg2MzU5XVsgICAgVDFdIHN5c3RlbWRbMV06
IFN5c3RlbSB0aW1lIGJlZm9yZSBidWlsZCB0aW1lLCBhZHZhbmNpbmcgY2xvY2suCgoKSSB0ZXN0
ZWQgaXQgYWdhaW4gb24gbXkgZGV2aWNlIChvbiBhbiBvbGRlciBrZXJuZWwpIGFuZCBJIGRvbid0
IHNlZQp0aGlzIHdhcm5pbmcuIElzIHRoaXMgb24gYW4gQVJNNjQgdGFyZ2V0IHdpdGhvdXQgYSBw
b3B1bGF0ZWQgRFQ/ClRoYXQncyB0aGUgb25seSB0aGluZyBJIGNhbiBzZWUgdGhhdCBjb3VsZCBj
YXVzZSB0aGlzIHdhcm5pbmcuCgpUaGlzIGlzIGxpdGVyYWxseSB0aGUgY29kZSB3aXRoIHRoZSBt
YXRjaGluZyBwYXVzZS9yZXN1bWUuIEkgY2FuJ3QKdGhpbmsgb2YgYW55IG90aGVyIHdheSB0aGUg
cGF1c2UvcmVzdW1lIGNvdWxkIGhhdmUgZW5kZWQgdXAgbm90Cm1hdGNoaW5nLgoKc3RhdGljIGlu
dCBfX2luaXQgb2ZfcGxhdGZvcm1fZGVmYXVsdF9wb3B1bGF0ZV9pbml0KHZvaWQpCnsKICAgICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGU7CgogICAgICAgIGlmICghb2ZfaGF2ZV9wb3B1bGF0
ZWRfZHQoKSkKICAgICAgICAgICAgICAgIHJldHVybiAtRU5PREVWOwoKICAgICAgICBwbGF0Zm9y
bV9idXNfdHlwZS5hZGRfbGlua3MgPSBvZl9saW5rX3RvX3N1cHBsaWVyczsKICAgICAgICBkZXZp
Y2VfbGlua3Nfc3VwcGxpZXJfc3luY19zdGF0ZV9wYXVzZSgpOyA8PT09PT09PT09PT0gUEFVU0UK
ICAgICAgICAvKgogICAgICAgICAqIEhhbmRsZSBjZXJ0YWluIGNvbXBhdGlibGVzIGV4cGxpY2l0
bHksIHNpbmNlIHdlIGRvbid0IHdhbnQgdG8gY3JlYXRlCiAgICAgICAgICogcGxhdGZvcm1fZGV2
aWNlcyBmb3IgZXZlcnkgbm9kZSBpbiAvcmVzZXJ2ZWQtbWVtb3J5IHdpdGggYQogICAgICAgICAq
ICJjb21wYXRpYmxlIiwKICAgICAgICAgKi8KICAgICAgICBmb3JfZWFjaF9tYXRjaGluZ19ub2Rl
KG5vZGUsIHJlc2VydmVkX21lbV9tYXRjaGVzKQogICAgICAgICAgICAgICAgb2ZfcGxhdGZvcm1f
ZGV2aWNlX2NyZWF0ZShub2RlLCBOVUxMLCBOVUxMKTsKCiAgICAgICAgbm9kZSA9IG9mX2ZpbmRf
bm9kZV9ieV9wYXRoKCIvZmlybXdhcmUiKTsKICAgICAgICBpZiAobm9kZSkgewogICAgICAgICAg
ICAgICAgb2ZfcGxhdGZvcm1fcG9wdWxhdGUobm9kZSwgTlVMTCwgTlVMTCwgTlVMTCk7CiAgICAg
ICAgICAgICAgICBvZl9ub2RlX3B1dChub2RlKTsKICAgICAgICB9CgogICAgICAgIC8qIFBvcHVs
YXRlIGV2ZXJ5dGhpbmcgZWxzZS4gKi8KICAgICAgICBvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVs
YXRlKE5VTEwsIE5VTEwsIE5VTEwpOwoKICAgICAgICByZXR1cm4gMDsKfQphcmNoX2luaXRjYWxs
X3N5bmMob2ZfcGxhdGZvcm1fZGVmYXVsdF9wb3B1bGF0ZV9pbml0KTsKCnN0YXRpYyBpbnQgX19p
bml0IG9mX3BsYXRmb3JtX3N5bmNfc3RhdGVfaW5pdCh2b2lkKQp7CiAgICAgICAgZGV2aWNlX2xp
bmtzX3N1cHBsaWVyX3N5bmNfc3RhdGVfcmVzdW1lKCk7IDw9PT09PT09PT0gUkVTVU1FCiAgICAg
ICAgcmV0dXJuIDA7Cn0KbGF0ZV9pbml0Y2FsbF9zeW5jKG9mX3BsYXRmb3JtX3N5bmNfc3RhdGVf
aW5pdCk7CgpUaGFua3MsClNhcmF2YW5hCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
