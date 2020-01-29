Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EBB14D39A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 00:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmhtnL/H46XeYaavVCCBQO54fQshjQ1VB5MZwOu+FP0=; b=QtKGs6+WgFJHiL
	yXwTv4tcek0SW1Z4InrNrfrXyzGBHzax3jKfkcuk8wSN+005JnKqGyPMy3SiWjNEL9jG2xtm8zlIE
	xMWXwiuMLjCa447wOBqPcQjiGBbBpbbKyll1haDhdtdEAJISSu6M4P1Pg0Ib0tP29w+G3LYMLlkJt
	9/ndhEhElYqSBBmgAqTum9htL4blyogqo2iF7Jmu8atjHbu7vjv27jhKCKQ55m5AzIPqLGvtnbsv1
	1frOW0Q5bW9j4C/KP/uuJ+va2viMU2EMyUAovvDx+BysFUDW4AKywVftruj0sz6Zi7wouS80lzLWA
	YLmEwLgfLU1pZeXyVQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwwkL-0002HN-NX; Wed, 29 Jan 2020 23:27:45 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwwkD-0002B9-RL
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 23:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5899mwuqENX6lCLwrkX+/AuwqmIviaBAWbid34IwXc0=; b=YEzfqnDmurAxrqvqRBTgtAWzg
 QCmCH4wzo4/pPD/622md4gyEDABLCj7X54aFEM48vK38dMRUDs+z5jQoLxjm9B6zQS58r08Qzp7Vm
 6iKuwW6/YgUSR4HTgXyVThTpM1T2ejQkZrMy+rPyfnnTZjKXZ+k1MOcTIsJOAVlPJqLhUjECvETa5
 qDHuK/m5ajntlS5NciokDKpgb8uSGLjLgMcXWeG4wb6o7WlPdlGTVWAx6tl/m1s4SeqLNctc+iFI9
 Pm4PyR01pSE7b6LfsYF1Yk66efPPJE4KDuvO2oXEtZNjG2UueszhGXK99Sw4Cf1FWER+9JEi7zg5z
 13sf+HWWw==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40926)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iwwha-0007v7-O8; Wed, 29 Jan 2020 23:24:57 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iwwhN-0003n9-7a; Wed, 29 Jan 2020 23:24:41 +0000
Date: Wed, 29 Jan 2020 23:24:41 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Wei Yang <richardw.yang@linux.intel.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200129232441.GI25745@shell.armlinux.org.uk>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
 <20200129094738.GE25745@shell.armlinux.org.uk>
 <20200129215745.GA20736@richard>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129215745.GA20736@richard>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_152737_888184_D499A0DA 
X-CRM114-Status: GOOD (  25.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 akpm@linux-foundation.org, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, Dmitry Osipenko <digetx@gmail.com>,
 dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBKYW4gMzAsIDIwMjAgYXQgMDU6NTc6NDVBTSArMDgwMCwgV2VpIFlhbmcgd3JvdGU6
Cj4gT24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMDk6NDc6MzhBTSArMDAwMCwgUnVzc2VsbCBLaW5n
IC0gQVJNIExpbnV4IGFkbWluIHdyb3RlOgo+ID5PbiBTdW4sIEphbiAyNiwgMjAyMCBhdCAwNTo0
Nzo1N1BNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gPj4gMTguMDEuMjAyMCAwMjoy
MiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPiA+PiA+IFVzZSB0aGUgZ2VuZXJhbCBoZWxwZXIgaW5z
dGVhZCBvZiBkbyBpdCBieSBoYW5kLgo+ID4+ID4gCj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBXZWkg
WWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5pbnRlbC5jb20+Cj4gPj4gPiAtLS0KPiA+PiA+ICBt
bS9tcmVtYXAuYyB8IDcgKystLS0tLQo+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4gPj4gPiAKPiA+PiA+IGRpZmYgLS1naXQgYS9tbS9tcmVt
YXAuYyBiL21tL21yZW1hcC5jCj4gPj4gPiBpbmRleCBjMmFmOGJhNGJhNDMuLmEyNTg5MTRmM2Vl
MSAxMDA2NDQKPiA+PiA+IC0tLSBhL21tL21yZW1hcC5jCj4gPj4gPiArKysgYi9tbS9tcmVtYXAu
Ywo+ID4+ID4gQEAgLTI1MywxMSArMjUzLDggQEAgdW5zaWduZWQgbG9uZyBtb3ZlX3BhZ2VfdGFi
bGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ID4+ID4gIAo+ID4+ID4gIAlmb3IgKDsg
b2xkX2FkZHIgPCBvbGRfZW5kOyBvbGRfYWRkciArPSBleHRlbnQsIG5ld19hZGRyICs9IGV4dGVu
dCkgewo+ID4+ID4gIAkJY29uZF9yZXNjaGVkKCk7Cj4gPj4gPiAtCQluZXh0ID0gKG9sZF9hZGRy
ICsgUE1EX1NJWkUpICYgUE1EX01BU0s7Cj4gPj4gPiAtCQkvKiBldmVuIGlmIG5leHQgb3ZlcmZs
b3dlZCwgZXh0ZW50IGJlbG93IHdpbGwgYmUgb2sgKi8KPiA+PiA+ICsJCW5leHQgPSBwbWRfYWRk
cl9lbmQob2xkX2FkZHIsIG9sZF9lbmQpOwo+ID4+ID4gIAkJZXh0ZW50ID0gbmV4dCAtIG9sZF9h
ZGRyOwo+ID4+ID4gLQkJaWYgKGV4dGVudCA+IG9sZF9lbmQgLSBvbGRfYWRkcikKPiA+PiA+IC0J
CQlleHRlbnQgPSBvbGRfZW5kIC0gb2xkX2FkZHI7Cj4gPj4gPiAgCQlvbGRfcG1kID0gZ2V0X29s
ZF9wbWQodm1hLT52bV9tbSwgb2xkX2FkZHIpOwo+ID4+ID4gIAkJaWYgKCFvbGRfcG1kKQo+ID4+
ID4gIAkJCWNvbnRpbnVlOwo+ID4+ID4gQEAgLTMwMSw3ICsyOTgsNyBAQCB1bnNpZ25lZCBsb25n
IG1vdmVfcGFnZV90YWJsZXMoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCj4gPj4gPiAgCj4g
Pj4gPiAgCQlpZiAocHRlX2FsbG9jKG5ld192bWEtPnZtX21tLCBuZXdfcG1kKSkKPiA+PiA+ICAJ
CQlicmVhazsKPiA+PiA+IC0JCW5leHQgPSAobmV3X2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFT
SzsKPiA+PiA+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQobmV3X2FkZHIsIG5ld19hZGRyICsgbGVu
KTsKPiA+PiA+ICAJCWlmIChleHRlbnQgPiBuZXh0IC0gbmV3X2FkZHIpCj4gPj4gPiAgCQkJZXh0
ZW50ID0gbmV4dCAtIG5ld19hZGRyOwo+ID4+ID4gIAkJbW92ZV9wdGVzKHZtYSwgb2xkX3BtZCwg
b2xkX2FkZHIsIG9sZF9hZGRyICsgZXh0ZW50LCBuZXdfdm1hLAo+ID4+ID4gCj4gPj4gCj4gPj4g
SGVsbG8gV2VpLAo+ID4+IAo+ID4+IFN0YXJ0aW5nIHdpdGggbmV4dC0yMDIwMDEyMiwgSSdtIHNl
ZWluZyB0aGUgZm9sbG93aW5nIGluIEtNU0cgb24gTlZJRElBCj4gPj4gVGVncmEgKEFSTTMyKToK
PiA+PiAKPiA+PiAgIEJVRzogQmFkIHJzcy1jb3VudGVyIHN0YXRlIG1tOihwdHJ2YWwpIHR5cGU6
TU1fQU5PTlBBR0VTIHZhbDoxOTAKPiA+PiAKPiA+PiBhbmQgZXZlbnR1YWxseSBrZXJuZWwgaGFu
Z3MuCj4gPj4gCj4gPj4gR2l0J3MgYmlzZWN0aW9uIHBvaW50cyB0byB0aGlzIHBhdGNoIGFuZCBy
ZXZlcnRpbmcgaXQgaGVscHMuIFBsZWFzZSBmaXgsCj4gPj4gdGhhbmtzIGluIGFkdmFuY2UuCj4g
Pgo+ID5UaGUgYWJvdmUgaXMgZGVmaW5pdGVseSB3cm9uZyAtIHBYWF9hZGRyX2VuZCgpIGFyZSBk
ZXNpZ25lZCB0byBiZSB1c2VkCj4gPndpdGggYW4gYWRkcmVzcyBpbmRleCB3aXRoaW4gdGhlIHBY
WCB0YWJsZSB0YWJsZSBhbmQgdGhlIGFkZHJlc3MgaW5kZXgKPiA+b2YgZWl0aGVyIHRoZSBsYXN0
IGVudHJ5IGluIHRoZSBzYW1lIHBYWCB0YWJsZSBvciB0aGUgYmVnaW5uaW5nIG9mIHRoZQo+ID5f
bmV4dF8gcFhYIHRhYmxlLiAgQXJiaXRhcnkgZW5kIGFkZHJlc3MgaW5kaWNpZXMgYXJlIG5vdCBh
bGxvd2VkLgo+ID4KPiAKPiAjZGVmaW5lIHBtZF9hZGRyX2VuZChhZGRyLCBlbmQpCQkJCQkJXAo+
ICh7CXVuc2lnbmVkIGxvbmcgX19ib3VuZGFyeSA9ICgoYWRkcikgKyBQTURfU0laRSkgJiBQTURf
TUFTSzsJXAo+IAkoX19ib3VuZGFyeSAtIDEgPCAoZW5kKSAtIDEpPyBfX2JvdW5kYXJ5OiAoZW5k
KTsJCVwKPiB9KQo+IAo+IElmIG15IHVuZGVyc3RhbmRpbmcgaXMgY29ycmVjdCwgdGhlIGRlZmlu
aXRpb24gaGVyZSBhbGlnbiB0aGUgYWRkciB0byBuZXh0IFBNRAo+IGJvdW5kYXJ5IG9yIGVuZC4K
PiAKPiBJIGRvbid0IHNlZSB0aGUgcG9zc2liaWxpdHkgdG8gYWNyb3NzIGFub3RoZXIgUE1ELiBE
byBJIG1pc3Mgc29tZXRoaW5nPwoKTG9vayBhdCB0aGUgZGVmaW5pdGlvbiBvZiBwKl9hZGRyX2Vu
ZCgpIHRoYXQgYXJlIHVzZWQgd2hlbiBwYWdlIHRhYmxlcwphcmUgcm9sbGVkIHVwLgoKPiA+V2hl
biBwYWdlIHRhYmxlcyBhcmUgInJvbGxlZCB1cCIgd2hlbiBsZXZlbHMgZG9uJ3QgZXhpc3QsIGl0
IGlzIGNvbW1vbgo+ID5wcmFjdGljZSBmb3IgdGhlc2UgbWFjcm9zIHRvIGp1c3QgcmV0dXJuIHRo
ZWlyIGVuZCBhZGRyZXNzIGluZGV4Lgo+ID5IZW5jZSwgaWYgdGhleSBhcmUgdXNlZCB3aXRoIGFy
Yml0YXJ5IGVuZCBhZGRyZXNzIGluZGljaWVzLCB0aGVuIHRoZQo+ID5pdGVyYXRpb24gd2lsbCBm
YWlsLgo+ID4KPiA+VGhlIG9ubHkgd2F5IHRvIGRvIHRoaXMgaXM6Cj4gPgo+ID4JbmV4dCA9IHBt
ZF9hZGRyX2VuZChvbGRfYWRkciwKPiA+CQkJcHVkX2FkZHJfZW5kKG9sZF9hZGRyLAo+ID4JCQkJ
cDRkX2FkZHJfZW5kKG9sZF9hZGRyLAo+ID4JCQkJCXBnZF9hZGRyX2VuZChvbGRfYWRkciwgb2xk
X2VuZCkpKSk7Cj4gPgo+ID53aGljaCBnaXZlcyBwbWRfYWRkcl9lbmQoKSAoYW5kIGVhY2ggb2Yg
dGhlIGludGVybWVkaWF0ZSBwWFhfYWRkcl9lbmQoKSkKPiA+dGhlIGNvcnJlY3QgZW5kIGFyZ3Vt
ZW50LiAgSG93ZXZlciwgdGhhdCdzIGEgbW9yZSBjb21wbGV4IGFuZCB2ZXJib3NlLAo+ID5hbmQg
bGlrZWx5IGxlc3MgZWZmaWNpZW50IHRoYW4gdGhlIGN1cnJlbnQgY29kZS4KPiA+Cj4gPkknZCBz
dWdnZXN0IHRoYXQgdGhlcmUncyBub3RoaW5nIHRvICJmaXgiIGluIHRoZSB2NS41IGNvZGUgd3J0
IHRoaXMsCj4gPmFuZCB0cnlpbmcgdG8gImNsZWFuIGl0IHVwIiB3aWxsIGp1c3QgcmVzdWx0IGlu
IGxlc3MgZWZmaWNpZW50IG9yCj4gPmJyb2tlbiBjb2RlLgo+ID4KPiA+LS0gCj4gPlJNSydzIFBh
dGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVz
Lwo+ID5GVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5lIGluIHN1YnVyYmlhOiBzeW5jIGF0
IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cAo+ID5BY2NvcmRpbmcgdG8gc3BlZWR0ZXN0Lm5ldDog
MTEuOU1icHMgZG93biA1MDBrYnBzIHVwCj4gCj4gLS0gCj4gV2VpIFlhbmcKPiBIZWxwIHlvdSwg
SGVscCBtZQo+IAoKLS0gClJNSydzIFBhdGNoIHN5c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgu
b3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRDIGJyb2FkYmFuZCBmb3IgMC44bWlsZSBsaW5l
IGluIHN1YnVyYmlhOiBzeW5jIGF0IDEyLjFNYnBzIGRvd24gNjIya2JwcyB1cApBY2NvcmRpbmcg
dG8gc3BlZWR0ZXN0Lm5ldDogMTEuOU1icHMgZG93biA1MDBrYnBzIHVwCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
