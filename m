Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE9E16EF1B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 20:34:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kD7xq9kiNy8+bdq9cn/kycgfoK+3aPZoGXNm70y6wVM=; b=BD6pnQohF4xY07
	qxYmiwvpGYl8Vbje5y6cl80pApAXJ6FXNkLa3Sf7EugVcYlWOGm1UquggaOOTXwzSPbqimrSsh9ql
	hk17vVDKZoHLlaX4e36R6KDrF3k4IFeybZiW2odW+v+/H3J9ZMhDvjzFsiGAiAuGgBJB4BvYZsuWI
	9sz0PxXZjZOvM2EeJMcOQqeZiKNsM74IwfY29sM1S9Y7QJKMXOmWaphdPwZZ+3e58yKYuWtFMcoro
	EYgvi3mk5ILxTH1HmZ0Nx6TxvmB8M6gwd9Fp3xojoeUIDG6tOQNNfolqDxsasgr3M6rMEJCOYcClk
	2EiC2tueQseR/iLyAsgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fxu-000094-S4; Tue, 25 Feb 2020 19:33:58 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6fxj-00007y-FG
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 19:33:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so33069wrn.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 11:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Pm9mKzisBXffRenDjzc076HpmcDb6sC4Riuk402uBGE=;
 b=jr2iMjqiejBKhDq5xjvmyFjljYq3lwqKBrpHOAjCtsrFl6i9NZ+7uR8rwXJajAaVWM
 SvzFIMNZxAYa5mOzSq8Y8Lx53XifXhNWDaQsmhlFr4a2vQwk7cOx2hb5Gzi2TFVQ2j3l
 JLv/R02zcCkjC0GqcR8a9PF+OtQuK2ir792RrAPY8GnZz3aMzTF4A4h8Qo+j+HepT4Xs
 /3DoZ07Boevr9AClCLzy29EwKRoo2a4KyvLILHKWZCOpTYLC5XdzOgdRxQZP0PtwB+nw
 Nwzc+WPHsYIk2FVsN1qleTc1HIwVEaJzRg12FugLELMVDKrxvHDJr5jy0TKXM1WtbUQE
 68lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Pm9mKzisBXffRenDjzc076HpmcDb6sC4Riuk402uBGE=;
 b=YJp8fVSVh7KHQqBi/vwKP2mw3sI920fimfOQ3lrmfhTysq5SenZ3ZcZ6S3nQP79oT7
 9QX+azhq/PqK0x+e6KxiyAlYms1tX65dqDyeTVbXcaiL79ks1ZtW+F13OqJ2woISmED+
 lMtjpVJa8BABP6lhz0v4UMBKrQ+4fMlTRxvb+hn3V9YBccDrCQb4okznN6O6zld6VR+F
 vgYnk70PPfhi7NEusTy2lB/xf0OOWRmVqFBiWpEq70r0hyVeRR126R3okBwoyvohyJCo
 Swjku+PcKZ48m6J12t2ABehPEupcIR53VPL0j08ODNVGTQYLQv+H7OLTkazEqtywQDFq
 yK7Q==
X-Gm-Message-State: APjAAAUTciTR3rpxuQGvd/Uief0OYdHiODCM/mCeYeyuUGN1qi/FGDUG
 h6km4vTtCirFUOHaSLIMo3I8Dqk15FY/aWKfnHKXxg==
X-Google-Smtp-Source: APXvYqxrxYeyZvodeEJ9iVUbqY7GqA354m0m1zT131nsQCFY1tmU8J/9AtNy0njbTfrfES0Z6kSPd1IFhJnhghT2o2E=
X-Received: by 2002:adf:e742:: with SMTP id c2mr691012wrn.262.1582659225078;
 Tue, 25 Feb 2020 11:33:45 -0800 (PST)
MIME-Version: 1.0
References: <8bb16ac4b15a7e28a8e819ef9aae20bfc3f75fbc.1582266841.git.stefan@agner.ch>
 <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
In-Reply-To: <CAKwvOdmV80xgvBnhB6ZpqYaqkxKi-_p+StnMojwNnf3kdxTT1A@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 25 Feb 2020 20:33:34 +0100
Message-ID: <CAKv+Gu881ZSwvuACmsbBnpfdeJpNYsEQxLSoepJBbZ=O6D6Rcg@mail.gmail.com>
Subject: Re: [PATCH] ARM: use assembly mnemonics for VFP register access
To: Nick Desaulniers <ndesaulniers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_113347_572645_E472DF79 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, Jian Cai <jiancai@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAyNSBGZWIgMjAyMCBhdCAyMDoxMCwgTmljayBEZXNhdWxuaWVycyA8bmRlc2F1bG5p
ZXJzQGdvb2dsZS5jb20+IHdyb3RlOgo+Cj4gT24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgOToyMiBQ
TSBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25lci5jaD4gd3JvdGU6Cj4gPgo+ID4gQ2xhbmcncyBp
bnRlZ3JhdGVkIGFzc2VtYmxlciBkb2VzIG5vdCBhbGxvdyB0byB0byB1c2UgdGhlIG1jcgo+ID4g
aW5zdHJ1Y3Rpb24gdG8gYWNjZXNzIGZsb2F0aW5nIHBvaW50IGNvLXByb2Nlc3NvciByZWdpc3Rl
cnM6Cj4gPiBhcmNoL2FybS92ZnAvdmZwbW9kdWxlLmM6MzQyOjI6IGVycm9yOiBpbnZhbGlkIG9w
ZXJhbmQgZm9yIGluc3RydWN0aW9uCj4gPiAgICAgICAgIGZteHIoRlBFWEMsIGZwZXhjICYgfihG
UEVYQ19FWHxGUEVYQ19ERVh8RlBFWENfRlAyVnxGUEVYQ19WVnxGUEVYQ19UUkFQX01BU0spKTsK
PiA+ICAgICAgICAgXgo+ID4gYXJjaC9hcm0vdmZwL3ZmcGluc3RyLmg6Nzk6Njogbm90ZTogZXhw
YW5kZWQgZnJvbSBtYWNybyAnZm14cicKPiA+ICAgICAgICAgYXNtKCJtY3IgcDEwLCA3LCAlMCwg
IiB2ZnByZWcoX3ZmcF8pICIsIGNyMCwgMCBAIGZteHIgICAiICNfdmZwXyAiLCAlMCIgXAo+ID4g
ICAgICAgICAgICAgXgo+ID4gPGlubGluZSBhc20+OjE6Njogbm90ZTogaW5zdGFudGlhdGVkIGlu
dG8gYXNzZW1ibHkgaGVyZQo+ID4gICAgICAgICBtY3IgcDEwLCA3LCByMCwgY3I4LCBjcjAsIDAg
QCBmbXhyICAgICAgRlBFWEMsIHIwCj4gPiAgICAgICAgICAgICBeCj4gPgo+ID4gVGhlIEdOVSBh
c3NlbWJsZXIgc3VwcG9ydHMgdGhlIC5mcHUgZGlyZWN0aXZlIGF0IGxlYXN0IHNpbmNlIDIuMTcg
KHdoZW4KPiA+IGRvY3VtZW50YXRpb24gaGFzIGJlZW4gYWRkZWQpLiBTaW5jZSBMaW51eCByZXF1
aXJlcyBiaW51dGlscyAyLjIxIGl0IGlzCj4gPiBzYWZlIHRvIHVzZSAuZnB1IGRpcmVjdGl2ZS4g
VXNlIHRoZSAuZnB1IGRpcmVjdGl2ZSBhbmQgbW5lbW9uaWNzIGZvciBWRlAKPiA+IHJlZ2lzdGVy
IGFjY2Vzcy4KPiA+Cj4gPiBUaGlzIGFsbG93cyB0byBidWlsZCB2ZnBtb2R1bGUuYyB3aXRoIENs
YW5nIGFuZCBpdHMgaW50ZWdyYXRlZCBhc3NlbWJsZXIuCj4gPgo+ID4gTGluazogaHR0cHM6Ly9n
aXRodWIuY29tL0NsYW5nQnVpbHRMaW51eC9saW51eC9pc3N1ZXMvOTA1Cj4gPiBTaWduZWQtb2Zm
LWJ5OiBTdGVmYW4gQWduZXIgPHN0ZWZhbkBhZ25lci5jaD4KPiA+IC0tLQo+ID4gIGFyY2gvYXJt
L3ZmcC92ZnBpbnN0ci5oIHwgMTIgKysrKy0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm0vdmZwL3ZmcGluc3RyLmggYi9hcmNoL2FybS92ZnAvdmZwaW5zdHIuaAo+ID4gaW5kZXggMzhk
YzE1NGUzOWZmLi43OTljY2YwNjU0MDYgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybS92ZnAvdmZw
aW5zdHIuaAo+ID4gKysrIGIvYXJjaC9hcm0vdmZwL3ZmcGluc3RyLmgKPiA+IEBAIC02MiwyMSAr
NjIsMTcgQEAKPiA+ICAjZGVmaW5lIEZQU0NSX0MgKDEgPDwgMjkpCj4gPiAgI2RlZmluZSBGUFND
Ul9WICAgICAgICAoMSA8PCAyOCkKPiA+Cj4gPiAtLyoKPiA+IC0gKiBTaW5jZSB3ZSBhcmVuJ3Qg
YnVpbGRpbmcgd2l0aCAtbWZwdT12ZnAsIHdlIG5lZWQgdG8gY29kZQo+ID4gLSAqIHRoZXNlIGlu
c3RydWN0aW9ucyB1c2luZyB0aGVpciBNUkMvTUNSIGVxdWl2YWxlbnRzLgo+ID4gLSAqLwo+ID4g
LSNkZWZpbmUgdmZwcmVnKF92ZnBfKSAjX3ZmcF8KPiA+IC0KPiA+ICAjZGVmaW5lIGZtcngoX3Zm
cF8pICh7ICAgICAgICAgICAgICAgICBcCj4gPiAgICAgICAgIHUzMiBfX3Y7ICAgICAgICAgICAg
ICAgICAgICAgICAgXAo+ID4gLSAgICAgICBhc20oIm1yYyBwMTAsIDcsICUwLCAiIHZmcHJlZyhf
dmZwXykgIiwgY3IwLCAwIEAgZm1yeCAgICUwLCAiICNfdmZwXyAgICBcCj4gPiArICAgICAgIGFz
bSgiLmZwdSAgICAgICB2ZnB2MlxuIiAgICAgICAgXAo+ID4gKyAgICAgICAgICAgInZtcnMgICAg
ICAgJTAsICIgI192ZnBfICAgIFwKPiA+ICAgICAgICAgICAgIDogIj1yIiAoX192KSA6IDogImNj
Iik7ICAgICBcCj4gPiAgICAgICAgIF9fdjsgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+
ID4gICB9KQo+ID4KPiA+ICAjZGVmaW5lIGZteHIoX3ZmcF8sX3Zhcl8pICAgICAgICAgICAgICBc
Cj4gPiAtICAgICAgIGFzbSgibWNyIHAxMCwgNywgJTAsICIgdmZwcmVnKF92ZnBfKSAiLCBjcjAs
IDAgQCBmbXhyICAgIiAjX3ZmcF8gIiwgJTAiIFwKPiA+ICsgICAgICAgYXNtKCIuZnB1ICAgICAg
IHZmcHYyXG4iICAgICAgICBcCj4gPiArICAgICAgICAgICAidm1zciAgICAgICAiICNfdmZwXyAi
LCAlMCIgXAo+ID4gICAgICAgICAgICA6IDogInIiIChfdmFyXykgOiAiY2MiKQo+ID4KPiA+ICB1
MzIgdmZwX3NpbmdsZV9jcGRvKHUzMiBpbnN0LCB1MzIgZnBzY3IpOwo+ID4gLS0KPgo+IEhpIFN0
ZWZhbiwKPiBUaGFua3MgZm9yIHRoZSBwYXRjaC4gIFJlYWRpbmcgdGhyb3VnaDoKPiAtIEZNUlgs
IEZNWFIsIGFuZCBGTVNUQVQ6Cj4gaHR0cDovL2luZm9jZW50ZXIuYXJtLmNvbS9oZWxwL2luZGV4
LmpzcD90b3BpYz0vY29tLmFybS5kb2MuZHVpMDA2OGIvQmNmYmRpaGkuaHRtbAo+IC0gVk1SUyBh
bmQgVk1TUjoKPiBodHRwOi8vaW5mb2NlbnRlci5hcm0uY29tL2hlbHAvaW5kZXguanNwP3RvcGlj
PS9jb20uYXJtLmRvYy5kdWkwMjA0aC9CY2ZiZGloaS5odG1sCj4KPiBTaG91bGQgYSBtYWNybyBj
YWxsZWQgYGZtcnhgIHRoYXQgaGFkIGEgY29tbWVudCBhYm91dCBgZm1yeGAgYmUgdXNpbmcKPiBg
dm1yc2AgaW4gcGxhY2Ugb2YgYGZtcnhgPwo+Cj4gSXQgbG9va3MgbGlrZSBDbGFuZyB0cmVhdHMg
dGhlbSB0aGUgc2FtZSwgYnV0IEdDQyBrZWVwcyB0aGVtIHNlcGFyYXRlOgo+IGh0dHBzOi8vZ29k
Ym9sdC5vcmcvei9ZS21TQXMKPiBBaCwgdGhpcyBpcyBvbmx5IHdoZW4gc3RyZWFtaW5nIHRvIGFz
c2VtYmx5LiBMb29rcyBsaWtlIHRoZXkgaGF2ZSB0aGUKPiBzYW1lIGVuY29kaW5nLCBhbmQgcHJv
ZHVjZSB0aGUgc2FtZSBkaXNhc3NlbWJseS4gKEdvZGJvbHQgZW1pdHMKPiBhc3NlbWJseSBieSBk
ZWZhdWx0LCBhbmQgaGFzIHRoZSBvcHRpb24gdG8gY29tcGlsZSwgdGhlbiBkaXNhc3NlbWJsZSku
Cj4gSWYgSSB0YWtlIG15IGNhc2UgZnJvbSBnb2Rib2x0IGFib3ZlOgo+Cj4g4p6cICAvdG1wIGFy
bS1saW51eC1nbnVlYWJpaGYtZ2NjIC1PMiAtYyB4LmMKPiDinpwgIC90bXAgbGx2bS1vYmpkdW1w
IC1kciB4Lm8KPgo+IHgubzogZmlsZSBmb3JtYXQgZWxmMzItYXJtLWxpdHRsZQo+Cj4KPiBEaXNh
c3NlbWJseSBvZiBzZWN0aW9uIC50ZXh0Ogo+Cj4gMDAwMDAwMDAgYmFyOgo+ICAgICAgICAwOiBm
MSBlZSAxMCAwYSAgICAgICAgICAgICAgICAgIHZtcnMgcjAsIGZwc2NyCj4gICAgICAgIDQ6IDcw
IDQ3ICAgICAgICAgICAgICAgICAgICAgICAgYnggbHIKPiAgICAgICAgNjogMDAgYmYgICAgICAg
ICAgICAgICAgICAgICAgICBub3AKPgo+IDAwMDAwMDA4IGJhejoKPiAgICAgICAgODogZjEgZWUg
MTAgMGEgICAgICAgICAgICAgICAgICB2bXJzIHIwLCBmcHNjcgo+ICAgICAgICBjOiA3MCA0NyAg
ICAgICAgICAgICAgICAgICAgICAgIGJ4IGxyCj4gICAgICAgIGU6IDAwIGJmICAgICAgICAgICAg
ICAgICAgICAgICAgbm9wCj4KPiBTbyBpbmRlZWQgYSBzaW1pbGFyIGVuY29kaW5nIGV4aXN0cyBm
b3IgdGhlIHR3byBkaWZmZXJlbnQgYXNzZW1ibGVyCj4gaW5zdHJ1Y3Rpb25zLgoKRG9lcyB0aGF0
IGhvbGQgZm9yIEFSTSAoQTMyKSBpbnN0cnVjdGlvbnMgYXMgd2VsbD8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
