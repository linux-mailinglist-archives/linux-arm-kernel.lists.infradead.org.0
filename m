Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174F01F83B9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 16:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xQsk2GLa1nSRd5EW7jqia9GXI2g5AHh/YwvdJg5HBSs=; b=puQOR983zV0aLh2M96xnBqb9Y
	dBE4YMI0L5LOrooFinA0hKvwpXPqRgtwHqHBJlBrs9kZgNirNUMO13EnH/bI1x2xHZNFMZZl1rlcH
	twO0EK3ygCPmL6TdkVpfyAuQKbZ+hCBy2czbw/KJhLR3omFtvYOdrb0fOSeIIPVgEzlTak1c6u/Dz
	rUtQNIceSf5bUbLUwEAD+rEjkObymSzJBrkdVy+GNS+FndoZy3kZfmuEIz5LY54Vmdg7c8IJPw8+/
	pPEqpuv858dOGZWUXGS19xlUvsTSkWxwUxChN56Qlm7BWvxHgDkyQTgOwTUwkGIn05WneneE8KbSV
	M8LPXdXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jk7Bw-0006dR-U7; Sat, 13 Jun 2020 14:31:28 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jk7Bl-0006d2-Up
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 14:31:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id x22so5701676pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 07:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=nwRd2enOMG4jt4Uk5EPLoc0tMcEuCb0goMle7pInqTY=;
 b=v1phM+buXJcNsgCbhY7OeaSaTKaeubsTt31NEtds009yu+XOUKHTvTIJCV+/7YcP/V
 RRB6uQe1xI40VJj/AJw4XoZNbMCTxwJ8ojDQMjIglpRrRQfwOBEgZZHV9o2ll7pAC6EF
 Twqy38hGUe+MkCIEi+6Hs7RN/CkIefm4ZE/k1NI45g2U9FYwv/xQDiF1rN5GZ1vjx0QH
 1I0elXulDV4eaWIGPMLNX06hEsLSxXUX2ukHpdfI47T9c2QAPXzzsZFSmwzz03GwHY/U
 8k624e+htQjxxyypyCK+/cSTD96gRrZIuOHcPlPDOsQXuCD+CW492fDB2SN9XKS4xal7
 aHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=nwRd2enOMG4jt4Uk5EPLoc0tMcEuCb0goMle7pInqTY=;
 b=gk9Mrl6u8Uow1y8I82efgZk+yCoKxjCdo/3FJgNDj3KFUzj7F1EeE4GRoMtJ5cBsd6
 +GoqCgXMzFe8ApgRe9VSFV0Z34hhicZCj344rbR4YR/Pu7CT1YJL4a65bwElwyT84qa6
 +oOxda/TfDtupyGXPt9b+HdW7Gg7bAL68cQpGEylg+3jd4DaSR7rzOaj6EGwNufwY097
 VtRJA6wMWHZ4P5gdapNjGRFg27MhcwYwFlzEQ9EGg39n3JDAcKRjdzPHWweu7QlzIIJU
 12bupQ7ynLYtaEctPO/ee1q0vrChRITG0+d3RaPNo54sc6lVFUkJxwdnY4YeuvvmUfOu
 TLVw==
X-Gm-Message-State: AOAM533aUbTT+PPrbpgIqR+XSyC3znEH1a9zmoeQwhCas9jfFI35cXtB
 36vXPqEsuGhfa/36pAcX2nuowg==
X-Google-Smtp-Source: ABdhPJxVRAOxi33M/Yo5lLiq44LB4Tmp+B+4yQr8teDhdEXqGSSr5eMFvu/Bf4aSvjnBDXFZJvwmhg==
X-Received: by 2002:a62:7c49:: with SMTP id x70mr15175032pfc.66.1592058676966; 
 Sat, 13 Jun 2020 07:31:16 -0700 (PDT)
Received: from [10.82.1.102] ([45.135.186.60])
 by smtp.gmail.com with ESMTPSA id 23sm9295417pfy.199.2020.06.13.07.31.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 07:31:16 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200611134410.GA1586057@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <8f9f6a77-4a65-afeb-0af9-e4868b52d7ce@linaro.org>
Date: Sat, 13 Jun 2020 22:30:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611134410.GA1586057@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_073117_997736_DCA9FAA7 
X-CRM114-Status: GOOD (  23.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci <linux-pci@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, kenneth-lee-2012@foxmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzYvMTEg5LiL5Y2IOTo0NCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiArKysgYi9k
cml2ZXJzL2lvbW11L2lvbW11LmMKPj4+Pj4+Pj4+IEBAIC0yNDE4LDYgKzI0MTgsMTAgQEAgaW50
IGlvbW11X2Z3c3BlY19pbml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0Cj4+Pj4+Pj4+PiBm
d25vZGVfaGFuZGxlICppb21tdV9md25vZGUsCj4+Pj4+Pj4+PiAgICAgICAgICAgICBmd3NwZWMt
PmlvbW11X2Z3bm9kZSA9IGlvbW11X2Z3bm9kZTsKPj4+Pj4+Pj4+ICAgICAgICAgICAgIGZ3c3Bl
Yy0+b3BzID0gb3BzOwo+Pj4+Pj4+Pj4gICAgICAgICAgICAgZGV2X2lvbW11X2Z3c3BlY19zZXQo
ZGV2LCBmd3NwZWMpOwo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKyAgICAgICBpZiAoZGV2X2lzX3Bj
aShkZXYpKQo+Pj4+Pj4+Pj4gKyAgICAgICAgICAgICAgIHBjaV9maXh1cF9kZXZpY2UocGNpX2Zp
eHVwX2ZpbmFsLCB0b19wY2lfZGV2KGRldikpOwo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+IFRoZW4gcGNpX2ZpeHVwX2ZpbmFsIHdpbGwgYmUgY2FsbGVkIHR3aWNlLCB0aGUgZmlyc3Qg
aW4gcGNpX2J1c19hZGRfZGV2aWNlLgo+Pj4+Pj4+Pj4gSGVyZSBpbiBpb21tdV9md3NwZWNfaW5p
dCBpcyB0aGUgc2Vjb25kIHRpbWUsIHNwZWNpZmljYWxseSBmb3IgaW9tbXVfZndzcGVjLgo+Pj4+
Pj4+Pj4gV2lsbCBzZW5kIHRoaXMgd2hlbiA1LjgtcmMxIGlzIG9wZW4uCj4+Pj4+Pj4+IFdhaXQs
IHRoaXMgd2hvbGUgZml4dXAgYXBwcm9hY2ggc2VlbXMgd3JvbmcgdG8gbWUuICBObyBtYXR0ZXIg
aG93IHlvdQo+Pj4+Pj4+PiBkbyB0aGUgZml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2gg
bWVhbnMgaXQgcmVxdWlyZXMgb25nb2luZwo+Pj4+Pj4+PiBtYWludGVuYW5jZS4gIFN1cmVseSB3
ZSBkb24ndCB3YW50IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5kb3IvRGV2aWNlIElECj4+Pj4+Pj4+
IGZvciBldmVyeSBuZXcgQU1CQSBkZXZpY2UgdGhhdCBjb21lcyBhbG9uZywgZG8gd2U/Cj4+Pj4+
Pj4+Cj4+Pj4+Pj4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNlIGhhcyBzdGFuZGFyZCBQQ0kgY2Zn
IHNwYWNlLCBidXQgcGh5c2ljYWwKPj4+Pj4+PiBpbXBsZW1lbnRhdGlvbiBpcyBiYXNlIG9uIEFN
QkEKPj4+Pj4+PiBUaGV5IGNhbiBwcm92aWRlIHBhc2lkIGZlYXR1cmUuCj4+Pj4+Pj4gSG93ZXZl
ciwKPj4+Pj4+PiAxLCBkb2VzIG5vdCBzdXBwb3J0IHRscCBzaW5jZSB0aGV5IGFyZSBub3QgcmVh
bCBwY2kgZGV2aWNlcy4KPj4+Pj4+PiAyLiBkb2VzIG5vdCBzdXBwb3J0IHByaSwgaW5zdGVhZCBz
dXBwb3J0IHN0YWxsIChwcm92aWRlZCBieSBzbW11KQo+Pj4+Pj4+IEFuZCBzdGFsbCBpcyBub3Qg
YSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRlc2NyaWJlZCBpbiBzdHJ1Y3QgcGNpX2RldiwK
Pj4+Pj4+PiBidXQgaW4gc3RydWN0IGlvbW11X2Z3c3BlYy4KPj4+Pj4+PiBTbyB3ZSB1c2UgdGhp
cyBmaXh1cCB0byB0ZWxsIHBjaSBzeXN0ZW0gdGhhdCB0aGUgZGV2aWNlcyBjYW4gc3VwcG9ydCBz
dGFsbCwKPj4+Pj4+PiBhbmQgaGVyZWJ5IHN1cHBvcnQgcGFzaWQuCj4+Pj4+PiBUaGlzIGRpZCBu
b3QgYW5zd2VyIG15IHF1ZXN0aW9uLiAgQXJlIHlvdSBwcm9wb3NpbmcgdGhhdCB3ZSB1cGRhdGUg
YQo+Pj4+Pj4gcXVpcmsgZXZlcnkgdGltZSBhIG5ldyBBTUJBIGRldmljZSBpcyByZWxlYXNlZD8g
IEkgZG9uJ3QgdGhpbmsgdGhhdAo+Pj4+Pj4gd291bGQgYmUgYSBnb29kIG1vZGVsLgo+Pj4+PiBZ
ZXMsIHlvdSBhcmUgcmlnaHQsIGJ1dCB3ZSBkbyBub3QgaGF2ZSBhbnkgYmV0dGVyIGlkZWEgeWV0
Lgo+Pj4+PiBDdXJyZW50bHkgd2UgaGF2ZSB0aHJlZSBmYWtlIHBjaSBkZXZpY2VzLCB3aGljaCBz
dXBwb3J0IHN0YWxsIGFuZCBwYXNpZC4KPj4+Pj4gV2UgaGF2ZSB0byBsZXQgcGNpIHN5c3RlbSBr
bm93IHRoZSBkZXZpY2UgY2FuIHN1cHBvcnQgcGFzaWQsIGJlY2F1c2Ugb2YKPj4+Pj4gc3RhbGwg
ZmVhdHVyZSwgdGhvdWdoIG5vdCBzdXBwb3J0IHByaS4KPj4+Pj4gRG8geW91IGhhdmUgYW55IG90
aGVyIGlkZWFzPwo+Pj4+IEl0IHNvdW5kcyBsaWtlIHRoZSBiZXN0IHdheSB3b3VsZCBiZSB0byBh
bGxvY2F0ZSBhIFBDSSBjYXBhYmlsaXR5IGZvciBpdCwgc28KPj4+PiBkZXRlY3Rpb24gY2FuIGJl
IGRvbmUgdGhyb3VnaCBjb25maWcgc3BhY2UsIGF0IGxlYXN0IGluIGZ1dHVyZSBkZXZpY2VzLAo+
Pj4+IG9yIHBvc3NpYmx5IGFmdGVyIGEgZmlybXdhcmUgdXBkYXRlIGlmIHRoZSBjb25maWcgc3Bh
Y2UgaW4geW91ciBzeXN0ZW0KPj4+PiBpcyBjb250cm9sbGVkIGJ5IGZpcm13YXJlIHNvbWV3aGVy
ZS4gIE9uY2UgdGhlcmUgaXMgYSBwcm9wZXIgbWVjaGFuaXNtCj4+Pj4gdG8gZG8gdGhpcywgdXNp
bmcgZml4dXBzIHRvIGRldGVjdCB0aGUgZWFybHkgZGV2aWNlcyB0aGF0IGRvbid0IHVzZSB0aGF0
Cj4+Pj4gc2hvdWxkIGJlIHVuY29udHJvdmVyc2lhbC4gSSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUg
cHJvY2VzcyBvciB0aW1lbGluZQo+Pj4+IGlzIHRvIGFkZCBuZXcgY2FwYWJpbGl0aWVzIGludG8g
dGhlIFBDSWUgc3BlY2lmaWNhdGlvbiwgb3IgaWYgdGhpcyBvbmUKPj4+PiB3b3VsZCBiZSBhY2Nl
cHRhYmxlIHRvIHRoZSBQQ0kgU0lHIGF0IGFsbC4KPj4+IFRoYXQgc291bmRzIGxpa2UgYSBwb3Nz
aWJpbGl0eS4gIFRoZSBzcGVjIGFscmVhZHkgZGVmaW5lcyBhCj4+PiBWZW5kb3ItU3BlY2lmaWMg
RXh0ZW5kZWQgQ2FwYWJpbGl0eSAoUENJZSByNS4wLCBzZWMgNy45LjUpIHRoYXQgbWlnaHQKPj4+
IGJlIGEgY2FuZGlkYXRlLgo+PiBXaWxsIGludmVzdGlnYXRlIHRoaXMsIHRoYW5rcyBCam9ybgo+
IEZXSVcsIHRoZXJlJ3MgYWxzbyBhIFZlbmRvci1TcGVjaWZpYyBDYXBhYmlsaXR5IHRoYXQgY2Fu
IGFwcGVhciBpbiB0aGUKPiBmaXJzdCAyNTYgYnl0ZXMgb2YgY29uZmlnIHNwYWNlICh0aGUgVmVu
ZG9yLVNwZWNpZmljIEV4dGVuZGVkCj4gQ2FwYWJpbGl0eSBtdXN0IGFwcGVhciBpbiB0aGUgIkV4
dGVuZGVkIENvbmZpZ3VyYXRpb24gU3BhY2UiIGZyb20KPiAweDEwMC0weGZmZikuClVuZm9ydHVu
YXRlbHkgb3VyIHNpbGljb24gZG9lcyBub3QgaGF2ZSBlaXRoZXIgVmVuZG9yLVNwZWNpZmljwqBD
YXBhYmlsaXR5IG9yClZlbmRvci1TcGVjaWZpY8KgRXh0ZW5kZWQgQ2FwYWJpbGl0eS4KClN0dWRp
ZWQgY29tbWl0IDg1MzFlMjgzYmVlNjYwNTA3MzRmYjBlODlkNTNlODVmZDVjZTI0YTQKTG9va3Mg
dGhpcyBtZXRob2QgcmVxdWlyZXMgYWRkaW5nIG1lbWJlciAobGlrZSBjYW5fc3RhbGwpIHRvIHN0
cnVjdCAKcGNpX2RldiwgbG9va3MgZGlmZmljdWx0LgoKPgo+Pj4+IElmIGRldGVjdGlvbiBjYW5u
b3QgYmUgZG9uZSB0aHJvdWdoIFBDSSBjb25maWcgc3BhY2UsIHRoZSBuZXh0IGJlc3QKPj4+PiBh
bHRlcm5hdGl2ZSBpcyB0byBwYXNzIGF1eGlsaWFyeSBkYXRhIHRocm91Z2ggZmlybXdhcmUuIE9u
IERUIGJhc2VkCj4+Pj4gbWFjaGluZXMsIHlvdSBjYW4gbGlzdCBub24taG90cGx1Z2dhYmxlIFBD
SWUgZGV2aWNlcyBhbmQgYWRkIGN1c3RvbQo+Pj4+IHByb3BlcnRpZXMgdGhhdCBjb3VsZCBiZSBy
ZWFkIGR1cmluZyBkZXZpY2UgZW51bWVyYXRpb24uIEkgYXNzdW1lCj4+Pj4gQUNQSSBoYXMgc29t
ZXRoaW5nIHNpbWlsYXIsIGJ1dCBJIGhhdmUgbm90IGRvbmUgdGhhdC4KPj4gWWVzLCB0aGFua3Mg
QXJuZAo+Pj4gQUNQSSBoYXMgX0RTTSAoQUNQSSB2Ni4zLCBzZWMgOS4xLjEpLCB3aGljaCBtaWdo
dCBiZSBhIGNhbmRpZGF0ZS4gIEkKPj4+IGxpa2UgdGhpcyBiZXR0ZXIgdGhhbiBhIFBDSSBjYXBh
YmlsaXR5IGJlY2F1c2UgdGhlIHByb3BlcnR5IHlvdSBuZWVkCj4+PiB0byBleHBvc2UgaXMgbm90
IGEgUENJIHByb3BlcnR5Lgo+PiBfRFNNIG1heSBub3Qgd29ya2FibGUsIHNpbmNlIGl0IGlzIHdv
cmtpbmcgaW4gcnVudGltZS4KPj4gV2UgbmVlZCBzdGFsbCBpbmZvcm1hdGlvbiBpbiBpbml0IHN0
YWdlLCBuZWl0aGVyIHRvbyBlYXJseSAoYWZ0ZXIgYWxsb2NhdGlvbgo+PiBvZiBpb21tdV9md3Nw
ZWMpCj4+IG5vciB0b28gbGF0ZSAoYmVmb3JlIGFybV9zbW11X2FkZF9kZXZpY2UgKS4KPiBJJ20g
bm90IGF3YXJlIG9mIGEgcmVzdHJpY3Rpb24gb24gd2hlbiBfRFNNIGNhbiBiZSBldmFsdWF0ZWQu
ICBJJ20KPiBsb29raW5nIGF0IEFDUEkgdjYuMywgc2VjIDkuMS4xLiAgQXJlIHlvdSBzZWVpbmcg
c29tZXRoaW5nIGRpZmZlcmVudD8KRFNNIG1ldGhvZCBzZWVtcyByZXF1aXJlcyB2ZW5kb3Igc3Bl
Y2lmaWMgZ3VpZCwgYW5kIGNvZGUgd291bGQgYmUgdmVuZG9yIApzcGVjaWZpYy4KRXhjZXB0IGFk
ZGluZyB1dWlkIHRvIHNvbWUgc3BlYyBsaWtlIHBjaV9hY3BpX2RzbV9ndWlkLgpvYmogPSBhY3Bp
X2V2YWx1YXRlX2RzbShBQ1BJX0hBTkRMRShidXMtPmJyaWRnZSksICZwY2lfYWNwaV9kc21fZ3Vp
ZCwgMSwKSUdOT1JFX1BDSV9CT09UX0NPTkZJR19EU00sIE5VTEwpOwoKPj4gQnkgdGhlIHdheSwg
SXQgd291bGQgYmUgYSBsb25nIHRpbWUgaWYgd2UgbmVlZCBtb2RpZnkgZWl0aGVyIHBjaWUKPj4g
c3BlYyBvciBhY3BpIHNwZWMuICBDYW4gd2UgdXNlIHBjaV9maXh1cF9kZXZpY2UgaW4gaW9tbXVf
ZndzcGVjX2luaXQKPj4gZmlyc3QsIGl0IGlzIHJlbGF0aXZlbHkgc2ltcGxlIGFuZCBtZWV0IHRo
ZSByZXF1aXJlbWVudCBvZiBwbGF0Zm9ybQo+PiBkZXZpY2UgdXNpbmcgcGFzaWQsIGFuZCB0aGV5
IGFyZSBhbHJlYWR5IGluIHByb2R1Y3QuCj4gTmVpdGhlciB0aGUgUENJIFZlbmRvci1TcGVjaWZp
YyBDYXBhYmlsaXR5IG5vciB0aGUgQUNQSSBfRFNNIHJlcXVpcmVzCj4gYSBzcGVjIGNoYW5nZS4g
IEJvdGggY2FuIGJlIGNvbXBsZXRlbHkgdmVuZG9yLWRlZmluZWQuCkFkZGluZyB2ZW5kb3Itc3Bl
Y2lmaWMgY29kZSB0byBjb21tb24gZmlsZXMgbG9va3MgYSBiaXQgdWdseS4KClRoYW5rcwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
