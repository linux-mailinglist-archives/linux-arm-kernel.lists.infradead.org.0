Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9489140FE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 18:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JlH7yO2ktbkakDFUixbhVwIMPQ/7PaQUjRduQDZ72Xg=; b=S0TDjM60a0Hac8
	QXmprU2vVmz6M90b4j8BvzqeyuT8TNpgILLtZyn3te5YthARIbDgMkjVhgoC0cqwxYEZrXjVFv/jk
	BUDwWXsHGZQ5hVeXyoeAt8jU5vHy//gkYtraBPcq8E6FSKUPgJBaNgTAUpfAvwITJ04M4Me6WBUK+
	tCUUd1q5gs1fXI3z9ocy1+JZIZgOdQKDyROv5ysb3UpOHerGsYDVojchZ8bjSyvdDbJiUo8dbX/dU
	EcFol0x3dzRPugaSCeaDYDE/5ATYmNExR65iCH5nZRKyk5DseGGA7k7u7NpNL0bFEwhWhm+eVhi11
	4O1t+6rGSwzLIDrIFCHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isVSM-0000eU-Pu; Fri, 17 Jan 2020 17:30:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isVS6-0000cT-Qa
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 17:30:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id t14so8424279wmi.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 09:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=s/Igl7jec5R8DMF3nyQFihy0XoNH7LpzgEc781wHBbE=;
 b=IfI2V2VjiHDEyMxVeB6DJUwZfuJaVSwdWaVbiW2tG1VzG5iMe4Fmndr3Dh8Y5KaF7g
 SbVP5Ca373H4SpjZNwlaPj0ajlmO5/0RXj4cboBUBjlynN2ihp0sj5+LxlF9hYR3Gs5D
 5Qv2rZh4Yzvc8lS4UP3Ac5LRe5cw1v+Y0yJdR8pwwdPPusdbhjfrDBsi13y8DYwoaakI
 cuAz6BXfPrsKPA1w9FiWbzNzE9zzgpb3Rr4pw20A0bJZFGooUMKUtslJ3QXvxVnMh650
 IIszWgCEmch4wXJw0b3IsDeqswH27TUpZ2/KnyYvteCdFYD5butLob8faQQd6VS5iI6D
 fZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=s/Igl7jec5R8DMF3nyQFihy0XoNH7LpzgEc781wHBbE=;
 b=KsZ2pcQU1SFjtxUOXKvTcSLgDi/Tvauq6LPLxiWdUl1aKccwj+TU0wX5vDqIxP/B6l
 Kns46t34e8XYOReZBpGvxOXUBVf2UluYIDwPTw3brXy/W6AN3m+tnG5I2UYpBwzXx2I+
 wsREQ3CRNMFP0Ow27gVS1AKtbggtcchMbsfvNpH2vGuzbOz/Fn/Qc7ub2rarXPcjS4ro
 xHMJ9HJ3Dvy6lU80oqDLv9u0xy7No4kOaO6Lggv9jptGyvcO7qDozqLBi+qVtGZ/yEyt
 WHgNeinl2E80WCRFOmz6T6lZLGyODA6WbiadoMDg+Yng5yCXeslFIk0YB3pBvN8n39WV
 IAGQ==
X-Gm-Message-State: APjAAAXvI59DUn4ocOkF31oofMIkhJBvzYQOP0h6mFcqJJaXtj8/h2Vf
 M6ob5ohTcUd6VHvgGZM70Bfn/NhTC3WnFM3sx8PkoA==
X-Google-Smtp-Source: APXvYqzRUf0wuugbvneoW29gNcVYmOiCM6ix6iVR1pyh/dPBzXnBInYEBfLi/RQ7RKNXoAYeNH1N+QN4jkAc1zvQ3nI=
X-Received: by 2002:a1c:7e0b:: with SMTP id z11mr5822249wmc.88.1579282226314; 
 Fri, 17 Jan 2020 09:30:26 -0800 (PST)
MIME-Version: 1.0
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
In-Reply-To: <20200117151533.12381-1-mkoutny@suse.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Fri, 17 Jan 2020 09:30:15 -0800
Message-ID: <CAJuCfpHkOz1LmygyxC9VxXux8_TFmEGr-BsAs-EadKt=AkZyiQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] cgroup: Iterate tasks that did not finish do_exit()
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_093034_858301_C0A510D4 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: JeiFeng Lee <linger.lee@mediatek.com>, Tom Cherry <tomcherry@google.com>,
 shuah@kernel.org, LKML <linux-kernel@vger.kernel.org>, matthias.bgg@gmail.com,
 Li Zefan <lizefan@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, cgroups mailinglist <cgroups@vger.kernel.org>,
 alex.shi@linux.alibaba.com, kernel-team <kernel-team@android.com>,
 Roman Gushchin <guro@fb.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWljaGFsLAoKT24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgNzoxNSBBTSBNaWNoYWwgS291dG7D
vSA8bWtvdXRueUBzdXNlLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPiBJIHdhcyBsb29raW5nIGludG8g
dGhlIGlzc3VlIGFuZCBjYW1lIHVwIHdpdGggYW4gYWx0ZXJuYXRpdmUgc29sdXRpb24gdGhhdAo+
IGNoYW5nZXMgdGFzayBpdGVyYXRpb24gdG8gYmUgY29uc2lzdGVudCB3aXRoIGNncm91cF9pc19w
b3B1bGF0ZWQoKSBjaGVjayBhbmQKPiBtb3ZpbmcgdGhlIHJlc3BvbnNpYmlsaXR5IHRvIGNoZWNr
IFBGX0VYSVRJTkcgb24gdGhlIGNvbnN1bWVycyBvZiBpdGVyYXRvciBBUEkuCgpZZWFoLCB0aGF0
IHdhcyBteSBmaXJzdCB0aG91Z2h0IHdoaWNoIGJhc2ljYWxseSByZXZlcnRzIGEgcGFydCBvZgpj
MDNjZDc3MzhhODMuIFdoZW4gSSBmaXJzdCBicm91Z2h0IHVwIHRoaXMgaXNzdWUgaW4gdGhlIG90
aGVyIGVtYWlsCnRocmVhZCwgVGVqdW4ncyBjb21tZW50IHdhcyAidGhlIHJpZ2h0IHRoaW5nIHRv
IGRvIGlzIGFsbG93aW5nCmRlc3RydWN0aW9uIG9mIGNncm91cHMgdy8gb25seQpkZWFkIHByb2Nl
c3NlcyBpbiBpdCIuIEkgYXNzdW1lZCwgbWF5YmUgaW5jb3JyZWN0bHksIHRoYXQgdGhlIGRlc2ly
ZQpoZXJlIGlzIG5vdCB0byBpbmNsdWRlIGR5aW5nIHByb2Nlc3NlcyBpbnRvIGNncm91cC5wcm9j
cyBidXQgdG8gYWxsb3cKY2dyb3VwcyB3aXRoIGR5aW5nIHByb2Nlc3NlcyB0byBiZSBkZWxldGVk
LgoKVG8gYmUgY2xlYXIsIGVpdGhlciB3YXkgaXMgZmluZSB3aXRoIG1lIHNpbmNlIGJvdGggd2F5
cyBzb2x2ZSB0aGUKaXNzdWUgYW5kIHRoaXMgd2F5IHRoZSBjb2RlIGlzIGRlZmluaXRlbHkgc2lt
cGxlci4gSSdsbCByZXJ1biB0aGUKdGVzdHMgd2l0aCB5b3VyIHBhdGNoZXMganVzdCB0byBjb25m
aXJtIHRoZSBpc3N1ZSBpcyBnb25lLgpUaGFua3MhCgo+IEkgaGF2ZW4ndCBjaGVjayB5b3VyIGFw
cHJvYWNoIHRob3JvdWdobHksIGhvd2V2ZXIsIGl0IGFwcGVhcnMgdG8gbWUgaXQKPiBjb21wbGlj
YXRlcyAoYWxyZWFkeSBub24tdHJpdmlhbCkgY2dyb3VwIGRlc3RydWN0aW9uIHBhdGguIEkgcmFu
IHlvdXIgc2VsZnRlc3QKPiBvbiB0aGUgaXRlcmF0b3JzIGFwcHJvYWNoIGFuZCBpdCBwcm92ZWQg
d29ya2luZy4KPgo+Cj4gTWljaGFsIEtvdXRuw70gKDIpOgo+ICAgY2dyb3VwOiBVbmlmeSBjc3Nf
c2V0IHRhc2sgbGlzdHMKPiAgIGNncm91cDogSXRlcmF0ZSB0YXNrcyB0aGF0IGRpZCBub3QgZmlu
aXNoIGRvX2V4aXQoKQo+Cj4gU3VyZW4gQmFnaGRhc2FyeWFuICgxKToKPiAgIGtzZWxmdGVzdC9j
Z3JvdXA6IGFkZCBjZ3JvdXAgZGVzdHJ1Y3Rpb24gdGVzdAo+Cj4gIGluY2x1ZGUvbGludXgvY2dy
b3VwLWRlZnMuaCAgICAgICAgICAgICAgICB8ICAxNSArKy0KPiAgaW5jbHVkZS9saW51eC9jZ3Jv
dXAuaCAgICAgICAgICAgICAgICAgICAgIHwgICA0ICstCj4gIGtlcm5lbC9jZ3JvdXAvY2dyb3Vw
LmMgICAgICAgICAgICAgICAgICAgICB8ICA4NiArKysrKysrKy0tLS0tLS0tCj4gIGtlcm5lbC9j
Z3JvdXAvZGVidWcuYyAgICAgICAgICAgICAgICAgICAgICB8ICAxNiArKy0KPiAgdG9vbHMvdGVz
dGluZy9zZWxmdGVzdHMvY2dyb3VwL3Rlc3RfY29yZS5jIHwgMTEzICsrKysrKysrKysrKysrKysr
KysrKwo+ICA1IGZpbGVzIGNoYW5nZWQsIDE3NiBpbnNlcnRpb25zKCspLCA1OCBkZWxldGlvbnMo
LSkKPgo+IC0tCj4gMi4yNC4xCj4KPiAtLQo+IFRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91
cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8ga2Vy
bmVsLXRlYW0rdW5zdWJzY3JpYmVAYW5kcm9pZC5jb20uCj4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
