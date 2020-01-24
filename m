Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C5014916B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 23:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYWmlZTV7w4XvRMvwE8GKuTAo9gAXjjXwUT1TfQ/iaU=; b=YeAMC5st3U+axt
	dmZ36HpLh3/eN0RgpHedJi6B/ushM87pAxk9NbQHEaMsERUPIQsy+A4I/6Gz8SUPxwY73Z+57+z0y
	4yW/NZvdMpT8LO/CbZKROh8hwtNnttCUj3kmdorTFfTbQETucWyvomW/HInHTHuIDhtFcqfJT3XI6
	Nif/KzmXGeqx0ph4BYW0fN9QxU4Qf2rYL+565cF4RlWOWf3EILIZNHvPUIFSFQKGA+023dMYkpk6b
	2DvbWIW+1z2YtbPfg/1KwglpSH5Oe0Zac8AYTH6rZHyJ3F8Y9sOk6Eb4c5jIOro3VnPVawdMWiAnn
	kpauugqa3xKDBcgdzQig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv7t8-0005Lo-A5; Fri, 24 Jan 2020 22:57:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv7sy-0005KA-Ra
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 22:57:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so3953352wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 14:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=fNqODm3MPzAsBSCY9n8l1wXAgR4AKgIMTb5pUp7NU0U=;
 b=srTj1j2mPK8t2sakwkD7rQEbDNeFFM9BwDp93dCsDs1Q20oZf59EZmlmAzOPPdf+4y
 YxcM9llvhHsbhRScaQhg5pfhZuQ5EK2Wiabt848H4kBft/yOeKD0KfLCT/l9W4a5Y1L4
 Ws4qptwOggL7bhfng7gBhzPp9HhaA+aTg36WNq74YBut1qhS4L/ZTMqXR3HYzj9r7FGA
 g3OhV0aJtCq6S5MwW9QcBqn3UQ760IxL5+/lie2pPtU7H3eL61wmjRFYGCWegua4o7px
 G9xsghTqHOYLmfB+t0+5wgQJi9Xa2XH6e7g4cwoQw8CdIX7jxs00HjMp1GrSPYPF2HYQ
 4/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=fNqODm3MPzAsBSCY9n8l1wXAgR4AKgIMTb5pUp7NU0U=;
 b=pEBxsyRdQlgEA99sBq4m/7RvUSaY3YT/c3w8YYwhyECD98Ntmhzc7Br4yvipqltvba
 8xD7GjvTjzPcly6BFj9ZzGmlGuZ3gg/6Vp6exTYVa/svfUY4kramFxCWvha4gB44JNd4
 HAjLRXKpi3vAOQjN7qVCGErXiS20aaRv8eWLCy3+FEXQZzYKWNDqVgHvSZUQUQ0u6s7o
 MH/zVT5Ubiop6DyFh0t1TaNOI/9GbcLAbbUZev8gqa1QMa9MI6bXCZlRjVfqozix+tyj
 hSyN+pkAn+3XHEjAgoHquoX8DScV3Y3zveFXM0auhcB2Z1fdX5yfjFIjnUAq5shBKJUu
 wsIQ==
X-Gm-Message-State: APjAAAV9qv6xflBUM2A39twzqlN0R5odBOG5tDXuVxgqvbY4MyfYdaXS
 g/8iKgY9EAgvW2iv5MCK3JAf1cN4UoR3ZmMjWQGJpg==
X-Google-Smtp-Source: APXvYqzP4FnUZ8kt/z6sTrHwXtHilzjV/goyThoHUZqMef+SOku7Q5F6lD4mv864jnI2/qV48MsRq4J931iUvo8aLpk=
X-Received: by 2002:adf:e887:: with SMTP id d7mr6634585wrm.162.1579906622211; 
 Fri, 24 Jan 2020 14:57:02 -0800 (PST)
MIME-Version: 1.0
References: <20200120145635.GA30904@blackbody.suse.cz>
 <20200124114017.8363-1-mkoutny@suse.com>
 <20200124114017.8363-2-mkoutny@suse.com>
In-Reply-To: <20200124114017.8363-2-mkoutny@suse.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Fri, 24 Jan 2020 14:56:51 -0800
Message-ID: <CAJuCfpGjC=YwY=oNnYFNDp2nCuR9YhSU95=xbbeoDEheemte+Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] cgroup: Iterate tasks that did not finish do_exit()
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_145708_899464_60CA24B3 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 shuah@kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Tejun Heo <tj@kernel.org>, Li Zefan <lizefan@huawei.com>,
 linux-mediatek@lists.infradead.org, linux-kselftest@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, matthias.bgg@gmail.com,
 cgroups mailinglist <cgroups@vger.kernel.org>, alex.shi@linux.alibaba.com,
 kernel-team <kernel-team@android.com>, Roman Gushchin <guro@fb.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMjQsIDIwMjAgYXQgMzo0MCBBTSBNaWNoYWwgS291dG7DvSA8bWtvdXRueUBz
dXNlLmNvbT4gd3JvdGU6Cj4KPiBQRl9FWElUSU5HIGlzIHNldCBlYXJsaWVyIHRoYW4gYWN0dWFs
IHJlbW92YWwgZnJvbSBjc3Nfc2V0IHdoZW4gYSB0YXNrCj4gaXMgZXhpdHRpbmcuIFRoaXMgY2Fu
IGNvbmZ1c2UgY2dyb3VwLnByb2NzIHJlYWRlcnMgd2hvIHNlZSBubyBQRl9FWElUSU5HCj4gdGFz
a3MsIGhvd2V2ZXIsIHJtZGlyIGlzIGNoZWNraW5nIGFnYWluc3QgY3NzX3NldCBtZW1iZXJzaGlw
IHNvIGl0IGNhbgo+IHRyYW5zaXRpb25hbGx5IGZhaWwgd2l0aCBFQlVTWS4KPgo+IEZpeCB0aGlz
IGJ5IGxpc3RpbmcgdGFza3MgdGhhdCB3ZXJlbid0IHVubGlua2VkIGZyb20gY3NzX3NldCBhY3Rp
dmUKPiBsaXN0cy4KPiBJdCBtYXkgaGFwcGVuIHRoYXQgb3RoZXIgdXNlcnMgb2YgdGhlIHRhc2sg
aXRlcmF0b3IgKHdpdGhvdXQKPiBDU1NfVEFTS19JVEVSX1BST0NTKSBzcG90IGEgUEZfRVhJVElO
RyB0YXNrIGJlZm9yZSBjZ3JvdXBfZXhpdCgpLiBUaGlzCj4gaXMgZXF1YWwgdG8gdGhlIHN0YXRl
IGJlZm9yZSBjb21taXQgYzAzY2Q3NzM4YTgzICgiY2dyb3VwOiBJbmNsdWRlIGR5aW5nCj4gbGVh
ZGVycyB3aXRoIGxpdmUgdGhyZWFkcyBpbiBQUk9DUyBpdGVyYXRpb25zIikgYnV0IGl0IG1heSBi
ZSByZXZpZXdlZAo+IGxhdGVyLgo+Cj4gUmVwb3J0ZWQtYnk6IFN1cmVuIEJhZ2hkYXNhcnlhbiA8
c3VyZW5iQGdvb2dsZS5jb20+Cj4gRml4ZXM6IGMwM2NkNzczOGE4MyAoImNncm91cDogSW5jbHVk
ZSBkeWluZyBsZWFkZXJzIHdpdGggbGl2ZSB0aHJlYWRzIGluIFBST0NTIGl0ZXJhdGlvbnMiKQo+
IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBLb3V0bsO9IDxta291dG55QHN1c2UuY29tPgo+IC0tLQo+
ICBpbmNsdWRlL2xpbnV4L2Nncm91cC5oIHwgIDEgKwo+ICBrZXJuZWwvY2dyb3VwL2Nncm91cC5j
IHwgMjMgKysrKysrKysrKysrKysrKy0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNl
cnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGludXgv
Y2dyb3VwLmggYi9pbmNsdWRlL2xpbnV4L2Nncm91cC5oCj4gaW5kZXggZDdkZGViZDBjZGVjLi5l
NzVkMjE5MTIyNmIgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51eC9jZ3JvdXAuaAo+ICsrKyBi
L2luY2x1ZGUvbGludXgvY2dyb3VwLmgKPiBAQCAtNjIsNiArNjIsNyBAQCBzdHJ1Y3QgY3NzX3Rh
c2tfaXRlciB7Cj4gICAgICAgICBzdHJ1Y3QgbGlzdF9oZWFkICAgICAgICAgICAgICAgICptZ190
YXNrc19oZWFkOwo+ICAgICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICAgICAgICAgICAqZHlp
bmdfdGFza3NfaGVhZDsKPgo+ICsgICAgICAgc3RydWN0IGxpc3RfaGVhZCAgICAgICAgICAgICAg
ICAqY3VyX3Rhc2tzX2hlYWQ7Cj4gICAgICAgICBzdHJ1Y3QgY3NzX3NldCAgICAgICAgICAgICAg
ICAgICpjdXJfY3NldDsKPiAgICAgICAgIHN0cnVjdCBjc3Nfc2V0ICAgICAgICAgICAgICAgICAg
KmN1cl9kY3NldDsKPiAgICAgICAgIHN0cnVjdCB0YXNrX3N0cnVjdCAgICAgICAgICAgICAgKmN1
cl90YXNrOwo+IGRpZmYgLS1naXQgYS9rZXJuZWwvY2dyb3VwL2Nncm91cC5jIGIva2VybmVsL2Nn
cm91cC9jZ3JvdXAuYwo+IGluZGV4IDczNWFmOGYxNWY5NS4uYTZlMzYxOWUwMTNiIDEwMDY0NAo+
IC0tLSBhL2tlcm5lbC9jZ3JvdXAvY2dyb3VwLmMKPiArKysgYi9rZXJuZWwvY2dyb3VwL2Nncm91
cC5jCj4gQEAgLTQ0MDQsMTIgKzQ0MDQsMTYgQEAgc3RhdGljIHZvaWQgY3NzX3Rhc2tfaXRlcl9h
ZHZhbmNlX2Nzc19zZXQoc3RydWN0IGNzc190YXNrX2l0ZXIgKml0KQo+ICAgICAgICAgICAgICAg
ICB9Cj4gICAgICAgICB9IHdoaWxlICghY3NzX3NldF9wb3B1bGF0ZWQoY3NldCkgJiYgbGlzdF9l
bXB0eSgmY3NldC0+ZHlpbmdfdGFza3MpKTsKPgo+IC0gICAgICAgaWYgKCFsaXN0X2VtcHR5KCZj
c2V0LT50YXNrcykpCj4gKyAgICAgICBpZiAoIWxpc3RfZW1wdHkoJmNzZXQtPnRhc2tzKSkgewo+
ICAgICAgICAgICAgICAgICBpdC0+dGFza19wb3MgPSBjc2V0LT50YXNrcy5uZXh0Owo+IC0gICAg
ICAgZWxzZSBpZiAoIWxpc3RfZW1wdHkoJmNzZXQtPm1nX3Rhc2tzKSkKPiArICAgICAgICAgICAg
ICAgaXQtPmN1cl90YXNrc19oZWFkID0gJmNzZXQtPnRhc2tzOwo+ICsgICAgICAgfSBlbHNlIGlm
ICghbGlzdF9lbXB0eSgmY3NldC0+bWdfdGFza3MpKSB7Cj4gICAgICAgICAgICAgICAgIGl0LT50
YXNrX3BvcyA9IGNzZXQtPm1nX3Rhc2tzLm5leHQ7Cj4gLSAgICAgICBlbHNlCj4gKyAgICAgICAg
ICAgICAgIGl0LT5jdXJfdGFza3NfaGVhZCA9ICZjc2V0LT5tZ190YXNrczsKPiArICAgICAgIH0g
ZWxzZSB7Cj4gICAgICAgICAgICAgICAgIGl0LT50YXNrX3BvcyA9IGNzZXQtPmR5aW5nX3Rhc2tz
Lm5leHQ7Cj4gKyAgICAgICAgICAgICAgIGl0LT5jdXJfdGFza3NfaGVhZCA9ICZjc2V0LT5keWlu
Z190YXNrczsKPiArICAgICAgIH0KPgo+ICAgICAgICAgaXQtPnRhc2tzX2hlYWQgPSAmY3NldC0+
dGFza3M7Cj4gICAgICAgICBpdC0+bWdfdGFza3NfaGVhZCA9ICZjc2V0LT5tZ190YXNrczsKPiBA
QCAtNDQ2NywxMCArNDQ3MSwxNCBAQCBzdGF0aWMgdm9pZCBjc3NfdGFza19pdGVyX2FkdmFuY2Uo
c3RydWN0IGNzc190YXNrX2l0ZXIgKml0KQo+ICAgICAgICAgICAgICAgICBlbHNlCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgaXQtPnRhc2tfcG9zID0gaXQtPnRhc2tfcG9zLT5uZXh0Owo+Cj4g
LSAgICAgICAgICAgICAgIGlmIChpdC0+dGFza19wb3MgPT0gaXQtPnRhc2tzX2hlYWQpCj4gKyAg
ICAgICAgICAgICAgIGlmIChpdC0+dGFza19wb3MgPT0gaXQtPnRhc2tzX2hlYWQpIHsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBpdC0+dGFza19wb3MgPSBpdC0+bWdfdGFza3NfaGVhZC0+bmV4
dDsKPiAtICAgICAgICAgICAgICAgaWYgKGl0LT50YXNrX3BvcyA9PSBpdC0+bWdfdGFza3NfaGVh
ZCkKPiArICAgICAgICAgICAgICAgICAgICAgICBpdC0+Y3VyX3Rhc2tzX2hlYWQgPSBpdC0+bWdf
dGFza3NfaGVhZDsKPiArICAgICAgICAgICAgICAgfQo+ICsgICAgICAgICAgICAgICBpZiAoaXQt
PnRhc2tfcG9zID09IGl0LT5tZ190YXNrc19oZWFkKSB7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgaXQtPnRhc2tfcG9zID0gaXQtPmR5aW5nX3Rhc2tzX2hlYWQtPm5leHQ7Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgaXQtPmN1cl90YXNrc19oZWFkID0gaXQtPmR5aW5nX3Rhc2tzX2hlYWQ7
Cj4gKyAgICAgICAgICAgICAgIH0KPiAgICAgICAgICAgICAgICAgaWYgKGl0LT50YXNrX3BvcyA9
PSBpdC0+ZHlpbmdfdGFza3NfaGVhZCkKPiAgICAgICAgICAgICAgICAgICAgICAgICBjc3NfdGFz
a19pdGVyX2FkdmFuY2VfY3NzX3NldChpdCk7Cj4gICAgICAgICB9IGVsc2Ugewo+IEBAIC00NDg5
LDExICs0NDk3LDEyIEBAIHN0YXRpYyB2b2lkIGNzc190YXNrX2l0ZXJfYWR2YW5jZShzdHJ1Y3Qg
Y3NzX3Rhc2tfaXRlciAqaXQpCj4gICAgICAgICAgICAgICAgICAgICAgICAgZ290byByZXBlYXQ7
Cj4KPiAgICAgICAgICAgICAgICAgLyogYW5kIGR5aW5nIGxlYWRlcnMgdy9vIGxpdmUgbWVtYmVy
IHRocmVhZHMgKi8KPiAtICAgICAgICAgICAgICAgaWYgKCFhdG9taWNfcmVhZCgmdGFzay0+c2ln
bmFsLT5saXZlKSkKPiArICAgICAgICAgICAgICAgaWYgKGl0LT5jdXJfdGFza3NfaGVhZCA9PSBp
dC0+ZHlpbmdfdGFza3NfaGVhZCAmJgo+ICsgICAgICAgICAgICAgICAgICAgIWF0b21pY19yZWFk
KCZ0YXNrLT5zaWduYWwtPmxpdmUpKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVw
ZWF0Owo+ICAgICAgICAgfSBlbHNlIHsKPiAgICAgICAgICAgICAgICAgLyogc2tpcCBhbGwgZHlp
bmcgb25lcyAqLwo+IC0gICAgICAgICAgICAgICBpZiAodGFzay0+ZmxhZ3MgJiBQRl9FWElUSU5H
KQo+ICsgICAgICAgICAgICAgICBpZiAoaXQtPmN1cl90YXNrc19oZWFkID09IGl0LT5keWluZ190
YXNrc19oZWFkKQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdvdG8gcmVwZWF0Owo+ICAgICAg
ICAgfQo+ICB9Cj4gLS0KPiAyLjI0LjEKPgoKVGVzdGVkLWJ5OiBTdXJlbiBCYWdoZGFzYXJ5YW4g
PHN1cmVuYkBnb29nbGUuY29tPgoKVGhhbmtzIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
