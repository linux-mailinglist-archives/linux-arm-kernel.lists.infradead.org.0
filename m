Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3681EC68
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHCCvYTnugmO1LnJU8mZdw4nHTkA6GCCfW6wU8wLFJ4=; b=m1aYut+cZ7U48K
	yr3jX6nKUrCVQctk9DUg5Gy4RKfSszH4ls7FNeQ1o3hj4/HV0HbtC66W0iVsOWCJdz/rEqA2ab8Bq
	zDeVw1K8YIoT/kHpEoK901aNJFJ2nVotin//VjYSnj8NTw9tZREMaYNnZbAlQvnh/P6ZK8cWpYVZm
	oIot4Fv9+H1L3vvKQHT4sUtT8k2GFzrn58nhZUtEZkVJoFwAAZI24DpbbQ48vePipjDM+oV4KW4Lb
	xd7NP2UXTNBsJX3zlFXMyXzdGLTraE3ci0U/SMSxjePtj0yvjbW2nww73/x3DiF9fXEmcAcG46I/3
	QFa3aI5qr3DG/6TdjxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrW5-0005UC-7z; Wed, 15 May 2019 10:52:09 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrVx-0005TS-JK
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:52:03 +0000
Received: by mail-wm1-x342.google.com with SMTP id y3so2161358wmm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 03:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IY0nzwi9vKnpYmNvcMep+bJnSeq0GrA/o59QaEDPfVQ=;
 b=K2uR2Hju4uVhWUovulzfQOZU2sVFJxpNv9FmCPIwXXyr2OfVIG8MmyjhceWV5Qcgwc
 m/6Oie/dGfo/vulbf6FK7clXnTUuHqH3HmdEQDkPMbH+FWOYiSBzAeBrBpgs8RFhLFt3
 I6nQbdna/eXio9Em1jQnzxl9jBTf0Cj38IBW5kQDc0QXS4ehFL+iKKP7MVR4gQU8jnoa
 grpahXWuL73Jw6za1/HUgCW/4HKMq7mEW4Q2EelfNaUTf7RJneR/o/BbpQ9V3OudxzsY
 X3vt87hz8kGlqdhIj0R9F18XwKuvKvZddF7io6HzFP+Ywxmlw4d5cJWgf0IvKyBo/L4a
 c1Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IY0nzwi9vKnpYmNvcMep+bJnSeq0GrA/o59QaEDPfVQ=;
 b=sXKy9OEvXV8dhnR2KhJYMjGN8/+MVmLSd/Qgwk9IQ9T4Q0UmEd/ZTkU3WV1lkDQEk6
 tfKSwWGTOIkgvPKIiyidKVXQeCrPsptSa4rmZli0voeZiJN8PBkgT/PX3Wzj0DMEkOCP
 kc+/k+olr4GQI50n897+MXDrhagxaB7tYZFLJdRHGwa98HY6pMfkKqcA8vWmADtASO4j
 9lhMYsX/Jcg4NfUCg+lHGlpje/XqyjY+l1w3YOtNjbS87evHbF90jvPQDYvUdcVz1jn0
 iRFtWifcY7pzEQHu8XVRhQzh30yh6srfNKhj+DHOCh8IB9u7nUXrQDrVMKO5E8VYBojY
 +sow==
X-Gm-Message-State: APjAAAXYx2WbiWihECiAu7aHRQ5lxCMs8VPG/HHfA0B7X7u+hHKR7ZBh
 nvDnfaaLALoRnLU5Qs9ESJcgeSI1I9M=
X-Google-Smtp-Source: APXvYqwa5QWMFUDmftHE7rA4C0Yvc38krvWgUpgyt9+ZE5+St4UDo8Ytls1Q4BoTcgwZtiLaO+iAWg==
X-Received: by 2002:a1c:eb07:: with SMTP id j7mr22011249wmh.138.1557917519110; 
 Wed, 15 May 2019 03:51:59 -0700 (PDT)
Received: from [192.168.0.41] (sju31-1-78-210-255-2.fbx.proxad.net.
 [78.210.255.2])
 by smtp.googlemail.com with ESMTPSA id y184sm2071278wmg.7.2019.05.15.03.51.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 03:51:58 -0700 (PDT)
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
To: Quentin Perret <quentin.perret@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
 <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
 <cf1474cb-7e31-7070-b988-a0c4d3f6f081@linaro.org>
 <20190515102200.s6uq63qnwea6xtpl@vireshk-i7>
 <20190515104043.vogspxgkapp6qsny@queper01-lin>
 <20190515104651.tv5odug7ce4zlupc@queper01-lin>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <5b55e432-f8b0-91ae-a7de-fe02e0cad322@linaro.org>
Date: Wed, 15 May 2019 12:51:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190515104651.tv5odug7ce4zlupc@queper01-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_035201_636344_E56BBFE1 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-pm@vger.kernel.org, rjw@rjwysocki.net, amit.kachhap@gmail.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, edubezval@gmail.com,
 mka@chromium.org, catalin.marinas@arm.com, rui.zhang@intel.com,
 javi.merino@kernel.org, ionela.voinescu@arm.com, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTUvMDUvMjAxOSAxMjo0NiwgUXVlbnRpbiBQZXJyZXQgd3JvdGU6Cj4gT24gV2VkbmVzZGF5
IDE1IE1heSAyMDE5IGF0IDExOjQwOjQ0ICgrMDEwMCksIFF1ZW50aW4gUGVycmV0IHdyb3RlOgoK
WyAuLi4gXQoKPj4gKyNpZmRlZiBDT05GSUdfVEhFUk1BTF9HT1ZfUE9XRVJfQUxMT0NBVE9SCj4+
ICAgICAgICAgaWYgKGNhcGFjaXRhbmNlKSB7Cj4+ICAgICAgICAgICAgICAgICByZXQgPSB1cGRh
dGVfZnJlcV90YWJsZShjcHVmcmVxX2NkZXYsIGNhcGFjaXRhbmNlKTsKPj4gICAgICAgICAgICAg
ICAgIGlmIChyZXQpIHsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgY2RldiA9IEVSUl9QVFIo
cmV0KTsKPj4gICAgICAgICAgICAgICAgICAgICAgICAgZ290byByZW1vdmVfaWRhOwo+PiAgICAg
ICAgICAgICAgICAgfQo+PiAtCj4+IC0gICAgICAgICAgICAgICBjb29saW5nX29wcyA9ICZjcHVm
cmVxX3Bvd2VyX2Nvb2xpbmdfb3BzOwo+PiAtICAgICAgIH0gZWxzZSB7Cj4+IC0gICAgICAgICAg
ICAgICBjb29saW5nX29wcyA9ICZjcHVmcmVxX2Nvb2xpbmdfb3BzOwo+PiAgICAgICAgIH0KPj4g
KyNlbmRpZgo+PiArICAgICAgIGNvb2xpbmdfb3BzID0gJmNwdWZyZXFfY29vbGluZ19vcHM7Cj4g
Cj4gQXJnaCwgdGhhdCBpcyBhY3R1YWxseSBicm9rZW4gd2l0aCAhY2FwYWNpdGFuY2UgYW5kCj4g
VEhFUk1BTF9HT1ZfUE9XRVJfQUxMT0NBVE9SPXkgLi4uIFBlcmhhcHMgaXQncyBiZXN0IHRvIGtl
ZXAgdGhlIHR3bwo+IHRoZXJtYWxfY29vbGluZ19kZXZpY2Vfb3BzIHN0cnVjdCBzZXBhcmF0ZWQg
aW4gdGhlIGVuZC4KCk9yIGFsdGVybmF0aXZlbHkgeW91IGNhbiBrZWVwIG9uZSBzdHJ1Y3R1cmUg
YnV0IGluc3RlYWQgb2YgZmlsbGluZyB0aGUKc3RhdGUycG93ZXIscG93ZXIyc3RhdGUgYW5kIGdl
dHJlcXVlc3RlZHBvd2VyIGZpZWxkcyBpbiB0aGUgZGVjbGFyYXRpb24sCnlvdSBmaWxsIHRoZW0g
aW4gdGhlIGlmIChjYXBhY2l0YW5jZSkgYmxvY2ssIG5vPwoKCgoKLS0gCiA8aHR0cDovL3d3dy5s
aW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBT
b0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFy
bz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
