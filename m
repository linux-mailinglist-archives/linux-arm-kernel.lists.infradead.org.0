Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AA0180575
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:50:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L4uYUalvT4nNq13nT+vMzo7JpRI83TbW2njhQrCLK3w=; b=PHlC4F+7ojazY1
	6FKoCPRJFpn5kErmuHnCBmYZnAdHovEhsYwSUnfnhE01/xs1UucK/Yz8tPsS7IfmYOoVO8gcFIHKm
	cUXPRKHq48qf0i/db5QSAAsba8DFpZ08eBgemXodK6H3d4MURI4x9iiIYj2y9X1/K2JzujFUg3icy
	ZF0eiQEZsvP2URixWoQ1h22oArtFCTTxHPLvi8UoiDzB4x395ZFBc3vsFsDF3aa+pCljIebc/4L6d
	0m0ByQMGDajDSMzt39PjLp7KAORmQ0JXdHZH9GtwRJYTqK736E6aWxSoAL8XJsdJwaPfPhwnpq/db
	bOROXJtPUGG4NdKjxWuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBj1G-00021w-M4; Tue, 10 Mar 2020 17:50:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBj19-00021T-9F
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:50:12 +0000
Received: by mail-lf1-x144.google.com with SMTP id l7so2632543lfe.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=goAJpXnujj5+7IIzD+wIBEHPOokKFfYUjpyJQHVTm40=;
 b=QVJKIqehKcu24dwMaIGjeKR3UcVe2tBBwUWG9c7Q39xSfZwynDqZCcNrt0YCQL5nDF
 2w5fBlb7VU4jM2EChm9DqJCxrThJiyV5UVpTqBDE7FbrrDNBVzkyUickKywYgYfM5rYK
 EkEqPaz3HzhQo9hNond4t6WQ77eirGLRfVoEuNUIp05k1gYpwPcOweGxUNwR0Mz0Y/vr
 TUUf5cdypFPO5CRchV54kityiuo13nzdJ5v5KBoRJrgdTo1m9DxriKpfmPYLf9zxi+07
 PO9vynNMhGomYSsEYrEnwVlSDLuFrXYQzbtWVK505JXmQXXXQR3M0D47nvImMzwNETv5
 sg2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=goAJpXnujj5+7IIzD+wIBEHPOokKFfYUjpyJQHVTm40=;
 b=VDRK+j6dbS+vDzdkCClBVl+Tm9C1la7ldpxfjLzacGfewj3z2Q93SRxcQNIkCANorm
 Zu18Y4XR/d2VqBfn4vQKvJ2TQkPfXdihs54UfVy10MAD36vJha3MmSPk4FdI6RFUG1c0
 2yQyiNeme5NOC2gGe+ds8Ii1J2b6sreW+OhneHHKbWojlxn+kx8E+VbDNOLirkXuDw1H
 6m5LkyaK3Eh2c4q4oa8QTVmOsecND56gGJBfzJxt6EKKavPfPcrSH8/Yp+m8Pqe2AiCy
 Xh6ijRswwJEzIQd1iIx5Qs8j2U3i9PBzbZnxNTJZ2nUMfVeM5NyZ8clOT4dcaJ/9JtPG
 3l/A==
X-Gm-Message-State: ANhLgQ2xZLj1Ib0iwqweQAtXT4CeP8+g16JjSICdAuoZmut7Kf5DWp4m
 qjDqB1/reIPkY9vZ9zf9urtnQKTq
X-Google-Smtp-Source: ADFU+vsz/i/6+z2fGDLGQ6vPCi+tDh/3r1l13kXnFFBiFEwDokoqykXzX3KvIfu9fJ0gV/juMevAlQ==
X-Received: by 2002:ac2:50c7:: with SMTP id h7mr13554346lfm.101.1583862609134; 
 Tue, 10 Mar 2020 10:50:09 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id r23sm7375579lfe.53.2020.03.10.10.50.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 10:50:08 -0700 (PDT)
Subject: Re: [PATCH v5 1/8] clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-2-thierry.reding@gmail.com>
 <9b343fd1-15df-409a-390f-e30fa6bbbfe7@gmail.com>
 <20200310170508.GA3079591@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <f613a047-bf3f-3fb5-4034-ce435bb6cd6d@gmail.com>
Date: Tue, 10 Mar 2020 20:50:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310170508.GA3079591@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_105011_356776_0EB6F10F 
X-CRM114-Status: GOOD (  16.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDMuMjAyMCAyMDowNSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBPbiBUdWUsIE1h
ciAxMCwgMjAyMCBhdCAwNzoxOTo1OVBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+
IDEwLjAzLjIwMjAgMTg6MTksIFRoaWVycnkgUmVkaW5nINC/0LjRiNC10YI6Cj4+PiBGcm9tOiBK
b3NlcGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPj4+Cj4+PiBJbnRyb2R1Y2UgdGhlIGxvdyBq
aXR0ZXIgcGF0aCBvZiBQTExQIGFuZCBQTExNQiB3aGljaCBjYW4gYmUgdXNlZCBhcyBFTUMKPj4+
IGNsb2NrIHNvdXJjZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKb3NlcGggTG8gPGpvc2VwaGxA
bnZpZGlhLmNvbT4KPj4+IFNpZ25lZC1vZmYtYnk6IFRoaWVycnkgUmVkaW5nIDx0cmVkaW5nQG52
aWRpYS5jb20+Cj4+PiAtLS0KPj4+ICBkcml2ZXJzL2Nsay90ZWdyYS9jbGstdGVncmEyMTAuYyAg
ICAgICAgIHwgMTEgKysrKysrKysrKysKPj4+ICBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3Rl
Z3JhMjEwLWNhci5oIHwgIDQgKystLQo+Pj4gIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvdGVn
cmEvY2xrLXRlZ3JhMjEwLmMgYi9kcml2ZXJzL2Nsay90ZWdyYS9jbGstdGVncmEyMTAuYwo+Pj4g
aW5kZXggNDVkNTRlYWQzMGJjLi5mOTk2NDdiNGE3MWYgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2Nsay90ZWdyYS9jbGstdGVncmEyMTAuYwo+Pj4gKysrIGIvZHJpdmVycy9jbGsvdGVncmEvY2xr
LXRlZ3JhMjEwLmMKPj4+IEBAIC0zMTYxLDYgKzMxNjEsMTcgQEAgc3RhdGljIHZvaWQgX19pbml0
IHRlZ3JhMjEwX3BsbF9pbml0KHZvaWQgX19pb21lbSAqY2xrX2Jhc2UsCj4+PiAgCWNsa19yZWdp
c3Rlcl9jbGtkZXYoY2xrLCAicGxsX21fdWQiLCBOVUxMKTsKPj4+ICAJY2xrc1tURUdSQTIxMF9D
TEtfUExMX01fVURdID0gY2xrOwo+Pj4gIAo+Pj4gKwkvKiBQTExNQl9VRCAqLwo+Pj4gKwljbGsg
PSBjbGtfcmVnaXN0ZXJfZml4ZWRfZmFjdG9yKE5VTEwsICJwbGxfbWJfdWQiLCAicGxsX21iIiwK
Pj4+ICsJCQkJCUNMS19TRVRfUkFURV9QQVJFTlQsIDEsIDEpOwo+Pj4gKwljbGtfcmVnaXN0ZXJf
Y2xrZGV2KGNsaywgInBsbF9tYl91ZCIsIE5VTEwpOwo+Pj4gKwljbGtzW1RFR1JBMjEwX0NMS19Q
TExfTUJfVURdID0gY2xrOwo+Pj4gKwo+Pj4gKwkvKiBQTExQX1VEICovCj4+PiArCWNsayA9IGNs
a19yZWdpc3Rlcl9maXhlZF9mYWN0b3IoTlVMTCwgInBsbF9wX3VkIiwgInBsbF9wIiwKPj4+ICsJ
CQkJCTAsIDEsIDEpOwo+Pj4gKwljbGtzW1RFR1JBMjEwX0NMS19QTExfUF9VRF0gPSBjbGs7Cj4+
Cj4+IElzbid0IGl0IHBvc3NpYmxlIHRvIGF1dG8tZW5hYmxlIHRoZSBsb3ctaml0dGVyIGJpdCB3
aGVuIG5lY2Vzc2FyeQo+PiBkdXJpbmcgb2YgdGhlIHJhdGUtY2hhbmdlIGJhc2VkIG9uIGEgZ2l2
ZW4gY2xvY2stcmF0ZT8KPiAKPiBJIGRvbid0IHRoaW5rIHNvLiBUaGVzZSBuZXcgY2xvY2tzIChw
bGxfbWJfdWQgYW5kIHBsbF9wX3VkKSBhcmUgcGFyZW50cwo+IGZvciB0aGUgZW1jIGNsb2NrLCBz
byB0aGV5IGFyZSBuZWVkZWQgdG8gcHJvcGVybHkgcmVmbGVjdCB0aGUgcG9zaXRpb24KPiBvZiB0
aGUgZW1jIGNsb2NrIGluIHRoZSBjbG9jayB0cmVlLgoKT2theSwgZXZlbiBpZiBpdCdzIHBvc3Np
YmxlIHRvIGRvLCBJIGd1ZXNzIHRoYXQgd29uJ3QgYmUgdmVyeSBjb21wYXRpYmxlCndpdGggdGhl
IGZpcm13YXJlLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
