Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C89C9E7A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 14:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i/mCWeJMiwjM1+7JysncgrSs9fSBqEs4U/VHcW/myds=; b=qWvh/1qxYHZHEFujqJ56eWCuh
	JGz5x+FtwdA9FauXRyWc1yne6yWHvFc00K5k3QYHyd/00iENOGQBhs4qkag1DjWb/geKEAJ2rINa4
	sZOwvmUqwczsKicsjf/bBjw6s2ux3FknftL7OTnchzNx16RIj1NF/1xRdAwm1YJ+oU1qQEt2fPzQr
	BNfzUN33qhiAxwt5W4xrYmna9hgoczbrqq7Vnxdi0pNtGo2/mPY++5zSMDd2VXKiDKVBXfa0A60o3
	oc+t5NRpkv65O61q5ORmo4TQMFTwXpAMvx6meRIRufW3DM6bWclhELJ3F+u12jDNvSaWoRNMKgZr3
	1cM08YDUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2aOs-0004N4-42; Tue, 27 Aug 2019 12:16:38 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2aOe-0004MU-R0; Tue, 27 Aug 2019 12:16:26 +0000
Received: by mail-wm1-x342.google.com with SMTP id m125so2778574wmm.3;
 Tue, 27 Aug 2019 05:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:in-reply-to
 :references:user-agent:content-transfer-encoding;
 bh=pU0lXL5v2+TfEcbDBaFqBB4HEseMI0PfB9qV53kie2U=;
 b=LmAsZv/mq0KHO3X+ry/5ysAZwONa3RGEyT694iXRSw0CGvdySAdY4GH5kkNPD7HS7k
 TEYfa/jK6hCZrE3b6816WgGV6fuPkZzqD4nh17/BwjsStTctQffjujy4nfdsf/kfd44w
 CMFX7ZVACIi29XdllRrXnRXQFlNhfUKyVvdN7qK1l5OH++LM2iAGRT0YTtgy+DFzRS4j
 dIZJsoY61Sw79NBRi4bWj4EtuPH/98XzUq1c5i1KRFQiTAFBkYIkMx6IUj8xbZrRHPIo
 IrsyIceEz4hrqHAq3MXspIN9Ct9/e19Vlh4yXtOrWvFlojh8+KdI0oWSGdbNykIVqCKW
 00sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :in-reply-to:references:user-agent:content-transfer-encoding;
 bh=pU0lXL5v2+TfEcbDBaFqBB4HEseMI0PfB9qV53kie2U=;
 b=IzbxVijqbjHlhcj9gQguZQhM/ccE27bqbiHFj5veUJ6TIC6whcXikSpNKVVHIkyXdS
 dv7c4i6w6ozVRsmkE2HbqtW03DCT8inLD6/ccmgUVAXMR51RpR/5Of2hpriToM32/kiP
 5yZt/0avkC+5HLMuIroQskDF5uoFanRQsyy5H/x3aNvXSxs4GDIp4Z2Qgn7XU1+NHUls
 JXkwa2yDWrJ2UIJsvAU1lITHlbQXySrmjueBa4z9a7Z2Xs9nOce71wWwRCoAWGVgXRcY
 +PlR6hgDdqA5VTGW2g0pB175XComY8EUjxmtI9N8y6nOJheDxus9iTOiQqoQf+KMb+d7
 kaPQ==
X-Gm-Message-State: APjAAAUOj6dsr5xNCzuymMvJQ2SFNw4IJJaBz7H/JqNkzdGS8Y81rf97
 urKEWzGb1Zmw3EuHBOM2J4s=
X-Google-Smtp-Source: APXvYqwqrwEIaF4GWhDndW+OvoIvxiahrwYyryDBG/0B/AEPySBTSKs1IX5f0yXf9wv+KitoR9I30A==
X-Received: by 2002:a7b:c453:: with SMTP id l19mr27357429wmi.106.1566908183390; 
 Tue, 27 Aug 2019 05:16:23 -0700 (PDT)
Received: from localhost ([92.59.185.54])
 by smtp.gmail.com with ESMTPSA id o25sm1993846wmc.36.2019.08.27.05.16.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 05:16:22 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: dwc3: Add shutdown to
 =?iso-8859-1?Q?platform=5Fdriver?=
Date: Tue, 27 Aug 2019 14:16:20 +0200
MIME-Version: 1.0
Message-ID: <645526b8-bfed-4cc6-9500-1843c5fe0da9@gmail.com>
In-Reply-To: <87v9uix1sv.fsf@gmail.com>
References: <4d18d4f7-a00e-bd60-6361-51054eba3bca@arm.com>
 <20190817174140.6394-1-vicencb@gmail.com>
 <8d48017a-64c5-4b25-8d85-113ffcf502c9@gmail.com> <87v9uix1sv.fsf@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_051624_902047_A5F35BAB 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vicencb[at]gmail.com)
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
Cc: Matthias Brugger <mbrugger@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 MarcZyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-usb@vger.kernel.org, Will Deacon <will.deacon@arm.com>,
 linux-rockchip@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlc2RheSwgQXVndXN0IDI3LCAyMDE5IDE6NTM6MDQgUE0gQ0VTVCwgRmVsaXBlIEJhbGJp
IHdyb3RlOgo+IEhpLAo+Cj4gVmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPiB3cml0
ZXM6Cj4+IE9uIFNhdHVyZGF5LCBBdWd1c3QgMTcsIDIwMTkgNzo0MTo0MCBQTSBDRVNULCBWaWNl
bnRlIEJlcmdhcyB3cm90ZToKPj4+IE90aGVyd2lzZSB0aGUgZGV2aWNlIGtlZXBzIHdyaXRpbmcg
dG8gbWVtb3J5IGFmdGVyIGtleGVjIGFuZCBkaXN0dXJicwo+Pj4gdGhlIG5leHQga2VybmVsLgou
Li4KPgo+IHdoeSBkb24ndCB5b3UganVzdCBoYXZlIHNodXRkb3duIHVzZSB0aGUgc2FtZSBleGFj
dCBmdW5jdGlvbiBhcyByZW1vdmU/Cj4gRnJhbmtseSwgdGhvdWdoLCBJIHN0aWxsIGRvbid0IGZ1
bGx5IHVuZGVyc3RhbmQgd2hhdCdzIGdvaW5nIHdyb25nCj4gaGVyZS4gV2h5IGlzIHRoZSBkZXZp
Y2Ugc3RpbGwgYWxpdmUgZHVyaW5nIGtleGVjPwo+Cj4gY2hlZXJzCgpIaSBGZWxpcGUsCnRoZSBy
ZW1vdmUgYW5kIHNodXRkb3duIGZ1bmN0aW9ucyBoYXZlIGRpZmZlcmVudCBwcm90b3R5cGVzLCBz
bwpzaHV0ZG93biBpcyB3cmFwcGluZyByZW1vdmUuCldvdWxkIGl0IGJlIHByZWZlcmFibGUgdG8g
Y2FzdCByZW1vdmUgYXMgc2h1dGRvd24/CgpUaGUgaXNzdWUgd2l0aCBrZXhlYyBpcyB0aGF0IHRo
ZSBkZXZpY2UgaXMgYmVpbmcgdXNlZCBkdXJpbmcgdGhlIGxpdmV0aW1lCm9mIHRoZSBmaXJzdCBr
ZXJuZWwuIFdoZW4gdGhlIGZpcnN0IGtlcm5lbCBleGVjdXRlcyBrZXhlYyBpdCBjYWxscyB0aGUK
c2h1dGRvd24gZnVuY3Rpb24gb2YgZHJpdmVycyAoaW5zdGVhZCBvZiByZW1vdmUpLiBCZWNhdXNl
IG9mIHRoaXMgdGhlIGR3YzMKZGV2aWNlIGtlZXBzIGRvaW5nIHRoaW5ncyBsaWtlIERNQS4KV2hp
bGUgdGhlIHNlY29uZCBrZXJuZWwgaXMgdGFraW5nIG92ZXIsIGl0IGdldHMgaXRzIG1lbW9yeSBj
b3JydXB0ZWQgd2l0aApzdWNoIERNQSBhY2Nlc3NlcyBmcm9tIHRoZSBkZXZpY2UuIFdoZW4gdGhl
IHNlY29uZCBrZXJuZWwgcmVhY2hlcyB0aGUgcG9pbnQKb2YgdGFraW5nIG92ZXIgdGhlIGR3YzMg
ZGV2aWNlLCByZS1pbml0aWFsaXplcyBpdCwgYnV0IGl0IGlzIGFscmVhZHkgdG9vCmxhdGUuIFN0
aWxsIHdvcnNlLCBpZiB0aGUgc2Vjb25kIGtlcm5lbCBkaWQgbm90IGhhdmUgdGhlIGR3YzMgZHJp
dmVyLCBpdAp3b3VsZCBnZXQgZW5kbGVzcyBtZW1vcnkgY29ycnVwdGlvbnMuCkFsbCBpbiBhbGws
IGRldmljZXMgdGhhdCBjYW4gZG8gRE1BIG5lZWQgdG8gc3RvcCBkb2luZyBpdCBvbiBzaHV0ZG93
bi4KClJlZ2FyZHMsCiAgVmljZW7Dpy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
