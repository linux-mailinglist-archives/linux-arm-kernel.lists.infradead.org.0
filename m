Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663A5180336
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 17:26:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bn60Dq6SrVdc8W1MeSDuMoK/gYO97waEPNiJWI7SPA=; b=M+C9WGW2QzgW5b
	jePZZ+PNaEoFIVbw1nSQnIjz7Me9/Stqf+dxy4l/JwZCvVs8IaplV82BmkculbtSPdc6AyQTdVmVW
	D32nvQx2aPd3rnblTmDDelDoRjDzQuc4CkWnbovlVLOv0bjDmlqn3lU/L/nVZJbHFDxFEQmLB0uX1
	H0135RxiMRDui1krbbqqgECC7paJ9L9rl41k0G8c2j2jRFwtu8SwKoqDlggmjTqCo7n9QHvlo+REh
	u4kRaFVLbqs8J+Mb/F3woa+S07tERSm0lucFhZxQHMdiDv80kfnYbrNFpNLBk/o+mvurRTbnwEkKD
	21IWGxKEEHvkaGbfeSPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhiJ-0006MD-Kl; Tue, 10 Mar 2020 16:26:39 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhiC-0006Le-4K
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 16:26:33 +0000
Received: by mail-lf1-x144.google.com with SMTP id i19so5488905lfl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 09:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=3kZ96VsUJ4A3yK6VGR9AXLTuIfooSdtJ0HnhKEGe9Fw=;
 b=Lgzsxr6oMFzOsPxY9dqSyyz+TWPWYZAYaIZybxHwPbTDTnpTfhcf8T7cmTQLxxeocf
 JFBzSHHXm9Id0YNDU2fxUGwLkp9N/UdZqQjoe9REJMwJvhVqE1a1wz3Yu2Kc45aDoebD
 p3MZ6O+MRPBq21lDU2CDWhIHursel7f6T21qSG9f+QLlQuVzLaZ200WMZjHJNXFknaHF
 V5IpTSiTfmThvMfZqAwsF97GR/Kgxoc03rpn5/BdIijvGI2RosWcR+V391wkXb3d51lW
 kNtc1sFbVEyZlKhAuMIG68F4XkLMlHf1sOzz+Al9dmAeCr7HI+efqXyIdHlcWa4Hx5tQ
 2/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3kZ96VsUJ4A3yK6VGR9AXLTuIfooSdtJ0HnhKEGe9Fw=;
 b=kPIxupWNl52W/3jwrgxVHwKh5vWogqD+k2fDTwlXcDze4LcpHpVxI6A17VQBdyjvBc
 gTAi1WnmdtaP+3AEj6gkEgj8xZ1TDN1Y8RYXKl0BIgs1mwDNECDoP/P2Csvr88tExV04
 aOzbI4S2D2XVLnffA62EGb6hu83QRBOUa+9oyFXF/H6ru3zX2mTeTzfcLQJHtBu0PZjZ
 w+/DfSnKjFd0WqAXvwOEVw/pSb30zTRBEimoIirwH5hXXgh7FVSDyNAD0I/bhc+18HDL
 s1hu8yYvy9j6g99AePmaAyokKtQqMarpwCBBMdCLcUGxKFRz9HuK+rGIq2ZBLBJnk70+
 xwaw==
X-Gm-Message-State: ANhLgQ2FRe1CaPX56jVoRJWREUSmICRZbr7+XITucXpNfcx4LzHI9PTd
 rdh2mxOnmQ+MSZIyOS7/pNt/Ilc4
X-Google-Smtp-Source: ADFU+vv2oMyShABl/4K04lOItrbsFoT02OEztRR3TdqYw5HWhLqIU0OqmWKQc+hKqbxT2Y49HNphaA==
X-Received: by 2002:ac2:51bc:: with SMTP id f28mr12918101lfk.112.1583857589703; 
 Tue, 10 Mar 2020 09:26:29 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id w24sm22958192ljh.26.2020.03.10.09.26.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 09:26:29 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <88d18719-b6dd-98d0-e147-f89eed2f3f0c@gmail.com>
Date: Tue, 10 Mar 2020 19:26:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-4-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_092632_191774_B2B9C7D5 
X-CRM114-Status: GOOD (  14.10  )
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

MTAuMDMuMjAyMCAxODoxOSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiBGcm9tOiBKb3Nl
cGggTG8gPGpvc2VwaGxAbnZpZGlhLmNvbT4KPiAKPiBUaGUgRU1DIGNsb2NrIG5lZWRzIHRvIGNh
cmVmdWxseSBjb29yZGluYXRlIHdpdGggdGhlIEVNQyBjb250cm9sbGVyCj4gcHJvZ3JhbW1pbmcg
dG8gbWFrZSBzdXJlIGV4dGVybmFsIG1lbW9yeSBjYW4gYmUgcHJvcGVybHkgY2xvY2tlZC4gRG8g
c28KPiBieSBob29raW5nIHVwIHRoZSBFTUMgY2xvY2sgd2l0aCBhbiBFTUMgcHJvdmlkZXIgdGhh
dCB3aWxsIHNwZWNpZnkgd2hpY2gKPiByYXRlcyBhcmUgc3VwcG9ydGVkIGJ5IHRoZSBFTUMgYW5k
IHByb3ZpZGUgYSBjYWxsYmFjayB0byB1c2UgZm9yIHNldHRpbmcKPiB0aGUgY2xvY2sgcmF0ZSBh
dCB0aGUgRU1DLgo+IAo+IEJhc2VkIG9uIHdvcmsgYnkgUGV0ZXIgRGUgU2NocmlqdmVyIDxwZGVz
Y2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZXBoIExvIDxqb3Nl
cGhsQG52aWRpYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVGhpZXJyeSBSZWRpbmcgPHRyZWRpbmdA
bnZpZGlhLmNvbT4KPiAtLS0KPiBDaGFuZ2VzIGluIHY1Ogo+IC0gbWFqb3IgcmV3b3JrIGFuZCBj
bGVhbnVwCgouLi4KCj4gK3UzMiBlbWNfcmVhZGwoc3RydWN0IHRlZ3JhX2VtYyAqZW1jLCB1bnNp
Z25lZCBsb25nIG9mZnNldCkKPiArewo+ICsJcmV0dXJuIHJlYWRsX3JlbGF4ZWQoZW1jLT5lbWNf
YmFzZVtSRUdfRU1DXSArIG9mZnNldCk7Cj4gK30KCnN0YXRpYyB1MzIgZW1jX3JlYWRsKCkKCj4g
K3UzMiBlbWNfcmVhZGxfcGVyX2NoKHN0cnVjdCB0ZWdyYV9lbWMgKmVtYywgaW50IHR5cGUsCj4g
KwkJCSAgICB1bnNpZ25lZCBsb25nIG9mZnNldCkKCnN0YXRpYyB1MzIgZW1jX3JlYWRsX3Blcl9j
aCgpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
