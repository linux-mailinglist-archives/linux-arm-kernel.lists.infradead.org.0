Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F7D1EA0E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s98o9LZOKEPJvQX3TJ8sWNVMYX6bH130wgJdlU5JHCo=; b=W7uLAwfY/+1k2I
	/752bHX60tkLnFRZonG4vDP2kOXSjGwHIdBa5rKfjcBSCni84iUXzF4NtatfFxsIJc64Y3qEesGke
	Y2RdwfP+k7Ux/s9AC+p4Rvo9KWeJl4j76kVjn/kUSfcvlrzpBrtFDAjbbVd5PY0zF51lW6YyDoxzf
	gw8or0pV3PD2XgSjDvuqBsTDSK6NxULomJV9UiJO0U4QxMudzAHlfmcZYxzsJLB3g48iUBgjZD7if
	4FxOTdHpJG7LibnKNsIySLPBZKMJYDG9O3U8qn8mybHgXFF8FhWuNYVDdsooBxq7n054muggsIbZq
	KKz7nCOdhOHmQzBIg5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfgdn-0003W3-79; Mon, 01 Jun 2020 09:21:55 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfgdf-0003Vc-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591003306;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IuLK2sSn5CddFiGq7dQ41qvUoboLyFr4AuyNbWpmRVE=;
 b=d3Iz+9xr8PVJKjhPsiEJcBYwq12lnA0l9Tym0WdTifW94abaHXhZq37dbmANpmB58RnvIU
 jb1j7L/knRL5NRvmNrVh1wF6uTnZOYGcNOjvAVez3lxnoVVtVKG7aTdDa5MiZv3eFwiqjA
 nFNH1N/yhXC4WyHDOefD3Nee2aFQ5xs=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-202-ujsbQxRvPa-IjQiOUGtYzg-1; Mon, 01 Jun 2020 05:21:44 -0400
X-MC-Unique: ujsbQxRvPa-IjQiOUGtYzg-1
Received: by mail-wm1-f71.google.com with SMTP id s15so2444730wmc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jun 2020 02:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IuLK2sSn5CddFiGq7dQ41qvUoboLyFr4AuyNbWpmRVE=;
 b=QIYJGs2+bwA8pWn1qywCc2gzOwmxBXYqLsCT+0neKY9JtdvGUJ4WLynOuTokecjQ6d
 fxC723ppS2ux8KzGiSYeBc6/3cvpXNvX+FU/teVtahMSD/qwLEgSBri+SZ4RSSLMgu1w
 41NWGeUi7hY/jLI4nEsWjv37LXd7Z1hbOgZj2ZkA8vNnBxeOC2zixGTlPZ0COrIWREaU
 a7Au76O2ggIrF5Qv7UlBLNv21wve9kfBY96pwQFloB7Gg/gNOzj2xmv7CiEvHqooFo36
 Y13vblafIFnXGhDiL1u5VdbPFf+7SchPAvly8/PCqH4ZswPTixIoBplOkNdwbD/sFslL
 S0Pg==
X-Gm-Message-State: AOAM53272XnioxyFpVYt84T2EEdd2IZYHoNUO2M6RaUGOGIrzRChzgqC
 u/PjbIoWqxHDYMZsUNE6DwPc9kPhBDR+5Obf30JcZbE+7NBJ5KBJeKpQBq/QGI/UYqN4c0XWcmw
 dBr/wtFn+JbMHI2axEC/pqvAswLdKBzy2qxY=
X-Received: by 2002:a1c:9cca:: with SMTP id f193mr20301258wme.71.1591003302914; 
 Mon, 01 Jun 2020 02:21:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwZjBowPYwC+DKgI4BRKZhXw+nZFZK73A3GMy1xVVIrdJTX5qghOe0isbEbZkUkMPrdG2E5KQ==
X-Received: by 2002:a1c:9cca:: with SMTP id f193mr20301235wme.71.1591003302659; 
 Mon, 01 Jun 2020 02:21:42 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:e044:3d2:1991:920c?
 ([2001:b07:6468:f312:e044:3d2:1991:920c])
 by smtp.gmail.com with ESMTPSA id d4sm19487104wre.22.2020.06.01.02.21.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 01 Jun 2020 02:21:42 -0700 (PDT)
Subject: Re: [PATCH RFCv2 9/9] arm64: Support async page fault
To: Marc Zyngier <maz@kernel.org>
References: <20200508032919.52147-1-gshan@redhat.com>
 <20200508032919.52147-10-gshan@redhat.com>
 <81adf013-3de7-23e6-7648-8aec821b033c@redhat.com>
 <a6addc25-29af-3690-8392-efa5e8381e98@redhat.com>
 <8ab64c6a-582b-691d-79ab-21cdc0455cd3@redhat.com>
 <6a4a82a4-af01-98c2-c854-9199f55f7bd3@redhat.com>
 <6965aaf641a23fab64fbe2ceeb790272@kernel.org>
 <d0bfb944-b50a-608a-7dcc-5a409cdc4524@redhat.com>
 <4337cca152df47c93d96e092189a0e36@kernel.org>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <5c72c597-732e-7dbf-d056-665674ec1792@redhat.com>
Date: Mon, 1 Jun 2020 11:21:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <4337cca152df47c93d96e092189a0e36@kernel.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_022147_927296_A5A4A828 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Gavin Shan <gshan@redhat.com>, catalin.marinas@arm.com,
 linux-kernel@vger.kernel.org, shan.gavin@gmail.com, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMzEvMDUvMjAgMTQ6NDQsIE1hcmMgWnluZ2llciB3cm90ZToKPj4KPj4gSXMgdGhlcmUgYW4g
QVJNLWFwcHJvdmVkIHdheSB0byByZXVzZSB0aGUgUzIgZmF1bHQgc3luZHJvbWVzIHRvIGRldGVj
dAo+PiBhc3luYyBwYWdlIGZhdWx0cz8KPiAKPiBJdCB3b3VsZCBtZWFuIGJlaW5nIGFibGUgdG8g
c2V0IGFuIEVTUl9FTDIgcmVnaXN0ZXIgdmFsdWUgaW50byBFU1JfRUwxLAo+IGFuZCB0aGVyZSBp
cyBub3RoaW5nIGluIHRoZSBhcmNoaXRlY3R1cmUgdGhhdCB3b3VsZCBhbGxvdyB0aGF0LAoKSSB1
bmRlcnN0YW5kIHRoYXQgdGhpcyBpcyBub3Qgd2hhdCB5b3Ugd2FudCB0byBkbyBhbmQgSSdtIG5v
dCBwcm9wb3NpbmcKaXQsIGJ1dCBJIHdhbnQgdG8gdW5kZXJzdGFuZCB0aGlzIGJldHRlcjogX2lu
IHByYWN0aWNlXyBkbyBDUFVzIGNoZWNrCmNsb3NlbHkgd2hhdCBpcyB3cml0dGVuIGluIEVTUl9F
TDE/CgpJbiBhbnkgY2FzZSwgdGhlIG9ubHkgd2F5IHRvIGltcGxlbWVudCB0aGlzLCBpdCBzZWVt
cyB0byBtZSwgd291bGQgYmUgYQpjb21wbGV0ZWx5IHBhcmF2aXJ0dWFsaXplZCBleGNlcHRpb24g
dmVjdG9yIHRoYXQgZG9lc24ndCB1c2UgRVNSIGF0IGFsbC4KCk9uIHRoZSBvdGhlciBoYW5kLCBm
b3IgdGhlIHBhZ2UgcmVhZHkgKGludGVycnVwdCkgc2lkZSBhc3NpZ25pbmcgYSBQUEkKc2VlbXMg
Y29tcGxpY2F0ZWQgYnV0IGRvYWJsZS4KClBhb2xvCgo+IHdpdGgKPiB0aGUgZXhjZXB0aW9uIG9m
IG5lc3RlZCB2aXJ0OiBhIFZIRSBndWVzdCBoeXBlcnZpc29yIHJ1bm5pbmcgYXQgRUwxCj4gbXVz
dCBiZSBhYmxlIHRvIG9ic2VydmUgUzIgZmF1bHRzIGZvciBpdHMgb3duIFMyLCBhcyBzeW50aGVz
aXplZCBieQo+IHRoZSBob3N0IGh5cGVydmlzb3IuCgo+IFRoZSB0cm91YmxlIGlzIHRoYXQ6Cj4g
LSB0aGVyZSBpcyBzbyBmYXIgbm8gY29tbWVyY2lhbGx5IGF2YWlsYWJsZSBDUFUgc3VwcG9ydGlu
ZyBOVgo+IC0gZXZlbiBpZiB5b3UgY291bGQgZ2V0IGhvbGQgb2Ygc3VjaCBhIG1hY2hpbmUsIHRo
ZXJlIGlzIG5vCj4gwqAgZ3VhcmFudGVlIHRoYXQgc3VjaCAiRUwyIHN5bmRyb21lIGF0IEVMMSIg
aXMgdmFsaWQgb3V0c2lkZSBvZgo+IMKgIHRoZSBuZXN0ZWQgY29udGV4dAo+IC0gdGhpcyBkb2Vz
bid0IHNvbHZlIHRoZSBpc3N1ZSBmb3Igbm9uLU5WIENQVXMgYW55d2F5CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
