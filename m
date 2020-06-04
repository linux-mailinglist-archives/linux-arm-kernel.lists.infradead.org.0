Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A901EDDD6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:14:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOcnq4nYMc2Pkn9al7AJHsLQawHI14OGOvBmRfMQOv4=; b=pduiiHAS+jcCG0
	n52r4k0Tpt9fEWWumqnOIN/hU+kw7U97VqVQ3O+I3oIfstN4hHatlXPfiJDnTDfDbKCfku/5Hxn5Q
	yb3rHagJZwYmWuHiIHts/raunq9YSFqZYqbHxAdbHRc6qxjWmxqnFpDmSBGzjrOQClRYET10kiwYo
	HHhJrw+Qr0lDjurt4k+UpjGuLhuo5QUhXs7gePHs/ktN3hgInFp62VEABRLzqeLCjz2sMS84KOPXQ
	7rC2Gf3BwDNh6gEqYWpBKB+VBJ3jH2yOTR36U8IrXi1Dndr0YB8TfmqApQ2mPic50MrZNeq4meYMi
	lWTqPJZ0tAlWSDMc+cfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgk5I-0003Ji-P4; Thu, 04 Jun 2020 07:14:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgk59-0003IX-KW; Thu, 04 Jun 2020 07:14:32 +0000
Received: from willie-the-truck (unknown [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9169206DC;
 Thu,  4 Jun 2020 07:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591254871;
 bh=pQiZ65/cUBUWSQ69Pq08Vdl1ay+BjdbFbkajb1aT1Ec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IUcXCOKg4TAj9iHXF8yeI1elrDXEEOp/4uPhjL9xePaNoUijZ0Xw57hLkjCd6K0Ji
 MF/F1DTXZPJa4cak++xV07+8vXwvrMiMNiR89fi8bUUIn2Yr8MPrUKieaS2ja6M+Wj
 XtO6FKhx9/TE3nEhuVik1in0DW+6fQq0DVqKhuu8=
Date: Thu, 4 Jun 2020 08:14:11 +0100
From: Will Deacon <will@kernel.org>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
Message-ID: <20200604071410.GA30155@willie-the-truck>
References: <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
 <303695cc-d3ea-9f51-1489-07d27d4253d4@oracle.com>
 <CACi5LpOZzdfEKUYAfYxtgeUbk9K6YFVUKLaGS8XoS0kForjH9A@mail.gmail.com>
 <F64A309C-B9C0-45F2-A50D-D677005C33A6@oracle.com>
 <CAJ2QiJJE-jeRL1HPUZCwi1LtV9CBMmYrsOaS6vX1R1sJ6Z1t8g@mail.gmail.com>
 <6EA47B07-5119-49DF-9980-12A2066F22CA@oracle.com>
 <CAJ2QiJJhUCnobrMHui5=6zLzgy3KsoPxrqiH_oYT8Jhb5MkmbA@mail.gmail.com>
 <8463464e-5461-f328-621c-bacc6a3b88dd@huawei.com>
 <8E0D45DC-12BF-437D-A342-03E974D9C6D4@oracle.com>
 <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpN-+NRnaDoWWWidbzma8BNzmofA5FQBV=cPF1Mc84FpFg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_001431_710349_F1FCB193 
X-CRM114-Status: GOOD (  24.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 Prabhakar Kushwaha <prabhakar.pkin@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Baoquan He <bhe@redhat.com>, Devicetree List <devicetree@vger.kernel.org>,
 chenzhou <chenzhou10@huawei.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, RuiRui Yang <dyoung@redhat.com>,
 Ingo Molnar <mingo@redhat.com>, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMDQsIDIwMjAgYXQgMDE6MTc6MDZBTSArMDUzMCwgQmh1cGVzaCBTaGFybWEg
d3JvdGU6Cj4gT24gV2VkLCBKdW4gMywgMjAyMCBhdCA5OjAzIFBNIEpvaG4gRG9ubmVsbHkgPGpv
aG4ucC5kb25uZWxseUBvcmFjbGUuY29tPiB3cm90ZToKPiA+ID4gT24gSnVuIDMsIDIwMjAsIGF0
IDg6MjAgQU0sIGNoZW56aG91IDxjaGVuemhvdTEwQGh1YXdlaS5jb20+IHdyb3RlOgo+ID4gPiBP
biAyMDIwLzYvMyAxOTo0NywgUHJhYmhha2FyIEt1c2h3YWhhIHdyb3RlOgo+ID4gPj4+PiBkaWZm
IC0tZ2l0IGEva2VybmVsL2NyYXNoX2NvcmUuYyBiL2tlcm5lbC9jcmFzaF9jb3JlLmMKPiA+ID4+
Pj4gaW5kZXggN2Y5ZTVhNmRjNDhjLi5iZDY3YjkwZDM1YmQgMTAwNjQ0Cj4gPiA+Pj4+IC0tLSBh
L2tlcm5lbC9jcmFzaF9jb3JlLmMKPiA+ID4+Pj4gKysrIGIva2VybmVsL2NyYXNoX2NvcmUuYwo+
ID4gPj4+PiBAQCAtMzU0LDcgKzM1NCw3IEBAIGludCBfX2luaXQgcmVzZXJ2ZV9jcmFzaGtlcm5l
bF9sb3codm9pZCkKPiA+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAwOwo+ID4g
Pj4+PiAgICAgICB9Cj4gPiA+Pj4+Cj4gPiA+Pj4+IC0gICAgICAgbG93X2Jhc2UgPSBtZW1ibG9j
a19maW5kX2luX3JhbmdlKDAsIDFVTEwgPDwgMzIsIGxvd19zaXplLCBDUkFTSF9BTElHTik7Cj4g
PiA+Pj4+ICsgICAgICAgbG93X2Jhc2UgPSBtZW1ibG9ja19maW5kX2luX3JhbmdlKDAsMHhjMDAw
MDAwMCwgbG93X3NpemUsIENSQVNIX0FMSUdOKTsKPiA+ID4+Pj4gICAgICAgaWYgKCFsb3dfYmFz
ZSkgewo+ID4gPj4+PiAgICAgICAgICAgICAgIHByX2VycigiQ2Fubm90IHJlc2VydmUgJWxkTUIg
Y3Jhc2hrZXJuZWwgbG93IG1lbW9yeSwKPiA+ID4+Pj4gcGxlYXNlIHRyeSBzbWFsbGVyIHNpemUu
XG4iLAo+ID4gPj4+PiAgICAgICAgICAgICAgICAgICAgICAodW5zaWduZWQgbG9uZykobG93X3Np
emUgPj4gMjApKTsKPiA+ID4+Pj4KPiA+ID4+Pj4KPiA+ID4+PiAgICBJIHN1c3BlY3QgIDB4YzAw
MDAwMDAgIHdvdWxkIG5lZWQgdG8gYmUgYSBDT05GSUcgaXRlbSAgYW5kIG5vdCBoYXJkLWNvZGVk
Lgo+ID4gPj4+Cj4gPiA+PiBpZiB5b3UgY29uc2lkZXIgdGhpcyBhcyB2YWxpZCBjaGFuZ2UsICBj
YW4geW91IHBsZWFzZSBpbmNvcnBvcmF0ZSBhcwo+ID4gPj4gcGFydCBvZiB5b3VyIHBhdGNoLXNl
dC4KPiA+ID4KPiA+ID4gQWZ0ZXIgY29tbWl0IDFhOGUxY2VmNyAoImFybTY0OiB1c2UgYm90aCBa
T05FX0RNQSBhbmQKPiA+ID4gWk9ORV9ETUEzMiIp77yMdGhlIDAtNEcgbWVtb3J5IGlzIHNwbGl0
ZWQgdG8gRE1BIFttZW0KPiA+ID4gMHgwMDAwMDAwMDAwMDAwMDAwLTB4MDAwMDAwMDAzZmZmZmZm
Zl0gYW5kIERNQTMyIFttZW0KPiA+ID4gMHgwMDAwMDAwMDQwMDAwMDAwLTB4MDAwMDAwMDBmZmZm
ZmZmZl0gb24gYXJtNjQuCj4gPiA+Cj4gPiA+IEZyb20gdGhlIGFib3ZlIGRpc2N1c3Npb24sIG9u
IHlvdXIgcGxhdGZvcm0sIHRoZSBsb3cgY3Jhc2hrZXJuZWwgZmFsbAo+ID4gPiBpbiBETUEzMiBy
ZWdpb24sIGJ1dCB5b3VyIGVudmlyb25tZW50IG5lZWRzIHRvIGFjY2VzcyBETUEgcmVnaW9uLCBz
bwo+ID4gPiB0aGVyZSBpcyB0aGUgY2FsbCB0cmFjZS4KPiA+ID4KPiA+ID4gSSBoYXZlIGEgcXVl
c3Rpb24sIHdoeSBkbyB5b3UgY2hvb3NlIDB4YzAwMDAwMDAgaGVyZT8KPiA+ID4KPiA+ID4gQmVz
aWRlcywgdGhpcyBpcyBjb21tb24gY29kZSwgd2UgYWxzbyBuZWVkIHRvIGNvbnNpZGVyIGFib3V0
IHg4Ni4KPiA+ID4KPiA+Cj4gPiAgKyBuc2FlbnpqdWxpZW5uZUBzdXNlLmRlCj4gPgo+ID4gICBF
eGFjdGx5IC4gIFRoaXMgaXMgd2h5IGl0IG5lZWRzIHRvIGJlIGEgQ09ORklHIG9wdGlvbiBmb3Ig
IFJhc3BiZXJyeQo+ID4gICAuLiwgIG9yIGRldmljZSB0cmVlIG9wdGlvbi4KPiA+Cj4gPgo+ID4g
ICBXZSBjb3VsZCByZXZlcnQgMWE4ZTFjZWY3IHNpbmNlIGl0IGJyb2tlICBBcm0ga2R1bXAgdG9v
Lgo+IAo+IFdlbGwsIHVuZm9ydHVuYXRlbHkgdGhlIHBhdGNoIGZvciBjb21taXQgMWE4ZTFjZWY3
NjAzICgiYXJtNjQ6IHVzZQo+IGJvdGggWk9ORV9ETUEgYW5kIFpPTkVfRE1BMzIiKSB3YXMgbm90
IENjJ2VkIHRvIHRoZSBrZXhlYyBtYWlsaW5nCj4gbGlzdCwgdGh1cyB3ZSBjb3VsZG4ndCBnZXQg
bWFueSBleWVzIG9uIGl0IGZvciBhIHRob3JvdWdoIHJldmlldyBmcm9tCj4ga2V4ZWMva2R1bXAg
cC1vLXYuCj4gCj4gQWxzbyB3ZSBoaXN0b3JpY2FsbHkgbmV2ZXIgaGFkIGRpc3RpbmN0aW9uIGlu
IGNvbW1vbiBhcmNoIGNvZGUgb24gdGhlCj4gYmFzaXMgb2YgdGhlIGludGVuZGVkIGVuZCB1c2Ut
Y2FzZTogZW1iZWRkZWQsIHNlcnZlciBvciBhdXRvbW90aXZlLCBzbwo+IEkgYW0gbm90IHN1cmUg
aW50cm9kdWNpbmcgYSBSYXNwYmVycnkgc3BlY2lmaWMgQ09ORklHIG9wdGlvbiB3b3VsZCBiZQo+
IGEgZ29vZCBpZGVhLgoKUmlnaHQsIHdlIG5lZWQgYSBmaXggdGhhdCB3b3JrcyBmb3IgZXZlcnli
b2R5LCBzaW5jZSB3ZSB0cnkgaGFyZCBmb3IgYQpzaW5nbGUgSW1hZ2UgdGhhdCB3b3JrcyBmb3Ig
YWxsIHBsYXRmb3Jtcy4KCldoYXQgSSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCBpcyB3aHksIHdp
dGggQ2hlbidzIHBhdGNoZXMgYXBwbGllZCwgd2UgY2FuJ3QKanVzdCBrZWVwIHRoZSBjcmFzaGtl
cm5lbCBvdXQgb2YgdGhlIERNQSB6b25lcyBhbHRvZ2V0aGVyIHdoZW4gbm8gYmFzZSBpcwpzcGVj
aWZpZWQuIEkgZ3Vlc3MgSSdsbCBqdXN0IGxvb2sgb3V0IGZvciB5b3VyIHBhdGNoIQoKV2lsbAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
