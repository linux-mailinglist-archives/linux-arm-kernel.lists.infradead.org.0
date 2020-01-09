Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BC6135D07
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bh+4Iha5TSDUE2jJ6izcazNRdN1METcZJ8m8VgTyNaM=; b=IBQ/DeHOO4thbnlUPP5449w11
	+b4ID9U1RM8vF477UBhRd+3vhuU1gwtao3QTJ2tB9e8Url9O55/ib+95OCab8qlSyEgn2JfsgsUDs
	H6eFUh/vYpoOQKqZ4ZiA6ni9d8PM0ppmAbFT3cO+fbKRTITyNV4sAVEq4a4s6rqgJ50V8nKX445qd
	kapJyvnz20g73iJyQ1sN3QEpMX49jpi3N6nesn78ZjccRwEsQYtYTZ1ZUqw5IwTpuSwYzXx6G9B7l
	50aBl7bxQu/9bU5b2eNdydWgnVSI7EhSYadW4YDe/5qae2uU2Khq6yKczNNI36cFUrucapPpLPDzr
	u7tPvZ+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZyf-00049n-Dy; Thu, 09 Jan 2020 15:44:05 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZyT-00048k-VQ
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:43:55 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47tr4g08pGz9v3p8;
 Thu,  9 Jan 2020 16:43:47 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ilmuuzlF; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 6FBkiugPM--3; Thu,  9 Jan 2020 16:43:46 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47tr4f66Yyz9v3p6;
 Thu,  9 Jan 2020 16:43:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578584626; bh=iw8kkZomOhkO3o0LAtBm1SIFpsx8uEZAgoFK9Pp3LQw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ilmuuzlFcmIFuyVy1qltF6zJgIcY/QacfPR0xgx+hahGZEzf7+zkFRtCPK4jF6ltQ
 nRWBOULOE0hyYF+PcbYtJB7Kir2kWT7xsuCcCiEPJbWT5u/ZFWxD61ZGmkkD+SGawA
 ICWLD/eJM+3BG7VMgWcfX+y95rICvukbD7i5WdGw=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 62C3B8B82B;
 Thu,  9 Jan 2020 16:43:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id Dt_XbitFJ43g; Thu,  9 Jan 2020 16:43:48 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 266608B828;
 Thu,  9 Jan 2020 16:43:47 +0100 (CET)
Subject: Re: [RFC PATCH v2 01/10] lib: vdso: ensure all arches have 32bit
 fallback
To: Arnd Bergmann <arnd@arndb.de>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <47701b5fb73cf536db074031db8e6e3fa3695168.1577111365.git.christophe.leroy@c-s.fr>
 <CAK8P3a0QGtjygLJUWX_1-s1vfCzE6UoOzrb+OZWwjaBdh=RpVQ@mail.gmail.com>
 <CAK8P3a1gHvW2XEMDSHCcdOQ8NSs3iHk9GpujwkWZnnZ0dnw96w@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <0d8ffa6f-00fa-aefe-d255-b635fb90497f@c-s.fr>
Date: Thu, 9 Jan 2020 16:43:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1gHvW2XEMDSHCcdOQ8NSs3iHk9GpujwkWZnnZ0dnw96w@mail.gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_074354_308062_AEBF2C01 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwMi8wMS8yMDIwIMOgIDEyOjI5LCBBcm5kIEJlcmdtYW5uIGEgw6ljcml0wqA6Cj4gT24g
TW9uLCBEZWMgMzAsIDIwMTkgYXQgMToyNyBQTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRl
PiB3cm90ZToKPj4gT24gTW9uLCBEZWMgMjMsIDIwMTkgYXQgMzozMSBQTSBDaHJpc3RvcGhlIExl
cm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4+PiArc3RhdGljIF9fYWx3YXlz
X2lubGluZQo+Pj4gK2xvbmcgY2xvY2tfZ2V0cmVzMzJfZmFsbGJhY2soY2xvY2tpZF90IF9jbGtp
ZCwgc3RydWN0IG9sZF90aW1lc3BlYzMyICpfdHMpCj4+PiArewo+Pj4gKyAgICAgICBzdHJ1Y3Qg
X19rZXJuZWxfdGltZXNwZWMgdHM7Cj4+PiArICAgICAgIGludCByZXQgPSBjbG9ja19nZXRyZXNf
ZmFsbGJhY2soY2xvY2ssICZ0cyk7Cj4+PiArCj4+PiArICAgICAgIGlmIChsaWtlbHkoIXJldCAm
JiBfdHMpKSB7Cj4+PiArICAgICAgICAgICAgICAgX3RzLT50dl9zZWMgPSB0cy50dl9zZWM7Cj4+
PiArICAgICAgICAgICAgICAgX3RzLT50dl9uc2VjID0gdHMudHZfbnNlYzsKPj4+ICsgICAgICAg
fQo+Pj4gKyAgICAgICByZXR1cm4gcmV0Owo+Pj4gK30KPj4KPj4gUGxlYXNlIGNoYW5nZSB0aGVz
ZSB0byBjYWxsIF9fTlJfY2xvY2tfZ2V0dGltZSBhbmQgX19OUl9jbG9ja19nZXRyZXNfdGltZQo+
PiBpbnN0ZWFkIG9mIF9fTlJfY2xvY2tfZ2V0dGltZTY0L19fTlJfY2xvY2tfZ2V0cmVzX3RpbWU2
NCBmb3IgbXVsdGlwbGUgcmVhc29ucy4KPj4KPj4gLSBXaGVuIGRvaW5nIG1pZ3JhdGlvbiBiZXR3
ZWVuIGNvbnRhaW5lcnMsIHRoZSB2ZHNvIG1heSBnZXQgY29waWVkIGludG8KPj4gICAgYW4gYXBw
bGljYXRpb24gcnVubmluZyBvbiBhIGtlcm5lbCB0aGF0IGRvZXMgbm90IHN1cHBvcnQgdGhlIHRp
bWU2NAo+PiAgICB2YXJpYW50cywgYW5kIHRoZW4gdGhlIGZhbGxiYWNrIGZhaWxzLgo+Pgo+PiAt
IFdoZW4gQ09ORklHX0NPTVBBVF8zMkJJVF9USU1FIGlzIGRpc2FibGVkLCB0aGUgdGltZTMyIHN5
c2NhbGxzCj4+ICAgIHJldHVybiAtRU5PU1lTLCBhbmQgdGhlIHZkc28gdmVyc2lvbiBzaG91bGQg
aGF2ZSB0aGUgZXhhY3Qgc2FtZSBiZWhhdmlvcgo+PiAgICB0byBhdm9pZCBzdXJwcmlzZXMuIElu
IHBhcnRpY3VsYXIgYW4gYXBwbGljYXRpb24gdGhhdCBjaGVja3MgY2xvY2tfZ2V0dGltZSgpCj4+
ICAgIHRvIHNlZSBpZiB0aGUgdGltZTMyIGFyZSBpbiBwYXJ0IG9mIHRoZSBrZXJuZWwgd291bGQg
Z2V0IGFuIGluY29ycmVjdCByZXN1bHQKPj4gICAgaGVyZS4KPj4KPj4gYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS92ZHNvL2NvbXBhdF9nZXR0aW1lb2ZkYXkuaCBhbHJlYWR5IGRvZXMgdGhpcywKPj4g
SSB0aGluayB5b3UgY2FuIGp1c3QgY29weSB0aGUgaW1wbGVtZW50YXRpb24gb3IgZmluZCBhIHdh
eSB0byBzaGFyZSBpdC4KPiAKPiBUaGVyZSB3YXMgYSByZWxhdGVkIGRpc2N1c3Npb24gb24gdGhp
cyBhZnRlciBhIHZkc28gcmVncmVzc2lvbiBvbiBtaXBzLAo+IGFuZCBJIHN1Z2dlc3RlZCB0byBk
cm9wIHRoZSB0aW1lMzIgZnVuY3Rpb25zIGNvbXBsZXRlbHkgZnJvbSB0aGUKPiB2ZHNvIHdoZW4g
Q09ORklHX0NPTVBBVF8zMkJJVF9USU1FIGlzIGRpc2FibGVkLCBzdWNoIGFzCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvcG93ZXJwYy9rZXJuZWwvdmRzbzMyL3Zkc28zMi5sZHMuUwo+IGIvYXJjaC9w
b3dlcnBjL2tlcm5lbC92ZHNvMzIvdmRzbzMyLmxkcy5TCj4gaW5kZXggMDBjMDI1YmE0YTkyLi42
MDVmMjU5ZmEyNGMgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9wb3dlcnBjL2tlcm5lbC92ZHNvMzIvdmRz
bzMyLmxkcy5TCj4gKysrIGIvYXJjaC9wb3dlcnBjL2tlcm5lbC92ZHNvMzIvdmRzbzMyLmxkcy5T
Cj4gQEAgLTE0NSwxMCArMTQ1LDEyIEBAIFZFUlNJT04KPiAKPiAgICAgICAgICAgICAgICAgIF9f
a2VybmVsX2dldF9zeXNjYWxsX21hcDsKPiAgICNpZm5kZWYgQ09ORklHX1BQQ19CT09LM1NfNjAx
Cj4gKyNpZmRlZiBDT05GSUdfQ09NUEFUXzMyQklUX1RJTUUKPiAgICAgICAgICAgICAgICAgIF9f
a2VybmVsX2dldHRpbWVvZmRheTsKPiAgICAgICAgICAgICAgICAgIF9fa2VybmVsX2Nsb2NrX2dl
dHRpbWU7Cj4gICAgICAgICAgICAgICAgICBfX2tlcm5lbF9jbG9ja19nZXRyZXM7Cj4gICAgICAg
ICAgICAgICAgICBfX2tlcm5lbF90aW1lOwo+ICsjZW5kaWYKPiAgICAgICAgICAgICAgICAgIF9f
a2VybmVsX2dldF90YmZyZXE7Cj4gICAjZW5kaWYKPiAgICAgICAgICAgICAgICAgIF9fa2VybmVs
X3N5bmNfZGljYWNoZTsKPiAKPiBBbnkgb3BpbmlvbnMgb24gdGhpcz8gSWYgZXZlcnlvbmUgYWdy
ZWVzIHdpdGggdGhhdCBhcHByb2FjaCwgSSBjYW4KPiBzZW5kIGEgY3Jvc3MtYXJjaGl0ZWN0dXJl
IHBhdGNoIHRvIGRvIHRoaXMgZXZlcnl3aGVyZS4gSXQncyBwcm9iYWJseQo+IGJlc3QgdGhvdWdo
IGlmIENocmlzdG9waGUgYWRkcyB0aGF0IHRvIGhpcyBzZXJpZXMgYXMgaXQgdG91Y2hlcyBhIGxv
dAo+IG9mIHRoZSBzYW1lIGZpbGVzIGFuZCBJIHdvdWxkIHByZWZlciB0byBhdm9pZCBjb25mbGlj
dGluZyBjaGFuZ2VzLgo+IAoKSSBndWVzcyBpdCB3b3VsZCBiZSB3aXNlLgoKSSBkb24ndCB0aGlu
ayBteSBzZXJpZXMgdG8gc3dpdGNoIHBvd2VycGMgdG8gQyBWRFNPIHdpbGwgZ2V0IHJlYWR5IAph
bnl0aW1lIHNvb24sIGJlY2F1c2UgKGluIGFkZGl0aW9uIHRvIHRoZSBwZXJmb3JtYW5jZSBpbXBh
Y3QpIEknbSBoYXZpbmcgCmhhcmQgdGltZSB3aXRoIHRoZSAzMiBiaXRzIFZEU08gZm9yIFBQQzY0
LiBNYW55IG9mIHRoZSBwb3dlcnBjIGhlYWRlciAKZmlsZXMgdXNlZCBieSBsaWIvdmRzby9nZXR0
aW1lb2ZkYXkuYyBhcmUgbm90IHJlYWR5IGZvciBnZW5lcmF0aW5nIDMyIApiaXRzIGNvZGUgZm9y
IFBQQzY0LiBNYWluIHByb2JsZW0gaXMgdGhhdCBhdCBtYW55IHBsYWNlcywgI2lmZGVmIApDT05G
SUdfUFBDNjQgaXMgdXNlZCBpbnN0ZWFkIG9mICNpZmRlZiBfX3Bvd2VycGM2NF9fLiBUaGVyZSBh
cmUgYWxzbyAKc29tZSBDT05GSUcgb3B0aW9ucyBsaWtlIENPTkZJR19HRU5FUklDX0FUT01JQzY0
IHRoYXQgYXJlIHNlbGVjdGVkIG9ubHkgCndoZW4gQ09ORklHX1BQQzMyIGlzIHNldCwgYnV0IHdo
aWNoIGFyZSByZXF1aXJlZCBmb3IgYnVpbGRpbmcgdGhlIDMyIApiaXRzIFZEU08uIEZvciB0aGF0
IEkgZG9uJ3QgZXZlbiBrbm93IGhvdyB0byBkZWFsIHdpdGggaXQuCgpTbywgZmVlbCBmcmVlIHRv
IHNlbmQgeW91ciBwYXRjaCwgYW5kIGlmIG15IHNlcmllcyBjb21lcyBlYXJseSBlbm91Z2ggdG8g
CmNvbmZsaWN0LCBJJ2xsIG1hbmFnZSBpdC4KCkNocmlzdG9waGUKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
