Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA456A6C6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Fe7FeiDcMNFK7RQBETDzgQ39zVUN3630ZNtJ/IEjWo=; b=OCCFkzDePJFyBM
	DFC/6r7ZijbCO7FcS56tQyTK+MBPvEluYUcWO5FUk3pPhXzPYkPwgh0T9RLBmbPEUof+TlcREk3kQ
	N8oY3KmobOEH6ugMEVEdJ4SsaT7AlTetUqoKhefkvqrhwngbMT9WfJVbtBFYUVHcqF5vgL2C8AtZZ
	6zN3wPp2AjJujfIs5YTB5O5jggYLLgbOVpn8DRN1HMUNPB/uQiON90owtZuh5ZMfwXkDzH7mhZOBV
	O9fCuhrzh9saRn+mUQHlwMNwLO+Y828Wq0YvMWO2ooSvwv+Unbv8/1VnGmNFz21His5k0V0dfqvD8
	6s/4J7g/O86aPsWOHDLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnL3R-0008OY-LE; Tue, 16 Jul 2019 10:51:29 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnL3B-0008O4-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:51:15 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jul 2019 03:51:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,498,1557212400"; d="scan'208";a="190875560"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jul 2019 03:51:11 -0700
Received: from [10.125.253.40] (abudanko-mobl.ccr.corp.intel.com
 [10.125.253.40])
 by linux.intel.com (Postfix) with ESMTP id C29B15802AF;
 Tue, 16 Jul 2019 03:51:07 -0700 (PDT)
Subject: Re: [PATCH 0/3] perf: Use capabilities instead of uid and euid
To: Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
From: Alexey Budankov <alexey.budankov@linux.intel.com>
Organization: Intel Corp.
Message-ID: <cf6398f2-8862-9062-8765-80f930c019e2@linux.intel.com>
Date: Tue, 16 Jul 2019 13:51:06 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_035113_758658_53C7BD4E 
X-CRM114-Status: GOOD (  26.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 James Morris <jmorris@namei.org>, Namhyung Kim <namhyung@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDMuMDcuMjAxOSAzOjEwLCBJZ29yIEx1YmFzaGV2IHdyb3RlOgo+IEtlcm5lbCBpcyB1c2lu
ZyBjYXBhYmlsaXRpZXMgaW5zdGVhZCBvZiB1aWQgYW5kIGV1aWQgdG8gcmVzdHJpY3QgYWNjZXNz
IHRvCj4ga2VybmVsIHBvaW50ZXJzIGFuZCB0cmFjaW5nIGZhY2lsaXRpZXMuICBUaGlzIHBhdGNo
IHNlcmllcyB1cGRhdGVzIHRoZSBwZXJmIHRvCj4gYmV0dGVyIG1hdGNoIHRoZSBzZWN1cml0eSBt
b2RlbCB1c2VkIGJ5IHRoZSBrZXJuZWwuCj4gCj4gVGhpcyBzZXJpZXMgZW5hYmxlcyBpbnN0cnVj
dGlvbnMgaW4gRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9wZXJmLXNlY3VyaXR5LnJzdAo+IHRv
IGFjdHVhbGx5IHdvcmssIGV2ZW4gd2hlbiBrZXJuZWwucGVyZl9ldmVudF9wYXJhbm9pZD0yIGFu
ZAo+IGtlcm5lbC5rcHRyX3Jlc3RyaWN0PTEuCj4gCj4gVGhlIHNlcmllcyBjb25zaXN0cyBvZiB0
aHJlZSBwYXRjaGVzOgo+IAo+ICAgMDE6IHBlcmY6IEFkZCBjYXBhYmlsaXR5LXJlbGF0ZWQgdXRp
bGl0aWVzCj4gICAgIEFkZCB1dGlsaXR5IGZ1bmN0aW9ucyB0byBjaGVjayBjYXBhYmlsaXRpZXMg
YW5kIHBlcmZfZXZlbnRfcGFyYW5vaWQgY2hlY2tzLgo+IAo+ICAgMDI6IHBlcmY6IFVzZSBDQVBf
U1lTX0FETUlOIHdpdGggcGVyZl9ldmVudF9wYXJhbm9pZCBjaGVja3MKPiAgICAgUmVwbGFjZSB0
aGUgdXNlIG9mIGV1aWQ9PTAgd2l0aCBhIGNoZWNrIGZvciBDQVBfU1lTX0FETUlOIHdoZW5ldmVy
Cj4gICAgIHBlcmZfZXZlbnRfcGFyYW5vaWQgbGV2ZWwgaXMgdmVyaWZpZWQuCj4gCj4gICAwMzog
cGVyZjogVXNlIENBUF9TWVNMT0cgd2l0aCBrcHRyX3Jlc3RyaWN0IGNoZWNrcwo+ICAgICBSZXBs
YWNlIHRoZSB1c2Ugb2YgdWlkIGFuZCBldWlkIHdpdGggYSBjaGVjayBmb3IgQ0FQX1NZU0xPRyB3
aGVuCj4gICAgIGtwdHJfcmVzdHJpY3QgaXMgdmVyaWZpZWQgKHNpbWlsYXIgdG8ga2VybmVsL2th
bGxzeW1zLmMgYW5kIGxpYi92c3ByaW50Zi5jKS4KPiAgICAgQ29uc3VsdCBwZXJmX2V2ZW50X3Bh
cmFub2lkIHdoZW4ga3B0cl9yZXN0cmljdD09MCAoc2VlIGtlcm5lbC9rYWxsc3ltcy5jKS4KPiAK
PiBJIHRlc3RlZCB0aGlzIGJ5IGZvbGxvd2luZyBEb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL3Bl
cmYtc2VjdXJpdHkucnN0Cj4gZ3VpZGVsaW5lcyBhbmQgc2V0dGluZyBzeXNjdGxzOgo+IAo+ICAg
IGtlcm5lbC5wZXJmX2V2ZW50X3BhcmFub2lkPTIKPiAgICBrZXJuZWwua3B0cl9yZXN0cmljdD0x
Cj4gCj4gQXMgYW4gdW5wcml2aWxlZGdlZCB1c2VyIHdobyBpcyBpbiBwZXJmX3VzZXJzIGdyb3Vw
IChzZXR1cCB2aWEgaW5zdHJ1Y3Rpb25zCj4gYWJvdmUpLCBJIGV4ZWN1dGVkOgo+ICAgIHBlcmYg
cmVjb3JkIC1hIC0tIHNsZWVwIDEKPiAKPiBXaXRob3V0IHRoZSBwYXRjaCwgcGVyZiByZWNvcmQg
ZGlkIG5vdCBjYXB0dXJlIGFueSBrZXJuZWwgZnVuY3Rpb25zLgo+IFdpdGggdGhlIHBhdGNoLCBw
ZXJmIGluY2x1ZGVkIGFsbCBrZXJuZWwgZnVuY2l0b25zLgoKQWNrZWQtYnk6IEFsZXhleSBCdWRh
bmtvdiA8YWxleGV5LmJ1ZGFua292QGxpbnV4LmludGVsLmNvbT4KClZhbHVhYmxlIGNvbnRyaWJ1
dGlvbiwgdGhhbmtzISBBbmQgSSBzZWUgdGhlIGNvbnRpbnVhdGlvbiBvZiB0aGUgZWZmb3J0IHN0
YXJ0ZWQgCmluIHRoaXMgcGF0Y2ggc2V0LiBTb21lIGRlZGljYXRlZCBDQVBfU1lTX1BFUkZNT04g
Y2FwYWJpbGl0eSBjb3VsZCBiZSBpbnRyb2R1Y2VkIAphbmQgdXNlZCBmb3IgcGVyZm9ybWFuY2Ug
bW9uaXRvcmluZyByZWxhdGVkIHNlY3VyaXR5IGNoZWNrcywgYXMgaW4gdGhlIGtlcm5lbCBhcyAK
aW4gdGhlIHVzZXIgbW9kZSwgYmVjYXVzZSBDQVBfU1lTX0FETUlOIGdyYW50cyBtdWNoIHdpZGVy
IGNyZWRlbnRpYWxzIHRoYXQgYXJlIApyZXF1aXJlZCwgYXQgbGVhc3QgZm9yIFBlcmYgcmVsYXRl
ZCBtb25pdG9yaW5nIGFuZCwgeWV0IG1vcmUsIENBUF9TWVNfQURNSU4gY291bGQgCmJlIHVubG9h
ZGVkIGFkZHJlc3NpbmcgdGhlIGNvbmNlcm5zIGhlcmUgWzFdOgoKIENBUF9TWVNfQURNSU4KICAg
ICAgIAkgICBOb3RlOiB0aGlzIGNhcGFiaWxpdHkgaXMgb3ZlcmxvYWRlZDsgc2VlIE5vdGVzIHRv
IGtlcm5lbCBkZXZlbG9wZXJzLCBiZWxvdy4KIC4uLgogTm90ZXMgdG8ga2VybmVsIGRldmVsb3Bl
cnM6CgkgICBXaGVuIGFkZGluZyBhIG5ldyBrZXJuZWwgZmVhdHVyZSB0aGF0IHNob3VsZCBiZSBn
b3Zlcm5lZCBieSBhCgkgICBjYXBhYmlsaXR5LCBjb25zaWRlciB0aGUgZm9sbG93aW5nIHBvaW50
cy4KCSAgICogIFRoZSBnb2FsIG9mIGNhcGFiaWxpdGllcyBpcyBkaXZpZGUgdGhlIHBvd2VyIG9m
IHN1cGVydXNlciBpbnRvCgkgICAgICAgcGllY2VzLCBzdWNoIHRoYXQgaWYgYSBwcm9ncmFtIHRo
YXQgaGFzIG9uZSBvciBtb3JlIGNhcGFiaWxpdGllcwoJICAgICAgIGlzIGNvbXByb21pc2VkLCBp
dHMgcG93ZXIgdG8gZG8gZGFtYWdlIHRvIHRoZSBzeXN0ZW0gd291bGQgYmUgbGVzcwoJICAgICAg
IHRoYW4gdGhlIHNhbWUgcHJvZ3JhbSBydW5uaW5nIHdpdGggcm9vdCBwcml2aWxlZ2UuCgkgICAq
ICBZb3UgaGF2ZSB0aGUgY2hvaWNlIG9mIGVpdGhlciBjcmVhdGluZyBhIG5ldyBjYXBhYmlsaXR5
IGZvciB5b3VyCgkgICAgICAgbmV3IGZlYXR1cmUsIG9yIGFzc29jaWF0aW5nIHRoZSBmZWF0dXJl
IHdpdGggb25lIG9mIHRoZSBleGlzdGluZwoJICAgICAgIGNhcGFiaWxpdGllcy4gIEluIG9yZGVy
IHRvIGtlZXAgdGhlIHNldCBvZiBjYXBhYmlsaXRpZXMgdG8gYQoJICAgICAgIG1hbmFnZWFibGUg
c2l6ZSwgdGhlIGxhdHRlciBvcHRpb24gaXMgcHJlZmVyYWJsZSwgdW5sZXNzIHRoZXJlIGFyZQoJ
ICAgICAgIGNvbXBlbGxpbmcgcmVhc29ucyB0byB0YWtlIHRoZSBmb3JtZXIgb3B0aW9uLiAgKFRo
ZXJlIGlzIGFsc28gYQoJICAgICAgIHRlY2huaWNhbCBsaW1pdDogdGhlIHNpemUgb2YgY2FwYWJp
bGl0eSBzZXRzIGlzIGN1cnJlbnRseSBsaW1pdGVkCgkgICAgICAgdG8gNjQgYml0cy4pCgkgICAg
ICAgLiAuIC4KCSAgICAqIERvbid0IGNob29zZSBDQVBfU1lTX0FETUlOIGlmIHlvdSBjYW4gcG9z
c2libHkgYXZvaWQgaXQhICBBIHZhc3QKCSAgICAgICBwcm9wb3J0aW9uIG9mIGV4aXN0aW5nIGNh
cGFiaWxpdHkgY2hlY2tzIGFyZSBhc3NvY2lhdGVkIHdpdGggdGhpcwoJICAgICAgIGNhcGFiaWxp
dHkgKHNlZSB0aGUgcGFydGlhbCBsaXN0IGFib3ZlKS4gIEl0IGNhbiBwbGF1c2libHkgYmUKCSAg
ICAgICBjYWxsZWQgInRoZSBuZXcgcm9vdCIsIHNpbmNlIG9uIHRoZSBvbmUgaGFuZCwgaXQgY29u
ZmVycyBhIHdpZGUKCSAgICAgICByYW5nZSBvZiBwb3dlcnMsIGFuZCBvbiB0aGUgb3RoZXIgaGFu
ZCwgaXRzIGJyb2FkIHNjb3BlIG1lYW5zIHRoYXQKCSAgICAgICB0aGlzIGlzIHRoZSBjYXBhYmls
aXR5IHRoYXQgaXMgcmVxdWlyZWQgYnkgbWFueSBwcml2aWxlZ2VkCgkgICAgICAgcHJvZ3JhbXMu
ICBEb24ndCBtYWtlIHRoZSBwcm9ibGVtIHdvcnNlLiAgVGhlIG9ubHkgbmV3IGZlYXR1cmVzCgkg
ICAgICAgdGhhdCBzaG91bGQgYmUgYXNzb2NpYXRlZCB3aXRoIENBUF9TWVNfQURNSU4gYXJlIG9u
ZXMgdGhhdCBjbG9zZWx5CgkgICAgICAgbWF0Y2ggZXhpc3RpbmcgdXNlcyBpbiB0aGF0IHNpbG8u
CgkgICAgKiBJZiB5b3UgaGF2ZSBkZXRlcm1pbmVkIHRoYXQgaXQgcmVhbGx5IGlzIG5lY2Vzc2Fy
eSB0byBjcmVhdGUgYSBuZXcKCSAgICAgICBjYXBhYmlsaXR5IGZvciB5b3VyIGZlYXR1cmUsIGRv
bid0IG1ha2Ugb3IgbmFtZSBpdCBhcyBhICJzaW5nbGUtCgkgICAgICAgdXNlIiBjYXBhYmlsaXR5
LiAgVGh1cywgZm9yIGV4YW1wbGUsIHRoZSBhZGRpdGlvbiBvZiB0aGUgaGlnaGx5CgkgICAgICAg
c3BlY2lmaWMgQ0FQX1NZU19QQUNDVCB3YXMgcHJvYmFibHkgYSBtaXN0YWtlLiAgSW5zdGVhZCwg
dHJ5IHRvCgkgICAgICAgaWRlbnRpZnkgYW5kIG5hbWUgeW91ciBuZXcgY2FwYWJpbGl0eSBhcyBh
IGJyb2FkZXIgc2lsbyBpbnRvIHdoaWNoCiAgICAgICAgICAgb3RoZXIgcmVsYXRlZCBmdXR1cmUg
dXNlIGNhc2VzIG1pZ2h0IGZpdC7igJ0KClJlZ2FyZHMsCkFsZXhleQoKWzFdIGh0dHA6Ly9tYW43
Lm9yZy9saW51eC9tYW4tcGFnZXMvbWFuNy9jYXBhYmlsaXRpZXMuNy5odG1sCgo+IAo+IElnb3Ig
THViYXNoZXYgKDMpOgo+ICAgcGVyZjogQWRkIGNhcGFiaWxpdHktcmVsYXRlZCB1dGlsaXRpZXMK
PiAgIHBlcmY6IFVzZSBDQVBfU1lTX0FETUlOIHdpdGggcGVyZl9ldmVudF9wYXJhbm9pZCBjaGVj
a3MKPiAgIHBlcmY6IFVzZSBDQVBfU1lTTE9HIHdpdGgga3B0cl9yZXN0cmljdCBjaGVja3MKPiAK
PiAgdG9vbHMvcGVyZi9NYWtlZmlsZS5jb25maWcgICAgICAgICAgIHwgIDIgKy0KPiAgdG9vbHMv
cGVyZi9hcmNoL2FybS91dGlsL2NzLWV0bS5jICAgIHwgIDMgKystCj4gIHRvb2xzL3BlcmYvYXJj
aC9hcm02NC91dGlsL2FybS1zcGUuYyB8ICAzICsrLQo+ICB0b29scy9wZXJmL2FyY2gveDg2L3V0
aWwvaW50ZWwtYnRzLmMgfCAgMyArKy0KPiAgdG9vbHMvcGVyZi9hcmNoL3g4Ni91dGlsL2ludGVs
LXB0LmMgIHwgIDIgKy0KPiAgdG9vbHMvcGVyZi91dGlsL0J1aWxkICAgICAgICAgICAgICAgIHwg
IDEgKwo+ICB0b29scy9wZXJmL3V0aWwvY2FwLmMgICAgICAgICAgICAgICAgfCAyNCArKysrKysr
KysrKysrKysrKysrKysrKysKPiAgdG9vbHMvcGVyZi91dGlsL2NhcC5oICAgICAgICAgICAgICAg
IHwgMTAgKysrKysrKysrKwo+ICB0b29scy9wZXJmL3V0aWwvZXZlbnQuaCAgICAgICAgICAgICAg
fCAgMSArCj4gIHRvb2xzL3BlcmYvdXRpbC9ldnNlbC5jICAgICAgICAgICAgICB8ICAyICstCj4g
IHRvb2xzL3BlcmYvdXRpbC9weXRob24tZXh0LXNvdXJjZXMgICB8ICAxICsKPiAgdG9vbHMvcGVy
Zi91dGlsL3N5bWJvbC5jICAgICAgICAgICAgIHwgMTUgKysrKysrKysrKystLS0tCj4gIHRvb2xz
L3BlcmYvdXRpbC91dGlsLmMgICAgICAgICAgICAgICB8ICA5ICsrKysrKysrKwo+ICAxMyBmaWxl
cyBjaGFuZ2VkLCA2NiBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IHRvb2xzL3BlcmYvdXRpbC9jYXAuYwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdG9v
bHMvcGVyZi91dGlsL2NhcC5oCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
