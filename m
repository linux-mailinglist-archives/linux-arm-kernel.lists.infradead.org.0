Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 367C41EEF8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 04:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t5/6XxvIFVx6DXqzrgOxUFrB7CcpTESYLWpIiDtDyNA=; b=ZmjuhVN43hUFYEE+89ewBvHgD
	suzy+Z6bLL1uY3Qr24ExM9QpLYWeD6V2Zhcerj+/GJzenBtD7f/qE7W+rCK1NTBS34m7sgQLTmzXz
	iKEmUWHA6b/T247GyUId/dqn4PkAzQL/eBadfw1kzbMOpQ2NL/F/21F682dLCdJzD2DZnb86797Jv
	BSu953hPu/1RjoC1mHOr3zwd6Xt00//gnIsDry2cHaGRtJDWIT+xt6ylp0usYpQbfc3ecgaVURYcy
	iTlcTy/ReIauvCqRCivwGq5hjHOUPwnpSfA3+YBfOcW9eR///vxotT4KaJCQCVhEU880/HyDNF4wR
	w0/o7zFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh2EJ-0001mH-6M; Fri, 05 Jun 2020 02:37:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh2EB-0001lA-Nl
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 02:37:05 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 05 Jun 2020 11:36:56 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 64803605FA;
 Fri,  5 Jun 2020 11:36:56 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 5 Jun 2020 11:36:56 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id CEDE91A01BB;
 Fri,  5 Jun 2020 11:36:08 +0900 (JST)
Received: from [10.213.29.9] (unknown [10.213.29.9])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 5D105120133;
 Fri,  5 Jun 2020 11:36:08 +0900 (JST)
Subject: Re: [PATCH v3 2/6] PCI: uniphier: Add misc interrupt handler to
 invoke PME and AER
To: Marc Zyngier <maz@kernel.org>
References: <1591174481-13975-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1591174481-13975-3-git-send-email-hayashi.kunihiko@socionext.com>
 <78af3b11de9c513f9be2a1f42f273f27@kernel.org>
 <2e07d3d3-515b-57e1-0a36-8892bc38bb7b@socionext.com>
 <9cbfdacba32c5e351fd9e14444768666@kernel.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <1d98ef53-fe81-6de2-bd65-dd88d6875cb8@socionext.com>
Date: Fri, 5 Jun 2020 11:36:08 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <9cbfdacba32c5e351fd9e14444768666@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_193704_001752_ED2340A0 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWFyYywKCk9uIDIwMjAvMDYvMDQgMTk6MTEsIE1hcmMgWnluZ2llciB3cm90ZToKPiBPbiAy
MDIwLTA2LTA0IDEwOjQzLCBLdW5paGlrbyBIYXlhc2hpIHdyb3RlOgo+IAo+IFsuLi5dCj4gCj4+
Pj4gLXN0YXRpYyB2b2lkIHVuaXBoaWVyX3BjaWVfaXJxX2hhbmRsZXIoc3RydWN0IGlycV9kZXNj
ICpkZXNjKQo+Pj4+ICtzdGF0aWMgdm9pZCB1bmlwaGllcl9wY2llX21pc2NfaXNyKHN0cnVjdCBw
Y2llX3BvcnQgKnBwKQo+Pj4+IMKgewo+Pj4+IC3CoMKgwqAgc3RydWN0IHBjaWVfcG9ydCAqcHAg
PSBpcnFfZGVzY19nZXRfaGFuZGxlcl9kYXRhKGRlc2MpOwo+Pj4+IMKgwqDCoMKgIHN0cnVjdCBk
d19wY2llICpwY2kgPSB0b19kd19wY2llX2Zyb21fcHAocHApOwo+Pj4+IMKgwqDCoMKgIHN0cnVj
dCB1bmlwaGllcl9wY2llX3ByaXYgKnByaXYgPSB0b191bmlwaGllcl9wY2llKHBjaSk7Cj4+Pj4g
LcKgwqDCoCBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBpcnFfZGVzY19nZXRfY2hpcChkZXNjKTsK
Pj4+PiAtwqDCoMKgIHVuc2lnbmVkIGxvbmcgcmVnOwo+Pj4+IC3CoMKgwqAgdTMyIHZhbCwgYml0
LCB2aXJxOwo+Pj4+ICvCoMKgwqAgdTMyIHZhbCwgdmlycTsKPj4+Pgo+Pj4+IC3CoMKgwqAgLyog
SU5UIGZvciBkZWJ1ZyAqLwo+Pj4+IMKgwqDCoMKgIHZhbCA9IHJlYWRsKHByaXYtPmJhc2UgKyBQ
Q0xfUkNWX0lOVCk7Cj4+Pj4KPj4+PiDCoMKgwqDCoCBpZiAodmFsICYgUENMX0NGR19CV19NR1Rf
U1RBVFVTKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgZGV2X2RiZyhwY2ktPmRldiwgIkxpbmsgQmFu
ZHdpZHRoIE1hbmFnZW1lbnQgRXZlbnRcbiIpOwo+Pj4+ICsKPj4+PiDCoMKgwqDCoCBpZiAodmFs
ICYgUENMX0NGR19MSU5LX0FVVE9fQldfU1RBVFVTKQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgZGV2
X2RiZyhwY2ktPmRldiwgIkxpbmsgQXV0b25vbW91cyBCYW5kd2lkdGggRXZlbnRcbiIpOwo+Pj4+
IC3CoMKgwqAgaWYgKHZhbCAmIFBDTF9DRkdfQUVSX1JDX0VSUl9NU0lfU1RBVFVTKQo+Pj4+IC3C
oMKgwqDCoMKgwqDCoCBkZXZfZGJnKHBjaS0+ZGV2LCAiUm9vdCBFcnJvclxuIik7Cj4+Pj4gLcKg
wqDCoCBpZiAodmFsICYgUENMX0NGR19QTUVfTVNJX1NUQVRVUykKPj4+PiAtwqDCoMKgwqDCoMKg
wqAgZGV2X2RiZyhwY2ktPmRldiwgIlBNRSBJbnRlcnJ1cHRcbiIpOwo+Pj4+ICsKPj4+PiArwqDC
oMKgIGlmIChwY2lfbXNpX2VuYWJsZWQoKSkgewo+Pj4KPj4+IFRoaXMgY2hlY2tzIHdoZXRoZXIg
dGhlIGtlcm5lbCBzdXBwb3J0cyBNU0lzLiBOb3QgdGhhdCB0aGV5IGFyZQo+Pj4gZW5hYmxlZCBp
biB5b3VyIGNvbnRyb2xsZXIuIElzIHRoYXQgcmVhbGx5IHdoYXQgeW91IHdhbnQgdG8gZG8/Cj4+
Cj4+IFRoZSBiZWxvdyB0d28gc3RhdHVzIGJpdHMgYXJlIHZhbGlkIHdoZW4gdGhlIGludGVycnVw
dCBmb3IgTVNJIGlzIGFzc2VydGVkLgo+PiBUaGF0IGlzLCBwY2lfbXNpX2VuYWJsZWQoKSBpcyB3
cm9uZy4KPj4KPj4gSSdsbCBtb2RpZnkgdGhlIGZ1bmN0aW9uIHRvIGNoZWNrIHRoZSB0d28gYml0
cyBvbmx5IGlmIHRoaXMgZnVuY3Rpb24gaXMKPj4gY2FsbGVkIGZyb20gTVNJIGhhbmRsZXIuCj4+
Cj4+Pgo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodmFsICYgUENMX0NGR19BRVJfUkNfRVJSX01T
SV9TVEFUVVMpIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZGJnKHBjaS0+ZGV2
LCAiUm9vdCBFcnJvciBTdGF0dXNcbiIpOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZp
cnEgPSBpcnFfbGluZWFyX3Jldm1hcChwcC0+aXJxX2RvbWFpbiwgMCk7Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZ2VuZXJpY19oYW5kbGVfaXJxKHZpcnEpOwo+Pj4+ICvCoMKgwqDCoMKg
wqDCoCB9Cj4+Pj4gKwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAodmFsICYgUENMX0NGR19QTUVf
TVNJX1NUQVRVUykgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGRldl9kYmcocGNpLT5k
ZXYsICJQTUUgSW50ZXJydXB0XG4iKTsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2aXJx
ID0gaXJxX2xpbmVhcl9yZXZtYXAocHAtPmlycV9kb21haW4sIDApOwo+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGdlbmVyaWNfaGFuZGxlX2lycSh2aXJxKTsKPj4+PiArwqDCoMKgwqDCoMKg
wqAgfQo+Pj4KPj4+IFRoZXNlIHR3byBjYXNlcyBkbyB0aGUgZXhhY3Qgc2FtZSB0aGluZywgY2Fs
bGluZyB0aGUgc2FtZSBpbnRlcnJ1cHQuCj4+PiBXaGF0IGlzIHRoZSBwb2ludCBvZiBkZWFsaW5n
IHdpdGggdGhlbSBpbmRlcGVuZGVudGx5Pwo+Pgo+PiBCb3RoIFBNRSBhbmQgQUVSIGFyZSBhc3Nl
cnRlZCBmcm9tIE1TSS0wLCBhbmQgZWFjaCBoYW5kbGVyIGNoZWNrcyBpdHMgb3duCj4+IHN0YXR1
cyBiaXQgaW4gdGhlIFBDSWUgcmVnaXN0ZXIgKGFlcl9pcnEoKSBpbiBwY2llL2Flci5jIGFuZCBw
Y2llX3BtZV9pcnEoKQo+PiBpbiBwY2llL3BtZS5jKS4KPj4gU28gSSB0aGluayB0aGlzIGhhbmRs
ZXIgY2FsbHMgZ2VuZXJpY19oYW5kbGVfaXJxKCkgZm9yIHRoZSBzYW1lIE1TSS0wLgo+IAo+IFNv
IHdoYXQgaXMgd3Jvbmcgd2l0aAo+IAo+ICDCoMKgwqDCoMKgwqDCoCBpZiAodmFsICYgKFBDTF9D
RkdfQUVSX1JDX0VSUl9NU0lfU1RBVFVTIHwKPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIFBDTF9DRkdfUE1FX01TSV9TVEFUVVMpKSB7Cj4gIMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAvLyBoYW5kbGUgaW50ZXJydXB0Cj4gIMKgwqDCoMKgwqDCoMKgIH0KPiAK
PiA/CgpObyBwcm9ibGVtLgpJJ2xsIHJld3JpdGUgaXQgaW4gdGhlIHNhbWUgd2F5IGFzIHlvdXJz
IGluIGhhbmRsaW5nIGludGVycnVwdHMuCgo+IElmIHlvdSBoYXZlIHR3byBoYW5kbGVycyBmb3Ig
dGhlIHNhbWUgaW50ZXJydXB0LCB0aGlzIGlzIGEgc2hhcmVkCj4gaW50ZXJydXB0IGFuZCBlYWNo
IGhhbmRsZXIgd2lsbCBiZSBjYWxsZWQgaW4gdHVybi4KWWVzLCBNU0ktMCBpcyBzaGFyZWQgd2l0
aCBQTUUgYW5kIEFFUiwgYW5kIGl0IHdpbGwgYmUgbGlrZSB0aGF0LgoKVGhhbmsgeW91LAoKLS0t
CkJlc3QgUmVnYXJkcwpLdW5paGlrbyBIYXlhc2hpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51
eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
