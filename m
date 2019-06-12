Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7BE042438
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=le2YUXtNDIeIL6Jf4XslY5l1Qvka/EmwhYVA9SjbKs8=; b=hbITUBzpL0pWWE3euFChdfxPs
	H5byeIsMWxP9yxnZ4KgChULvqsnvHjpcTlZNQhqrXy6/lh4DA+OUdPWhrswSjrxf1PHeQlUOjS0NL
	c8cehH9vYmZC2SDdUE8JIsPn/r6phOVmT+UWecpF/KBzjyFOJ4ST0HaOUNdCZplacmO8mcMomFo5H
	oPyvM2bhjy6OcTaamCVCCdV1f3Ot2/ypbDV7OvEzh3Y0EsSO8e1/z8Rflvya8c81+3Ib+23nSPWSz
	rSBFqGgIK3/7onOfAaT4pofiPdJVQUdglA5JoQ9CQ7QmPtYL5bmFgR/MwwaAYP/TWFNU5Or+onlMk
	31CaEjjHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1e3-0006NZ-J0; Wed, 12 Jun 2019 11:42:23 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1dp-0006Jq-8m
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:42:10 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5CBg7Y9056114;
 Wed, 12 Jun 2019 06:42:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560339727;
 bh=X9GWetnFoc3lyVeRgvGF28lI3oaQo9eTrBsWyExDUsY=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=JOwPNAVnxPF8akyfccJUGpSBZo4oNldJl+MyiUHAT5DGSW/s9vcEhctlJ9WhTQPW5
 TTQljSJOcLcJ17Dw0D6E1MKSuICjjmW/1EzApRD9jSwR3dcPwuGKGLv4HYZzFF2fNN
 HjHF9IEG795+FbYjvIde6Jkt8Cwpa98RqlZu6Ius=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5CBg63t037191
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Jun 2019 06:42:07 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 12
 Jun 2019 06:42:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 12 Jun 2019 06:42:06 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5CBg4hW126419;
 Wed, 12 Jun 2019 06:42:05 -0500
Subject: Re: [GIT PULL] clk: keystone: changes for 5.3
From: Tero Kristo <t-kristo@ti.com>
To: <santosh.shilimkar@oracle.com>, linux-clk <linux-clk@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Santosh Shilimkar <ssantosh@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
References: <3bd8aa21-60a5-f36a-b86f-425ce4f0163e@ti.com>
 <fe1da566-d8f4-8f53-cad7-d3b2a6e2c638@oracle.com>
 <885237d4-c7ce-3d08-472b-55cc12561e47@ti.com>
Message-ID: <220b6f41-9eb9-0b7b-4113-d93ec4b5aed1@ti.com>
Date: Wed, 12 Jun 2019 14:42:03 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <885237d4-c7ce-3d08-472b-55cc12561e47@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044209_392832_5E3052FD 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTEvMDYvMjAxOSAxMDoyNCwgVGVybyBLcmlzdG8gd3JvdGU6Cj4gT24gMTAvMDYvMjAxOSAy
MDoxNywgc2FudG9zaC5zaGlsaW1rYXJAb3JhY2xlLmNvbSB3cm90ZToKPj4gT24gNi8xMC8xOSA1
OjEzIEFNLCBUZXJvIEtyaXN0byB3cm90ZToKPj4+IEhpIFN0ZXBoZW4sIE1pa2UsIFNhbnRvc2gs
Cj4+Pgo+Pj4gSGVyZSdzIGEgcHVsbCByZXF1ZXN0IGZvciB0aGUgY2xvY2sgY2hhbmdlcyBmb3Ig
a2V5c3RvbmUgU29DIGZvciA1LjMuIAo+Pj4gVGhlIHBhdGNoZXMgd2VyZSBhY2tlZCBieSBTYW50
b3NoLCBzbyBJIHRvb2sgbGliZXJ0eSB0byBjcmVhdGUgYSAKPj4+IHB1bGwtcmVxdWVzdCBmb3Ig
dGhlc2UgYWxzby4gSSBzbmlwcGVkIHBhdGNoICM1IG91dCBvZiB0aGUgc2VyaWVzIChpdCAKPj4+
IGlzIGFnYWluc3QgZHJpdmVycy9maXJtd2FyZSkgYW5kIGFtIHBsYW5uaW5nIHRvIHNlbmQgYSBz
ZXBhcmF0ZSAKPj4+IHB1bGwtcmVxdWVzdCBmb3IgdGhpcywgb3IgYWx0ZXJuYXRpdmVseSBhZ3Jl
ZSB3aXRoIFNhbnRvc2ggaG93IHRvIAo+Pj4gaGFuZGxlIGl0Lgo+Pj4KPj4gWy4uLl0KPj4+Cj4+
PiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IAo+Pj4gYTE4ODMzOWNhNWEzOTZh
Y2M1ODhlNTg1MWVkN2UxOWY2NmIwZWJkOToKPj4+Cj4+PiDCoMKgIExpbnV4IDUuMi1yYzEgKDIw
MTktMDUtMTkgMTU6NDc6MDkgLTA3MDApCj4+Pgo+Pj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgZ2l0
IHJlcG9zaXRvcnkgYXQ6Cj4+Pgo+Pj4gwqDCoCBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQva3Jpc3RvL2xpbnV4IAo+Pj4gdGFncy9rZXlzdG9uZS1jbGstZm9y
LTUuMwo+Pj4KPj4gQW0gYXNzdW1pbmcgTWlrZS9TdGVwaGVuIHdpbGwgcGljayB0aGlzIHVwLgo+
IAo+IE15IGVtYWlsIGNsaWVudCBhY2NpZGVudGFsbHkgcGlja2VkIHVwIG9sZCBlbWFpbCBmb3Ig
U3RlcGhlbiwgZml4ZWQgbm93Lgo+IAo+IFN0ZXBoZW4sIGRvIHlvdSB3YW50IG1lIHRvIHJlLXNl
bmQgdGhpcz8KCkFjdHVhbGx5LCBwbGVhc2UgaWdub3JlIHRoaXMgcHVsbC1yZXEuLi4gSSB3aWxs
IHNlbmQgYW4gdXBkYXRlZCBvbmUgCndoaWNoIGNvbnRhaW5zIHRoZSBmaXJtd2FyZSBzaWRlIGNo
YW5nZSBhbHNvLiBUaGlzIHNlZW1zIGxpa2UgYmVzdCAKYXBwbGllZCB2aWEgY2xvY2sgdHJlZSB0
byBhdm9pZCBhbnkgbWVyZ2UgLyBjcm9zcyBkZXBlbmRlbmN5IGlzc3VlcyAKYmV0d2VlbiB0aGUg
dHdvLgoKLVRlcm8KLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0
dSAyMiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtv
dGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
