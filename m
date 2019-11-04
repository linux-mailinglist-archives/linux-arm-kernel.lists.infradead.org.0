Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147CEEEA8E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 21:56:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8+ZCdFM6OcJ6RC09oJuZJ24Vx0yFcFmvvC9pb/d4Qs=; b=Fcc1He31nQz3DL
	7GETlYp5Ixa/ATE91DR/VzBodfg0ADlyILtcQ8DfT0IbGkHp/+iNQ8v95kbKdKWuR6QguiZl9LxmJ
	G3Hbdl2/GpDQOGsROpdMCqdZ2Jr6RWvivcyJTrOblkU4tLD2DaSPKMD0Jg0IzmVKNEQsSBQr2ovL0
	y+MYPgqRkxNfJOmluH6iJ1MPPwjaRC4evaUOd/9sv5Th48ZFX+hy/pfuS+mUZHpjqn37fAtumo+F2
	mJx51nbS2ScgNJmF8sdU3K/UrRNIbn5cmRPCU+JGmUo9OTG5KGVf5ja+jA76T0aNolfOiCKKYzcSO
	pvWjZLUGRVDeiauFLd+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRjOz-0006xz-Iv; Mon, 04 Nov 2019 20:56:41 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRjOr-0006wj-JF
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 20:56:35 +0000
Received: by mail-oi1-f193.google.com with SMTP id e9so11551768oif.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 12:56:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/uPNoT5pyyczJJEGNLqWLD6OKr6e8V9JSPptdcpHVcU=;
 b=jE1qm5JhCAmuAQ3sheIDtLvewMuFzgG2e/kh8yVnLTZkfA38uCSkkcm+m6ZO9Ty3jh
 cZFL/zQO1IvjmnLyFPm4qxVMov1rYbYBEkOgXtsVA+e5Qv7Wx7E4S9ezJ8w6h8aRCIKA
 4WRgZheQJOytmY0uHSnLp5LHmQUG+4KsEGLeRl5dLKD1FIlvv5LqYWKhkiFo7h4wf6U3
 MSYBuP1s0SNCdnEfmaY+55pYuBPDYPiVUNdkyc5GcdxdfOFENwKH7jdaC9ruJ5MDGyjP
 Rbfkm7322q7kHjw/N4Eni0QvhEXiJqA2UOHxle7SMXZlmx+DbYppxp2wbXNYt3HVn8Oa
 87Ng==
X-Gm-Message-State: APjAAAUFauEnALrSdh+iVePTf2PnFJQZgjDmBd+XhY6t9bjOKCWu4til
 fPAdFFdGxjiRG3XlTpLjb3uGz4RM
X-Google-Smtp-Source: APXvYqwcs/IAKiwAx3ZJSxambs0pKMPILVlXX4aki3VxY5SF2yPef/POKKF79oEl6fToc7ZQ2w/DIg==
X-Received: by 2002:aca:5f84:: with SMTP id t126mr884995oib.8.1572900992112;
 Mon, 04 Nov 2019 12:56:32 -0800 (PST)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com.
 [209.85.167.175])
 by smtp.gmail.com with ESMTPSA id y7sm5812917ote.81.2019.11.04.12.56.31
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Nov 2019 12:56:31 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id m193so15463594oig.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 12:56:31 -0800 (PST)
X-Received: by 2002:aca:ec89:: with SMTP id k131mr840013oih.154.1572900990777; 
 Mon, 04 Nov 2019 12:56:30 -0800 (PST)
MIME-Version: 1.0
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-1-linux@rasmusvillemoes.dk>
 <20191101124210.14510-36-linux@rasmusvillemoes.dk>
 <4e2ac670-2bf4-fb47-2130-c0120bcf0111@c-s.fr>
 <VE1PR04MB6687D4620E32176BDC120DBA8F620@VE1PR04MB6687.eurprd04.prod.outlook.com>
 <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
In-Reply-To: <24ea27b6-adea-cc74-f480-b68de163f531@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 4 Nov 2019 14:56:19 -0600
X-Gmail-Original-Message-ID: <CADRPPNQ4dq1pnvNU71vNEgk1V5ovrT9O2=UMJxG45=ZSRdJ4ig@mail.gmail.com>
Message-ID: <CADRPPNQ4dq1pnvNU71vNEgk1V5ovrT9O2=UMJxG45=ZSRdJ4ig@mail.gmail.com>
Subject: Re: [PATCH v3 35/36] net/wan: make FSL_UCC_HDLC explicitly depend on
 PPC32
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_125633_635510_ED062949 
X-CRM114-Status: GOOD (  24.01  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Scott Wood <oss@buserror.net>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBOb3YgNCwgMjAxOSBhdCAyOjM5IEFNIFJhc211cyBWaWxsZW1vZXMKPGxpbnV4QHJh
c211c3ZpbGxlbW9lcy5kaz4gd3JvdGU6Cj4KPiBPbiAwMS8xMS8yMDE5IDIzLjMxLCBMZW8gTGkg
d3JvdGU6Cj4gPgo+ID4KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4+IEZyb206
IENocmlzdG9waGUgTGVyb3kgPGNocmlzdG9waGUubGVyb3lAYy1zLmZyPgo+ID4+IFNlbnQ6IEZy
aWRheSwgTm92ZW1iZXIgMSwgMjAxOSAxMTozMCBBTQo+ID4+IFRvOiBSYXNtdXMgVmlsbGVtb2Vz
IDxsaW51eEByYXNtdXN2aWxsZW1vZXMuZGs+OyBRaWFuZyBaaGFvCj4gPj4gPHFpYW5nLnpoYW9A
bnhwLmNvbT47IExlbyBMaSA8bGVveWFuZy5saUBueHAuY29tPgo+ID4+IENjOiBsaW51eHBwYy1k
ZXZAbGlzdHMub3psYWJzLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Owo+ID4+IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IFNjb3R0IFdvb2QgPG9zc0BidXNl
cnJvci5uZXQ+Owo+ID4+IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmcKPiA+PiBTdWJqZWN0OiBSZTog
W1BBVENIIHYzIDM1LzM2XSBuZXQvd2FuOiBtYWtlIEZTTF9VQ0NfSERMQyBleHBsaWNpdGx5Cj4g
Pj4gZGVwZW5kIG9uIFBQQzMyCj4gPj4KPiA+Pgo+ID4+Cj4gPj4gTGUgMDEvMTEvMjAxOSDDoCAx
Mzo0MiwgUmFzbXVzIFZpbGxlbW9lcyBhIMOpY3JpdCA6Cj4gPj4+IEN1cnJlbnRseSwgRlNMX1VD
Q19IRExDIGRlcGVuZHMgb24gUVVJQ0NfRU5HSU5FLCB3aGljaCBpbiB0dXJuCj4gPj4gZGVwZW5k
cwo+ID4+PiBvbiBQUEMzMi4gQXMgcHJlcGFyYXRpb24gZm9yIHJlbW92aW5nIHRoZSBsYXR0ZXIg
YW5kIHRodXMgYWxsb3dpbmcgdGhlCj4gPj4+IGNvcmUgUUUgY29kZSB0byBiZSBidWlsdCBmb3Ig
b3RoZXIgYXJjaGl0ZWN0dXJlcywgbWFrZSBGU0xfVUNDX0hETEMKPiA+Pj4gZXhwbGljaXRseSBk
ZXBlbmQgb24gUFBDMzIuCj4gPj4KPiA+PiBJcyB0aGF0IHJlYWxseSBwb3dlcnBjIHNwZWNpZmlj
ID8gQ2FuJ3QgdGhlIEFSTSBRRSBwZXJmb3JtIEhETEMgb24gVUNDID8KPgo+IEkgdGhpbmsgdGhl
IGRyaXZlciB3b3VsZCBidWlsZCBvbiBBUk0uIFdoZXRoZXIgaXQgd29ya3MgSSBkb24ndCBrbm93
LiBJCj4ga25vdyBpdCBkb2VzIG5vdCBidWlsZCBvbiA2NCBiaXQgaG9zdHMgKHNlZSBrYnVpbGQg
cmVwb3J0IGZvciB2MiwyMy8yMykuCgpUaGUgcHJvYmxlbSBmb3IgYXJtNjQgY2FuIGJlIGVhc3kg
dG8gZml4LiAgQWN0dWFsbHkgSSBkb24ndCB0aGluayBpdAppcyBuZWNjZXNzYXJpbHkgdG8gYmUg
Y29tcGlsZWQgb24gYWxsIGFyY2hpdGVjdHVyZXMgZXhjZXB0IHBvd2VycGMsCmFybSBhbmQgYXJt
NjQuICBJIGFtIHN1cnByaXNlZCB0aGF0IHlvdSBtYWRlIHRoZSBjb3JlIFFFIGNvZGUgY29tcGls
ZQpmb3IgYWxsIGFyY2hpdGVjdHVyZShhbHRob3VnaCBzdGlsbCBoYXZlIHNvbWUga2J1aWxkIHdh
cm5pbmdzKQoKPgo+ID4gTm8uICBBY3R1YWxseSB0aGUgSERMQyBhbmQgVERNIGFyZSB0aGUgbWFq
b3IgcmVhc29uIHRvIGludGVncmF0ZSBhIFFFIG9uIHRoZSBBUk0gYmFzZWQgTGF5ZXJzY2FwZSBT
b0NzLgo+Cj4gW2NpdGF0aW9uIG5lZWRlZF0uCgpJIGdvdCB0aGlzIG1lc3NhZ2UgZnJvbSBvdXIg
bWFya2V0aW5nIHRlYW0uICBBbHNvIGl0IGlzIHJlZmxlY3RlZCBvbgptYXJrZXRpbmcgbWF0ZXJp
YWxzIGxpa2UKaHR0cHM6Ly93d3cubnhwLmNvbS9wcm9kdWN0cy9wcm9jZXNzb3JzLWFuZC1taWNy
b2NvbnRyb2xsZXJzL2FybS1wcm9jZXNzb3JzL2xheWVyc2NhcGUtY29tbXVuaWNhdGlvbi1wcm9j
ZXNzL3FvcmlxLWxheWVyc2NhcGUtMTA0M2EtYW5kLTEwMjNhLW11bHRpY29yZS1jb21tdW5pY2F0
aW9ucy1wcm9jZXNzb3JzOkxTMTA0M0EKCiJUaGUgUW9ySVEgTFMxMDQzQSAuLi4gaW50ZWdyYXRl
ZCBRVUlDQyBFbmdpbmXCriBmb3IgbGVnYWN5IGdsdWUtbGVzcwpIRExDLCBURE0gb3IgUHJvZmli
dXMgc3VwcG9ydC4iCgo+Cj4gPiBTaW5jZSBSYXNtdXMgZG9lc24ndCBoYXZlIHRoZSBoYXJkd2Fy
ZSB0byB0ZXN0IHRoaXMgZmVhdHVyZSBRaWFuZyBaaGFvIHByb2JhYmx5IGNhbiBoZWxwIHZlcmlm
eSB0aGUgZnVuY3Rpb25hbGl0eSBvZiBURE0gYW5kIHdlIGNhbiBkcm9wIHRoaXMgcGF0Y2guCj4K
PiBObywgdGhpcyBwYXRjaCBjYW5ub3QgYmUgZHJvcHBlZC4gUGxlYXNlIHNlZSB0aGUga2J1aWxk
IGNvbXBsYWludHMgZm9yCj4gdjIsMjMvMjMgYWJvdXQgdXNlIG9mIElTX0VSUl9WQUxVRSBvbiBu
b3Qtc2l6ZW9mKGxvbmcpIGVudGl0aWVzLiBJIHNlZQo+IGtidWlsZCBoYXMgY29tcGxhaW5lZCBh
Ym91dCB0aGUgc2FtZSB0aGluZyBmb3IgdjMgc2luY2UgYXBwYXJlbnRseSB0aGUKPiBzYW1lIHRo
aW5nIGFwcGVhcnMgaW4gdWNjX3Nsb3cuYy4gU28gSSdsbCBmaXggdGhhdC4KCldoZW4gSSBtYWRl
IHRoaXMgY29tbWVudCBJIGRpZG4ndCBub3RpY2UgeW91IGhhdmUgcmVtb3ZlZCBhbGwgdGhlCmFy
Y2hpdGVjdHVyYWwgZGVwZW5kZW5jaWVzIGZvciBDT05GSUdfUVVJQ0NfRU5HSU5FLiAgSWYgdGhl
ClFVSUNDX0VOR0lORSBpcyBvbmx5IGJ1aWRhYmxlIG9uIHBvd2VycGMsIGFybSBhbmQgYXJtNjQs
IHRoaXMgY2hhbmdlCndpbGwgbm90IGJlIG5lZWRlZC4KCkJUVywgSSdtIG5vdCBzdXJlIGlmIGl0
IGlzIGEgZ29vZCBpZGVhIHRvIG1ha2UgaXQgc2VsZWN0YWJsZSBvbiB0aGVzZQp1bnJlbGF2ZW50
IGFyY2hpdGVjdHVyZXMuICBSZWFsIGFyY2hpdGVjdHVyYWwgZGVwZW5kZW5jaWVzIGFuZApDT01Q
SUxFX1RFU1QgZGVwZW5kZW5jeSB3aWxsIGJlIGJldHRlciBpZiB3ZSByZWFsbHkgd2FudCB0byB0
ZXN0IHRoZQpidWlsZGFiaWxpdHkgb24gb3RoZXIgcGxhdGZvcm1zLgoKUmVnYXJkcywKTGVvCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
