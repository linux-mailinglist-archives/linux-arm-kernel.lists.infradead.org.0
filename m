Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA11F32DF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 06:02:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TrlkKR0VSgIj8LyjoEgodGGMsgRgUo9n8hAub0wJQT4=; b=FKA/4aJtkOukr3OXTvHLoLK0H
	QtczJHztEsy4ojfB/C8pBxus9fD9x8AKqVhR5VB7enKNd2iEHwlvEPC5GN28cx+8kOPw0LSA8iRih
	bnTZxink4JbIeSWJ+rJgkXxMhG66xpaKs0ULj+st37ohzpgv5+3vzLfxKwFfhg6SSw1Dl/U8+XVBI
	WuGMjt8EpAWbW7uslfi3lUv768BgWPV75hbnwAm5NOC7h4Ln7W9/Na/1jJo2qfqRC4DTYEzpgAgle
	XOHP2GGU4VVgCJ2FS2TOouwPARXp8qYOTxULNHzgpdCSZAsQDi2H3QLZH1rqtvFIc+yCHP7LMaYPj
	Jd9TfA7Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiVSu-0008DE-8R; Tue, 09 Jun 2020 04:02:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiVSl-0008Cf-SS
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 04:02:13 +0000
Received: by mail-pl1-x644.google.com with SMTP id bh7so7495361plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 08 Jun 2020 21:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=HNzwmKC7EPXO6n3v52ZypjHWMqVja532n8n2Tl/XPzU=;
 b=EOIGmeR3il5DVPJCDg4teJziBsjPIErqvQL1NApVhk0fIsJZDquLbvnv9AzOPFDTyM
 0Td9tgAsoePC+8tWwHQb/vU9PYB6G/Oyp14FK2hqZEG9usC/15NBI+bjl7shOVkS9PTS
 doO5YZ3ay6n1fRr9qSicgDl1sKMnJOAKnbUGeudLGxamrgFpyJqMg7/hVpo77ptwayW9
 gKyrCeWWc3sisMbmchG7OqNyEieqbYZexGGErCFQFvIiSgU0duds+YBbyLJBINOegnCw
 yZ0gUZKM/VpvoDsNXIFSXtVpSlXS2LMjFDE0fUXYn6WfLpaSP3YHgKbbD3TgUmNi7e1F
 Z0fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=HNzwmKC7EPXO6n3v52ZypjHWMqVja532n8n2Tl/XPzU=;
 b=OxKQR78QglceegZe1I9EdUD00Tn9yyP2OFgR6ZqynoGYiXowpzJjWHgARMyjoI/up1
 x3fNuIMNxUGs0Ng32Ln0GQAafWD2p6ZGaFgmTeiOoOPJHbQvAgX9hPEIhJmz+ayaQi4j
 7aUaLQtzpVMiHrMcrI2DKCoRHVTTcUcji97GI8Pzes3vYaj+88wdyj2QipvK48ForOp4
 xi/UsYZL0Kh2Qlb5n+PGL/E2/ce3AKeyNP0tYAsWvy2UzjyvgUJeORkIFNGWxSnhwsxz
 uF4EIpPP9l1I6SkEqX+JVJ7CgUrsXHbNblgYfP88rfTbXP7st3RHVXGsJOsYGobWxtvU
 lpQw==
X-Gm-Message-State: AOAM53169OI28P71rwraq43w3V8w/ij5CqR5f80S8Jou/xHb8o0Km96v
 LstSZsXzD1M76vswf5Oj4/AMRw==
X-Google-Smtp-Source: ABdhPJyCOlAhj/JYQL1lnU7VkdOeuU3CmI3RIp+QFxWZE3BRnL4347U0JAtJdOIRBNQs52eLSw55aw==
X-Received: by 2002:a17:90a:36cf:: with SMTP id
 t73mr2680766pjb.100.1591675330529; 
 Mon, 08 Jun 2020 21:02:10 -0700 (PDT)
Received: from [10.175.1.166] ([45.135.186.20])
 by smtp.gmail.com with ESMTPSA id b24sm8402002pfo.112.2020.06.08.21.02.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 21:02:09 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200608164148.GA1394249@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <bcf0a327-87b5-01ff-2f9c-ec6a6bd6c738@linaro.org>
Date: Tue, 9 Jun 2020 12:01:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200608164148.GA1394249@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_210211_951325_560FFFDD 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

SGksIEJqb3JuCgpPbiAyMDIwLzYvOSDkuIrljYgxMjo0MSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
PiBPbiBNb24sIEp1biAwOCwgMjAyMCBhdCAxMDo1NDoxNUFNICswODAwLCBaaGFuZ2ZlaSBHYW8g
d3JvdGU6Cj4+IE9uIDIwMjAvNi82IOS4iuWNiDc6MTksIEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4+
PiBPbiBUaHUsIEp1biAwNCwgMjAyMCBhdCAwOTozMzowN1BNICswODAwLCBaaGFuZ2ZlaSBHYW8g
d3JvdGU6Cj4+Pj4gT24gMjAyMC82LzIg5LiK5Y2IMTo0MSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
Pj4+Pj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDk6MzM6NDRBTSArMDIwMCwgSm9lcmcgUm9l
ZGVsIHdyb3RlOgo+Pj4+Pj4gT24gV2VkLCBNYXkgMjcsIDIwMjAgYXQgMDE6MTg6NDJQTSAtMDUw
MCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+Pj4+PiBJcyB0aGlzIHNsb3dkb3duIHNpZ25pZmlj
YW50PyAgV2UgYWxyZWFkeSBpdGVyYXRlIG92ZXIgZXZlcnkgZGV2aWNlCj4+Pj4+Pj4gd2hlbiBh
cHBseWluZyBQQ0lfRklYVVBfRklOQUwgcXVpcmtzLCBzbyBpZiB3ZSB1c2VkIHRoZSBleGlzdGlu
Zwo+Pj4+Pj4+IFBDSV9GSVhVUF9GSU5BTCwgd2Ugd291bGRuJ3QgYmUgYWRkaW5nIGEgbmV3IGxv
b3AuICBXZSB3b3VsZCBvbmx5IGJlCj4+Pj4+Pj4gYWRkaW5nIHR3byBtb3JlIGl0ZXJhdGlvbnMg
dG8gdGhlIGxvb3AgaW4gcGNpX2RvX2ZpeHVwcygpIHRoYXQgdHJpZXMKPj4+Pj4+PiB0byBtYXRj
aCBxdWlya3MgYWdhaW5zdCB0aGUgY3VycmVudCBkZXZpY2UuICBJIGRvdWJ0IHRoYXQgd291bGQg
YmUgYQo+Pj4+Pj4+IG1lYXN1cmFibGUgc2xvd2Rvd24uCj4+Pj4+PiBJIGRvbid0IGtub3cgaG93
IHNpZ25pZmljYW50IGl0IGlzLCBidXQgSSByZW1lbWJlciBwZW9wbGUgY29tcGxhaW5pbmcKPj4+
Pj4+IGFib3V0IGFkZGluZyBuZXcgUENJIHF1aXJrcyBiZWNhdXNlIGl0IHRha2VzIHRvbyBsb25n
IGZvciB0aGVtIHRvIHJ1bgo+Pj4+Pj4gdGhlbSBhbGwuIFRoYXQgd2FzIGluIHRoZSBkaXNjdXNz
aW9uIGFib3V0IHRoZSBxdWlyayBkaXNhYmxpbmcgQVRTIG9uCj4+Pj4+PiBBTUQgU3RvbmV5IHN5
c3RlbXMuCj4+Pj4+Pgo+Pj4+Pj4gU28gaXQgcHJvYmFibHkgZGVwZW5kcyBvbiBob3cgbWFueSBQ
Q0kgZGV2aWNlcyBhcmUgaW4gdGhlIHN5c3RlbSB3aGV0aGVyCj4+Pj4+PiBpdCBjYXVzZXMgYW55
IG1lYXN1cmVhYmxlIHNsb3dkb3duLgo+Pj4+PiBJIGZvdW5kIHRoaXMgWzFdIGZyb20gUGF1bCBN
ZW56ZWwsIHdoaWNoIHdhcyBhIHNsb3dkb3duIGNhdXNlZCBieQo+Pj4+PiBxdWlya191c2JfZWFy
bHlfaGFuZG9mZigpLiAgSSB0aGluayB0aGUgcmVhbCBwcm9ibGVtIGlzIGluZGl2aWR1YWwKPj4+
Pj4gcXVpcmtzIHRoYXQgdGFrZSBhIGxvbmcgdGltZS4KPj4+Pj4KPj4+Pj4gVGhlIFBDSV9GSVhV
UF9JT01NVSB0aGluZ3Mgd2UncmUgdGFsa2luZyBhYm91dCBzaG91bGQgYmUgZmFzdCwgYW5kIG9m
Cj4+Pj4+IGNvdXJzZSwgdGhleSdyZSBvbmx5IHJ1biBmb3IgbWF0Y2hpbmcgZGV2aWNlcyBhbnl3
YXkuICBTbyBJJ2QgcmF0aGVyCj4+Pj4+IGtlZXAgdGhlbSBhcyBQQ0lfRklYVVBfRklOQUwgdGhh
biBhZGQgYSB3aG9sZSBuZXcgcGhhc2UuCj4+Pj4+Cj4+Pj4gVGhhbmtzIEJqb3JuIGZvciB0YWtp
bmcgdGltZSBmb3IgdGhpcy4KPj4+PiBJZiBzbywgaXQgd291bGQgYmUgbXVjaCBzaW1wbGVyLgo+
Pj4+Cj4+Pj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4+Pj4gQEAgLTI0MTgsNiArMjQx
OCwxMCBAQCBpbnQgaW9tbXVfZndzcGVjX2luaXQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3QK
Pj4+PiBmd25vZGVfaGFuZGxlICppb21tdV9md25vZGUsCj4+Pj4gICDCoMKgwqDCoMKgwqDCoCBm
d3NwZWMtPmlvbW11X2Z3bm9kZSA9IGlvbW11X2Z3bm9kZTsKPj4+PiAgIMKgwqDCoMKgwqDCoMKg
IGZ3c3BlYy0+b3BzID0gb3BzOwo+Pj4+ICAgwqDCoMKgwqDCoMKgwqAgZGV2X2lvbW11X2Z3c3Bl
Y19zZXQoZGV2LCBmd3NwZWMpOwo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgIGlmIChkZXZfaXNf
cGNpKGRldikpCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGNpX2ZpeHVwX2Rl
dmljZShwY2lfZml4dXBfZmluYWwsIHRvX3BjaV9kZXYoZGV2KSk7Cj4+Pj4gKwo+Pj4+Cj4+Pj4g
VGhlbiBwY2lfZml4dXBfZmluYWwgd2lsbCBiZSBjYWxsZWQgdHdpY2UsIHRoZSBmaXJzdCBpbiBw
Y2lfYnVzX2FkZF9kZXZpY2UuCj4+Pj4gSGVyZSBpbiBpb21tdV9md3NwZWNfaW5pdCBpcyB0aGUg
c2Vjb25kIHRpbWUsIHNwZWNpZmljYWxseSBmb3IgaW9tbXVfZndzcGVjLgo+Pj4+IFdpbGwgc2Vu
ZCB0aGlzIHdoZW4gNS44LXJjMSBpcyBvcGVuLgo+Pj4gV2FpdCwgdGhpcyB3aG9sZSBmaXh1cCBh
cHByb2FjaCBzZWVtcyB3cm9uZyB0byBtZS4gIE5vIG1hdHRlciBob3cgeW91Cj4+PiBkbyB0aGUg
Zml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2ggbWVhbnMgaXQgcmVxdWlyZXMgb25nb2lu
Zwo+Pj4gbWFpbnRlbmFuY2UuICBTdXJlbHkgd2UgZG9uJ3Qgd2FudCB0byBoYXZlIHRvIGFkZCB0
aGUgVmVuZG9yL0RldmljZSBJRAo+Pj4gZm9yIGV2ZXJ5IG5ldyBBTUJBIGRldmljZSB0aGF0IGNv
bWVzIGFsb25nLCBkbyB3ZT8KPj4+Cj4+IEhlcmUgdGhlIGZha2UgcGNpIGRldmljZSBoYXMgc3Rh
bmRhcmQgUENJIGNmZyBzcGFjZSwgYnV0IHBoeXNpY2FsCj4+IGltcGxlbWVudGF0aW9uIGlzIGJh
c2Ugb24gQU1CQQo+PiBUaGV5IGNhbiBwcm92aWRlIHBhc2lkIGZlYXR1cmUuCj4+IEhvd2V2ZXIs
Cj4+IDEsIGRvZXMgbm90IHN1cHBvcnQgdGxwIHNpbmNlIHRoZXkgYXJlIG5vdCByZWFsIHBjaSBk
ZXZpY2VzLgo+PiAyLiBkb2VzIG5vdCBzdXBwb3J0IHByaSwgaW5zdGVhZCBzdXBwb3J0IHN0YWxs
IChwcm92aWRlZCBieSBzbW11KQo+PiBBbmQgc3RhbGwgaXMgbm90IGEgcGNpIGZlYXR1cmUsIHNv
IGl0IGlzIG5vdCBkZXNjcmliZWQgaW4gc3RydWN0IHBjaV9kZXYsCj4+IGJ1dCBpbiBzdHJ1Y3Qg
aW9tbXVfZndzcGVjLgo+PiBTbyB3ZSB1c2UgdGhpcyBmaXh1cCB0byB0ZWxsIHBjaSBzeXN0ZW0g
dGhhdCB0aGUgZGV2aWNlcyBjYW4gc3VwcG9ydCBzdGFsbCwKPj4gYW5kIGhlcmVieSBzdXBwb3J0
IHBhc2lkLgo+IFRoaXMgZGlkIG5vdCBhbnN3ZXIgbXkgcXVlc3Rpb24uICBBcmUgeW91IHByb3Bv
c2luZyB0aGF0IHdlIHVwZGF0ZSBhCj4gcXVpcmsgZXZlcnkgdGltZSBhIG5ldyBBTUJBIGRldmlj
ZSBpcyByZWxlYXNlZD8gIEkgZG9uJ3QgdGhpbmsgdGhhdAo+IHdvdWxkIGJlIGEgZ29vZCBtb2Rl
bC4KWWVzLCB5b3UgYXJlIHJpZ2h0LCBidXQgd2UgZG8gbm90IGhhdmUgYW55IGJldHRlciBpZGVh
IHlldC4KQ3VycmVudGx5IHdlIGhhdmUgdGhyZWUgZmFrZSBwY2kgZGV2aWNlcywgd2hpY2ggc3Vw
cG9ydCBzdGFsbCBhbmQgcGFzaWQuCldlIGhhdmUgdG8gbGV0IHBjaSBzeXN0ZW0ga25vdyB0aGUg
ZGV2aWNlIGNhbiBzdXBwb3J0IHBhc2lkLCBiZWNhdXNlIG9mIApzdGFsbCBmZWF0dXJlLCB0aG91
Z2ggbm90IHN1cHBvcnQgcHJpLgpEbyB5b3UgaGF2ZSBhbnkgb3RoZXIgaWRlYXM/CgpUaGFua3MK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
