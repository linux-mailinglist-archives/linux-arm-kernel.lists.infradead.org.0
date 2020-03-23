Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6039718F14C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 09:54:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OGEcoi1YpJLXcXxnSR7oSCgnbLlZwOAWgJBhP5gvQf4=; b=rkIUZGNjrGQy7JcRn2hnmwS7q
	hVvlT9LMFpfYfZPF3gnZQ6GLuBZNvr4InroG2Qo6MyBV20Cv1aOpEYkyaR3/fWJdgDd12EVSNW55p
	o50LH9vAOe7GscVHnIEB+Sf7oV3MjJrsCnU2FTkFOY0NpGrAE3RDXN5hqjkUKvmDJwhlV4ZAXgd8w
	OsIxmmsVev1lQRlqwk991JhXy5y6TDBhpuM+lptWUPjdnaR1jXF7umUwR7NJC6AdeGuSQnvesn5OF
	8UWvACrqobTDt+F9WzLKCZgN9uNz4V8hqeamlUo8j11m7ABpANEIhwJOnns63mr7ew4zxl/nZyuaW
	MgdtuVRbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGIr3-00072h-Gl; Mon, 23 Mar 2020 08:54:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGIqu-00071n-AP
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 08:54:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B627631B;
 Mon, 23 Mar 2020 01:54:31 -0700 (PDT)
Received: from [10.57.24.152] (unknown [10.57.24.152])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D41E63F792;
 Mon, 23 Mar 2020 01:54:30 -0700 (PDT)
Subject: Re: [PATCH v5 00/13] SCMI Notifications Core Support
To: Lukasz Luba <lukasz.luba@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200316150334.47463-1-cristian.marussi@arm.com>
 <e51598b5-2c7b-56f2-4426-9cce3d5d3d52@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <00e588ec-9bc7-88e2-5e57-e0c223450693@arm.com>
Date: Mon, 23 Mar 2020 08:54:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <e51598b5-2c7b-56f2-4426-9cce3d5d3d52@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_015432_449742_01741C63 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTHVrYXN6CgpPbiAzLzE4LzIwIDk6MDEgQU0sIEx1a2FzeiBMdWJhIHdyb3RlOgo+IEhpIENy
aXN0aWFuLAo+IAo+IE9uIDMvMTYvMjAgMzowMyBQTSwgQ3Jpc3RpYW4gTWFydXNzaSB3cm90ZToK
Pj4gSGkgYWxsLAo+Pgo+PiB0aGlzIHNlcmllcyB3YW50cyB0byBpbnRyb2R1Y2UgU0NNSSBOb3Rp
ZmljYXRpb24gU3VwcG9ydCwgYnVpbHQgb24gdG9wIG9mCj4+IHRoZSBzdGFuZGFyZCBLZXJuZWwg
bm90aWZpY2F0aW9uIGNoYWluIHN1YnN5c3RlbS4KPj4KPj4gQXQgaW5pdGlhbGl6YXRpb24gdGlt
ZSBlYWNoIFNDTUkgUHJvdG9jb2wgdGFrZXMgY2FyZSB0byByZWdpc3RlciB3aXRoIHRoZQo+PiBu
ZXcgU0NNSSBub3RpZmljYXRpb24gY29yZSB0aGUgc2V0IG9mIGl0cyBvd24gZXZlbnRzIHdoaWNo
IGl0IGludGVuZHMgdG8KPj4gc3VwcG9ydC4KPj4KPj4gVXNpbmcgdGhlIEFQSSBleHBvc2VkIHZp
YSBzY21pX2hhbmRsZS5ub3RpZnlfb3BzIGEgS2VybmVsIHVzZXIgY2FuIHJlZ2lzdGVyCj4+IGl0
cyBvd24gbm90aWZpZXJfdCBjYWxsYmFjayAodmlhIGEgbm90aWZpZXJfYmxvY2sgYXMgdXN1YWwp
IGFnYWluc3QgYW55Cj4+IHJlZ2lzdGVyZWQgZXZlbnQgYXMgaWRlbnRpZmllZCBieSB0aGUgdHVw
bGU6Cj4+Cj4+IMKgwqDCoMKgwqDCoMKgIChwcm90b19pZCwgZXZlbnRfaWQsIHNyY19pZCkKPj4K
Pj4gd2hlcmUgc3JjX2lkIHJlcHJlc2VudHMgYSBnZW5lcmljIHNvdXJjZSBpZGVudGlmaWVyIHdo
aWNoIGlzIHByb3RvY29sCj4+IGRlcGVuZGVudCBsaWtlIGRvbWFpbl9pZCwgcGVyZm9ybWFuY2Vf
aWQsIHNlbnNvcl9pZCBhbmQgc28gZm9ydGguCj4+ICh1c2VycyBjYW4gYW55d2F5IGRvIE5PVCBw
cm92aWRlIGFueSBzcmNfaWQsIGFuZCBzdWJzY3JpYmUgaW5zdGVhZCB0byBBTEwKPj4gwqAgdGhl
IGV4aXN0aW5nIChpZiBhbnkpIHNyY19pZCBzb3VyY2VzIGZvciB0aGF0IHByb3RvX2lkL2V2dF9p
ZCBjb21iaW5hdGlvbikKPj4KPj4gRWFjaCBvZiB0aGUgYWJvdmUgdHVwbGUtc3BlY2lmaWVkIGV2
ZW50IHdpbGwgYmUgc2VydmVkIG9uIGl0cyBvd24gZGVkaWNhdGVkCj4+IGJsb2NraW5nIG5vdGlm
aWNhdGlvbiBjaGFpbiwgZHluYW1pY2FsbHkgYWxsb2NhdGVkIG9uLWRlbWFuZCB3aGVuIGF0IGxl
YXN0Cj4+IG9uZSB1c2VyIGhhcyBzaG93biBpbnRlcmVzdCBvbiB0aGF0IGV2ZW50Lgo+Pgo+PiBV
cG9uIGEgbm90aWZpY2F0aW9uIGRlbGl2ZXJ5IGFsbCB0aGUgdXNlcnMnIHJlZ2lzdGVyZWQgbm90
aWZpZXJfdCBjYWxsYmFja3MKPj4gd2lsbCBiZSBpbiB0dXJuIGludm9rZWQgYW5kIGZlZCB3aXRo
IHRoZSBldmVudF9pZCBhcyBAYWN0aW9uIHBhcmFtIGFuZCBhCj4+IGdlbmVyYXRlZCBjdXN0b20g
cGVyLWV2ZW50IHN0cnVjdCBfcmVwb3J0IGFzIEBkYXRhIHBhcmFtLgo+PiAoYXMgaW4gaW5jbHVk
ZS9saW51eC9zY21pX3Byb3RvY29sLmgpCj4+Cj4+IFRoZSBmaW5hbCBzdGVwIG9mIG5vdGlmaWNh
dGlvbiBkZWxpdmVyeSB2aWEgdXNlcnMnIGNhbGxiYWNrIGludm9jYXRpb24gaXMKPj4gaW5zdGVh
ZCBkZWxlZ2F0ZWQgdG8gYSBwb29sIG9mIGRlZmVycmVkIHdvcmtlcnMgKEtlcm5lbCBjbXdxKTog
ZWFjaAo+PiBTQ01JIHByb3RvY29sIGhhcyBpdHMgb3duIGRlZGljYXRlZCB3b3JrZXIgYW5kIGRl
ZGljYXRlZCBxdWV1ZSB0byBwdXNoCj4+IGV2ZW50cyBmcm9tIHRoZSByeCBJU1IgdG8gdGhlIHdv
cmtlci4KPj4KPiAKPiBDb3VsZCB5b3UgZ2l2ZSBhbiBleGFtcGxlIGhvdyB0aGUgbm90aWZpY2F0
aW9uIHdvdWxkIGJlIGRlbGl2ZXJlZAo+IGZ1cnRoZXIgdG8gdGhlIHVwcGVyIGxheWVycywgbGlr
ZSBod21vbiBkcml2ZXIsIGNwdWZyZXEgb3IgdGhlcm1hbD8KClN1cmUuIEkgdGVzdGVkIHJlZ2lz
dGVyaW5nIHZhcmlvdXMgY2FsbGJhY2tzIGFnYWluc3QgUEVSRiBldmVudHMgKHNpbmNlIHRoZXkn
cmUKd2hhdCBJIGhhdmUgYXZhaWxhYmxlIG9uIG15IHBsYXRmb3JtIGltcGxlbWVudGF0aW9uKTsg
SSB1c2VkIHByb2JlKCkgaW4gc2NtaS1nZW5wZAphbmQgc2NtaS1jcHVmcmVxIHRvIHJlZ2lzdGVy
IGdlbmVyaWMgdGVzdGluZyBjYWxsYmFja3MgbGlrZToKCnNjbWlfY3B1ZnJxX3Byb2JlKCkKCi4u
LgoJc3JjX2lkID0gMHgwMDsKCWhhbmRsZS0+bm90aWZ5X29wcy0+cmVnaXN0ZXJfZXZlbnRfbm90
aWZpZXIoaGFuZGxlLCBTQ01JX1BST1RPQ09MX1BFUkYsCgkJCQkJCSAgICAweDEsICZzcmNfaWQs
ICZteV9jcHVmcmVxX25iKTsKCmFuZCByZW1vdmluZyBzaW1pbGFybHkgaW4gcmVtb3ZlKCkuCgpJ
J2xsIHNlbmQgeW91IG15IGRlYnVnIHBhdGNoZXMgdGhhdCBpbmNsdWRlcyBnZW5wZC9jcHVmcmVx
IGNhbGxiYWNrcyByZWdpc3RyYXRpb24gYW5kCmFuIGFkZGl0aW9uYWwgZHVtbXkgZHJpdmVyIHRo
YXQganVzdCByZWdpc3RlcnMgcGVyZiBjYWxsYmFja3Mgc28geW91IGNhbiBoYXZlIGEgYmV0dGVy
IGlkZWEKb2YgdGhlIGludGVuZGVkIHVzYWdlLgoKPiBGb3IgZXhhbXBsZSwgZm9yIHNlbnNvciBw
cm90b2NvbCB3aGljaCBkZWxpdmVycyBldmVudAo+IFNFTlNPUl9UUklQX1BPSU5UX0VWRU5UIGlu
ZGljYXRpbmcgYSB0cmlwIHBvaW50IHdhcyBjcm9zc2VkLgo+CgpSZWdhcmRpbmcgc2Vuc29ycyBp
dCBjb3VsZCBiZSBzb21ldGhpbmcgbGlrZToKCgoJc2Vuc29yX2lkID0gMHgwMDsKCgloYW5kbGUt
Pm5vdGlmeV9vcHMtPnJlZ2lzdGVyX2V2ZW50X25vdGlmaWVyKGhhbmRsZSwgU0NNSV9QUk9UT0NP
TF9TRU5TT1IsCgkJCQkJCSAgICAweDAsICZzZW5zb3JfaWQsICZteV9zZW5zb3JfbmIpOwoKCWhh
bmRsZS0+c2Vuc29yX29wcy0+dHJpcF9wb2ludF9jb25maWcoaGFuZGxlLCBzZW5zb3JfaWQsIDAs
IDEwMDAwKTsKICAKTm90ZSB0aGF0IHRoZSBub3RpZmljYXRpb24gY29yZSB0YWtlcyBjYXJlIG9u
IGl0cyBvd24gb2YgZW5hYmxpbmcgdGhlIHNwZWNpZmljIGV2ZW50cyBnZW5lcmF0aW9uCndoZW4g
eW91IHJlZ2lzdGVyIHRoZSBmaXJzdCBjYWxsYmFjayBmb3IgYSBzcGVjaWZpYyBldmVudCBhcyBp
ZGVudGlmaWVkIGJ5IChwcm90b19pZCwgZXZlbnRfaWQsIHNyY19pZCkKYnV0IGluIHRoZSBjYXNl
IG9mIHRoZSBzZW5zb3IgcHJvdG9jb2wgeW91J2xsIG5lZWQgdG8gZXhwbGljaXRseSBzZXR1cCB0
aGUgdHJpcF9wb2ludCB0b28uCgpBcyBhIHJlc3VsdCB3aGVuIHRoZSB0cmlwIHBvaW50IGlzIGNy
b3NzZWQgeW91J2xsIHJlY2VpdmUgaW4geW91ciBjYWxsYmFjayBhIHNlbnNvcl9yZXBvcnQKKGFz
IGluIGluY2x1ZGUvbGludXgvc2NtaV9wcm90b2NvbC5oKSBhcyB5b3VyIGRhdGEgYXJnLgoKSSBq
dXN0IHJlYWxpemVkIHRoYXQgYmVpbmcgdGhlIG5vdGlmaWNhdGlvbiBlbmFibGUgbWV0aG9kICh0
cmlwX25vdGlmeSkgYWxzbyBleHBvc2VkIGJ5IHRoZSBvcHMgZGlyZWN0bHksCkkgc2hvdWxkIHBy
b2JhYmx5IGFkZCBzb21lIHNvcnQgb2YgYWxlcnQgZm9yIGEgdXNlci4uLnNpbmNlIGl0IGlzIG5v
dCBtZWFudCB0byBiZSB1c2VkIGRpcmVjdGx5IHdoZW4KdGhlIG5vdGlmaWNhdGlvbiBzdWJzeXN0
ZW0gaXMgYmVpbmcgdXNlZC4uLi5JJ2xsIHRoaW5rIGFib3V0IHRoaXMgcGl0ZmFsbC4KCj4gV291
bGQgaXQgYmUgcG9zc2libGUgZm9yOgo+IGRyaXZlcnMvaHdtb24vc2NtaS1od21vbi5jCj4gdG8g
Z2V0IHRoaXMgdGVtcGVyYXR1cmUgZXZlbnRzIGxpa2UgYW4gaW50ZXJydXB0Pwo+IAoKU29ycnkg
SSBkaWQgbm90IGdldCB3aGF0IHlvdSBtZWFuIGhlcmUuCgpSZWdhcmRzCgpDcmlzdGlhbgoKPiBJ
IGNvdWxkbid0IGZpbmQgaXQgaW4gdGhlIGltcGxlbWVudGF0aW9uIG9mIHRoZSByZWdpc3RlcmVk
IGhhbmRsZXJzLgo+IAo+IFJlZ2FyZHMsCj4gTHVrYXN6CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
