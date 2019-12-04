Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04894112A0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 12:25:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dlgrj+7ha9U4IG1t2Gpi247QEhedOLXip/mQAIeSzz4=; b=T7scGMlDj3O0No
	dBKNkTqRGxqbHZ5BCac8d9XvhN1VVaeyh1BE96ZVczDtFlXsfl6eF62dk40eV8QVvKeB/Od/C/g5g
	ugfE5jQj79Bn1YychXx5UgqDKMwDH07aND/lQvbFS0LZ1SIRcgn6EhLSZ8pErurmfZ6h+BLMz5RK6
	mswaYT3ppiuXBVCaC8KhAyXIWIDNFbKQvapVJj9WxGx55mPK05VmtfeuSa84RKLOdIE6XmdLrzxHT
	vEur5LbaMfN2BOWv951mQ7pUfqnZvq9nzUN1VxwTt4K+zuwv1vth+gfUF+N72Y3aQzwDSb2NJ+gmF
	Z+nym7ag5aJF+RMfen1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icSmS-0003YM-Ff; Wed, 04 Dec 2019 11:25:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icSmJ-0002Y3-FT; Wed, 04 Dec 2019 11:25:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D53B0B1C0;
 Wed,  4 Dec 2019 11:25:02 +0000 (UTC)
Subject: Re: [PATCH 1/6] dt-bindings: clock: add bindings for RTD1619 clocks
To: James Tai <james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
 <20191203074513.9416-2-james.tai@realtek.com>
 <f069747b-7f10-f47c-684d-11138b8fd129@suse.de>
 <1130d9316ffb49c8a99b9b2c2d8fa90f@realtek.com>
From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <da35686d-2584-a13f-b56e-ba3ff9768113@suse.de>
Date: Wed, 4 Dec 2019 12:25:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <1130d9316ffb49c8a99b9b2c2d8fa90f@realtek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_032507_680302_37F7D4CD 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?RWRnYXIgTGVlIFvmnY7mib/oq61d?= <cylee12@realtek.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXMsCgpbZml4aW5nIFBhbG1lcl0KCkFtIDA0LjEyLjE5IHVtIDA1OjExIHNjaHJpZWIg
SmFtZXMgVGFpOgo+PiBBbSAwMy4xMi4xOSB1bSAwODo0NSBzY2hyaWViIEphbWVzIFRhaToKPj4+
IEZyb206IGN5bGVlMTIgPGN5bGVlMTJAcmVhbHRlay5jb20+Cj4+Cj4+IFBsZWFzZSBmaXggdGhl
IGF1dGhvciAoZ2l0IGNvbW1pdCAtLWFtZW5kIC0tYXV0aG9yPSIuLi4iKSBhbmQgdXNlIGFuCj4+
IGFwcHJvcHJpYXRlIGdpdCBjb25maWcgc2V0dGluZyAoYW5kIGNvbW11bmljYXRpb24gdG8geW91
ciB0ZWFtKSB0byBhdm9pZCB0aGlzCj4+IHJlb2NjdXJyaW5nIGZvciBuZXcgY29tbWl0cyAtIGFs
cmVhZHkgcG9pbnRlZCBvdXQgdG8gSmFtZXMuCj4+Cj4+IEJUVyBJIHdvbmRlciB3aHkgd2UgaGF2
ZSBzbyBtYW55IHNlZW1pbmdseSB1bnJlbGF0ZWQgcGVvcGxlIGluIENDCj4+IChNZWRpYXRlaywg
UklTQy1WKSB0aGF0IHRoZSBwYXRjaGVzIGFuZCByZXNwb25zZXMga2VlcCBoYW5naW5nIGluIG1h
aWxpbmcgbGlzdAo+PiBtb2RlcmF0aW9uPwo+IAo+IEkgdXNlZCB0aGUgImdldF9tYWludGFpbmVy
LnBsIiB0byBmaW5kIHRoZSBlbWFpbCBhZGRyZXNzIG9mIG1haW50YWluZXJzLiBIb3dldmVyLCAK
PiBJJ20gc28gc29ycnkgZm9yIG1pc3Rha2VubHkgYWRkaW5nIHNvbWUgdW5yZWxhdGVkIHBlb3Bs
ZSB0byB0aGlzIG1haWwuCgpIZXJlJ3MgbXkgZ2l0LXNlbmQtZW1haWwgY2NjbWQgY29uZmlnIHRo
YXQgSSByZWNvbW1lbmQ6CgokIGdpdCBjb25maWcgc2VuZGVtYWlsLmNjY21kCnNjcmlwdHMvZ2V0
X21haW50YWluZXIucGwgLS1ub2dpdC1mYWxsYmFjayAtLW5vcm9sZXN0YXRzCgotLW5vZ2l0LWZh
bGxiYWNrIHN1cHByZXNzZXMgR2l0IGhpc3RvcnkgdG8gYmUgY2hlY2tlZCBmb3IgcHJldmlvdXMK
Y29udHJpYnV0b3JzLCBzYXZpbmcgdGltZSBhbmQgYXZvaWRpbmcgdW5yZWxhdGVkIG9yIG91dGRh
dGVkIHBlb3BsZS4KCi0tbm9yb2xlc3RhdHMgc3VwcHJlc3NlcyBleHRlbnNpdmUgIiguLi4pIiBj
b21tZW50cyBmb3IgdGhlIGVtYWlsCmFkZHJlc3Nlcywgd2hpY2ggbWlnaHQgd3JhcCBhbmQgYnJl
YWsgZHVyaW5nIHRyYW5zbWlzc2lvbiBvciB3aGVuIHBlb3BsZQpyZXBseS4KCkluIGFkZGl0aW9u
IHlvdSBvYnZpb3VzbHkgbmVlZCB0byBjb25maWd1cmUgc2VuZGVtYWlsLnRvLCBhbmQgeW91IG1h
eQp3YW50IHRvIGFkZCBtdWx0aXBsZSBjYyBsaW5lcyB0byBbc2VuZGVtYWlsXSBpbiB5b3VyIC5n
aXQvY29uZmlnIHRvCmVuc3VyZSBhbGwgbWFpbHMgaW5jbHVkaW5nIGNvdmVyIGxldHRlcnMgcmVh
Y2ggTEtNTCBhbmQgTEFLTUwsIHRvbzoKCiQgZ2l0IGNvbmZpZyAtLWdldC1hbGwgc2VuZGVtYWls
LnRvCmxpbnV4LXJlYWx0ZWstc29jQGxpc3RzLmluZnJhZGVhZC5vcmcKJCBnaXQgY29uZmlnIC0t
Z2V0LWFsbCBzZW5kZW1haWwuY2MKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
CmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcKCkZ1cnRoZXIsIHlvdSBuZWVkIHRvIGVuc3Vy
ZSB0aGF0IHlvdSBhcmUgc2VuZGluZyBmcm9tIHRoZSByaWdodCBicmFuY2gsCnNvIHRoYXQgdGhl
IGxhdGVzdCBNQUlOVEFJTkVSUyBmaWxlIGFuZCBzY3JpcHRzIGdldCB1c2VkLiBBcyBQYXVsCnBv
aW50ZWQgb3V0LCBQYWxtZXIncyBhZGRyZXNzIGlzIGZpeGVkIGluIGJvdGggbGludXgtbmV4dCBh
bmQgbGludXgsIHNvCml0IGlzIHJlYWxseSBwdXp6bGluZyB3aGVyZSB5b3UgZ290IHRoYXQgb2xk
IGFkZHJlc3MgZnJvbS4uLgoKTm90IHVuZGVyc3RhbmRpbmcgeW91ciBzZXR1cCwgeW91J2xsIGhh
dmUgdG8gZGVidWcgb24geW91ciBvd24gd2hlcmUKdGhvc2UgYWRkcmVzc2VzIGNhbWUgZnJvbS4g
VHJ5IGdpdCBzZW5kLWVtYWlsIC0tZHJ5LXJ1biB0byByZXZpZXcgdGhlIENDCmFkZHJlc3NlcyBi
ZWZvcmUgeW91IHNlbmQuIFlvdSBjb3VsZCBhbHNvIHRlbXBvcmFyaWx5IHVzZSAtLXJvbGVzdGF0
cyB0bwpzZWUgdGhlIE1BSU5UQUlORVJTIHNlY3Rpb24gdGhleSBjYW1lIGZyb20uCgpPbiB0aGUg
YnJpZ2h0IHNpZGUsIHRoaXMgdGltZSB5b3VyIHBhdGNoZXMgYXJyaXZlZCB0aHJlYWRlZCBjb3Jy
ZWN0bHkuCgpSZWdhcmRzLApBbmRyZWFzCgotLSAKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2Vy
bWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQpHRjogRmVs
aXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5iZXJnKQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
