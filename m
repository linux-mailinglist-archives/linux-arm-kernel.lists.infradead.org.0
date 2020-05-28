Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638391E5D75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtTrIr+yvnMAbhU67FeRen5P+sJOB90jdXFxrYmODc8=; b=L5vLE0d4vbi/9q
	lKT1KKHNrQYvZwLxirYgrqDR3teaXWyame05TRtNX8ertoCJur6nSIAdDH8+2p1bgPZNG8f5rrQ00
	g1cJoc7oQJHKTLuTWI1x/+m40aeOEYIC7eEz9cm3vuhbjLsGRb7Nmfi5yofIRVlD0JwykBB34PfWF
	fx894oOX66F6QGFp+okamOkYKo4rzAnW9nETroVdJFWtobwY+pT0t36hSFmqbOcjVGpln6/FpU75M
	JAj3QsVa1xLLX5VQhpvB3hO8F42lezp8hZxFLWMMgxNHhfBW59T33Vez3y3uBi9TL23t5gUMZO6rP
	wX4qIWsI/LOQbfWWyJkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeGAQ-00006k-Mv; Thu, 28 May 2020 10:53:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeGAH-000060-34
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 10:53:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590663212;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=THROXU06O8NObD/CvI2mO/QZizA3BtE1Fcaww6HOCqQ=;
 b=gAhMRYUoVOK1TQl8WOlYne3S6IxvKthF06GRueSnc8fb2R00QTSBRBs6HQcT4nnawda416
 1EHzTRHb6oKdivmblWUSwg4/ZrhOLfnCQaJERQ0nMxyB8YxM8cU30yckhTuT5/Xh0ZLV6e
 OxKAMUI4I9PYueKE9C+MkNC125/HfNk=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-NYhhNI7SO72MmoFFAWB01Q-1; Thu, 28 May 2020 06:53:30 -0400
X-MC-Unique: NYhhNI7SO72MmoFFAWB01Q-1
Received: by mail-ej1-f72.google.com with SMTP id nw19so10038756ejb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 03:53:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=THROXU06O8NObD/CvI2mO/QZizA3BtE1Fcaww6HOCqQ=;
 b=i+qW0/ixs+eHG+OKibP92xIb2pPgc1Bo7QVpU1ce7cPk9AkVULLZTuaUuhXHvb8GxK
 LK4QnDmB299Znybs94J0NW6ijhbZn+iwqEjwdsmJ0rTCHQOohjaTUHXgxWMWdhF+UEcj
 Oj70PT5ZzQCiWwVvA6Lupi5CaXRca2DBokJDC2lxUujy4x7hnOujeNQTxNQPmLFu3RHe
 ZXiza2h9EbPQH4JCq/Yk32p9WvhwVYraVg5KG4ipgWNQVwHjIa9Bx0sf4EHMx5IOHfPf
 /BVHZazSkwRxRA8aDCkbNMVvSWoOj4RiBxlM6msudr/W+S6lGvgdo3cSKEvlvmSoz8S6
 2ZYg==
X-Gm-Message-State: AOAM532GxrcwxBTnL+XyahBAMiXGxQtv+rMrPyayiCVetPEj7aDdpbVK
 zePhDXLQwZrnkJswRi390hIp9F5ZGjb8OYSOFQLOc5ZbSVdf9GPnzADHH86r9oGV9/offsTpZzl
 rBUcG593gye8jdfSO8hPybtM0nHumCimb+l8=
X-Received: by 2002:aa7:d0cc:: with SMTP id u12mr2450274edo.385.1590663208732; 
 Thu, 28 May 2020 03:53:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxedx2WYnJYMDlOaUBBjXoew4r7E/DhBUsZ1oryjTyqUpxzgiFDrYyuhtNMmnqvf0J2iR/C7g==
X-Received: by 2002:aa7:d0cc:: with SMTP id u12mr2450257edo.385.1590663208543; 
 Thu, 28 May 2020 03:53:28 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:3c1c:ffba:c624:29b8?
 ([2001:b07:6468:f312:3c1c:ffba:c624:29b8])
 by smtp.gmail.com with ESMTPSA id z20sm3835520ejb.68.2020.05.28.03.53.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 May 2020 03:53:28 -0700 (PDT)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Marc Zyngier <maz@kernel.org>, Gavin Shan <gshan@redhat.com>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8b09c298fab15e2629c65e8ee98a8a29@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <59904c11-6965-510f-4848-bc1e91af49fd@redhat.com>
Date: Thu, 28 May 2020 12:53:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <8b09c298fab15e2629c65e8ee98a8a29@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_035333_203428_39C791E4 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 will@kernel.org, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjgvMDUvMjAgMDk6MDMsIE1hcmMgWnluZ2llciB3cm90ZToKPiBUaGUgY3VycmVudCBzdGF0
ZSBvZiB0aGUgYXJjaGl0ZWN0dXJlIGRvZXNuJ3Qgc2VlbSB0byBsZWF2ZSBtdWNoIGxlZXdheSBp
bgo+IHRlcm1zIG9mIFNXIGNyZWF0aXZpdHkgaGVyZS4gWW91IGp1c3QgY2FuJ3QgYWxsb2NhdGUg
eW91ciBvd24gSVNTIGVuY29kaW5nCj4gd2l0aG91dCByaXNraW5nIGEgY2xhc2ggd2l0aCBmdXR1
cmUgcmV2aXNpb25zIG9mIHRoZSBhcmNoaXRlY3R1cmUuCj4gSXQgaXNuJ3QgZXZlbiBjbGVhciB3
aGV0aGVyIHRoZSB2YWx1ZSB5b3UgcHV0IHdvdWxkIHN0aWNrIGluIEVTUl9FTDEKPiBpZiBpdCBp
c24ndCBhIHZhbGlkIHZhbHVlIGZvciB0aGlzIENQVSAoc2VlIHRoZSBkZWZpbml0aW9uIG9mICdS
ZXNlcnZlZCcKPiBpbiB0aGUgQVJNIEFSTSkuCj4gCj4gQWxsb2NhdGluZyBzdWNoIGEgc3luZHJv
bWUgd291bGQgcmVxdWlyZSBmcm9tIEFSTToKPiAKPiAtIHRoZSBndWFyYW50ZWUgdGhhdCBubyBl
eGlzdGluZyBpbXBsZW1lbnRhdGlvbiwgaXJyZXNwZWN0aXZlIG9mIHRoZQo+IMKgIGltcGxlbWVu
dGVyLCBjYW4gY29wZSB3aXRoIHRoZSBJU1MgZW5jb2Rpbmcgb2YgeW91ciBjaG9pY2UsCj4gCj4g
LSB0aGUgd3JpdHRlbiBwcm9taXNlIGluIHRoZSBhcmNoaXRlY3R1cmUgdGhhdCBzb21lIEVDL0lT
UyB2YWx1ZXMKPiDCoCBhcmUgcmVzZXJ2ZWQgZm9yIFNXLCBhbmQgdGhhdCBwcm9taXNlIHRvIGFw
cGx5IHJldHJvc3BlY3RpdmVseS4KPiAKPiBUaGlzIGlzIHNvbWV3aGF0IHVubGlrZWx5IHRvIGhh
cHBlbi4KCldlbGwsIHRoYXQncyBhIGV1cGhlbWlzbSBwcm9iYWJseS4gIE9uIHg4NiB3ZSdyZSBz
b21ld2hhdCBsdWNreSB0aGF0CnRoZXJlJ3MgYW4gYXJjaGl0ZWN0dXJhbCB3YXkgZm9yIGluamVj
dGluZyBoeXBlcnZpc29yIHZtZXhpdCBkaXJlY3RseSBpbgp0aGUgZ3Vlc3QsIGFuZCB3ZSBjYW4g
cGlnZ3liYWNrIG9uIHRoYXQgZm9yIGFzeW5jIHBhZ2UgZmF1bHRzICh3aGljaCBhcmUKZXNzZW50
aWFsbHkgc3RhZ2UyIHBhZ2UgZmF1bHRzIHRoYXQgYXJlIHByb2Nlc3NlZCBieSB0aGUgZ3Vlc3Qp
LgoKSXMgaXQgcG9zc2libGUgdG8gcmV1c2UgRUwyIGV4Y2VwdGlvbiBjb2RlcyAvIHN5bmRyb21l
cyBzb21laG93PyAgKEkKaGF2ZW4ndCBjaGVja2VkIGluIHRoZSBBUk0gQVJNIHRoZSBkaWZmZXJl
bmNlcyBiZXR3ZWVuIHRoZSBFTDEgYW5kIEVMMgpzeW5kcm9tZSByZWdpc3RlcnMpLgoKUGFvbG8K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
