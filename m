Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B881C1DDD0B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 04:14:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xw3+BdvUWC1rNTevMw3rw88Ma1JidkrDu9UQnFnvTFE=; b=PGXG4BtEgTMmtyu0keSzFCspR
	9a4jH/VW4MzOIFUrikkoGlDelNzm57v2oczdchPOGDDCvrUuHhaCF7mENsiXnQIVfaHD7W28XQLfb
	ZLzadQrT39XVHRMIOqbBQGaRNFOM1lLq91Vaz3QJA8d2aKAZwr5LLXWM5hcwTalI0RREiZTGKhC5c
	tv+7WoJaMIBIp6cLYhLvNXe75zuAUZKRp3+q0lqVLbVonDK11sWCreSoP1EHCTk4SN859jJ88rtDP
	Zvr7j2F9H8IcrQj+5cKpAWU6+ELB+RLrf6oHFt7SkDbg/RFahjvJKTfPFJYkfh+euhBwQQrivmfon
	C1cnn+LuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbxC7-0007Zp-Bz; Fri, 22 May 2020 02:13:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbxBy-0007Z2-6A
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 02:13:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id n18so4460132pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 19:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=HANfjGaXtL4q1FSiLdXuotCYBYmAdZjgvWQJr0H9YMg=;
 b=lelQxwbz5KvLR8BmclI8jocAnat7kuQ1eoRzL4S3qO9Am83e3fverb4PWKqs6DEOyV
 NCdrcMPKKWM2WpSrCYZ8JIgZVhlby1jGUdTgnc5paxcSO+yOhjHZ0waaLltp5qtM79Ir
 7cVjPp9/qLsXl1tg2uYAOzrV72+cuggHGqg4L3wQxpNUiWn39K2jb05JVfUJ+E/EZ+ad
 tnxMBzEG/SPmbLbYrXFMbKdRrE9cidfG4wyUFnoPSK0Eyss0/H/7RVn/PUEBUQJcz/Ti
 /GBlephoJpBLfGqCBvjK2aMoFrvN0D/c7fg7WlMhF+ZE3/QFFcrN31nexgxv+NnNa+Mo
 Qptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=HANfjGaXtL4q1FSiLdXuotCYBYmAdZjgvWQJr0H9YMg=;
 b=HLgtAilvelo/jHuVOqd8m63m5iJYKIk+l8blmTDrJxamZI5BuXeb4k/C4U3SV/EdzR
 u1KpXWfuq8zbt183heCQL1cSCHgsavWk+rU6nUX+Qs3MOY9kc3lKeWiorsGHRCu7m84H
 QuF/+cTmgeuJKKos7hEkK7t3KZW392bGmQ/M48MXInT1nKnSqd23dg39g8/Ko5h/+tb6
 xy+s7+/1oP8Moi0+9foCRgihrHm8G5KSU0QaP4K34DudoFrOP4cXcok1bb+Sf6sHDzfI
 dwZLBhEj7lU5dsRvJvCUkieVN7SQyPVFgOXmA/WqdIe6q04iy1gboHI/NQfg9DIM7jLh
 WZtA==
X-Gm-Message-State: AOAM531xvgk5oC5KCZRvHzGejsXawfIk5CqlvcUPOJoLFLmv0SVnEXea
 CDRn8rd6fn4xg6WzAAPpNOFrTW5SQVI=
X-Google-Smtp-Source: ABdhPJxh64wrCE5tLGl7klLmD3mr5bD+4uqj8uhZIjERdP/SqzgqKR0fB/XxlGgIJJR01XokaX+kyA==
X-Received: by 2002:a63:c58:: with SMTP id 24mr11923950pgm.246.1590113623304; 
 Thu, 21 May 2020 19:13:43 -0700 (PDT)
Received: from [10.191.1.102] ([45.135.186.71])
 by smtp.gmail.com with ESMTPSA id y5sm5043843pge.50.2020.05.21.19.13.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 19:13:42 -0700 (PDT)
Subject: Re: [PATCH 0/2] Let pci_fixup_final access iommu_fwnode
To: Joerg Roedel <joro@8bytes.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>,
 jean-philippe <jean-philippe@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, kenneth-lee-2012@foxmail.com,
 Wangzhou <wangzhou1@hisilicon.com>
References: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <631857df-8e70-88e3-9959-1a750faf4f85@linaro.org>
Date: Fri, 22 May 2020 10:13:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_191346_260620_A8A16478 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-acpi@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEpvZXJnCgpPbiAyMDIwLzUvMTIg5LiL5Y2IMTI6MDgsIFpoYW5nZmVpIEdhbyB3cm90ZToK
PiBTb21lIHBsYXRmb3JtIGRldmljZXMgYXBwZWFyIGFzIFBDSSBidXQgYXJlCj4gYWN0dWFsbHkg
b24gdGhlIEFNQkEgYnVzLCBhbmQgdGhleSBuZWVkIGZpeHVwIGluCj4gZHJpdmVycy9wY2kvcXVp
cmtzLmMgaGFuZGxpbmcgaW9tbXVfZndub2RlLgo+IFNvIGNhbGxpbmcgcGNpX2ZpeHVwX2ZpbmFs
IGFmdGVyIGlvbW11X2Z3bm9kZSBpcyBhbGxvY2F0ZWQuCj4KPiBGb3IgZXhhbXBsZToKPiBIaXNp
bGljb24gcGxhdGZvcm0gZGV2aWNlIG5lZWQgZml4dXAgaW4KPiBkcml2ZXJzL3BjaS9xdWlya3Mu
Ywo+Cj4gK3N0YXRpYyB2b2lkIHF1aXJrX2h1YXdlaV9wY2llX3N2YShzdHJ1Y3QgcGNpX2RldiAq
cGRldikKPiArewo+ICsJc3RydWN0IGlvbW11X2Z3c3BlYyAqZndzcGVjOwo+ICsKPiArCXBkZXYt
PmVldGxwX3ByZWZpeF9wYXRoID0gMTsKPiArCWZ3c3BlYyA9IGRldl9pb21tdV9md3NwZWNfZ2V0
KCZwZGV2LT5kZXYpOwo+ICsJaWYgKGZ3c3BlYykKPiArCQlmd3NwZWMtPmNhbl9zdGFsbCA9IDE7
Cj4gK30KPiArCj4gK0RFQ0xBUkVfUENJX0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURfSFVBV0VJ
LCAweGEyNTAsIHF1aXJrX2h1YXdlaV9wY2llX3N2YSk7Cj4gK0RFQ0xBUkVfUENJX0ZJWFVQX0ZJ
TkFMKFBDSV9WRU5ET1JfSURfSFVBV0VJLCAweGEyNTEsIHF1aXJrX2h1YXdlaV9wY2llX3N2YSk7
Cj4gICAKPgo+IFpoYW5nZmVpIEdhbyAoMik6Cj4gICAgaW9tbXUvb2Y6IExldCBwY2lfZml4dXBf
ZmluYWwgYWNjZXNzIGlvbW11X2Z3bm9kZQo+ICAgIEFDUEkvSU9SVDogTGV0IHBjaV9maXh1cF9m
aW5hbCBhY2Nlc3MgaW9tbXVfZndub2RlCj4KPiAgIGRyaXZlcnMvYWNwaS9hcm02NC9pb3J0LmMg
fCAxICsKPiAgIGRyaXZlcnMvaW9tbXUvb2ZfaW9tbXUuYyAgfCAxICsKPiAgIDIgZmlsZXMgY2hh
bmdlZCwgMiBpbnNlcnRpb25zKCspCj4KV291bGQgeW91IG1pbmQgZ2l2ZSBhbnkgc3VnZ2VzdGlv
bj8KCldlIG5lZWQgYWNjZXNzIGZ3c3BlYy0+Y2FuX3N0YWxsIGRlc2NyaWJpbmcgdGhlIHBsYXRm
b3JtIGRldmljZSAoYSBmYWtlIApwY2llKSBjYW4gc3VwcG9ydCBzdGFsbCBmZWF0dXJlLgpjYW5f
c3RhbGwgd2lsbCBiZSB1c2VkIGFybV9zbW11X2FkZF9kZXZpY2UgWzFdLgpBbmQgc3RhbGwgaXMg
bm90IGEgcGNpIGZlYXR1cmUsIHNvIG5vIHN1Y2ggbWVtYmVyIGluIHN0cnVjdCBwY2lfZGV2LgoK
aW9tbXVfZndub2RlIGlzIGFsbG9jYXRlZCBpbiBpb21tdV9md3NwZWNfaW5pdCwgZnJvbSBvZl9w
Y2lfaW9tbXVfaW5pdCAKb3IgaW9ydF9wY2lfaW9tbXVfaW5pdC4KVGhlIHBjaV9maXh1cF9kZXZp
Y2UocGNpX2ZpeHVwX2ZpbmFsLCBkZXYpIGluIHBjaV9idXNfYWRkX2RldmljZSBpcyB0b28gCmVh
cmx5IHRoYXTCoCBpb21tdV9md25vZGUKaXMgbm90IGFsbG9jYXRlZC4KVGhlIHBjaV9maXh1cF9k
ZXZpY2UocGNpX2ZpeHVwX2VuYWJsZSwgZGV2KSBpbiBkb19wY2lfZW5hYmxlX2RldmljZSBpcyAK
dG9vIGxhdGUgYWZ0ZXIKCmFybV9zbW11X2FkZF9kZXZpY2UuCgoKU28gdGhlIGlkZWEgaGVyZSBp
cyBjYWxsaW5nIHBjaV9maXh1cF9kZXZpY2UocGNpX2ZpeHVwX2ZpbmFsKSBhZnRlcgpvZl9wY2lf
aW9tbXVfaW5pdCBhbmQgaW9ydF9wY2lfaW9tbXVfaW5pdCwgd2hlcmUgaW9tbXVfZndub2RlIGlz
IGFsbG9jYXRlZC4KCgoKWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXBj
aS9tc2c5NDU1OS5odG1sCgpUaGFua3MKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
