Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118BA46F1D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 10:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ewOwSiEIf054MbilDktqjY7YZYxjPqjlJ1Mw0AFi/zc=; b=NhPHxsBCOQK95N
	FcKyeiiKYjCED0hqxct9Sv3SZrPyQNKZNXLNI1mtUUGSkmqU7QpaRTAnR7oMc16ODCl7XC4EsMHlr
	9BpaMAylxUxCkV3F680lvKuVfWgOU5y9tunbMDHK3v+j2IeXD93YgtWCWyDj0wDOdq7ilZ8/IfsTE
	Yktf8yCaoQjus76KcH8Lti8eahUW+rM8tjPtgyQJz3Ifdwb/+kX0Z+CN3QRFD2v4NpUr+gRKhZhlY
	/ucwCS9nauzlAWAoa45kteu+Jgk0waU0SxwFmrhFS4tznh96kKJpcAe2exHLXYWe3sVeO+r2Cfq/T
	xrZWq80wfvll0R0vQzsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4Pv-00081c-Ej; Sat, 15 Jun 2019 08:52:07 +0000
Received: from smtp.domeneshop.no ([2a01:5b40:0:3005::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4Pg-00080z-A6
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 08:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org;
 s=ds201810; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=0pd3WmkTckd3mzNfPXhdl3yElKB3hpVck7zeICTkyZg=; 
 b=IOUg+VxbZEJdxzFhyjx6UWDsn52xlrWk4fH+9TFokh8o9cgo926M9Hy/+v8e3CqPQSVMI53T3ZMSykz6PxL3FfucjEAc4MsPSXX2FYXQp5eZ+msN/XnxU8ZuB1tKHXxoXmY7i+2/Lwc8bT5Ni451eZ+FSkKjSFaGuJ8MF83Crp4TuLQqJX4mt/GWGiQH0WjUTN5HP7J0awskCU5CFuYDIMWTCw3/3/upgrQ4dWU9AMbTQ+ym0WxjOJdVh49BM2gIRJuE9vUk7BFKshwrktH4jTIVNOvLo0gg2jcOqua/NSCYb8CIrgrpSgjCzuZOI8EUC9jMEgGMcOylYXBbyu7//w==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52435
 helo=[192.168.10.173])
 by smtp.domeneshop.no with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.84_2) (envelope-from <noralf@tronnes.org>)
 id 1hc4Pa-0001ZA-Et; Sat, 15 Jun 2019 10:51:46 +0200
Subject: Re: [PATCH v4 01/12] drm/connector: Add documentation for
 drm_cmdline_mode
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>
References: <cover.5fc7840dc8fb24744516c13acb8c8aa18e44c0d0.1560514379.git-series.maxime.ripard@bootlin.com>
 <19279b675ec213f8011def396b43bad2420e2992.1560514379.git-series.maxime.ripard@bootlin.com>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <70708a75-38d0-a72c-cf82-c54c2e51d65b@tronnes.org>
Date: Sat, 15 Jun 2019 10:51:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <19279b675ec213f8011def396b43bad2420e2992.1560514379.git-series.maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_015152_542525_D6AF5105 
X-CRM114-Status: GOOD (  18.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:5b40:0:3005:0:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: eben@raspberrypi.org, dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpEZW4gMTQuMDYuMjAxOSAxNC4xMywgc2tyZXYgTWF4aW1lIFJpcGFyZDoKPiBUaGUgc3RydWN0
IGRybV9jbWRsaW5lX21vZGUgaG9sZHMgdGhlIHJlc3VsdCBvZiB0aGUgY29tbWFuZCBsaW5lIHBh
cnNlcnMuCj4gSG93ZXZlciwgaXQgd2Fzbid0IGRvY3VtZW50ZWQgc28gZmFyLCBzbyBsZXQncyBk
byB0aGF0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1heGltZS5yaXBhcmRA
Ym9vdGxpbi5jb20+Cj4gLS0tCj4gIGluY2x1ZGUvZHJtL2RybV9jb25uZWN0b3IuaCB8IDg2ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA4
NCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fY29ubmVjdG9yLmggYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBpbmRl
eCA0N2U3NDliNzRlNWYuLmY5Y2ZhOTZmNWQ3ZSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2RybS9k
cm1fY29ubmVjdG9yLmgKPiArKysgYi9pbmNsdWRlL2RybS9kcm1fY29ubmVjdG9yLmgKPiBAQCAt
OTA0LDE4ICs5MDQsMTAwIEBAIHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzIHsKPiAgCQkJCSAg
IGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpzdGF0ZSk7Cj4gIH07Cj4gIAo+IC0v
KiBtb2RlIHNwZWNpZmllZCBvbiB0aGUgY29tbWFuZCBsaW5lICovCj4gKy8qKgo+ICsgKiBzdHJ1
Y3QgZHJtX2NtZGxpbmVfbW9kZSAtIERSTSBNb2RlIHBhc3NlZCB0aHJvdWdoIHRoZSBrZXJuZWwg
Y29tbWFuZC1saW5lCj4gKyAqCj4gKyAqIEVhY2ggY29ubmVjdG9yIGNhbiBoYXZlIGFuIGluaXRp
YWwgbW9kZSB3aXRoIGFkZGl0aW9uYWwgb3B0aW9ucwo+ICsgKiBwYXNzZWQgdGhyb3VnaCB0aGUg
a2VybmVsIGNvbW1hbmQgbGluZS4gVGhpcyBzdHJ1Y3R1cmUgYWxsb3dzIHRvCj4gKyAqIGV4cHJl
c3MgdGhvc2UgcGFyYW1ldGVycyBhbmQgd2lsbCBiZSBmaWxsZWQgYnkgdGhlIGNvbW1hbmQtbGlu
ZQo+ICsgKiBwYXJzZXIuCj4gKyAqLwo+ICBzdHJ1Y3QgZHJtX2NtZGxpbmVfbW9kZSB7Cj4gKwkv
KioKPiArCSAqIEBzcGVjaWZpZWQ6Cj4gKwkgKgo+ICsJICogSGFzIGEgbW9kZSBiZWVuIHJlYWQg
ZnJvbSB0aGUgY29tbWFuZC1saW5lPwo+ICsJICovCj4gIAlib29sIHNwZWNpZmllZDsKPiArCj4g
KwkvKioKPiArCSAqIEByZWZyZXNoX3NwZWNpZmllZDoKPiArCSAqCj4gKwkgKiBEaWQgdGhlIG1v
ZGUgaGFzIGEgcHJlZmVycmVkIHJlZnJlc2ggcmF0ZT8KCnMvaGFzL2hhdmUvIG9yIERvZXMgdGhl
IG1vZGUgaGF2ZQoKPiArCSAqLwo+ICAJYm9vbCByZWZyZXNoX3NwZWNpZmllZDsKPiArCj4gKwkv
KioKPiArCSAqIEBicHBfc3BlY2lmaWVkOgo+ICsJICoKPiArCSAqIERpZCB0aGUgbW9kZSBoYXMg
YSBwcmVmZXJyZWQgQlBQPwoKcy9oYXMvaGF2ZS8KClJldmlld2VkLWJ5OiBOb3JhbGYgVHLDuG5u
ZXMgPG5vcmFsZkB0cm9ubmVzLm9yZz4KCj4gKwkgKi8KPiAgCWJvb2wgYnBwX3NwZWNpZmllZDsK
PiAtCWludCB4cmVzLCB5cmVzOwo+ICsKPiArCS8qKgo+ICsJICogQHhyZXM6Cj4gKwkgKgo+ICsJ
ICogQWN0aXZlIHJlc29sdXRpb24gb24gdGhlIFggYXhpcywgaW4gcGl4ZWxzLgo+ICsJICovCj4g
KwlpbnQgeHJlczsKPiArCj4gKwkvKioKPiArCSAqIEB5cmVzOgo+ICsJICoKPiArCSAqIEFjdGl2
ZSByZXNvbHV0aW9uIG9uIHRoZSBZIGF4aXMsIGluIHBpeGVscy4KPiArCSAqLwo+ICsJaW50IHly
ZXM7Cj4gKwo+ICsJLyoqCj4gKwkgKiBAYnBwOgo+ICsJICoKPiArCSAqIEJpdHMgcGVyIHBpeGVs
cyBmb3IgdGhlIG1vZGUuCj4gKwkgKi8KPiAgCWludCBicHA7Cj4gKwo+ICsJLyoqCj4gKwkgKiBA
cmVmcmVzaDoKPiArCSAqCj4gKwkgKiBSZWZyZXNoIHJhdGUsIGluIEhlcnR6Lgo+ICsJICovCj4g
IAlpbnQgcmVmcmVzaDsKPiArCj4gKwkvKioKPiArCSAqIEByYjoKPiArCSAqCj4gKwkgKiBEbyB3
ZSBuZWVkIHRvIHVzZSByZWR1Y2VkIGJsYW5raW5nPwo+ICsJICovCj4gIAlib29sIHJiOwo+ICsK
PiArCS8qKgo+ICsJICogQGludGVybGFjZToKPiArCSAqCj4gKwkgKiBUaGUgbW9kZSBpcyBpbnRl
cmxhY2VkLgo+ICsJICovCj4gIAlib29sIGludGVybGFjZTsKPiArCj4gKwkvKioKPiArCSAqIEBj
dnQ6Cj4gKwkgKgo+ICsJICogVGhlIHRpbWluZ3Mgd2lsbCBiZSBjYWxjdWxhdGVkIHVzaW5nIHRo
ZSBWRVNBIENvb3JkaW5hdGVkCj4gKwkgKiBWaWRlbyBUaW1pbmdzIGluc3RlYWQgb2YgbG9va2lu
ZyB1cCB0aGUgbW9kZSBmcm9tIGEgdGFibGUuCj4gKwkgKi8KPiAgCWJvb2wgY3Z0Owo+ICsKPiAr
CS8qKgo+ICsJICogQG1hcmdpbnM6Cj4gKwkgKgo+ICsJICogQWRkIG1hcmdpbnMgdG8gdGhlIG1v
ZGUgY2FsY3VsYXRpb24gKDEuOCUgb2YgeHJlcyByb3VuZGVkCj4gKwkgKiBkb3duIHRvIDggcGl4
ZWxzIGFuZCAxLjglIG9mIHlyZXMpLgo+ICsJICovCj4gIAlib29sIG1hcmdpbnM7Cj4gKwo+ICsJ
LyoqCj4gKwkgKiBAZm9yY2U6Cj4gKwkgKgo+ICsJICogSWdub3JlIHRoZSBob3RwbHVnIHN0YXRl
IG9mIHRoZSBjb25uZWN0b3IsIGFuZCBmb3JjZSBpdHMKPiArCSAqIHN0YXRlIHRvIG9uZSBvZiB0
aGUgRFJNX0ZPUkNFXyogdmFsdWVzLgo+ICsJICovCj4gIAllbnVtIGRybV9jb25uZWN0b3JfZm9y
Y2UgZm9yY2U7Cj4gIH07Cj4gIAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
