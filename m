Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F5B1FBB1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 18:17:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WR6cyzCHsICZSLcO6q5XoU7qdeWfbUz+dutUnNZpoeg=; b=lhZRqa0M2cWS5h
	1Cx2AYPLsExSu7ORMOquXNUYTmzKOp/+FomJAts3vcLA2KQQ6EsgQqC6K3sFn5j8XpBSa5SGzHokp
	+esXQOEkb1Ct7OC9knVOIb5y1JX5gyvyJlcN+Y2irfXZi3NMHkDZx8dP1aDb5Bi7e1EKouzdEqfxW
	A0y0ak4dEA7O3W6HVy+nZMqdv821BZ6TWG6AwWIv4KNkjB1FUzIbaFFM0okJcs+YbiouBxxdU+u5l
	lRL4hO3PIc8w8Xly4T64bTlaTGWF910LtM/Pb02qyOsjqYaow9fZosE7RoS/OSW70DZj3unRnSP+e
	7CHF6qlUVPYM6AqXkgKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlEH2-0001KQ-A9; Tue, 16 Jun 2020 16:17:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlEGr-0001K5-Mv
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 16:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DBA41F1;
 Tue, 16 Jun 2020 09:17:07 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8EAC23F73C;
 Tue, 16 Jun 2020 09:17:06 -0700 (PDT)
Date: Tue, 16 Jun 2020 17:17:04 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64/sve: Eliminate data races on sve_default_vl
Message-ID: <20200616161704.GN25945@arm.com>
References: <1591808590-20210-1-git-send-email-Dave.Martin@arm.com>
 <1591808590-20210-3-git-send-email-Dave.Martin@arm.com>
 <20200616131808.GA1040@lca.pw>
 <20200616150451.GA1941@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616150451.GA1941@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_091709_795359_B74F8E39 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDQ6MDQ6NTFQTSArMDEwMCwgV2lsbCBEZWFjb24gd3Jv
dGU6Cj4gT24gVHVlLCBKdW4gMTYsIDIwMjAgYXQgMDk6MTg6MDhBTSAtMDQwMCwgUWlhbiBDYWkg
d3JvdGU6Cj4gPiBPbiBXZWQsIEp1biAxMCwgMjAyMCBhdCAwNjowMzoxMFBNICswMTAwLCBEYXZl
IE1hcnRpbiB3cm90ZToKPiA+ID4gc3ZlX2RlZmF1bHRfdmwgY2FuIGJlIG1vZGlmaWVkIHZpYSB0
aGUgL3Byb2Mvc3lzL2FiaS9zdmVfZGVmYXVsdF92bAo+ID4gPiBzeXNjdGwgY29uY3VycmVudGx5
IHdpdGggdXNlLCBhbmQgbW9kaWZpZWQgY29uY3VycmVudGx5IGJ5IG11bHRpcGxlCj4gPiA+IHRo
cmVhZHMuCj4gPiA+IAo+ID4gPiBBZGRpbmcgYSBsb2NrIGZvciB0aGlzIHNlZW1zIG92ZXJraWxs
LCBhbmQgSSBkb24ndCB3YW50IHRvIHRoaW5rIGFueQo+ID4gPiBtb3JlIHRoYW4gbmVjZXNzYXJ5
LCBzbyBqdXN0IGRlZmluZSB3cmFwcGVycyB1c2luZyBSRUFEX09OQ0UoKS8KPiA+ID4gV1JJVEVf
T05DRSgpLgo+ID4gPiAKPiA+ID4gVGhpcyB3aWxsIGF2b2lkIHRoZSBwb3NzaWJpbGl0eSBvZiB0
b3JuIGFjY2Vzc2VzIGFuZCByZXBlYXRlZCBsb2Fkcwo+ID4gPiBhbmQgc3RvcmVzLgo+ID4gPiAK
PiA+ID4gVGhlcmUncyBubyBldmlkZW5jZSB5ZXQgdGhhdCB0aGlzIGlzIGdvaW5nIHdyb25nIGlu
IHByYWN0aWNlOiB0aGlzCj4gPiA+IGlzIGp1c3QgaHlnaWVuZS4gIEZvciBnZW5lcmljIHN5c2N0
bCB1c2VycywgaXQgd291bGQgYmUgYmV0dGVyIHRvCj4gPiA+IGJ1aWxkIHRoaXMga2luZCBvZiB0
aGluZyBpbnRvIHRoZSBzeXNjdGwgY29tbW9uIGNvZGUgc29tZWhvdy4KPiA+ID4gCj4gPiA+IFJl
cG9ydGVkLWJ5OiBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnPgo+ID4gPiBTaWduZWQtb2Zm
LWJ5OiBEYXZlIE1hcnRpbiA8RGF2ZS5NYXJ0aW5AYXJtLmNvbT4KPiA+IAo+ID4gV2hpbGUgdGhp
cyBvcmlnaW5hbCBwYXRjaCBsb29rcyBjb3JyZWN0LCBsaW51eC1uZXh0IGhhcyB0aGlzLAo+ID4g
Cj4gPiBbd2lsbDogbW92ZSBzZXRfc3ZlX2RlZmF1bHRfdmwoKSBpbnNpZGUgI2lmZGVmIHRvIHNx
dWFzaCBhbGxub2NvbmZpZyB3YXJuaW5nXQo+ID4gCj4gPiAxZTU3MGY1MTJjYmQgKCJhcm02NC9z
dmU6IEVsaW1pbmF0ZSBkYXRhIHJhY2VzIG9uIHN2ZV9kZWZhdWx0X3ZsIikKPiA+IAo+ID4gd2hp
Y2ggY2F1c2VzIGFuIGVycm9yIHdpdGggQ09ORklHX0FSTTY0X1NWRT1uLAo+ID4gCj4gPiBUaGlz
IC5jb25maWcsCj4gPiBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vY2FpbGNhL2xp
bnV4LW1tL21hc3Rlci9hcm02NC5jb25maWcKPiA+IAo+ID4gYXJjaC9hcm02NC9rZXJuZWwvZnBz
aW1kLmM6IEluIGZ1bmN0aW9uIOKAmHN2ZV9wcm9jX2RvX2RlZmF1bHRfdmzigJk6Cj4gPiBhcmNo
L2FybTY0L2tlcm5lbC9mcHNpbWQuYzozNzU6MjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9u
IG9mCj4gPiBmdW5jdGlvbiDigJhzZXRfc3ZlX2RlZmF1bHRfdmzigJk7IGRpZCB5b3UgbWVhbiDi
gJhnZXRfc3ZlX2RlZmF1bHRfdmzigJk/Cj4gPiBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1k
ZWNsYXJhdGlvbl0KPiA+ICAgc2V0X3N2ZV9kZWZhdWx0X3ZsKGZpbmRfc3VwcG9ydGVkX3ZlY3Rv
cl9sZW5ndGgodmwpKTsKPiA+ICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4gPiAgIGdldF9zdmVfZGVm
YXVsdF92bAo+IAo+IFRoYW5rcywgSSdsbCB0YWtlIGEgbG9vay4KCkkgaGF2ZW4ndCBsb29rZWQg
aW4gZGV0YWlsIGF0IHRoaXM7IEkgZ3Vlc3MgdGhlIG5ldyBoZWxwZXJzIGp1c3QKbmVlZCB0byBi
ZSBtYW51YWxseSBwbGFjZWQgaW4gdGhlIHJpZ2h0ICNpZmRlZiBibG9jay4KCkNoZWVycwotLS1E
YXZlCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
