Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4E618CC63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AngFr9YD9dHhDE2vnCPzz/hSpiFP4NQDIznCrwBptno=; b=sj4VKFBrtPoYxm
	mV60sIqy5DhZinaLaFXc8AQgKAAGzy/SR4Zct7yTEB5sh5s6iLgZUclfpf4Viu9AIyPBqmszv1sYG
	mm+XGP9swoDq37kuyvqFzjbO3XBxhdP49+CFdVLFXeNBGYNXtHkNrR0EqGgdbNJBoOU3jbKLrLXnv
	lwbSGNwMTxm6XyHU5IQ5UyVeUvWWyrfCBTcRt+hPfdYZDeTF8VdagS+a0BWTuZfnpht1p++wmQGl6
	OlTGUe96YJOz3LnLauW/VOM3A1RoX18lANExj7u3N5WxhB4lwy8wAqNnSjQzo9X7kn4YbjbXHtEWo
	9ChgfWhcyGJM9hth735Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFX2-0007NG-S4; Fri, 20 Mar 2020 11:09:40 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFWu-0007MX-81
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:09:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584702571;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FG3rV03ORdL5dZYsmjHuCpupbanGtM2DORWeRbjL06s=;
 b=VM8sXU0c+s9qB4zOwpo+3yhAJ6rkGKLuYFS2xh/EW5Usp6Y4/O5z48iX2gPu33ajsr12Pn
 dLfoZ6RTRN3ismHYF88IopTp0MIJGm2ODCvLk3TQ2wBOh/pyJrzrd2h/iC9EnMkRmgFiOT
 8R82t0SwLkDp+2QmGTK0RtVJr++6TpE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-368-XhybzQHaNwiNF6Rbkf4nkw-1; Fri, 20 Mar 2020 07:09:29 -0400
X-MC-Unique: XhybzQHaNwiNF6Rbkf4nkw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4D3D189D6C3;
 Fri, 20 Mar 2020 11:09:26 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B60AD60C18;
 Fri, 20 Mar 2020 11:09:22 +0000 (UTC)
Subject: Re: [PATCH v5 20/23] KVM: arm64: GICv4.1: Plumb SGI implementation
 selection in the distributor
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-21-maz@kernel.org>
 <72832f51-bbde-8502-3e03-189ac20a0143@huawei.com>
 <4a06fae9c93e10351276d173747d17f4@kernel.org>
 <49995ec9-3970-1f62-5dfc-118563ca00fc@redhat.com>
 <b98855a1-6300-d323-80f6-82d3b9854290@huawei.com>
 <e60578b5-910c-0355-d231-29322900679d@redhat.com>
 <dfaf8a1b7c7fd8b769a244a8a779d952@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <02350520-8591-c62c-e7fa-33db30c25b96@redhat.com>
Date: Fri, 20 Mar 2020 12:09:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <dfaf8a1b7c7fd8b769a244a8a779d952@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_040932_361184_57CCF1CE 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Robert Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDMvMjAvMjAgMTA6NDYgQU0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTAzLTIwIDA3OjU5LCBBdWdlciBFcmljIHdyb3RlOgo+PiBIaSBaZW5naHVpLAo+Pgo+PiBP
biAzLzIwLzIwIDQ6MDggQU0sIFplbmdodWkgWXUgd3JvdGU6Cj4+PiBPbiAyMDIwLzMvMjAgNDoz
OCwgQXVnZXIgRXJpYyB3cm90ZToKPj4+PiBIaSBNYXJjLAo+Pj4+IE9uIDMvMTkvMjAgMToxMCBQ
TSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+PiBIaSBaZW5naHVpLAo+Pj4+Pgo+Pj4+PiBPbiAy
MDIwLTAzLTE4IDA2OjM0LCBaZW5naHVpIFl1IHdyb3RlOgo+Pj4+Pj4gSGkgTWFyYywKPj4+Pj4+
Cj4+Pj4+PiBPbiAyMDIwLzMvNSA0OjMzLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4+Pj4+Pj4gVGhl
IEdJQ3Y0LjEgYXJjaGl0ZWN0dXJlIGdpdmVzIHRoZSBoeXBlcnZpc29yIHRoZSBvcHRpb24gdG8g
bGV0Cj4+Pj4+Pj4gdGhlIGd1ZXN0IGNob29zZSB3aGV0aGVyIGl0IHdhbnRzIHRoZSBnb29kIG9s
ZCBTR0lzIHdpdGggYW4KPj4+Pj4+PiBhY3RpdmUgc3RhdGUsIG9yIHRoZSBuZXcsIEhXLWJhc2Vk
IG9uZXMgdGhhdCBkbyBub3QgaGF2ZSBvbmUuCj4+Pj4+Pj4KPj4+Pj4+PiBGb3IgdGhpcywgcGx1
bWIgdGhlIGNvbmZpZ3VyYXRpb24gb2YgU0dJcyBpbnRvIHRoZSBHSUN2MyBNTUlPCj4+Pj4+Pj4g
aGFuZGxpbmcsIHByZXNlbnQgdGhlIEdJQ0RfVFlQRVIyLm5BU1NHSWNhcCB0byB0aGUgZ3Vlc3Qs
Cj4+Pj4+Pj4gYW5kIGhhbmRsZSB0aGUgR0lDRF9DVExSLm5BU1NHSXJlcSBzZXR0aW5nLgo+Pj4+
Pj4+Cj4+Pj4+Pj4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0byBkZWFsIHdpdGggdGhlIHJlc3RvcmUg
b2YgYSBndWVzdCwgYWxzbwo+Pj4+Pj4+IGFwcGx5IHRoZSBHSUNEX0NUTFIubkFTU0dJcmVxIHNl
dHRpbmcgYXQgZmlyc3QgcnVuIHNvIHRoYXQgd2UKPj4+Pj4+PiBjYW4gbW92ZSB0aGUgcmVzdG9y
ZWQgU0dJcyB0byB0aGUgSFcgaWYgdGhhdCdzIHdoYXQgdGhlIGd1ZXN0Cj4+Pj4+Pj4gaGFkIHNl
bGVjdGVkIGluIGEgcHJldmlvdXMgbGlmZS4KPj4+Pj4+Cj4+Pj4+PiBJJ20gb2theSB3aXRoIHRo
ZSByZXN0b3JlIHBhdGguwqAgQnV0IGl0IHNlZW1zIHRoYXQgd2Ugc3RpbGwgZmFpbCB0bwo+Pj4+
Pj4gc2F2ZSB0aGUgcGVuZGluZyBzdGF0ZSBvZiB2U0dJIC0gc29mdHdhcmUgcGVuZGluZ19sYXRj
aCBvZiBIVy1iYXNlZAo+Pj4+Pj4gdlNHSXMgd2lsbCBub3QgYmUgdXBkYXRlZCAoYW5kIGFsd2F5
cyBiZSBmYWxzZSkgYmVjYXVzZSB3ZSBkaXJlY3RseQo+Pj4+Pj4gaW5qZWN0IHRoZW0gdGhyb3Vn
aCBJVFMsIHNvIHZnaWNfdjNfdWFjY2Vzc19yZWFkX3BlbmRpbmcoKSBjYW4ndAo+Pj4+Pj4gdGVs
bCB0aGUgY29ycmVjdCBwZW5kaW5nIHN0YXRlIHRvIHVzZXItc3BhY2UgKHRoZSBjb3JyZWN0IG9u
ZSBzaG91bGQKPj4+Pj4+IGJlIGxhdGNoZWQgaW4gSFcpLgo+Pj4+Pj4KPj4+Pj4+IEl0IHdvdWxk
IGJlIGdvb2QgaWYgd2UgY2FuIHN5bmMgdGhlIGhhcmR3YXJlIHN0YXRlIGludG8gcGVuZGluZ19s
YXRjaAo+Pj4+Pj4gYXQgYW4gYXBwcm9wcmlhdGUgdGltZSAoanVzdCBiZWZvcmUgc2F2ZSksIGJ1
dCBub3Qgc3VyZSBpZiB3ZSBjYW4uLi4KPj4+Pj4KPj4+Pj4gVGhlIHByb2JsZW0gaXMgdG8gZmlu
ZCB0aGUgImFwcHJvcHJpYXRlIHRpbWUiLiBJdCB3b3VsZCByZXF1aXJlIHRvCj4+Pj4+IGRlZmlu
ZQo+Pj4+PiBhIHBvaW50IGluIHRoZSBzYXZlIHNlcXVlbmNlIHdoZXJlIHdlIHRyYW5zaXRpb24g
dGhlIHN0YXRlIGZyb20gSFcgdG8KPj4+Pj4gU1cuIEknbSBub3Qga2VlbiBvbiBhZGRpbmcgbW9y
ZSBzdGF0ZSB0aGFuIHdlIGFscmVhZHkgaGF2ZS4KPj4+Pgo+Pj4+IG1heSBiZSB3ZSBjb3VsZCB1
c2UgYSBkZWRpY2F0ZWQgZGV2aWNlIGdyb3VwL2F0dHIgYXMgd2UgaGF2ZSBmb3IgdGhlCj4+Pj4g
SVRTCj4+Pj4gc2F2ZSB0YWJsZXM/IHRoZSB1c2VyIHNwYWNlIHdvdWxkIGNob29zZS4KPj4+Cj4+
PiBJdCBtZWFucyB0aGF0IHVzZXJzcGFjZSB3aWxsIGJlIGF3YXJlIG9mIHNvbWUgZm9ybSBvZiBH
SUN2NC4xIGRldGFpbHMKPj4+IChlLmcuLCBnZXQvc2V0IHZTR0kgc3RhdGUgYXQgSFcgbGV2ZWwp
IHRoYXQgS1ZNIGhhcyBpbXBsZW1lbnRlZC4KPj4+IElzIGl0IHNvbWV0aGluZyB0aGF0IHVzZXJz
cGFjZSByZXF1aXJlZCB0byBrbm93PyBJJ20gb3BlbiB0byB0aGlzIDstKQo+PiBOb3Qgc3VyZSB3
ZSB3b3VsZCBiZSBvYmxpZ2VkIHRvIGV4cG9zZSBmaW5lIGRldGFpbHMuIFRoaXMgY291bGQgYmUg
YQo+PiBnZW5lcmljIHNhdmUvcmVzdG9yZSBkZXZpY2UgZ3JvdXAvYXR0ciB3aG9zZSBpbXBsZW1l
bnRhdGlvbiBhdCBLVk0gbGV2ZWwKPj4gY291bGQgZGlmZmVyIGRlcGVuZGluZyBvbiB0aGUgdmVy
c2lvbiBiZWluZyBpbXBsZW1lbnRlZCwgbm8/Cj4gCj4gV2hhdCBwcmV2ZW50cyB1cyBmcm9tIGhv
b2tpbmcgdGhpcyBzeW5jaHJvbml6YXRpb24gdG8gdGhlIGN1cnJlbnQgYmVoYXZpb3VyCj4gb2Yg
S1ZNX0RFVl9BUk1fVkdJQ19TQVZFX1BFTkRJTkdfVEFCTEVTPyBBZnRlciBhbGwsIHRoaXMgaXMg
YWxyZWFkeSB0aGUKPiBwb2ludAo+IHdoZXJlIHdlIHN5bmNocm9uaXplIHRoZSBLVk0gdmlldyBv
ZiB0aGUgcGVuZGluZyBzdGF0ZSB3aXRoIHVzZXJzcGFjZS4KPiBIZXJlLCBpdCdzIGp1c3QgYSBt
YXR0ZXIgb2YgcGlja2luZyB0aGUgaW5mb3JtYXRpb24gZnJvbSBzb21lIG90aGVyIHBsYWNlCj4g
KGkuZS4gdGhlIGhvc3QncyB2aXJ0dWFsIHBlbmRpbmcgdGFibGUpLgphZ3JlZWQKPiAKPiBUaGUg
dGhpbmcgd2UgbmVlZCB0aG91Z2ggaXMgdGhlIGd1YXJhbnRlZSB0aGF0IHRoZSBndWVzdCBpc24n
dCBnb2luZyB0bwo+IGdldCBtb3JlIHZMUElzIGF0IHRoYXQgc3RhZ2UsIGFzIHRoZXkgd291bGQg
YmUgbG9zdC4gVGhpcyBlZmZlY3RpdmVseQo+IGFzc3VtZXMgdGhhdCB3ZSBjYW4gYWxzbyBzYXZl
L3Jlc3RvcmUgdGhlIHN0YXRlIG9mIHRoZSBzaWduYWxsaW5nIGRldmljZXMsCj4gYW5kIEkgZG9u
J3Qga25vdyBpZiB3ZSdyZSBxdWl0ZSB0aGVyZSB5ZXQuCk9uIFFFTVUsIHdoZW4gS1ZNX0RFVl9B
Uk1fVkdJQ19TQVZFX1BFTkRJTkdfVEFCTEVTIGlzIGNhbGxlZCwgdGhlIFZNIGlzCnN0b3BwZWQu
ClNlZSBjZGRhZmQ4ZjM1M2QgKCJody9pbnRjL2FybV9naWN2M19pdHM6IEltcGxlbWVudCBzdGF0
ZSBzYXZlL3Jlc3RvcmUiKQpTbyBJIHRoaW5rIGl0IHNob3VsZCB3b3JrLCBubz8KClRoYW5rcwoK
RXJpYwoKPiAKPiBUaGFua3MsCj4gCj4gwqDCoMKgwqDCoMKgwqAgTS4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
