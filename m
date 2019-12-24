Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1DD12A13C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:15:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uiXl6XKbVyrUwihS3/k8I8Msv+1hY0jB2oXI0j9hKog=; b=O5nl0ZmmDXsN/n
	3H8PNhfIunZlF3hRLA+s6Ui9rGccfibm82xSTeV4NYQbMn9DcZqaOFBTG7WzoQZJy2g2ak1bUgAIX
	iKQ2OumKqtDuHXsyR0gWsRPyLbzPNXpOcUElShierv7er6L1UkV1Z/xqpHH3pt+E8zmrCtj8t31cj
	A+PmP9iflD15Si46AMdAhp5y8CF0uTMcdsANOLWooBJYYcnJfqpfxvPi/fm4rVc4F2BwKOtt9Ds3V
	J/lhzxxYlLCgJX1VGOyaavP9solSImF4zL2Jo5CvpUxIJlvEEyELs1JzXIPnVRQnpcGGCQGxAAQ5H
	IEV4ha9+WySRJ2JNp5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijj5v-00039C-SZ; Tue, 24 Dec 2019 12:15:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijj5m-00038J-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:15:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id z16so10705252pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 04:15:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=cUl5gZioHf+9+6AN9dmbhGHLhNt8/shlwV1E7YstAts=;
 b=zDWD8XCA/EeC40f+rqUuDAnCbmAAgAgN8grpTLGD/hu+c6oJ0ekyx9F6083vGsPNpB
 IGrhdkZdQkxUJLQB7IC7MUBKdiAhvr42yCtnEmbLuDVhaVlWU50A+XXkfqUzCfKxLwYd
 NcWZApcamRuoTETR8c7gHOWeAVehTsmseTXj6LnGvlE98ZW3YWEywJh2onhr62RKIN/O
 QbWUv3VfPQ9hUaNXtaLLQYhY2txQ0sPDCgcRwZIrZh36FXuwhdnUh56nRBpE8VWMrHr3
 eko3/wFRsyPKl+dK9FEf1/R7qWEszOxJvMCuzKzRvNgASrlCBXtD9TcieHqLYVVfd8P7
 LnPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=cUl5gZioHf+9+6AN9dmbhGHLhNt8/shlwV1E7YstAts=;
 b=EwjO1TPxrLK2txfkCS38uzLillwLjFruK+9OVxJsdNz9VXLEeX6aqOIRNlhOFQWtea
 mePHdVkTrjYNQ17jeDB4M1QOIYS9I5wTXmFgGNAQgBsbVklIuD9s94hHwy/Dgat+VO1Y
 WyxHWX0uocMqAblsqlhtzW8Op4M11ZjEJDt7j7zTNHuSzCumPveIYGmTx8nxfI+Usvrk
 CS8J4kk9wskQob/i3AeLqnbc2fDKepy3aWu4rHC+spDR1ChYQOit9E7qeJ/wDi47RckY
 7zWR7Pd6hMbP3e4miAu3BkA1lxtfj5ccIQgBSEk+XlBTukk5gxbZMfvUMq4LlU9o9hDz
 fDnQ==
X-Gm-Message-State: APjAAAUPOPK6PX9WD1jsMm7a/uI+afDB3MPFICzfVQlcd3oUTs1Y/0Po
 Ab3RXaUcvGZJ8C8Cd/PpsCO6pg==
X-Google-Smtp-Source: APXvYqxQw1UT4Rk2hWrXeLnplHcgXPOvZ2uVcW7HJIiySYb8+fVviH72PQISJdC4tjd4Z7zmNcXU4Q==
X-Received: by 2002:a62:868f:: with SMTP id
 x137mr34816521pfd.228.1577189713974; 
 Tue, 24 Dec 2019 04:15:13 -0800 (PST)
Received: from [192.168.0.9] (111-255-104-19.dynamic-ip.hinet.net.
 [111.255.104.19])
 by smtp.gmail.com with ESMTPSA id j5sm11842535pfn.180.2019.12.24.04.15.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 04:15:13 -0800 (PST)
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [RFC PATCH v2 04/10] lib: vdso: get pointer to vdso data from the
 arch
Date: Tue, 24 Dec 2019 20:15:11 +0800
Message-Id: <D2614EC4-5B80-4846-994D-22730ACD44A1@amacapital.net>
References: <de5273aa-69dc-8e37-c917-44708257d2ba@c-s.fr>
In-Reply-To: <de5273aa-69dc-8e37-c917-44708257d2ba@c-s.fr>
To: christophe leroy <christophe.leroy@c-s.fr>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_041515_007475_2129AF02 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Cgo+IE9uIERlYyAyNCwgMjAxOSwgYXQgNzo1MyBQTSwgY2hyaXN0b3BoZSBsZXJveSA8Y2hyaXN0
b3BoZS5sZXJveUBjLXMuZnI+IHdyb3RlOgo+IAo+IO+7vwo+IAo+PiBMZSAyNC8xMi8yMDE5IMOg
IDAzOjI3LCBBbmR5IEx1dG9taXJza2kgYSDDqWNyaXQgOgo+Pj4gT24gTW9uLCBEZWMgMjMsIDIw
MTkgYXQgNjozMSBBTSBDaHJpc3RvcGhlIExlcm95Cj4+PiA8Y2hyaXN0b3BoZS5sZXJveUBjLXMu
ZnI+IHdyb3RlOgo+Pj4gCj4+PiBPbiBwb3dlcnBjLCBfX2FyY2hfZ2V0X3Zkc29fZGF0YSgpIGNs
b2JiZXJzIHRoZSBsaW5rIHJlZ2lzdGVyLAo+Pj4gcmVxdWlyaW5nIHRoZSBjYWxsZXIgdG8gc2V0
IGEgc3RhY2sgZnJhbWUgaW4gb3JkZXIgdG8gc2F2ZSBpdC4KPj4+IAo+Pj4gQXMgdGhlIHBhcmVu
dCBmdW5jdGlvbiBhbHJlYWR5IGhhcyB0byBzZXQgYSBzdGFjayBmcmFtZSBhbmQgc2F2ZQo+Pj4g
dGhlIGxpbmsgcmVnaXN0ZXIgdG8gY2FsbCB0aGUgQyB2ZHNvIGZ1bmN0aW9uLCByZXRyaXZpbmcg
dGhlCj4+PiB2ZHNvIGRhdGEgcG9pbnRlciB0aGVyZSBpcyBsaWdodGVyLgo+PiBJJ20gY29uZnVz
ZWQuICBDYW4ndCB5b3UgaW5saW5lIF9fYXJjaF9nZXRfdmRzb19kYXRhKCk/ICBPciBpcyB0aGUK
Pj4gaXNzdWUgdGhhdCB5b3UgY2FuJ3QgcmV0cmlldmUgdGhlIHByb2dyYW0gY291bnRlciBvbiBw
b3dlciB3aXRob3V0Cj4+IGNsb2JiZXJpbmcgdGhlIGxpbmsgcmVnaXN0ZXI/Cj4gCj4gWWVzIGl0
IGNhbiBiZSBpbmxpbmVkIChJIGRpZCBpdCBpbiBWMSBodHRwczovL3BhdGNod29yay5vemxhYnMu
b3JnL3BhdGNoLzExODA1NzEvKSwgYnV0IHlvdSBjYW4ndCBkbyBpdCB3aXRob3V0IGNsb2JiZXJp
bmcgdGhlIGxpbmsgcmVnaXN0ZXIsIGJlY2F1c2UgdGhlIG9ubHkgd2F5IHRvIGdldCB0aGUgcHJv
Z3JhbSBjb3VudGVyIGlzIHRvIGRvIHRvIGFzIGlmIHlvdSB3ZXJlIGNhbGxpbmcgYW5vdGhlciBm
dW5jdGlvbiBidXQgeW91IGNhbGwgdG8gdGhlIGFkZHJlc3Mgd2hpY2gganVzdCBmb2xsb3dzIHdo
ZXJlIHlvdSBhcmUsIHNvIHRoYXQgaXQgc2V0cyBMUiB3aGljaCB0aGUgc2ltdWxhdGVkIHJldHVy
biBhZGRyZXNzIHdoaWNoIGNvcnJlc3BvbmRzIHRvIHRoZSBhZGRyZXNzIGZvbGxvd2luZyB0aGUg
YnJhbmNoLgo+IAo+IHN0YXRpYyBfX2Fsd2F5c19pbmxpbmUKPiBjb25zdCBzdHJ1Y3QgdmRzb19k
YXRhICpfX2FyY2hfZ2V0X3Zkc29fZGF0YSh2b2lkKQo+IHsKPiAgICB2b2lkICpwdHI7Cj4gCj4g
ICAgYXNtIHZvbGF0aWxlKAo+ICAgICAgICAiICAgIGJjbCAgICAyMCwgMzEsIC4rNDtcbiIKPiAg
ICAgICAgIiAgICBtZmxyICAgICUwO1xuIgo+ICAgICAgICAiICAgIGFkZGkgICAgJTAsICUwLCBf
X2tlcm5lbF9kYXRhcGFnZV9vZmZzZXQgLSAoLi00KTtcbiIKPiAgICAgICAgOiAiPWIiKHB0cikg
OiA6ICJsciIpOwo+IAo+ICAgIHJldHVybiBwdHIgKyAqKHVuc2lnbmVkIGxvbmcgKilwdHI7Cj4g
fQo+IAo+PiBJIHdvdWxkIGltYWdpbmUgdGhhdCB0aGlzIHBhdGNoIGdlbmVyYXRlcyB3b3JzZSBj
b2RlIG9uIGFueQo+PiBhcmNoaXRlY3R1cmUgd2l0aCBQQy1yZWxhdGl2ZSBhZGRyZXNzaW5nIG1v
ZGVzICh3aGljaCBpbmNsdWRlcyBhdAo+PiBsZWFzdCB4ODZfNjQsIGFuZCBJIHdvdWxkIGd1ZXNz
IGluY2x1ZGVzIG1vc3QgbW9kZXJuIGFyY2hpdGVjdHVyZXMpLgo+IAo+IFdoeSA/IFBvd2VycGMg
aXMgYWxzbyB1c2luZyBQQy1yZWxhdGl2ZSBhZGRyZXNzaW5nIGZvciBhbGwgY2FsbHMgYnV0IGlu
ZGlyZWN0IGNhbGxzLgoKSSBtZWFuIFBDLXJlbGF0aXZlIGFjY2VzcyBmb3IgZGF0YS4gIFRoZSBk
YXRhIHBhZ2UgaXMgYXQgYSBjb25zdGFudCwga25vd24gb2Zmc2V0IGZyb20gdGhlIHZEU08gdGV4
dC4KCkkgaGF2ZW7igJl0IGNoZWNrZWQgaG93IG11Y2ggeDg2XzY0IGJlbmVmaXRzIGZyb20gdGhp
cywgYnV0IGF0IGxlYXN0IHRoZSBub24tYXJyYXkgZmllbGRzIG91Z2h0IHRvIGJlIGFjY2Vzc2li
bGUgd2l0aCBhIFBDLXJlbGF0aXZlIGFjY2Vzcy4KCkl0IHNob3VsZCBiZSBwb3NzaWJsZSB0byBy
ZWZhY3RvciBhIGxpdHRsZSBiaXQgc28gdGhhdCB0aGUgY29tcGlsZXIgY2FuIHN0aWxsIHNlZSB3
aGF04oCZcyBnb2luZyBvbi4gIE1heWJlIHlvdXIgcGF0Y2ggYWN0dWFsbHkgZG9lcyB0aGlzLiBJ
4oCZZCB3YW50IHRvIGxvb2sgYXQgdGhlIGFzc2VtYmx5LiAgVGhpcyBhbHNvIG1pZ2h0IG5vdCBt
YXR0ZXIgbXVjaCBvbiB4ODZfNjQgaW4gcGFydGljdWxhciwgc2luY2UgeDg2XzY0IGNhbiBjb252
ZXJ0IGEgUEMtcmVsYXRpdmUgYWRkcmVzcyB0byBhbiBhYnNvbHV0ZSBhZGRyZXNzIHdpdGggYSBz
aW5nbGUgaW5zdHJ1Y3Rpb24gd2l0aCBubyBjbG9iYmVycy4KCkRvZXMgcG93ZXIgaGF2ZSBQQy1y
ZWxhdGl2ZSBkYXRhIGFjY2Vzcz8gIElmIHNvLCBJIHdvbmRlciBpZiB0aGUgY29kZSBjYW4gYmUg
YXJyYW5nZWQgc28gdGhhdCBldmVuIHRoZSBhcnJheSBhY2Nlc3NlcyBkb27igJl0IHJlcXVpcmUg
Y29tcHV0aW5nIGFuIGFic29sdXRlIGFkZHJlc3MgYXQgYW55IHBvaW50LgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
