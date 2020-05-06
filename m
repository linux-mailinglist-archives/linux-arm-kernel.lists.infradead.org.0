Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA871C7027
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:17:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MiDvGjlkeLhlWoMncz4ddQxvj2wUS/8lnseeZBA/SI8=; b=PGb5MVwWRCZQgE
	NaCcKtk9oRY9U+yPTrWAPPZlQVeCH3fQ5P0C/NBU0mk7dIOCYazegnl+nmk3QGRO0gRxCQlRVL7UB
	GScM49BfuecqBl5Clgx2dgfQkMLe9ywStpaN+rSLVaX+W/9swCoTL5CNoHY5S8eFMascL87vrHMc/
	rZ1SKOZ1Ly3mZnqH7YWttZrFv9bvSPTG2BjuBIiSMkOLIp4DpR1j5OiTkeLISgqZNNuvCdt1qhHLq
	pRe2Sf/lxszjo51E9mDPl1vhBY+fE+z+B0GrEA/kDxwBSrJ9lhv61HKCjQgkHVig3QJYEtpTVkrQq
	gSH90LwLUE6zQWp19Yng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIzJ-0006f5-J3; Wed, 06 May 2020 12:17:21 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIz9-0006cx-Ca
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:17:13 +0000
Received: by mail-qv1-xf42.google.com with SMTP id dn1so549588qvb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 05:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=2a9aw64zHH2XF20M2Lyiu+UmzKecSTayjdQ/idjqxfY=;
 b=BHr6Q2jzo+84lP6Z7rD+n92hBNK0J3xtLZiORVstiSPMFaJU2Q08ATAnMyiKLt7Iq/
 WJow5rRUtuEqLl5IfJON+yyxZEvqPXXkHJ/N9UjYJK6fnTil18q6e5XcpOkjjLljW8Ka
 5GeRpv26dpS8o+n/1Rczh3Mv/jLV4aSlNReTRicrUOzXSYO1WM1X/beJQvgIHG+AhF8n
 M0BASyfeJuiA3B7amYptZ3U9XnZLWQUrQptic3LY4SIGh7ipe23bf9ss1Cn1cj8XWJql
 HZnBp9AUiL8Dd9GGFT2ohEukPgv+URk1d6Hvonk751ChvkcIQYnzBbODSCLSPAj9kk3O
 TH1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=2a9aw64zHH2XF20M2Lyiu+UmzKecSTayjdQ/idjqxfY=;
 b=bAgjBAUKr61AhXWA6BHJ+JkbrtcPoiUIkha+DNKzk3RbxXn1wS3tCf6rjmEMl8q3Se
 6J8ucANx4EdsAhEicXIZlao/ossdFFFf+QHGkeaWi3sMIhNgi4/SjD6daie0rLA78Z54
 Cqh325ZoEkQRByl9U7JSD+jWTGcOc/fWXTSZZtbvMjQhXd/xBsHeabq+/PgP0wZ9eh4R
 6pJWIqz9cMLOSVfTUnHCyQAW3uVWyTzjLS7RYOLzRN6b0q/H7CrWPmZ6IQE/ZBZrYWi4
 EAifqvmIImzKvO5o46hMhlzhMZi00gnmv/jcOYfod6HyMFeH/Z6SYyKzuQl3A/RM0hJa
 5gbQ==
X-Gm-Message-State: AGi0PubSI2c6I65Rav4PYZvxsyqj/Z4WT4CWeEvR5gnA6l7nN1TutMoD
 R4IHEgmv6jJlV84hFbFo0rGQlDNtYtapJiF1aLYd+A==
X-Google-Smtp-Source: APiQypJbI2sDdte0KVJrP00sH4lrzaXCuhrc9uqDNq31LxmRU2w1Jfi7oSoFrR2PB+CFe6EOcMAP0hph9TTqo0L/XA0=
X-Received: by 2002:ad4:4d06:: with SMTP id l6mr7710326qvl.34.1588767429553;
 Wed, 06 May 2020 05:17:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
 <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
 <1588746219.16219.10.camel@mtksdccf07>
 <CACT4Y+atTS6p4b23AH+G9LM-k2gU=kMdkKQdARSboxc-H8CLTQ@mail.gmail.com>
 <1588766510.23664.31.camel@mtksdccf07>
In-Reply-To: <1588766510.23664.31.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 14:16:58 +0200
Message-ID: <CACT4Y+baJtLf=ppLjjYtcZNQwPW0daQYcQLTmYe-WU2-FxPHEg@mail.gmail.com>
Subject: Re: [PATCH 0/3] kasan: memorize and print call_rcu stack
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_051711_545514_3764B6F7 
X-CRM114-Status: GOOD (  30.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
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

T24gV2VkLCBNYXkgNiwgMjAyMCBhdCAyOjAxIFBNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1l
ZGlhdGVrLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDIwMjAtMDUtMDYgYXQgMTE6MzcgKzAyMDAs
ICdEbWl0cnkgVnl1a292JyB2aWEga2FzYW4tZGV2IHdyb3RlOgo+ID4gT24gV2VkLCBNYXkgNiwg
MjAyMCBhdCA4OjIzIEFNIFdhbHRlciBXdSA8d2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbT4gd3Jv
dGU6Cj4gPiA+ID4gPiBUaGlzIHBhdGNoc2V0IGltcHJvdmVzIEtBU0FOIHJlcG9ydHMgYnkgbWFr
aW5nIHRoZW0gdG8gaGF2ZQo+ID4gPiA+ID4gY2FsbF9yY3UoKSBjYWxsIHN0YWNrIGluZm9ybWF0
aW9uLiBJdCBpcyBoZWxwZnVsIGZvciBwcm9ncmFtbWVycwo+ID4gPiA+ID4gdG8gc29sdmUgdXNl
LWFmdGVyLWZyZWUgb3IgZG91YmxlLWZyZWUgbWVtb3J5IGlzc3VlLgo+ID4gPiA+ID4KPiA+ID4g
PiA+IFRoZSBLQVNBTiByZXBvcnQgd2FzIGFzIGZvbGxvd3MoY2xlYW5lZCB1cCBzbGlnaHRseSk6
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQlVHOiBLQVNBTjogdXNlLWFmdGVyLWZyZWUgaW4ga2FzYW5f
cmN1X3JlY2xhaW0rMHg1OC8weDYwCj4gPiA+ID4gPgo+ID4gPiA+ID4gRnJlZWQgYnkgdGFzayAw
Ogo+ID4gPiA+ID4gc2F2ZV9zdGFjaysweDI0LzB4NTAKPiA+ID4gPiA+IF9fa2FzYW5fc2xhYl9m
cmVlKzB4MTEwLzB4MTc4Cj4gPiA+ID4gPiBrYXNhbl9zbGFiX2ZyZWUrMHgxMC8weDE4Cj4gPiA+
ID4gPiBrZnJlZSsweDk4LzB4MjcwCj4gPiA+ID4gPiBrYXNhbl9yY3VfcmVjbGFpbSsweDFjLzB4
NjAKPiA+ID4gPiA+IHJjdV9jb3JlKzB4OGI0LzB4MTBmOAo+ID4gPiA+ID4gcmN1X2NvcmVfc2kr
MHhjLzB4MTgKPiA+ID4gPiA+IGVmaV9oZWFkZXJfZW5kKzB4MjM4LzB4YTZjCj4gPiA+ID4gPgo+
ID4gPiA+ID4gRmlyc3QgY2FsbF9yY3UoKSBjYWxsIHN0YWNrOgo+ID4gPiA+ID4gc2F2ZV9zdGFj
aysweDI0LzB4NTAKPiA+ID4gPiA+IGthc2FuX3JlY29yZF9jYWxscmN1KzB4YzgvMHhkOAo+ID4g
PiA+ID4gY2FsbF9yY3UrMHgxOTAvMHg1ODAKPiA+ID4gPiA+IGthc2FuX3JjdV91YWYrMHgxZDgv
MHgyNzgKPiA+ID4gPiA+Cj4gPiA+ID4gPiBMYXN0IGNhbGxfcmN1KCkgY2FsbCBzdGFjazoKPiA+
ID4gPiA+IChzdGFjayBpcyBub3QgYXZhaWxhYmxlKQo+ID4gPiA+ID4KPiA+ID4gPiA+Cj4gPiA+
ID4gPiBBZGQgbmV3IENPTkZJRyBvcHRpb24gdG8gcmVjb3JkIGZpcnN0IGFuZCBsYXN0IGNhbGxf
cmN1KCkgY2FsbCBzdGFjawo+ID4gPiA+ID4gYW5kIEtBU0FOIHJlcG9ydCBwcmludHMgdHdvIGNh
bGxfcmN1KCkgY2FsbCBzdGFjay4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGlzIG9wdGlvbiBkb2Vz
bid0IGluY3JlYXNlIHRoZSBjb3N0IG9mIG1lbW9yeSBjb25zdW1wdGlvbi4gSXQgaXMKPiA+ID4g
PiA+IG9ubHkgc3VpdGFibGUgZm9yIGdlbmVyaWMgS0FTQU4uCj4gPiA+ID4KPiA+ID4gPiBJIGRv
buKAmXQgdW5kZXJzdGFuZCB3aHkgdGhpcyBuZWVkcyB0byBiZSBhIEtjb25maWcgb3B0aW9uIGF0
IGFsbC4gSWYgY2FsbF9yY3UoKSBzdGFja3MgYXJlIHVzZWZ1bCBpbiBnZW5lcmFsLCB0aGVuIGp1
c3QgYWx3YXlzIGdhdGhlciB0aG9zZSBpbmZvcm1hdGlvbi4gSG93IGRvIGRldmVsb3BlcnMganVk
Z2UgaWYgdGhleSBuZWVkIHRvIHNlbGVjdCB0aGlzIG9wdGlvbiBvciBub3Q/Cj4gPiA+Cj4gPiA+
IEJlY2F1c2Ugd2UgZG9uJ3Qgd2FudCB0byBpbmNyZWFzZSBzbHViIG1ldGEtZGF0YSBzaXplLCBz
byBlbmFibGluZyB0aGlzCj4gPiA+IG9wdGlvbiBjYW4gcHJpbnQgY2FsbF9yY3UoKSBzdGFja3Ms
IGJ1dCB0aGUgaW4tdXNlIHNsdWIgb2JqZWN0IGRvZXNuJ3QKPiA+ID4gcHJpbnQgZnJlZSBzdGFj
ay4gU28gaWYgaGF2ZSBvdXQtb2YtYm91bmQgaXNzdWUsIHRoZW4gaXQgd2lsbCBub3QgcHJpbnQK
PiA+ID4gZnJlZSBzdGFjay4gSXQgaXMgYSB0cmFkZS1vZmYsIHNlZSBbMV0uCj4gPiA+Cj4gPiA+
IFsxXSBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5ODQzNwo+
ID4KPiA+IEhpIFdhbHRlciwKPiA+Cj4gPiBHcmVhdCB5b3UgYXJlIHRhY2tsaW5nIHRoaXMhCj4g
Pgo+ID4gSSBoYXZlIHRoZSBzYW1lIGdlbmVyYWwgc2VudGltZW50IGFzIFFpYW4uIEkgd291bGQg
ZW5hYmxlIHRoaXMKPiA+IHVuY29uZGl0aW9uYWxseSBiZWNhdXNlOgo+ID4KPiA+IDEuIFdlIHN0
aWxsIGNhbid0IGdldCBib3RoIHJjdSBzdGFjayBhbmQgZnJlZSBzdGFjay4gSSB3b3VsZCBhc3N1
bWUKPiA+IG1vc3Qga2VybmVsIHRlc3Rpbmcgc3lzdGVtcyBuZWVkIHRvIGVuYWJsZSB0aGlzICh3
ZSBkZWZpbml0ZWx5IGVuYWJsZQo+ID4gb24gc3l6Ym90KS4gVGhpcyBtZWFucyB3ZSBkbyBub3Qg
aGF2ZSBmcmVlIHN0YWNrIGZvciBhbGxvY2F0aW9uCj4gPiBvYmplY3RzIGluIGFueSByZXBvcnRz
IGNvbWluZyBmcm9tIHRlc3Rpbmcgc3lzdGVtcy4gV2hpY2ggZ3JlYXRseQo+ID4gZGltaW5pc2hl
cyB0aGUgdmFsdWUgb2YgdGhlIG90aGVyIG1vZGUuCj4gPgo+ID4gMi4gS2VybmVsIGlzIHVuZGVy
dGVzdGVkLiBJbnRyb2R1Y2luZyBhbnkgYWRkaXRpb25hbCBjb25maWd1cmF0aW9uCj4gPiBvcHRp
b25zIGlzIGEgcHJvYmxlbSBpbiBzdWNoIGNvbnRleHQuIENoYW5jZXMgYXJlIHRoYXQgc29tZSBv
ZiB0aGUKPiA+IG1vZGVzIGFyZSBub3Qgd29ya2luZyBvciB3aWxsIGJyZWFrIGluIGZ1dHVyZS4K
PiA+Cj4gPiAzLiBUaGF0IGZyZWUgc3RhY2sgYWN0dWFsbHkgY2F1c2VzIGxvdHMgb2YgY29uZnVz
aW9uIGFuZCBJIG5ldmVyIGZvdW5kCj4gPiBpdCB1c2VmdWw6Cj4gPiBodHRwczovL2J1Z3ppbGxh
Lmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5ODQyNQo+ID4gSWYgaXQncyBhIHZlcnkgZGVs
YXllZCBVQUYsIGVpdGhlciBvbmUgbWF5IGdldCBhbm90aGVyIHJlcG9ydCBmb3IgdGhlCj4gPiBz
YW1lIGJ1ZyB3aXRoIG5vdCBzbyBkZWxheWVkIFVBRiwgb3IgaWYgaXQncyB3YXkgdG9vIGRlbGF5
ZWQsIHRoZW4gdGhlCj4gPiBwcmV2aW91cyBmcmVlIHN0YWNrIGlzIHdyb25nIGFzIHdlbGwuCj4g
Pgo+ID4gNC4gTW9zdCB1c2VycyBkb24ndCBjYXJlIHRoYXQgbXVjaCBhYm91dCBkZWJ1Z2dpbmcg
dG9vbHMgdG8gbGVhcm4KPiA+IGV2ZXJ5IGJpdCBvZiBldmVyeSBkZWJ1Z2dpbmcgdG9vbCBhbmQg
c3BlbmQgdGltZSBmaW5lLXR1bmluZyBpdCBmb3IKPiA+IHRoZWlyIGNvbnRleHQuIE1vc3QgS0FT
QU4gdXNlcnMgd29uJ3QgZXZlbiBiZSBhd2FyZSBvZiB0aGlzIGNob2ljZSwKPiA+IGFuZCB0aGV5
IHdpbGwganVzdCB1c2Ugd2hhdGV2ZXIgaXMgdGhlIGRlZmF1bHQuCj4gPgo+ID4gNS4gRWFjaCBj
b25maWd1cmF0aW9uIG9wdGlvbiBpbmNyZWFzZXMgaW1wbGVtZW50YXRpb24gY29tcGxleGl0eS4K
PiA+Cj4gPiBXaGF0IHdvdWxkIGhhdmUgdmFsdWUgaXMgaWYgd2UgZmlndXJlIG91dCBob3cgdG8g
bWFrZSBib3RoIG9mIHRoZW0KPiA+IHdvcmsgYXQgdGhlIHNhbWUgdGltZSB3aXRob3V0IGluY3Jl
YXNpbmcgbWVtb3J5IGNvbnN1bXB0aW9uLiBCdXQgSQo+ID4gZG9uJ3Qgc2VlIGFueSB3YXkgdG8g
ZG8gdGhpcy4KPiA+Cj4gPiBJIHByb3Bvc2UgdG8gbWFrZSB0aGlzIHRoZSBvbmx5IG1vZGUuIEkg
YW0gc3VyZSBsb3RzIG9mIHVzZXJzIHdpbGwKPiA+IGZpbmQgdGhpcyBhZGRpdGlvbmFsIHN0YWNr
IHVzZWZ1bCwgd2hlcmVhcyB0aGUgZnJlZSBzdGFjayBpcyBldmVuCj4gPiBmcmVxdWVudGx5IGNv
bmZ1c2luZy4KPiA+Cj4KPiBPay4KPiBJZiB3ZSB3YW50IHRvIGhhdmUgYSBkZWZhdWx0IGVuYWJs
aW5nIGl0LCBidXQgaXQgc2hvdWxkIG9ubHkgd29yayBpbgo+IGdlbmVyaWMgS0FTQU4sIGJlY2F1
c2Ugd2UgbmVlZCB0byBnZXQgb2JqZWN0IHN0YXR1cyhhbGxvY2F0aW9uIG9yCj4gZnJlZWluZykg
ZnJvbSBzaGFkb3cgbWVtb3J5LCB0YWctYmFzZWQgS0FTQU4gY2FuJ3QgZG8gaXQuIFNvIHdlIHNo
b3VsZAo+IGhhdmUgYSBkZWZhdWx0IGVuYWJsaW5nIGl0IGluIGdlbmVyaWMgS0FTQU4/CgpZZXMs
IGxldCdzIGRvIGdlbmVyaWMgS0FTQU4gYWx3YXlzIG1lbW9yaXplcyByY3Ugc3RhY2s7IHRhZ3Mg
S0FTQU4KbmV2ZXIgbWVtb3JpemVzIHJjdSBzdGFja3MuIE5vIG5ldyBjb25maWd1cmF0aW9ucy4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
