Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 913DE181C03
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:05:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N4mJ0o6yrIO9mdpjuZnLZ3ZLyfjI1rMckBAJTmI+Zz8=; b=GhYvBur6TOOKbqUsPS7VEqAoX
	ihFlr9+OB6RJr9wPRmL20cS78Pdy3BQ/Eb7HOA3WHyERAXK6WJEVc7lPHTPCZ0eNcAaX5kseK3L3+
	VWJKjrm9pmzFPlFmNa46q52bwBlzUXrvHIlg45LelORWw2C9d88u6bRRewB99hYAkcLmtq7sti53L
	cHNN+ldEgSyI4fmTBUhGwliyNLzQNJMx7fn/Zvzd3J1sZIG5NNsmZEJDQTWRgyMuWDjn/wYH9+1mX
	yGyGDb2MsG1usQ+kOxhQ6lNTLyw2wIXYXoj2QovXS3O/39yytAglmOUpbLWlPtxb8RyhIWRSTiSZp
	aZ57Dxnqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC2uk-0005zo-GU; Wed, 11 Mar 2020 15:04:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC2ub-0005zK-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:04:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D937731B;
 Wed, 11 Mar 2020 08:04:44 -0700 (PDT)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A53C23F67D;
 Wed, 11 Mar 2020 08:04:39 -0700 (PDT)
Subject: Re: arm64 system corruption on linux-next?
To: John Garry <john.garry@huawei.com>,
 "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
References: <8c018ee5-de2a-d948-fcae-feaf1303e160@huawei.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <38086674-4d19-e828-cc75-0e7775ccdc23@arm.com>
Date: Wed, 11 Mar 2020 15:04:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8c018ee5-de2a-d948-fcae-feaf1303e160@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_080445_688492_DF8A44E7 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSm9obiwKCk9uIDEwLzAzLzIwMjAgNjozOCBwbSwgSm9obiBHYXJyeSB3cm90ZToKPiBIaSBh
bGwsCj4gCj4gT24gbXkgYXJtNjQgSHVhd2VpIEQwNiBkZXYgYm9hcmQsIEkgc2VlIHRoaXMgb24g
c29tZXRpbWVzIG9uIGxpbnV4LW5leHQgCj4gMjAyMDAzMTAganVzdCBhcyB0aGUgYm9vdCBjb21w
bGV0ZXM6Cj4gCj4gW8KgwqAgNDguNDUyNjc0XSBwY2llcG9ydCAwMDAwOmI0OjAxLjA6IEFkZGlu
ZyB0byBpb21tdSBncm91cCA0MAo+IFvCoMKgIDQ4LjQ3MzQyNl0gcnRjLWVmaSBydGMtZWZpLjA6
IHNldHRpbmcgc3lzdGVtIGNsb2NrIHRvIAo+IDIwMjAtMDMtMTBUMTg6MzE6MjkgVVRDICgxNTgz
ODY1MDg5KQo+IFvCoMKgIDQ4LjQ3MzQyNl0gcnRjLWVmaSBydGMtZWZpLjA6IHNldHRpbmcgc3lz
dGVtIGNsb2NrIHRvIAo+IDIwMjAtMDMtMTBUMTg6MzE6MjkgVVRDICgxNTgzODY1MDg5KQo+IFvC
oMKgIDQ4LjQ4Njc1NV0gaGlkLWdlbmVyaWMgMDAwMzoxMkQxOjAwMDMuMDAwMTogaW5wdXQ6IFVT
QiBISUQgdjEuMTAgCj4gS2V5Ym9hcmQgW0tleWJvYXJkL01vdXNlIEtWTSAxLjEuMF0gb24gdXNi
LTAwMDA6N2E6MDEuMC0xLjEvaW5wdXQwCj4gW8KgwqAgNDguNDg2NzU1XSBoaWQtZ2VuZXJpYyAw
MDAzOjEyRDE6MDAwMy4wMDAxOiBpbnB1dDogVVNCIEhJRCB2MS4xMCAKPiBLZXlib2FyZCBbS2V5
Ym9hcmQvTW91c2UgS1ZNIDEuMS4wXSBvbiB1c2ItMDAwMDo3YTowMS4wLTEuMS9pbnB1dDAKPiBb
wqDCoCA0OC40OTEwMzNdIEFMU0EgZGV2aWNlIGxpc3Q6Cj4gW8KgwqAgNDhBIGRldmljZSBsaXN0
Ogo+IFvCoMKgIDQ4LjUyMjMwNF3CoMKgIE5vIHNvdW5kY2FyZHMgZm91bmQuCj4gW8KgwqAgNDgu
NTIyMzA0XcKgwqAgTm8gc291bmRjYXJkcyBmb3VuZC4KPiBbwqDCoCA0OC41MjYzMTldIGlucHV0
OiBLZXlib2FyZC9Nb3VzZSBLVk0gMS4xLjAgYXMgCj4gL2RldmljZXMvcGNpMDAwMDo3YS8wMDAw
OjdhOjAxLjAvdXNiMS8xLTEvMS0xLjEvMS0xLjE6MS4xLzAwMDM6MTJEMTowMDAzLjAwMDIvaW5w
dXQvaW5wdXQyIAo+IAo+IFvCoMKgIDQ4LjUyNjMxOV0gaW5wdXQ6IEtleWJvYXJkL01vdXNlIEtW
TSAxLjEuMCBhcyAKPiAvZGV2aWNlcy9wY2kwMDAwOjdhLzAwMDA6N2E6MDEuMC91c2IxLzEtMS8x
LTEuMS8xLTEuMToxLjEvMDAwMzoxMkQxOjAwMDMuMDAwMi9pbnB1dC9pbnB1dDIgCj4gCj4gW3xV
ego+IO+/ve+/ve+/vXAgWDRuMEpqINCsSCxwfnd277+9Xjvvv71+VHTvv71r77+9du+/ve+/vSLv
v73vv73Cse+/vQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDvv71yWu+/vSzvv70g77+9IO+/ve+/vUhr
77+977+9Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgdjfvv71DICjvv73vv73vv73vv70g1bnvv71FXu+/vS0gego+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAg77+9Cj4gwrHvv70gwqDvv70g77+977+977+9IO+/vVwg77+977+977+9
cCBYNG4wSmogcO+/vUgscH53du+/vV47K35UdO+/vWvvv71277+9ICLvv70KPiB377+9Yu+/ve+/
ve+/vVDvv71r77+9aO+/vVDvv73vv70u77+9cO+/ve+/ve+/vU7vv71QIFDvv71Y77+977+9Oe+/
vSAw77+9IO+/vWvvv71o77+9UO+/vWku77+9cO+/ve+/ve+/vU7vv73vv70m77+977+977+977+9
77+9LsKs77+9alDvv71W77+9diAKPiB077+9We+/ve+/vSrvv71277+977+977+977+9IO+/vUY5
77+9Cj4gCj4gCj4gVGhlIHN5c3RlbSBpcyBzdGlsbCBhbGl2ZSwgYXMga2V5cHJlc3NlcyByZXNw
b25kIHdpdGggZ2FyYmFnZS4KCkZXSVcsIHRoYXQgbG9va3MgZXZlcnkgYml0IGxpa2Ugc29tZXRo
aW5nIGNoYW5naW5nIHRoZSBVQVJUIGJhdWQgcmF0ZSAKdW5kZXIgdGhlIGNvbnNvbGUncyBmZWV0
LCBlaXRoZXIgZXhwbGljaXRseSwgb3IgaW1wbGljaXRseSBieSBtZXNzaW5nIAp3aXRoIHRoZSBp
bnB1dCBjbG9jayBiZWhpbmQgdGhlIGRyaXZlcidzIGJhY2suCgpSb2Jpbi4KCj4gCj4gRnVsbCBk
bWVzZzoKPiBodHRwczovL3Bhc3RlYmluLmNvbS9DMlh5MHlVVwo+IAo+IAo+IHY1LjYtcmM0IGlz
IG9rIGZyb20gbXkgYXR0ZW1wdHMuCj4gCj4gQW55b25lIGVsc2Ugc2VlIHN1Y2ggYW4gaXNzdWU/
Cj4gCj4gVGhhbmtzLAo+IEpvaG4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
