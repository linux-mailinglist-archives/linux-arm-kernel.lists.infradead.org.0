Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D708118BC46
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:18:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HMeK1CkR9VG+QnnqWsjvbEKEBjB0x11EO76vSoF6+1A=; b=IYbsOvxjSrGuiX
	ifo21hV0VZC5WTPqJkrhqriofCVrldlkW4SZvVLLHZEdwtzh2qxFmMoq2ibIPUJsvd3hqh8gvplvN
	fD9q4BTqiTMrb13EQqZQk0wXevl9ik6g4fzsIts6hU/Rzt055Q01y0rhzn9HjaftSNQqw7eHTqWfo
	TAWTmS6UDxS67oGtm+Lnfq+lk+5oIHflz72xNPIkORhGUTH74+U1xwLTx9dpsCWWRovq7IWhEh4pm
	B3IrsYSzv0KK+VVsZHKqZMNgyvig0GwnOyHilPMPCAR0sO0Op/SKnKRtqhzDyDJo0k/uKitOdq2LU
	ngdqj7Ot/d79AUEhrcnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExsQ-00031I-2u; Thu, 19 Mar 2020 16:18:34 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExsD-00030Y-UR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 16:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584634701;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TPMaeSZsclHVIbI6q8ygnn5aaACtoMCOfBf0pAjRkic=;
 b=cLVt3hXI4cjSXS6M4oNVTu30+c6Szax1IQ8fhhk7qwtSt2L7P33nywqf/XNdNjB3a9UOF7
 Y3JwDzJZd6w38mKCwHJSrlegTsY3efTRj5/BsaXs6W/WT0FJ4S9HF7gPsGPtUtoywG8cKE
 hOmRFFlyQy1P3NXMQ+GCKoS2MqGmirU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-HTtkVwovMASSWR69wcGIBQ-1; Thu, 19 Mar 2020 12:18:17 -0400
X-MC-Unique: HTtkVwovMASSWR69wcGIBQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8238B1050920;
 Thu, 19 Mar 2020 16:17:52 +0000 (UTC)
Received: from [10.36.113.142] (ovpn-113-142.ams2.redhat.com [10.36.113.142])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B01975D9CD;
 Thu, 19 Mar 2020 16:17:49 +0000 (UTC)
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
 <33576d89-2b12-b98b-e392-3342b9b1265c@redhat.com>
 <17921081f98a589c67b37b1d07a9cfcc@kernel.org>
From: Auger Eric <eric.auger@redhat.com>
Message-ID: <791e08fc-417c-e956-1a41-0c605f7617b7@redhat.com>
Date: Thu, 19 Mar 2020 17:17:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <17921081f98a589c67b37b1d07a9cfcc@kernel.org>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091822_052697_4510329A 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Zenghui Yu <yuzenghui@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiAzLzE5LzIwIDU6MTYgUE0sIE1hcmMgWnluZ2llciB3cm90ZToKPiBIaSBFcmljLAo+
IAo+IE9uIDIwMjAtMDMtMTkgMTU6NDMsIEF1Z2VyIEVyaWMgd3JvdGU6Cj4+IEhpIE1hcmMsCj4+
Cj4+IE9uIDMvMTkvMjAgNDoyMSBQTSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4gSGkgRXJpYywK
PiAKPiBbLi4uXQo+IAo+Pj4+IFRoZSBwYXRjaCBsb29rcyBnb29kIHRvIG1lIGJ1dCBJIGFtIG5v
dyBsb3N0IGFib3V0IGhvdyB3ZSByZXRyaWV2ZSB0aGUKPj4+PiBwZW5kaW5nIHN0YXQgb2Ygb3Ro
ZXIgaHcgbWFwcGVkIGludGVycnVwdHMuIExvb2tzIHdlIHVzZQo+Pj4+IGlycS0+cGVuZGluZ19s
YXRjaCBhbHdheXMuIElzIHRoYXQgY29ycmVjdD8KPj4+Cj4+PiBDb3JyZWN0LiBHSUN2NC4wIGRv
ZXNuJ3QgZ2l2ZSB1cyBhbiBhcmNoaXRlY3R1cmFsIHdheSB0byBsb29rIGF0IHRoZQo+Pj4gdkxQ
SSBwZW5kaW5nIHN0YXRlICh0aGVyZSBpc24ndCBldmVuIGEgZ3VhcmFudGVlIGFib3V0IHdoZW4g
dGhlIEdJQwo+Pj4gd2lsbCBzdG9wIHdyaXRpbmcgdG8gbWVtb3J5LCBpZiBpdCBldmVyIGRvZXMp
Lgo+Pj4KPj4+IFdpdGggR0lDdjQuMSwgeW91IGNhbiBpbnRyb3NwZWN0IHRoZSBIVyBzdGF0ZSBm
b3IgU0dJcy4gWW91IGNhbiBhbHNvCj4+PiBsb29rIGF0IHRoZSB2TFBJIHN0YXRlIGJ5IHBlZWtp
bmcgYXQgdGhlIHZpcnR1YWwgcGVuZGluZyB0YWJsZSwgYnV0Cj4+PiB5b3UnZCBuZWVkIHRvIHVu
bWFwIHRoZSBWUEUgZmlyc3QsIHdoaWNoIEkgb2J2aW91c2x5IGRvbid0IHdhbnQgdG8gZG8KPj4+
IGZvciB0aGlzIGRlYnVnIGludGVyZmFjZSwgc3BlY2lhbGx5IGFzIGl0IGNhbiBiZSB1c2VkIHdo
aWxzdCB0aGUgZ3Vlc3QKPj4+IGlzIHVwIGFuZCBydW5uaW5nLgo+PiBPSyBmb3IgdkxQSXMsIHdo
YXQgYWJvdXQgb3RoZXIgSFcgbWFwcGVkIElSUXMgKGFyY2ggdGltZXI/KQo+IAo+IERpZmZlcmVu
dCBraW5kIG9mIEhXLiBXaXRoIHRob3NlLCB0aGUgaW5qZWN0aW9uIGlzIHN0aWxsIHZpcnR1YWws
IHNvIHRoZQo+IFNXIHBlbmRpbmcgYml0IGlzIHN0aWxsIHZlcnkgbXVjaCB2YWxpZC4gWW91IGNh
biBhY3R1YWxseSB0cnkgYW5kIG1ha2UKPiB0aGUgdGltZXIgaW50ZXJydXB0IHBlbmRpbmcsIGl0
IHNob3VsZCBzaG93IHVwLgo+IAo+IFdoYXQgdGhlIGlycS0+aHcgYml0IG1lYW5zIGlzICJ0aGlz
IHZpcnR1YWwgaW50ZXJydXB0IGlzIHNvbWVob3cgcmVsYXRlZAo+IHRvIHRoZSBob3N0X2lycSIu
IEhvdyB0aGlzIGlzIGludGVycHJldGVkIGlzIGNvbXBsZXRlbHkgY29udGV4dC1kZXBlbmRlbnQu
Ck9LIHRoYW5rIHlvdSBmb3IgcmVmcmVzaGluZyBteSBtZW1vcmllcyA7LSkKCkVyaWMKPiAKPiBU
aGFua3MsCj4gCj4gwqDCoMKgwqDCoMKgwqAgTS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
