Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DA01370A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 16:05:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIWHozyMMnK6jCNKVFNQh221Jmt7ING38mTLT9A6pVw=; b=CaFiTG/0BpO0LH
	qaAXQx78Gwn0XD0lgGpMmjffwnaSDml00TLsLPxKCXHVxolN3dbxknh2kjb6xAEic1GqTeapdezTJ
	LOooWbF3Mr3Se3tlZxzqR1J39so5GnoEziv2aII5MZO5ppmn9BFHQ10bTdK5dLcnbJdYv2qIEhw59
	r3Nslnxv2buP3e4o8qmPnyv48nvG+bAvCuwU2GR+PiNbz7eJlBeOJD2JP/Gt2oTXFpZl3KgBX8Q+U
	dzxepT/IMNJrSu3VKSi/WGcXv2EocSvl5Seigy8de3RxX0qHzLNOPzklqctCtDtCA5nuQOqgT91g3
	a4rBYboFSsF0kC/XS6eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipvqf-0003pC-F6; Fri, 10 Jan 2020 15:05:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipvq4-0003Ze-8Q
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 15:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578668677;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Si2zczaQ4B24l4I/KMqrXoy/jC0DLGxbZKyOpiSxhFg=;
 b=LB5tR4Kz+jt9N875hfjHKOjQhD28ys9l8Ts8wx/38ayJZicUZych/Z3fMMmxVLXROskZ4Z
 HVPChqIZB0KCbQYa1YCyjBJAqIvygugRMmn+8yUhaT+flANa3eHeW7c7mPWvXMystLkfbI
 ubBl6jXv3sd7ieJ/AixzXvUNhJXP0zo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-Yuk5rVSHP9W0m6CF3Wsnyg-1; Fri, 10 Jan 2020 10:04:33 -0500
X-MC-Unique: Yuk5rVSHP9W0m6CF3Wsnyg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 44E1C107ACC5;
 Fri, 10 Jan 2020 15:04:31 +0000 (UTC)
Received: from krava (ovpn-205-164.brq.redhat.com [10.40.205.164])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A1535DA32;
 Fri, 10 Jan 2020 15:04:24 +0000 (UTC)
Date: Fri, 10 Jan 2020 16:04:22 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Message-ID: <20200110150422.GH82989@krava>
References: <20200108142010.11269-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108142010.11269-1-leo.yan@linaro.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_070440_382541_B1453493 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBKYW4gMDgsIDIwMjAgYXQgMTA6MjA6MDlQTSArMDgwMCwgTGVvIFlhbiB3cm90ZToK
PiBUaGUgc3RydWN0IHBlcmZfZXZzZWxfY29uZmlnX3Rlcm06OnZhbCBpcyBhIHVuaW9uIHdoaWNo
IGNvbnRhaW5zCj4gbXVsdGlwbGUgdmFyaWFibGVzIGZvciBjb3JyZXNwb25kaW5nIHR5cGVzLiAg
VGhpcyBsZWFkcyB0aGUgdW5pb24gdG8KPiBiZSBjb21wbGV4IGFuZCBhbHNvIGNhdXNlcyBjb21w
bGV4IGNvZGUgbG9naWMuCj4gCj4gVGhpcyBwYXRjaCByZWZhY3RvcnMgdGhlIHN0cnVjdHVyZSB0
byB1c2UgdHdvIGdlbmVyYWwgdmFyaWFibGVzIGluIHRoZQo+ICd2YWwnIHVuaW9uOiBvbmUgaXMg
J251bScgZm9yIHVuc2lnbmVkIDY0LWJpdCBpbnRlZ2VyIGFuZCBhbm90aGVyIGlzCj4gJ3N0cicg
Zm9yIHN0cmluZyB2YXJpYWJsZS4gIFRoaXMgY2FuIHNpbXBsaWZ5IHRoZSBkYXRhIHN0cnVjdHVy
ZSBhbmQKPiB0aGUgcmVsYXRlZCBjb2RlLCB0aGlzIGFsc28gY2FuIGJlbmVmaXQgZm9yIHBvc3Np
Ymx5IGV4dGVuc2lvbi4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBMZW8gWWFuIDxsZW8ueWFuQGxpbmFy
by5vcmc+Cgp0aGVyZSdzIHNvbWUgYXJjaCBjb2RlIHRoYXQgbmVlZHMgdG8gYmUgY2hhbmdlZC4u
IHBsZWFzZQpjaGFuZ2Ugb3RoZXIgYXJjaHMgYXMgd2VsbAoKCiAgQ0MgICAgICAgYXJjaC94ODYv
dXRpbC9pbnRlbC1wdC5vCmFyY2gveDg2L3V0aWwvaW50ZWwtcHQuYzogSW4gZnVuY3Rpb24g4oCY
aW50ZWxfcHRfY29uZmlnX3NhbXBsZV9tb2Rl4oCZOgphcmNoL3g4Ni91dGlsL2ludGVsLXB0LmM6
NTYzOjI0OiBlcnJvcjog4oCYdW5pb24gPGFub255bW91cz7igJkgaGFzIG5vIG1lbWJlciBuYW1l
ZCDigJhjZmdfY2hn4oCZCiAgNTYzIHwgICB1c2VyX2JpdHMgPSB0ZXJtLT52YWwuY2ZnX2NoZzsK
CnRoYW5rcywKamlya2EKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
