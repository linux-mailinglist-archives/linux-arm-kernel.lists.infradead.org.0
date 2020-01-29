Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 447F914C857
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 10:48:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QWHuxQ6eDz7PRFXFBpQurP336CMFRgCs62+BfShNCFw=; b=d/elPFDovLcUP6
	AW5V0SCVSd0Vw9DRu/rhQweb9DFtrFXa/l99vd59vGgAGtfqR8+zX5O8pJ79JzYlGKzy7oLCHXh9A
	g6M1HA2XKKBejB3kX3dGsBAlP9yzeEowr2GKqYaqqSnKPm1nOkB54qzJS91WuDUw6XLjdMeWIbZ/j
	/eKKnlG9A4mCkgjseTM/7BXmmtR6XMUJrotWDG2JXum/t/qe4+HWxmKA0g/QmZgMdj1np3Sriq079
	67u4HlyhOy5amep6mDfNBzDfkQiyBGtjF8S3xjJeQAB3iRqrmSgO9ZhkgIJrcbdFD/D/DYPy2boMN
	tMJj+aroYOe0+mnhNC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwjxh-0006Fb-BG; Wed, 29 Jan 2020 09:48:41 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwjxU-0006E6-K5
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 09:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tdgu2B6VkKjHr97Y8fC+KukdGL6S2alhGVcqAPRvCZ8=; b=yfEDN2R2+5z1iS5UobX7oGhu6
 uQKOGb5MnqvVJgW7JMSmK6eQAw4mz7g0Xudql/QY7FFhPD/YR8r5MTJeQdLIbHNfm1F03x2l/qEq+
 VQFxR5CZ3SfJtiMdN4qC4Py6u7vn2ywU462tPtLL/Ew9DNP2BqCs6I8mhnWM8gPx9RKtfs/ki37kc
 AtuHlG0LYlQxtymcRYsiRW6LwtxEEdySYS92j9bavLUwEz9R9/2yNnc58PE81jlRH6Hppdqts7fnc
 4qNos28VZmis7T/XlTTA6JuaPXYCADMUrhkB008zKP21S9VUwufI2LZU9jfkXTCJLnN+tlqFQ09r+
 gNT1jw3qg==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:40686)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iwjwo-0004cD-0g; Wed, 29 Jan 2020 09:47:46 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iwjwg-0003Id-Df; Wed, 29 Jan 2020 09:47:38 +0000
Date: Wed, 29 Jan 2020 09:47:38 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200129094738.GE25745@shell.armlinux.org.uk>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_014830_470245_1C804DC1 
X-CRM114-Status: GOOD (  18.28  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 aneesh.kumar@linux.ibm.com, linux-kernel@vger.kernel.org,
 Jon Hunter <jonathanh@nvidia.com>, linux-mm@kvack.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKYW4gMjYsIDIwMjAgYXQgMDU6NDc6NTdQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IDE4LjAxLjIwMjAgMDI6MjIsIFdlaSBZYW5nINC/0LjRiNC10YI6Cj4gPiBVc2Ug
dGhlIGdlbmVyYWwgaGVscGVyIGluc3RlYWQgb2YgZG8gaXQgYnkgaGFuZC4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogV2VpIFlhbmcgPHJpY2hhcmR3LnlhbmdAbGludXguaW50ZWwuY29tPgo+ID4g
LS0tCj4gPiAgbW0vbXJlbWFwLmMgfCA3ICsrLS0tLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvbW0vbXJl
bWFwLmMgYi9tbS9tcmVtYXAuYwo+ID4gaW5kZXggYzJhZjhiYTRiYTQzLi5hMjU4OTE0ZjNlZTEg
MTAwNjQ0Cj4gPiAtLS0gYS9tbS9tcmVtYXAuYwo+ID4gKysrIGIvbW0vbXJlbWFwLmMKPiA+IEBA
IC0yNTMsMTEgKzI1Myw4IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhzdHJ1Y3Qg
dm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPiA+ICAKPiA+ICAJZm9yICg7IG9sZF9hZGRyIDwgb2xkX2Vu
ZDsgb2xkX2FkZHIgKz0gZXh0ZW50LCBuZXdfYWRkciArPSBleHRlbnQpIHsKPiA+ICAJCWNvbmRf
cmVzY2hlZCgpOwo+ID4gLQkJbmV4dCA9IChvbGRfYWRkciArIFBNRF9TSVpFKSAmIFBNRF9NQVNL
Owo+ID4gLQkJLyogZXZlbiBpZiBuZXh0IG92ZXJmbG93ZWQsIGV4dGVudCBiZWxvdyB3aWxsIGJl
IG9rICovCj4gPiArCQluZXh0ID0gcG1kX2FkZHJfZW5kKG9sZF9hZGRyLCBvbGRfZW5kKTsKPiA+
ICAJCWV4dGVudCA9IG5leHQgLSBvbGRfYWRkcjsKPiA+IC0JCWlmIChleHRlbnQgPiBvbGRfZW5k
IC0gb2xkX2FkZHIpCj4gPiAtCQkJZXh0ZW50ID0gb2xkX2VuZCAtIG9sZF9hZGRyOwo+ID4gIAkJ
b2xkX3BtZCA9IGdldF9vbGRfcG1kKHZtYS0+dm1fbW0sIG9sZF9hZGRyKTsKPiA+ICAJCWlmICgh
b2xkX3BtZCkKPiA+ICAJCQljb250aW51ZTsKPiA+IEBAIC0zMDEsNyArMjk4LDcgQEAgdW5zaWdu
ZWQgbG9uZyBtb3ZlX3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLAo+ID4g
IAo+ID4gIAkJaWYgKHB0ZV9hbGxvYyhuZXdfdm1hLT52bV9tbSwgbmV3X3BtZCkpCj4gPiAgCQkJ
YnJlYWs7Cj4gPiAtCQluZXh0ID0gKG5ld19hZGRyICsgUE1EX1NJWkUpICYgUE1EX01BU0s7Cj4g
PiArCQluZXh0ID0gcG1kX2FkZHJfZW5kKG5ld19hZGRyLCBuZXdfYWRkciArIGxlbik7Cj4gPiAg
CQlpZiAoZXh0ZW50ID4gbmV4dCAtIG5ld19hZGRyKQo+ID4gIAkJCWV4dGVudCA9IG5leHQgLSBu
ZXdfYWRkcjsKPiA+ICAJCW1vdmVfcHRlcyh2bWEsIG9sZF9wbWQsIG9sZF9hZGRyLCBvbGRfYWRk
ciArIGV4dGVudCwgbmV3X3ZtYSwKPiA+IAo+IAo+IEhlbGxvIFdlaSwKPiAKPiBTdGFydGluZyB3
aXRoIG5leHQtMjAyMDAxMjIsIEknbSBzZWVpbmcgdGhlIGZvbGxvd2luZyBpbiBLTVNHIG9uIE5W
SURJQQo+IFRlZ3JhIChBUk0zMik6Cj4gCj4gICBCVUc6IEJhZCByc3MtY291bnRlciBzdGF0ZSBt
bToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4gCj4gYW5kIGV2ZW50dWFsbHkg
a2VybmVsIGhhbmdzLgo+IAo+IEdpdCdzIGJpc2VjdGlvbiBwb2ludHMgdG8gdGhpcyBwYXRjaCBh
bmQgcmV2ZXJ0aW5nIGl0IGhlbHBzLiBQbGVhc2UgZml4LAo+IHRoYW5rcyBpbiBhZHZhbmNlLgoK
VGhlIGFib3ZlIGlzIGRlZmluaXRlbHkgd3JvbmcgLSBwWFhfYWRkcl9lbmQoKSBhcmUgZGVzaWdu
ZWQgdG8gYmUgdXNlZAp3aXRoIGFuIGFkZHJlc3MgaW5kZXggd2l0aGluIHRoZSBwWFggdGFibGUg
dGFibGUgYW5kIHRoZSBhZGRyZXNzIGluZGV4Cm9mIGVpdGhlciB0aGUgbGFzdCBlbnRyeSBpbiB0
aGUgc2FtZSBwWFggdGFibGUgb3IgdGhlIGJlZ2lubmluZyBvZiB0aGUKX25leHRfIHBYWCB0YWJs
ZS4gIEFyYml0YXJ5IGVuZCBhZGRyZXNzIGluZGljaWVzIGFyZSBub3QgYWxsb3dlZC4KCldoZW4g
cGFnZSB0YWJsZXMgYXJlICJyb2xsZWQgdXAiIHdoZW4gbGV2ZWxzIGRvbid0IGV4aXN0LCBpdCBp
cyBjb21tb24KcHJhY3RpY2UgZm9yIHRoZXNlIG1hY3JvcyB0byBqdXN0IHJldHVybiB0aGVpciBl
bmQgYWRkcmVzcyBpbmRleC4KSGVuY2UsIGlmIHRoZXkgYXJlIHVzZWQgd2l0aCBhcmJpdGFyeSBl
bmQgYWRkcmVzcyBpbmRpY2llcywgdGhlbiB0aGUKaXRlcmF0aW9uIHdpbGwgZmFpbC4KClRoZSBv
bmx5IHdheSB0byBkbyB0aGlzIGlzOgoKCW5leHQgPSBwbWRfYWRkcl9lbmQob2xkX2FkZHIsCgkJ
CXB1ZF9hZGRyX2VuZChvbGRfYWRkciwKCQkJCXA0ZF9hZGRyX2VuZChvbGRfYWRkciwKCQkJCQlw
Z2RfYWRkcl9lbmQob2xkX2FkZHIsIG9sZF9lbmQpKSkpOwoKd2hpY2ggZ2l2ZXMgcG1kX2FkZHJf
ZW5kKCkgKGFuZCBlYWNoIG9mIHRoZSBpbnRlcm1lZGlhdGUgcFhYX2FkZHJfZW5kKCkpCnRoZSBj
b3JyZWN0IGVuZCBhcmd1bWVudC4gIEhvd2V2ZXIsIHRoYXQncyBhIG1vcmUgY29tcGxleCBhbmQg
dmVyYm9zZSwKYW5kIGxpa2VseSBsZXNzIGVmZmljaWVudCB0aGFuIHRoZSBjdXJyZW50IGNvZGUu
CgpJJ2Qgc3VnZ2VzdCB0aGF0IHRoZXJlJ3Mgbm90aGluZyB0byAiZml4IiBpbiB0aGUgdjUuNSBj
b2RlIHdydCB0aGlzLAphbmQgdHJ5aW5nIHRvICJjbGVhbiBpdCB1cCIgd2lsbCBqdXN0IHJlc3Vs
dCBpbiBsZXNzIGVmZmljaWVudCBvcgpicm9rZW4gY29kZS4KCi0tIApSTUsncyBQYXRjaCBzeXN0
ZW06IGh0dHBzOi8vd3d3LmFybWxpbnV4Lm9yZy51ay9kZXZlbG9wZXIvcGF0Y2hlcy8KRlRUQyBi
cm9hZGJhbmQgZm9yIDAuOG1pbGUgbGluZSBpbiBzdWJ1cmJpYTogc3luYyBhdCAxMi4xTWJwcyBk
b3duIDYyMmticHMgdXAKQWNjb3JkaW5nIHRvIHNwZWVkdGVzdC5uZXQ6IDExLjlNYnBzIGRvd24g
NTAwa2JwcyB1cAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
