Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7845D12A101
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 13:05:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+q65yxv09NOU5KLfYoEv6AMg431aNrUmtSVd8V96kg=; b=PKvW3MTobttoiE
	aEkemgTeddHHmDAxGAhvOKwapPBFBdYzrF/hfT3Bza8NXDpJSUnzkkm2RkSj6CGQIUQFHj5PvNzuK
	ic0G+/0ZDoBIrTus8DoknQLrNrxQoAtUFmLUJjxb0nm9FMCmrmoTppSTllmk/d8r9mNjhCY+rp8mF
	5DIM90tF8b4n0GTC/JKCsromjR53sNvzvTVt50nE/jnrbl0hMiuG0RdT8nBrld0fp9s5tq1eVbPqT
	WOki9XMfLPEiNwRt3yZWaGT6uyWbF5DHIQ2OgInnWCtrNQpcxHWuTzx/LqkOxZhkdOeIdfFvRQsYW
	Y+OBaV985RfXz+CDbrKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijivq-000656-AU; Tue, 24 Dec 2019 12:04:58 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijivX-0005uK-Ce
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 12:04:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id s21so5663474plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 04:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=VHzH6WH6Y51Hv8qWhxgK6vx35XDhgJUQtiy7D9VMqAM=;
 b=AQugnPU1j3l+UliZJ1cFDWfn1gfoQcO/nzfL11rOcYeTLX/P87iqPaaJmBaMlSz7f1
 /DhGazm2NTR2ZIaiN+mUvEAnOZrI7Ge0Mg1zI2ZlVdeTi0aTgDWcWRqSCId8E113LX3m
 6HCYlixeRMc9TaLMlaAzwKbLAUzigX1Ncl8C866LmmeME3vMRc45SQjPLyr6MHX+L6Cw
 vv52P5dueRyUQBwwusD+tHpoqoHbOj8XjhE0q9U9hlqCHn27d/gBrcaQanBO29ITAp34
 bn7tzg79vFow2UHY2TlVVezhuLVq4rXQXKJzfTff9415HHT3maptkAcWgSZsizcHzud6
 8efg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=VHzH6WH6Y51Hv8qWhxgK6vx35XDhgJUQtiy7D9VMqAM=;
 b=uWg7qnMiTQT/EQvcWgrylTzSd+JZC1dZEB3AycSbxBfJStVQcUZoxDaXVUpEZSYUG/
 KaxSJYUmN+lHJsJB7BoRX5f294qGxFm3G8ugqtmrkovYRJlrz28E9OcRQkUkjfryWjmo
 OiLN+JK22w0wvJ2bHD39r/D1dlV4SMZ2/SaCXR8XSQ4lici38vQKphjeBz/sOaGINw6A
 dxAmPT0jgB5pk6rUJcyvtMIuHHs0/A0tYgnB8Sn23Mp+kXkLDvPc0yv9MN9GomGSLZ9W
 kUAXY8gkiMzGxwr3PbZxe+R+dOpGJGWQMQ0l8IA1Y+QM9HQCLJeTCYdXycm7JIxv/FeG
 ObYg==
X-Gm-Message-State: APjAAAUmZ2RXHDY+ubG+IlwRLHgFq9zc3yRtRkCwJ6fVfWjRWRFOisWR
 Xl4gR16qR5JZ1mwL9cK0/mGmew==
X-Google-Smtp-Source: APXvYqyJXa2dY59EyR45IM7PX4/Dja/wo48oiNHNLhyt3TL1GWpIJ61wHLTCUZ3QRkI0SvFitogUkA==
X-Received: by 2002:a17:902:7288:: with SMTP id
 d8mr34182926pll.341.1577189076952; 
 Tue, 24 Dec 2019 04:04:36 -0800 (PST)
Received: from [192.168.0.9] (111-255-104-19.dynamic-ip.hinet.net.
 [111.255.104.19])
 by smtp.gmail.com with ESMTPSA id k21sm14926039pfa.63.2019.12.24.04.04.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Dec 2019 04:04:36 -0800 (PST)
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [RFC PATCH v2 07/10] lib: vdso: don't use READ_ONCE() in
 __c_kernel_time()
Date: Tue, 24 Dec 2019 20:04:33 +0800
Message-Id: <98C1F790-7647-4203-9B31-4B8FED8CCA12@amacapital.net>
References: <abc4b4a6-d355-4dfd-a207-603e877b2b23@c-s.fr>
In-Reply-To: <abc4b4a6-d355-4dfd-a207-603e877b2b23@c-s.fr>
To: christophe leroy <christophe.leroy@c-s.fr>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_040439_500250_1C07F7CC 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

Cj4gT24gRGVjIDI0LCAyMDE5LCBhdCA3OjEyIFBNLCBjaHJpc3RvcGhlIGxlcm95IDxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4gCj4g77u/Cj4gCj4+IExlIDI0LzEyLzIwMTkgw6Ag
MDI6NTgsIEFuZHkgTHV0b21pcnNraSBhIMOpY3JpdCA6Cj4+PiBPbiBNb24sIERlYyAyMywgMjAx
OSBhdCA2OjMxIEFNIENocmlzdG9waGUgTGVyb3kKPj4+IDxjaHJpc3RvcGhlLmxlcm95QGMtcy5m
cj4gd3JvdGU6Cj4+PiAKPj4+IFJFQURfT05DRSgpIGZvcmNlcyB0aGUgcmVhZCBvZiB0aGUgNjQg
Yml0IHZhbHVlIG9mCj4+PiB2ZFtDU19IUkVTX0NPQVJTRV0uYmFzZXRpbWVbQ0xPQ0tfUkVBTFRJ
TUVdLnNlYyBhbGx0aG91Z2gKPj4+IG9ubHkgdGhlIGxvd2VyIHBhcnQgaXMgbmVlZGVkLgo+PiBT
ZWVtcyByZWFzb25hYmxlIGFuZCB2ZXJ5IHVubGlrZWx5IHRvIGJlIGhhcm1mdWwuICBUaGF0IGJl
aW5nIHNhaWQsCj4+IHRoaXMgZnVuY3Rpb24gcmVhbGx5IG91Z2h0IHRvIGJlIGNvbnNpZGVyZWQg
ZGVwcmVjYXRlZCAtLSAzMi1iaXQKPj4gdGltZV90IGlzIGluc3VmZmljaWVudC4KPj4gRG8geW91
IGdldCBldmVuIGJldHRlciBjb2RlIGlmIHlvdSBtb3ZlIHRoZSByZWFkIGludG8gdGhlIGlmIHN0
YXRlbWVudD8KPiAKPiBFdWggLi4uCj4gCj4gSG93IGNhbiB5b3UgcmV0dXJuIHQgd2hlbiB0aW1l
IHBvaW50ZXIgaXMgTlVMTCBpZiB5b3UgcmVhZCB0IG9ubHkgd2hlbiB0aW1lIHBvaW50ZXIgaXMg
bm90IE5VTEwgPwo+IAo+IAoKRHVoLCBuZXZlciBtaW5kLgoKQnV0IHRoaXMgbWVhbnMgeW91ciBw
YXRjaCBtYXkgYmUgYnVnZ3k6IHlvdSBuZWVkIHRvIG1ha2Ugc3VyZSB0aGUgY29tcGlsZXIgcmV0
dXJucyB0aGUgKnNhbWUqIHZhbHVlIGl0IHN0b3Jlcy4gTWF5YmUgeW914oCZcmUgc2F2ZWQgYnkg
dGhlIHBvdGVudGlhbCBhbGlhc2luZyBiZXR3ZWVuIHRoZSBkYXRhIHBhZ2UgYW5kIHRoZSBwYXNz
ZWQgcGFyYW1ldGVyIGFuZCB0aGUgdmFsdWUgeW91IHJlYWQsIGJ1dCB0aGF04oCZc2EgYmFkIHRo
aW5nIHRvIHJlbHkgb24uCgpUcnkgYmFycmllcigpIGFmdGVyIHRoZSByZWFkLgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
