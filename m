Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE5E1F1196
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 04:54:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kJhqhObUhn/Q7SQ8nh2RKCFJp+CoBuqIGpY2DAsxk3U=; b=dC4SPv72ExAfUkSwxszvdl5O/
	5BS8bicLpFgooXS0oVLlm3qJZ6vdexMxs94OOTmRReRW+VoI6o6cXklioMLAOIihanOkivNkUTAqP
	IKae90lhFgek4ZbaZ/IqzqOzIYX5NaY46MPr4p7kIt7by9II8dGvTPVwrYvCy8wF9/U/uIbBDgW/B
	bcWm6F7h0sdlWgdD8GtPij773QxtdgiSt7IDAy5ax9iWrJdqn4eqcyNy63pAwN13IEG56knmqEBIa
	gCkIjJv0AwT45gjcRSRVeteHAIPKFe34a4aPTmysrlMLCWGcZ44o/HdcX8SOt0UYdp0iDFGKNcT0q
	vnpKNDsnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji7vr-0007o8-W6; Mon, 08 Jun 2020 02:54:40 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji7vk-0007n6-2O
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 02:54:33 +0000
Received: by mail-pl1-x642.google.com with SMTP id bh7so6065992plb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 07 Jun 2020 19:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=TNiiby0GhibJHmG02ytGWtb3GrXv/h2IE3SFE6qK8wY=;
 b=izDTLbNFapAPFawYa8bP5L1UpCxlkSTCCzx2ye/9STM1DqXymdysNnGkX12FV0/OIo
 tKcjXEIEuxSNO572pWS545T9DoQqGqTM8DmMcj/pjObZb/s4KuucXPV8lxnGJsPOEWOP
 creFxg4Q8lnO5UPN6FiY9AkscKdJteM1nKY+Qmci5RctGzZp1Lm8RhpxAeqkzQiUCQxI
 Gn/htYffz0hnLWeWv7zjKwwzU0TiNbE2IVaAoUldJmQdAcEGN9qicP3+rskQKiUOfzQ9
 T1+IF9bYkLx6QP/gZ6BWN651hoOpft0Cc6Lq2cjMJoEoVussc3m5Gv9e47HSM5NkG+Yl
 PSSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=TNiiby0GhibJHmG02ytGWtb3GrXv/h2IE3SFE6qK8wY=;
 b=X6iQfZOQcd9bMxlPp8p0vq4OVF7T1YZqmSQ3I5Z91FLYWw0WQpI+HQEw6zQjML/Yzf
 uGGCuoSW6KgmFffQ+C1ySi2F2eO24HaSFrgCqM415qMiy/FQaOI5JEQx73VTzgfKYsCi
 O5iQaNxaAGnI1I33fsjXQHeGqqWYKMwBjV92EFREw85Okcwy1jsITfH0cEw1mF/MjYin
 uDA2fCxZ250tZoyzsRODw0lqON08rW0qnGUIgfh5ZAz0EuAfdgXMu2fXF5DBAGB3KtHS
 PqU5dg3pvkJ4NwJ/8OTG4b7P4ddoMNC7uVSe3zdUx0VMH07v3mNxG3GN9CPWZC5IJX5E
 XFhQ==
X-Gm-Message-State: AOAM533xVIBg8igfQaS8p92M+I/Aal8eovz6Tff1nIuL7DZ9pwob5dl6
 1sx51IM94LJGrefXGFGUpbdgMw==
X-Google-Smtp-Source: ABdhPJxkqD1zFPHkx/wch8a4hS4Dcd7qZB1Ug7k+ig+u/wKNnkcnbqH/JdvGWQP6MIHxl1bz+Ni7fQ==
X-Received: by 2002:a17:90a:f3c4:: with SMTP id
 ha4mr15260604pjb.18.1591584870012; 
 Sun, 07 Jun 2020 19:54:30 -0700 (PDT)
Received: from [10.80.2.98] ([45.135.186.73])
 by smtp.gmail.com with ESMTPSA id t9sm9533489pjs.16.2020.06.07.19.54.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 07 Jun 2020 19:54:29 -0700 (PDT)
Subject: Re: [PATCH 0/2] Introduce PCI_FIXUP_IOMMU
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20200605231909.GA1155454@bjorn-Precision-5520>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <be91b0f0-c685-789d-6868-1c8ebd62b770@linaro.org>
Date: Mon, 8 Jun 2020 10:54:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200605231909.GA1155454@bjorn-Precision-5520>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_195432_180849_C935313C 
X-CRM114-Status: GOOD (  22.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGksIEJqb3JuCgpPbiAyMDIwLzYvNiDkuIrljYg3OjE5LCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+
IE9uIFRodSwgSnVuIDA0LCAyMDIwIGF0IDA5OjMzOjA3UE0gKzA4MDAsIFpoYW5nZmVpIEdhbyB3
cm90ZToKPj4gT24gMjAyMC82LzIg5LiK5Y2IMTo0MSwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPj4+
IE9uIFRodSwgTWF5IDI4LCAyMDIwIGF0IDA5OjMzOjQ0QU0gKzAyMDAsIEpvZXJnIFJvZWRlbCB3
cm90ZToKPj4+PiBPbiBXZWQsIE1heSAyNywgMjAyMCBhdCAwMToxODo0MlBNIC0wNTAwLCBCam9y
biBIZWxnYWFzIHdyb3RlOgo+Pj4+PiBJcyB0aGlzIHNsb3dkb3duIHNpZ25pZmljYW50PyAgV2Ug
YWxyZWFkeSBpdGVyYXRlIG92ZXIgZXZlcnkgZGV2aWNlCj4+Pj4+IHdoZW4gYXBwbHlpbmcgUENJ
X0ZJWFVQX0ZJTkFMIHF1aXJrcywgc28gaWYgd2UgdXNlZCB0aGUgZXhpc3RpbmcKPj4+Pj4gUENJ
X0ZJWFVQX0ZJTkFMLCB3ZSB3b3VsZG4ndCBiZSBhZGRpbmcgYSBuZXcgbG9vcC4gIFdlIHdvdWxk
IG9ubHkgYmUKPj4+Pj4gYWRkaW5nIHR3byBtb3JlIGl0ZXJhdGlvbnMgdG8gdGhlIGxvb3AgaW4g
cGNpX2RvX2ZpeHVwcygpIHRoYXQgdHJpZXMKPj4+Pj4gdG8gbWF0Y2ggcXVpcmtzIGFnYWluc3Qg
dGhlIGN1cnJlbnQgZGV2aWNlLiAgSSBkb3VidCB0aGF0IHdvdWxkIGJlIGEKPj4+Pj4gbWVhc3Vy
YWJsZSBzbG93ZG93bi4KPj4+PiBJIGRvbid0IGtub3cgaG93IHNpZ25pZmljYW50IGl0IGlzLCBi
dXQgSSByZW1lbWJlciBwZW9wbGUgY29tcGxhaW5pbmcKPj4+PiBhYm91dCBhZGRpbmcgbmV3IFBD
SSBxdWlya3MgYmVjYXVzZSBpdCB0YWtlcyB0b28gbG9uZyBmb3IgdGhlbSB0byBydW4KPj4+PiB0
aGVtIGFsbC4gVGhhdCB3YXMgaW4gdGhlIGRpc2N1c3Npb24gYWJvdXQgdGhlIHF1aXJrIGRpc2Fi
bGluZyBBVFMgb24KPj4+PiBBTUQgU3RvbmV5IHN5c3RlbXMuCj4+Pj4KPj4+PiBTbyBpdCBwcm9i
YWJseSBkZXBlbmRzIG9uIGhvdyBtYW55IFBDSSBkZXZpY2VzIGFyZSBpbiB0aGUgc3lzdGVtIHdo
ZXRoZXIKPj4+PiBpdCBjYXVzZXMgYW55IG1lYXN1cmVhYmxlIHNsb3dkb3duLgo+Pj4gSSBmb3Vu
ZCB0aGlzIFsxXSBmcm9tIFBhdWwgTWVuemVsLCB3aGljaCB3YXMgYSBzbG93ZG93biBjYXVzZWQg
YnkKPj4+IHF1aXJrX3VzYl9lYXJseV9oYW5kb2ZmKCkuICBJIHRoaW5rIHRoZSByZWFsIHByb2Js
ZW0gaXMgaW5kaXZpZHVhbAo+Pj4gcXVpcmtzIHRoYXQgdGFrZSBhIGxvbmcgdGltZS4KPj4+Cj4+
PiBUaGUgUENJX0ZJWFVQX0lPTU1VIHRoaW5ncyB3ZSdyZSB0YWxraW5nIGFib3V0IHNob3VsZCBi
ZSBmYXN0LCBhbmQgb2YKPj4+IGNvdXJzZSwgdGhleSdyZSBvbmx5IHJ1biBmb3IgbWF0Y2hpbmcg
ZGV2aWNlcyBhbnl3YXkuICBTbyBJJ2QgcmF0aGVyCj4+PiBrZWVwIHRoZW0gYXMgUENJX0ZJWFVQ
X0ZJTkFMIHRoYW4gYWRkIGEgd2hvbGUgbmV3IHBoYXNlLgo+Pj4KPj4gVGhhbmtzIEJqb3JuIGZv
ciB0YWtpbmcgdGltZSBmb3IgdGhpcy4KPj4gSWYgc28sIGl0IHdvdWxkIGJlIG11Y2ggc2ltcGxl
ci4KPj4KPj4gKysrIGIvZHJpdmVycy9pb21tdS9pb21tdS5jCj4+IEBAIC0yNDE4LDYgKzI0MTgs
MTAgQEAgaW50IGlvbW11X2Z3c3BlY19pbml0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0Cj4+
IGZ3bm9kZV9oYW5kbGUgKmlvbW11X2Z3bm9kZSwKPj4gIMKgwqDCoMKgwqDCoMKgIGZ3c3BlYy0+
aW9tbXVfZndub2RlID0gaW9tbXVfZndub2RlOwo+PiAgwqDCoMKgwqDCoMKgwqAgZndzcGVjLT5v
cHMgPSBvcHM7Cj4+ICDCoMKgwqDCoMKgwqDCoCBkZXZfaW9tbXVfZndzcGVjX3NldChkZXYsIGZ3
c3BlYyk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoCBpZiAoZGV2X2lzX3BjaShkZXYpKQo+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwY2lfZml4dXBfZGV2aWNlKHBjaV9maXh1cF9maW5h
bCwgdG9fcGNpX2RldihkZXYpKTsKPj4gKwo+Pgo+PiBUaGVuIHBjaV9maXh1cF9maW5hbCB3aWxs
IGJlIGNhbGxlZCB0d2ljZSwgdGhlIGZpcnN0IGluIHBjaV9idXNfYWRkX2RldmljZS4KPj4gSGVy
ZSBpbiBpb21tdV9md3NwZWNfaW5pdCBpcyB0aGUgc2Vjb25kIHRpbWUsIHNwZWNpZmljYWxseSBm
b3IgaW9tbXVfZndzcGVjLgo+PiBXaWxsIHNlbmQgdGhpcyB3aGVuIDUuOC1yYzEgaXMgb3Blbi4K
PiBXYWl0LCB0aGlzIHdob2xlIGZpeHVwIGFwcHJvYWNoIHNlZW1zIHdyb25nIHRvIG1lLiAgTm8g
bWF0dGVyIGhvdyB5b3UKPiBkbyB0aGUgZml4dXAsIGl0J3Mgc3RpbGwgYSBmaXh1cCwgd2hpY2gg
bWVhbnMgaXQgcmVxdWlyZXMgb25nb2luZwo+IG1haW50ZW5hbmNlLiAgU3VyZWx5IHdlIGRvbid0
IHdhbnQgdG8gaGF2ZSB0byBhZGQgdGhlIFZlbmRvci9EZXZpY2UgSUQKPiBmb3IgZXZlcnkgbmV3
IEFNQkEgZGV2aWNlIHRoYXQgY29tZXMgYWxvbmcsIGRvIHdlPwo+Cj4KSGVyZSB0aGUgZmFrZSBw
Y2kgZGV2aWNlIGhhcyBzdGFuZGFyZCBQQ0kgY2ZnIHNwYWNlLCBidXQgcGh5c2ljYWwgCmltcGxl
bWVudGF0aW9uIGlzIGJhc2Ugb24gQU1CQQpUaGV5IGNhbiBwcm92aWRlIHBhc2lkIGZlYXR1cmUu
Ckhvd2V2ZXIsCjEsIGRvZXMgbm90IHN1cHBvcnQgdGxwIHNpbmNlIHRoZXkgYXJlIG5vdCByZWFs
IHBjaSBkZXZpY2VzLgoyLiBkb2VzIG5vdCBzdXBwb3J0IHByaSwgaW5zdGVhZCBzdXBwb3J0IHN0
YWxsIChwcm92aWRlZCBieSBzbW11KQpBbmQgc3RhbGwgaXMgbm90IGEgcGNpIGZlYXR1cmUsIHNv
IGl0IGlzIG5vdCBkZXNjcmliZWQgaW4gc3RydWN0IApwY2lfZGV2LCBidXQgaW4gc3RydWN0IGlv
bW11X2Z3c3BlYy4KU28gd2UgdXNlIHRoaXMgZml4dXAgdG8gdGVsbCBwY2kgc3lzdGVtIHRoYXQg
dGhlIGRldmljZXMgY2FuIHN1cHBvcnQgCnN0YWxsLCBhbmQgaGVyZWJ5IHN1cHBvcnQgcGFzaWQu
CgpUaGFua3MKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
