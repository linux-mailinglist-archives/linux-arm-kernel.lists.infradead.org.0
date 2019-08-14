Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 341F68D4B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSmAzMoP7fYrXZ1dIz3CwrRD0Ld5BUv+AB3utIYga9E=; b=Q+JJFjrO9LzBe7
	rQYqA1P6d60b4+npWMtEaG57vG6uo/bUh2yPjEBYqEmicWQV7R+VvD99B9H2CUZH+XX5XP+7oKYjp
	AV7w0yWrBKkEYoAAFum5xIPSk4Mq+x2kST12A2p9bDfK3LDleynMpnTg2rg1Ir7BIML/SvPa7mRX8
	MNL/ZvMeQFL8MxJipLPohE1C/1A7C6gqXsVL9EENPZZ/lOENxHAQm0f0q8pVWueWuVyA0s53fctpP
	4eDSkRjZdVrf2zbifiMdDt1JjtMxwkrgBoyfnmYQOoHKc4pIXs1y7VcIaBvnd7QlmFxyUHoVgR65f
	4LwcsEZWq6eQN2sVrA4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtLB-0004Ao-F3; Wed, 14 Aug 2019 13:29:25 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtKs-0004A4-Uk
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:29:08 +0000
Received: by mail-yb1-xb44.google.com with SMTP id y21so4332348ybi.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 06:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=feHFiHeHvTpFde0tn91rp6H0MBIr1sa1sTvgeV402JM=;
 b=ac6RBWFxnGnpiZqQA/EYd//8dG4n8myv7wQGfVHqiBTTGPRbII9ak3Bp7Uu3XUlkdr
 85xhvuyQ5gR0apLrD1GDoHYw7xLKKr8sq8n5JixRq6kv89QGu2+dnhoaW1896Rk7R1yV
 LlymwQSaAtL3yaPo3MiAM4mAsXeULIqyhk9sCUJ54d3a/s1kR/Tkd55oWfc4fza3kbDe
 ZBZx+RlHTH6yhNR92OVxL2UEhSG4tMuB7uESR8P+DxZNzoDfWH30MCSzmUm2DCL4noCQ
 DfPDKTa4NIO3TcXsWtc6QVxjJdutnyur5T7BLkORpKL4RFpXjTk1kzcQNYO5z5h5dyVB
 6m0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=feHFiHeHvTpFde0tn91rp6H0MBIr1sa1sTvgeV402JM=;
 b=pm19HcnEj/1GMiIL2PG5jdkhQXX9oTzlEUU+ndn2xpDL0KQo/nvcSvOwQTm5PoNtpv
 DOeQpx0OcNrz27INMFwVGpMBq8rz1ohUgBkNzUbCh9I2dMRXhKUzcbP87uhq2NZ5Y5fI
 HJLOIyFUTqIaONis6KquadpMiZbLWDOZQpbzH3jQbz5fW4GTR4zLf/cJcxBfmnG8dSbY
 HyzeKYYsc7W/Cxz1aUt4o6flIPvJOxfefQAT0IPQ+871CEViKSnohmYtN4HPESsVHi1g
 WAwgyOTeJcREpRPS6wdeUbit4KR4aHxdobHLdI6br7V03RXpzsLOUEBTfg1/kHj2uXZ6
 mRxQ==
X-Gm-Message-State: APjAAAUsQAJRnMwAhMFEM59rWv0nd3lVTV63XxI7iANQ2FxCyK1JsWD3
 HAjT4u1o7kroApp4lkmKXzo0VI8F5j0nXgsc148=
X-Google-Smtp-Source: APXvYqy3AqQMungyg/xB+l2qARditdM8VXFFojcSBu1UaUOjytXLxcZJavyaAwTWZx/3F8rjkKQpTLcSWn/ANfaZArk=
X-Received: by 2002:a25:790a:: with SMTP id u10mr29982888ybc.379.1565789345382; 
 Wed, 14 Aug 2019 06:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
 <1648748.TWHgARQioU@jernej-laptop> <20190814132001.GC24324@Red>
In-Reply-To: <20190814132001.GC24324@Red>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Wed, 14 Aug 2019 15:28:53 +0200
Message-ID: <CAJiuCcfASQriPLMuwuDCn9bU=_8q4jL+KkPo8NmMrrYpOqy2qA@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH] ARM64: dts: allwinner: Add devicetree for
 pine H64 modelA evaluation board
To: clabbe.montjoie@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_062906_992430_424761D8 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIDE0IEF1ZyAyMDE5IGF0IDE1OjIwLCBDb3JlbnRpbiBMYWJiZSA8Y2xhYmJl
Lm1vbnRqb2llQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAxMiwgMjAxOSBhdCAx
Mjo1Njo1NlBNICswMjAwLCBKZXJuZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBEbmUgxI1ldHJ0ZWss
IDA4LiBhdmd1c3QgMjAxOSBvYiAxMDo0Mjo1MyBDRVNUIGplIENvcmVudGluIExhYmJlIG5hcGlz
YWwoYSk6Cj4gPiA+IFRoaXMgcGF0Y2ggYWRkcyB0aGUgZXZhbHVhdGlvbiB2YXJpYW50IG9mIHRo
ZSBtb2RlbCBBIG9mIHRoZSBQaW5lSDY0Lgo+ID4gPiBUaGUgbW9kZWwgQSBoYXMgdGhlIHNhbWUg
c2l6ZSBvZiB0aGUgcGluZTY0IGFuZCBoYXMgYSBQQ0lFIHNsb3QuCj4gPiA+Cj4gPiA+IFRoZSBv
bmx5IGRldmljZXRyZWUgZGlmZmVyZW5jZSB3aXRoIGN1cnJlbnQgcGluZUg2NCwgaXMgdGhlIFBI
WQo+ID4gPiByZWd1bGF0b3IuCj4gPgo+ID4gSSBoYXZlIE1vZGVsIEEgYm9hcmQgd2hpY2ggYWxz
byBuZWVkcyBkZGMtZW4tZ3Bpb3MgcHJvcGVydHkgZm9yIEhETUkgY29ubmVjdG9yCj4gPiBpbiBv
cmRlciBmb3IgSERNSSB0byB3b3JrIGNvcnJlY3RseS4gT3RoZXJ3aXNlIGl0IHdpbGwganVzdCB1
c2UgMTAyNHg3NjgKPiA+IHJlc29sdXRpb24uIENhbiB5b3UgY29uZmlybSB0aGF0PwoKU2NoZW1h
dGljcyBSZXYgQToKaHR0cDovL2ZpbGVzLnBpbmU2NC5vcmcvZG9jL1BpbmUlMjBINjQvUGluZSUy
MEg2NCUyMFZlcjEuMS0yMDE4MDEwNC5wZGYKClJldiBCOgpodHRwOi8vZmlsZXMucGluZTY0Lm9y
Zy9kb2MvUGluZSUyMEg2NC9QSU5FLUg2LW1vZGVsLUItMjAxODEyMTItc2NoZW1hdGljLnBkZgoK
VGhlcmUgaXMgYSBERENfRU4gb24gUkVWIEEgbm90IG9uIFJFViBCCgpSZWdhcmRzLApDbMOpbWVu
dAoKPiA+Cj4gPiBCZXN0IHJlZ2FyZHMsCj4gPiBKZXJuZWoKPiA+Cj4KPiBTb3JyeSBJIGRpZG50
IHVzZSBhdCBhbGwgdmlkZW8gc3R1ZmYgKGxpa2UgSERNSSksIHNvIEkgY2Fubm90IGFuc3dlciBu
b3cuCj4KPiBDb3VsZCB5b3Ugc2VuZCBtZSBhIHBhdGNoIGFnYWluc3QgbXkgZnV0dXJlIHYyIGFu
ZCBJIGNvdWxkIHRlc3Qgd2l0aC93aXRob3V0Lgo+Cj4gUmVnYXJkcwo+Cj4gLS0KPiBZb3UgcmVj
ZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29n
bGUgR3JvdXBzICJsaW51eC1zdW54aSIgZ3JvdXAuCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlz
IGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCBhbiBlbWFpbCB0
byBsaW51eC1zdW54aSt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tLgo+IFRvIHZpZXcgdGhp
cyBkaXNjdXNzaW9uIG9uIHRoZSB3ZWIsIHZpc2l0IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20v
ZC9tc2dpZC9saW51eC1zdW54aS8yMDE5MDgxNDEzMjAwMS5HQzI0MzI0JTQwUmVkLgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
