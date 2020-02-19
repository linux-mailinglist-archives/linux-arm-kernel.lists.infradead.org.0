Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41336163F8E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 09:46:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rKXk9AfL3cqUVkIOE3PMteo4qwrBYB2Fk/mIwYa2HSs=; b=kKMU/8Mgnq5wfH2CTx7qKr72l
	ssyCI7XoqmN+RJyp0omL3BZS/8DL85zl5UExdOkGRSwC403gQDXO0azvQ59facyFAo7At5glyZYwk
	hqUKFrhWxi/Z+D6b+n+lz+PV1ElOcj/G3iaFpi3gRzgXszbBYYCNDOESoV3ec8D8mpxTHF7dMIr7e
	fSQziDFsK8bj9sa+Gg7WyrriE04YTaf9mDAWHJtZozjz5Lea30aBPwSf9GEAP3E1hJxLQdTeru3Qt
	L4Igyq3y9vIyOpJXo5WeFRZ/l82EuN8K6RqlxYfGrhhROCMaGipwrv0BUnyjqY3wggH32vJ/ZLavn
	7IqM8PqKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Kza-0002kP-7z; Wed, 19 Feb 2020 08:46:02 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4KzQ-0002ff-72
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 08:45:54 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48MrsP1rpLz9v6b8;
 Wed, 19 Feb 2020 09:45:45 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=Z05PqepO; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id keiKTMYSteB4; Wed, 19 Feb 2020 09:45:45 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48MrsN71T3z9v6b7;
 Wed, 19 Feb 2020 09:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582101945; bh=5A070PBG/NLKWQpTrZybAuA+otVPzj/KnbWKO2e8w8o=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=Z05PqepONeujNziQ5YL8gnf1Z3+G6cb6ihOxmxz8uWdJtZ5jvdl2W5nDGv6hQ627P
 yeH79Ly2Y6BDHEAClz4F0Sl7Ug7F7nBhocpqGaYZNQCnKXBAU1M4joGRYAVfpvCCT5
 7XWc5FDRGFtiGRD1v2TVtmoHayh/6+4PxTcYWAOs=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 055918B829;
 Wed, 19 Feb 2020 09:45:46 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 39Yl18DznLEK; Wed, 19 Feb 2020 09:45:45 +0100 (CET)
Received: from [172.25.230.102] (unknown [172.25.230.102])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id BA9888B756;
 Wed, 19 Feb 2020 09:45:45 +0100 (CET)
Subject: Re: Surprising code generated for vdso_read_begin()
To: Arnd Bergmann <arnd@arndb.de>,
 Segher Boessenkool <segher@kernel.crashing.org>
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <bd4557a7-9715-59aa-5d8e-488c5e516a98@c-s.fr>
 <20200109200733.GS3191@gate.crashing.org>
 <77a8bf25-6615-6c0a-56d4-eae7aa8a8f09@c-s.fr>
 <20200111113328.GX3191@gate.crashing.org>
 <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <305fcee5-2e1b-ea4d-9a2a-a0e8034d40a8@c-s.fr>
Date: Wed, 19 Feb 2020 09:45:45 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a11wX1zJ+TAacDTkYsrzvfdVmNrcB6OC23aFvCxF57opQ@mail.gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_004552_553555_989E6B58 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

CgpMZSAxNi8wMi8yMDIwIMOgIDE5OjEwLCBBcm5kIEJlcmdtYW5uIGEgw6ljcml0wqA6Cj4gT24g
U2F0LCBKYW4gMTEsIDIwMjAgYXQgMTI6MzMgUE0gU2VnaGVyIEJvZXNzZW5rb29sCj4gPHNlZ2hl
ckBrZXJuZWwuY3Jhc2hpbmcub3JnPiB3cm90ZToKPj4KPj4gT24gRnJpLCBKYW4gMTAsIDIwMjAg
YXQgMDc6NDU6NDRBTSArMDEwMCwgQ2hyaXN0b3BoZSBMZXJveSB3cm90ZToKPj4+IExlIDA5LzAx
LzIwMjAgw6AgMjE6MDcsIFNlZ2hlciBCb2Vzc2Vua29vbCBhIMOpY3JpdCA6Cj4+Pj4gSXQgbG9v
a3MgbGlrZSB0aGUgY29tcGlsZXIgZGlkIGxvb3AgcGVlbGluZy4gIFdoYXQgR0NDIHZlcnNpb24g
aXMgdGhpcz8KPj4+PiBQbGVhc2UgdHJ5IGN1cnJlbnQgdHJ1bmsgKHRvIGJlY29tZSBHQ0MgMTAp
LCBvciBhdCBsZWFzdCBHQ0MgOT8KPj4+Cj4+PiBJdCBpcyB3aXRoIEdDQyA1LjUKPj4+Cj4+PiBo
dHRwczovL21pcnJvcnMuZWRnZS5rZXJuZWwub3JnL3B1Yi90b29scy9jcm9zc3Rvb2wvIGRvZXNu
J3QgaGF2ZSBtb3JlCj4+PiByZWNlbnQgdGhhbiA4LjEKPj4KPj4gQXJuZCwgY2FuIHlvdSB1cGRh
dGUgdGhlIHRvb2xzPyAgV2UgYXJlIGF0IDguMyBhbmQgOS4yIG5vdyA6LSkgIE9yIGlzCj4+IHRo
aXMgaGFyZCBhbmQvb3IgcGFpbmZ1bCB0byBkbz8KPiAKPiBUbyBmb2xsb3cgdXAgb24gdGhpcyBv
bGRlciB0aHJlYWQsIEkgaGF2ZSBub3cgdXBsb2FkZWQgNi41LCA3LjUsIDguMyBhbmQgOS4yCj4g
YmluYXJpZXMsIGFzIHdlbGwgYXMgYSByZWNlbnQgMTAuMCBzbmFwc2hvdC4KPiAKClRoYW5rcyBB
cm5kLAoKSSBoYXZlIGJ1aWx0IHRoZSBWRFNPIHdpdGggOS4yLCBJIGdldCBsZXNzIHBlcmZvcm1h
bnQgcmVzdWx0IHRoYW4gd2l0aCAKOC4yIChzYW1lIHBlcmZvcm1hbmNlIGFzIHdpdGggNS41KS4K
CkFmdGVyIGEgcXVpY2sgbG9vaywgSSBzZWU6Ci0gSXJyZWxldmFudCBOT1BzIHRvIGFsaWduIGxv
b3BzIGFuZCBzdHVmZiwgYWxsdGhvdWdoIC1tcGN1PTg2MCBzaG91bGQgCmF2b2lkIHRoYXQuCi0g
QSBzdGFjayBmcmFtZSBpcyBzZXQgZm9yIHNhdmluZyByMzEgaW4gX19jX2tlcm5lbF9jbG9ja19n
ZXR0aW1lLiBHQ0MgCjguMSBkb24ndCBuZWVkIHRoYXQsIGFsbCBWRFNPIGZ1bmN0aW9ucyBhcmUg
ZnJhbWVsZXNzIHdpdGggOC4xCgpDaHJpc3RvcGhlCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
