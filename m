Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED94B8491E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 12:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UEsE2iMs6r0p/OuZ2Ow3MLIO6QpuT3NDCvRJr8Mfh60=; b=A7qRxyjK9B845D3sCobOk0/A/
	Q04Ny33Ar1r4G3OHfuKTT+h2vUMbUMt7a23K4f+8xO4lgfgCgZG1ZsHJcygDvIHJOoq8ukK9lNzGN
	TRjFSzJq7kp7G+y/9Y+mpX7LxKI/RZJML1FKQd8oZJ2Q1mDR8BO3Kk4aqARcWO5S21HVFyVMtBE5y
	nAUqk/P11+BmqBrpgjVR81+oSjP1GHUkyLN62YlObU5Cu7rCImJ60mJUvbrK/ZiWqKc4XhYvDXDzG
	tM8Y8AcWts/WblCKkTUwW5oGN9fa2G0HdxGh+145vlasE1Y3FFH2qxHuQFdiL30WHzVbMxo4JBAiH
	l4cxInpeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIrp-0002Ah-2X; Wed, 07 Aug 2019 10:08:25 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIri-00029r-FO
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 10:08:19 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 6974860E3E; Wed,  7 Aug 2019 10:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565172497;
 bh=gU6ZPaKh9dAzkbWbOv9DhaSWpALlsDO/188gFBItDO0=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=CBZWenHGnnA0tPLWexyBodtJPUj9QVzi8QntloAs3UqZAh9hgmFeMukY8ogtotNN5
 lWeIYzKje2yALMAJdtqvdVqwbCXe3U+vjuS2oofH937YBWGEFw1CO1IXsQ9m/x3tl4
 GAtbO64nX6MRsZr33k4r22duNhE2gyO2+NM17Kfk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from [10.79.136.27]
 (blr-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id E6F5760E42;
 Wed,  7 Aug 2019 10:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1565172496;
 bh=gU6ZPaKh9dAzkbWbOv9DhaSWpALlsDO/188gFBItDO0=;
 h=Subject:From:To:Cc:References:Date:In-Reply-To:From;
 b=Te+Ko0OfuQkyQ7e5aV31TzE9Y4VNHKu8pvkNxHEbsO2ZwpFVcP9nuBZQdYDqerJlT
 5uJSzVmaXWgIrCtLJOURITHj/loUV4W+ChytdhhAgrHDy1COrdwoP3B6I43WTiFz83
 NcZ9075LPeIg0lx0H5IJKwx2g4nT7WmVaIkk0xv0=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org E6F5760E42
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
Subject: Re: [PATCHv9 1/3] arm64: dts: qcom: sdm845: Add Coresight support
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Leo Yan <leo.yan@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Andy Gross <agross@kernel.org>, David Brown <david.brown@linaro.org>,
 Mark Rutland <mark.rutland@arm.com>
References: <cover.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <be6d77eb6c7498df09d04e0a369d4d65b38f4b8e.1564550873.git.saiprakash.ranjan@codeaurora.org>
 <b50c06d4-8298-7abe-4442-2aff336509f5@codeaurora.org>
Message-ID: <b5cb08ef-ca2f-e852-f234-d0f693b58596@codeaurora.org>
Date: Wed, 7 Aug 2019 15:38:10 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b50c06d4-8298-7abe-4442-2aff336509f5@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_030818_556801_9B69594F 
X-CRM114-Status: GOOD (  17.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
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
Cc: Rajendra Nayak <rnayak@codeaurora.org>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Sibi Sankar <sibis@codeaurora.org>,
 Vivek Gautam <vivek.gautam@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpLAoKT24gNy8zMS8yMDE5IDExOjM1IEFNLCBTYWkgUHJha2FzaCBSYW5qYW4gd3Jv
dGU6Cj4gSGkgU3V6dWtpLAo+IAo+IE9uIDcvMzEvMjAxOSAxMToyOCBBTSwgU2FpIFByYWthc2gg
UmFuamFuIHdyb3RlOgo+PiBBZGQgY29yZXNpZ2h0IGNvbXBvbmVudHMgZm91bmQgb24gUXVhbGNv
bW0gU0RNODQ1IFNvQy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2FpIFByYWthc2ggUmFuamFuIDxz
YWlwcmFrYXNoLnJhbmphbkBjb2RlYXVyb3JhLm9yZz4KPj4gUmV2aWV3ZWQtYnk6IE1hdGhpZXUg
UG9pcmllciA8bWF0aGlldS5wb2lyaWVyQGxpbmFyby5vcmc+Cj4+IEFja2VkLWJ5OiBTdXp1a2kg
SyBQb3Vsb3NlIDxzdXp1a2kucG91bG9zZUBhcm0uY29tPgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02
NC9ib290L2R0cy9xY29tL3NkbTg0NS5kdHNpIHwgNDUxICsrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNDUxIGluc2VydGlvbnMoKykKPiAKPiBJIGhhdmUg
dGVzdGVkIGNvcmVzaWdodCB3aXRoIHNjYXR0ZXIgZ2F0aGVyIG9uIFNETTg0NSBNVFAgYW5kIE1T
TTg5OTYKPiBiYXNlZCBEQjgyMGMgYm9hcmQgYW5kIHBvc3RlZCB0aGUgcmVzdWx0cyBpbgo+IAo+
IC0gaHR0cHM6Ly9naXRodWIuY29tL3NhaXByYWthc2gtcmFuamFuL2NvcmVzaWdodC10ZXN0LXJl
c3VsdHMKPiAKPiBQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IG5lZWQgc29tZSBhZGRpdGlvbmFs
IHRlc3RpbmcgZG9uZS4KPiAKPiBJIGNvdWxkIG5vdCBwZXJmb3JtIGNvcmVzaWdodCB0ZXN0cyBv
biBNU004OTk4IE1UUCB3aXRoIGxhdGVzdCBidWlsZAo+IGFzIGl0IHdhcyByZXN1bHRpbmcgaW4g
Y3Jhc2ggZHVlIHRvIHNvbWUgQUhCIHRpbWVvdXRzLiBUaGlzIHdhcyBub3QKPiBkdWUgdG8gc2Nh
dHRlci1nYXRoZXIgYW5kIG1vc3RseSBsaWtlbHkgdGhlIHByb2JsZW0gd2l0aCB0aGUgYnVpbGQu
Cj4gTWF5YmUgd2UgY2FuIGtlZXAgbXNtODk5OC1jb3Jlc2lnaHQgb24gaG9sZD8KPiAKPiBCVFcs
IHBhdGNoZXMgYXJlIGJhc2VkIG9uIGxpbnV4LW5leHQuCj4gCgpBbnkgbW9yZSB0ZXN0cyB5b3Ug
d291bGQgd2FudCBtZSB0byBydW4/CgotU2FpCgotLSAKUVVBTENPTU0gSU5ESUEsIG9uIGJlaGFs
ZiBvZiBRdWFsY29tbSBJbm5vdmF0aW9uIENlbnRlciwgSW5jLiBpcyBhIG1lbWJlcgpvZiBDb2Rl
IEF1cm9yYSBGb3J1bSwgaG9zdGVkIGJ5IFRoZSBMaW51eCBGb3VuZGF0aW9uCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
