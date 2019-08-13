Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9468BFE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkceThSfeDsL6/vatVZlPBg/YfgJ0unpV9aaSZc982s=; b=bIUSLNfm2T1QvR
	/+xtbnm1MQSVfR9583EOYpZGv53jcfjaUtYphu957Q4L/MqQpqd3tAQpDmlGXYvwT18pnDZ+X3s3V
	6EdAGY7vbAlg40kstDmdCvmjLwxfG2s/N5AqKpF/EXVCuVT35Y+wensHD1pxuuckolLw5Aud7Sr29
	KWbt4sBVfAYVs0V2a8mtNXqeTWqFVVLiqlbuL2R/oQfCZkw5gL3sR/ZwYsKaLKqThnhpAAUyZOuR5
	LiPUy+yzDufcw5ZQ5w7ISb84BI7H5cOXQYLTRrwWIS8ouMhf9wLwazcq5ccbyf5NLqsr1q0jrgNu1
	Nuh+wd73eKy54xwzlhZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxau8-0002lE-Gm; Tue, 13 Aug 2019 17:48:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxatu-0002kq-NS
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:48:04 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33BDC2067D;
 Tue, 13 Aug 2019 17:48:01 +0000 (UTC)
Date: Tue, 13 Aug 2019 13:47:59 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2 v2] tracing/arm64: Have max stack tracer handle the
 case of return address after data
Message-ID: <20190813134759.68009352@gandalf.local.home>
In-Reply-To: <20190813173114.himeal2ublebx7ea@willie-the-truck>
References: <20190807172826.352574408@goodmis.org>
 <20190807172907.155165959@goodmis.org>
 <20190808162825.7klpu3ffza5zxwrt@willie-the-truck>
 <20190808123632.0dd1a58c@gandalf.local.home>
 <20190808171153.6j56h4hlcpcl5trz@willie-the-truck>
 <20190808132455.5fa2c660@gandalf.local.home>
 <21530ce5-3847-c669-2a64-7c59ffb45f35@windriver.com>
 <20190808222440.2f99c50e@oasis.local.home>
 <20190813173114.himeal2ublebx7ea@willie-the-truck>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_104802_787173_5832766E 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiping Ma <Jiping.Ma2@windriver.com>, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAxMyBBdWcgMjAxOSAxODozMToxNCArMDEwMApXaWxsIERlYWNvbiA8d2lsbEBrZXJu
ZWwub3JnPiB3cm90ZToKCj4gSGkgU3RldmUsCj4gCj4gT24gVGh1LCBBdWcgMDgsIDIwMTkgYXQg
MTA6MjQ6NDBQTSAtMDQwMCwgU3RldmVuIFJvc3RlZHQgd3JvdGU6Cj4gPiBPbiBGcmksIDkgQXVn
IDIwMTkgMTA6MTc6MTkgKzA4MDAKPiA+IEppcGluZyBNYSA8SmlwaW5nLk1hMkB3aW5kcml2ZXIu
Y29tPiB3cm90ZTogIAo+ID4gPiBPbiAyMDE55bm0MDjmnIgwOeaXpSAwMToyNCwgU3RldmVuIFJv
c3RlZHQgd3JvdGU6ICAKPiA+ID4gPiBPbiBUaHUsIDggQXVnIDIwMTkgMTg6MTE6NTMgKzAxMDAK
PiA+ID4gPiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gPiAgICAK
PiA+ID4gPj4+IFdlIGNvdWxkIG1ha2UgaXQgbW9yZSBkZXNjcmlwdGl2ZSBvZiB3aGF0IGl0IHdp
bGwgZG8gYW5kIG5vdCB0aGUgcmVhc29uCj4gPiA+ID4+PiBmb3Igd2h5IGl0IGlzIGRvbmUuLi4K
PiA+ID4gPj4+Cj4gPiA+ID4+Pgo+ID4gPiA+Pj4gICAgQVJDSF9GVFJBQ0VfU0hJRlRfU1RBQ0tf
VFJBQ0VSICAgIAo+ID4gPiA+PiBBY2tlZC1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9y
Zz4gICAgCj4gPiA+ID4gVGhhbmtzIFdpbGwhCj4gPiA+ID4KPiA+ID4gPiBIZXJlJ3MgdGhlIG9m
ZmljaWFsIHBhdGNoLgo+ID4gPiA+Cj4gPiA+ID4gRnJvbTogIlN0ZXZlbiBSb3N0ZWR0IChWTXdh
cmUpIiA8cm9zdGVkdEBnb29kbWlzLm9yZz4KPiA+ID4gPgo+ID4gPiA+IE1vc3QgYXJjaHMgKHdl
bGwgYXQgbGVhc3QgeDg2KSBzdG9yZSB0aGUgZnVuY3Rpb24gY2FsbCByZXR1cm4gYWRkcmVzcyBv
biB0aGUKPiA+ID4gPiBzdGFjayBiZWZvcmUgc3RvcmluZyB0aGUgbG9jYWwgdmFyaWFibGVzIGZv
ciB0aGUgZnVuY3Rpb24uIFRoZSBtYXggc3RhY2sKPiA+ID4gPiB0cmFjZXIgZGVwZW5kcyBvbiB0
aGlzIGluIGl0cyBhbGdvcml0aG0gdG8gZGlzcGxheSB0aGUgc3RhY2sgc2l6ZSBvZiBlYWNoCj4g
PiA+ID4gZnVuY3Rpb24gaXQgZmluZHMgaW4gdGhlIGJhY2sgdHJhY2UuCj4gPiA+ID4KPiA+ID4g
PiBTb21lIGFyY2hzIChhcm02NCksIG1heSBzdG9yZSB0aGUgcmV0dXJuIGFkZHJlc3MgKGZyb20g
aXRzIGxpbmsgcmVnaXN0ZXIpCj4gPiA+ID4ganVzdCBiZWZvcmUgY2FsbGluZyBhIG5lc3RlZCBm
dW5jdGlvbi4gVGhlcmUncyBubyByZWFzb24gdG8gc2F2ZSB0aGUgbGluawo+ID4gPiA+IHJlZ2lz
dGVyIG9uIGxlYWYgZnVuY3Rpb25zLCBhcyBpdCB3b250IGJlIHVwZGF0ZWQuIFRoaXMgYnJlYWtz
IHRoZSBhbGdvcml0aG0KPiA+ID4gPiBvZiB0aGUgbWF4IHN0YWNrIHRyYWNlci4KPiA+ID4gPgo+
ID4gPiA+IEFkZCBhIG5ldyBkZWZpbmUgQVJDSF9SRVRfQUREUl9BRlRFUl9MT0NBTF9WQVJTIHRo
YXQgYW4gYXJjaGl0ZWN0dXJlIG1heSBzZXQgICAgCj4gPiA+IAo+ID4gPiBBUkNIX0ZUUkFDRV9T
SElGVF9TVEFDS19UUkFDRVIgaXMgdXNlZCBpbiB0aGUgY29kZS4gIAo+ID4gCj4gPiBBaCwgSSBk
aWQgYSBzL3gveS8gdG8gdGhlIGRpZmYgb2YgdGhlIHBhdGNoLCBidXQgbm90IHRoZSBjaGFuZ2Ug
bG9nLgo+ID4gVGhhbmtzIGZvciBwb2ludGluZyB0aGF0IG91dC4gSSBhbHNvIG5lZWQgdG8gdXBk
YXRlIHRoZSBjb21tZW50IGluIDIvMi4gIAo+IAo+IEFyZSB5b3UgZ29pbmcgdG8gcG9zdCBhbm90
aGVyIHZlcnNpb24gb2YgdGhpcyBvciBoYXZlIHlvdSBxdWV1ZWQgaXQgYWxyZWFkeT8KPiBKdXN0
IHdhbnQgdG8gbWFrZSBzdXJlIGl0IGRvZXNuJ3Qgc2xpcCB0aHJvdWdoIHRoZSBjcmFja3MuCj4g
CgpBaCwgaXQncyBpbiBteSBxdWV1ZS4gSSBzaG91bGQgcG9zdCBhIG5ldyB2ZXJzaW9uIDotLwoK
VGhhbmtzIGZvciB0aGUgcmVtaW5kZXIuCgotLSBTdGV2ZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
