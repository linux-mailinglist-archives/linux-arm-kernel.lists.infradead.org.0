Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFC21C86D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ysDjUVGYPW33GMXyTPMpIQhlRe1gFW9VpUraetKhwFY=; b=nCpK04kDekI6gz8sPRkvFwsNR
	bcfYMPbPqcCinjS7jWkfJgxbzAbVI9XeYwrkdCnQn45n7fOLza4g2TW2GJ3NFUMtSi7CAxqMrtMAn
	2omlqOSOy5k/XncYvYGqmAOP+0YjPTiGyD/6HnHOkgyNCXa+xhp5D5yDg5XG2E9RYq1rmcfxc9SLu
	3GX17cc6i0y+OAy36aTqp28GRuW36PhbFLB4OVJQzljEcuSBkFobdkMNRozvncnWaXfY3fee50kTc
	2Dgar3H8wbE1ddgQ6ePmmtp2SScJ+4BEVAZpWHOtCk17cvuEPpuGGZ4/fmjSG6W/GWWn9MHJEsOe1
	BOQC/YSQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdqj-0008UK-Rk; Thu, 07 May 2020 10:33:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdqa-0008St-4r
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:33:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98D8ED6E;
 Thu,  7 May 2020 03:33:40 -0700 (PDT)
Received: from [10.57.36.85] (unknown [10.57.36.85])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58E6F3F71F;
 Thu,  7 May 2020 03:33:39 -0700 (PDT)
Subject: Re: [PATCHv2] iommu/arm-smmu: Make remove callback message more
 informative
To: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 Doug Anderson <dianders@chromium.org>, Will Deacon <will@kernel.org>
References: <20200423095531.9868-1-saiprakash.ranjan@codeaurora.org>
 <CAD=FV=W=d=KrTwgMOO-ukFc7ZhkE92qGYumUEDrtjmhQOpdWbg@mail.gmail.com>
 <CAD=FV=U0Hhae3D1-P8kbcZafHeuqng11BNAbOb2YWPx+M7X5Gw@mail.gmail.com>
 <0b5098c28360d018f390a97155b9776c@codeaurora.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2f3cd963-dffe-290b-02bf-819687713738@arm.com>
Date: Thu, 7 May 2020 11:33:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <0b5098c28360d018f390a97155b9776c@codeaurora.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_033344_234068_ED39310D 
X-CRM114-Status: GOOD (  17.63  )
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
Cc: linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC0wNS0wNyAxMTowNCBhbSwgU2FpIFByYWthc2ggUmFuamFuIHdyb3RlOgo+IEhpLAo+
IAo+IE9uIDIwMjAtMDUtMDcgMDU6NDAsIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4+IEhpLAo+Pgo+
PiBPbiBUaHUsIEFwciAyMywgMjAyMCBhdCA3OjM1IEFNIERvdWcgQW5kZXJzb24gPGRpYW5kZXJz
QGNocm9taXVtLm9yZz4gCj4+IHdyb3RlOgo+Pj4KPj4+IEhpLAo+Pj4KPj4+IE9uIFRodSwgQXBy
IDIzLCAyMDIwIGF0IDI6NTUgQU0gU2FpIFByYWthc2ggUmFuamFuCj4+PiA8c2FpcHJha2FzaC5y
YW5qYW5AY29kZWF1cm9yYS5vcmc+IHdyb3RlOgo+Pj4gPgo+Pj4gPiBDdXJyZW50bHkgb24gcmVi
b290L3NodXRkb3duLCB0aGUgZm9sbG93aW5nIG1lc3NhZ2VzIGFyZQo+Pj4gPiBkaXNwbGF5ZWQg
b24gdGhlIGNvbnNvbGUgYXMgZXJyb3IgbWVzc2FnZXMgYmVmb3JlIHRoZQo+Pj4gPiBzeXN0ZW0g
cmVib290cy9zaHV0ZG93biBhcyBwYXJ0IG9mIHJlbW92ZSBjYWxsYmFjay4KPj4+ID4KPj4+ID4g
T24gU0M3MTgwOgo+Pj4gPgo+Pj4gPsKgwqAgYXJtLXNtbXUgMTUwMDAwMDAuaW9tbXU6IHJlbW92
aW5nIGRldmljZSB3aXRoIGFjdGl2ZSBkb21haW5zIQo+Pj4gPsKgwqAgYXJtLXNtbXUgNTA0MDAw
MC5pb21tdTogcmVtb3ZpbmcgZGV2aWNlIHdpdGggYWN0aXZlIGRvbWFpbnMhCj4+PiA+Cj4+PiA+
IE1ha2UgdGhpcyBlcnJvciBtZXNzYWdlIG1vcmUgaW5mb3JtYXRpdmUgYW5kIGxlc3Mgc2Nhcnku
Cj4+PiA+Cj4+PiA+IFJlcG9ydGVkLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxkaWFuZGVyc0BjaHJv
bWl1bS5vcmc+Cj4+PiA+IFN1Z2dlc3RlZC1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlA
YXJtLmNvbT4KPj4+ID4gU2lnbmVkLW9mZi1ieTogU2FpIFByYWthc2ggUmFuamFuIDxzYWlwcmFr
YXNoLnJhbmphbkBjb2RlYXVyb3JhLm9yZz4KPj4+ID4gLS0tCj4+PiA+wqAgZHJpdmVycy9pb21t
dS9hcm0tc21tdS5jIHwgMiArLQo+Pj4gPsKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgMSBkZWxldGlvbigtKQo+Pj4KPj4+IFJldmlld2VkLWJ5OiBEb3VnbGFzIEFuZGVyc29uIDxk
aWFuZGVyc0BjaHJvbWl1bS5vcmc+Cj4+Cj4+IElzIHRoaXMgcGF0Y2ggd2FpdGluZyBvbiBhbnl0
aGluZyBpbiBwYXJ0aWN1bGFyIG5vdz/CoCBEbyB3ZSBuZWVkCj4+IHJldmlld3MgZnJvbSBSb2Jp
biBhbmQvb3IgV2lsbD8KPj4KPiAKPiBXYWl0aW5nIGZvciB0aGVpciByZXZpZXdzIGFzIHRoZXkg
YXJlIHRoZSBtYWludGFpbmVycy9yZXZpZXdlcnMgOikKClNvcnJ5LCB0aGlzIGRpZCByZWdpc3Rl
ciBhdCB0aGUgdGltZSwgSSBqdXN0IGZlbHQgdGhhdCBpdCdzIGEgYml0IApyZWR1bmRhbnQgdG8g
Z2l2ZSBhIHJldmlldyB0YWcgdG8gc2F5ICJ5ZXMsIHRoaXMgaXMgZXhhY3RseSB3aGF0IEkgCnN1
Z2dlc3RlZCIgOikKClRoYXQgc2FpZCwgSSBkbyB3aXNoIEkgaGFkbid0IGZvcmdvdHRlbiBhYm91
dCB0aGUgZGV2X25vdGljZSBtZXNzYWdlIApsZXZlbCwgYnV0IEkgdGhpbmsgdGhhdCBsaWVzIG92
ZXIgaW4gdGhlIGNvbmNlcHR1YWwgcHVyaXR5IGNvcm5lciByYXRoZXIgCnRoYW4gbWFraW5nIGFu
eSBwcmFjdGljYWwgZGlmZmVyZW5jZSwgc28gSSdtIHN0aWxsIE9LIHdpdGggdGhlIHBhdGNoIAph
cy1pcy4gV2lsbD8KClJvYmluLgoKCnAucy4gd2hvZXZlciBoYXMgdGhpcyBlbnRyeSBpbiB0aGVp
ciBhZGRyZXNzIGJvb2sgZm9yIHRoZSBJT01NVSBsaXN0IAooRG91Zz8pOgoKImxpc3RAMjYzLm5l
dDpJT01NVSBEUklWRVJTIDxpb21tdUBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZz4sIEpvZXJn
IApSb2VkZWwgPGpvcm9AOGJ5dGVzLm9yZz4sIiA8aW9tbXVAbGlzdHMubGludXgtZm91bmRhdGlv
bi5vcmc+CgppdCByZWFsbHkgbWVzc2VzIHVwIFRodW5kZXJiaXJkJ3MgYWJpbGl0eSB0byBnZW5l
cmF0ZSB3b3JraW5nIGhlYWRlcnMgCmZvciBhIHJlcGx5IDspCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
