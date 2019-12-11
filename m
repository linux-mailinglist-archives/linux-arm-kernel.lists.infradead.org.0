Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D12611A63F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 09:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qj68USuzyw0JMFaavfclqYuFDd3YzibOcmDQQ5VwmGQ=; b=iWuY3t5FqHjOar
	sKctkbRhmyU43EjduLGd1JZ46aSEzZek4NuTNlgb+rSokOjLUASQpN9/v0oXPntPh18JCCHZTuWpN
	Xhtei6JUpzj6Cn6cbsr6fFBil6qvQZx4tKJIEtcQp5niS8+8bgvvaz1UHrYL/trwXTgEebRqwAwAW
	5PnHcYzp0adUDeinjCP2mFUsYX0lBKdqqicA0klD+1RgRj/3mUtzOU7pbrtVvgEUP3+L5etru7ELg
	dTyP/ISA9J/gir9OrapCAseJ5BH//K7+IPsTbW6Por5w4vaq/umKo+4O9EySDtPdwaZUiWh/1J9HZ
	E8zqV4n/w53MkPg0PINA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iexhW-0000pO-Qg; Wed, 11 Dec 2019 08:50:30 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iexhN-0000o7-FC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 08:50:23 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5df0adc50003>; Wed, 11 Dec 2019 00:50:13 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 11 Dec 2019 00:50:19 -0800
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 11 Dec 2019 00:50:19 -0800
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 11 Dec
 2019 08:50:19 +0000
Received: from tbergstrom-lnx.Nvidia.com (10.124.1.5) by
 DRHQMAIL107.nvidia.com (10.27.9.16) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Wed, 11 Dec 2019 08:50:19 +0000
Received: by tbergstrom-lnx.Nvidia.com (Postfix, from userid 1000)
 id F060C42797; Wed, 11 Dec 2019 10:50:16 +0200 (EET)
Date: Wed, 11 Dec 2019 10:50:16 +0200
From: Peter De Schrijver <pdeschrijver@nvidia.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
Message-ID: <20191211085016.GW28289@pdeschrijver-desktop.Nvidia.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
 <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
X-NVConfidentiality: public
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL105.nvidia.com (172.20.187.12) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1576054213; bh=aT59Us6r+RXBi41ZhK23q+Ubu168i/DTG0ueCLa67nU=;
 h=X-PGP-Universal:Date:From:To:CC:Subject:Message-ID:References:
 MIME-Version:Content-Type:Content-Disposition:
 Content-Transfer-Encoding:In-Reply-To:X-NVConfidentiality:
 User-Agent:X-Originating-IP:X-ClientProxiedBy;
 b=bBKdljop3uOxvjy/o3pqji1i6rxEkmO8s/acQe1DjLRXVnEhD93410sOvuVOsKaY0
 JenibI3MMdIaGFllcLUf34f4bfqA2730HOi4P39ho0opyk9kJWGx60qiUsvFVUSgjZ
 BIvwwiH7VZPw4IizzuwrjcILMwvSfRTe6Xb5ROTaDI/aLQxkBYqCHwlOoyNIZIymlA
 dz98J/HTvcx2VvUtTnSrormWY/66UDpO6/OElOHSMfL8x271y8ax+p64aprcgMliTT
 uk7bPKfvF84yf/d/RHrqp5kLErqM0H3BYuACr17jRIYPrMt+4t1hIinCddp/u9MxpF
 aMC9nl8Gbf2xA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_005021_597257_B9D7215A 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCBEZWMgMTAsIDIwMTkgYXQgMTE6Mjk6NDJQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtv
IHdyb3RlOgo+IEV4dGVybmFsIGVtYWlsOiBVc2UgY2F1dGlvbiBvcGVuaW5nIGxpbmtzIG9yIGF0
dGFjaG1lbnRzCj4gCj4gCj4gMTAuMTIuMjAxOSAyMjoyOCwgRG1pdHJ5IE9zaXBlbmtvINC/0LjR
iNC10YI6Cj4gPiBIZWxsbyBKb24sCj4gPgo+ID4gUExMTSdzIGVuYWJsZS1zdGF0dXMgY291bGQg
YmUgZGVmaW5lZCBlaXRoZXIgYnkgUE1DIG9yIENhUi4gVGh1cyBhdAo+ID4gZmlyc3QgeW91IG5l
ZWQgdG8gY2hlY2sgd2hldGhlciBQTUMgb3ZlcnJpZGVzIENhUidzIGVuYWJsZSBhbmQgdGhlbgo+
ID4ganVkZ2UgdGhlIGVuYWJsZSBzdGF0ZSBiYXNlZCBvbiBQTUMgb3IgQ2FSIHN0YXRlIHJlc3Bl
Y3RpdmVseS4KPiA+Cj4gCj4gQWN0dWFsbHksIG5vdyBJIHRoaW5rIHRoYXQgaXQgZG9lc24ndCBt
YWtlIHNlbnNlIHRvIGNoZWNrIFBNQyBXQjAgc3RhdGUKPiBhdCBhbGwuIElJVUMsIFBMTE0ncyBz
dGF0ZSBvZiB0aGUgV0IwIHJlZ2lzdGVyIGRlZmluZXMgd2hldGhlciBCb290IFJPTQo+IHNob3Vs
ZCBlbmFibGUgUExMTSBvbiByZXN1bWUgZnJvbSBzdXNwZW5kLiBUaHVzIGl0IHdpbGwgYmUgY29y
cmVjdCB0bwo+IGNoZWNrIG9ubHkgdGhlIENhUidzIGVuYWJsZS1zdGF0ZSBvZiBQTExNLgo+IAo+
IEknbSBub3Qgc3VyZSB3aGF0J3MgdGhlIGlkZWEgb2YgV0IwIG92ZXJyaWRpbmcsIG1heWJlIHRv
IHJlc3VtZSBmYXN0ZXIuCj4gUGV0ZXIsIGNvdWxkIHlvdSBwbGVhc2UgY2xhcmlmeSB0aGF0PwoK
SSBkb24ndCBrbm93IHdoeSB0aGVzZSBvdmVycmlkaW5nIGJpdHMgZXhpc3QuIFRoZSBjb2RlIGZv
ciB0aGVtIHdhcyBpbgp0aGUgZG93bnN0cmVhbSBkcml2ZXIgc28gSSBpbXBsZW1lbnRlZCB0aGUg
c2FtZSBpbiB0aGUgdXBzdHJlYW0gZHJpdmVyCjopCgpQZXRlci4KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
