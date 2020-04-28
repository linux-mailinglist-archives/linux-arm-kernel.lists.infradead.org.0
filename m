Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F35C1BBCC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rpIVcy2cyBV3O5JBNBkM6BG0jEORFw9YnX4uoq9SyC4=; b=ZPALkS8qT4ejF4137VN6ls2pQ
	gUny7RjnliGGdFFwjaimuQeKIPzhrIR2BMsObaiKq2sELEt4ZJKlxkRBIkFfp/FPGbNCHnYueUQw7
	qt+fDF2cBzrX6AAttn75sU693jukv5puA5+uTBWsDxx/ziJ3KQABOCbN53HfVxymUREvD+XOJ4TIS
	9PayLgZPzIo0/npH8b9VnYIIEJbwiU0Sx9LbYC5GEBHDp0vsPOkvuuVup7Ausf3KC2r6uLYEJ/vNx
	alGPZMxSmyVBAjNZBsvhrWFCLc7b3bqSSlurWioReDdP0333M8OaH1OLjANHz2uOMHLh0R+eP3QYF
	f65e/zfPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOg4-0007zX-HC; Tue, 28 Apr 2020 11:45:28 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOfl-0006Ne-QA
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:45:15 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id ED5169C0DE979926EC9A;
 Tue, 28 Apr 2020 19:44:59 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.7) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 19:44:50 +0800
Subject: Re: [PATCH] pinctrl: remove unused 'pwm37_pins'
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Linus Walleij
 <linus.walleij@linaro.org>
References: <20200417092112.12303-1-yanaijie@huawei.com>
 <CACRpkdb5Ozz_MKAUDoyOxdnu_NkN72vRu=ZY7j_Lb5uMAiS3SA@mail.gmail.com>
 <20200428113049.GA5259@Mani-XPS-13-9360>
From: Jason Yan <yanaijie@huawei.com>
Message-ID: <57bc1105-06e9-2951-45c0-04b048f65d2e@huawei.com>
Date: Tue, 28 Apr 2020 19:44:49 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
MIME-Version: 1.0
In-Reply-To: <20200428113049.GA5259@Mani-XPS-13-9360>
X-Originating-IP: [10.166.213.7]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_044510_031032_8D19F17C 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Hulk Robot <hulkci@huawei.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgrlnKggMjAyMC80LzI4IDE5OjMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g5YaZ6YGTOgo+IE9u
IFR1ZSwgQXByIDI4LCAyMDIwIGF0IDExOjU4OjAxQU0gKzAyMDAsIExpbnVzIFdhbGxlaWogd3Jv
dGU6Cj4+IE9uIEZyaSwgQXByIDE3LCAyMDIwIGF0IDEwOjU0IEFNIEphc29uIFlhbiA8eWFuYWlq
aWVAaHVhd2VpLmNvbT4gd3JvdGU6Cj4+Cj4+PiBGaXggdGhlIGZvbGxvd2luZyBnY2Mgd2Fybmlu
ZzoKPj4+Cj4+PiBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1ibTE4ODAuYzoyNjM6Mjc6IHdhcm5p
bmc6IOKAmHB3bTM3X3BpbnPigJkgZGVmaW5lZAo+Pj4gYnV0IG5vdCB1c2VkIFstV3VudXNlZC1j
b25zdC12YXJpYWJsZT1dCj4+PiAgIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgcHdtMzdfcGlu
c1tdID0geyAxMTAgfTsKPj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+
Cj4+Pgo+Pj4gUmVwb3J0ZWQtYnk6IEh1bGsgUm9ib3QgPGh1bGtjaUBodWF3ZWkuY29tPgo+Pj4g
U2lnbmVkLW9mZi1ieTogSmFzb24gWWFuIDx5YW5haWppZUBodWF3ZWkuY29tPgo+Pgo+PiBJJ20g
c2NlcHRpYyBhYm91dCB0aGlzLiBJIHRoaW5rIFBXTTM3IGV4aXN0cyBhbmQganVzdCBuZWVkIHRv
IGJlCj4+IHByb3Blcmx5IGRlZmluZWQuCj4+Cj4+IE1hbmkgd2lsbCBrbm93IHRoZSByaWdodCBz
b2x1dGlvbiB0byB0aGlzLgo+Pgo+IAo+IFNvcnJ5IGZvciBtaXNzaW5nIHRoaXMgdGhyZWFkIGJl
Zm9yZS4gVGhlIG9yaWdpbmFsIHBhdGNoIGRpZG4ndCBsYW5kIGluIG15Cj4gaW5ib3guCj4gCj4g
QW55d2F5IHRoZSBpc3N1ZSBpcywgcHdtMzcgaXMgbm90IGFkZGVkIHRvIEJNMTg4MF9QSU5DVFJM
X0dSUC4gU28gdGhlIHByb3Blcgo+IGZpeCB3b3VsZCBiZSB0byBhZGQgaXQuCj4gCj4gSmFzb24s
IHdpbGwgeW91IGJlIGFibGUgdG8gc2VuZCBhIHBhdGNoIGZvciBhZGRpbmcgaXQ/IE90aGVyd2lz
ZSBJJ2xsIGRvIHRoYXQuCj4gCgpPSywgSSB3aWxsIHNlbmQgdjIgc29vbi4KClRoYW5rcywKSmFz
b24KCj4gVGhhbmtzLAo+IE1hbmkKPiAKPj4gWW91cnMsCj4+IExpbnVzIFdhbGxlaWoKPiAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
