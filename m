Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DAA149854
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Jan 2020 01:33:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lRsaWKaEXIyyqhQLWzK4+jT2hZjhNjtkru08alHW1w=; b=O5iri5mpCrOLEi
	6bIq475k9MFerTUstD8n5CXVF3fzPt9waNwj4wjRyqanbYg9M/kKlQLIjDyNc7ykQwVDgqEuywCOE
	1FHEJBtuMqThvzjDo8sZzjtchkYC4aVcknn7hKIe7AnqzMmH/8HDJONqN0n3ugKukwnB7VSvQpJYN
	jCl24eqTUSbnD9z5HJEZ23HwjTWr/W0X7h5WO4/jY5I/bGO4Ot530qVhe++bmNFSTJZPDq+LX6aWK
	wPDy6GlfBzoLRn6PWS3zE4Hx/aLQcKtgJm7/hT54D9IZAk5dHkphcg6Uo0DqfUQ3gxED85XrvE1bE
	Upo/KDHsh1TyHFg8z67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivVrA-0001qW-0O; Sun, 26 Jan 2020 00:32:52 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivVr2-0001pt-CN
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Jan 2020 00:32:45 +0000
Received: by mail-lj1-x244.google.com with SMTP id q8so2787870ljb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 25 Jan 2020 16:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bwME4l4EJ6oZ8cjrQesmcLreWjxQta3M1Gv1X7S2+NY=;
 b=WX0tMtclJs/LJDkjtQA30eyVDlONVFUD9AJSP870n9xXtNaiUQ9/w+NHTT/MrCxdn/
 k+sGc3DDZc+YFnAMtWt10RFUxKXQNhzyjKmgAkzHHWGJLgkZMUqsVk51hr8nxgf92Exy
 H3QZlOjccPfM+EkeIFx9hE25eEPLQaxeT20usw82uyuHd87IC+o2l9UkX3wLSIzLjG+2
 NoTB6IggXHZDL1LK4Z9Lm0YYZS5ACZu5hw2ATihuzIdlNgXynL4u5UMSOo9VePOEploP
 H+seCHqzlIYGxgTEJdNa72RSoBs2JQSkmbxuhuaRZCRCDtj8Iv/pHb7NbZrhkB+p2NEu
 /rnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bwME4l4EJ6oZ8cjrQesmcLreWjxQta3M1Gv1X7S2+NY=;
 b=o6BjC4MMlAfpbFepcH+Y71BTT9nwRd1VNk9vyor+Wv7XC7tifc3OGPd4H0NZyMj9ly
 AvzoZfKPUivHiCqzctei/LJc+mmrYLnPgkvEsviHAAT3dpeHWyOhKduC1cW16emQ2VrJ
 IgHr1Kog3TyWbkgqaVdDB5sHQnocgGAsXaFMAOBo52qVQ1Vwa4M+YtPXjaeAYIbUYIE1
 sdDrMj9N7fIHoZXAUZah5B5F+W+5wTJLGE1svE9pILuJa29Lcc7SNqC0S2GObIpNB+TV
 Hzp5kXA0HUrHcqxK2XON3aXCQdEQCSZHt+EiGsXBAKgZbVIKMBZI5cw3ZeMi4bXIk1Dd
 erdw==
X-Gm-Message-State: APjAAAUpCGyjh9TTSfjJvxrweZpCcZuZfNEz/2szQ/1M+oSonTY6axmk
 mfZ6cVawJgJ2sd6N4zfDj9t+YZDp0gxzW796azBKRQ==
X-Google-Smtp-Source: APXvYqwdyZCQ+1g7pWUu8b3HV1fpGTluvmsD4O1UOCtJ24Bhz8zFImZoK7A4i7GNgyZ34ldyCjZyEe64BVBSE0ZO99Y=
X-Received: by 2002:a2e:7009:: with SMTP id l9mr5996081ljc.96.1579998757482;
 Sat, 25 Jan 2020 16:32:37 -0800 (PST)
MIME-Version: 1.0
References: <20200115035920.54451-1-alex.kogan@oracle.com>
 <CAC4j=Y8rCeTX9oKKbh+dCdTP8Ud4hW1ybu+iE7t_nxMSYBOR5w@mail.gmail.com>
 <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
In-Reply-To: <4F71A184-42C0-4865-9AAA-79A636743C25@oracle.com>
From: Lihao Liang <lihaoliang@google.com>
Date: Sun, 26 Jan 2020 00:32:26 +0000
Message-ID: <CAC4j=Y_SMHe4WNpaaS0kK1JYfnufM+AAiwwUMBx27L8U6bD8Yg@mail.gmail.com>
Subject: Re: [PATCH v9 0/5] Add NUMA-awareness to qspinlock
To: Alex Kogan <alex.kogan@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200125_163244_446672_94821C21 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, arnd@arndb.de,
 Peter Zijlstra <peterz@infradead.org>, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, steven.sistare@oracle.com, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, longman@redhat.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQWxleCBhbmQgV2FpbWFuLAoKVGhhbmtzIGEgbG90IGZvciB5b3VyIHN3aWZ0IHJlc3BvbnNl
IGFuZCBjbGFyaWZpY2F0aW9uLgoKT24gV2VkLCBKYW4gMjIsIDIwMjAgYXQgNzozMCBQTSBBbGV4
IEtvZ2FuIDxhbGV4LmtvZ2FuQG9yYWNsZS5jb20+IHdyb3RlOgo+Cj4gSGksIExpaGFvLgo+Cj4g
PiBPbiBKYW4gMjIsIDIwMjAsIGF0IDY6NDUgQU0sIExpaGFvIExpYW5nIDxsaWhhb2xpYW5nQGdv
b2dsZS5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIEFsZXgsCj4gPgo+ID4gT24gV2VkLCBKYW4gMjIs
IDIwMjAgYXQgMTA6MjggQU0gQWxleCBLb2dhbiA8YWxleC5rb2dhbkBvcmFjbGUuY29tPiB3cm90
ZToKPiA+Pgo+ID4+IFN1bW1hcnkKPiA+PiAtLS0tLS0tCj4gPj4KPiA+PiBMb2NrIHRocm91Z2hw
dXQgY2FuIGJlIGluY3JlYXNlZCBieSBoYW5kaW5nIGEgbG9jayB0byBhIHdhaXRlciBvbiB0aGUK
PiA+PiBzYW1lIE5VTUEgbm9kZSBhcyB0aGUgbG9jayBob2xkZXIsIHByb3ZpZGVkIGNhcmUgaXMg
dGFrZW4gdG8gYXZvaWQKPiA+PiBzdGFydmF0aW9uIG9mIHdhaXRlcnMgb24gb3RoZXIgTlVNQSBu
b2Rlcy4gVGhpcyBwYXRjaCBpbnRyb2R1Y2VzIENOQQo+ID4+IChjb21wYWN0IE5VTUEtYXdhcmUg
bG9jaykgYXMgdGhlIHNsb3cgcGF0aCBmb3IgcXNwaW5sb2NrLiBJdCBpcwo+ID4+IGVuYWJsZWQg
dGhyb3VnaCBhIGNvbmZpZ3VyYXRpb24gb3B0aW9uIChOVU1BX0FXQVJFX1NQSU5MT0NLUykuCj4g
Pj4KPiA+Cj4gPiBUaGFua3MgZm9yIHlvdXIgcGF0Y2hlcy4gVGhlIGV4cGVyaW1lbnRhbCByZXN1
bHRzIGxvb2sgcHJvbWlzaW5nIQo+ID4KPiA+IEkgdW5kZXJzdGFuZCB0aGF0IHRoZSBuZXcgQ05B
IHFzcGlubG9jayB1c2VzIHJhbmRvbWl6YXRpb24gdG8gYWNoaWV2ZQo+ID4gbG9uZy10ZXJtIGZh
aXJuZXNzLCBhbmQgcHJvdmlkZXMgdGhlIG51bWFfc3BpbmxvY2tfdGhyZXNob2xkIHBhcmFtZXRl
cgo+ID4gZm9yIHVzZXJzIHRvIHR1bmUuCj4gVGhpcyBoYXMgYmVlbiB0aGUgY2FzZSBpbiB0aGUg
Zmlyc3QgdmVyc2lvbnMgb2YgdGhlIHNlcmllcywgYnV0IGlzIG5vdCB0cnVlIGFueW1vcmUuCj4g
VGhhdCBpcywgdGhlIGxvbmctdGVybSBmYWlybmVzcyBpcyBhY2hpZXZlZCBkZXRlcm1pbmlzdGlj
YWxseSAoYW5kIHlvdSBhcmUgY29ycmVjdAo+IHRoYXQgaXQgaXMgZG9uZSB0aHJvdWdoIHRoZSBu
dW1hX3NwaW5sb2NrX3RocmVzaG9sZCBwYXJhbWV0ZXIpLgo+Cj4gPiBBcyBMaW51eCBydW5zIGV4
dHJlbWVseSBkaXZlcnNlIHdvcmtsb2FkcywgaXQgaXMgbm90Cj4gPiBjbGVhciBob3cgcmFuZG9t
aXphdGlvbiBhZmZlY3RzIGl0cyBmYWlybmVzcywgYW5kIGhvdyB1c2VycyB3aXRoCj4gPiBkaWZm
ZXJlbnQgcmVxdWlyZW1lbnRzIGFyZSBzdXBwb3NlZCB0byB0dW5lIHRoaXMgcGFyYW1ldGVyLgo+
ID4KPiA+IFRvIHRoaXMgZW5kLCBXaWxsIGFuZCBJIGNvbnNpZGVyIGl0IGJlbmVmaWNpYWwgdG8g
YmUgYWJsZSB0byBhbnN3ZXIgdGhlCj4gPiBmb2xsb3dpbmcgcXVlc3Rpb246Cj4gPgo+ID4gV2l0
aCBkaWZmZXJlbnQgdmFsdWVzIG9mIG51bWFfc3BpbmxvY2tfdGhyZXNob2xkIGFuZAo+ID4gU0hV
RkZMRV9SRURVQ1RJT05fUFJPQl9BUkcsIGhvdyBsb25nIGRvIHRocmVhZHMgcnVubmluZyBvbiBk
aWZmZXJlbnQKPiA+IHNvY2tldHMgaGF2ZSB0byB3YWl0IHRvIGFjcXVpcmUgdGhlIGxvY2s/Cj4g
VGhlIFNIVUZGTEVfUkVEVUNUSU9OX1BST0JfQVJHIHBhcmFtZXRlciBpcyBpbnRlbmRlZCBmb3Ig
cGVyZm9ybWFuY2UKPiBvcHRpbWl6YXRpb24gb25seSwgYW5kICpkb2VzIG5vdCogYWZmZWN0IHRo
ZSBsb25nLXRlcm0gZmFpcm5lc3MgKG9yLCBhdCB0aGUKPiB2ZXJ5IGxlYXN0LCBkb2VzIG5vdCBt
YWtlIGl0IGFueSB3b3JzZSkuIEFzIExvbmdtYW4gY29ycmVjdGx5IHBvaW50ZWQgb3V0IGluCj4g
aGlzIHJlc3BvbnNlIHRvIHRoaXMgZW1haWwsIHRoZSBzaHVmZmxlIHJlZHVjdGlvbiBvcHRpbWl6
YXRpb24gaXMgcmVsZXZhbnQgb25seQo+IHdoZW4gdGhlIHNlY29uZGFyeSBxdWV1ZSBpcyBlbXB0
eS4gSW4gdGhhdCBjYXNlLCBDTkEgaGFuZHMtb2ZmIHRoZSBsb2NrCj4gZXhhY3RseSBhcyBNQ1Mg
ZG9lcywgaS5lLiwgaW4gdGhlIEZJRk8gb3JkZXIuIE5vdGUgdGhhdCB3aGVuIHRoZSBzZWNvbmRh
cnkKPiBxdWV1ZSBpcyBub3QgZW1wdHksIHdlIGRvIG5vdCBjYWxsIHByb2JhYmx5KCkuCj4KPiA+
IFRoaXMgaXMgcGFydGljdWxhcmx5IHJlbGV2YW50Cj4gPiBpbiBoaWdoIGNvbnRlbnRpb24gc2l0
dWF0aW9ucyB3aGVuIG5ldyB0aHJlYWRzIGtlZXAgYXJyaXZpbmcgb24gdGhlIHNhbWUKPiA+IHNv
Y2tldCBhcyB0aGUgbG9jayBob2xkZXIuCj4gSW4gdGhpcyBjYXNlLCB0aGUgbG9jayB3aWxsIHN0
YXkgb24gdGhlIHNhbWUgTlVNQSBub2RlL3NvY2tldCBmb3IKPiAyXm51bWFfc3BpbmxvY2tfdGhy
ZXNob2xkIHRpbWVzLCB3aGljaCBpcyB0aGUgd29yc3QgY2FzZSBzY2VuYXJpbyBpZiB3ZQo+IGNv
bnNpZGVyIHRoZSBsb25nLXRlcm0gZmFpcm5lc3MuIEFuZCBpZiB3ZSBoYXZlIG11bHRpcGxlIG5v
ZGVzLCBpdCB3aWxsIHRha2UKPiB1cCB0byAyXm51bWFfc3BpbmxvY2tfdGhyZXNob2xkIFggKG5y
X25vZGVzIC0gMSkgKyBucl9jcHVzX3Blcl9ub2RlCj4gbG9jayB0cmFuc2l0aW9ucyB1bnRpbCBh
bnkgZ2l2ZW4gdGhyZWFkIHdpbGwgYWNxdWlyZSB0aGUgbG9jawo+IChhc3N1bWluZyAyXm51bWFf
c3BpbmxvY2tfdGhyZXNob2xkID4gbnJfY3B1c19wZXJfbm9kZSkuCj4KCllvdSdyZSByaWdodCB0
aGF0IHRoZSBsYXRlc3QgdmVyc2lvbiBvZiB0aGUgcGF0Y2ggaGFuZGxlcyBsb25nLXRlcm0gZmFp
cm5lc3MKZGV0ZXJtaW5pc3RpY2FsbHkuCgpBcyBJIHVuZGVyc3RhbmQgaXQsIHRoZSBuLXRoIHRo
cmVhZCBpbiB0aGUgbWFpbiBxdWV1ZSBpcyBndWFyYW50ZWVkIHRvCmFjcXVpcmUgdGhlIGxvY2sg
YWZ0ZXIgTiBsb2NrIGhhbmRvdmVycywgd2hlcmUgTiBpcyBib3VuZGVkIGJ5CgpuIC0gMSArIDJe
bnVtYV9zcGlubG9ja190aHJlc2hvbGQgKiAobnJfbm9kZXMgLSAxKQoKSSdtIG5vdCBzdXJlIHdo
YXQgcm9sZSB0aGUgdmFyaWFibGUgbnJfY3B1c19wZXJfbm9kZSBwbGF5cyBpbiB5b3VyIGFuYWx5
c2lzLgoKRG8gSSBtaXNzIGFueXRoaW5nPwoKTWFueSB0aGFua3MsCkxpaGFvLgoKPiBIb3BlZnVs
bHksIGl0IGFkZHJlc3NlcyB5b3VyIGNvbmNlcm4uIExldCBtZSBrbm93IGlmIHlvdSBoYXZlIGFu
eSBmdXJ0aGVyCj4gcXVlc3Rpb25zLgo+Cj4gQmVzdCByZWdhcmRzLAo+IOKAlCBBbGV4Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
