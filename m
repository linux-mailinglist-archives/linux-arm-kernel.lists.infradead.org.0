Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA67B1E2519
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 17:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Le5CKzNyo51e10zCwsCQJlxRxAWd2zLE8b3rAt8AbQ4=; b=L/haW27OHS/VRqohYUHpJcOS1
	zbret3pJM4f0BjDsRrNuLAP59KkOzefCnjtTWIiRZByrEFJElH9EsEvxGRGq5fX80Bs+tszFyLH50
	iPkctCZ8gv/Xv0hO5j8j0ma6yXo6RCK+5lMK+z56Ej6k4Fd5IH/x638kLcpXg52kajUorJHp82FmB
	c7g89V44C4fQVbK+dsHoUj3gnoL30RVwUspf+uN3u8pbqZdlKt/dlke0UKHWcybmvhPFG56etbznn
	FJPuyO5YBAjGdip/sFQs12LvkX1tukCmVPlHOYTHjlOlC8ICiT087/aJYuuC8dzJgjdYwj8JocTbR
	ymN39qVBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdbEB-00056x-CJ; Tue, 26 May 2020 15:10:51 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbE1-00056Y-3s
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 15:10:42 +0000
Received: by mail-pj1-x1041.google.com with SMTP id cx22so1549213pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 08:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zuN1PH7d2dfCgGQO7mbhwyoBsWzuZEv+CGEfJv0Zw+c=;
 b=D+4nQ0vWQOUObnvWLE2c2rqZVSpP4vHdMdjPbiYho4sYugLqtt6WRlJ+HEBBjO+1lQ
 2eR7eboY09he7DRe3bVtn422CDYVxb587PRQ/F+XM06FycTChxmMLph4uSQfy6rrhj88
 Uj/F+naAfokobOjg7tIBJp6aRXQKGJrWwM0M5NQhdl2IHrzkJZx4YN7V8c4YmU5AiA4m
 2klNrqpTzCwkPVLI9ZrzKuMoCf/oP8Y0Egww1cMRgelz+NygXiJoljRrWYfv9E+KnDQ2
 1VULYXUIQtH0XM1HRyfnK3yn7EbRcnN61uIfb9jjlWUJ7wTomFrOFYUYdUmZtFvN1GcP
 jAQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zuN1PH7d2dfCgGQO7mbhwyoBsWzuZEv+CGEfJv0Zw+c=;
 b=FK0+QZAimLs6VXVXyzNnuH3SZaYVZPkUgutIdhF8ypk1G4Jslx5cL88LPdjpbUPnru
 DIScSzFUxdaOHHSZK0TVpCEM5EJ+jtyRP0okYZ/zGNbN/dVEIwcpODk3thfl93x0jTIi
 KaTs3Co1QV/UjbkBh6b48CPuVMbjCByYmCg6nf2d6o8dQaLjzsjSTq1YqvF7Y0Dcq3Fj
 0BY6X1DgytumekldknRbW4rgYGc2qVTlSLU9IN2uyj0W/6DabxDrfkJutrNietsHuNFs
 BAVHSu4GtosRW4x6OeQllZ09swJMwkkQfNPY5ZZ56i3mJiwmDFF5mEuAY5iOCQmpwmzT
 eJnw==
X-Gm-Message-State: AOAM5330tvrNwjlxWJJpSmweTxrFcb4sk8Sgh7TyBRdvMuON1L7yUVId
 psNrVaoG1nwt1v5lgz2htyXqGyFKb8R1RA==
X-Google-Smtp-Source: ABdhPJwe+1sgmh2OwBptymAExtulFHEpnY96Q4RDulxomLppHnhiwFUYKKMDqrVR8wVFmvAPxb4eUQ==
X-Received: by 2002:a17:90a:1a17:: with SMTP id
 23mr27507707pjk.198.1590505839978; 
 Tue, 26 May 2020 08:10:39 -0700 (PDT)
Received: from [10.140.0.202] ([45.135.186.12])
 by smtp.gmail.com with ESMTPSA id i197sm3623225pfe.30.2020.05.26.08.10.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 08:10:39 -0700 (PDT)
Subject: Re: [PATCH 1/2] PCI: Introduce PCI_FIXUP_IOMMU
To: Christoph Hellwig <hch@infradead.org>
References: <1590493749-13823-1-git-send-email-zhangfei.gao@linaro.org>
 <1590493749-13823-2-git-send-email-zhangfei.gao@linaro.org>
 <20200526144644.GA20784@infradead.org>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <39144dc0-3b04-3127-978b-bd8487dd06e0@linaro.org>
Date: Tue, 26 May 2020 23:09:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200526144644.GA20784@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_081041_165871_6AE474B8 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGksIENocmlzdG9waAoKT24gMjAyMC81LzI2IOS4i+WNiDEwOjQ2LCBDaHJpc3RvcGggSGVsbHdp
ZyB3cm90ZToKPiBPbiBUdWUsIE1heSAyNiwgMjAyMCBhdCAwNzo0OTowOFBNICswODAwLCBaaGFu
Z2ZlaSBHYW8gd3JvdGU6Cj4+IFNvbWUgcGxhdGZvcm0gZGV2aWNlcyBhcHBlYXIgYXMgUENJIGJ1
dCBhcmUgYWN0dWFsbHkgb24gdGhlIEFNQkEgYnVzLAo+PiBhbmQgdGhleSBuZWVkIGZpeHVwIGlu
IGRyaXZlcnMvcGNpL3F1aXJrcy5jIGhhbmRsaW5nIGlvbW11X2Z3bm9kZS4KPj4gSGVyZSBpbnRy
b2R1Y2luZyBQQ0lfRklYVVBfSU9NTVUsIHdoaWNoIGlzIGNhbGxlZCBhZnRlciBpb21tdV9md25v
ZGUKPj4gaXMgYWxsb2NhdGVkLCBpbnN0ZWFkIG9mIHJldXNpbmcgUENJX0ZJWFVQX0ZJTkFMIHNp
bmNlIGl0IHdpbGwgc2xvdwo+PiBkb3duIGlvbW11IHByb2JpbmcgYXMgYWxsIGRldmljZXMgaW4g
Zml4dXAgZmluYWwgbGlzdCB3aWxsIGJlCj4+IHJlcHJvY2Vzc2VkLgo+IFdobyBpcyBnb2luZyB0
byB1c2UgdGhpcz8gIEkgZG9uJ3Qgc2VlIGEgc2luZ2xlIHVzZXIgaW4gdGhlIHNlcmllcy4KV2Ug
d2lsbCBhZGQgaW9tbXUgZml4dXAgaW4gZHJpdmVycy9wY2kvcXVpcmtzLmMsIGhhbmRsaW5nCgpm
d3NwZWMtPmNhbl9zdGFsbCwgd2hpY2ggaXMgaW50cm9kdWNlZCBpbgoKaHR0cHM6Ly93d3cuc3Bp
bmljcy5uZXQvbGlzdHMvbGludXgtcGNpL21zZzk0NTU5Lmh0bWwKClVuZm9ydHVuYXRlbHksIHRo
ZSBwYXRjaCBkb2VzIG5vdCBjYXRjaCB2NS44LCBzbyB3ZSBoYXZlIHRvIHdhaXQuCkFuZCB3ZSB3
YW50IHRvIGNoZWNrIHdoZXRoZXIgdGhpcyBpcyBhIHJpZ2h0IG1ldGhvZCB0byBzb2x2ZSB0aGlz
IGlzc3VlLgoKVGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtYXJtLWtlcm5lbAo=
