Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593FF140602
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 10:27:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8c2vYkJvZFDRX4JU2qCul2NbFcTgvJteuYAhAU+p3Ek=; b=DuVyITWKOecFcghiQA5y+Li0D
	ucqzKkhy8EkTxqSfLeg+XUlMBrLIxthqrQ2YYDhYPvE5UmOYXLMeN+zSzPvmHVLRB1T1wSyIpV1q+
	dF4frqxBTDc3DRUS73dr7ITvOTCrJUShHCL6RrGGySd33uqqo+I36VWt9/m691W3VPipTivKigkAa
	QEdDy//Gr2wB10WWlGVeZYsPbAfzjQUexHwYCwuahdd9dmlPbXZOeKR+fyZxCBj4vXlA9OzE0UM6P
	lMg+9J02/WyVTlbelZNPEU+HFLpNfwRBzqEyuDyn4pnI0PaKrIfM2hNe58Laof+L6hr1TYRD9Z1Dy
	otygI+6HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isNue-0002Yg-QE; Fri, 17 Jan 2020 09:27:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isNuR-0002W7-5A
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 09:27:24 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47zbL80nqyzB09b7;
 Fri, 17 Jan 2020 10:26:56 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=i9BMvz3E; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id SBcmuNiYkyF6; Fri, 17 Jan 2020 10:26:56 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47zbL76pYtzB09b5;
 Fri, 17 Jan 2020 10:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579253216; bh=9zDNZlzTkeycpSWCb0TYhvoG++VQ0gIX3RE4mUEvdOg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=i9BMvz3Et5VUQDFvPy+FmGSkBzSFXqfiloNAGK6ETWirQC9BSIX++qp5CDw2aZert
 7ZvsFo1ljH6SQeneQhVz/i5r8XjA4pPDw6RSVCjw8z88fAGEB5eOFuEaHhNOp6Saa6
 njr+TNa2sSfV/s65M9dLdazSTLW/6PBL5xvi/9Nc=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F18298B83E;
 Fri, 17 Jan 2020 10:26:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id QrD_JOibNVgE; Fri, 17 Jan 2020 10:26:56 +0100 (CET)
Received: from [172.25.230.103] (po15451.idsi0.si.c-s.fr [172.25.230.103])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id C07418B83B;
 Fri, 17 Jan 2020 10:26:56 +0100 (CET)
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
To: Segher Boessenkool <segher@kernel.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <20200117085851.GS3191@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <345e2772-cde9-7d86-874e-347db1453c80@c-s.fr>
Date: Fri, 17 Jan 2020 10:26:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20200117085851.GS3191@gate.crashing.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_012719_489505_2F7DE5FF 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxNy8wMS8yMDIwIMOgIDA5OjU4LCBTZWdoZXIgQm9lc3Nlbmtvb2wgYSDDqWNyaXTCoDoK
PiBIaSEKPiAKPiBPbiBUaHUsIEphbiAxNiwgMjAyMCBhdCAwNTo1ODoyNFBNICswMDAwLCBDaHJp
c3RvcGhlIExlcm95IHdyb3RlOgo+PiBPbiBhIHBvd2VycGM4eHgsIHdpdGggY3VycmVudCBwb3dl
cnBjLzMyIEFTTSBWRFNPOgo+Pgo+PiBnZXR0aW1lb2ZkYXk6ICAgIHZkc286IDkwNyBuc2VjL2Nh
bGwKPj4gY2xvY2stZ2V0cmVzLXJlYWx0aW1lOiAgICB2ZHNvOiA0ODQgbnNlYy9jYWxsCj4+IGNs
b2NrLWdldHRpbWUtcmVhbHRpbWU6ICAgIHZkc286IDg5OSBuc2VjL2NhbGwKPj4KPj4gVGhlIGZp
cnN0IHBhdGNoIGFkZHMgVkRTTyBnZW5lcmljIEMgc3VwcG9ydCB3aXRob3V0IGFueSBjaGFuZ2Vz
IHRvIGNvbW1vbiBjb2RlLgo+PiBQZXJmb3JtYW5jZSBpcyBhcyBmb2xsb3dzOgo+Pgo+PiBnZXR0
aW1lb2ZkYXk6ICAgIHZkc286IDEyMTEgbnNlYy9jYWxsCj4+IGNsb2NrLWdldHJlcy1yZWFsdGlt
ZTogICAgdmRzbzogNzIyIG5zZWMvY2FsbAo+PiBjbG9jay1nZXR0aW1lLXJlYWx0aW1lOiAgICB2
ZHNvOiAxMjE2IG5zZWMvY2FsbAo+Pgo+PiBUaGVuIGEgZmV3IGNoYW5nZXMgaW4gdGhlIGNvbW1v
biBjb2RlIGhhdmUgYWxsb3dlZCBwZXJmb3JtYW5jZSBpbXByb3ZlbWVudC4gQXQKPj4gdGhlIGVu
ZCBvZiB0aGUgc2VyaWVzIHdlIGhhdmU6Cj4+Cj4+IGdldHRpbWVvZmRheTogICAgdmRzbzogOTc0
IG5zZWMvY2FsbAo+PiBjbG9jay1nZXRyZXMtcmVhbHRpbWU6ICAgIHZkc286IDU0NSBuc2VjL2Nh
bGwKPj4gY2xvY2stZ2V0dGltZS1yZWFsdGltZTogICAgdmRzbzogOTQxIG5zZWMvY2FsbAo+Pgo+
PiBUaGUgZmluYWwgcmVzdWx0IGlzIHJhdGhlciBjbG9zZSB0byBwdXJlIEFTTSBWRFNPOgo+PiAq
IDclIG1vcmUgb24gZ2V0dGltZW9mZGF5ICg5IGN5Y2xlcykKPj4gKiA1JSBtb3JlIG9uIGNsb2Nr
LWdldHRpbWUtcmVhbHRpbWUgKDYgY3ljbGVzKQo+PiAqIDEyJSBtb3JlIG9uIGNsb2NrLWdldHJl
cy1yZWFsdGltZSAoOCBjeWNsZXMpCj4gCj4gTmljZSEgIE11Y2ggYmV0dGVyLgo+IAo+IEl0IHNo
b3VsZCBiZSB0ZXN0ZWQgb24gbW9yZSByZXByZXNlbnRhdGl2ZSBoYXJkd2FyZSwgdG9vLCBidXQg
dGhpcyBsb29rcwo+IHByb21pc2luZyBhbHJpZ2h0IDotKQo+IAoKWWVzLgoKTm93IHRoZSBjaGFs
bGVuZ2UgaXMgdG8gZ2V0IFZEU08zMiBidWlsZGFibGUgb24gUFBDNjQuIFRoZSBiaWcgaXNzdWUg
aXMgCnRoYXQgaW4gbW9zdCBwb3dlcnBjL2luY2x1ZGUvYXNtLyouaCAsIENPTkZJR19QUEM2NCBp
cyB1c2VkIHRvIGtub3cgaWYgCnRoZSBidWlsZCBpcyBhIDY0IGJpdHMgYnVpbGQgb3IgYSAzMiBi
aXRzIGJ1aWxkLCBzbyBWRFNPMzIgYnVpbGQgZmFpbHMuCgpJIGRvbid0IGtub3cgaG93IHRoaXMg
Y291bGQgYmUgZWFzaWx5IGZpeGVkLgoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
