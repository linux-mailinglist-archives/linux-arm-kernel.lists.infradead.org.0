Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FC419BA88
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 05:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtxENHbtoDKs31/PN/yRFWxxFDYhXLS7KrFw6oHfZlE=; b=M2LBvm+KconHR0
	XJg2mkWpysbbglH4niMwsjt1T/OzAgCh6uGknBdwFyd6l2WP5KRNjnRTQunJcl/gqiplG7jg1DBCM
	57QH3RnTGbm4yHml/5EEQKPKft1CuP7VIgyVysOsbCvreTzX2u66qsPwU57vWIIJpfts8wW0Da8Az
	PlfGY65skm3hrbEUaxucBnJRTtfMQNy+9CYxMx+ITnDpBDprxwQq/ZFyWqsbRsTuQMnzA7q8SkhWX
	7oxLmk1/gqjvpqGkuyMld4rAGGeHr8UzODejyRxzEsjAIHgpJN6vGLWu9j5Z8LbhqLEfFa7MY72TU
	OI2beDyA0ctMxAahGQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJq5w-0006dw-L8; Thu, 02 Apr 2020 03:00:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJq5r-0006dc-2V
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 03:00:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F9C330E;
 Wed,  1 Apr 2020 20:00:34 -0700 (PDT)
Received: from [10.163.1.8] (unknown [10.163.1.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DFED3F71E;
 Wed,  1 Apr 2020 20:00:31 -0700 (PDT)
Subject: Re: [PATCH 5/6] arm64/cpufeature: Drop TraceFilt feature exposure
 from ID_DFR0 register
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <1580215149-21492-1-git-send-email-anshuman.khandual@arm.com>
 <1580215149-21492-6-git-send-email-anshuman.khandual@arm.com>
 <bb4d5175-1c72-a1a6-1e79-116991717fdf@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <2b04eac1-b0e1-ec70-34dd-5bd64af8ada2@arm.com>
Date: Thu, 2 Apr 2020 08:30:25 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <bb4d5175-1c72-a1a6-1e79-116991717fdf@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_200035_158563_B21630ED 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, maz@kernel.org, will@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAwMy8yMC8yMDIwIDExOjQ5IFBNLCBTdXp1a2kgSyBQb3Vsb3NlIHdyb3RlOgo+IE9uIDAx
LzI4LzIwMjAgMTI6MzkgUE0sIEFuc2h1bWFuIEtoYW5kdWFsIHdyb3RlOgo+PiBJRF9ERlIwIGJh
c2VkIFRyYWNlRmlsdCBmZWF0dXJlIHNob3VsZCBub3QgYmUgZXhwb3NlZC4KPiAKPiAuLi4gdG8g
Z3Vlc3RzLgo+IAo+IMKgSGVuY2UgbGV0cyBkcm9wIGl0LgoKU3VyZSwgd2lsbCBkby4KCj4gCj4g
UmV2aWV3ZWQtYnk6IFN1enVraSBLIFBvdWxvc2UgPHN1enVraS5wb3Vsb3NlQGFybS5jb20+Cj4g
Cj4+Cj4+IENjOiBDYXRhbGluIE1hcmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgo+PiBD
YzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPj4gQ2M6IEphbWVzIE1vcnNlIDxqYW1l
cy5tb3JzZUBhcm0uY29tPgo+PiBDYzogU3V6dWtpIEsgUG91bG9zZSA8c3V6dWtpLnBvdWxvc2VA
YXJtLmNvbT4KPj4gQ2M6IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+Cj4+IENjOiBNYXJr
IFJ1dGxhbmQgPG1hcmsucnV0bGFuZEBhcm0uY29tPgo+PiBDYzogbGludXgta2VybmVsQHZnZXIu
a2VybmVsLm9yZwo+PiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBLaGFuZHVhbCA8YW5zaHVtYW4u
a2hhbmR1YWxAYXJtLmNvbT4KPj4gLS0tCj4+IMKgIGFyY2gvYXJtNjQva2VybmVsL2NwdWZlYXR1
cmUuYyB8IDEgLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jIGIvYXJjaC9hcm02NC9rZXJu
ZWwvY3B1ZmVhdHVyZS5jCj4+IGluZGV4IDI3MjZiZDY0NDFkYS4uYThkZWQxZjBlZWFmIDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9jcHVmZWF0dXJlLmMKPj4gKysrIGIvYXJjaC9h
cm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jCj4+IEBAIC0zNzQsNyArMzc0LDYgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBhcm02NF9mdHJfYml0cyBmdHJfaWRfcGZyMltdID0gewo+PiDCoCB9Owo+PiDC
oCDCoCBzdGF0aWMgY29uc3Qgc3RydWN0IGFybTY0X2Z0cl9iaXRzIGZ0cl9pZF9kZnIwW10gPSB7
Cj4+IC3CoMKgwqAgQVJNNjRfRlRSX0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xP
V0VSX1NBRkUsIDI4LCA0LCAwKSwKPj4gwqDCoMKgwqDCoCBTX0FSTTY0X0ZUUl9CSVRTKEZUUl9I
SURERU4sIEZUUl9TVFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCAyNCwgNCwgMHhmKSzCoMKgwqAgLyog
UGVyZk1vbiAqLwo+PiDCoMKgwqDCoMKgIEFSTTY0X0ZUUl9CSVRTKEZUUl9ISURERU4sIEZUUl9T
VFJJQ1QsIEZUUl9MT1dFUl9TQUZFLCAyMCwgNCwgMCksCj4+IMKgwqDCoMKgwqAgQVJNNjRfRlRS
X0JJVFMoRlRSX0hJRERFTiwgRlRSX1NUUklDVCwgRlRSX0xPV0VSX1NBRkUsIDE2LCA0LCAwKSwK
Pj4KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
