Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C1C1A3E83
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 04:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6g+hUOcQAoS1W6oEN5KP2pyYJcOSCnP25C/FfMaS93w=; b=L+YLgE/CO7ZvXI
	emxnOpDTQhM1DpMjYXAZo4ywjWxizgmHmU2MXwFKU7RJ0Ht8xU+PQYfTrmGBr1y+8W/qW9VnGsQUR
	7UWsptRJpQKheqfJffTff3CCfBnTvZ3BIO0y8JHj8eXY69eITFcj7o8sjxRZ/vxzrGn5AE/dwGqhA
	xt5e+Hgoz7ViS4+HcpPQvOESvh4EaZcNXW6LUqDjNDkF7bO9Cfcsk5vuLZ5Czx7TYe5Mbfm+OAgvS
	A/tjJLXvzaChSx6f5VoMcuIhF9MH12PmSEazlAhXchSr5NVPr/vs5XZv+CI5FZSOc2bJ5U+319jvP
	0BdBVgnPloI1OiPnGg0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjpf-0005x3-9i; Fri, 10 Apr 2020 02:55:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjpX-0005v1-Pu
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 02:55:45 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B69DE27961A865FC6962;
 Fri, 10 Apr 2020 10:55:38 +0800 (CST)
Received: from [127.0.0.1] (10.74.184.86) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.487.0; Fri, 10 Apr 2020
 10:55:29 +0800
Subject: Re: Question about SEA handling process happened in user space
To: James Morse <james.morse@arm.com>
References: <5E81EFCD.6020605@huawei.com>
 <2b0e5507-ad75-9af1-6afe-aa87d8cf597f@arm.com> <5E83104A.7020803@huawei.com>
 <f9732852-046c-347c-21e1-7690e6b84a50@arm.com> <5E840F3B.6040803@huawei.com>
 <7d6668d6-ec4a-e362-94a3-c31950651c02@arm.com> <5E8EDFF6.4050903@huawei.com>
 <d3a56afc-ce1a-1561-a6bb-70399bb97c50@arm.com>
From: Xiaofei Tan <tanxiaofei@huawei.com>
Message-ID: <5E8FE021.1050900@huawei.com>
Date: Fri, 10 Apr 2020 10:55:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <d3a56afc-ce1a-1561-a6bb-70399bb97c50@arm.com>
X-Originating-IP: [10.74.184.86]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_195544_025193_7ABA9F7D 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 Will Deacon <will@kernel.org>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org, Shiju Jose <shiju.jose@huawei.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSmFtZXPvvIwKCk9uIDIwMjAvNC85IDIyOjI4LCBKYW1lcyBNb3JzZSB3cm90ZToKPiBPbiAw
OS8wNC8yMDIwIDA5OjQyLCBYaWFvZmVpIFRhbiB3cm90ZToKPj4gSmFtZXMgTW9yc2Ugd3JvdGU6
Cj4+PiBEbyB5b3UgaGF2ZSBwYXRjaGVzIHRvIGdldCBsaW51eCB0byBkbyBzb21ldGhpbmcgdXNl
ZnVsIHdpdGggdGhlIHByb2Nlc3NvciBlcnJvciBub2Rlcz8KPj4+Cj4+PiBXZSdkIG5lZWQgaXQg
dG8gaGFuZGxlIHVuY29ycmVjdGVkIGNhY2hlIGVycm9ycyB3aXRoIGEgcGh5c2ljYWwgYWRkcmVz
cywgYXMgaWYgdGhleSB3ZXJlCj4+PiBtZW1vcnkgZXJyb3JzLi4uCj4gCj4+IFllcywgd2UgaGF2
ZSBzb21lIHBhdGNoZXMgdG8gZG8gdGhpcyB0aGluZyBpbnNpZGUuIFRoZW4gbWVtb3J5X2ZhaWx1
cmUoKSB3aWxsIGJlIGNhbGxlZCBmb3IKPj4gYXJtIHByb2Nlc3NvciBlcnJvciBzZWN0aW9uIHdo
ZW4gcGh5c2ljYWwgYWRkcmVzcyBpcyBhdmFpbGFibGUuCj4gCj4gSSBsb29rIGZvcndhcmQgdG8g
cmVhZGluZyB0aGVtIQo+IAoKaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMTgvMS8yNi8xOTcKCk91
ciBndXkgdHJpZWQgdG8gdXBzdHJlYW0gaXQsIGJ1dCBub3QgYWNjZXB0ZWQuIDooCgo+IFsuLi5d
Cj4gCj4+IEkgdGhpbmsgdGhpcyBwYXJ0IGlzIHdvcnRoIGltcHJvdmluZy4KPiAKPj4gQlRXLCBz
aG91bGQgQVJNIHByb2Nlc3NvciByZWNvcmQgcGh5c2ljYWwgYWRkcmVzcyB3aGVuIGNvbnN1bWVk
IGFuIG1lbW9yeSBwb2lzb24gZXJyb3IgZm9yIFNFQT8KPj4gSXQgaXMgaGVscGZ1bCB0byBkbyBl
cnJvciByZWNvdmVyeS4gSXMgdGhpcyBtYW5kYXRvcnkgZm9yIGFybSBzcGVjPwo+IAo+IEVSUjxu
PkFERFI/IEl0cyBub3QgbWFuZGF0b3J5IHRvIGJlIGZpbGxlZCBmb3IgYW55IGVycm9yLiBJdCBj
YW4gYmUgc29tZSBpbXAtZGVmIGJ1cwo+IGFkZHJlc3Mgb3IgYSB2aXJ0dWFsIGFkZHJlc3MuIAoK
dmlydHVhbCBhZGRyZXNzID8gYnV0IGFybSBzcGVjIGNhbGxlZCBpdCBwaHlzaWNhbCBhZGRyZXNz
LgoKCj4gSXQgY2FuIGFsc28gYmUgbGVmdCBvdXQgaWYgRVJSPGI+U1RBVFVTLkFWIHNheXMgaXRz
IG5vdCB2YWxpZC4KPiAKClllcwoKPiBUaGlzIGlzIHJlYWxseSBhIHF1ZXN0aW9uIGZvciB5b3Vy
IGhhcmR3YXJlIHBlb3BsZS4gCgpZZXMKCj4gRG9lcyB5b3VyIGltcGxlbWVudGF0aW9uIGFsd2F5
cyBnaXZlIGEgcGh5c2ljYWwtYWRkcmVzcyBmb3IgYSBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9y
dD8KPiAKCldlIGhvcGUgc28uIEJ1dCBoYXJkd2FyZSBndXlzIHNheSBpdCBpcyBoYXJkIHRvIHJl
Y29yZCBwaHlzaWNhbCBhZGRyZXNzIGZvciBldmVyeSBzaXR1YXRpb24uCgo+IAo+IFRoYW5rcywK
PiAKPiBKYW1lcwo+IAo+IC4KPiAKCi0tIAogdGhhbmtzCnRhbnhpYW9mZWkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
