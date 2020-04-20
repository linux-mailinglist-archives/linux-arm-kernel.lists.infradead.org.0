Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4691B06FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VeaS0AsVXkO+ZTxxNMcHnh+4n0iEwvoOv0fiboZWDXQ=; b=mkPHWUXDRhYATThE/jPvuV6f8
	z8PKoLha4wUF8/n97T03SqlG1Lr7zSdpbqUdhk34CkELQ0Mhi6aOFClikMApA+J5FecN7WqEuHLSF
	1qs9lq34XZEFevTApTRg16eFcAz9XIKCZPf/zi7JIOQTtfln/wYfxKakmAgtPr/Y/x9y15ZUiHhB4
	pG8Ups5dTXCxVcCqK4qUSIS4sjgq7K3Z01crnUIaKFjV/YXILuSyDUELMSfqzPwB1zwZiZ/H2VnCR
	CKXTUvrvmR084EQU/eHuQV0uTbnzTMtsFEegF9fWN6OJ3j8DaznNvhHhjFiYDaFK0vczd/hRIIMU1
	zghy70+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQUCw-0008Di-NS; Mon, 20 Apr 2020 11:03:22 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQUCk-0008Br-A6
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 11:03:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 185D62A0C63
Subject: Re: [RFC v3 1/2] thermal: core: Let thermal zone device's mode be
 stored in its struct
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
References: <9ac3b37a-8746-b8ee-70e1-9c876830ac83@linaro.org>
 <20200417162020.19980-1-andrzej.p@collabora.com>
 <CGME20200417162037eucas1p11663f116fd9844d38c0b5d4d7ebe9f1c@eucas1p1.samsung.com>
 <20200417162020.19980-2-andrzej.p@collabora.com>
 <4b97e46a-e7ef-ee22-227e-d35ebef458b0@samsung.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <4cda3e11-7bea-8445-cd51-4b25dcafc741@collabora.com>
Date: Mon, 20 Apr 2020 13:03:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <4b97e46a-e7ef-ee22-227e-d35ebef458b0@samsung.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_040310_475622_F0AC646E 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, linux-pm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>, Ido Schimmel <idosch@mellanox.com>,
 Jiri Pirko <jiri@mellanox.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>,
 Shawn Guo <shawnguo@kernel.org>, Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, netdev@vger.kernel.org,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQmFybG9taWVqLAoKVGhhbmtzIGZvciBsb29raW5nIGludG8gdGhlIHNlcmllcy4KCkBEYW5p
ZWwgY2FuIHlvdSBzZWUgYmVsb3c/CgpXIGRuaXUgMTkuMDQuMjAyMCBvwqAxMzozOCwgQmFydGxv
bWllaiBab2xuaWVya2lld2ljeiBwaXN6ZToKPiAKPiBIaSBBbmRyemVqLAo+IAo+IE9uIDQvMTcv
MjAgNjoyMCBQTSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+PiBUaGVybWFsIHpvbmUg
ZGV2aWNlcycgbW9kZSBpcyBzdG9yZWQgaW4gaW5kaXZpZHVhbCBkcml2ZXJzLiBUaGlzIHBhdGNo
Cj4+IGNoYW5nZXMgaXQgc28gdGhhdCBtb2RlIGlzIHN0b3JlZCBpbiBzdHJ1Y3QgdGhlcm1hbF96
b25lX2RldmljZSBpbnN0ZWFkLgo+Pgo+PiBBcyBhIHJlc3VsdCBhbGwgZHJpdmVyLXNwZWNpZmlj
IHZhcmlhYmxlcyBzdG9yaW5nIHRoZSBtb2RlIGFyZSBub3QgbmVlZGVkCj4+IGFuZCBhcmUgcmVt
b3ZlZC4gQ29uc2VxdWVudGx5LCB0aGUgZ2V0X21vZGUoKSBpbXBsZW1lbnRhdGlvbnMgaGF2ZSBu
b3RoaW5nCj4+IHRvIG9wZXJhdGUgb24gYW5kIG5lZWQgdG8gYmUgcmVtb3ZlZCwgdG9vLgo+Pgo+
PiBTb21lIHRoZXJtYWwgZnJhbWV3b3JrIHNwZWNpZmljIGZ1bmN0aW9ucyBhcmUgaW50cm9kdWNl
ZDoKPj4KPj4gdGhlcm1hbF96b25lX2RldmljZV9nZXRfbW9kZSgpCj4+IHRoZXJtYWxfem9uZV9k
ZXZpY2Vfc2V0X21vZGUoKQo+PiB0aGVybWFsX3pvbmVfZGV2aWNlX2VuYWJsZSgpCj4+IHRoZXJt
YWxfem9uZV9kZXZpY2VfZGlzYWJsZSgpCj4+Cj4+IHRoZXJtYWxfem9uZV9kZXZpY2VfZ2V0X21v
ZGUoKSBhbmQgaXRzICJzZXQiIGNvdW50ZXJwYXJ0IHRha2UgdHpkJ3MgbG9jawo+PiBhbmQgdGhl
ICJzZXQiIGNhbGxzIGRyaXZlcidzIHNldF9tb2RlKCkgaWYgcHJvdmlkZWQsIHNvIHRoZSBsYXR0
ZXIgbXVzdAo+PiBub3QgdGFrZSB0aGlzIGxvY2sgYWdhaW4uIEF0IHRoZSBlbmQgb2YgdGhlICJz
ZXQiCj4+IHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlKCkgaXMgY2FsbGVkIHNvIGRyaXZlcnMg
ZG9uJ3QgbmVlZCB0byByZXBlYXQgdGhpcwo+PiBpbnZvY2F0aW9uIGluIHRoZWlyIHNwZWNpZmlj
IHNldF9tb2RlKCkgaW1wbGVtZW50YXRpb25zLgo+Pgo+PiBUaGUgc2NvcGUgb2YgdGhlIGFib3Zl
IDQgZnVuY3Rpb25zIGlzIHB1cnBvc2VkbHkgbGltaXRlZCB0byB0aGUgdGhlcm1hbAo+PiBmcmFt
ZXdvcmsgYW5kIGRyaXZlcnMgYXJlIG5vdCBzdXBwb3NlZCB0byBjYWxsIHRoZW0uIFRoaXMgZW5j
YXBzdWxhdGlvbgo+IAo+IFRoaXMgc2hvdWxkIGJlIHRydWUgb25seSBmb3IgdGhlcm1hbF96b25l
X2RldmljZV97Z2V0LHNldH1fbW9kZSgpLgo+IAo+IHRoZXJtYWxfem9uZV9kZXZpY2Vfe2VuLGRp
c31hYmxlKCkgc2hvdWxkIGJlIGF2YWlsYWJsZSBmb3IgZGV2aWNlIGRyaXZlcnM6Cj4gCj4gKiBv
Zi90aGVybWFsIGRldmljZSBkcml2ZXJzIG5lZWQgdG8gZW5hYmxlIHRoZXJtYWwgZGV2aWNlIGl0
c2VsZgo+ICAgIChwbGVhc2UgcmVmZXIgdG8gbXkgcGF0Y2hzZXQgZm9yIGRldGFpbHMpCj4gCj4g
KiBkZXZpY2UgZHJpdmVycyBuZWVkIHRvIGNhbGwgdGhlbSBvbiAtPnN1c3BlbmQgYW5kIC0+cmVz
dW1lIG9wZXJhdGlvbnMKPiAKCkBEYW5pZWw6CgpIb3cgZG9lcyB0aGlzIGNvbXBhcmUgdG8KCiJK
dXN0OgoKdGhlcm1hbF96b25lX2RldmljZV9nZXRfbW9kZSgpCnRoZXJtYWxfem9uZV9kZXZpY2Vf
c2V0X21vZGUoKQp0aGVybWFsX3pvbmVfZGV2aWNlX2Rpc2FibGUoKQp0aGVybWFsX3pvbmVfZGV2
aWNlX2VuYWJsZSgpCgpBbmQgYWxsIG9mIHRoZW0gaW4gZHJpdmVycy90aGVybWFsL3RoZXJtYWxf
Y29yZS5oIi4gRGlkIEkgdW5kZXJzdGFuZAp5b3UgY29ycmVjdGx5PwoKQW5kcnplagoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
