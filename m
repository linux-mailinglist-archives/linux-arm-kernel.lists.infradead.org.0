Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1055180444
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sy5Gc/tBRIYCKD6OejS7VJkapx0zM4FSCeBZEU1S6xw=; b=WPloDAJVwcXqf1
	faYXMB1bJw0TRehpIpfCaULAmCBgNAGzVvRgkBcv3MDaFW4C0CYIxQj5lEHE532OZnphLFLPhHIWp
	r4CUao5mWRoKLsLeyxRaDyWfdJlGLsVBqI0ND/WKRhi0h93SaZOwY7Z/tQne43FGLSw3iHF3T1e7R
	IQ4bnietx4K31zpVTHEpFnHwX+5dJ+JYLmOLpg8NYpIAu9jKD4XxMDfTdzUP+vg3I5xwnMl7fIf5G
	LQofCqClUJHRDq71hGTjSJJ/TpO2mSGDWbE98Te2MR/UYpyz4w9nBJ2IGaIzBlo+lfvIjpVlPPepm
	hA5LXE3SJuTjcmtVRHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiHj-0004vW-8E; Tue, 10 Mar 2020 17:03:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiHc-0004um-Q5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:03:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id w1so15019010ljh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=8uzCtHMtKc+Ukgc53d5DhiEC9NN86qL18Zwc8LJrgsM=;
 b=D7j5Msw2O1mYNlZmRtu46hxI/JnchFjcjnRT/SiFL4eFAEUk8YYIhZ+45xHzEUx4IQ
 Li9yvlz6nmGa9MhB4flubcbU4u8hLhyJwsweZZJLPJwLGhFaTqkYA47InQYEPKSu9rrb
 /3hqr9u6mBbguSchijdRu+Mg2Dk4MtAWJ6jH4/jrbui9oJgF7725kiDUmbxMK6UDVw8b
 8A83/h6FSe57UM2vWoVy5SiHpgymSW5r+ec3ygAylj6OKhUWGLBT3DYSdswSahy2pVc6
 YDNzelZi2Bo0dfwJtMgRXl2Y0PxqODie1HOF5reMnUk3FEYv7ie5EBT6iNQuflFw7eOD
 OAIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=8uzCtHMtKc+Ukgc53d5DhiEC9NN86qL18Zwc8LJrgsM=;
 b=it68xUc9IRgL03UTfvIAmTgEe98nUe5H9y+hEASRzza9jEf0CJXXHQadQa9ceAS3xB
 BT2J/lVPK/RaRLIqDYLXd0Kk750rm84bcpXVvGjggDt23q3YBi+bjgDnfP9tWbDSm5OJ
 S7+HwLQZg1e9ti/OctVZLx8cQD6VFX5ljhxxOy2JxV4z8tw1puhxpFjhNWmQdvI6nIEj
 BZiBhjFgxjVUNr9LgojjP6CVtshlLd3+tFBTPa/qLML+Nrmq1ouh8U85wh2nlt4fqZ94
 fKRVIKjtIRjfOoaS/XLAfn1nnb2I6h0yW/2q7DOVXb7h7DQglotOBNDOzV3Zl/0or0eN
 Fqvw==
X-Gm-Message-State: ANhLgQ3MTISTBo0EqPklxsHMfiuSx4dsc6Jb9lDnmJhmNN2PXGQdKyMa
 EVXIJ9BrP7IgdpxqzV2s48IM61Sm
X-Google-Smtp-Source: ADFU+vsD7JVbSlhHqsR/bAuNFBl0fEmdRVN9C0kKVDlbF7Tap+6xUjFjS9g2RwYIghOZtsgcBNKqUQ==
X-Received: by 2002:a2e:894d:: with SMTP id b13mr11777580ljk.99.1583859787084; 
 Tue, 10 Mar 2020 10:03:07 -0700 (PDT)
Received: from [192.168.2.145] (94-29-39-224.dynamic.spd-mgts.ru.
 [94.29.39.224])
 by smtp.googlemail.com with ESMTPSA id x191sm7058845lfa.22.2020.03.10.10.03.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Mar 2020 10:03:06 -0700 (PDT)
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <7a4e0ab4-e17e-9e6a-2d30-d9a321be1dc8@gmail.com>
Date: Tue, 10 Mar 2020 20:03:05 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200310152003.2945170-4-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100308_843933_F4E0BFB4 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
bGVhbnVwCgouLi4KPiArI2lmZGVmIENPTkZJR19QTV9TTEVFUAo+ICtzdGF0aWMgaW50IHRlZ3Jh
MjEwX2VtY19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKClRoZSBfX21heWJlX3VudXNlZCBh
dHRyaWJ1dGUgd2lsbCBiZSBhIGJpdCBjbGVhbmVyIHRoYW4gdGhlICNpZmRlZi4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
