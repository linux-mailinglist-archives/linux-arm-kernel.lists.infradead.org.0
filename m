Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A172B138C13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 07:53:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P2DaEerMz2WjH9U95GfBv4k94lx3bYSPK3Hohi2sl7Y=; b=iM5vpQXvA0lYZyyRFommUQ5r4
	lysGbmFyDioKdl2lTrB/T2ik/KfyG9fK61GM6ZYvgqUve+85M+4BF2dDDpZLudUVlZFhEcaSoTeAy
	3YmSHsRO6QD4AjZdbiq6Tc7F5BFj1J0VvgcInhQIROnNKb0Ix1W6wBRFKXI310Mst3cjWYBTrSUC+
	oC6ChQsGsTqZIVL1lxZ7RDgi3dqzjQUH3XkQuHK8QVLPaKsrZy0wdjsreagcFfTN4a/TFH063WKBa
	Csvk0OB9JL0HWEHoiIkAq2gEhWmkp4I0ZywroqGqS83nfDRA5HbcWj0nMU2pP5p3ioFJXoCGf6vcV
	ZW7zrtweQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqtb0-0000Vk-Cd; Mon, 13 Jan 2020 06:53:06 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqtap-0000Qx-QD
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 06:52:57 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 47x45m5vGSz9ttgG;
 Mon, 13 Jan 2020 07:52:28 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=NVd27d+g; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 1iwCVC8X-I0R; Mon, 13 Jan 2020 07:52:28 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 47x45m4fd0z9ttgD;
 Mon, 13 Jan 2020 07:52:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1578898348; bh=BEG+waaqceEGqvmTkmRPJ8Qzyso8PEjwXnIakVOqtZc=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=NVd27d+gFiIyUuKl/HLoK+La1AiiYRZnEQtAMYVLE60YGvnlTuLzA+Zj2M0GA+Ket
 FpVfMNKOrYwhgR+zTPLHtu0BWa6zZ6Ph7297vQIxUho+xhYLUTI/NMu1Gj3zsDCx0k
 Uvvo9nAJ3jOmw8RlqvoHHkfMpgYirFnUFWki46WU=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 30D588B79C;
 Mon, 13 Jan 2020 07:52:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id gGYtxlUDGq_J; Mon, 13 Jan 2020 07:52:33 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id AD2CA8B752;
 Mon, 13 Jan 2020 07:52:32 +0100 (CET)
Subject: Re: [RFC PATCH v2 07/10] lib: vdso: don't use READ_ONCE() in
 __c_kernel_time()
To: Thomas Gleixner <tglx@linutronix.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 arnd@arndb.de, vincenzo.frascino@arm.com, luto@kernel.org
References: <cover.1577111363.git.christophe.leroy@c-s.fr>
 <fc1ff722c7cbe63a63ae02ade3a714d2049d54a5.1577111367.git.christophe.leroy@c-s.fr>
 <87lfqfrp7d.fsf@nanos.tec.linutronix.de>
 <a995445f-9b00-ca13-d23a-1aea3b345718@c-s.fr>
 <878smes13d.fsf@nanos.tec.linutronix.de>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <dfd30b00-5d5c-29c3-6b91-aac0533635ca@c-s.fr>
Date: Mon, 13 Jan 2020 07:52:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <878smes13d.fsf@nanos.tec.linutronix.de>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_225256_146177_C50ED985 
X-CRM114-Status: GOOD (  16.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: x86@kernel.org, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpMZSAxMS8wMS8yMDIwIMOgIDEyOjA3LCBUaG9tYXMgR2xlaXhuZXIgYSDDqWNyaXTCoDoKPiBD
aHJpc3RvcGhlIExlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4gd3JpdGVzOgo+Pgo+PiBX
aXRoIFJFQURfT05DRSgpIHRoZSA2NCBiaXRzIGFyZSBiZWluZyByZWFkOgo+Pgo+PiBXaXRob3V0
IHRoZSBSRUFEX09OQ0UoKSBvbmx5IDMyIGJpdHMgYXJlIHJlYWQuIFRoYXQncyB0aGUgbW9zdCBv
cHRpbWFsLgo+Pgo+PiBXaXRob3V0IFJFQURfT05DRSgpIGJ1dCB3aXRoIGEgYmFycmllcigpIGFm
dGVyIHRoZSByZWFkLCB3ZSBzaG91bGQgZ2V0Cj4+IHRoZSBzYW1lIHJlc3VsdCBidXQgR0NDIChH
Q0MgOC4xKSBkb2VzIGxlc3MgZ29vZDoKPj4KPj4gQXNzdW1pbmcgYm90aCBwYXJ0IG9mIHRoZSA2
NCBiaXRzIGRhdGEgd2lsbCBmYWxsIGludG8gYSBzaW5nbGUKPj4gY2FjaGVsaW5lLCB0aGUgc2Vj
b25kIHJlYWQgaXMgaW4gdGhlIG5vaXNlLgo+IAo+IFRoZXkgZGVmaW5pdGVseSBhcmUgaW4gdGhl
IHNhbWUgY2FjaGVsaW5lLgo+IAo+PiBTbyBhZ3JlZWQgdG8gZHJvcCB0aGlzIGNoYW5nZS4KPiAK
PiBXZSBjb3VsZCBiZSBzbWFydCBhYm91dCB0aGlzIGFuZCBmb3JjZSB0aGUgY29tcGlsZXIgdG8g
aXNzdWUgYSAzMmJpdAo+IHJlYWQgZm9yIDMyYml0IGJ1aWxkcy4gU2VlIGJlbG93LiBOb3Qgc3Vy
ZSB3aGV0aGVyIGl0J3Mgd29ydGggaXQsIGJ1dAo+IE9UT0ggaXQgd2lsbCB0YWtlIHF1aXRlIGEg
d2hpbGUgdW50aWwgdGhlIDMyYml0IHRpbWUgaW50ZXJmYWNlcyBkaWUKPiBjb21wbGV0ZWx5LgoK
SSBkb24ndCB0aGluayBpdCBpcyB3b3J0aCBzb21ldGhpbmcgc28gYmlnIHRvIGp1c3Qgc2F2ZSAx
IG9yIDIgY3ljbGVzIGluIAp0aW1lKCkgZnVuY3Rpb24uIExldHMga2VlcCBpdCBhcyBpdCBpcy4K
ClRoYW5rcywKQ2hyaXN0b3BoZQoKPiAKPiBUaGFua3MsCj4gCj4gICAgICAgICAgdGdseAo+IAo+
IDg8LS0tLS0tLS0tLS0tCj4gLS0tIGEvaW5jbHVkZS92ZHNvL2RhdGFwYWdlLmgKPiArKysgYi9p
bmNsdWRlL3Zkc28vZGF0YXBhZ2UuaAo+IEBAIC0yMSw2ICsyMSwxOCBAQAo+ICAgI2RlZmluZSBD
U19SQVcJCTEKPiAgICNkZWZpbmUgQ1NfQkFTRVMJKENTX1JBVyArIDEpCj4gICAKPiArI2lmZGVm
IF9fTElUVExFX0VORElBTgo+ICtzdHJ1Y3Qgc2VjX2hsIHsKPiArCXUzMglzZWNfbDsKPiArCXUz
MglzZWNfaDsKPiArfTsKPiArI2Vsc2UKPiArc3RydWN0IHNlY19obCB7Cj4gKwl1MzIJc2VjX2g7
Cj4gKwl1MzIJc2VjX2w7Cj4gK307Cj4gKyNlbmRpZgo+ICsKPiAgIC8qKgo+ICAgICogc3RydWN0
IHZkc29fdGltZXN0YW1wIC0gYmFzZXRpbWUgcGVyIGNsb2NrX2lkCj4gICAgKiBAc2VjOglzZWNv
bmRzCj4gQEAgLTM1LDcgKzQ3LDEwIEBACj4gICAgKiB2ZHNvX2RhdGEuY3NbeF0uc2hpZnQuCj4g
ICAgKi8KPiAgIHN0cnVjdCB2ZHNvX3RpbWVzdGFtcCB7Cj4gLQl1NjQJc2VjOwo+ICsJdW5pb24g
ewo+ICsJCXU2NAkJc2VjOwo+ICsJCXN0cnVjdCBzZWNfaGwJc2VjX2hsOwo+ICsJfTsKPiAgIAl1
NjQJbnNlYzsKPiAgIH07Cj4gICAKPiAtLS0gYS9saWIvdmRzby9nZXR0aW1lb2ZkYXkuYwo+ICsr
KyBiL2xpYi92ZHNvL2dldHRpbWVvZmRheS5jCj4gQEAgLTE2NSw4ICsxNjUsMTMgQEAgc3RhdGlj
IF9fbWF5YmVfdW51c2VkIGludAo+ICAgc3RhdGljIF9fbWF5YmVfdW51c2VkIF9fa2VybmVsX29s
ZF90aW1lX3QgX19jdmRzb190aW1lKF9fa2VybmVsX29sZF90aW1lX3QgKnRpbWUpCj4gICB7Cj4g
ICAJY29uc3Qgc3RydWN0IHZkc29fZGF0YSAqdmQgPSBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgpOwo+
IC0JX19rZXJuZWxfb2xkX3RpbWVfdCB0ID0gUkVBRF9PTkNFKHZkW0NTX0hSRVNfQ09BUlNFXS5i
YXNldGltZVtDTE9DS19SRUFMVElNRV0uc2VjKTsKPiArCV9fa2VybmVsX29sZF90aW1lX3QgdDsK
PiAgIAo+ICsjaWYgQklUU19QRVJfTE9ORyA9PSAzMgo+ICsJdCA9IFJFQURfT05DRSh2ZFtDU19I
UkVTX0NPQVJTRV0uYmFzZXRpbWVbQ0xPQ0tfUkVBTFRJTUVdLnNlY19obC5zZWNfbCk7Cj4gKyNl
bHNlCj4gKwl0ID0gUkVBRF9PTkNFKHZkW0NTX0hSRVNfQ09BUlNFXS5iYXNldGltZVtDTE9DS19S
RUFMVElNRV0uc2VjKTsKPiArI2VuZGlmCj4gICAJaWYgKHRpbWUpCj4gICAJCSp0aW1lID0gdDsK
PiAgIAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
