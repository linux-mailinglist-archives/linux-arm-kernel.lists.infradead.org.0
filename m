Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4727E1B1414
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3AeRKFGVa5fdJA8dRe7o0qmUDScChrjaDCuBryPpG3I=; b=aiRXz1F4Kk1pCY
	6y7HZ5C9ME0LlPMmFF1hHpw0lVPTXmEpspzpohQsZaxZtbQsjeKLIOVHWPRdfmkRYvrzN1iBMTE5Y
	xaw1n60BezvbJdBg4aMHVDA3BNqRWlVGqi5rgzUdz6aWJG2CF+JUn80Emsu+1JOVPKv35AkROtkhP
	Otcl1dZVtob0WfcNnjWcOhZa8RENPUxNkmjtJJ2jrCY1lWnuCFWQfMSM1Oav32wEAMHpkuv4jeE3Y
	agOvyJUe7YaNii2hm6BfGUjIyBAB3BqlFH7DtQf5KKx7kFvOKLuSH6VNJmZlhnBfuslyAxBDLsVCA
	7JqFq1Nans3JDYWCln6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQatl-00018Z-5q; Mon, 20 Apr 2020 18:12:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQarT-00017z-Lt
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:09:41 +0000
Received: by mail-wr1-x443.google.com with SMTP id b11so13351875wrs.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 11:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=E+/vuF9HAcua+VjNqFK+OSxRnZYILG6HAUBDeRd0Fqk=;
 b=gkFOaHjGE1jmqWE+dwS49aZKqQW/PaPPYbA0PdsZdBzcts8pkIrs7eXUInmxaK0HRy
 KdoEY02H57vDLbTgC29jNN6VI3Y/aNngGbVFWpYWhEJA6HZWQFaKw9MYN9sw7DkUcu4Z
 xeHqWor8YcaT5ACzQ1H2jzeuwGP38UR9cbe2z8Gq2YfV2OLwEjzmYA0jEG9/l5gNAfPI
 lnyXjJ05xpA2kjCOyOCotYJpD4fDqpeKg92SUTYe7UfVX2OgkL+966MpfyoJbCfC5UDV
 +1eLENWeSNTTn0C2pZKkw+E5qW+vdwOxLE0PjmawiUAQdMbaeJbc6ufDiV++8AFWm2V2
 Fhtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=E+/vuF9HAcua+VjNqFK+OSxRnZYILG6HAUBDeRd0Fqk=;
 b=HdPHBdq+V8Xc2uQpgmZrijhYGn5qqksM1zBqnLPBfCO3ztEC5s2rxhc+kbzP1fBmyE
 c+fzI1j8g0TcIAzkc4L0l+w7lpUcgo37MrAghLxyTz0xwz5zmwOV1XgzpLp8eJxnibwR
 zkClgHDX083RvyY/Q3FjxbCmmrFWqqM1IkV10IcUUb9O2MZ6Jq0ryCPJv3kDAFUDi3kh
 xVxQ6xyQBeJRi9C8ulQeoR7ybPHza9S2t2MJllAEe9yNXHr4Ja5kq8KfYi+fK3fTsVmY
 0ukejDqqstGVF3SrgIEtpwy1kx4zMqPNZSJp20sGVmjY8OGQnlP+uHJvhG2PD1pOoMx7
 /PmA==
X-Gm-Message-State: AGi0PubFQZeY01p0w5bhQFiKQB3IRnB1thYxVq44QbnWUHKPIFpGH9un
 +fhX8h4ot0FJquXjzkcDimg=
X-Google-Smtp-Source: APiQypIide7sDTLoQe1rFkP7N82820wmIBUrJfyBR8i6hJHz8B1tOkkdIebD/w9NIEOYQjrD6NNipw==
X-Received: by 2002:adf:c109:: with SMTP id r9mr19874418wre.265.1587406178010; 
 Mon, 20 Apr 2020 11:09:38 -0700 (PDT)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net.
 [194.152.20.232])
 by smtp.gmail.com with ESMTPSA id j10sm249671wmi.18.2020.04.20.11.09.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:09:37 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: linux-sunxi@googlegroups.com
Subject: Re: [linux-sunxi] [PATCH] media: cedrus: Implement runtime PM
Date: Mon, 20 Apr 2020 20:09:35 +0200
Message-ID: <4523224.GXAFRqVoOG@jernej-laptop>
In-Reply-To: <20200420175651.GA610776@aptenodytes>
References: <20200408010232.48432-1-samuel@sholland.org>
 <5590139.lOV4Wx5bFT@jernej-laptop> <20200420175651.GA610776@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_110939_738909_321C3072 
X-CRM114-Status: GOOD (  34.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jernej.skrabec[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Samuel Holland <samuel@sholland.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgcG9uZWRlbGplaywgMjAuIGFwcmlsIDIwMjAgb2IgMTk6NTY6NTEgQ0VTVCBqZSBQ
YXVsIEtvY2lhbGtvd3NraSAKbmFwaXNhbChhKToKPiBIaSBKZXJuZWosCj4gCj4gT24gTW9uIDIw
IEFwciAyMCwgMTg6NDEsIEplcm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSBwb25lZGVsamVr
LCAyMC4gYXByaWwgMjAyMCBvYiAxNzoxMDoxMCBDRVNUIGplIFBhdWwgS29jaWFsa293c2tpCj4g
PiAKPiA+IG5hcGlzYWwoYSk6Cj4gPiA+IEhpLAo+ID4gPiAKPiA+ID4gT24gU3VuIDE5IEFwciAy
MCwgMTU6MjgsIFNhbXVlbCBIb2xsYW5kIHdyb3RlOgo+ID4gPiA+IE9uIDQvOC8yMCAxMTowMSBB
TSwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gPiA+ID4gSGkgU2FtdWVsIQo+ID4gPiA+ID4g
Cj4gPiA+ID4gPiBEbmUgc3JlZGEsIDA4LiBhcHJpbCAyMDIwIG9iIDAzOjAyOjMyIENFU1QgamUg
U2FtdWVsIEhvbGxhbmQgCm5hcGlzYWwoYSk6Cj4gPiA+ID4gPj4gVGhpcyBhbGxvd3MgdGhlIFZF
IGNsb2NrcyBhbmQgUExMX1ZFIHRvIGJlIGRpc2FibGVkIG1vc3Qgb2YgdGhlCj4gPiA+ID4gPj4g
dGltZS4KPiA+ID4gPiA+PiAKPiA+ID4gPiA+PiBTaW5jZSB0aGUgZGV2aWNlIGlzIHN0YXRlbGVz
cywgZWFjaCBmcmFtZSBnZXRzIGEgc2VwYXJhdGUgcnVudGltZQo+ID4gPiA+ID4+IFBNCj4gPiA+
ID4gPj4gcmVmZXJlbmNlLiBFbmFibGUgYXV0b3N1c3BlbmQgc28gdGhlIFBNIGNhbGxiYWNrcyBh
cmUgbm90IHJ1bgo+ID4gPiA+ID4+IGJlZm9yZQo+ID4gPiA+ID4+IGFuZAo+ID4gPiA+ID4+IGFm
dGVyIGV2ZXJ5IGZyYW1lLgo+ID4gPiA+ID4+IAo+ID4gPiA+ID4+IFNpZ25lZC1vZmYtYnk6IFNh
bXVlbCBIb2xsYW5kIDxzYW11ZWxAc2hvbGxhbmQub3JnPgo+ID4gPiA+ID4+IC0tLQo+ID4gPiA+
ID4+IAo+ID4gPiA+ID4+IEkgdGVzdGVkIHRoaXMgd2l0aCB2NGwyLXJlcXVlc3QtdGVzdC4gSSBk
b24ndCBoYXZlIHRoZSBzZXR1cCB0byBkbwo+ID4gPiA+ID4+IGFueXRoaW5nIG1vcmUgY29tcGxp
Y2F0ZWQgYXQgdGhlIG1vbWVudC4KPiA+ID4gPiA+PiAKPiA+ID4gPiA+PiAtLS0KPiA+ID4gPiA+
PiAKPiA+ID4gPiA+PiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9jZWRydXMu
YyAgIHwgICA3ICsrCj4gPiA+ID4gPj4gIC4uLi9zdGFnaW5nL21lZGlhL3N1bnhpL2NlZHJ1cy9j
ZWRydXNfaHcuYyAgICB8IDExNQo+ID4gPiA+ID4+ICArKysrKysrKysrKystLS0tLS0KPiA+ID4g
PiA+PiAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19ody5oICAgIHwgICAz
ICsKPiA+ID4gPiA+PiAgMyBmaWxlcyBjaGFuZ2VkLCA4OCBpbnNlcnRpb25zKCspLCAzNyBkZWxl
dGlvbnMoLSkKPiA+ID4gPiAKPiA+ID4gPiBbc25pcF0KPiA+ID4gPiAKPiA+ID4gPiA+IFJlc2V0
IGFib3ZlIGNhdXNlcyBwcm9ibGVtLiBXaGVuIGZvcm1hdCBpcyBzZXQgaW4KPiA+ID4gPiA+IGNl
ZHJ1c19zX2ZtdF92aWRfY2FwKCkKPiA+ID4gPiA+IGEKPiA+ID4gPiA+IGZ1bmN0aW9uIGlzIGNh
bGxlZCwgd2hpY2ggc2V0cyBmZXcgcmVnaXN0ZXJzIGluIEhXLiBPZiBjb3Vyc2UsIHRoZXJlCj4g
PiA+ID4gPiBpcwo+ID4gPiA+ID4gbm8KPiA+ID4gPiA+IGd1YXJhbnRlZSB0aGF0IHNvbWVvbmUg
d2lsbCBzdGFydCBkZWNvZGluZyBpbW1lZGlhdGVseSBhZnRlciBjYXB0dXJlCj4gPiA+ID4gPiBm
b3JtYXQgaXMgc2V0LiBTbywgaWYgdGhlIGRyaXZlciBwdXRzIFZQVSB0byBzbGVlcCBpbiB0aGUg
bWVhbiB0aW1lLAo+ID4gPiA+ID4gcmVzZXQgd2lsbCBjbGVhciB0aG9zZSByZWdpc3RlcnMgYW5k
IGRlY29kZWQgdmlkZW8gd2lsbCBiZSBpbgo+ID4gPiA+ID4gZGlmZmVyZW50Cj4gPiA+ID4gPiBm
b3JtYXQgdGhhbiBleHBlY3RlZC4gSXQgY291bGQgYmUgZXZlbiBhcmd1ZWQgdGhhdCByZWdpc3Rl
cnMgc2hvdWxkCj4gPiA+ID4gPiBub3QKPiA+ID4gPiA+IGJlIHNldCBpbiB0aGF0IGZ1bmN0aW9u
IGFuZCB0aGF0IHRoaXMgaXMgZGVzaWduIGlzc3VlIG9yIGJ1ZyBpbgo+ID4gPiA+ID4gZHJpdmVy
Lgo+ID4gPiA+IAo+ID4gPiA+IFlvdSdyZSByaWdodC4gSSBkaWRuJ3Qgc2VlIHRoYXQgY2VkcnVz
X2RzdF9mb3JtYXRfc2V0KCkgd2FzIGNhbGxlZAo+ID4gPiA+IG91dHNpZGUKPiA+ID4gPiBjZWRy
dXNfZW5naW5lX2VuYWJsZS9kaXNhYmxlKCkuCj4gPiA+IAo+ID4gPiBUaGlzIG1pZ2h0IGluZGVl
ZCBiZSBhbiBpc3N1ZSB3aXRoIG11bHRpcGxlIGRlY29kaW5nIGNvbnRleHRzIGluCj4gPiA+IHBh
cmFsbGVsLAo+ID4gPiB3aXRoIHBvdGVudGlhbGx5IGRpZmZlcmVudCBmb3JtYXRzLiBGb3IgdGhh
dCByZWFzb24sIGl0IGxvb2tzIGxpa2UgdGhlCj4gPiA+IHJpZ2h0IHRoaW5nIHRvIGRvIHdvdWxk
IGJlIHRvIHNldCB0aGUgZm9ybWF0IGF0IGVhY2ggZGVjb2RpbmcgcnVuIGJhc2VkCj4gPiA+IG9u
Cj4gPiA+IHRoZSBmb3JtYXQgc2V0IGluIHRoZSBjb250ZXh0IGJ5IHNfZm10Lgo+ID4gCj4gPiBT
byB5b3UgYXJlIHN1Z2dlc3RpbmcgdGhhdCBjZWRydXNfZHN0X2Zvcm1hdF9zZXQoKSBzaG91bGQg
YmUgbW92ZWQgdG8KPiA+IGNlZHJ1c19kZXZpY2VfcnVuKCksIHJpZ2h0PyBUaGlzIHdheSBhbGwg
cmVnaXN0ZXJzIGFyZSBzZXQgYXQgZWFjaCBydW4sCj4gPiB3aGljaCBpcyB0aGVuIHRydWx5IHN0
YXRlbGVzcy4KPiAKPiBZZXMsIGV4YWN0bHkhIEJ1dCB0aGlzIGlzIG91dHNpZGUgb2YgdGhlIHNj
b3BlIG9mIHRoaXMgc2VyaWVzIHRob3VnaC4KCkknbSBub3Qgc3VyZSBhYm91dCBiZWluZyBvdXQg
b2Ygc2NvcGUuIEl0IGhhcyB0byBiZSBtb3ZlZCBhbnl3YXksIHNvIHdoeSBub3QgCnB1dCBpdCBp
biBiZXN0IHBsYWNlPwoKQmVzdAoKPiAKPiBDaGVlcnMsCj4gCj4gUGF1bAo+IAo+ID4gQmVzdCBy
ZWdhcmRzLAo+ID4gSmVybmVqCj4gPiAKPiA+ID4gPiA+IEFueXdheSwgSSBtYWRlIGEgcnVudGlt
ZSBQTSBzdXBwb3J0IGxvbmcgdGltZSBhZ28sIGJ1dCBuZXZlciBkbwo+ID4gPiA+ID4gYW55dGhp
bmcKPiA+ID4gPiA+IGJlc2lkZXMgcnVubmluZyBmZXcgdGVzdHM6Cj4gPiA+ID4gPiBodHRwczov
L2dpdGh1Yi5jb20vamVybmVqc2svbGludXgtMS9jb21taXQvCj4gPiA+ID4gPiBkMjQ1YjdmYTJh
MjZlNTE5ZmY2NzVhMjU1YzQ1MjMwNTc1YTRhODQ4Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IEl0IHRh
a2VzIGEgYml0IGRpZmZlcmVudCBhcHByb2FjaC4gUG93ZXIgaXMgZW5hYmxlZCBpbiBzdGFydAo+
ID4gPiA+ID4gc3RyZWFtaW5nCj4gPiA+ID4gPiBhbmQKPiA+ID4gPiA+IGRpc2FibGVkIGluIHN0
b3Agc3RyZWFtaW5nLiBUaGlzIGlzIHNpbXBsZXIgYXBwcm9hY2ggYW5kIGRvZXNuJ3QKPiA+ID4g
PiA+IG5lZWQKPiA+ID4gPiA+IGF1dG9zdXNwZW5kIGZ1bmN0aW9uYWxpdHkuIEkgYWxzbyBtb3Zl
ZCBjYWxsIHRvIGEgZnVuY3Rpb24gd2hpY2gKPiA+ID4gPiA+IHNldHMKPiA+ID4gPiA+IGZvcm1h
dCBpbiBIVyByZWdpc3RlcnMgdG8gc3RhcnQgc3RyZWFtaW5nIGhhbmRsZXIsIHNvIGl0J3MKPiA+
ID4gPiA+IGd1YXJhbnRlZWQKPiA+ID4gPiA+IHRvIGJlIHNldCBhdCB0aGUgYmVnaW5uaW5nLgo+
ID4gPiA+IAo+ID4gPiA+IEFzc3VtaW5nIGNlZHJ1c19kZXZpY2VfcnVuKCkgb25seSBnZXRzIGNh
bGxlZCBiZXR3ZWVuIHN0cmVhbW9uIGFuZAo+ID4gPiA+IHN0cmVhbW9mZiAod2hpY2ggYXBwZWFy
cyB0byBiZSB0aGUgY2FzZSksIHRoaXMgbG9va3MgbGlrZSBhIGJldHRlcgo+ID4gPiA+IGRlc2ln
bi4KPiA+ID4gCj4gPiA+IFllcywgdGhpcyBpcyBkZWZpbnRpZWx5IGVuc3VyZWQgYnkgdGhlIFY0
TDIgZnJhbWV3b3JrLiBJIGFncmVlIHRoYXQKPiA+ID4gc3RyZWFtb24vb2ZmIGFyZSB0aGUgY29y
cmVjdCBzeW5jIHBvaW50cy4KPiA+ID4gCj4gPiA+ID4gPiBOb3RlIHRoYXQgc29tZSByZWdpc3Rl
cnMgYXJlIG9ubHkgc2V0IGluIHN0YXJ0IHN0cmVhbWluZyBoYW5kbGVyLgo+ID4gPiA+ID4gV2l0
aAo+ID4gPiA+ID4geW91cgo+ID4gPiA+ID4gYXBwcm9hY2gsIGlmIGZpcnN0IGZyYW1lIGlzIHN1
Ym1pdHRlZCB0b28gbGF0ZSwgYXNzZXJ0aW5nIGFuZAo+ID4gPiA+ID4gZGUtYXNzZXJ0aW5nCj4g
PiA+ID4gPiByZXNldCBsaW5lIGNvdWxkIHJlc2V0IHRob3NlIHJlZ2lzdGVycy4KPiA+ID4gPiAK
PiA+ID4gPiBJIG9ubHkgc2VlIHJlZ2lzdGVycyBiZWluZyBzZXQgaW4gY2VkcnVzX3N0YXJ0X3N0
cmVhbWluZygpIGFmdGVyIHlvdXIKPiA+ID4gPiBwYXRjaCwgd2hlcmUgeW91IGFkZCBhIGNhbGwg
dG8gY2VkcnVzX2RzdF9mb3JtYXRfc2V0KCkuIEkgY2FuJ3QgZmluZAo+ID4gPiA+IGFueQo+ID4g
PiA+IHJlZ2lzdGVycyBiZWluZyB3cml0dGVuIGluIGFueSBvZiB0aGUgLT5zdGFydCgpIGNhbGxi
YWNrcy4KPiA+ID4gPiAKPiA+ID4gPiBJJ2xsIHNlbmQgYSB2MiB3aGljaCBjb21iaW5lcyB0aGUg
dHdvIHBhdGNoZXM6IHlvdXJzIHdoaWNoIGhhbmRsZXMgdGhlCj4gPiA+ID4gcnVudGltZSBwYXJ0
IGJldHRlciwgYW5kIG1pbmUgd2hpY2ggaGFuZGxlcyB0aGUgcHJvYmUvcmVtb3ZlIHBhcnQKPiA+
ID4gPiBiZXR0ZXIKPiA+ID4gPiB3aXRoICFDT05GSUdfUE0uCj4gPiA+IAo+ID4gPiBUaGFua3Ms
IHRoYXQgc2hvdWxkIGRvIGl0IQo+ID4gPiAKPiA+ID4gQ2hlZXJzLAo+ID4gPiAKPiA+ID4gUGF1
bAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
