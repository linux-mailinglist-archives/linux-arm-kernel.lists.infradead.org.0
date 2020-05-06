Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F64F1C6D17
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 11:38:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hWgPvF4glNRNS1BMfDOdHbnVwtbIXr2UDr1PJUz7aQ=; b=QO1Cwbap1adfWH
	15rTtY82qxoYJhRYRC10dSaPhPiilfuWNdbcPT9jMh05iYAua4AgZh5ZoSrFNRQyq2smoFylcH34C
	5cc3JWAPFN6aMtQJAqFuEVxITaGyl93QLn4H+NdrRBkbBcx6m3vqmUYooRmnND662mLfLTAfRHHZy
	kP88Q30cdvii6yA6d3vov7pvu7NxmeLAJNhXArgikT0LKggPtlKnK1mQscrZBgn8qNgyJ9gYcb4fG
	SVAxBkckqoELuDlDCgo9Gbw7byPZDyDL1j90DDTno2sc+tY0tJ4Rv0C7L1pw3YRz98WnSC1HJglLZ
	nvDNngp5egBd5rMaEKLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWGVQ-0000rO-R9; Wed, 06 May 2020 09:38:20 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWGVH-0000pN-R2
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 09:38:13 +0000
Received: by mail-qk1-x744.google.com with SMTP id f83so1193206qke.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 02:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=da9Msd6VhXx/3o4OwwaQEairzk+A5t5H6NDxBwzjlV0=;
 b=ncii/QMt765z12zCCRyYs27sJbBG55KS6EXgAt7uA/nAMWDhb5SHWhLAsl67GI2EoZ
 M8oLJnLRBvHLjeXdD4dcTwGX5lvZsRQlXW/VdJ5A5UG4MK0C0ulIURk5H/8tNBoDaiIx
 gdHY6M1cX35EHbi2BxS2kf8m7sXjfDgqqg+VdiCZ49OiOv2jz2Ef46X8koWsWasgYdK+
 bpeXm4R264TMadTOVkieNdWTkWI29YNk27LeBy3LsP8sRxUuonyXbewfko/HGB0BL9AB
 CTgR25v8+cAv6LwtMchkSgHRNjqGZDYpLsrhiIe5fjWVqJq9Nb1O7fnneO6+SAspPv3J
 L7Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=da9Msd6VhXx/3o4OwwaQEairzk+A5t5H6NDxBwzjlV0=;
 b=ZWxMVXuTzuA6Moh8rYYeDEb38kscV1CRVJfjAiDEc/lj5vzat3GyDV0ISpYJ739cMR
 c6M1yHPLykVYwOShLO7WIUBeZF3BU6n3+aos3fEj0cdwYZxcddXqXSdWS67wlKLXe5iN
 fgnslToQEcqstwMPSNZITApnjbAkEy0H9LbcwCendRNwRpKubteb8x2BJuj0k00hlz7Q
 MFiwLivYM60JpI4A3xUqlKj6F9ZH9t3n1gkXLdAM/x6roc87rSrNj5nQXrnfTev1A8FT
 GJKTgaDhQiYaNfA2s980BHeTLBbECN5TjgFUwsDNUr+8I0+nQrbH6cI+bCZStqtwoqds
 9gHw==
X-Gm-Message-State: AGi0Pua/hGfUoKf+KbFntaZ25ADwjtwJQjqMAuFUQhHkX2Apc+fFptLZ
 Ah6Xhs5/FCz8JZ+X1B05vuyCpkhfuvruk+mtALHYsw==
X-Google-Smtp-Source: APiQypKkPwnxUq8+DlhhdqgWHdUkT5LHK+5uGXTodzsX0U7vrL7xa9kBwImSOF/TnuGRNKJl1K2bC7yaOlhwM1P6u2E=
X-Received: by 2002:ae9:ed05:: with SMTP id c5mr2109866qkg.250.1588757886424; 
 Wed, 06 May 2020 02:38:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
 <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
 <1588746219.16219.10.camel@mtksdccf07>
In-Reply-To: <1588746219.16219.10.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 11:37:54 +0200
Message-ID: <CACT4Y+atTS6p4b23AH+G9LM-k2gU=kMdkKQdARSboxc-H8CLTQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] kasan: memorize and print call_rcu stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_023811_880557_42F669DA 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCA4OjIzIEFNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1l
ZGlhdGVrLmNvbT4gd3JvdGU6Cj4gPiA+IFRoaXMgcGF0Y2hzZXQgaW1wcm92ZXMgS0FTQU4gcmVw
b3J0cyBieSBtYWtpbmcgdGhlbSB0byBoYXZlCj4gPiA+IGNhbGxfcmN1KCkgY2FsbCBzdGFjayBp
bmZvcm1hdGlvbi4gSXQgaXMgaGVscGZ1bCBmb3IgcHJvZ3JhbW1lcnMKPiA+ID4gdG8gc29sdmUg
dXNlLWFmdGVyLWZyZWUgb3IgZG91YmxlLWZyZWUgbWVtb3J5IGlzc3VlLgo+ID4gPgo+ID4gPiBU
aGUgS0FTQU4gcmVwb3J0IHdhcyBhcyBmb2xsb3dzKGNsZWFuZWQgdXAgc2xpZ2h0bHkpOgo+ID4g
Pgo+ID4gPiBCVUc6IEtBU0FOOiB1c2UtYWZ0ZXItZnJlZSBpbiBrYXNhbl9yY3VfcmVjbGFpbSsw
eDU4LzB4NjAKPiA+ID4KPiA+ID4gRnJlZWQgYnkgdGFzayAwOgo+ID4gPiBzYXZlX3N0YWNrKzB4
MjQvMHg1MAo+ID4gPiBfX2thc2FuX3NsYWJfZnJlZSsweDExMC8weDE3OAo+ID4gPiBrYXNhbl9z
bGFiX2ZyZWUrMHgxMC8weDE4Cj4gPiA+IGtmcmVlKzB4OTgvMHgyNzAKPiA+ID4ga2FzYW5fcmN1
X3JlY2xhaW0rMHgxYy8weDYwCj4gPiA+IHJjdV9jb3JlKzB4OGI0LzB4MTBmOAo+ID4gPiByY3Vf
Y29yZV9zaSsweGMvMHgxOAo+ID4gPiBlZmlfaGVhZGVyX2VuZCsweDIzOC8weGE2Ywo+ID4gPgo+
ID4gPiBGaXJzdCBjYWxsX3JjdSgpIGNhbGwgc3RhY2s6Cj4gPiA+IHNhdmVfc3RhY2srMHgyNC8w
eDUwCj4gPiA+IGthc2FuX3JlY29yZF9jYWxscmN1KzB4YzgvMHhkOAo+ID4gPiBjYWxsX3JjdSsw
eDE5MC8weDU4MAo+ID4gPiBrYXNhbl9yY3VfdWFmKzB4MWQ4LzB4Mjc4Cj4gPiA+Cj4gPiA+IExh
c3QgY2FsbF9yY3UoKSBjYWxsIHN0YWNrOgo+ID4gPiAoc3RhY2sgaXMgbm90IGF2YWlsYWJsZSkK
PiA+ID4KPiA+ID4KPiA+ID4gQWRkIG5ldyBDT05GSUcgb3B0aW9uIHRvIHJlY29yZCBmaXJzdCBh
bmQgbGFzdCBjYWxsX3JjdSgpIGNhbGwgc3RhY2sKPiA+ID4gYW5kIEtBU0FOIHJlcG9ydCBwcmlu
dHMgdHdvIGNhbGxfcmN1KCkgY2FsbCBzdGFjay4KPiA+ID4KPiA+ID4gVGhpcyBvcHRpb24gZG9l
c24ndCBpbmNyZWFzZSB0aGUgY29zdCBvZiBtZW1vcnkgY29uc3VtcHRpb24uIEl0IGlzCj4gPiA+
IG9ubHkgc3VpdGFibGUgZm9yIGdlbmVyaWMgS0FTQU4uCj4gPgo+ID4gSSBkb27igJl0IHVuZGVy
c3RhbmQgd2h5IHRoaXMgbmVlZHMgdG8gYmUgYSBLY29uZmlnIG9wdGlvbiBhdCBhbGwuIElmIGNh
bGxfcmN1KCkgc3RhY2tzIGFyZSB1c2VmdWwgaW4gZ2VuZXJhbCwgdGhlbiBqdXN0IGFsd2F5cyBn
YXRoZXIgdGhvc2UgaW5mb3JtYXRpb24uIEhvdyBkbyBkZXZlbG9wZXJzIGp1ZGdlIGlmIHRoZXkg
bmVlZCB0byBzZWxlY3QgdGhpcyBvcHRpb24gb3Igbm90Pwo+Cj4gQmVjYXVzZSB3ZSBkb24ndCB3
YW50IHRvIGluY3JlYXNlIHNsdWIgbWV0YS1kYXRhIHNpemUsIHNvIGVuYWJsaW5nIHRoaXMKPiBv
cHRpb24gY2FuIHByaW50IGNhbGxfcmN1KCkgc3RhY2tzLCBidXQgdGhlIGluLXVzZSBzbHViIG9i
amVjdCBkb2Vzbid0Cj4gcHJpbnQgZnJlZSBzdGFjay4gU28gaWYgaGF2ZSBvdXQtb2YtYm91bmQg
aXNzdWUsIHRoZW4gaXQgd2lsbCBub3QgcHJpbnQKPiBmcmVlIHN0YWNrLiBJdCBpcyBhIHRyYWRl
LW9mZiwgc2VlIFsxXS4KPgo+IFsxXSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19i
dWcuY2dpP2lkPTE5ODQzNwoKSGkgV2FsdGVyLAoKR3JlYXQgeW91IGFyZSB0YWNrbGluZyB0aGlz
IQoKSSBoYXZlIHRoZSBzYW1lIGdlbmVyYWwgc2VudGltZW50IGFzIFFpYW4uIEkgd291bGQgZW5h
YmxlIHRoaXMKdW5jb25kaXRpb25hbGx5IGJlY2F1c2U6CgoxLiBXZSBzdGlsbCBjYW4ndCBnZXQg
Ym90aCByY3Ugc3RhY2sgYW5kIGZyZWUgc3RhY2suIEkgd291bGQgYXNzdW1lCm1vc3Qga2VybmVs
IHRlc3Rpbmcgc3lzdGVtcyBuZWVkIHRvIGVuYWJsZSB0aGlzICh3ZSBkZWZpbml0ZWx5IGVuYWJs
ZQpvbiBzeXpib3QpLiBUaGlzIG1lYW5zIHdlIGRvIG5vdCBoYXZlIGZyZWUgc3RhY2sgZm9yIGFs
bG9jYXRpb24Kb2JqZWN0cyBpbiBhbnkgcmVwb3J0cyBjb21pbmcgZnJvbSB0ZXN0aW5nIHN5c3Rl
bXMuIFdoaWNoIGdyZWF0bHkKZGltaW5pc2hlcyB0aGUgdmFsdWUgb2YgdGhlIG90aGVyIG1vZGUu
CgoyLiBLZXJuZWwgaXMgdW5kZXJ0ZXN0ZWQuIEludHJvZHVjaW5nIGFueSBhZGRpdGlvbmFsIGNv
bmZpZ3VyYXRpb24Kb3B0aW9ucyBpcyBhIHByb2JsZW0gaW4gc3VjaCBjb250ZXh0LiBDaGFuY2Vz
IGFyZSB0aGF0IHNvbWUgb2YgdGhlCm1vZGVzIGFyZSBub3Qgd29ya2luZyBvciB3aWxsIGJyZWFr
IGluIGZ1dHVyZS4KCjMuIFRoYXQgZnJlZSBzdGFjayBhY3R1YWxseSBjYXVzZXMgbG90cyBvZiBj
b25mdXNpb24gYW5kIEkgbmV2ZXIgZm91bmQKaXQgdXNlZnVsOgpodHRwczovL2J1Z3ppbGxhLmtl
cm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5ODQyNQpJZiBpdCdzIGEgdmVyeSBkZWxheWVkIFVB
RiwgZWl0aGVyIG9uZSBtYXkgZ2V0IGFub3RoZXIgcmVwb3J0IGZvciB0aGUKc2FtZSBidWcgd2l0
aCBub3Qgc28gZGVsYXllZCBVQUYsIG9yIGlmIGl0J3Mgd2F5IHRvbyBkZWxheWVkLCB0aGVuIHRo
ZQpwcmV2aW91cyBmcmVlIHN0YWNrIGlzIHdyb25nIGFzIHdlbGwuCgo0LiBNb3N0IHVzZXJzIGRv
bid0IGNhcmUgdGhhdCBtdWNoIGFib3V0IGRlYnVnZ2luZyB0b29scyB0byBsZWFybgpldmVyeSBi
aXQgb2YgZXZlcnkgZGVidWdnaW5nIHRvb2wgYW5kIHNwZW5kIHRpbWUgZmluZS10dW5pbmcgaXQg
Zm9yCnRoZWlyIGNvbnRleHQuIE1vc3QgS0FTQU4gdXNlcnMgd29uJ3QgZXZlbiBiZSBhd2FyZSBv
ZiB0aGlzIGNob2ljZSwKYW5kIHRoZXkgd2lsbCBqdXN0IHVzZSB3aGF0ZXZlciBpcyB0aGUgZGVm
YXVsdC4KCjUuIEVhY2ggY29uZmlndXJhdGlvbiBvcHRpb24gaW5jcmVhc2VzIGltcGxlbWVudGF0
aW9uIGNvbXBsZXhpdHkuCgpXaGF0IHdvdWxkIGhhdmUgdmFsdWUgaXMgaWYgd2UgZmlndXJlIG91
dCBob3cgdG8gbWFrZSBib3RoIG9mIHRoZW0Kd29yayBhdCB0aGUgc2FtZSB0aW1lIHdpdGhvdXQg
aW5jcmVhc2luZyBtZW1vcnkgY29uc3VtcHRpb24uIEJ1dCBJCmRvbid0IHNlZSBhbnkgd2F5IHRv
IGRvIHRoaXMuCgpJIHByb3Bvc2UgdG8gbWFrZSB0aGlzIHRoZSBvbmx5IG1vZGUuIEkgYW0gc3Vy
ZSBsb3RzIG9mIHVzZXJzIHdpbGwKZmluZCB0aGlzIGFkZGl0aW9uYWwgc3RhY2sgdXNlZnVsLCB3
aGVyZWFzIHRoZSBmcmVlIHN0YWNrIGlzIGV2ZW4KZnJlcXVlbnRseSBjb25mdXNpbmcuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
