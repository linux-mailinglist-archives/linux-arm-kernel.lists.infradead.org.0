Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB2CA3593
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e0RaLHY7ut8WyjkpbnwxYR+Ih4IMKsO2pdBiJ8cubO4=; b=AMGHtFLcznlCsm
	57pgiE5N8ua8tM4IMpd6npLXQOVtTfYUtrXbU8LTkCDr7n24LpQpSxc+Z8NF/aebFQgFu5F1/2YW3
	WXoUmhXWLzDPJ3VfdR3IkDJT/PTef5LYJWs7FHm8zJJBKJ1PQQTypumYXOdBVoRHw1PQGspnZSkoK
	cBIrBEww1QoW8zT9kZvZRh1kVrjmYBMKDIQMOTH0dN0a1+r2R3cbqhwjCGBBpwnflwFClEfBnTThF
	gvcEwlgDydCvxntNZO2s05xCrbVkSUN+XAC8aIZuik8cunVsbFDpTBaHqNSFEBzaLThd7/W2gqRjg
	rOuzbro4bfW1mwY8m46Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3ewZ-00057l-MS; Fri, 30 Aug 2019 11:19:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3ewT-00057S-Ui
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:19:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 51969337;
 Fri, 30 Aug 2019 04:19:45 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D433B3F246;
 Fri, 30 Aug 2019 04:19:44 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:19:42 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Noam Camus <noamikong@gmail.com>
Subject: Re: Changing default kernel load address
Message-ID: <20190830111942.GB47586@lakrids.cambridge.arm.com>
References: <CABhetiwRF2Gq3HeG_QNT6t3GtCNJzedeenn6vQC_0FYr5Ee+mA@mail.gmail.com>
 <20190827110234.GB8000@lakrids.cambridge.arm.com>
 <CABhetizecdqwS_BGw_UEpqjTGb61Wh0gNSJLXrT5UkBiitpxSw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABhetizecdqwS_BGw_UEpqjTGb61Wh0gNSJLXrT5UkBiitpxSw@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_041946_037748_F9661888 
X-CRM114-Status: GOOD (  16.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMDI6MDk6NThQTSArMDMwMCwgTm9hbSBDYW11cyB3cm90
ZToKPiA+4oCr15HXqteQ16jXmdeaINeZ15XXnSDXktezLCAyNyDXkdeQ15XXktezIDIwMTkg15Et
MTQ6MDIg157XkNeqIOKAqk1hcmsgUnV0bGFuZOKArOKAjyA84oCqbWFyay5ydXRsYW5kQGFybS5j
b23igKzigI8+OuKArAo+ID4+Cj4gPj4gT24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMDg6MTI6MjdQ
TSArMDMwMCwgTm9hbSBDYW11cyB3cm90ZToKPiA+PiA+IEhpLAo+ID4+ID4KPiA+PiA+IEkgd2lz
aCB0byBjaGFuZ2UgYW4gYXJtNjQgbWFjaGluZSBrZXJuZWwgbG9hZCBhZGRyZXNzIGFuZCBJIGhv
cGUgdGhpcwo+ID4+ID4gZm9ydW0gY2FuIGFzc2lzdC4KPiA+PiA+Cj4gPj4gPiBJbiBteSBjdXJy
ZW50IHNldHVwIHRoZSBLRVJORUxfU1RBUlQgbWFjcm8gKF90ZXh0KSBlcXVhbHMgMTI4LjVNQjoK
PiA+PiA+IEtJTUFHRV9WQUREUj0xMjhNQgo+ID4+ID4gVEVYVF9PRkZTRVQ9NTEyS0IKPiA+PiA+
Cj4gPj4gPiBJIHdpc2ggdG8gY2hhbmdlIGtlcm5lbCBsb2FkIGFkZHJlc3MgdG8gcmVzaWRlIG9u
IG15IGludGVybmFsIFJBTQo+ID4+ID4gd2hpY2ggbG9jYXRlcyBiZXlvbmQgNEdCLgo+ID4+Cj4g
Pj4gWW91IHNob3VsZG4ndCBuZWVkIHRvIG1vZGlmeSBhbnl0aGluZzsgdGhlIGtlcm5lbCBjYW4g
YmUgbG9hZGVkIGF0IGFueQo+ID4+IDJNaUItYWxpZ25lZCBwaHlzaWNhbCBhZGRyZXNzICsgVEVY
VF9PRkZTRVQuIEtFUk5FTF9TVEFSVCBhbmQKPiA+PiBLSU1BR0VfVkFERFIgYXJlIHZpcnR1YWwg
YWRkcmVzc2VzIGFuZCBkb24ndCByZXF1aXJlIGEgc3BlY2lmaWMgcGh5c2ljYWwKPiA+PiBhZGRy
ZXNzLgo+ID4+Cj4gPj4gUGxlYXNlIHNlZToKPiA+Pgo+ID4+ICAgaHR0cHM6Ly93d3cua2VybmVs
Lm9yZy9kb2MvaHRtbC9sYXRlc3QvYXJtNjQvYm9vdGluZy5odG1sCj4gCj4gSSBzZWUgdGhhdCBv
bmx5IHdoZW4gSSBtYXRjaCB1LWJvb3QgbG9hZCBhZGRyZXNzIG9mIGtlcm5lbCB3aXRoIHRoZQo+
IGJlZ2luIG9mIC50ZXh0IHNlY3Rpb24gYWRkcmVzcyBJIG1hbmFnZSB0byBib290IHN1Y2Nlc3Nm
dWxseSwKPiBvdGhlcndpc2UganVzdCBhIGJsYW5rIHNjcmVlbi4KCk9rLiBIYXZlIHlvdSB0cmll
ZCBsb2FkaW5nIGl0IGF0IGFub3RoZXIgYWRkcmVzcyBtYXRjaGluZyB0aGUKY29uc3RyYWludHMg
SSBkZXNjcmliZWQgYWJvdmU/CgpVLUJvb3QgaGFzIGNvZGUgdG8gZG8gdGhpcyBhdXRvbWF0aWNh
bGx5IGlmIHVzaW5nIHRoZSAiYm9vdGkiIGNvbW1hbmQuCklmIGJvb3RlZCBhcyBhbiBFRkkgYXBw
bGljYXRpb24sIHRoZSBrZXJuZWwncyBFRkkgc3R1YiB3aWxsIGhhbmRsZSB0aGlzLgoKPiBOb3Rl
IHRoYXQga2VybmVsIGlzIG5vdCBjb21waWxlZCB3aXRoLCAtZnBpYy8tZlBJQy4KPiBIb3cgY2Fu
IGl0IGJlIG9uZSBtYXkgZG93bmxvYWQga2VybmVsIGFueXdoZXJlIHdpdGhvdXQgbGlua2VyIHNj
cmlwdAo+IGJlaW5nIGF3YXJlIG9mIHRoZSBhY3R1YWwgbG9hZCBhZGRyZXNzIG9mIGtlcm5lbD8K
ClUtQm9vdCBsb2FkcyB0aGUga2VybmVsIGF0IGEgKnBoeXNpY2FsKiBhZGRyZXNzLCBidXQgYWxs
IHRoZSBDIGNvZGUKZXhlY3V0ZXMgYXQgYSAqdmlydHVhbCogYWRkcmVzcy4KClRoZSBlYXJseSBh
c3NlbWJseSBpbiBoZWFkLlMgaXMgcG9zaXRpb24taW5kZXBlbmRlbnQgcmVnYXJkbGVzcyBvZgpj
b21waWxlciBvcHRpb25zLCBhbmQgaXQgY3JlYXRlcyBwYWdlIHRhYmxlcyB0byBtYXAgdGhlIGtl
cm5lbCBhdCBhCnN1aXRhYmxlIHZpcnR1YWwgYWRkcmVzcyByZWdhcmxkZXNzIG9mIHRoZSBwaHlz
aWNhbCBhZGRyZXNzLCBzbyBsb25nIGFzCnRoZSBjb25zdHJhaW50cyBJIGRlc2NyaWJlZCBhYm92
ZSBhcmUgbWV0LgoKVGhlIGtlcm5lbCBjYW4gZHluYW1pY2FsbHkgZmlndXJlIG91dCB0aGUgcmVs
YXRpb25zaGlwIGJldHdlZW4gaXRzCnZpcnR1YWwgYWRkcmVzcyBhbmQgcGh5c2ljYWwgYWRkcmVz
cywgYW5kIGhhbmRsZSB0aGlzIGFzIHJlcXVpcmVkLgoKVGhhbmtzLApNYXJrLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
