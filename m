Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0E113171C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 18:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6sY58Q0Hy/zPK1WkbZdk+P798KGCGe4l/L+fwiZDPE=; b=GHavjcixa6AN0O
	QTDzINA1HEmD8OE9b7vJYlSGplrto85IRKw5kJXYeSQChsIvQyVwbSSzxprkmWqhuJaZS5jtlN8N7
	NSSy51NneWxySHoHZHeYpJ2/1bX4anmaboRQHdIcl1pg+YrgW9Qe4LeGhJ+jeBvL0bkoU3Nrtqu/C
	NfLLlkVwD7SAhKM4btb6Wx6hoGJoFMbDpmYLsCsSo0PO2esFqKh6B4iCCksukWGkzfEFQr7cgqpR+
	CeXo0CwWlQjvKg1wnCl458CTVXPbkw/UUV45r2n+YQu8khQIA4ZcH9JDP7QpIwLG2vbOyNuty2A05
	3YTFEv830BLzNf/8xtMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWah-0007ku-Ic; Mon, 06 Jan 2020 17:54:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWaa-0007kY-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 17:54:53 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A93EC2146E;
 Mon,  6 Jan 2020 17:54:50 +0000 (UTC)
Date: Mon, 6 Jan 2020 12:54:49 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "ftrace: Rework event_create_dir()" triggers boot error messages
Message-ID: <20200106125449.563a2047@gandalf.local.home>
In-Reply-To: <3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
References: <0FA8C6E3-D9F5-416D-A1B0-5E4CD583A101@lca.pw>
 <20191218233101.73044ce3@rorschach.local.home>
 <3F343134-63CB-4D99-97AD-F512B8760C94@lca.pw>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_095452_556574_C73254B3 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux@googlegroups.com, Catalin Marinas <catalin.marinas@arm.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCA2IEphbiAyMDIwIDEyOjA1OjU4IC0wNTAwClFpYW4gQ2FpIDxjYWlAbGNhLnB3PiB3
cm90ZToKCj4gPiBkaWZmIC0tZ2l0IGEva2VybmVsL3RyYWNlL3RyYWNlX3N5c2NhbGxzLmMgYi9r
ZXJuZWwvdHJhY2UvdHJhY2Vfc3lzY2FsbHMuYwo+ID4gaW5kZXggNTM5MzUyNTlmNzAxLi5hYmI3
MGM3MWZlNjAgMTAwNjQ0Cj4gPiAtLS0gYS9rZXJuZWwvdHJhY2UvdHJhY2Vfc3lzY2FsbHMuYwo+
ID4gKysrIGIva2VybmVsL3RyYWNlL3RyYWNlX3N5c2NhbGxzLmMKPiA+IEBAIC0yNjksNyArMjY5
LDggQEAgc3RhdGljIGludCBfX2luaXQgc3lzY2FsbF9lbnRlcl9kZWZpbmVfZmllbGRzKHN0cnVj
dCB0cmFjZV9ldmVudF9jYWxsICpjYWxsKQo+ID4gCXN0cnVjdCBzeXNjYWxsX3RyYWNlX2VudGVy
IHRyYWNlOwo+ID4gCXN0cnVjdCBzeXNjYWxsX21ldGFkYXRhICptZXRhID0gY2FsbC0+ZGF0YTsK
PiA+IAlpbnQgb2Zmc2V0ID0gb2Zmc2V0b2YodHlwZW9mKHRyYWNlKSwgYXJncyk7Cj4gPiAtCWlu
dCByZXQsIGk7Cj4gPiArCWludCByZXQgPSAwOwo+ID4gKwlpbnQgaTsKPiA+IAo+ID4gCWZvciAo
aSA9IDA7IGkgPCBtZXRhLT5uYl9hcmdzOyBpKyspIHsKPiA+IAkJcmV0ID0gdHJhY2VfZGVmaW5l
X2ZpZWxkKGNhbGwsIG1ldGEtPnR5cGVzW2ldLCAgCj4gCj4gU3RldmUsIHRob3NlIGVycm9ycyBh
cmUgc3RpbGwgdGhlcmUgaW4gdG9kYXnigJlzIGxpbnV4LW5leHQuIElzIHRoaXMgcGF0Y2ggb24g
dGhlIHdheSB0byB0aGUgbGludXgtbmV4dD8KCk5vLCBiZWNhdXNlIHRoaXMgYnVnIGlzIG5vdCBp
biBteSB0cmVlLgoKSSdsbCBzZW5kIGEgcHJvcGVyIHBhdGNoIHRvIHRoZSB0aXAgZm9sa3MuCgot
LSBTdGV2ZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
