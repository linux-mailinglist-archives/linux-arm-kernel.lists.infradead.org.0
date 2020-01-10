Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395341367A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 07:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OB/gUNrQkWYLEkGckmL+R/lPwlDRzcqdX8SaLCEBcT4=; b=J3hdi03ajFEGjFf58THjeVnMP
	ic2XnFckW4/IOiXqDWoLrwolJlYDi4HGz1ENoF1VtvnkvCTYpfO/5ivBUIN9UHnpB3vsYMexQHIoM
	YE7ome9a7Cb75afs//HLa6fpjzxAoQEJ43UiHg1L0mw7MK3y5mHECtIaZalduUDAKs7/69y0+C5tZ
	txBxpt9CFX2oC5FzX5tFajs0dM5T3miiAp7zxZgisluvTSHGI85NwLgFYVVsSDE1Jp7lOb2rbykKT
	fTEfKUlCsyWe0mV6pAEHAWH1i5YD6mwLw1wJ0/xt8WRIOW/eood/daJZ0WhP93BCJdoO84CBiaAOQ
	A351oOVMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipo3S-0004cm-Op; Fri, 10 Jan 2020 06:45:58 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipo3L-0004cA-Je
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 06:45:53 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47vD5S13wRz9v3tv;
 Fri, 10 Jan 2020 07:45:48 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ueN7Vpxn; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id Av3l7EVHXBCa; Fri, 10 Jan 2020 07:45:48 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47vD5R6Z0Hz9v3tj;
 Fri, 10 Jan 2020 07:45:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578638747; bh=5TApiD5N/34vXaM+pQ7UUlq0/+wq9o7jjNc+pK8cRCg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ueN7VpxnzBcnWuZoF/iIk0abFzI/Og6E2TcMJ9xPs+8bq1JLbuwjMI10oN+xH1GW4
 DzTR5wk+czh2b56nyJo+0UKVXRL7LBJYds2dWPvb77f70oXNepmKK0hmzElSjKYQPC
 5TkwvFKiglrjZkvvPDDUdnzAbqHeggFMFpJlVGmE=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C0BAF8B77D;
 Fri, 10 Jan 2020 07:45:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 7nJRtiLkHgXr; Fri, 10 Jan 2020 07:45:48 +0100 (CET)
Received: from [172.25.230.102] (po15451.idsi0.si.c-s.fr [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 4C2CD8B755;
 Fri, 10 Jan 2020 07:45:45 +0100 (CET)
Subject: Re: Surprising code generated for vdso_read_begin()
To: Segher Boessenkool <segher@kernel.crashing.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
Date: Fri, 10 Jan 2020 07:45:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200109200733.GS3191@gate.crashing.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_224551_795008_BD9888AA 
X-CRM114-Status: GOOD (  10.84  )
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
Cc: arnd@arndb.de, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 x86@kernel.org, linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAwOS8wMS8yMDIwIMOgIDIxOjA3LCBTZWdoZXIgQm9lc3Nlbmtvb2wgYSDDqWNyaXTCoDoK
PiBPbiBUaHUsIEphbiAwOSwgMjAyMCBhdCAwNTo1MjozNFBNICswMDAwLCBDaHJpc3RvcGhlIExl
cm95IHdyb3RlOgo+PiBXb25kZXJpbmcgd2h5IHdlIGdldCBzb21ldGhpbmcgc28gY29tcGxpY2F0
ZWQvcmVkdW5kYW50IGZvcgo+PiB2ZHNvX3JlYWRfYmVnaW4oKSA8aW5jbHVkZS92ZHNvL2hlbHBl
cnMuaD4KPj4KPj4gc3RhdGljIF9fYWx3YXlzX2lubGluZSB1MzIgdmRzb19yZWFkX2JlZ2luKGNv
bnN0IHN0cnVjdCB2ZHNvX2RhdGEgKnZkKQo+PiB7Cj4+IAl1MzIgc2VxOwo+Pgo+PiAJd2hpbGUg
KChzZXEgPSBSRUFEX09OQ0UodmQtPnNlcSkpICYgMSkKPj4gCQljcHVfcmVsYXgoKTsKPj4KPj4g
CXNtcF9ybWIoKTsKPj4gCXJldHVybiBzZXE7Cj4+IH0KPj4KPj4KPj4gICA2ZTA6ICAgODEgMDUg
MDAgZjAgICAgIGx3eiAgICAgcjgsMjQwKHI1KQo+PiAgIDZlNDogICA3MSAwOSAwMCAwMSAgICAg
YW5kaS4gICByOSxyOCwxCj4+ICAgNmU4OiAgIDQxIDgyIDAwIDEwICAgICBiZXEgICAgIDZmOCA8
X19jX2tlcm5lbF9jbG9ja19nZXR0aW1lKzB4MTU4Pgo+PiAgIDZlYzogICA4MSAwNSAwMCBmMCAg
ICAgbHd6ICAgICByOCwyNDAocjUpCj4+ICAgNmYwOiAgIDcxIDBhIDAwIDAxICAgICBhbmRpLiAg
IHIxMCxyOCwxCj4+ICAgNmY0OiAgIDQwIDgyIGZmIGY4ICAgICBibmUgICAgIDZlYyA8X19jX2tl
cm5lbF9jbG9ja19nZXR0aW1lKzB4MTRjPgo+PiAgIDZmODoKPj4KPj4gcjUgYmVpbmcgdmQgcG9p
bnRlcgo+Pgo+PiBXaHkgdGhlIGZpcnN0IHRyaXBsZXQsIG5vdCBvbmx5IHRoZSBzZWNvbmQgdHJp
cGxldCA/IFNvbWV0aGluZyB3cm9uZwo+PiB3aXRoIHVzaW5nIFJFQURfT05DRSgpIGZvciB0aGF0
ID8KPiAKPiBJdCBsb29rcyBsaWtlIHRoZSBjb21waWxlciBkaWQgbG9vcCBwZWVsaW5nLiAgV2hh
dCBHQ0MgdmVyc2lvbiBpcyB0aGlzPwo+IFBsZWFzZSB0cnkgY3VycmVudCB0cnVuayAodG8gYmVj
b21lIEdDQyAxMCksIG9yIGF0IGxlYXN0IEdDQyA5Pwo+IAoKSXQgaXMgd2l0aCBHQ0MgNS41Cgpo
dHRwczovL21pcnJvcnMuZWRnZS5rZXJuZWwub3JnL3B1Yi90b29scy9jcm9zc3Rvb2wvIGRvZXNu
J3QgaGF2ZSBtb3JlIApyZWNlbnQgdGhhbiA4LjEKCldpdGggOC4xLCB0aGUgcHJvYmxlbSBkb2Vz
bid0IHNob3cgdXAuCgpUaGFua3MKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
