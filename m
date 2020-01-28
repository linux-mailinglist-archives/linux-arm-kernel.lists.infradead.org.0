Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 737B014AD51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 01:43:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+54M+E7HIqHXJwTPdD8Hk9bUOB8sWGflElzvFwNzK0=; b=kV0eIdJs0/msJz
	BFCeLAerKVaKwbJ7YUlFvb95q5VwZNpiH8A+iT2c79eMU5loVxCrhJ/J27O8OOYVhzwaIl/UrVUCG
	WIdFV38kDZ35++QD9he23wQrl2CHTb+IAhcWBsw9dZnm9KWGqEbBpMWnlPGCr4LkFR7xh7eZfsEx3
	9ymsnmGXPwdHbIRCps/7p+7MKS5mhVL65T61zczFV+Ytf3C6gT4tag4msZatWvpGYx8uZ+3X6FSsG
	rDEcVSsUzZL5/HXspjW0eUlqe2VyHifcsFFPTZDe+hkb6X7iJZu59GS9bTJknBXUfIxty4geziVx2
	CAYM0eZ4Xl1m3Qih9Efw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwEyF-0005A6-SJ; Tue, 28 Jan 2020 00:43:11 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwEy5-00059j-N4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 00:43:02 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 16:42:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,371,1574150400"; d="scan'208";a="261266505"
Received: from richard.sh.intel.com (HELO localhost) ([10.239.159.54])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2020 16:42:48 -0800
Date: Tue, 28 Jan 2020 08:43:01 +0800
From: Wei Yang <richardw.yang@linux.intel.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH 3/5] mm/mremap: use pmd_addr_end to calculate next in
 move_page_tables()
Message-ID: <20200128004301.GD20624@richard>
References: <20200117232254.2792-1-richardw.yang@linux.intel.com>
 <20200117232254.2792-4-richardw.yang@linux.intel.com>
 <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7147774a-14e9-4ff3-1548-4565f0d214d5@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_164301_764611_7567A836 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reply-To: Wei Yang <richardw.yang@linux.intel.com>
Cc: thellstrom@vmware.com, yang.shi@linux.alibaba.com,
 Russell King - ARM Linux <linux@armlinux.org.uk>, aneesh.kumar@linux.ibm.com,
 linux-kernel@vger.kernel.org, Jon Hunter <jonathanh@nvidia.com>,
 linux-mm@kvack.org, Thierry Reding <thierry.reding@gmail.com>,
 Wei Yang <richardw.yang@linux.intel.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 kirill@shutemov.name, akpm@linux-foundation.org, dan.j.williams@intel.com,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBKYW4gMjYsIDIwMjAgYXQgMDU6NDc6NTdQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+MTguMDEuMjAyMCAwMjoyMiwgV2VpIFlhbmcg0L/QuNGI0LXRgjoKPj4gVXNlIHRo
ZSBnZW5lcmFsIGhlbHBlciBpbnN0ZWFkIG9mIGRvIGl0IGJ5IGhhbmQuCj4+IAo+PiBTaWduZWQt
b2ZmLWJ5OiBXZWkgWWFuZyA8cmljaGFyZHcueWFuZ0BsaW51eC5pbnRlbC5jb20+Cj4+IC0tLQo+
PiAgbW0vbXJlbWFwLmMgfCA3ICsrLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvbW0vbXJlbWFwLmMgYi9t
bS9tcmVtYXAuYwo+PiBpbmRleCBjMmFmOGJhNGJhNDMuLmEyNTg5MTRmM2VlMSAxMDA2NDQKPj4g
LS0tIGEvbW0vbXJlbWFwLmMKPj4gKysrIGIvbW0vbXJlbWFwLmMKPj4gQEAgLTI1MywxMSArMjUz
LDggQEAgdW5zaWduZWQgbG9uZyBtb3ZlX3BhZ2VfdGFibGVzKHN0cnVjdCB2bV9hcmVhX3N0cnVj
dCAqdm1hLAo+PiAgCj4+ICAJZm9yICg7IG9sZF9hZGRyIDwgb2xkX2VuZDsgb2xkX2FkZHIgKz0g
ZXh0ZW50LCBuZXdfYWRkciArPSBleHRlbnQpIHsKPj4gIAkJY29uZF9yZXNjaGVkKCk7Cj4+IC0J
CW5leHQgPSAob2xkX2FkZHIgKyBQTURfU0laRSkgJiBQTURfTUFTSzsKPj4gLQkJLyogZXZlbiBp
ZiBuZXh0IG92ZXJmbG93ZWQsIGV4dGVudCBiZWxvdyB3aWxsIGJlIG9rICovCj4+ICsJCW5leHQg
PSBwbWRfYWRkcl9lbmQob2xkX2FkZHIsIG9sZF9lbmQpOwo+PiAgCQlleHRlbnQgPSBuZXh0IC0g
b2xkX2FkZHI7Cj4+IC0JCWlmIChleHRlbnQgPiBvbGRfZW5kIC0gb2xkX2FkZHIpCj4+IC0JCQll
eHRlbnQgPSBvbGRfZW5kIC0gb2xkX2FkZHI7Cj4+ICAJCW9sZF9wbWQgPSBnZXRfb2xkX3BtZCh2
bWEtPnZtX21tLCBvbGRfYWRkcik7Cj4+ICAJCWlmICghb2xkX3BtZCkKPj4gIAkJCWNvbnRpbnVl
Owo+PiBAQCAtMzAxLDcgKzI5OCw3IEBAIHVuc2lnbmVkIGxvbmcgbW92ZV9wYWdlX3RhYmxlcyhz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwKPj4gIAo+PiAgCQlpZiAocHRlX2FsbG9jKG5ld192
bWEtPnZtX21tLCBuZXdfcG1kKSkKPj4gIAkJCWJyZWFrOwo+PiAtCQluZXh0ID0gKG5ld19hZGRy
ICsgUE1EX1NJWkUpICYgUE1EX01BU0s7Cj4+ICsJCW5leHQgPSBwbWRfYWRkcl9lbmQobmV3X2Fk
ZHIsIG5ld19hZGRyICsgbGVuKTsKPj4gIAkJaWYgKGV4dGVudCA+IG5leHQgLSBuZXdfYWRkcikK
Pj4gIAkJCWV4dGVudCA9IG5leHQgLSBuZXdfYWRkcjsKPj4gIAkJbW92ZV9wdGVzKHZtYSwgb2xk
X3BtZCwgb2xkX2FkZHIsIG9sZF9hZGRyICsgZXh0ZW50LCBuZXdfdm1hLAo+PiAKPgo+SGVsbG8g
V2VpLAo+Cj5TdGFydGluZyB3aXRoIG5leHQtMjAyMDAxMjIsIEknbSBzZWVpbmcgdGhlIGZvbGxv
d2luZyBpbiBLTVNHIG9uIE5WSURJQQo+VGVncmEgKEFSTTMyKToKPgo+ICBCVUc6IEJhZCByc3Mt
Y291bnRlciBzdGF0ZSBtbToocHRydmFsKSB0eXBlOk1NX0FOT05QQUdFUyB2YWw6MTkwCj4KClRo
YW5rcy4KCldvdWxkIHlvdSBtaW5kIGxldHRpbmcgbWUga25vdyB3aGljaCBjYXNlIHlvdSBhcmUg
dGVzdGluZz8gT3IgdGhlIHNwZWNpYWwKdGhpbmcgaXMgMzItYml0IHBsYXRmb3JtPwoKPmFuZCBl
dmVudHVhbGx5IGtlcm5lbCBoYW5ncy4KPgo+R2l0J3MgYmlzZWN0aW9uIHBvaW50cyB0byB0aGlz
IHBhdGNoIGFuZCByZXZlcnRpbmcgaXQgaGVscHMuIFBsZWFzZSBmaXgsCj50aGFua3MgaW4gYWR2
YW5jZS4KCi0tIApXZWkgWWFuZwpIZWxwIHlvdSwgSGVscCBtZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxp
c3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
