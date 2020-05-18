Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 349061D70E6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:26:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trRY00SKBgLXxbnP7I6ZW169oc5hr0JIFf5+TSQFmNs=; b=UJrLNM1aZPoA3S
	HWgRCA9dgP1+x3QYIwPTAlDpB45VE3kUGmBCW5kdzwcIZKQaQEDSsECp0/rUGIEZAr96+ShzuyNbN
	VfbNDJRlO1CzmNMZtf5SAN7RQKvpZszSRXq9dOiM/wEu1YmLBb1gGO31kmEAhwqRUgObuiaJ2gvns
	kFhXduMOdTg05YvtPwr8jsFypoJ1yJ5sYA3DYKYk/fp2S6CBw68OqiB0nBDD97oJuXP0lmoqfVvT8
	ZTFcIqdQ9I43tRsAAYyuHFcgfdg4cXv3p+yRCFrh/Ic9mJirqN7IxTTD3nyeiI0cQH1W4OY4goBSG
	Qf/NwmFc2FsixvXaYDWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaZEG-0001oP-Cp; Mon, 18 May 2020 06:26:24 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZE6-0001mz-1W; Mon, 18 May 2020 06:26:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s69so4650371pjb.4;
 Sun, 17 May 2020 23:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sqEbuUUC6vd4Sa66d08NNo4B0txnWr9aDhBTPjvmYJ8=;
 b=X3xPJZtpZ+1rw0mFFaFkJlO44v9hlmZCh+zJeg9JgWkvvtlZOPOXfPTsK01TqHRmgr
 oLDaaMSe5J/NidcHTI+itTPoh7TsAZJ8xd1iMI/5nltzxBJzppACR5SdjJtxw56JwHOw
 o03MowbtjoB6XR0HlELcpQFaI4lE3F51CCdp7GsHRTzIkA9AbO83juZNwf7dyJUCZ6XE
 8tLUzs9bkvSuBs1PbvkDXilxaEDWIU8TN4tCfSKuYG/RzOUCBWw64ffJSU+Ev3OuqusW
 OBGzjpi33ZJCL4CBKM1hQ6CQApI7CgYKkJqn35zU2xE0cW0x574QIJ+lmAVo4IiUKn8A
 QSvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sqEbuUUC6vd4Sa66d08NNo4B0txnWr9aDhBTPjvmYJ8=;
 b=C09bO6ADP1iuim7ESWSD9JWYCDxylEla1CDTZLr7+ZHhukLaK3fltb0ZSuikyrdMJ5
 CUDLWhkLokk/nbn7POePBbwnmuyTMd9kw/xmU6PbV1nwAl9mpNFzUI3jChd3E1EKzGnI
 oguo+qEswPHKPNn6/RGoBB0HYxpz6VxSHOGu2K8G4LZrp0/+zTR7SiobZsgdYveQc4pi
 GkLaWp9xnfebyAMroPPbdBrs1B0e+HPGh8tTLwLbKmdjGwqvepb7Q38HFYnUzf87ncuT
 XrHB8YBTes3v2hRd+LN0+fQmTQFKR6vEQhGtOuEWXMWmZeSQIswDm2KAPOU8sYUwclzD
 Oo3w==
X-Gm-Message-State: AOAM5332ND17SPKF5ppEtX1rtjZnRA3paDHXwegTfK6hPGCC9wA/3hvw
 /gDqDifXrv1WcJl1luWE5hXNpWuKh/dUZRpm35Y=
X-Google-Smtp-Source: ABdhPJzYBVm9s1yrTK8/5YWe8NEHNxv4hskZUXZjYG1F24Mm5WP6B5+11QjZuwKa0CwSkFe2FsaUj0X2L8ft4fkWmjo=
X-Received: by 2002:a17:902:b088:: with SMTP id
 p8mr15507720plr.123.1589783173163; 
 Sun, 17 May 2020 23:26:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
In-Reply-To: <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
From: Lecopzer Chen <lecopzer@gmail.com>
Date: Mon, 18 May 2020 14:26:00 +0800
Message-ID: <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
To: Sumit Garg <sumit.garg@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_232614_083102_91A3E0E3 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lecopzer[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 alexander.shishkin@linux.intel.com, Catalin Marinas <catalin.marinas@arm.com>,
 yj.chiang@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, acme@kernel.org,
 Peter Zijlstra <peterz@infradead.org>, mingo@redhat.com,
 linux-mediatek@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 matthias.bgg@gmail.com, namhyung@kernel.org, jolsa@redhat.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SEkgU3VtaXQsCgpUaGFua3MgZm9yIHlvdXIgaW5mb3JtYXRpb24uCgpJJ3ZlIGFscmVhZHkgaW1w
bGVtZW50ZWQgSVBJIChzYW1lIGFzIHlvdSBkaWQgWzFdLCBsaXR0bGUgZGlmZmVyZW5jZQppbiBk
ZXRhaWwpLCBoYXJkbG9ja3VwIGRldGVjdG9yIGFuZCBwZXJmIGluIGxhc3QgeWVhcigyMDE5KSBm
b3IKZGVidWdnYWJpbGl0eS4KQW5kIG5vdyB3ZSB0ZW5kIHRvIHVwc3RyZWFtIHRvIHJlZHVjZSBr
ZXJuZWwgbWFpbnRhaW5pbmcgZWZmb3J0LgpJJ20gZ2xhZCBpZiBzb21lb25lIGluIEFSTSBjYW4g
ZG8gdGhpcyB3b3JrIDopCgpIaSBKdWxpZW4sCgpEb2VzIGFueSBBcm0gbWFpbnRhaW5lcnMgY2Fu
IHByb2NlZWQgdGhpcyBhY3Rpb24/ClRoaXMgaXMgcmVhbGx5IHVzZWZ1bCBpbiBkZWJ1Z2dpbmcu
ClRoYW5rIHlvdSEhCgoKClsxXSBodHRwczovL2xrbWwub3JnL2xrbWwvMjAyMC80LzI0LzMyOAoK
CkxlY29wemVyCgpTdW1pdCBHYXJnIDxzdW1pdC5nYXJnQGxpbmFyby5vcmc+IOaWvCAyMDIw5bm0
NeaciDE45pelIOmAseS4gCDkuIvljYgxOjQ25a+r6YGT77yaCj4KPiArIEp1bGllbgo+Cj4gSGkg
TGVjb3B6ZXIsCj4KPiBPbiBTYXQsIDE2IE1heSAyMDIwIGF0IDE4OjIwLCBMZWNvcHplciBDaGVu
IDxsZWNvcHplckBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IFRoZXNlIHNlcmllcyBpbXBsZW1l
bnQgUGVyZiBOTUkgZnVueHRpb25hbGl0eSBhbmQgZGVwZW5kcyBvbgo+ID4gUHNldWRvIE5NSSBb
MV0gd2hpY2ggaGFzIGJlZW4gdXBzdHJlYW1lZC4KPiA+Cj4gPiBJbiBhcm02NCB3aXRoIEdJQ3Yz
LCBQc2V1ZG8gTk1JIHdhcyBpbXBsZW1lbnRlZCBmb3IgTk1JLWxpa2UgaW50ZXJydXRzLgo+ID4g
VGhhdCBjYW4gYmUgZXh0ZW5kZWQgdG8gUGVyZiBOTUkgd2hpY2ggaXMgdGhlIHByZXJlcXVpc2l0
ZSBmb3IgaGFyZC1sb2NrdXAKPiA+IGRldGVjdG9yIHdoaWNoIGhhZCBhbHJlYWR5IGEgc3RhbmRh
cmQgaW50ZXJmYWNlIGluc2lkZSBMaW51eC4KPiA+Cj4gPiBUaHVzIHRoZSBmaXJzdCBzdGVwIHdl
IG5lZWQgdG8gaW1wbGVtZW50IHBlcmYgTk1JIGludGVyZmFjZSBhbmQgbWFrZSBzdXJlCj4gPiBp
dCB3b3JrcyBmaW5lLgo+ID4KPgo+IFRoaXMgaXMgc29tZXRoaW5nIHRoYXQgaXMgYWxyZWFkeSBp
bXBsZW1lbnRlZCB2aWEgSnVsaWVuJ3MgcGF0Y2gtc2V0Cj4gWzFdLiBJdHMgdjQgaGFzIGJlZW4g
ZmxvYXRpbmcgc2luY2UgSnVseSwgMjAxOSBhbmQgSSBjb3VsZG4ndCBmaW5kIGFueQo+IG1ham9y
IGJsb2NraW5nIGNvbW1lbnRzIGJ1dCBub3Qgc3VyZSB3aHkgdGhpbmdzIGhhdmVuJ3QgcHJvZ3Jl
c3NlZAo+IGZ1cnRoZXIuCj4KPiBNYXliZSBKdWxpZW4gb3IgQXJtIG1haW50YWluZXJzIGNhbiBw
cm92aWRlIHVwZGF0ZXMgb24gZXhpc3RpbmcKPiBwYXRjaC1zZXQgWzFdIGFuZCBob3cgd2Ugc2hv
dWxkIHByb2NlZWQgZnVydGhlciB3aXRoIHRoaXMgaW50ZXJlc3RpbmcKPiBmZWF0dXJlLgo+Cj4g
QW5kIHJlZ2FyZGluZyBoYXJkLWxvY2t1cCBkZXRlY3Rpb24sIEkgaGF2ZSBiZWVuIGFibGUgdG8g
ZW5hYmxlIGl0Cj4gYmFzZWQgb24gcGVyZiBOTUkgZXZlbnRzIHVzaW5nIEp1bGllbidzIHBlcmYg
cGF0Y2gtc2V0IFsxXS4gSGF2ZSBhCj4gbG9vayBhdCB0aGUgcGF0Y2ggaGVyZSBbMl0uCj4KPiBb
MV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTA0NzQwNy8KPiBbMl0gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xpbnV4LWFybS1rZXJuZWwvMjAyMC1N
YXkvNzMyMjI3Lmh0bWwKPgo+IC1TdW1pdAo+Cj4gPiBQZXJmIE5NSSBoYXMgYmVlbiB0ZXN0IGJ5
IGRkIGlmPS9kZXYvdXJhbmRvbSBvZj0vZGV2L251bGwgbGlrZSB0aGUgbGluayBbMl0KPiA+IGRp
ZC4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTkvMS8zMS81MzUKPiA+IFsy
XSBodHRwczovL3d3dy5saW5hcm8ub3JnL2Jsb2cvZGVidWdnaW5nLWFybS1rZXJuZWxzLXVzaW5n
LW5taWZpcQo+ID4KPiA+Cj4gPiBMZWNvcHplciBDaGVuICgzKToKPiA+ICAgYXJtX3BtdTogQWRk
IHN1cHBvcnQgZm9yIHBlcmYgTk1JIGludGVycnVwdHMgcmVnaXN0cmF0aW9uCj4gPiAgIGFybTY0
OiBwZXJmOiBTdXBwb3J0IE5NSSBjb250ZXh0IGZvciBwZXJmIGV2ZW50IElTUgo+ID4gICBhcm02
NDogS2NvbmZpZzogQWRkIHN1cHBvcnQgZm9yIHRoZSBQZXJmIE5NSQo+ID4KPiA+ICBhcmNoL2Fy
bTY0L0tjb25maWcgICAgICAgICAgICAgfCAxMCArKysrKysrCj4gPiAgYXJjaC9hcm02NC9rZXJu
ZWwvcGVyZl9ldmVudC5jIHwgMzYgKysrKysrKysrKysrKysrKysrLS0tLS0tCj4gPiAgZHJpdmVy
cy9wZXJmL2FybV9wbXUuYyAgICAgICAgIHwgNTEgKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLQo+ID4gIGluY2x1ZGUvbGludXgvcGVyZi9hcm1fcG11LmggICB8ICA2ICsrKysKPiA+
ICA0IGZpbGVzIGNoYW5nZWQsIDg4IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+ID4K
PiA+IC0tCj4gPiAyLjI1LjEKPiA+Cj4gPgo+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiA+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4g
PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
