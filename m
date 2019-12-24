Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B995E12A164
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:42:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T09wK1fgyYtOUEUehEjqSowBZP2zy/m2x0KXtKJzJfE=; b=dNZqJ30hxVoana
	hzoePtKaIXdPyG505Ql55drYBIFvABBqFQzscFLP3xNf93mAnmFcMcYDImRCk5IS1FB/Ndmqi7kHr
	ushNBRK/2LJIt9rugmXCas8KltYA8cevPntZZRWe1xHpIHl3tA6QuCeDH9PN6KsPUCCauGOf+vpnR
	asx0IMDmY8i9qjEb28ogt3vJXoLsAP/m6qd2K2rukTBKBUuepZx1OL65K9EvToT2Ga/rsnasNL1hv
	Cglw20YeklnVDuouwKXqNwJVAfiZ/Z1Ns67aZUkcXIacfmiZV9aSGrsa0meyWFLDtHZyRcTfbD3y1
	kFfjVNYm8ccnDngARatQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijjVu-0004Ul-A0; Tue, 24 Dec 2019 12:42:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijjVi-0004U5-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:42:04 +0000
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E072E20706
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 12:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577191322;
 bh=xWNWJ8I9fxHntwfPGgiUpJJyIhLQ1SeEPpEpuaGohNs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mbhzlqrFOTd5D0VnwK8uZ6zmm6un9WEQBuC+SsW/vNr4zmirMRl3Ie03Hti+oSKnq
 jWL+FYDrP86b5jRs0x0aSDRUVDijhRUPxNal17nD3tvwFIHL1sEqrGQp833aEf8LTp
 5Sfx49XQkhGKpNMeG65TqgqaLju0XthGjvsfdWd0=
Received: by mail-wr1-f51.google.com with SMTP id y11so19732902wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 04:42:01 -0800 (PST)
X-Gm-Message-State: APjAAAVe6+fuo/h7z4q2V7Byfn6FbOmj1EHlzK3GTvEZfQJKV0WGaECK
 hzsiB3Iy3R2ZUun4tPrvB6NCkl+zXYvxKY1GADAa2A==
X-Google-Smtp-Source: APXvYqwdNLgm/8CaMUR6XukS3F5ntUzE/BsJd5vEuNBWA9P9kZsIX/K2aEVbOOWPEOSGyhiF4uqEjDSBVC/HOxryAY4=
X-Received: by 2002:adf:eb09:: with SMTP id s9mr36777598wrn.61.1577191320403; 
 Tue, 24 Dec 2019 04:42:00 -0800 (PST)
MIME-Version: 1.0
References: <de5273aa-69dc-8e37-c917-44708257d2ba@c-s.fr>
 <D2614EC4-5B80-4846-994D-22730ACD44A1@amacapital.net>
In-Reply-To: <D2614EC4-5B80-4846-994D-22730ACD44A1@amacapital.net>
From: Andy Lutomirski <luto@kernel.org>
Date: Tue, 24 Dec 2019 04:41:48 -0800
X-Gmail-Original-Message-ID: <CALCETrUR-NgVMeTPh3TmgNSTsA=2xE03_KBeO9DSk0P-JxD_fQ@mail.gmail.com>
Message-ID: <CALCETrUR-NgVMeTPh3TmgNSTsA=2xE03_KBeO9DSk0P-JxD_fQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the
 arch
To: christophe leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_044202_849711_2080775B 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, X86 ML <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:MIPS" <linux-mips@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Andy Lutomirski <luto@kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMjQsIDIwMTkgYXQgNDoxNSBBTSBBbmR5IEx1dG9taXJza2kgPGx1dG9AYW1h
Y2FwaXRhbC5uZXQ+IHdyb3RlOgo+Cj4KPgo+ID4gT24gRGVjIDI0LCAyMDE5LCBhdCA3OjUzIFBN
LCBjaHJpc3RvcGhlIGxlcm95IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4gPgo+
ID4g77u/Cj4gPgo+ID4+IExlIDI0LzEyLzIwMTkgw6AgMDM6MjcsIEFuZHkgTHV0b21pcnNraSBh
IMOpY3JpdCA6Cj4gPj4+IE9uIE1vbiwgRGVjIDIzLCAyMDE5IGF0IDY6MzEgQU0gQ2hyaXN0b3Bo
ZSBMZXJveQo+ID4+PiA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+ID4+Pgo+ID4+
PiBPbiBwb3dlcnBjLCBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgpIGNsb2JiZXJzIHRoZSBsaW5rIHJl
Z2lzdGVyLAo+ID4+PiByZXF1aXJpbmcgdGhlIGNhbGxlciB0byBzZXQgYSBzdGFjayBmcmFtZSBp
biBvcmRlciB0byBzYXZlIGl0Lgo+ID4+Pgo+ID4+PiBBcyB0aGUgcGFyZW50IGZ1bmN0aW9uIGFs
cmVhZHkgaGFzIHRvIHNldCBhIHN0YWNrIGZyYW1lIGFuZCBzYXZlCj4gPj4+IHRoZSBsaW5rIHJl
Z2lzdGVyIHRvIGNhbGwgdGhlIEMgdmRzbyBmdW5jdGlvbiwgcmV0cml2aW5nIHRoZQo+ID4+PiB2
ZHNvIGRhdGEgcG9pbnRlciB0aGVyZSBpcyBsaWdodGVyLgo+ID4+IEknbSBjb25mdXNlZC4gIENh
bid0IHlvdSBpbmxpbmUgX19hcmNoX2dldF92ZHNvX2RhdGEoKT8gIE9yIGlzIHRoZQo+ID4+IGlz
c3VlIHRoYXQgeW91IGNhbid0IHJldHJpZXZlIHRoZSBwcm9ncmFtIGNvdW50ZXIgb24gcG93ZXIg
d2l0aG91dAo+ID4+IGNsb2JiZXJpbmcgdGhlIGxpbmsgcmVnaXN0ZXI/Cj4gPgo+ID4gWWVzIGl0
IGNhbiBiZSBpbmxpbmVkIChJIGRpZCBpdCBpbiBWMSBodHRwczovL3BhdGNod29yay5vemxhYnMu
b3JnL3BhdGNoLzExODA1NzEvKSwgYnV0IHlvdSBjYW4ndCBkbyBpdCB3aXRob3V0IGNsb2JiZXJp
bmcgdGhlIGxpbmsgcmVnaXN0ZXIsIGJlY2F1c2UgdGhlIG9ubHkgd2F5IHRvIGdldCB0aGUgcHJv
Z3JhbSBjb3VudGVyIGlzIHRvIGRvIHRvIGFzIGlmIHlvdSB3ZXJlIGNhbGxpbmcgYW5vdGhlciBm
dW5jdGlvbiBidXQgeW91IGNhbGwgdG8gdGhlIGFkZHJlc3Mgd2hpY2gganVzdCBmb2xsb3dzIHdo
ZXJlIHlvdSBhcmUsIHNvIHRoYXQgaXQgc2V0cyBMUiB3aGljaCB0aGUgc2ltdWxhdGVkIHJldHVy
biBhZGRyZXNzIHdoaWNoIGNvcnJlc3BvbmRzIHRvIHRoZSBhZGRyZXNzIGZvbGxvd2luZyB0aGUg
YnJhbmNoLgo+ID4KPiA+IHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUKPiA+IGNvbnN0IHN0cnVjdCB2
ZHNvX2RhdGEgKl9fYXJjaF9nZXRfdmRzb19kYXRhKHZvaWQpCj4gPiB7Cj4gPiAgICB2b2lkICpw
dHI7Cj4gPgo+ID4gICAgYXNtIHZvbGF0aWxlKAo+ID4gICAgICAgICIgICAgYmNsICAgIDIwLCAz
MSwgLis0O1xuIgo+ID4gICAgICAgICIgICAgbWZsciAgICAlMDtcbiIKPiA+ICAgICAgICAiICAg
IGFkZGkgICAgJTAsICUwLCBfX2tlcm5lbF9kYXRhcGFnZV9vZmZzZXQgLSAoLi00KTtcbiIKPiA+
ICAgICAgICA6ICI9YiIocHRyKSA6IDogImxyIik7Cj4gPgo+ID4gICAgcmV0dXJuIHB0ciArICoo
dW5zaWduZWQgbG9uZyAqKXB0cjsKPiA+IH0KPiA+Cj4gPj4gSSB3b3VsZCBpbWFnaW5lIHRoYXQg
dGhpcyBwYXRjaCBnZW5lcmF0ZXMgd29yc2UgY29kZSBvbiBhbnkKPiA+PiBhcmNoaXRlY3R1cmUg
d2l0aCBQQy1yZWxhdGl2ZSBhZGRyZXNzaW5nIG1vZGVzICh3aGljaCBpbmNsdWRlcyBhdAo+ID4+
IGxlYXN0IHg4Nl82NCwgYW5kIEkgd291bGQgZ3Vlc3MgaW5jbHVkZXMgbW9zdCBtb2Rlcm4gYXJj
aGl0ZWN0dXJlcykuCj4gPgo+ID4gV2h5ID8gUG93ZXJwYyBpcyBhbHNvIHVzaW5nIFBDLXJlbGF0
aXZlIGFkZHJlc3NpbmcgZm9yIGFsbCBjYWxscyBidXQgaW5kaXJlY3QgY2FsbHMuCj4KPiBJIG1l
YW4gUEMtcmVsYXRpdmUgYWNjZXNzIGZvciBkYXRhLiAgVGhlIGRhdGEgcGFnZSBpcyBhdCBhIGNv
bnN0YW50LCBrbm93biBvZmZzZXQgZnJvbSB0aGUgdkRTTyB0ZXh0Lgo+Cj4gSSBoYXZlbuKAmXQg
Y2hlY2tlZCBob3cgbXVjaCB4ODZfNjQgYmVuZWZpdHMgZnJvbSB0aGlzLCBidXQgYXQgbGVhc3Qg
dGhlIG5vbi1hcnJheSBmaWVsZHMgb3VnaHQgdG8gYmUgYWNjZXNzaWJsZSB3aXRoIGEgUEMtcmVs
YXRpdmUgYWNjZXNzLgo+Cj4gSXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRvIHJlZmFjdG9yIGEgbGl0
dGxlIGJpdCBzbyB0aGF0IHRoZSBjb21waWxlciBjYW4gc3RpbGwgc2VlIHdoYXTigJlzIGdvaW5n
IG9uLiAgTWF5YmUgeW91ciBwYXRjaCBhY3R1YWxseSBkb2VzIHRoaXMuIEnigJlkIHdhbnQgdG8g
bG9vayBhdCB0aGUgYXNzZW1ibHkuICBUaGlzIGFsc28gbWlnaHQgbm90IG1hdHRlciBtdWNoIG9u
IHg4Nl82NCBpbiBwYXJ0aWN1bGFyLCBzaW5jZSB4ODZfNjQgY2FuIGNvbnZlcnQgYSBQQy1yZWxh
dGl2ZSBhZGRyZXNzIHRvIGFuIGFic29sdXRlIGFkZHJlc3Mgd2l0aCBhIHNpbmdsZSBpbnN0cnVj
dGlvbiB3aXRoIG5vIGNsb2JiZXJzLgo+Cj4gRG9lcyBwb3dlciBoYXZlIFBDLXJlbGF0aXZlIGRh
dGEgYWNjZXNzPyAgSWYgc28sIEkgd29uZGVyIGlmIHRoZSBjb2RlIGNhbiBiZSBhcnJhbmdlZCBz
byB0aGF0IGV2ZW4gdGhlIGFycmF5IGFjY2Vzc2VzIGRvbuKAmXQgcmVxdWlyZSBjb21wdXRpbmcg
YW4gYWJzb2x1dGUgYWRkcmVzcyBhdCBhbnkgcG9pbnQuCgpJbmRlZWQgdGhlIHg4NiBjb2RlIGlz
IGFsc28gc3Vib3B0aW1hbCwgYnV0IGF0IGxlYXN0IHRoZSB1bm5lY2Vzc2FyeQphYnNvbHV0ZSBh
ZGRyZXNzIGNhbGN1bGF0aW9uIGlzIGNoZWFwIG9uIHg4Nl82NC4gIElkZWFsbHkgd2UnZCBwYXNz
CmFyb3VuZCBvZmZzZXRzIGludG8gdGhlIHZkc28gZGF0YSBpbnN0ZWFkIG9mIHBhc3NpbmcgcG9p
bnRlcnMsIGFuZAptYXliZSB0aGUgY29tcGlsZXIgd2lsbCBmaWd1cmUgaXQgb3V0LiAgSSBjYW4g
dHJ5IHRvIHBsYXkgd2l0aCB0aGlzIGluCnRoZSBtb3JuaW5nLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
