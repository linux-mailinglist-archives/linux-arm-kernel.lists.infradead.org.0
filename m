Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36421107807
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 20:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aj3YqZnQt8cKrKXSBZFapZ9MjKpgawMsP+W50JsdCFg=; b=NLsMtov5J7ecXj
	4ZAbGPKM2RLrP8ieLKNG0kCnqTPQ3+Bhjn1mRKbuJiJvZlduptHznRaoWaKP0CSFAfO84L7wDdw4d
	CPfFQrQcofGFPx6cwaKg0lmVN1cBOZzWaICGYkHSIfK03DEeOj1dP6iwX8TsLTlCvfDp+J/S8orVI
	b5uhW+AYJsYh/6m/vY3Mp4Rekt6oKGqkNmo4raX3+nu1igingNhwbAoXphbVorh1d+uhqNquzl25y
	nt8mPz0F9dTXQZFP2qreFJy9U19+4/V5Em+Chk2BJww6/z8+2KQcUEQd8dXfSSj1oXZEyLSswWlVu
	inpPQOq1bFc7bhhfufKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYEdG-0000Io-50; Fri, 22 Nov 2019 19:30:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYEd2-0008Lk-Ct
 for linux-arm-kernel@bombadil.infradead.org; Fri, 22 Nov 2019 19:30:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1SjXyrtPi15bheVyzT1vhDWulX5AkEnn6yZ6MR0YELk=; b=BmeGNqF3SE0YKDAqHgcYhNVLZl
 LuSdOsp3lR0fAd2axNcGyMN/zcwDJ/iDnNWSdVJVAYIUAAnSrCeb2/56SFobV2pcPRxQX+4cRsWvI
 /UqGCiZL+7kFMM2KwMOZx6nha193HOl9ZOi9Det/OjArmlLk4ob+IxvR+jZMObtrgqOR5JGgHprwY
 UT7Jmj5tQCwGJR8HOI5Czq/BJQR3MeOspXMFd8bsfAbN2aYU8tE3xWq6XBZAnOkV8rrQEoXD45GND
 p1WWzKCgtegbqiKmmwf7ntEaDCwRlZjimjxRkpm01A7teP3Hhq46yF1zPbtXxZAaK09Bd67B+mVzO
 K3NQEPdg==;
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYEdY-0000m4-Jp
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 19:30:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574450981;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1SjXyrtPi15bheVyzT1vhDWulX5AkEnn6yZ6MR0YELk=;
 b=PmkS+o8JrQGktNGRDHTs7rOlbJN5xhLVPs5zXcbaf3QIfvORvQ1m2JTno3gthwvNeZeb9f
 qSmFPBwJYjVFkYCblhDzKm+6vMOCCRh45GIACfkeBphqWw1Aa8snks/ujNBYVKCWrALmFK
 Nte0zzSatJGXZ6nM+2++Wbh2Xbz3Yac=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-bT4dcWC7OSWEH6ne-8BOzA-1; Fri, 22 Nov 2019 14:29:38 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E168E107ACC7;
 Fri, 22 Nov 2019 19:29:35 +0000 (UTC)
Received: from llong.remote.csb (ovpn-121-153.rdu2.redhat.com [10.10.121.153])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EB7EF5C21B;
 Fri, 22 Nov 2019 19:29:32 +0000 (UTC)
Subject: Re: [PATCH v6 3/5] locking/qspinlock: Introduce CNA into the slow
 path of qspinlock
To: Alex Kogan <alex.kogan@oracle.com>, kbuild test robot <lkp@intel.com>
References: <20191107174622.61718-4-alex.kogan@oracle.com>
 <201911202212.CdyX1gua%lkp@intel.com>
 <B1A1B09F-C44E-45F7-80EB-09E30AEFD358@oracle.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <dc31b3ea-1b03-16d3-1a03-a0a7ad1729d2@redhat.com>
Date: Fri, 22 Nov 2019 14:29:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <B1A1B09F-C44E-45F7-80EB-09E30AEFD358@oracle.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: bT4dcWC7OSWEH6ne-8BOzA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_193036_763568_8D9219DA 
X-CRM114-Status: GOOD (  29.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arch@vger.kernel.org, guohanjun@huawei.com, kbuild-all@lists.01.org,
 arnd@arndb.de, peterz@infradead.org, dave.dice@oracle.com,
 jglauber@marvell.com, x86@kernel.org, will.deacon@arm.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org, rahul.x.yadav@oracle.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com, steven.sistare@oracle.com,
 tglx@linutronix.de, daniel.m.jordan@oracle.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMjIvMTkgMToyOCBQTSwgQWxleCBLb2dhbiB3cm90ZToKPgo+PiBPbiBOb3YgMjAsIDIw
MTksIGF0IDEwOjE2IEFNLCBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4gd3JvdGU6
Cj4+Cj4+IEhpIEFsZXgsCj4+Cj4+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoISBZZXQgc29tZXRo
aW5nIHRvIGltcHJvdmU6Cj4+Cj4+IFthdXRvIGJ1aWxkIHRlc3QgRVJST1Igb24gbGludXMvbWFz
dGVyXQo+PiBbYWxzbyBidWlsZCB0ZXN0IEVSUk9SIG9uIHY1LjQtcmM4IG5leHQtMjAxOTExMjBd
Cj4+IFtpZiB5b3VyIHBhdGNoIGlzIGFwcGxpZWQgdG8gdGhlIHdyb25nIGdpdCB0cmVlLCBwbGVh
c2UgZHJvcCB1cyBhIG5vdGUgdG8gaGVscAo+PiBpbXByb3ZlIHRoZSBzeXN0ZW0uIEJUVywgd2Ug
YWxzbyBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBvcHRpb24gdG8gc3BlY2lmeSB0aGUKPj4gYmFz
ZSB0cmVlIGluIGdpdCBmb3JtYXQtcGF0Y2gsIHBsZWFzZSBzZWUgaHR0cHM6Ly91cmxkZWZlbnNl
LnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19zdGFja292ZXJmbG93LmNvbV9hXzM3
NDA2OTgyJmQ9RHdJQkFnJmM9Um9QMVl1bUNYQ2dhV0h2bFpZUjhQWmg4QnY3cUlyTVVCNjVlYXBJ
X0puRSZyPUh2aGszRjRvbWRDay1HRTFQVE9tM0tuMEE3QXBXT1oyYVpMVHVWeEZLNGsmbT1CeEV0
MTIzMmNjR2xNR0RpbkFCMFFBVWFURnlsLW01c3A0Qy1jckhqcG9VJnM9T3p6UXFnNGZURFY1NVgt
eTR2Ym5HZVhvSmFQSFN2T19FZnJVUW5NVlJIYyZlPSBdCj4+Cj4+IHVybDogICAgaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0dHBzLTNBX19naXRodWIuY29tXzBk
YXktMkRjaV9saW51eF9jb21taXRzX0FsZXgtMkRLb2dhbl9sb2NraW5nLTJEcXNwaW5sb2NrLTJE
UmVuYW1lLTJEbWNzLTJEbG9jay0yRHVubG9jay0yRG1hY3Jvcy0yRGFuZC0yRG1ha2UtMkR0aGVt
LTJEbW9yZS0yRGdlbmVyaWNfMjAxOTExMDktMkQxODA1MzUmZD1Ed0lCQWcmYz1Sb1AxWXVtQ1hD
Z2FXSHZsWllSOFBaaDhCdjdxSXJNVUI2NWVhcElfSm5FJnI9SHZoazNGNG9tZENrLUdFMVBUT20z
S24wQTdBcFdPWjJhWkxUdVZ4Rks0ayZtPUJ4RXQxMjMyY2NHbE1HRGluQUIwUUFVYVRGeWwtbTVz
cDRDLWNySGpwb1Umcz11RTdaZVlYT0ZpdTA5UFVWam5DbnRFZTJyUjV4X1F4UzZkRVc5dHdwZm9r
JmU9IAo+PiBiYXNlOiAgIGh0dHBzOi8vdXJsZGVmZW5zZS5wcm9vZnBvaW50LmNvbS92Mi91cmw/
dT1odHRwcy0zQV9fZ2l0Lmtlcm5lbC5vcmdfcHViX3NjbV9saW51eF9rZXJuZWxfZ2l0X3RvcnZh
bGRzX2xpbnV4LmdpdCZkPUR3SUJBZyZjPVJvUDFZdW1DWENnYVdIdmxaWVI4UFpoOEJ2N3FJck1V
QjY1ZWFwSV9KbkUmcj1IdmhrM0Y0b21kQ2stR0UxUFRPbTNLbjBBN0FwV09aMmFaTFR1VnhGSzRr
Jm09QnhFdDEyMzJjY0dsTUdEaW5BQjBRQVVhVEZ5bC1tNXNwNEMtY3JIanBvVSZzPWFBS3h1WGNf
YzdPRjBmZmlvUWZWc0lCNkgtNFNkOVBZeFNNN2t1cm0yaWcmZT0gIDAwNThiMGE1MDZlNDBkOWEy
YzYyMDE1ZmU5MmViNjRhNDRkNzhjZDkKPj4gY29uZmlnOiBpMzg2LXJhbmRjb25maWctZjAwMy0y
MDE5MTEyMCAoYXR0YWNoZWQgYXMgLmNvbmZpZykKPj4gY29tcGlsZXI6IGdjYy03IChEZWJpYW4g
Ny40LjAtMTQpIDcuNC4wCj4+IHJlcHJvZHVjZToKPj4gICAgICAgICMgc2F2ZSB0aGUgYXR0YWNo
ZWQgLmNvbmZpZyB0byBsaW51eCBidWlsZCB0cmVlCj4+ICAgICAgICBtYWtlIEFSQ0g9aTM4NiAK
Pj4KPj4gSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZwo+PiBS
ZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4+Cj4+IEFsbCBl
cnJvci93YXJuaW5ncyAobmV3IG9uZXMgcHJlZml4ZWQgYnkgPj4pOgo+Pgo+PiAgIEluIGZpbGUg
aW5jbHVkZWQgZnJvbSBpbmNsdWRlL2xpbnV4L2V4cG9ydC5oOjQyOjAsCj4+ICAgICAgICAgICAg
ICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvbGlua2FnZS5oOjcsCj4+ICAgICAgICAgICAgICAg
ICAgICBmcm9tIGluY2x1ZGUvbGludXgva2VybmVsLmg6OCwKPj4gICAgICAgICAgICAgICAgICAg
IGZyb20gaW5jbHVkZS9saW51eC9saXN0Lmg6OSwKPj4gICAgICAgICAgICAgICAgICAgIGZyb20g
aW5jbHVkZS9saW51eC9zbXAuaDoxMiwKPj4gICAgICAgICAgICAgICAgICAgIGZyb20ga2VybmVs
L2xvY2tpbmcvcXNwaW5sb2NrLmM6MTY6Cj4+ICAga2VybmVsL2xvY2tpbmcvcXNwaW5sb2NrX2Nu
YS5oOiBJbiBmdW5jdGlvbiAnY25hX2luaXRfbm9kZXMnOgo+Pj4+IGluY2x1ZGUvbGludXgvY29t
cGlsZXIuaDozNTA6Mzg6IGVycm9yOiBjYWxsIHRvICdfX2NvbXBpbGV0aW1lX2Fzc2VydF84MCcg
ZGVjbGFyZWQgd2l0aCBhdHRyaWJ1dGUgZXJyb3I6IEJVSUxEX0JVR19PTiBmYWlsZWQ6IHNpemVv
ZihzdHJ1Y3QgY25hX25vZGUpID4gc2l6ZW9mKHN0cnVjdCBxbm9kZSkKPj4gICAgIF9jb21waWxl
dGltZV9hc3NlcnQoY29uZGl0aW9uLCBtc2csIF9fY29tcGlsZXRpbWVfYXNzZXJ0XywgX19MSU5F
X18pCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4+ICAgaW5j
bHVkZS9saW51eC9jb21waWxlci5oOjMzMTo0OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3Jv
ICdfX2NvbXBpbGV0aW1lX2Fzc2VydCcKPj4gICAgICAgcHJlZml4ICMjIHN1ZmZpeCgpOyAgICBc
Cj4+ICAgICAgIF5+fn5+fgo+PiAgIGluY2x1ZGUvbGludXgvY29tcGlsZXIuaDozNTA6Mjogbm90
ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdfY29tcGlsZXRpbWVfYXNzZXJ0Jwo+PiAgICAgX2Nv
bXBpbGV0aW1lX2Fzc2VydChjb25kaXRpb24sIG1zZywgX19jb21waWxldGltZV9hc3NlcnRfLCBf
X0xJTkVfXykKPj4gICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KPj4gICBpbmNsdWRlL2xpbnV4L2J1
aWxkX2J1Zy5oOjM5OjM3OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ2NvbXBpbGV0aW1l
X2Fzc2VydCcKPj4gICAgI2RlZmluZSBCVUlMRF9CVUdfT05fTVNHKGNvbmQsIG1zZykgY29tcGls
ZXRpbWVfYXNzZXJ0KCEoY29uZCksIG1zZykKPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+Cj4+ICAgaW5jbHVkZS9saW51eC9idWlsZF9i
dWcuaDo1MDoyOiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8gJ0JVSUxEX0JVR19PTl9NU0cn
Cj4+ICAgICBCVUlMRF9CVUdfT05fTVNHKGNvbmRpdGlvbiwgIkJVSUxEX0JVR19PTiBmYWlsZWQ6
ICIgI2NvbmRpdGlvbikKPj4gICAgIF5+fn5+fn5+fn5+fn5+fn4KPj4+PiBrZXJuZWwvbG9ja2lu
Zy9xc3BpbmxvY2tfY25hLmg6ODA6Mjogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvICdCVUlM
RF9CVUdfT04nCj4+ICAgICBCVUlMRF9CVUdfT04oc2l6ZW9mKHN0cnVjdCBjbmFfbm9kZSkgPiBz
aXplb2Yoc3RydWN0IHFub2RlKSk7Cj4+ICAgICBefn5+fn5+fn5+fn4KPiBDb25zaWRlciB0aGUg
Zm9sbG93aW5nIGRlZmluaXRpb24gb2YgcW5vZGU6Cj4KPiBzdHJ1Y3QgcW5vZGUgewo+IAlzdHJ1
Y3QgbWNzX3NwaW5sb2NrIG1jczsKPiAjaWYgZGVmaW5lZChDT05GSUdfUEFSQVZJUlRfU1BJTkxP
Q0tTKSB8fCBkZWZpbmVkKENPTkZJR19OVU1BX0FXQVJFX1NQSU5MT0NLUykKPiAJbG9uZyByZXNl
cnZlZFsyXTsKPiAjZW5kaWYKPiB9Owo+Cj4gYW5kIHRoaXMgaXMgaG93IGNuYV9ub2RlIGlzIGRl
ZmluZWQ6Cj4KPiBzdHJ1Y3QgY25hX25vZGUgewo+IAlzdHJ1Y3QgbWNzX3NwaW5sb2NrCW1jczsK
PiAJaW50CQkJbnVtYV9ub2RlOwo+IAl1MzIJCQllbmNvZGVkX3RhaWw7Cj4gCXUzMgkJCXByZV9z
Y2FuX3Jlc3VsdDsgLyogMCwgMSwgMiBvciBlbmNvZGVkIHRhaWwgKi8KPiAJdTMyCQkJaW50cmFf
Y291bnQ7Cj4gfTsKPgo+IFNpbmNlIGxvbmcgaXMgMzIgYml0IG9uIGkzODYsIHdlIGdldCB0aGUg
Y29tcGlsYXRpb24gZXJyb3IgYWJvdmUuCj4KPiBXZSBjYW4gdHJ5IGFuZCBzcXVlZXplIENOQS1z
cGVjaWZpYyBmaWVsZHMgaW50byA2NCBiaXQgb24gaTM4NiAob3IgYW55IDMyYml0IAo+IGFyY2hp
dGVjdHVyZSBmb3IgdGhhdCBtYXR0ZXIpLiBOb3RlIHRoYXQgYW4gZW5jb2RlZCB0YWlsIHBvaW50
ZXIgcmVxdWlyZXMgdXAgCj4gdG8gMjQgYml0cywgYW5kIHdlIGhhdmUgdHdvIG9mIHRob3NlLiBX
ZSB3b3VsZCB3YW50IGRpZmZlcmVudCBmaWVsZCBlbmNvZGluZ3MgCj4gZm9yIDMyIHZzIDY0Yml0
IGFyY2hpdGVjdHVyZXMsIGFuZCB0aGlzIGFsbCB3aWxsIGJlIHF1aXRlIHVnbHkuCj4KPiBTbyBp
bnN0ZWFkIHdlIHNob3VsZCBwcm9iYWJseSBlaXRoZXIgY2hhbmdlIHRoZSBkZWZpbml0aW9uIG9m
IEByZXNlcnZlZCBpbiBxbm9kZSAKPiB0byBsb25nIGxvbmcsIG9yIHBlcmhhcHMgZGlzYWJsZSBD
TkEgb24gMzJiaXQgYXJjaGl0ZWN0dXJlcyBhbHRvZ2V0aGVyPwo+IEkgd291bGQgY2VydGFpbmx5
IHByZWZlciB0aGUgZm9ybWVyLCBlc3BlY2lhbGx5IGFzIGl0IHJlcXVpcmVzIHRoZSBsZWFzdCBh
bW91bnQgCj4gb2YgY29kZS9jb25maWcgY2hhbmdlcy4KPgo+IEFueSBvYmplY3Rpb25zIC8gdGhv
dWdodHM/Cj4KPiBUaGFua3MsCj4g4oCUIEFsZXgKPgpUaGUgZWFzeSB3YXkgb3V0IGlzIHRvIHJl
c3RyaWN0IE5VTUEgcXNwaW5sb2NrIHRvIDY0LWJpdCBvbmx5LiBUaGVyZQphcmVuJ3QgdGhhdCBt
YW55IDMyLWJpdCBOVU1BIHN5c3RlbXMgb3V0IHRoZXJlIHRoYXQgd2UgaGF2ZSB0byB3b3JyeSBh
Ym91dC4KCkp1c3QgYWRkICJkZXBlbmRzIG9uIDY0QklUIiB0byB0aGUgY29uZmlnIGVudHJ5LgoK
Q2hlZXJzLApMb25nbWFuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
