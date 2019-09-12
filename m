Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D99B1277
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:52:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yQYWZx3EARJLqWrDf+9UlRrpDtIQJlk4jLfiyybGrBM=; b=bdTudI2uXfnIp5kNJMvgp56wO
	q3CEfXzpj7m9EKF/0p+zR0FYjCS0XiTFe1cPuK2h9bBLZChgyQGbRb/7PXKKpTEP0HU1I6XcVf891
	zFi/fZeWAOARceLnSvik5bSdFMGk1r+es1KleK0YWpt5cSFk82qR3BSOaGZEli/3u10s8r9wlswAa
	4Ovj3ZUqWtuEXdBQTV/rW350u1s6l9uRsh91FSsCsi3MELaO9T1UcDnP5h/m7g7aNwz6sRxI1+QEB
	zxm5FyA+BwAVuZqwyu1aVHMSrTQ/4Wl3LyYS+sMUnX0ZU5O0cDbFqCJKuiUiXArdA9PSEdqezZ67E
	2pLB7PUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ROp-00008n-13; Thu, 12 Sep 2019 15:52:47 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ROb-00008H-D7; Thu, 12 Sep 2019 15:52:35 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 46Tjvd4mf5z9v01v;
 Thu, 12 Sep 2019 17:52:29 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Xve/r2+a; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id A0Kfupm1sMQP; Thu, 12 Sep 2019 17:52:29 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 46Tjvd3M1wzB09bN;
 Thu, 12 Sep 2019 17:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1568303549; bh=8yNeYzD4hyXGy/cp3pkfdaOEeCFKo8dkfUfa1uQQNdw=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=Xve/r2+abfDHfuK0WIskaBB17UKxFk/oCvwXkkUF5Yo4BLlxGU81bDiG5ke88fbye
 BE8P5FDH9S654EK1eo6Y8b6n1X7xstmolnKTrzECKOGoc5E7ZdJ0fsFaCrbfijNknG
 8RziH8EmMIWjiObqTYaXwtz8qoLghxzrvqE5L7qA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 6ED6B8B945;
 Thu, 12 Sep 2019 17:52:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id pajkW6Q7ywER; Thu, 12 Sep 2019 17:52:30 +0200 (CEST)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 812188B941;
 Thu, 12 Sep 2019 17:52:22 +0200 (CEST)
Subject: Re: [PATCH V2 2/2] mm/pgtable/debug: Add test validating architecture
 page table helpers
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Anshuman Khandual <anshuman.khandual@arm.com>, linux-mm@kvack.org
References: <1568268173-31302-1-git-send-email-anshuman.khandual@arm.com>
 <1568268173-31302-3-git-send-email-anshuman.khandual@arm.com>
 <4cf31ca9-39e4-87e4-7eef-a6f3f0ea7576@c-s.fr>
 <31aa6043-3b11-a936-bf35-6ed84bff9304@c-s.fr>
Message-ID: <600a7c62-eea9-e26f-f7cf-f2103b7c228c@c-s.fr>
Date: Thu, 12 Sep 2019 17:52:21 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <31aa6043-3b11-a936-bf35-6ed84bff9304@c-s.fr>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_085233_738989_98DD0C01 
X-CRM114-Status: GOOD (  14.06  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-ia64@vger.kernel.org,
 linux-sh@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 James Hogan <jhogan@kernel.org>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Michal Hocko <mhocko@kernel.org>, Dave Hansen <dave.hansen@intel.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-s390@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>, x86@kernel.org,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>, Steven Price <Steven.Price@arm.com>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 linux-snps-arc@lists.infradead.org, Kees Cook <keescook@chromium.org>,
 Mark Brown <broonie@kernel.org>, "Kirill A . Shutemov" <kirill@shutemov.name>,
 Dan Williams <dan.j.williams@intel.com>, Vlastimil Babka <vbabka@suse.cz>,
 linux-arm-kernel@lists.infradead.org,
 Sri Krishna chowdary <schowdary@nvidia.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>, Mike Rapoport <rppt@linux.vnet.ibm.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMi8wOS8yMDE5IMOgIDE3OjM2LCBDaHJpc3RvcGhlIExlcm95IGEgw6ljcml0wqA6Cj4g
Cj4gCj4gTGUgMTIvMDkvMjAxOSDDoCAxNzowMCwgQ2hyaXN0b3BoZSBMZXJveSBhIMOpY3JpdMKg
Ogo+Pgo+Pgo+PiBPbiAwOS8xMi8yMDE5IDA2OjAyIEFNLCBBbnNodW1hbiBLaGFuZHVhbCB3cm90
ZToKPj4+IFRoaXMgYWRkcyBhIHRlc3QgbW9kdWxlIHdoaWNoIHdpbGwgdmFsaWRhdGUgYXJjaGl0
ZWN0dXJlIHBhZ2UgdGFibGUgCj4+PiBoZWxwZXJzCj4+PiBhbmQgYWNjZXNzb3JzIHJlZ2FyZGlu
ZyBjb21wbGlhbmNlIHdpdGggZ2VuZXJpYyBNTSBzZW1hbnRpY3MgCj4+PiBleHBlY3RhdGlvbnMu
Cj4+PiBUaGlzIHdpbGwgaGVscCB2YXJpb3VzIGFyY2hpdGVjdHVyZXMgaW4gdmFsaWRhdGluZyBj
aGFuZ2VzIHRvIHRoZSAKPj4+IGV4aXN0aW5nCj4+PiBwYWdlIHRhYmxlIGhlbHBlcnMgb3IgYWRk
aXRpb24gb2YgbmV3IG9uZXMuCj4+Pgo+Pj4gVGVzdCBwYWdlIHRhYmxlIGFuZCBtZW1vcnkgcGFn
ZXMgY3JlYXRpbmcgaXQncyBlbnRyaWVzIGF0IHZhcmlvdXMgCj4+PiBsZXZlbCBhcmUKPj4+IGFs
bCBhbGxvY2F0ZWQgZnJvbSBzeXN0ZW0gbWVtb3J5IHdpdGggcmVxdWlyZWQgYWxpZ25tZW50cy4g
SWYgbWVtb3J5IAo+Pj4gcGFnZXMKPj4+IHdpdGggcmVxdWlyZWQgc2l6ZSBhbmQgYWxpZ25tZW50
IGNvdWxkIG5vdCBiZSBhbGxvY2F0ZWQsIHRoZW4gYWxsIAo+Pj4gZGVwZW5kaW5nCj4+PiBpbmRp
dmlkdWFsIHRlc3RzIGFyZSBza2lwcGVkLgo+Pgo+PiBCdWlsZCBmYWlsdXJlIG9uIHBvd2VycGMg
Ym9vazNzLzMyLiBUaGlzIGlzIGJlY2F1c2UgYXNtL2hpZ2htZW0uaCBpcyAKPj4gbWlzc2luZy4g
SXQgY2FuJ3QgYmUgaW5jbHVkZWQgZnJvbSBhc20vYm9vazNzLzMyL3BndGFibGUuaCBiZWNhdXNl
IGl0IAo+PiBjcmVhdGVzIGNpcmN1bGFyIGRlcGVuZGVuY3kuIFNvIGl0IGhhcyB0byBiZSBpbmNs
dWRlZCBmcm9tIAo+PiBtbS9hcmNoX3BndGFibGVfdGVzdC5jCj4gCj4gSW4gZmFjdCBpdCBpcyA8
bGludXgvaGlnaG1lbS5oPiB0aGF0IG5lZWRzIHRvIGJlIGFkZGVkLCBhZGRpbmcgCj4gPGFzbS9o
aWdobWVtLmg+IGRpcmVjdGx5IHByb3Zva2VzIGJ1aWxkIGZhaWx1cmUgYXQgbGluayB0aW1lLgo+
IAoKSSBnZXQgdGhlIGZvbGxvd2luZyBmYWlsdXJlLAoKWyAgICAwLjcwNDY4NV0gLS0tLS0tLS0t
LS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tClsgICAgMC43MDkyMzldIGluaXRjYWxsIGFyY2hf
cGd0YWJsZV90ZXN0c19pbml0KzB4MC8weDIyOCByZXR1cm5lZCB3aXRoIApwcmVlbXB0aW9uIGlt
YmFsYW5jZQpbICAgIDAuNzE3NTM5XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxIGF0IGluaXQvbWFp
bi5jOjk1MiAKZG9fb25lX2luaXRjYWxsKzB4MThjLzB4MWQ0ClsgICAgMC43MjQ5MjJdIENQVTog
MCBQSUQ6IDEgQ29tbTogc3dhcHBlciBOb3QgdGFpbnRlZCAKNS4zLjAtcmM3LXMzay1kZXYtMDA4
ODAtZzI4ZmQwMmE4MzhlNS1kaXJ0eSAjMjMwNwpbICAgIDAuNzM0MDcwXSBOSVA6ICBjMDcwZTY3
NCBMUjogYzA3MGU2NzQgQ1RSOiBjMDAxMjkyYwpbICAgIDAuNzM5MDg0XSBSRUdTOiBkZjRhNWRk
MCBUUkFQOiAwNzAwICAgTm90IHRhaW50ZWQgCig1LjMuMC1yYzctczNrLWRldi0wMDg4MC1nMjhm
ZDAyYTgzOGU1LWRpcnR5KQpbICAgIDAuNzQ3OTc1XSBNU1I6ICAwMDAyOTAzMiA8RUUsTUUsSVIs
RFIsUkk+ICBDUjogMjgwMDAyMjIgIFhFUjogMDAwMDAwMDAKWyAgICAwLjc1NDYyOF0KWyAgICAw
Ljc1NDYyOF0gR1BSMDA6IGMwNzBlNjc0IGRmNGE1ZTg4IGRmNGEwMDAwIDAwMDAwMDRlIDAwMDAw
MDBhIAowMDAwMDAwMCAwMDAwMDBjYSAzODIwNzI2NQpbICAgIDAuNzU0NjI4XSBHUFIwODogMDAw
MDEwMzIgMDAwMDA4MDAgMDAwMDAwMDAgMDAwMDAwMDAgMjIwMDA0MjIgCjAwMDAwMDAwIGMwMDA0
YTdjIDAwMDAwMDAwClsgICAgMC43NTQ2MjhdIEdQUjE2OiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAKYzA4MTAwMDAgYzA4MDAwMDAgYzA4MTZmMzAKWyAgICAw
Ljc1NDYyOF0gR1BSMjQ6IGMwNzBkYzIwIGMwNzQ3MDJjIDAwMDAwMDA2IDAwMDAwMDljIDAwMDAw
MDAwIApjMDcyNDQ5NCBjMDc0ZTE0MCAwMDAwMDAwMApbICAgIDAuNzg5MzM5XSBOSVAgW2MwNzBl
Njc0XSBkb19vbmVfaW5pdGNhbGwrMHgxOGMvMHgxZDQKWyAgICAwLjc5NDQzNV0gTFIgW2MwNzBl
Njc0XSBkb19vbmVfaW5pdGNhbGwrMHgxOGMvMHgxZDQKWyAgICAwLjc5OTQzN10gQ2FsbCBUcmFj
ZToKWyAgICAwLjgwMTg2N10gW2RmNGE1ZTg4XSBbYzA3MGU2NzRdIGRvX29uZV9pbml0Y2FsbCsw
eDE4Yy8weDFkNCAKKHVucmVsaWFibGUpClsgICAgMC44MDg2OTRdIFtkZjRhNWVlOF0gW2MwNzBl
OGMwXSBrZXJuZWxfaW5pdF9mcmVlYWJsZSsweDIwNC8weDJkYwpbICAgIDAuODE0ODMwXSBbZGY0
YTVmMjhdIFtjMDAwNGE5NF0ga2VybmVsX2luaXQrMHgxOC8weDExMApbICAgIDAuODIwMTA3XSBb
ZGY0YTVmMzhdIFtjMDAxMjJhY10gcmV0X2Zyb21fa2VybmVsX3RocmVhZCsweDE0LzB4MWMKWyAg
ICAwLjgyNjIyMF0gSW5zdHJ1Y3Rpb24gZHVtcDoKWyAgICAwLjgyOTE2MV0gNGJlYjEwNjkgN2Qy
MDAwYTYgNjEyOTgwMDAgN2QyMDAxMjQgODkyMTAwMDggMmY4OTAwMDAgCjQxYmUwMDQ4IDNjNjBj
MDZhClsgICAgMC44MzY4NDldIDM4YTEwMDA4IDdmYTRlYjc4IDM4NjNjYWNjIDRiOTE1MTE1IDww
ZmUwMDAwMD4gNDgwMDAwMmMgCjgxMjIwMDcwIDcxMmEwMDA0ClsgICAgMC44NDQ3MjNdIC0tLVsg
ZW5kIHRyYWNlIDk2OWQ2ODYzMDhkNDBiMzMgXS0tLQoKVGhlbiBzdGFydGluZyBpbml0IGZhaWxz
OgoKWyAgICAzLjg5NDA3NF0gUnVuIC9pbml0IGFzIGluaXQgcHJvY2VzcwpbICAgIDMuODk4NDAz
XSBGYWlsZWQgdG8gZXhlY3V0ZSAvaW5pdCAoZXJyb3IgLTE0KQpbICAgIDMuOTAzMDA5XSBSdW4g
L3NiaW4vaW5pdCBhcyBpbml0IHByb2Nlc3MKWyAgICAzLjkwNzE3Ml0gUnVuIC9ldGMvaW5pdCBh
cyBpbml0IHByb2Nlc3MKWyAgICAzLjkxMTI1MV0gUnVuIC9iaW4vaW5pdCBhcyBpbml0IHByb2Nl
c3MKWyAgICAzLjkxNTUxM10gUnVuIC9iaW4vc2ggYXMgaW5pdCBwcm9jZXNzClsgICAgMy45MTk0
NzFdIFN0YXJ0aW5nIGluaXQ6IC9iaW4vc2ggZXhpc3RzIGJ1dCBjb3VsZG4ndCBleGVjdXRlIGl0
IAooZXJyb3IgLTE0KQpbICAgIDMuOTI2NzMyXSBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzog
Tm8gd29ya2luZyBpbml0IGZvdW5kLiAgVHJ5IApwYXNzaW5nIGluaXQ9IG9wdGlvbiB0byBrZXJu
ZWwuIFNlZSBMaW51eCAKRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9pbml0LnJzdCBmb3IgZ3Vp
ZGFuY2UuClsgICAgMy45NDA4NjRdIENQVTogMCBQSUQ6IDEgQ29tbTogaW5pdCBUYWludGVkOiBH
ICAgICAgICBXIAo1LjMuMC1yYzctczNrLWRldi0wMDg4MC1nMjhmZDAyYTgzOGU1LWRpcnR5ICMy
MzA3ClsgICAgMy45NTExNjVdIENhbGwgVHJhY2U6ClsgICAgMy45NTM2MTddIFtkZjRhNWVjOF0g
W2MwMDIzOTJjXSBwYW5pYysweDEyYy8weDMyMCAodW5yZWxpYWJsZSkKWyAgICAzLjk1OTYyMV0g
W2RmNGE1ZjI4XSBbYzAwMDRiOGNdIHJvb3Rmc19tb3VudCsweDAvMHgyYwpbICAgIDMuOTY0ODQ5
XSBbZGY0YTVmMzhdIFtjMDAxMjJhY10gcmV0X2Zyb21fa2VybmVsX3RocmVhZCsweDE0LzB4MWMK
CgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
