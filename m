Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8EB1A4B6A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 22:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8snBBS3nlcv5PecqppMb3PB22OPvr38eOy8szOUtXXw=; b=BU6glovByfqzgt
	tNCDWXeju4i0AgBV5emrh+MgQbhZWd/37QBRClVGez3dqcm6DXkZk41h/TLurUboCMLJb872540dw
	g5PTqUAf1NfPfqqL24YICr4n+SAUsZKUDFZMM16APMXvP5woKj5oFGqF6vN6TVMFq+Dl2tcU0NCGO
	Xv70FS+y9kBWSFz1ipF593X3B+nEz2RszjLm2qsLko5u2yuxZP6fNFiYAH9TBSe9aUT/eWbDOUfle
	uw4uTWQkvnHsIRTWSo0FLgkW93Q2p3MyOLo/anFQaAPAcsCS0Bt2ehiTFQWZzvaY4AhdEhv28+BWG
	TL/m2eUQ+zRIYaHv74Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jN0aj-0004mA-AQ; Fri, 10 Apr 2020 20:49:33 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jN0aY-0004lV-EV
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 20:49:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id n17so3122246lji.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 10 Apr 2020 13:49:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RtQay0p36yFoHHnkkvAKDptGQmyg6Qy1Y9oDL+R6OJs=;
 b=JYxrDAPPO7YcJQGQmfkDNy78riHDRnxnk+1BuPlS7InbdQdxLTvIz8OEPZiFpOU0X9
 ADT7Ft9odOWbzW9finqAX/+rKSLfnVSeR5Xa9J4oDuoZc8WSgiBXwkPvTWNMK5QpoSzN
 1xg345q38jbniCJJ64eiSGzaeGA44fhbyi5H4thk4LUHgSXt58daDdfyPUcXv+0GjcGe
 F4H5APl8W/ee6OkZLAkUhs4j7OpWcn9y25FlGh93o4+Mu+UEgQH6tmw2E6EOi8MUeF2i
 2aPAZ/DjIos0ISMXOdtcg0a828pLKVjCvFrg05ZPhPQe7PmFCw5csXUaxkljrQ3P9JVy
 8uGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RtQay0p36yFoHHnkkvAKDptGQmyg6Qy1Y9oDL+R6OJs=;
 b=gZcxI9m9tWp9IokVStgqPNjQUSUOP+tg/WhqFOPIyKSFEUG+bU0Mi9j1N75l5nLMgu
 MPSMM7KVomwz10o/dgZDKuXVkWHQtN8wG3bfQFkCs1gtFnVX8h5KhFAncBcdfvsQolOO
 NmQQ2fHV9KDN9kRdJwQ+zJxvRBCpGuCc6kpFOp2S+lwZbK8GvoSK5dJfeju55Mc6RgJq
 gGl7COoiqhhx3rQKUKGupU9fXu0tUfAvo12mwx4yKFesICLP/zBrbUwvkS+e9+SVmVo6
 4L6NN3DZxtxcYXDGnWqgYctH1JWROmfoIeqUVPkfQqlJWitkhcaCmTEcX8s3115oS/vB
 2suw==
X-Gm-Message-State: AGi0PuY8JvtzRki8/ZVXRAeLLpD6nHv+iZRyHxRBkMF/37rhSKk/Vsqm
 DR/lF4WbISPLFY03VPOJBuh2nuXJ
X-Google-Smtp-Source: APiQypKfmrULbbonnzAShBhrnEqTia/HO1FQk3qKGk14wKYdR6iNAa6QFkvw+u0KqefzQ/PvT2QTPg==
X-Received: by 2002:a2e:b4d1:: with SMTP id r17mr3909160ljm.117.1586551760333; 
 Fri, 10 Apr 2020 13:49:20 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id v9sm1775739ljj.31.2020.04.10.13.49.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 13:49:19 -0700 (PDT)
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0e040cf9-56cf-dd44-3523-ff4c82fb1f2c@gmail.com>
Date: Fri, 10 Apr 2020 23:49:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-8-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_134922_483105_6DFACDC1 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4gK2ludCB0
ZWdyYTIxMF9jbGtfZW1jX2F0dGFjaChzdHJ1Y3QgY2xrICpjbGssCj4gKwkJCSAgICBzdHJ1Y3Qg
dGVncmEyMTBfY2xrX2VtY19wcm92aWRlciAqcHJvdmlkZXIpCj4gK3sKPiArCXN0cnVjdCBjbGtf
aHcgKmh3ID0gX19jbGtfZ2V0X2h3KGNsayk7Cj4gKwlzdHJ1Y3QgdGVncmEyMTBfY2xrX2VtYyAq
ZW1jID0gdG9fdGVncmEyMTBfY2xrX2VtYyhodyk7Cj4gKwlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBw
cm92aWRlci0+ZGV2Owo+ICsJdW5zaWduZWQgaW50IGk7Cj4gKwlpbnQgZXJyOwo+ICsKPiArCWlm
ICghdHJ5X21vZHVsZV9nZXQocHJvdmlkZXItPm93bmVyKSkKPiArCQlyZXR1cm4gLUVOT0RFVjsK
CklzIHRoZSBFTUMgZHJpdmVyIG1vZHVsZSBidW1waW5nIGl0cyBvd24gcmVmY291bnQgYnkgaXRz
ZWxmPwoKSW4gdGhlIG90aGVyIHBhdGNoIEkgYWxyZWFkeSBzdWdnZXN0ZWQgdGhhdCB0aGUgRU1D
IG1vZHVsZSBzaG91bGQgYmUKZGlzYWxsb3dlZCB0byBiZSB1bmxvYWRlZCBvbmNlIGl0IGhhcyBi
ZWVuIGxvYWRlZCwgc2VlbXMgeW91J3JlIGFscmVhZHkKZG9pbmcgaXQuIENvcnJlY3Q/CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2Vy
bmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
Cg==
