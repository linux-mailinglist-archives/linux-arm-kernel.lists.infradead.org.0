Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD9920002C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 04:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aVViXyBkuEY5VOePI4Mo9lTlCeqax6+dLIT2UL09xLI=; b=WSt4wXXf7Qd9UIksAjOQJITwS
	nJuJgsBKFo9B5QZHeY1MLVw6O5URRR4FcYv/D6QP4R2DikEOwFMS3mHab3wH9zlxUy0A3a+SirW8C
	/YZq8etKLJmDmckbjXB4UbwJSYlomb/dcMbtyhYUyvOnPuuBvxM1vha3bJ4uFWF72Ay4YJpWP55ud
	h23hs7qG/xDNkQYFZSv/h3LPE0l3kBekZQFccl3PR8jsYa3lentVd+oIyfVVzntda3jUO59JUU84y
	6UeW3Q3YWGy5H35GedJp63jX5H/x1oiCFOerAfD9+g8qvLLRseHnsc0Ub10fEdZYE8v1m1vV99yho
	XRFmRCaOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm6ko-0000Sl-TW; Fri, 19 Jun 2020 02:27:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm6kf-0000SD-BW
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 02:27:34 +0000
Received: by mail-pg1-x541.google.com with SMTP id v14so3843046pgl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 19:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=1NQyD9WrJsbI510glYgHlSP0TyLa8enW/S/MPeeFMi8=;
 b=iSB7ZTw+y0hCECv5tinmjWIPeUtBXssd1nCzvz4v0Ji07pHfe4hOOuinagdLEsBnl3
 1yvnOogYr4IdD4GKi+hlWXiXUcBp+mI1mL0rQnbc5LiAwqrSjyiV+ePIuyZGXynZj/kA
 MsOHM8PJTRRZfUNM9zxlB+rjPg44kU5qgB+H1jJ9cyDYvWo1c8ZmTgkKLupeID2Q/nHK
 KS2/2XoHlKRQXxal9WCrDhn7AYRQzNByypRXA3NWxWldotqEMAZIh6VkflS8HSQ21XgB
 KKf0sLNo8kZ+iQKLWmNZafoS1eN4KpmYVWogKmmLYWx36Y+RjG6YCMKZa0wgaqvm3cM5
 yX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=1NQyD9WrJsbI510glYgHlSP0TyLa8enW/S/MPeeFMi8=;
 b=SDU3SvES7shVzf9VaaTNqawP4rmvjfdqHgfIhdLBhggxtGwTfmg4uRMgL6W8MlDO7D
 SSfjIKhfWJTrd9507IduIyLTakRKO/fitUdCAYlmnxcjKsZUUglPEPId7dpNtEOPT/Ud
 h1wyrLX+fIPKIBl+LRozzhceVpKBf7rs1YsPdm8n6J3QzSsNWO2M9nBlovg/ndrM4o9r
 iKykTrSha16XcA+CkDOBDyi6hd9tUIWXV8qo6jREXldkn7EdGQZ9wqcivlDxiL86Loii
 JRjkKBtVY78rO1NZMLoDvWMbGezu0faPD1nb/27NoWg+fv1qyEZyU7fd+j2QDhFqHOGK
 plfQ==
X-Gm-Message-State: AOAM531te+eqX2YaJueLZbmR/qYDX5ZSFHj96oA65HtlL909wCBqm9w8
 tkU3IrnUMZqv+cBnzJeqxhphuw==
X-Google-Smtp-Source: ABdhPJwPV/l1romnvuaB3bf+oXNo9TD61AfC0QGCLewyWOibz0ocQr1j4hIskA+JR5hNdLoitEbUKQ==
X-Received: by 2002:a65:6496:: with SMTP id e22mr1264866pgv.63.1592533652044; 
 Thu, 18 Jun 2020 19:27:32 -0700 (PDT)
Received: from ?IPv6:240e:362:4d1:900:683e:57c:525:a3cd?
 ([240e:362:4d1:900:683e:57c:525:a3cd])
 by smtp.gmail.com with ESMTPSA id a8sm1181029pga.64.2020.06.18.19.27.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Jun 2020 19:27:31 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200615235217.GA1921846@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <c5d7b2f1-6b32-d965-3b60-eb70a26e02b4@linaro.org>
Date: Fri, 19 Jun 2020 10:26:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200615235217.GA1921846@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_192733_403232_33ECC629 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pci <linux-pci@vger.kernel.org>, Hanjun Guo <guohanjun@huawei.com>,
 jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Joerg Roedel <joro@8bytes.org>,
 Wangzhou <wangzhou1@hisilicon.com>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>,
 Thanu Rangarajan <Thanu.Rangarajan@arm.com>,
 Souvik Chakravarty <Souvik.Chakravarty@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Helgaas <bhelgaas@google.com>, wanghuiqiang <wanghuiqiang@huawei.com>,
 kenneth-lee-2012@foxmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJqb3JuCgpPbiAyMDIwLzYvMTYg5LiK5Y2INzo1MiwgQmpvcm4gSGVsZ2FhcyB3cm90ZToK
PiBPbiBTYXQsIEp1biAxMywgMjAyMCBhdCAxMDozMDo1NlBNICswODAwLCBaaGFuZ2ZlaSBHYW8g
d3JvdGU6Cj4+IE9uIDIwMjAvNi8xMSDkuIvljYg5OjQ0LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+
Pj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4+Pj4+Pj4+Pj4+IEBAIC0yNDE4LDYgKzI0
MTgsMTAgQEAgaW50IGlvbW11X2Z3c3BlY19pbml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0
Cj4+Pj4+Pj4+Pj4+IGZ3bm9kZV9oYW5kbGUgKmlvbW11X2Z3bm9kZSwKPj4+Pj4+Pj4+Pj4gICAg
ICAgICAgICAgIGZ3c3BlYy0+aW9tbXVfZndub2RlID0gaW9tbXVfZndub2RlOwo+Pj4+Pj4+Pj4+
PiAgICAgICAgICAgICAgZndzcGVjLT5vcHMgPSBvcHM7Cj4+Pj4+Pj4+Pj4+ICAgICAgICAgICAg
ICBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3c3BlYyk7Cj4+Pj4+Pj4+Pj4+ICsKPj4+Pj4+
Pj4+Pj4gKyAgICAgICBpZiAoZGV2X2lzX3BjaShkZXYpKQo+Pj4+Pj4+Pj4+PiArICAgICAgICAg
ICAgICAgcGNpX2ZpeHVwX2RldmljZShwY2lfZml4dXBfZmluYWwsIHRvX3BjaV9kZXYoZGV2KSk7
Cj4+Pj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gVGhlbiBwY2lfZml4dXBfZmlu
YWwgd2lsbCBiZSBjYWxsZWQgdHdpY2UsIHRoZSBmaXJzdCBpbiBwY2lfYnVzX2FkZF9kZXZpY2Uu
Cj4+Pj4+Pj4+Pj4+IEhlcmUgaW4gaW9tbXVfZndzcGVjX2luaXQgaXMgdGhlIHNlY29uZCB0aW1l
LCBzcGVjaWZpY2FsbHkgZm9yIGlvbW11X2Z3c3BlYy4KPj4+Pj4+Pj4+Pj4gV2lsbCBzZW5kIHRo
aXMgd2hlbiA1LjgtcmMxIGlzIG9wZW4uCj4+Pj4+Pj4+Pj4gV2FpdCwgdGhpcyB3aG9sZSBmaXh1
cCBhcHByb2FjaCBzZWVtcyB3cm9uZyB0byBtZS4gIE5vIG1hdHRlciBob3cgeW91Cj4+Pj4+Pj4+
Pj4gZG8gdGhlIGZpeHVwLCBpdCdzIHN0aWxsIGEgZml4dXAsIHdoaWNoIG1lYW5zIGl0IHJlcXVp
cmVzIG9uZ29pbmcKPj4+Pj4+Pj4+PiBtYWludGVuYW5jZS4gIFN1cmVseSB3ZSBkb24ndCB3YW50
IHRvIGhhdmUgdG8gYWRkIHRoZSBWZW5kb3IvRGV2aWNlIElECj4+Pj4+Pj4+Pj4gZm9yIGV2ZXJ5
IG5ldyBBTUJBIGRldmljZSB0aGF0IGNvbWVzIGFsb25nLCBkbyB3ZT8KPj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gSGVyZSB0aGUgZmFrZSBwY2kgZGV2aWNlIGhhcyBzdGFuZGFyZCBQQ0kgY2ZnIHNwYWNl
LCBidXQgcGh5c2ljYWwKPj4+Pj4+Pj4+IGltcGxlbWVudGF0aW9uIGlzIGJhc2Ugb24gQU1CQQo+
Pj4+Pj4+Pj4gVGhleSBjYW4gcHJvdmlkZSBwYXNpZCBmZWF0dXJlLgo+Pj4+Pj4+Pj4gSG93ZXZl
ciwKPj4+Pj4+Pj4+IDEsIGRvZXMgbm90IHN1cHBvcnQgdGxwIHNpbmNlIHRoZXkgYXJlIG5vdCBy
ZWFsIHBjaSBkZXZpY2VzLgo+Pj4+Pj4+Pj4gMi4gZG9lcyBub3Qgc3VwcG9ydCBwcmksIGluc3Rl
YWQgc3VwcG9ydCBzdGFsbCAocHJvdmlkZWQgYnkgc21tdSkKPj4+Pj4+Pj4+IEFuZCBzdGFsbCBp
cyBub3QgYSBwY2kgZmVhdHVyZSwgc28gaXQgaXMgbm90IGRlc2NyaWJlZCBpbiBzdHJ1Y3QgcGNp
X2RldiwKPj4+Pj4+Pj4+IGJ1dCBpbiBzdHJ1Y3QgaW9tbXVfZndzcGVjLgo+Pj4+Pj4+Pj4gU28g
d2UgdXNlIHRoaXMgZml4dXAgdG8gdGVsbCBwY2kgc3lzdGVtIHRoYXQgdGhlIGRldmljZXMgY2Fu
IHN1cHBvcnQgc3RhbGwsCj4+Pj4+Pj4+PiBhbmQgaGVyZWJ5IHN1cHBvcnQgcGFzaWQuCj4+Pj4+
Pj4+IFRoaXMgZGlkIG5vdCBhbnN3ZXIgbXkgcXVlc3Rpb24uICBBcmUgeW91IHByb3Bvc2luZyB0
aGF0IHdlIHVwZGF0ZSBhCj4+Pj4+Pj4+IHF1aXJrIGV2ZXJ5IHRpbWUgYSBuZXcgQU1CQSBkZXZp
Y2UgaXMgcmVsZWFzZWQ/ICBJIGRvbid0IHRoaW5rIHRoYXQKPj4+Pj4+Pj4gd291bGQgYmUgYSBn
b29kIG1vZGVsLgo+Pj4+Pj4+IFllcywgeW91IGFyZSByaWdodCwgYnV0IHdlIGRvIG5vdCBoYXZl
IGFueSBiZXR0ZXIgaWRlYSB5ZXQuCj4+Pj4+Pj4gQ3VycmVudGx5IHdlIGhhdmUgdGhyZWUgZmFr
ZSBwY2kgZGV2aWNlcywgd2hpY2ggc3VwcG9ydCBzdGFsbCBhbmQgcGFzaWQuCj4+Pj4+Pj4gV2Ug
aGF2ZSB0byBsZXQgcGNpIHN5c3RlbSBrbm93IHRoZSBkZXZpY2UgY2FuIHN1cHBvcnQgcGFzaWQs
IGJlY2F1c2Ugb2YKPj4+Pj4+PiBzdGFsbCBmZWF0dXJlLCB0aG91Z2ggbm90IHN1cHBvcnQgcHJp
Lgo+Pj4+Pj4+IERvIHlvdSBoYXZlIGFueSBvdGhlciBpZGVhcz8KPj4+Pj4+IEl0IHNvdW5kcyBs
aWtlIHRoZSBiZXN0IHdheSB3b3VsZCBiZSB0byBhbGxvY2F0ZSBhIFBDSSBjYXBhYmlsaXR5IGZv
ciBpdCwgc28KPj4+Pj4+IGRldGVjdGlvbiBjYW4gYmUgZG9uZSB0aHJvdWdoIGNvbmZpZyBzcGFj
ZSwgYXQgbGVhc3QgaW4gZnV0dXJlIGRldmljZXMsCj4+Pj4+PiBvciBwb3NzaWJseSBhZnRlciBh
IGZpcm13YXJlIHVwZGF0ZSBpZiB0aGUgY29uZmlnIHNwYWNlIGluIHlvdXIgc3lzdGVtCj4+Pj4+
PiBpcyBjb250cm9sbGVkIGJ5IGZpcm13YXJlIHNvbWV3aGVyZS4gIE9uY2UgdGhlcmUgaXMgYSBw
cm9wZXIgbWVjaGFuaXNtCj4+Pj4+PiB0byBkbyB0aGlzLCB1c2luZyBmaXh1cHMgdG8gZGV0ZWN0
IHRoZSBlYXJseSBkZXZpY2VzIHRoYXQgZG9uJ3QgdXNlIHRoYXQKPj4+Pj4+IHNob3VsZCBiZSB1
bmNvbnRyb3ZlcnNpYWwuIEkgaGF2ZSBubyBpZGVhIHdoYXQgdGhlIHByb2Nlc3Mgb3IgdGltZWxp
bmUKPj4+Pj4+IGlzIHRvIGFkZCBuZXcgY2FwYWJpbGl0aWVzIGludG8gdGhlIFBDSWUgc3BlY2lm
aWNhdGlvbiwgb3IgaWYgdGhpcyBvbmUKPj4+Pj4+IHdvdWxkIGJlIGFjY2VwdGFibGUgdG8gdGhl
IFBDSSBTSUcgYXQgYWxsLgo+Pj4+PiBUaGF0IHNvdW5kcyBsaWtlIGEgcG9zc2liaWxpdHkuICBU
aGUgc3BlYyBhbHJlYWR5IGRlZmluZXMgYQo+Pj4+PiBWZW5kb3ItU3BlY2lmaWMgRXh0ZW5kZWQg
Q2FwYWJpbGl0eSAoUENJZSByNS4wLCBzZWMgNy45LjUpIHRoYXQgbWlnaHQKPj4+Pj4gYmUgYSBj
YW5kaWRhdGUuCj4+Pj4gV2lsbCBpbnZlc3RpZ2F0ZSB0aGlzLCB0aGFua3MgQmpvcm4KPj4+IEZX
SVcsIHRoZXJlJ3MgYWxzbyBhIFZlbmRvci1TcGVjaWZpYyBDYXBhYmlsaXR5IHRoYXQgY2FuIGFw
cGVhciBpbiB0aGUKPj4+IGZpcnN0IDI1NiBieXRlcyBvZiBjb25maWcgc3BhY2UgKHRoZSBWZW5k
b3ItU3BlY2lmaWMgRXh0ZW5kZWQKPj4+IENhcGFiaWxpdHkgbXVzdCBhcHBlYXIgaW4gdGhlICJF
eHRlbmRlZCBDb25maWd1cmF0aW9uIFNwYWNlIiBmcm9tCj4+PiAweDEwMC0weGZmZikuCj4+IFVu
Zm9ydHVuYXRlbHkgb3VyIHNpbGljb24gZG9lcyBub3QgaGF2ZSBlaXRoZXIgVmVuZG9yLVNwZWNp
ZmljwqBDYXBhYmlsaXR5IG9yCj4+IFZlbmRvci1TcGVjaWZpY8KgRXh0ZW5kZWQgQ2FwYWJpbGl0
eS4KPj4KPj4gU3R1ZGllZCBjb21taXQgODUzMWUyODNiZWU2NjA1MDczNGZiMGU4OWQ1M2U4NWZk
NWNlMjRhNAo+PiBMb29rcyB0aGlzIG1ldGhvZCByZXF1aXJlcyBhZGRpbmcgbWVtYmVyIChsaWtl
IGNhbl9zdGFsbCkgdG8gc3RydWN0IHBjaV9kZXYsCj4+IGxvb2tzIGRpZmZpY3VsdC4KPiBUaGUg
cHJvYmxlbSBpcyB0aGF0IHdlIGRvbid0IHdhbnQgdG8gYWRkIGRldmljZSBJRHMgZXZlcnkgdGlt
ZSBhIG5ldwo+IGNoaXAgY29tZXMgb3V0LiAgQWRkaW5nIG9uZSBvciB0d28gZGV2aWNlIElEcyBm
b3Igc2lsaWNvbiB0aGF0J3MKPiBhbHJlYWR5IHJlbGVhc2VkIGlzIG5vdCBhIHByb2JsZW0gYXMg
bG9uZyBhcyB5b3UgaGF2ZSBhIHN0cmF0ZWd5IGZvcgo+ICpmdXR1cmUqIGRldmljZXMgc28gdGhl
eSBkb24ndCByZXF1aXJlIGEgcXVpcmsuCj4KPj4+Pj4+IElmIGRldGVjdGlvbiBjYW5ub3QgYmUg
ZG9uZSB0aHJvdWdoIFBDSSBjb25maWcgc3BhY2UsIHRoZSBuZXh0IGJlc3QKPj4+Pj4+IGFsdGVy
bmF0aXZlIGlzIHRvIHBhc3MgYXV4aWxpYXJ5IGRhdGEgdGhyb3VnaCBmaXJtd2FyZS4gT24gRFQg
YmFzZWQKPj4+Pj4+IG1hY2hpbmVzLCB5b3UgY2FuIGxpc3Qgbm9uLWhvdHBsdWdnYWJsZSBQQ0ll
IGRldmljZXMgYW5kIGFkZCBjdXN0b20KPj4+Pj4+IHByb3BlcnRpZXMgdGhhdCBjb3VsZCBiZSBy
ZWFkIGR1cmluZyBkZXZpY2UgZW51bWVyYXRpb24uIEkgYXNzdW1lCj4+Pj4+PiBBQ1BJIGhhcyBz
b21ldGhpbmcgc2ltaWxhciwgYnV0IEkgaGF2ZSBub3QgZG9uZSB0aGF0Lgo+Pj4+IFllcywgdGhh
bmtzIEFybmQKPj4+Pj4gQUNQSSBoYXMgX0RTTSAoQUNQSSB2Ni4zLCBzZWMgOS4xLjEpLCB3aGlj
aCBtaWdodCBiZSBhIGNhbmRpZGF0ZS4gIEkKPj4+Pj4gbGlrZSB0aGlzIGJldHRlciB0aGFuIGEg
UENJIGNhcGFiaWxpdHkgYmVjYXVzZSB0aGUgcHJvcGVydHkgeW91IG5lZWQKPj4+Pj4gdG8gZXhw
b3NlIGlzIG5vdCBhIFBDSSBwcm9wZXJ0eS4KPj4+PiBfRFNNIG1heSBub3Qgd29ya2FibGUsIHNp
bmNlIGl0IGlzIHdvcmtpbmcgaW4gcnVudGltZS4KPj4+PiBXZSBuZWVkIHN0YWxsIGluZm9ybWF0
aW9uIGluIGluaXQgc3RhZ2UsIG5laXRoZXIgdG9vIGVhcmx5IChhZnRlciBhbGxvY2F0aW9uCj4+
Pj4gb2YgaW9tbXVfZndzcGVjKQo+Pj4+IG5vciB0b28gbGF0ZSAoYmVmb3JlIGFybV9zbW11X2Fk
ZF9kZXZpY2UgKS4KPj4+IEknbSBub3QgYXdhcmUgb2YgYSByZXN0cmljdGlvbiBvbiB3aGVuIF9E
U00gY2FuIGJlIGV2YWx1YXRlZC4gIEknbQo+Pj4gbG9va2luZyBhdCBBQ1BJIHY2LjMsIHNlYyA5
LjEuMS4gIEFyZSB5b3Ugc2VlaW5nIHNvbWV0aGluZyBkaWZmZXJlbnQ/Cj4+IERTTSBtZXRob2Qg
c2VlbXMgcmVxdWlyZXMgdmVuZG9yIHNwZWNpZmljIGd1aWQsIGFuZCBjb2RlIHdvdWxkIGJlIHZl
bmRvcgo+PiBzcGVjaWZpYy4KPiBfRFNNIGluZGVlZCByZXF1aXJlcyBhIHZlbmRvci1zcGVjaWZp
YyBVVUlELCBwcmVjaXNlbHkgKmJlY2F1c2UqCj4gdmVuZG9ycyBhcmUgZnJlZSB0byBkZWZpbmUg
dGhlaXIgb3duIGZ1bmN0aW9uYWxpdHkgd2l0aG91dCByZXF1aXJpbmcKPiBjaGFuZ2VzIHRvIHRo
ZSBBQ1BJIHNwZWMuICBGcm9tIHRoZSBzcGVjIChBQ1BJIHY2LjMsIHNlYyA5LjEuMSk6Cj4KPiAg
ICBOZXcgVVVJRHMgbWF5IGFsc28gYmUgY3JlYXRlZCBieSBPRU1zIGFuZCBJSFZzIGZvciBjdXN0
b20gZGV2aWNlcwo+ICAgIGFuZCBvdGhlciBpbnRlcmZhY2Ugb3IgZGV2aWNlIGdvdmVybmluZyBi
b2RpZXMgKGUuZy4gdGhlIFBDSSBTSUcpLAo+ICAgIGFzIGxvbmcgYXMgdGhlIFVVSUQgaXMgZGlm
ZmVyZW50IGZyb20gb3RoZXIgcHVibGlzaGVkIFVVSURzLgpIYXZlIHN0dWRpZWQgX0RTTSBtZXRo
b2QsIHR3byBpc3N1ZXMgd2UgbWV0IGNvbXBhcmluZyB1c2luZyBxdWlyay4KCjEuIE5lZWQgY2hh
bmdlIGRlZmluaXRpb24gb2YgZWl0aGVyIHBjaV9ob3N0X2JyaWRnZSBvciBwY2lfZGV2LCBsaWtl
IAphZGRpbmcgbWVtYmVyIGNhbl9zdGFsbCwKd2hpbGUgcGNpIHN5c3RlbSBkb2VzIG5vdCBrbm93
IHN0YWxsIG5vdy4KCmEsIHBjaSBkZXZpY2VzIGRvIG5vdCBoYXZlIHV1aWQ6IHV1aWQgbmVlZCBi
ZSBkZXNjcmliZWQgaW4gZHNkdCwgd2hpbGUgCnBjaSBkZXZpY2VzIGFyZSBub3QgZGVmaW5lZCBp
biBkc2R0LgogwqDCoMKgIHNvIHdlIGhhdmUgdG8gdXNlIGhvc3QgYnJpZGdlLgoKYizCoCBQYXJz
aW5nIGRzZHQgaXMgaW4gaW4gcGNpIHN1YnN5c3RlbS4KTGlrZSBkcml2ZXJzL2FjcGkvcGNpX3Jv
b3QuYzoKIMKgwqDCoMKgwqDCoCBvYmogPSBhY3BpX2V2YWx1YXRlX2RzbShBQ1BJX0hBTkRMRShi
dXMtPmJyaWRnZSksIAomcGNpX2FjcGlfZHNtX2d1aWQsIDEsCiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJR05PUkVfUENJX0JP
T1RfQ09ORklHX0RTTSwgTlVMTCk7CgpBZnRlciBwYXJzaW5nIERTTSBpbiBwY2ksIHdlIG5lZWQg
cmVjb3JkIHRoaXMgaW5mby4KQ3VycmVudGx5LCBjYW5fc3RhbGwgaW5mbyBpcyByZWNvcmRlZCBp
biBpb21tdV9md3NwZWMsCndoaWNoIGlzIGFsbG9jYXRlZCBpbiBpb21tdV9md3NwZWNfaW5pdCBh
bmQgY2FsbGVkIGJ5IAppb3J0X2lvbW11X2NvbmZpZ3VyZSBmb3IgdWVmaS4KCjIuIEd1ZXN0IGtl
cm5lbCBhbHNvIG5lZWQgc3VwcG9ydCBzdmEuClVzaW5nIHF1aXJrLCB0aGUgZ3Vlc3QgY2FuIGJv
b3Qgd2l0aCBzdmEgZW5hYmxlZCwgc2luY2UgcXVpcmsgaXMgCnNlbGYtY29udGFpbmVkIGJ5IGtl
cm5lbC4KSWYgdXNpbmfCoCBfRFNNLCBhIHNwZWNpZmljIHVlZmkgb3IgZHRiIGhhcyB0byBiZSBw
cm92aWRlZCwKY3VycmVudGx5IHdlIGNhbiB1c2VRRU1VX0VGSS5mZCBmcm9tIGFwdCBpbnN0YWxs
IHFlbXUtZWZpCgoKVGhhbmtzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
