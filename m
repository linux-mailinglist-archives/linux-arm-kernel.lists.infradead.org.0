Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1FD1D7ABD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 16:10:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyD4pYSndOnywBeIdEvrLatpNOcKK98ks7hVnbDuBFI=; b=YROAaOdLy/wR94
	uh3fgDmW+oU7KTGIEdeNOkdeiw3Dk6CiBuwXeIyjaWFZtvhaYefC43YTA9YY/DjfkxSFWSxsbaA36
	CKqF9SJofD+six271zr4srtLVINVN0g8CLu66Oi79k8WtJcGUIV6WlSEHJT33+FX2g66Nzw6gDJO2
	nksd+FSbMvi7JlB6tVp1blO67hff3zDoE/tAaw8opFJvsdxIe7EpldNUZh49IrFgWRZsiu33FugtJ
	Mqyba+xG9z171zmC+x2DM0D2oY5wdB8LfAcmx1CQOXxZqUPOEYlOe1CywSzWAyPcwX7ehOxTSraAI
	m8QWIxbrx5yhodKwxpNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jagSl-0000At-Jw; Mon, 18 May 2020 14:09:51 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jagSX-00008D-7D
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 14:09:39 +0000
Received: by mail-lf1-x141.google.com with SMTP id c21so8180048lfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 07:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=r8Fwvj385+rZthmes99dyyXiDRtusauDWjrcjPTkVIQ=;
 b=F2QMa9mJxrIKimCA7Q5ZfubjznKBsA7f0nfks8awACd7hK/vcUCj6hjmt2qJ17F+b0
 UGFXGrjSKOCu02+IoRLCkop65mrJlKxmshoUusFqcmJ1cWlmos/hGfUjdPfzecRI5GGi
 SEAuLrOV85LhPsyCck0BhmXapD8MR1yNmJiKiNl4UyMHmvy3Etc6h55chByUuMMJQHhN
 FGTp8rdFDeLGsJ8fLfSdZvNjk68UMkethcJCsSlKt56kbDx5qVsZW5u/HRp/FUJpErTk
 QUzTy9SzYfXOsN4CYh2DZXMUHc0408RjiFGTDSVUPF+qbTZ7T3lHSO7E5ofXrhqYSKkq
 dU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=r8Fwvj385+rZthmes99dyyXiDRtusauDWjrcjPTkVIQ=;
 b=p3/0SDvRwYgmM1FUlUSvo894i6RZJoTjc4PXHB7cMm+lB5asIq6PvAtbZ6daa4kju/
 5i/l3gVvoeYhXp4rkfsVVOOFYPkGBwQP2T7mTCs0wPGXhcjv4Y08UTEP4yxE8D+6Dhdj
 yzN1OGHxWBtqM1D5tdxiJltFKyFPv8sa+mTzTB+XFqa1mOdRH6RmBuyHsDY9nd9sJIQu
 +DTQRPNvo49QPHJ+eiJE8q0kpVhVqQUvhcgdfq19nZBxY6zrPvbSPFy9Vh2Gou7eGvle
 QP76cfnMYxIfS1lZ4amH2P9PN4uLhvqP6wnxtoFVTiWvOtZEkNuBKJo+KhO6wY4pf2ek
 xSHg==
X-Gm-Message-State: AOAM533XlA08/ygcEbwUPmiOb5gF3b9e/qXwpvDBWl8132yr/Yn+psF0
 9g2cTxJ4VrCcEeHDgfG+2BW64niZyh4zdirakGjuLA==
X-Google-Smtp-Source: ABdhPJxaU/28ih1lWO9bOiruMyZb65zJycNFCHUMy1FjCxuedpr83mM7nX8WqBmPxCK+ng09CR5WSBD6F25zMT8+1ns=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr7455830lfn.21.1589810975316; 
 Mon, 18 May 2020 07:09:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200516124857.75004-1-lecopzer@gmail.com>
 <CAFA6WYNwp+_ENiS8QDao5+RXyt5ofJZyq6c5CKG_d0CNEmBNYg@mail.gmail.com>
 <CANr2M19unLW8n0P2DiOYEZ=GZcaD-L2ygPht_5HNtNZ6e4h6xQ@mail.gmail.com>
 <20200518104524.GA1224@C02TD0UTHF1T.local>
 <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
In-Reply-To: <a9002b5e-aec5-b6e0-7174-87b93351d60c@arm.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Mon, 18 May 2020 19:39:23 +0530
Message-ID: <CAFA6WYPKD0Kkn5yQiKZQkM+tT0iW4oPnndegD-iau9EwB5DYog@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: perf: Add support for Perf NMI interrupts
To: Alexandru Elisei <alexandru.elisei@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_070937_263878_E83FD7B2 
X-CRM114-Status: GOOD (  28.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jian-Lin Chen <lecopzer.chen@mediatek.com>, Will Deacon <will@kernel.org>,
 alexander.shishkin@linux.intel.com, Catalin Marinas <catalin.marinas@arm.com>,
 yj.chiang@mediatek.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, acme@kernel.org,
 Lecopzer Chen <lecopzer@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 mingo@redhat.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 matthias.bgg@gmail.com, namhyung@kernel.org, jolsa@redhat.com,
 julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCAxOCBNYXkgMjAyMCBhdCAxNjo0NywgQWxleGFuZHJ1IEVsaXNlaSA8YWxleGFuZHJ1
LmVsaXNlaUBhcm0uY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gT24gNS8xOC8yMCAxMTo0NSBBTSwg
TWFyayBSdXRsYW5kIHdyb3RlOgo+ID4gSGkgYWxsLAo+ID4KPiA+IE9uIE1vbiwgTWF5IDE4LCAy
MDIwIGF0IDAyOjI2OjAwUE0gKzA4MDAsIExlY29wemVyIENoZW4gd3JvdGU6Cj4gPj4gSEkgU3Vt
aXQsCj4gPj4KPiA+PiBUaGFua3MgZm9yIHlvdXIgaW5mb3JtYXRpb24uCj4gPj4KPiA+PiBJJ3Zl
IGFscmVhZHkgaW1wbGVtZW50ZWQgSVBJIChzYW1lIGFzIHlvdSBkaWQgWzFdLCBsaXR0bGUgZGlm
ZmVyZW5jZQo+ID4+IGluIGRldGFpbCksIGhhcmRsb2NrdXAgZGV0ZWN0b3IgYW5kIHBlcmYgaW4g
bGFzdCB5ZWFyKDIwMTkpIGZvcgo+ID4+IGRlYnVnZ2FiaWxpdHkuCj4gPj4gQW5kIG5vdyB3ZSB0
ZW5kIHRvIHVwc3RyZWFtIHRvIHJlZHVjZSBrZXJuZWwgbWFpbnRhaW5pbmcgZWZmb3J0Lgo+ID4+
IEknbSBnbGFkIGlmIHNvbWVvbmUgaW4gQVJNIGNhbiBkbyB0aGlzIHdvcmsgOikKPiA+Pgo+ID4+
IEhpIEp1bGllbiwKPiA+Pgo+ID4+IERvZXMgYW55IEFybSBtYWludGFpbmVycyBjYW4gcHJvY2Vl
ZCB0aGlzIGFjdGlvbj8KPiA+IEFsZXhhbmRydSAoQ2MnZCkgaGFzIGJlZW4gcmViYXNpbmcgYW5k
IHJld29ya2luZyBKdWxpZW4ncyBwYXRjaGVzLCB3aGljaAo+ID4gaXMgbXkgcHJlZmVycmVkIGFw
cHJvYWNoLgo+ID4KPiA+IEkgdW5kZXJzdGFuZCB0aGF0J3Mgbm90IHF1aXRlIHJlYWR5IGZvciBw
b3N0aW5nIHNpbmNlIGhlJ3MgaW52ZXN0aWdhdGluZwo+ID4gc29tZSBvZiB0aGUgbmFzdGllciBz
dWJ0bGV0aWVzIChlLmcuIG11dHVhbCBleGNsdXNpb24gd2l0aCB0aGUgTk1JKSwgYnV0Cj4gPiBt
YXliZSB3ZSBjYW4gcHV0IHRoZSB3b3JrLWluLXByb2dyZXNzIHBhdGNoZXMgc29tZXdoZXJlIGlu
IHRoZSBtZWFuCj4gPiB0aW1lLgo+ID4KPiA+IEFsZXhhbmRydSwgZG8geW91IGhhdmUgYW4gaWRl
YSBvZiB3aGF0IG5lZWRzIHRvIGJlIGRvbmUsIGFuZC9vciB3aGVuIHlvdQo+ID4gZXhwZWN0IHlv
dSBjb3VsZCBwb3N0IHRoYXQ/Cj4KPiBJJ20gY3VycmVudGx5IHdvcmtpbmcgb24gcmViYXNpbmcg
dGhlIHBhdGNoZXMgb24gdG9wIG9mIDUuNy1yYzUsIHdoZW4gSSBoYXZlCj4gc29tZXRoaW5nIHVz
YWJsZSBJJ2xsIHBvc3QgYSBsaW5rIChzaG91bGQgYmUgYSBjb3VwbGUgb2YgZGF5cykuIEFmdGVy
IHRoYXQgSSB3aWxsCj4gYWRkcmVzcyB0aGUgcmV2aWV3IGNvbW1lbnRzLCBhbmQgSSBwbGFuIHRv
IGRvIGEgdGhvcm91Z2ggdGVzdGluZyBiZWNhdXNlIEknbSBub3QKPiAxMDAlIGNvbmZpZGVudCB0
aGF0IHNvbWUgb2YgdGhlIGFzc3VtcHRpb25zIGFyb3VuZCB0aGUgbG9ja3MgdGhhdCB3ZXJlIHJl
bW92ZWQgYXJlCj4gY29ycmVjdC4gTXkgZ3Vlc3MgaXMgdGhpcyB3aWxsIHRha2UgYSBmZXcgd2Vl
a3MuCj4KClRoYW5rcyBNYXJrLCBBbGV4IGZvciB0aGUgc3RhdHVzIHVwZGF0ZXMgb24gcGVyZiBO
TUkgZmVhdHVyZS4KCkFsZXgsCgpBcyB0aGUgaGFyZC1sb2NrdXAgZGV0ZWN0aW9uIHBhdGNoIFsx
XSBoYXMgYSBkZXBlbmRlbmN5IG9uIHBlcmYgTk1JCnBhdGNoLXNldCwgSSB3aWxsIHJlYmFzZSBh
bmQgdGVzdCBoYXJkLWxvY2t1cCBkZXRlY3RvciB3aGVuIHlvdSBoYXZlCmdvdCBhIHdvcmtpbmcg
dHJlZS4gQnV0IGR1ZSB0byB0aGUgZGVwZW5kZW5jeSwgSSB0aGluayBwYXRjaCBbMV0Kc2hvdWxk
IGJlIGFjY2VwdGVkIGFsb25nIHdpdGggcGVyZiBOTUkgcGF0Y2gtc2V0LiBTbyB3b3VsZCB5b3Ug
YmUgb3Blbgp0byBpbmNsdWRlIHRoaXMgcGF0Y2ggYXMgcGFydCBvZiB5b3VyIHNlcmllcz8KClsx
XSBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9waXBlcm1haWwvbGludXgtYXJtLWtlcm5lbC8y
MDIwLU1heS83MzIyMjcuaHRtbAoKLVN1bWl0Cgo+IFRoYW5rcywKPiBBbGV4Cj4gPgo+ID4gVGhh
bmtzLAo+ID4gTWFyay4KPiA+Cj4gPj4gVGhpcyBpcyByZWFsbHkgdXNlZnVsIGluIGRlYnVnZ2lu
Zy4KPiA+PiBUaGFuayB5b3UhIQo+ID4+Cj4gPj4KPiA+Pgo+ID4+IFsxXSBodHRwczovL2xrbWwu
b3JnL2xrbWwvMjAyMC80LzI0LzMyOAo+ID4+Cj4gPj4KPiA+PiBMZWNvcHplcgo+ID4+Cj4gPj4g
U3VtaXQgR2FyZyA8c3VtaXQuZ2FyZ0BsaW5hcm8ub3JnPiDmlrwgMjAyMOW5tDXmnIgxOOaXpSDp
gLHkuIAg5LiL5Y2IMTo0NuWvq+mBk++8mgo+ID4+PiArIEp1bGllbgo+ID4+Pgo+ID4+PiBIaSBM
ZWNvcHplciwKPiA+Pj4KPiA+Pj4gT24gU2F0LCAxNiBNYXkgMjAyMCBhdCAxODoyMCwgTGVjb3B6
ZXIgQ2hlbiA8bGVjb3B6ZXJAZ21haWwuY29tPiB3cm90ZToKPiA+Pj4+IFRoZXNlIHNlcmllcyBp
bXBsZW1lbnQgUGVyZiBOTUkgZnVueHRpb25hbGl0eSBhbmQgZGVwZW5kcyBvbgo+ID4+Pj4gUHNl
dWRvIE5NSSBbMV0gd2hpY2ggaGFzIGJlZW4gdXBzdHJlYW1lZC4KPiA+Pj4+Cj4gPj4+PiBJbiBh
cm02NCB3aXRoIEdJQ3YzLCBQc2V1ZG8gTk1JIHdhcyBpbXBsZW1lbnRlZCBmb3IgTk1JLWxpa2Ug
aW50ZXJydXRzLgo+ID4+Pj4gVGhhdCBjYW4gYmUgZXh0ZW5kZWQgdG8gUGVyZiBOTUkgd2hpY2gg
aXMgdGhlIHByZXJlcXVpc2l0ZSBmb3IgaGFyZC1sb2NrdXAKPiA+Pj4+IGRldGVjdG9yIHdoaWNo
IGhhZCBhbHJlYWR5IGEgc3RhbmRhcmQgaW50ZXJmYWNlIGluc2lkZSBMaW51eC4KPiA+Pj4+Cj4g
Pj4+PiBUaHVzIHRoZSBmaXJzdCBzdGVwIHdlIG5lZWQgdG8gaW1wbGVtZW50IHBlcmYgTk1JIGlu
dGVyZmFjZSBhbmQgbWFrZSBzdXJlCj4gPj4+PiBpdCB3b3JrcyBmaW5lLgo+ID4+Pj4KPiA+Pj4g
VGhpcyBpcyBzb21ldGhpbmcgdGhhdCBpcyBhbHJlYWR5IGltcGxlbWVudGVkIHZpYSBKdWxpZW4n
cyBwYXRjaC1zZXQKPiA+Pj4gWzFdLiBJdHMgdjQgaGFzIGJlZW4gZmxvYXRpbmcgc2luY2UgSnVs
eSwgMjAxOSBhbmQgSSBjb3VsZG4ndCBmaW5kIGFueQo+ID4+PiBtYWpvciBibG9ja2luZyBjb21t
ZW50cyBidXQgbm90IHN1cmUgd2h5IHRoaW5ncyBoYXZlbid0IHByb2dyZXNzZWQKPiA+Pj4gZnVy
dGhlci4KPiA+Pj4KPiA+Pj4gTWF5YmUgSnVsaWVuIG9yIEFybSBtYWludGFpbmVycyBjYW4gcHJv
dmlkZSB1cGRhdGVzIG9uIGV4aXN0aW5nCj4gPj4+IHBhdGNoLXNldCBbMV0gYW5kIGhvdyB3ZSBz
aG91bGQgcHJvY2VlZCBmdXJ0aGVyIHdpdGggdGhpcyBpbnRlcmVzdGluZwo+ID4+PiBmZWF0dXJl
Lgo+ID4+Pgo+ID4+PiBBbmQgcmVnYXJkaW5nIGhhcmQtbG9ja3VwIGRldGVjdGlvbiwgSSBoYXZl
IGJlZW4gYWJsZSB0byBlbmFibGUgaXQKPiA+Pj4gYmFzZWQgb24gcGVyZiBOTUkgZXZlbnRzIHVz
aW5nIEp1bGllbidzIHBlcmYgcGF0Y2gtc2V0IFsxXS4gSGF2ZSBhCj4gPj4+IGxvb2sgYXQgdGhl
IHBhdGNoIGhlcmUgWzJdLgo+ID4+Pgo+ID4+PiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9jb3Zlci8xMTA0NzQwNy8KPiA+Pj4gWzJdIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L3BpcGVybWFpbC9saW51eC1hcm0ta2VybmVsLzIwMjAtTWF5LzczMjIyNy5odG1sCj4gPj4+Cj4g
Pj4+IC1TdW1pdAo+ID4+Pgo+ID4+Pj4gUGVyZiBOTUkgaGFzIGJlZW4gdGVzdCBieSBkZCBpZj0v
ZGV2L3VyYW5kb20gb2Y9L2Rldi9udWxsIGxpa2UgdGhlIGxpbmsgWzJdCj4gPj4+PiBkaWQuCj4g
Pj4+Pgo+ID4+Pj4gWzFdIGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDE5LzEvMzEvNTM1Cj4gPj4+
PiBbMl0gaHR0cHM6Ly93d3cubGluYXJvLm9yZy9ibG9nL2RlYnVnZ2luZy1hcm0ta2VybmVscy11
c2luZy1ubWlmaXEKPiA+Pj4+Cj4gPj4+Pgo+ID4+Pj4gTGVjb3B6ZXIgQ2hlbiAoMyk6Cj4gPj4+
PiAgIGFybV9wbXU6IEFkZCBzdXBwb3J0IGZvciBwZXJmIE5NSSBpbnRlcnJ1cHRzIHJlZ2lzdHJh
dGlvbgo+ID4+Pj4gICBhcm02NDogcGVyZjogU3VwcG9ydCBOTUkgY29udGV4dCBmb3IgcGVyZiBl
dmVudCBJU1IKPiA+Pj4+ICAgYXJtNjQ6IEtjb25maWc6IEFkZCBzdXBwb3J0IGZvciB0aGUgUGVy
ZiBOTUkKPiA+Pj4+Cj4gPj4+PiAgYXJjaC9hcm02NC9LY29uZmlnICAgICAgICAgICAgIHwgMTAg
KysrKysrKwo+ID4+Pj4gIGFyY2gvYXJtNjQva2VybmVsL3BlcmZfZXZlbnQuYyB8IDM2ICsrKysr
KysrKysrKysrKysrKy0tLS0tLQo+ID4+Pj4gIGRyaXZlcnMvcGVyZi9hcm1fcG11LmMgICAgICAg
ICB8IDUxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0KPiA+Pj4+ICBpbmNsdWRl
L2xpbnV4L3BlcmYvYXJtX3BtdS5oICAgfCAgNiArKysrCj4gPj4+PiAgNCBmaWxlcyBjaGFuZ2Vk
LCA4OCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkKPiA+Pj4+Cj4gPj4+PiAtLQo+ID4+
Pj4gMi4yNS4xCj4gPj4+Pgo+ID4+Pj4KPiA+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4gPj4+PiBsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dAo+ID4+Pj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gPj4+PiBodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
