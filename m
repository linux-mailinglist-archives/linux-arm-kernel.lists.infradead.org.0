Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DEF16B23C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 22:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bv3lbypEwNIWulXZLi/xSXUTStkKNsuCbsFd7lLe8wY=; b=cPAcNsIVreHm2z
	78s9CKkvgcm0KnLKnK/SVO15RVDeZt/twk1pNa1CmhQrB52Mwwr+aGlBNSiDvbZFmpl4HsoO3Uuce
	Z4tEseHsiKYOoGVmEwBsHLreatBkc9gIMYRR2o0xDJqFXaNTJX/6urLkstmo/x17OSzU9xOJaw6Ff
	jh2QH5tIlXDrXUpz6uUtTjKm/BLEr87MpaCxYc3F62ToLEXn2mubGOhPKTw9G6fraW/ODynnUM5zX
	1LaqZO+y5/ptFH2qeL0LETO4uQl0XTy8wRKy6I9R48n7QilBYToSoIgufo+z7ZwbcTPLg+Epa+xFj
	Lty1MWaaAepqaltw1vmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6LHZ-0000xe-FD; Mon, 24 Feb 2020 21:28:53 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6LHQ-0000pw-Ra
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 21:28:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id e18so11714268ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 13:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wMq54bZLHLBxwerxfl5UdZbeQNMpBUzRLZDC5/TbRIY=;
 b=ul+tuP8hNyxbq61sLOa5xbwQ7/XPUTNhLBUIsVq9THoGlu5au+JstGRYswaXd/MUTw
 hu9d5BAJPb4t+0cMGSZwpXvVh6Pey7rjt0uIgLftfaXUf66ZMhVvdPqDMUodI6W9/zce
 1Ago9YPv5KrEGabrnWcoa4YoekrXCq2VOt8t7hTf1vVpAmYaHShQjJPVmrLX2PyW24GM
 hL0R9NYz8TJbeJwoww5veP3k7M812CxhUm2IG0CJyX8lcmA/uvRYE9hLLIRaD3/Lx4Mq
 5oneJ47hRL2HUUltE44vFewYmAhzAXZNIb9C2vm7nz8eSn+Tbes3K+fpCtir3k677MW7
 iAJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wMq54bZLHLBxwerxfl5UdZbeQNMpBUzRLZDC5/TbRIY=;
 b=dFN8JEt6Rmw1MDGd3EldDPaHhqiccmbJ5TAzHa/1W6IsF3/+ke7OnoDzYM3ggdUolB
 ACmkyu/tR8oXlQgTdAwjKfpDxaQuk+Hzb95EBicJDecC7ufyVGpF0hCRg6i4PP0S1DL5
 oWmS/pzB6hyibjZXIN+ncTxJyvrZbazPAoU0vBOl6S8t+3j3npMsdzezgDqp4FNQ86Rn
 gKkRUDHa/G4aXzq8m2nsMw0DXKJvd6Y548Oz2l/lcKGTjaLpAcojO9xfkDr1CklExxqa
 X7cyiKnYmmhuPfyV+h1fpa9Z2Y35oVrxeg5pAq4JKO+OZi/WLfjAvn7jiZPSk5EtdhjE
 HA7A==
X-Gm-Message-State: APjAAAXfl6erklzg8O4OoxWDD7Kkws6Jrrm131uLZHO6fe9wu52nepq4
 osd+nGBlgeUMjUEfWIrvAEEzu3tCG1SZbn7Axa/4oA==
X-Google-Smtp-Source: APXvYqyMq9T/Fn06rswpyz1B/AfyB+fUsnls6uep+5LChqSuZ6hFNZZLf/LdzRRYS6HbAYOSrOhxs7mPuYEtE8MwsxM=
X-Received: by 2002:a2e:e12:: with SMTP id 18mr32538691ljo.123.1582579718004; 
 Mon, 24 Feb 2020 13:28:38 -0800 (PST)
MIME-Version: 1.0
References: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C1523@BGSMSX101.gar.corp.intel.com>
In-Reply-To: <CB4ED07B85D6BB40B8B44F6D5442E4F6572C1523@BGSMSX101.gar.corp.intel.com>
From: Evan Green <evgreen@google.com>
Date: Mon, 24 Feb 2020 13:28:01 -0800
Message-ID: <CAE=gft5JOwvha6e0RC+6=e444QUxfYyjNs7uq=3bhHMwFmCfmw@mail.gmail.com>
Subject: Re: Re: [PATCH] spi: pxa2xx: Add CS control clock quirk
To: "Srivastava, Shobhit" <shobhit.srivastava@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_132844_897357_6C32D4D9 
X-CRM114-Status: GOOD (  37.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "rajatxjain@gmail.com" <rajatxjain@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Rajat Jain <rajatja@google.com>, Robert Jarzmik <robert.jarzmik@free.fr>,
 Daniel Mack <daniel@zonque.org>, "Muthukrishnan,
 Porselvan" <porselvan.muthukrishnan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IDB4CgpPbiBUaHUsIEZlYiAxMywgMjAyMCBhdCA4OjU3IEFNIFNyaXZhc3RhdmEsIFNob2JoaXQK
PHNob2JoaXQuc3JpdmFzdGF2YUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4KPiA+IEhpCj4gPgo+ID4g
KyBBbmR5Cj4gPgo+ID4gT24gMi8xMi8yMCAxMjozNCBBTSwgUmFqYXQgSmFpbiB3cm90ZToKPiA+
ID4gRnJvbTogRXZhbiBHcmVlbiA8ZXZncmVlbkBjaHJvbWl1bS5vcmc+Cj4gPiA+Cj4gPiA+IERh
dGU6IFdlZCwgMjkgSmFuIDIwMjAgMTM6NTQ6MTYgLTA4MDAKPiA+ID4gU3ViamVjdDogW1BBVENI
XSBzcGk6IHB4YTJ4eDogQWRkIENTIGNvbnRyb2wgY2xvY2sgcXVpcmsKPiA+ID4KPiA+IFRoaXMg
cGF0Y2ggc3ViamVjdCBpcyBtaXNzaW5nIGZyb20gbWFpbCBzdWJqZWN0Lgo+ID4KPiBBZGRlZAo+
Cj4gPiA+IEluIHNvbWUgY2lyY3Vtc3RhbmNlcyBvbiBJbnRlbCBMUFNTIGNvbnRyb2xsZXJzLCB0
b2dnbGluZyB0aGUgTFBTUyBDUwo+ID4gPiBjb250cm9sIHJlZ2lzdGVyIGRvZXNuJ3QgYWN0dWFs
bHkgY2F1c2UgdGhlIENTIGxpbmUgdG8gdG9nZ2xlLgo+ID4gPiBUaGlzIHNlZW1zIHRvIGJlIGZh
aWx1cmUgb2YgZHluYW1pYyBjbG9jayBnYXRpbmcgdGhhdCBvY2N1cnMgYWZ0ZXIKPiA+ID4gZ29p
bmcgdGhyb3VnaCBhIHN1c3BlbmQvcmVzdW1lIHRyYW5zaXRpb24sIHdoZXJlIHRoZSBjb250cm9s
bGVyIGlzCj4gPiA+IHNlbnQgdGhyb3VnaCBhIHJlc2V0IHRyYW5zaXRpb24uIFRoaXMgcnVpbnMg
U1BJIHRyYW5zYWN0aW9ucyB0aGF0Cj4gPiA+IGVpdGhlciByZWx5IG9uIGRlbGF5X3VzZWNzLCBv
ciB0b2dnbGUgdGhlIENTIGxpbmUgd2l0aG91dCBzZW5kaW5nCj4gPiA+IGRhdGEuCj4gPiA+Cj4g
PiA+IFdoZW5ldmVyIENTIGlzIHRvZ2dsZWQsIG1vbWVudGFyaWx5IHNldCB0aGUgY2xvY2sgZ2F0
aW5nIHJlZ2lzdGVyIHRvCj4gPiA+ICJGb3JjZSBPbiIgdG8gcG9rZSB0aGUgY29udHJvbGxlciBp
bnRvIGFjdGluZyBvbiBDUy4KPiA+ID4KPiA+IENvdWxkIHlvdSBzaGFyZSB0aGUgdGVzdCBjYXNl
IGhvdyB0byB0cmlnZ2VyIHRoaXM/IFdoYXQncyB0aGUgcGxhdGZvcm0gaGVyZT8KPiA+IEknZCBs
aWtlIHRvIGNoZWNrIGRvZXMgdGhpcyByZXByb2R1Y2Ugb24gb3RoZXIgSW50ZWwgTFBTUyBwbGF0
Zm9ybXMgc28gaXMgdGhlcmUKPiA+IG5lZWQgdG8gYWRkIHF1aXJrIGZvciB0aGVtIHRvby4KPiA+
Cj4gVGhpcyBpcyBvbiBhIENvbWV0TGFrZSBwbGF0Zm9ybS4gV2UgYXJlIHByb2JpbmcgdGhlIFNQ
SV9DUyBsaW5lIG9uIGEgc2NvcGUuCj4gRXZlbiB0aG91Z2ggdGhlIHdyaXRlcyB0byBTUElfQ1Nf
Q09OVFJPTCByZWdpc3RlciBhcmUgc3VjY2Vzc2Z1bCwgaXQgZG9lc27igJl0IHRvZ2dsZSB0aGUg
Q1MgbGluZS4KPiBIZW5jZSBjaGVja2luZyBvbiBhIHNjb3BlIGlzIGJldHRlci4KPgo+IEVhc3kg
d2F5IHRvIHRlc3QgdGhpcyBpcyB0byBwcm9ncmFtIHRoZSBjcyBjb250cm9sIHJlZ2lzdGVyIHZp
YSBpb3Rvb2xzIGFuZCBzZWUgaWYgdGhlIENTIGxpbmUgdG9nZ2xlcy4KClllcywgYXMgU2hvYmhp
dCBzYXlzLCB0aGlzIGNhbiBiZSBvYnNlcnZlZCBieSB3YXRjaGluZyB0aGUgdm9sdGFnZSBvZgp0
aGUgQ1MgbGluZSBkdXJpbmcgYSBTUEkgdHJhbnNhY3Rpb24gd2l0aCBubyBkYXRhIChidXQgYSBk
ZWxheSBzZXQpLgpGb3IgdXMsIHRoaXMgaGFwcGVucyB3aGVuIHdlIHRvZ2dsZSB0aGUgQ1MgbGlu
ZSB0byBvdXIgc2VjdXJpdHkgY2hpcAphcyBhIHdheSB0byB3YWtlIGl0IHVwIGJlZm9yZSB0YWxr
aW5nIHRvIGl0IFsxXToKCi8qIEFzc2VydCBDUywgd2FpdCAxIG1zZWMsIGRlYXNzZXJ0IENTICov
CnN0cnVjdCBzcGlfdHJhbnNmZXIgc3BpX2NzX3dha2UgPSB7IC5kZWxheV91c2VjcyA9IDEwMDAg
fTsKc3BpX3N5bmNfdHJhbnNmZXIocGh5LT5zcGlfZGV2aWNlLCAmc3BpX2NzX3dha2UsIDEpOwoK
WzFdIGh0dHBzOi8vY2hyb21pdW0uZ29vZ2xlc291cmNlLmNvbS9jaHJvbWl1bW9zL3RoaXJkX3Bh
cnR5L2tlcm5lbC8rL3JlZnMvaGVhZHMvY2hyb21lb3MtNC4xOS9kcml2ZXJzL2NoYXIvdHBtL2Ny
NTBfc3BpLmMjMTUxCgpXZSdyZSBmaW5kaW5nIHRoYXQgdGhlIGxpbmUgZG9lcyBub3QgaW4gZmFj
dCB0b2dnbGUgaW4gdGhpcwp0cmFuc2FjdGlvbiwgZXZlbiB0aG91Z2ggdGhlIHJlZ2lzdGVyIGNo
YW5nZXMgYXBwZWFyIHRvIHN0aWNrLgoKPiBUaGlzIGhhcyB0byBiZSBkb25lIGFmdGVyIG9uZSBj
eWNsZSBvZiBTMGl4LgoKSSBkb24ndCBrbm93IGFib3V0IHJ1bnRpbWUgUzBpeCwgYnV0IGZvciBt
ZSB0aGlzIGlzIG1vcmUgcmVsYXRlZCB0bwpydW50aW1lIFBNIG9mIHRoZSBkZXZpY2UuIEZvciBp
bnN0YW5jZSwgSSBkbyB0aGlzIHRvIGV4cGVyaW1lbnQ6CgojIGVjaG8gb24gPiAvc3lzL2Rldmlj
ZXMvcGNpMDAwMFw6MDAvMDAwMFw6MDBcOjFlLjIvcG93ZXIvY29udHJvbAojIG1lbV9yZWFkMzIg
MHhkMTIyNjIyNAoweDAwMDAxMDAzCiMgbWVtX3dyaXRlMzIgMHhkMTIyNjIyNCAweDEwMDEgIyMg
VGhpcyB3cml0ZSBzdGlja3MgaW4gdGhlIHJlZ2lzdGVyLApidXQgQ1MgZG9lc24ndCB0b2dnbGUu
CiMgbWVtX3dyaXRlMzIgMHhkMTIyNjIzOCAweDMgIyMgRm9yY2UgY2xvY2sgZ2F0aW5nIG9uCiMg
bWVtX3dyaXRlMzIgMHhkMTIyNjIyNCAweDEwMDEKIyBtZW1fd3JpdGUzMiAweGQxMjI2MjI0IDB4
MTAwMyAjIyBOb3cgdGhlIHdyaXRlcyB3aWxsIGJvdGggc3RpY2sgYW5kCm1ha2UgaXQgdG8gdGhl
IENTIGxpbmUuCgpJbnRlcmVzdGluZ2x5LCBJIGNhbiBzd2l0Y2ggY2xvY2sgZ2F0aW5nIGJhY2sg
dG8gYXV0byAoMCksIGFuZCB3cml0ZXMKY29udGludWUgdG8gbWFrZSBpdCB0byB0aGUgQ1MgbGlu
ZSB1bnRpbCBJIHJlLWVuYWJsZSBydW50aW1lIFBNLgoKU2hvYmhpdCBzdWJtaXR0ZWQgYSBwYXRj
aCBoZXJlIGZvciB0aGUgc2FtZSBidWc6Cmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0
Y2gvMTEzODg0NzEvCgpJbnRlcmVzdGluZ2x5LCBJIG5vdGljZSB0aGF0IHRoZSBlZmZlY3Qgc2Vl
bXMgdGhlIHNhbWU6IG9uY2UgeW91IGZsaXAKdGhlIF9TU0UgYml0IG9uLCB5b3UgY2FuIGFsc28g
ZmxpcCBpdCBiYWNrIG9mZiBhbmQgd3JpdGVzIHdpbGwKY29udGludWUgdG8gd29yayB1bnRpbCBy
dW50aW1lIFBNIGlzIHJlLWVuYWJsZWQuCgpJIGRvbid0IGhhdmUgdGhlIGluLWRlcHRoIGtub3ds
ZWRnZSBvZiBob3cgdGhpcyBjb250cm9sbGVyIHdvcmtzLCBidXQKbXkgZ3V0IHNheXMgbXkgcGF0
Y2ggbW9yZSBhY2N1cmF0ZWx5IGFkZHJlc3NlcyB0aGUgdW5kZXJseWluZyBwcm9ibGVtCmJ5IGJy
aWVmbHkgZm9yY2luZyB0aGUgY29udHJvbGxlciB0byBjbG9jaywgd2hlcmVhcyB0aGUgb3RoZXIg
cGF0Y2gKcG9rZXMgdGhlIF9TU0UgZW5hYmxlIGJpdCwgd2hpY2ggZm9yY2VzIGNsb2NraW5nIG1v
cmUgYXMgYSBzaWRlCmVmZmVjdC4gQWx0aG91Z2gsIHRoZSBmYWN0IHRoYXQgSSBjYW4gc2V0IGNs
b2NrIGdhdGluZyBiYWNrIHRvIGF1dG8KYW5kIHRoaW5ncyBzdGlsbCB3b3JrIHVudGlsIHRoZSBu
ZXh0IHJ1bnRpbWUgc3VzcGVuZCBtYWtlcyBtZSBmZWVsCmxpa2UgSSBkb24ndCBmdWxseSB1bmRl
cnN0YW5kIHRoZSBpc3N1ZSBlaXRoZXIuIEknbSBob3Bpbmcgc29tZW9uZQp3aXRoIG1vcmUgaW50
ZXJuYWwga25vd2xlZGdlIGNhbiB3ZWlnaCBpbiBhcyB0byB0aGUgcmlnaHQgYXBwcm9hY2guCgpB
bmR5LCB0byBhbnN3ZXIgeW91ciBvdGhlciBxdWVzdGlvbiwgSSdtIHVuc3VyZSB3aGV0aGVyIG9y
IG5vdCB0aGlzCm5lZWRzIGEgZGVsYXkgb2YgYSBkZXZpY2UgY2xvY2sgY3ljbGUgb3IgdHdvIHRv
IGJlIG9ic2VydmVkLCB0aG91Z2ggaW4KbXkgZXhwZXJpbWVudHMgaXQgc2VlbXMgbGlrZSB0aGF0
J3Mgbm90IG5lZWRlZC4gSSdtIGFsc28gbm90IHN1cmUgaWYKdGhpcyBhZmZlY3RzIG90aGVyIExQ
U1MgYmxvY2tzLCB0aG91Z2ggbWF5YmUgU1BJIGlzIHNwZWNpYWwgc2luY2UgaXQKaGFzIHRoaXMg
ZXh0ZXJuYWxseSBvYnNlcnZhYmxlIGJ1dCBvdXQtb2YtYmFuZCBDUyBsaW5lIHRoYXQncyBub3QK
ZGlyZWN0bHkgdGllZCB0byB0aGUgc2VyaWFsIGVuZ2luZS4KLUV2YW4KCgo+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEV2YW4gR3JlZW4gPGV2Z3JlZW5AY2hyb21pdW0ub3JnPgo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBSYWphdCBKYWluIDxyYWphdGphQGdvb2dsZS5jb20+Cj4gPiA+IC0tLQo+ID4gPiAg
IGRyaXZlcnMvc3BpL3NwaS1weGEyeHguYyB8IDIzICsrKysrKysrKysrKysrKysrKysrKysrCj4g
PiA+ICAgMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKPiA+ID4KPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3BpL3NwaS1weGEyeHguYyBiL2RyaXZlcnMvc3BpL3NwaS1weGEyeHgu
YyBpbmRleAo+ID4gPiA0YzdhNzFmMGZiM2UuLjJlMzE4MTU4ZmNhOSAxMDA2NDQKPiA+ID4gLS0t
IGEvZHJpdmVycy9zcGkvc3BpLXB4YTJ4eC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvc3BpL3NwaS1w
eGEyeHguYwo+ID4gPiBAQCAtNzAsNiArNzAsMTAgQEAgTU9EVUxFX0FMSUFTKCJwbGF0Zm9ybTpw
eGEyeHgtc3BpIik7Cj4gPiA+ICAgI2RlZmluZSBMUFNTX0NBUFNfQ1NfRU5fU0hJRlQgICAgICAg
ICAgICAgICAgICAgICA5Cj4gPiA+ICAgI2RlZmluZSBMUFNTX0NBUFNfQ1NfRU5fTUFTSyAgICAg
ICAgICAgICAgICAgICAgICAoMHhmIDw8Cj4gPiBMUFNTX0NBUFNfQ1NfRU5fU0hJRlQpCj4gPiA+
Cj4gPiA+ICsjZGVmaW5lIExQU1NfUFJJVl9DTE9DS19HQVRFIDB4MzgKPiA+ID4gKyNkZWZpbmUg
TFBTU19QUklWX0NMT0NLX0dBVEVfQ0xLX0NUTF9NQVNLIDB4MyAjZGVmaW5lCj4gPiA+ICtMUFNT
X1BSSVZfQ0xPQ0tfR0FURV9DTEtfQ1RMX0ZPUkNFX09OIDB4Mwo+ID4gPiArCj4gPiA+ICAgc3Ry
dWN0IGxwc3NfY29uZmlnIHsKPiA+ID4gICAgIC8qIExQU1Mgb2Zmc2V0IGZyb20gZHJ2X2RhdGEt
PmlvYWRkciAqLwo+ID4gPiAgICAgdW5zaWduZWQgb2Zmc2V0Owo+ID4gPiBAQCAtODYsNiArOTAs
OCBAQCBzdHJ1Y3QgbHBzc19jb25maWcgewo+ID4gPiAgICAgdW5zaWduZWQgY3Nfc2VsX3NoaWZ0
Owo+ID4gPiAgICAgdW5zaWduZWQgY3Nfc2VsX21hc2s7Cj4gPiA+ICAgICB1bnNpZ25lZCBjc19u
dW07Cj4gPiA+ICsgICAvKiBRdWlya3MgKi8KPiA+ID4gKyAgIHVuc2lnbmVkIGNzX2Nsa19zdGF5
c19nYXRlZCA6IDE7Cj4gPiA+ICAgfTsKPiA+ID4KPiA+ID4gICAvKiBLZWVwIHRoZXNlIHNvcnRl
ZCB3aXRoIGVudW0gcHhhX3NzcF90eXBlICovIEBAIC0xNTYsNiArMTYyLDcgQEAKPiA+ID4gc3Rh
dGljIGNvbnN0IHN0cnVjdCBscHNzX2NvbmZpZyBscHNzX3BsYXRmb3Jtc1tdID0gewo+ID4gPiAg
ICAgICAgICAgICAudHhfdGhyZXNob2xkX2hpID0gNTYsCj4gPiA+ICAgICAgICAgICAgIC5jc19z
ZWxfc2hpZnQgPSA4LAo+ID4gPiAgICAgICAgICAgICAuY3Nfc2VsX21hc2sgPSAzIDw8IDgsCj4g
PiA+ICsgICAgICAgICAgIC5jc19jbGtfc3RheXNfZ2F0ZWQgPSB0cnVlLAo+ID4gPiAgICAgfSwK
PiA+ID4gICB9Owo+ID4gPgo+ID4gPiBAQCAtMzgzLDYgKzM5MCwyMiBAQCBzdGF0aWMgdm9pZCBs
cHNzX3NzcF9jc19jb250cm9sKHN0cnVjdCBzcGlfZGV2aWNlCj4gPiAqc3BpLCBib29sIGVuYWJs
ZSkKPiA+ID4gICAgIGVsc2UKPiA+ID4gICAgICAgICAgICAgdmFsdWUgfD0gTFBTU19DU19DT05U
Uk9MX0NTX0hJR0g7Cj4gPiA+ICAgICBfX2xwc3Nfc3NwX3dyaXRlX3ByaXYoZHJ2X2RhdGEsIGNv
bmZpZy0+cmVnX2NzX2N0cmwsIHZhbHVlKTsKPiA+ID4gKyAgIGlmIChjb25maWctPmNzX2Nsa19z
dGF5c19nYXRlZCkgewo+ID4gPiArICAgICAgICAgICB1MzIgY2xrZ2F0ZTsKPiA+ID4gKwo+ID4g
PiArICAgICAgICAgICAvKgo+ID4gPiArICAgICAgICAgICAgKiBDaGFuZ2luZyBDUyBhbG9uZSB3
aGVuIGR5bmFtaWMgY2xvY2sgZ2F0aW5nIGlzIG9uIHdvbid0Cj4gPiA+ICsgICAgICAgICAgICAq
IGFjdHVhbGx5IGZsaXAgQ1MgYXQgdGhhdCB0aW1lLiBUaGlzIHJ1aW5zIFNQSSB0cmFuc2ZlcnMK
PiA+ID4gKyAgICAgICAgICAgICogdGhhdCBzcGVjaWZ5IGRlbGF5cywgb3IgaGF2ZSBubyBkYXRh
LiBUb2dnbGUgdGhlIGNsb2NrIG1vZGUKPiA+ID4gKyAgICAgICAgICAgICogdG8gZm9yY2Ugb24g
YnJpZWZseSB0byBwb2tlIHRoZSBDUyBwaW4gdG8gbW92ZS4KPiA+ID4gKyAgICAgICAgICAgICov
Cj4gPiA+ICsgICAgICAgICAgIGNsa2dhdGUgPSBfX2xwc3Nfc3NwX3JlYWRfcHJpdihkcnZfZGF0
YSwKPiA+IExQU1NfUFJJVl9DTE9DS19HQVRFKTsKPiA+ID4gKyAgICAgICAgICAgdmFsdWUgPSAo
Y2xrZ2F0ZSAmIH5MUFNTX1BSSVZfQ0xPQ0tfR0FURV9DTEtfQ1RMX01BU0spCj4gPiB8Cj4gPiA+
ICsgICAgICAgICAgICAgICAgICAgTFBTU19QUklWX0NMT0NLX0dBVEVfQ0xLX0NUTF9GT1JDRV9P
TjsKPiA+ID4gKwo+ID4gPiArICAgICAgICAgICBfX2xwc3Nfc3NwX3dyaXRlX3ByaXYoZHJ2X2Rh
dGEsIExQU1NfUFJJVl9DTE9DS19HQVRFLAo+ID4gdmFsdWUpOwo+ID4gPiArICAgICAgICAgICBf
X2xwc3Nfc3NwX3dyaXRlX3ByaXYoZHJ2X2RhdGEsIExQU1NfUFJJVl9DTE9DS19HQVRFLAo+ID4g
Y2xrZ2F0ZSk7Cj4gPiA+ICsgICB9Cj4gPiA+ICAgfQo+ID4gPgo+ID4gSSB3b25kZXIgaXMgaXQg
ZW5vdWdoIHRvIGhhdmUgdGhpcyBxdWljayB0b2dnbGluZyBvbmx5IG9yIGlzIHRpbWUgb3IgYWN0
dWFsbHkKPiA+IG51bWJlciBvZiBjbG9jayBjeWNsZXMgZGVwZW5kZW50PyBOb3cgdGhlcmUgaXMg
bm8gZGVsYXkgYmV0d2VlbiBidXQgSSdtCj4gPiB0aGlua2luZyBpZiBpdCBuZWVkcyBjZXJ0YWlu
IG51bWJlciBjeWNsZXMgZG9lcyB0aGlzIHN0aWxsIHdvcmsgd2hlbiB1c2luZyBsb3cKPiA+IHNz
cF9jbGsgcmF0ZXMgc2ltaWxhciB0aGFuIGluIGNvbW1pdCBkMDI4M2ViMmRiYzEgKCJzcGk6Cj4g
PiBweGEyeHg6IEFkZCBvdXRwdXQgY29udHJvbCBmb3IgbXVsdGlwbGUgSW50ZWwgTFBTUyBjaGlw
IHNlbGVjdHMiKS4KPiA+Cj4gPiBJJ20gdGhpbmtpbmcgY2FuIHRoaXMgYmUgZG9uZSBvbmx5IG9u
Y2UgYWZ0ZXIgcmVzdW1lIGFuZCBtYXkgb3RoZXIgTFBTUwo+ID4gYmxvY2tzIG5lZWQgdGhlIHNh
bWU/IEkuZS4gc2hvdWxkIHRoaXMgYmUgZG9uZSBpbiBkcml2ZXJzL21mZC9pbnRlbC1scHNzLmM/
Cj4gPgo+IFRoaXMgYmVoYXZpb3IgaXMgc2VlbiBhZnRlciBTMGl4IHJlc3VtZSwgYnV0IGl0IGlz
IG5vdCBzZWVuIGFmdGVyIFMzIHJlc3VtZS4KPiBJIGFtIHRoaW5raW5nIHRoYXQgaXQgaGFwcGVu
cyBiZWNhdXNlIHdlIGFyZSBub3QgZW5hYmxpbmcgdGhlIFNTUCBhZnRlciByZXN1bWUuCj4gSXQg
aXMgZGVmZXJyZWQgdW50aWwgd2UgbmVlZCB0byBzZW5kIGRhdGEuIEJ5IGVuYWJsaW5nIHRoZSBT
U1AgaW4gcmVzdW1lLCBJIGRvbuKAmXQgc2VlIHRoZSBpc3N1ZS4KPiBGb3IgUzMsIEkgdGhpbmsg
QklPUyByZS1lbmFibGVzIHRoZSBTU1AgaW4gcmVzdW1lIGZsb3cuCj4KPiA+IEphcmtrbwo+Cj4g
UmVnYXJkcywKPiBTaG9iaGl0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
