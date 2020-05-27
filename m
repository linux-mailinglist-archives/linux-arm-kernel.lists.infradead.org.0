Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FF61E447C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:52:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qFSYuxFiEmtAjBJWqidzLYDeOAbJgoyCLMABm+JfDCM=; b=KQzQm6pds8yhz1dh6hYceaNHE
	7It7+IpntjYDIsNqjta7V7Qw1/m6mNeSVNNcyJG+x+xcMyvyvNuY2+tVaMYFCspfs3Bfm9vxsQnDH
	+77LEQlRZ9PQdY7eLnUxaQyK+7BADbYJDMV8HFRXu7m+XsY0h0BGY7Wwb9ujxvIxhnWpVthDRJvxO
	ycFSKH1w9Gkq0KjtwbPLHH5MkR5U1I+3k9h7NkzwI7eCpuKS+wpKs6oUcepHXwfVb0wW7GhRIK6SP
	OY0hJo6qWfRqF+ulxQGAB29Bgw5XFTvwi4WHBRW/WBsA/Bv+0OWbPLzuhmnUyi1jcvGJE8P8tfocY
	tAmZymmmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwTl-0005PU-FJ; Wed, 27 May 2020 13:52:21 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwTb-0005On-QR
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:52:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q24so1546953pjd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 06:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=sVOrxsk18BnSFATyAjPbeo6+7yMbRqTwIElwDUYrAFk=;
 b=IQd9QRIugzIzBpTvp3+gDmqldfXigO2E49gsEa4gWjkW8zQ7okCePzzME85lMseCYp
 C6UogWhM76FwGK5GWiG8mRjoqMxQAiVMmmfU32mB1clNfA4oHsd9jNVbdkKq9iRLaZ6o
 /GSx8wknomZEweg/pRNTs5AEyhz2TlPsVfIh1FVWAsub3p7gsfYfKsWEW0GjuGLOSeH3
 JX/KrTERHguXCxqwKCC2l18gU5RD125PFLl4ooOSVZXxkfqWDt3XB8oULXtxbINGB7jy
 IZ+Ys2oL0/yBtqmoT9wOKg1LwOZXfABmxwNOY7WVGXRfz3jB/ahveiTxn+3ArAeBKNsp
 azNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=sVOrxsk18BnSFATyAjPbeo6+7yMbRqTwIElwDUYrAFk=;
 b=DlxslrH/sSbiKzalyEGp/2tuCdOAu6XncQ+1JYDgLzcnej7JkxP/pfLc+g2kGuHpTO
 QST9GBBVBPyqL8kr+VavPeHiOjssRpkunQlNsNfGfxPFmZl0ghxmjtR1qpPvjspAswZY
 se6pitpIY8kuUPY6Y7RzjiDnpJV0vn2vlKqG9QuNPpYyYmTuijlAIpK9kJJHEHCOJQWM
 Uo80wnamXEWF11rXSfPbydF/ZPxD8UvhBeJSNdJdF60txxVyrdXmqQBSlYxVjpCYi7x3
 +Z2igxFrjpY1MT/W+0cDL3A8OIdo3JhSMW0jKGS1vKg94dw4g3W/pPeHl15VqvS63laK
 hHMQ==
X-Gm-Message-State: AOAM533752HYxB/xeaUVXfc7Ag6NVwTZSL66w0hXVIlnUQSBvpaLIXDo
 LLOqsxWUcH+uFeyrIkNO1/Pkug==
X-Google-Smtp-Source: ABdhPJyJEWrfFe5MlHVlgCY+nDX0MeA9yhMhsez39F2xUkBVmUD/N243xLXOBOeIAja47JbP7VfxPQ==
X-Received: by 2002:a17:90a:2ac2:: with SMTP id
 i2mr5055611pjg.80.1590587528565; 
 Wed, 27 May 2020 06:52:08 -0700 (PDT)
Received: from [192.168.11.133] (li1566-229.members.linode.com.
 [139.162.86.229])
 by smtp.gmail.com with ESMTPSA id s15sm2106775pgv.5.2020.05.27.06.51.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 06:52:07 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <20200527090007.GA179718@kroah.com>
 <CAK8P3a35fjXt1F2hJygup5gWfjPHZTuU+VD69K5uzrNhhgu0Pw@mail.gmail.com>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <ec994862-ac1c-bb6e-4fe6-ce5bf74f614a@linaro.org>
Date: Wed, 27 May 2020 21:51:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a35fjXt1F2hJygup5gWfjPHZTuU+VD69K5uzrNhhgu0Pw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_065211_855818_B7A61E44 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-pci <linux-pci@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
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

CgpPbiAyMDIwLzUvMjcg5LiL5Y2INTo1MywgQXJuZCBCZXJnbWFubiB3cm90ZToKPiBPbiBXZWQs
IE1heSAyNywgMjAyMCBhdCAxMTowMCBBTSBHcmVnIEtyb2FoLUhhcnRtYW4KPiA8Z3JlZ2toQGxp
bnV4Zm91bmRhdGlvbi5vcmc+IHdyb3RlOgo+PiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAwNzo0
OTowN1BNICswODAwLCBaaGFuZ2ZlaSBHYW8gd3JvdGU6Cj4+PiBTb21lIHBsYXRmb3JtIGRldmlj
ZXMgYXBwZWFyIGFzIFBDSSBidXQgYXJlIGFjdHVhbGx5IG9uIHRoZSBBTUJBIGJ1cywKPj4gV2h5
IHdvdWxkIHRoZXNlIGRldmljZXMgbm90IGp1c3Qgc2hvdyB1cCBvbiB0aGUgQU1CQSBidXMgYW5k
IHVzZSBhbGwgb2YKPj4gdGhhdCBsb2dpYyBpbnN0ZWFkIG9mIGJlaW5nIGEgUENJIGRldmljZSBh
bmQgaGF2aW5nIHRvIGdvIHRocm91Z2ggb2RkCj4+IGZpeGVzIGxpa2UgdGhpcz8KPiBUaGVyZSBp
cyBhIGdlbmVyYWwgbW92ZSB0byBoYXZpbmcgaGFyZHdhcmUgYmUgZGlzY292ZXJhYmxlIGV2ZW4g
d2l0aAo+IEFSTSBwcm9jZXNzb3JzLiBIYXZpbmcgb24tY2hpcCBkZXZpY2VzIGJlIGRpc2NvdmVy
YWJsZSB1c2luZyBQQ0kgY29uZmlnCj4gc3BhY2UgaXMgaG93IHg4NiBTb0NzIHVzdWFsbHkgZG8g
aXQsIGFuZCB0aGF0IGlzIGdlbmVyYWxseSBhIGdvb2QgdGhpbmcKPiBhcyBpdCBtZWFucyB3ZSBk
b24ndCBuZWVkIHRvIGRlc2NyaWJlIHRoZW0gaW4gRFQKPgo+IEkgZ3Vlc3MgYXMgdGhlIGhhcmR3
YXJlIGRlc2lnbmVycyBhcmUgc3RpbGwgbGVhcm5pbmcgYWJvdXQgaXQsIHRoaXMgaXMgbm90Cj4g
YWx3YXlzIGRvbmUgY29ycmVjdGx5LiBJbiBnZW5lcmFsLCB3ZSBjYW4gYWxzbyBkZXNjcmliZSBQ
Q0kgZGV2aWNlcyBvbgo+IERUIGFuZCBkbyBmaXh1cHMgZHVyaW5nIHRoZSBwcm9iaW5nIHRoZXJl
LCBidXQgSSBzdXNwZWN0IHRoYXQgd29uJ3Qgd29yawo+IGFzIGVhc2lseSB1c2luZyBBQ1BJIHBy
b2JpbmcsIHNvIHRoZSBmaXh1cCBpcyBrZXllZCBvZmYgdGhlIGhhcmR3YXJlIElELAo+IGFnYWlu
IGFzIGlzIGNvbW1vbiBmb3IgeDg2IG9uLWNoaXAgZGV2aWNlcy4KPgo+ICAgClllcywgdGhhbmtz
IEFybmQgOikKCkluIG9yZGVyIHRvIHVzZSBwYXNpZCwgaW8gcGFnZSBmYXVsdCBoYXMgdG8gYmUg
c3VwcG9ydGVkLAplaXRoZXIgYnkgUENJIFBSSSBmZWF0dXJlIChmcm9tIHBjaSBkZXZpY2UpIG9y
IHN0YWxsIG1vZGUgZnJvbSBzbW11IAoocGxhdGZvcm0gZGV2aWNlKS4KSGVyZSBpcyBsZXR0aW5n
IHN5c3RlbSBrbm93IHRoZSBwbGF0Zm9ybSBkZXZpY2UgY2FuIHN1cHBvcnQgc21tdSBzdGFsbCAK
bW9kZSwgYXMgYSByZXN1bHQgc3VwcG9ydCBwYXNpZC4KV2hpbGUgc3RhbGwgaXMgbm90IGEgcGNp
IGNhcGFiaWxpdHksIHNvIHdlIHVzZSBhIGZpeHVwIGhlcmUuCgpUaGFua3MKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
