Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C8B19F7A9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 16:10:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Srmfoth22v42HSRez51SC4NSQkUBtAY+emtfVa5r1Mg=; b=nZD963XrBuWVmw
	77Y8s4ZUyOG//mBc3dnDShFFta8YVDh6g078heUiU+kKk9Ncn+1YN1nqI+b7CWe5OXD6ePe8XzfPC
	6KTCSZZDjYC5t+sxsUbJSPRHscHj8VZ5p8geBS3evO8Q/BEzco8s9Zyc88J+fsjo6xiz/PObw14zG
	h7AtAWV7Rk878XD6fyCWB7aKltNmvlaWvX2BiOY6whgXwtjGWrY7+rz2k8FaWg5EwB04z8OUcMfMg
	A+dFLd+gbMo+XbWOAM/mF4QMuoF3W1n8ZbTNlcvK4jhWlm0cyGjC36J+FzTE0hoDcEv8RQ1CORRN6
	xeOG3b/I7WfYZ9ETlmIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLSSO-0004Qu-AS; Mon, 06 Apr 2020 14:10:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLSSI-0004QZ-Ni
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 14:10:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E12912395B;
 Mon,  6 Apr 2020 14:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586182225;
 bh=OgOGUCitRRP/T8mKYZLXW0xweJNWsGNMLQglNR9Ce8c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CON5JSBs/tPWIZV3Nd9bYqXiekdGMRmbI5kIIE99ckLSpocYPhdy/06x90OACGYdO
 zPiEJLs8YCmx4ZHTayBxPyVjceHWp/QeglX+Oudhf97+w8INuAN8RTgdRClz6zIYBO
 wctIMM7IHW30WaN9QJtXvQiHGcK1LNpfV2locpwg=
Date: Mon, 6 Apr 2020 15:10:20 +0100
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: Why is text_mutex used in jump_label_transform for x86_64
Message-ID: <20200406141020.GB3178@willie-the-truck>
References: <f7f686f2-4f28-1763-dd19-43eff6a5a8f2@huawei.com>
 <20200320102709.GC20696@hirez.programming.kicks-ass.net>
 <28edc3d5-83a3-43cb-3e64-7d0525d430f3@huawei.com>
 <20200406091551.GG20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406091551.GG20730@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_071026_827075_9142E09C 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jakub.kicinski@netronome.com, "chengjian \(D\)" <cj.chengjian@huawei.com>,
 "Xiexiuqi \(Xie XiuQi\)" <xiexiuqi@huawei.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 bobo.shaobowang@huawei.com, Li Bin <huawei.libin@huawei.com>,
 andrew.murray@arm.com, bristot@redhat.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBBcHIgMDYsIDIwMjAgYXQgMTE6MTU6NTFBTSArMDIwMCwgUGV0ZXIgWmlqbHN0cmEg
d3JvdGU6Cj4gT24gTW9uLCBBcHIgMDYsIDIwMjAgYXQgMDQ6Mzk6MTFQTSArMDgwMCwgY2hlbmdq
aWFuIChEKSB3cm90ZToKPiA+IAo+ID4gT24gMjAyMC8zLzIwIDE4OjI3LCBQZXRlciBaaWpsc3Ry
YSB3cm90ZToKPiA+ID4gSXQgZGVwZW5kcyBvbiB0aGUgYXJjaGl0ZWN0dXJlIGRldGFpbHMgb2Yg
aG93IHNlbGYtbW9kaWZ5aW5nIGNvZGUgd29ya3MuCj4gPiA+IEluIHBhcnRpY3VsYXIsIHg4NiBp
cyBhIHZhcmlhYmxlIGluc3RydWN0aW9uIGxlbmd0aCBhcmNoaXRlY3R1cmUgYW5kCj4gPiA+IG5l
ZWRzIGV4dHJlbWUgY2FyZSAtLSBpdCdzIGltcGxlbWVudGF0aW9uIHJlcXVpcmVzIHRoZXJlIG9u
bHkgYmUgYQo+ID4gPiBzaW5nbGUgdGV4dCBtb2RpZmllciBhdCBhbnkgb25lIHRpbWUsIGhlbmNl
IHRoZSB1c2Ugb2YgdGV4dF9tdXRleC4KPiA+ID4gCj4gPiA+IEFSTTY0IE9UT0ggaXMsIGxpa2Ug
bW9zdCBSSVNDIGJhc2VkIGFyY2hpdGVjdHVyZXMsIGEgZml4ZWQgd2lkdGgKPiA+ID4gaW5zdHJ1
Y3Rpb24gYXJjaGl0ZWN0dXJlLiBBbmQgaW4gcGFydGljdWxhciBpdCBjYW4gcmUtd3JpdGUgY2Vy
dGFpbgo+ID4gPiAoYnJhbmNoKSBpbnN0cnVjdGlvbnMgd2l0aCBpbXB1bml0eSAoc2VlIHRoZWly
Cj4gPiA+IGFhcmNoNjRfaW5zbl9wYXRjaF90ZXh0X25vc3luYygpKS4gV2hpY2ggaXMgd2h5IHRo
ZXkgZG9uJ3QgbmVlZAo+ID4gPiBhZGRpdGlvbmFsIHNlcmlhbGl6YXRpb24uCj4gPiAKPiA+IEhp
LCBQZXRlcgo+ID4gCj4gPiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIHJlcGx5Lgo+ID4g
Cj4gPiBYODYgaXMgYSB2YXJpYWJsZS1sZW5ndGggaW5zdHJ1Y3Rpb24sIG9ubHkgb25lIGJ5dGUg
bW9kaWZpY2F0aW9uIG9mIHRoZQo+ID4gaW5zdHJ1Y3Rpb24KPiA+IGNhbiBiZSByZWdhcmRlZCBh
cyBhdG9taWMuIHNvIHdlIG11c3QgYmUgdmVyeSBjYXJlZnVsIHdoZW4gbW9kaWZ5aW5nCj4gPiBp
bnN0cnVjdGlvbnMKPiA+IGNvbmN1cnJlbnRseS4KPiAKPiBDbG9zZSBlbm91Z2guCj4gCj4gPiBG
b3Igb3RoZXIgYXJjaGl0ZWN0dXJlcyBzdWNoIGFzIEFSTTY0LCB0aGUgbW9kaWZpY2F0aW9uIG9m
IHNvbWUgaW5zdHJ1Y3Rpb25zCj4gPiBjYW4gYmUKPiA+IGNvbnNpZGVyZWQgYXRvbWljLCAoRWcu
IG5vcCAtPiBqbXAvYikuIFRoZSBzZXQgb2YgaW5zdHJ1Y3Rpb25zIHRoYXQgY2FuIGJlCj4gPiBl
eGVjdXRlZAo+ID4gYnkgb25lIHRocmVhZCBvZiBleGVjdXRpb24gYXMgdGhleSBhcmUgYmVpbmcg
bW9kaWZpZWQgYnkgYW5vdGhlciB0aHJlYWQgb2YKPiA+IGV4ZWN1dGlvbgo+ID4gd2l0aG91dCBy
ZXF1aXJpbmcgZXhwbGljaXQgc3luY2hyb25pemF0aW9uLgo+ID4gCj4gPiBJbiBBUk02NCBBcmNo
aXRlY3R1cmUgUmVmZXJlbmNlIE1hbnVhbCwgSSBmaW5kIHRoYXQ6Cj4gPiDCoMKgwqAgQ29uY3Vy
cmVudCBtb2RpZmljYXRpb24gYW5kIGV4ZWN1dGlvbiBvZiBpbnN0cnVjdGlvbnMgY2FuIGxlYWQg
dG8gdGhlCj4gPiByZXN1bHRpbmcgaW5zdHJ1Y3Rpb24gcGVyZm9ybWluZyBhbnkgYmVoYXZpb3IK
PiA+IMKgwqDCoCB0aGF0IGNhbiBiZSBhY2hpZXZlZCBieSBleGVjdXRpbmcgYW55IHNlcXVlbmNl
IG9mIGluc3RydWN0aW9ucyB0aGF0IGNhbgo+ID4gYmUgZXhlY3V0ZWQgZnJvbSB0aGUgc2FtZSBF
eGNlcHRpb24gbGV2ZWwsCj4gPiDCoMKgwqAgZXhjZXB0IHdoZXJlIGVhY2ggb2YgdGhlIGluc3Ry
dWN0aW9uIGJlZm9yZSBtb2RpZmljYXRpb24gYW5kIHRoZQo+ID4gaW5zdHJ1Y3Rpb24gYWZ0ZXIg
bW9kaWZpY2F0aW9uIGlzIG9uZSBvZiBhIEIsIEJMLCBCUkssCj4gPiDCoMKgwqAgSFZDLCBJU0Is
IE5PUCwgU01DLCBvciBTVkMgaW5zdHJ1Y3Rpb24uCj4gPiDCoMKgwqAgRm9yIHRoZSBCLCBCTCwg
QlJLLCBIVkMsIElTQiwgTk9QLCBTTUMsIGFuZCBTVkMgaW5zdHJ1Y3Rpb25zIHRoZQo+ID4gYXJj
aGl0ZWN0dXJlIGd1YXJhbnRlZXMgdGhhdCwgYWZ0ZXIgbW9kaWZpY2F0aW9uIG9mIHRoZQo+ID4g
wqDCoMKgIGluc3RydWN0aW9uLCBiZWhhdmlvciBpcyBjb25zaXN0ZW50IHdpdGggZXhlY3V0aW9u
IG9mIGVpdGhlcjoKPiA+IMKgwqDCoCDigKIgVGhlIGluc3RydWN0aW9uIG9yaWdpbmFsbHkgZmV0
Y2hlZC4KPiA+IMKgwqDCoCDigKIgQSBmZXRjaCBvZiB0aGUgbW9kaWZpZWQgaW5zdHJ1Y3Rpb24K
PiA+IAo+ID4gU28gd2UgY2FuIHNhZmVseSBtb2RpZnkganVtcF9sYWJlbCBmb3IgQVJNNjQoZnJv
bSBOT1AgdG8gYiBvciBmb3JtIGIgdG8KPiA+IE5PUCkuCj4gPiAKPiA+IElzIG15IHVuZGVyc3Rh
bmRpbmcgY29ycmVjdD8KPiAKPiBJIHRoaW5rIHNvOyBidXQgSSdtIHJlYWxseSBub3QgbXVjaCBv
ZiBhbiBBUk02NCBwZXJzb24uIEZXSVcgSSB0aGluayBJCj4gcmVtZW1iZXIgV2lsbCBzYXlpbmcg
dGhlIHNhbWUgaXMgdHJ1ZSBvZiBBUk0gKDMyYml0KSBhbmQgdGhleSBjb3VsZAo+IGltcGxlbWVu
dCB0aGUgc2FtZSBvcHRpbWl6YXRpb24sIGJ1dCBzbyBmYXIgbm9ib2R5IGhhcyBib3RoZXJlZCBk
b2luZwo+IHNvLiBCdXQgcGxlYXNlLCBhc2sgYW4gQVJNNjQgbWFpbnRhaW5lciBhbmQgZG9uJ3Qg
dGFrZSBteSB3b3JkIGZvciB0aGlzLgoKT24gMzItYml0IHRoZXJlIGFyZSBjb21wbGljYXRpb25z
IHdpdGggVGh1bWItMiBpbnN0cnVjdGlvbnMgd2hlcmUgeW91IGNhbgpoYXZlIGEgbWl4dHVyZSBv
ZiAxNi1iaXQgYW5kIDMyLWJpdCBlbmNvZGluZ3MsIHNvIHlvdSBoYXZlIHRvIGJlIHByZXR0eQpj
YXJlZnVsIHRoZXJlLgoKRm9yIGFybTY0LCB3ZSBoYXZlIGFhcmNoNjRfaW5zbl9wYXRjaF90ZXh0
X25vc3luYygpIHdoaWNoIHdlIHVzZSB0byB0b2dnbGUKanVtcCBsYWJlbHMuCgpXaWxsCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
