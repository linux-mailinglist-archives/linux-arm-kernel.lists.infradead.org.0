Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E311E57DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 08:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2BKM/tXBiuX/7YNjHhoBX05hs1oM0ZuwUJdPZ/5s1Lg=; b=KpbkHR1zJAek01ZAtzvaFZ/zt
	FssmIzMF4UrlvkVAuM5vG0eWX/dZw61ehrqLLZ5k0zuB4EYAd3FdQ/P/j7sO/PUO1u+HyCZuIslx/
	vnWWI/10GIFZ7dqYCDxc3j+UPFSS6fCCwK8aDmLDtUSL5IlS/c1xOZGO4SJuFm2UmZxcoBMLbkU4n
	w8FGo+dY57rIj8YaltHEt86Wb/AH6CBZzumE8dOre1ww2p9tBqUVAYnvMyAyQdqc0mTdS8wyVzAdH
	aIpYjUNL4cIMMSCyhaqRVfkTx6g9LrMT20UMXxmSmmArvF7muSsTEM/cVdZ1LD/gJ6GB2Z+daZm9m
	+EjnhugFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeCJz-00076L-QK; Thu, 28 May 2020 06:47:19 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeCJq-000761-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 06:47:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id q16so11118440plr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 23:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=bofUGbEFbdnCpZWFs8DHvdOjPGm9ZoW5dSffBdf+/48=;
 b=i9zZJ+TNeNvRcNidmG6piUlVvLM12Ql3gwyE+1zs9+dJy5yzwRheejuryIIdaoZ4Oy
 PpqV4KZbIEBAopt3QeSB7kIlzfJ/gbWqRtjQdJUqsTEvr+QSDb1MpiutTS4mt27VJCUT
 wGolKhdBUMCO/4xP7K+wFV4wv+9gh0GtSNTZB22oVGKXEuXTwgUf3S6zOwCFXqSedPwS
 YFXT5ssn5iSuHWecgXg/mm3uDYHzC4v6XDBneViordfQVzOqzgDXeZa++mqrl38Mj+tu
 hrnxug4U/nOg29Qjc/NWFC05jy+tQ7In0/wAskn4wZvpS2yEdT1qW9PePMneSuSNMFTS
 bNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=bofUGbEFbdnCpZWFs8DHvdOjPGm9ZoW5dSffBdf+/48=;
 b=m/t1BXL19YL/uvxCl9qWC4AvIMHk+SKuOYSKU2zf52uKbVKPhA7OyxRwVRtKc7gd6d
 /NdmDV+htEYBA5bTPK5eJxPR8LoLq5tJCM8Piu+BBzCshiZZYKfs2Weiun8ZEWjIn/UI
 s3fS7QHcRc/jQdVCRoPmM0oVtSHwd0/zCugU9GXPS91A+QBJaFDDvALGmhfQDV+dy9y/
 ATRyg93q1j7JR9cyx9EvgeB/m4ucQhSt/jgpP4gLbukrwKXv68KaOGEn5wA9gifTwbyv
 JgMo/AhJlWM2ScyUlDngwhqaHu8Enib5/EBEU1GNYmKEoKkkilf2yoey8SKW3g0YxnKV
 bA0w==
X-Gm-Message-State: AOAM53187hc8uEB3D5uVoeFD/+/O7TfUaOEmD8WTpgmSzDnI7J6qGYBM
 OPbgDIRp4Vv1rSmdlfmbTFU+tQ==
X-Google-Smtp-Source: ABdhPJxLtsDA5liLh4kIqfAgfwRAV1r9YEZbncwuClIEToyTcjpXKMtzdNc0SaVnvBbQN+Q0kn7IoQ==
X-Received: by 2002:a17:90a:de8b:: with SMTP id
 n11mr2312350pjv.87.1590648429749; 
 Wed, 27 May 2020 23:47:09 -0700 (PDT)
Received: from [10.140.6.42] ([45.135.186.12])
 by smtp.gmail.com with ESMTPSA id 188sm3707241pfu.165.2020.05.27.23.46.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 23:47:09 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200527181842.GA256680@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <83bd3d72-3a0c-d9b6-54ad-5bc0dbc5be7d@linaro.org>
Date: Thu, 28 May 2020 14:46:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527181842.GA256680@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_234710_632344_5EBD31E4 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-pci@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joerg Roedel <joro@8bytes.org>, Hanjun Guo <guohanjun@huawei.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-acpi@vger.kernel.org,
 Wangzhou <wangzhou1@hisilicon.com>, linux-crypto@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJqb3JuCgpPbiAyMDIwLzUvMjgg5LiK5Y2IMjoxOCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
PiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAwNzo0OTowN1BNICswODAwLCBaaGFuZ2ZlaSBHYW8g
d3JvdGU6Cj4+IFNvbWUgcGxhdGZvcm0gZGV2aWNlcyBhcHBlYXIgYXMgUENJIGJ1dCBhcmUgYWN0
dWFsbHkgb24gdGhlIEFNQkEgYnVzLAo+PiBhbmQgdGhleSBuZWVkIGZpeHVwIGluIGRyaXZlcnMv
cGNpL3F1aXJrcy5jIGhhbmRsaW5nIGlvbW11X2Z3bm9kZS4KPj4gSGVyZSBpbnRyb2R1Y2luZyBQ
Q0lfRklYVVBfSU9NTVUsIHdoaWNoIGlzIGNhbGxlZCBhZnRlciBpb21tdV9md25vZGUKPj4gaXMg
YWxsb2NhdGVkLCBpbnN0ZWFkIG9mIHJldXNpbmcgUENJX0ZJWFVQX0ZJTkFMIHNpbmNlIGl0IHdp
bGwgc2xvdwo+PiBkb3duIGlvbW11IHByb2JpbmcgYXMgYWxsIGRldmljZXMgaW4gZml4dXAgZmlu
YWwgbGlzdCB3aWxsIGJlCj4+IHJlcHJvY2Vzc2VkLCBzdWdnZXN0ZWQgYnkgSm9lcmcsIFsxXQo+
IElzIHRoaXMgc2xvd2Rvd24gc2lnbmlmaWNhbnQ/ICBXZSBhbHJlYWR5IGl0ZXJhdGUgb3ZlciBl
dmVyeSBkZXZpY2UKPiB3aGVuIGFwcGx5aW5nIFBDSV9GSVhVUF9GSU5BTCBxdWlya3MsIHNvIGlm
IHdlIHVzZWQgdGhlIGV4aXN0aW5nCj4gUENJX0ZJWFVQX0ZJTkFMLCB3ZSB3b3VsZG4ndCBiZSBh
ZGRpbmcgYSBuZXcgbG9vcC4gIFdlIHdvdWxkIG9ubHkgYmUKPiBhZGRpbmcgdHdvIG1vcmUgaXRl
cmF0aW9ucyB0byB0aGUgbG9vcCBpbiBwY2lfZG9fZml4dXBzKCkgdGhhdCB0cmllcwo+IHRvIG1h
dGNoIHF1aXJrcyBhZ2FpbnN0IHRoZSBjdXJyZW50IGRldmljZS4gIEkgZG91YnQgdGhhdCB3b3Vs
ZCBiZSBhCj4gbWVhc3VyYWJsZSBzbG93ZG93bi4KSSBkbyBub3Qgbm90aWNlIHRoZSBkaWZmZXJl
bmNlIHdoZW4gY29tcGFyZWQgZml4dXBfaW9tbXUgYW5kIGZpeHVwX2ZpbmFsIAp2aWEgZ2V0X2pp
ZmZpZXNfNjQsCnNpbmNlIGluIG91ciBwbGF0Zm9ybSBubyBvdGhlciBwY2kgZml4dXAgaXMgcmVn
aXN0ZXJlZC4KCkhlcmUgdGhlIHBsYW4gaXMgYWRkaW5nIHBjaV9maXh1cF9kZXZpY2UgaW4gaW9t
bXVfZndzcGVjX2luaXQsCnNvIGlmIHVzaW5nIGZpeHVwX2ZpbmFsIHRoZSBpdGVyYXRpb24gd2ls
bCBiZSBkb25lIGFnYWluIGhlcmUuCgo+Cj4+IEZvciBleGFtcGxlOgo+PiBIaXNpbGljb24gcGxh
dGZvcm0gZGV2aWNlIG5lZWQgZml4dXAgaW4KPj4gZHJpdmVycy9wY2kvcXVpcmtzLmMgaGFuZGxp
bmcgZndzcGVjLT5jYW5fc3RhbGwsIHdoaWNoIGlzIGludHJvZHVjZWQgaW4gWzJdCj4+Cj4+ICtz
dGF0aWMgdm9pZCBxdWlya19odWF3ZWlfcGNpZV9zdmEoc3RydWN0IHBjaV9kZXYgKnBkZXYpCj4+
ICt7Cj4+ICsgICAgc3RydWN0IGlvbW11X2Z3c3BlYyAqZndzcGVjOwo+PiArCj4+ICsgICAgcGRl
di0+ZWV0bHBfcHJlZml4X3BhdGggPSAxOwo+PiArICAgIGZ3c3BlYyA9IGRldl9pb21tdV9md3Nw
ZWNfZ2V0KCZwZGV2LT5kZXYpOwo+PiArICAgIGlmIChmd3NwZWMpCj4+ICsgICAgICAgIGZ3c3Bl
Yy0+Y2FuX3N0YWxsID0gMTsKPj4gK30KPj4gKwo+PiArREVDTEFSRV9QQ0lfRklYVVBfSU9NTVUo
UENJX1ZFTkRPUl9JRF9IVUFXRUksIDB4YTI1MCwgcXVpcmtfaHVhd2VpX3BjaWVfc3ZhKTsKPj4g
K0RFQ0xBUkVfUENJX2lGSVhVUF9JT01NVShQQ0lfVkVORE9SX0lEX0hVQVdFSSwgMHhhMjUxLCBx
dWlya19odWF3ZWlfcGNpZV9zdmEpOwo+Pgo+PiBbMV0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQv
bGlzdHMvaW9tbXUvbXNnNDQ1OTEuaHRtbAo+PiBbMl0gaHR0cHM6Ly93d3cuc3Bpbmljcy5uZXQv
bGlzdHMvbGludXgtcGNpL21zZzk0NTU5Lmh0bWwKPiBJZiB5b3UgcmVmZXJlbmNlIHRoZXNlIGlu
IHRoZSBjb21taXQgbG9ncywgcGxlYXNlIHVzZSBsb3JlLmtlcm5lbC5vcmcKPiBsaW5rcyBpbnN0
ZWFkIG9mIHNwaW5pY3MuCkdvdCBpdCwgdGhhbmtzIEJqb3JuLgoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
