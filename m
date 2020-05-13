Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E11D167E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:53:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6FsT3Xv3fh2ls35QX268wby/9BXcxTiPJGnwIE5kMJc=; b=F56N+sGvYWbuxS
	eyB1CwXlbSXVef0DOUM26LSYT2vgB+TNbUBx52ifE0T6EIEuCWLtMDpEa1PTbRn2FbL5mCAmC/167
	/C+Y3FZTitMZi0vAruDJlidPQ9dMmlhRH0IYDUMbSTu3HavHYK5mTd4mb5w5kvO+DkRKMvJ4+T+Ea
	AFLlhWu8zMZA5FwlyaFZO8To1EsuEce5wEBl/kc2tLgzxYqPZoekd2glpOgpAjON63LsFKht0dYCF
	ZIfLJ8ND5EzBzk0EfME0oQGFBol3/CtdC0Bc0L10dC86fXDn43qp59A0ddKeZhqil6w1IW0bUgwYD
	UBIr1WPNF2nKyBHBp4VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrpL-0000Dn-PN; Wed, 13 May 2020 13:53:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrp9-0000Ct-PM
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:53:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 029931FB;
 Wed, 13 May 2020 06:53:27 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1CF543F71E;
 Wed, 13 May 2020 06:53:26 -0700 (PDT)
Date: Wed, 13 May 2020 14:53:24 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH 10/14] prctl.2: Add PR_SPEC_INDIRECT_BRANCH for
 SPECULATION_CTRL prctls
Message-ID: <20200513135323.GO21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-11-git-send-email-Dave.Martin@arm.com>
 <bd548916-11c8-a53f-67b5-876c79088258@gmail.com>
 <20200513114915.GL21779@arm.com>
 <604879eb-1c7e-d08b-a6b8-165e4259b60c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <604879eb-1c7e-d08b-a6b8-165e4259b60c@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_065327_914930_F5CD452B 
X-CRM114-Status: GOOD (  25.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Tim Chen <tim.c.chen@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgMDI6MDY6MzhQTSArMDIwMCwgTWljaGFlbCBLZXJyaXNr
IChtYW4tcGFnZXMpIHdyb3RlOgo+IE9uIDUvMTMvMjAgMTo0OSBQTSwgRGF2ZSBNYXJ0aW4gd3Jv
dGU6Cj4gPiBPbiBXZWQsIE1heSAxMywgMjAyMCBhdCAwMToyMToxMlBNICswMjAwLCBNaWNoYWVs
IEtlcnJpc2sgKG1hbi1wYWdlcykgd3JvdGU6Cj4gPj4gSGVsbG8gRGF2ZSwKPiA+Pgo+ID4+IE9u
IDUvMTIvMjAgNjozNiBQTSwgRGF2ZSBNYXJ0aW4gd3JvdGU6Cj4gPj4+IEFkZCB0aGUgUFJfU1BF
Q19JTkRJUkVDVF9CUkFOQ0ggIm1pc2ZlYXR1cmUiIGFkZGVkIGluIExpbnV4IDQuMjAKPiA+Pj4g
Zm9yIFBSX1NFVF9TUEVDVUxBVElPTl9DVFJMIGFuZCBQUl9HRVRfU1BFQ1VMQVRJT05fQ1RSTC4K
PiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogRGF2ZSBNYXJ0aW4gPERhdmUuTWFydGluQGFybS5j
b20+Cj4gPj4+IENjOiBUaW0gQ2hlbiA8dGltLmMuY2hlbkBsaW51eC5pbnRlbC5jb20+Cj4gPj4+
IENjOiBUaG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT4KPiA+Pgo+ID4+IFRoYW5r
cy4gUGF0Y2ggYXBwbGllZCwgYnV0IG5vdCB5ZXQgcHVzaGVkIHdoaWxlIEkgd2FpdCB0byBzZWUg
aWYgYW55Cj4gPj4gUmV2aWV3L0FjayBhcnJpdmVzLgo+ID4+Cj4gPj4gQWxzbywgY291bGQgeW91
IHBsZWFzZSBjaGVjayB0aGUgdHdlYWtzIEkgbm90ZSBiZWxvdy4KPiA+Pgo+ID4+PiAtLS0KPiA+
Pj4gIG1hbjIvcHJjdGwuMiB8IDI0ICsrKysrKysrKysrKysrKysrKy0tLS0tLQo+ID4+PiAgMSBm
aWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pCj4gPj4+Cj4gPj4+
IGRpZmYgLS1naXQgYS9tYW4yL3ByY3RsLjIgYi9tYW4yL3ByY3RsLjIKPiA+Pj4gaW5kZXggZThl
YWY5NS4uNjY0MTdjZiAxMDA2NDQKPiA+Pj4gLS0tIGEvbWFuMi9wcmN0bC4yCj4gPj4+ICsrKyBi
L21hbjIvcHJjdGwuMgo+ID4+PiBAQCAtMTIxMywxMSArMTIxMywyMCBAQCBhcmd1bWVudHMgbXVz
dCBiZSBzcGVjaWZpZWQgYXMgMDsgb3RoZXJ3aXNlIHRoZSBjYWxsIGZhaWxzIHdpdGggdGhlIGVy
cm9yCj4gPj4+ICAuXCIgY29tbWl0IDM1NmU0YmZmZjJjNTQ4OWUwMTZmZGI5MjVhZGJmMTJhMWUz
OTUwZWUKPiA+Pj4gIFNldHMgdGhlIHN0YXRlIG9mIHRoZSBzcGVjdWxhdGlvbiBtaXNmZWF0dXJl
IHNwZWNpZmllZCBpbgo+ID4+PiAgLklSIGFyZzIgLgo+ID4+PiAtQ3VycmVudGx5LCB0aGUgb25s
eSBwZXJtaXR0ZWQgdmFsdWUgZm9yIHRoaXMgYXJndW1lbnQgaXMKPiA+Pj4gK0N1cnJlbnRseSwg
dGhpcyBhcmd1bWVudCBtdXN0IGJlIG9uZSBvZjoKPiA+Pj4gKy5SUwo+ID4+PiArLlRQCj4gPj4+
ICAuQiBQUl9TUEVDX1NUT1JFX0JZUEFTUwo+ID4+PiAtKG90aGVyd2lzZSB0aGUgY2FsbCBmYWls
cyB3aXRoIHRoZSBlcnJvcgo+ID4+PiArc3BlY3VsYXRpdmUgc3RvcmUgYnlwYXNzIGNvbnRyb2ws
IG9yCj4gPj4KPiA+PiBzL3NwZWN1bGF0aXZlL2VuYWJsZSBzcGVjdWxhdGl2ZS8KPiA+Pgo+ID4+
PiArLlwiIGNvbW1pdCA5MTM3YmIyN2U2MGU1NTRkYWI2OTRlYWZhNGNjYTI0MWZhM2E2OTRmCj4g
Pj4+ICsuVFAKPiA+Pj4gKy5CUiBQUl9TUEVDX0lORElSRUNUX0JSQU5DSCAiIChzaW5jZSBMaW51
eCA0LjIwKSIKPiA+Pj4gK2luZGlyZWN0IGJyYW5jaCBzcGVjdWxhdGlvbiBjb250cm9sLgo+ID4+
Cj4gPj4gcy9pbmRpcmVjdC9lbmFibGUgaW5kaXJlY3QvCj4gPiAKPiA+IFRoYXQgZG9lc24ndCBz
ZWVtIHF1aXRlIHJpZ2h0Lgo+IAo+IE15IGdvb2YsIG5vdCBsb29raW5nIGF0IHRoZSBiaWdnZXIg
Y29udGV4dCBvZiB0aGUgcGF0Y2guCj4gCj4gPiAKPiA+IGFyZzIganVzdCBpZGVudGlmaWVzIHdo
YXQgYmVoYXZpb3VyIHRvIGNvbmZpZ3VyZS4KPiA+IEl0J3MgYXJnMyB0aGF0IHNheXMgd2hldGhl
ciB0byBkaXNhYmxlIC8gZW5hYmxlIGl0IG9yIHdoYXRldmVyLgo+ID4gCj4gPiAKPiA+IFdoaWxl
IGVkaXRpbmcgdGhpcyBJIGRpZCB3b25kZXIgd2hldGhlciB0aGUgImNvbnRyb2wiIHdhcyBoZWxw
ZnVsLgo+ID4gTWF5YmUganVzdCBkcm9wcGluZyB0aGF0IHdvcmQgZnJvbSB0aGVzZSBlbnRyaWVz
IHdvdWxkIGhlbHAuCj4gCj4gT2theSBJIHRyaWVkIHRvIGZpeCB0aGluZ3MsIGFuZCBtYWRlIGFs
c28gc29tZSBvdGhlciBlZGl0cy4KPiBIb3cgZG9lcyB0aGUgZm9sbG93aW5nIGxvb2sgdG8geW91
Pwo+IAo+ICAgICAgIFBSX1NFVF9TUEVDVUxBVElPTl9DVFJMIChzaW5jZSBMaW51eCA0LjE3KQo+
ICAgICAgICAgICAgICAgU2V0cyB0aGUgc3RhdGUgb2YgdGhlIHNwZWN1bGF0aW9uIG1pc2ZlYXR1
cmUgIHNwZWNpZmllZCAgaW4KPiAgICAgICAgICAgICAgIGFyZzIuICAgVGhlICBzcGVjdWxhdGlv
bi1taXNmZWF0dXJlIHNldHRpbmdzIGFyZSBwZXItdGhyZWFkCj4gICAgICAgICAgICAgICBhdHRy
aWJ1dGVzLgo+IAo+ICAgICAgICAgICAgICAgQ3VycmVudGx5LCBhcmcyIG11c3QgYmUgb25lIG9m
Ogo+IAo+ICAgICAgICAgICAgICAgUFJfU1BFQ19TVE9SRV9CWVBBU1MKPiAgICAgICAgICAgICAg
ICAgICAgICBTZXQgdGhlIHN0YXRlIG9mIHRoZSBzcGVjdWxhdGl2ZSBzdG9yZSAgYnlwYXNzICBt
aXPigJAKPiAgICAgICAgICAgICAgICAgICAgICBmZWF0dXJlLgo+IAo+ICAgICAgICAgICAgICAg
UFJfU1BFQ19JTkRJUkVDVF9CUkFOQ0ggKHNpbmNlIExpbnV4IDQuMjApCj4gICAgICAgICAgICAg
ICAgICAgICAgU2V0ICB0aGUgIHN0YXRlICBvZiAgdGhlIGluZGlyZWN0IGJyYW5jaCBzcGVjdWxh
dGlvbgo+ICAgICAgICAgICAgICAgICAgICAgIG1pc2ZlYXR1cmUuCj4gCj4gICAgICAgICAgICAg
ICBJZiBhcmcyIGRvZXMgbm90IGhhdmUgb25lIG9mIHRoZSAgYWJvdmUgIHZhbHVlcywgIHRoZW4g
IHRoZQo+ICAgICAgICAgICAgICAgY2FsbCBmYWlscyB3aXRoIHRoZSBlcnJvciBFTk9ERVYuCj4g
Cj4gICAgICAgICAgICAgICBUaGUgIGFyZzMgIGFyZ3VtZW50ICBpcyAgdXNlZCB0byBoYW5kIGlu
IHRoZSBjb250cm9sIHZhbHVlLAo+ICAgICAgICAgICAgICAgd2hpY2ggaXMgb25lIG9mIHRoZSBm
b2xsb3dpbmc6Cj4gCj4gICAgICAgICAgICAgICAuLi4KCkxvb2sgT0sgdG8gbWUuCgpJIHRob3Vn
aHQgaXQgc291bmRlZCBvZGQgdG8gInNldCB0aGUgc3RhdGUiIG9mIGEgc2lsaWNvbiBidWcsIGJ1
dCB0aGF0CndhcyBhIGJvZ3VzIGNvbmNlcm4uCgpUaGlzIGlzbid0IGFib3V0IGJ1Z3MsIGJ1dCBp
bnRlbnRpb25hbCwgb2Z0ZW4gY29uZmlndXJhYmxlIGJlaGF2aW91cnMgaW4KdGhlIHNpbGljb24g
dGhhdCBoYXBwZW4gdG8gaGF2ZSBoYXJtZnVsIHNpZGUgZWZmZWN0cy4KCkl0IGNvdWxkIGJlIG1v
cmUgdGVyc2UgdG8gc2F5ICJjb25maWd1cmUiIGluc3RlYWQgb2YgInNldCB0aGUgc3RhdGUgb2Yi
LApidXQgZWl0aGVyIHdheSB3b3JrcyBmb3IgbWUuCgpDaGVlcnMKLS0tRGF2ZQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
