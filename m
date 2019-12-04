Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 817AB112D0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 14:58:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MDtSugOoqAB8XYE2+tqSU7z7IgHSIas8hMgPtV+t2g=; b=IKg8JaQvtejOnB
	Rx2tM/jUC0Q5mBEbenKITzFdpNa91HigKdBM2StZSN+ZDOg/o5gJUVpXzlb6GqJijO6R2f+zDz2IO
	VjvgPpb3D6eR4LigpEk9Kxp2KgDtOhSVb2toemPQVigbW+6nugpYvreiGBGXBExj5cNxabWp5GDug
	W7rPwiqnpt3ChHms+wpS6KTvLUQRlgxhLU/Gae5vZynoLdtIpta6cYO5MnPDLrMe1mm7fWmvdXaYz
	YAmGVFmfbBaqRcZ+4vTW8xGxO5lkxhWQcvmoZqgjsKPFgAMJtLIB7NXbYFxRVc/ptP+uSlF8m8zaJ
	8sQD8EX/osNhBkUdU+EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVAK-0001OR-Cg; Wed, 04 Dec 2019 13:58:04 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVAD-0001Ng-EB
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 13:57:58 +0000
Received: by mail-lj1-x244.google.com with SMTP id a13so8185982ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 05:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qLSQXMzVG7swZ/e2rtQnLP6u3joRR7UaM1wgCcu+ICA=;
 b=GBCEQDEd/RigkNNY6V8k56hcEXgv1oGrqA4Sk5jqPw9gRxAUoE6DSV4wgmVobAmjiO
 y/hMq98ujSr9yJ0waZF6+f6Dl7e3iUTI+opAqkfR6JDRqrwIlXYKKzZBc9n0WCEbbUsr
 JVNTa0iNMbKl8A776pXac0EnqUthD73y2pmukSmXhsx12C6/iWRzcR6vGs3+q12lqRYJ
 Hxm67bi8j//nv+B6fjEDLYGDuDFfDhy6wJp6Af4aM/J7ctH4MudCyQkpFTfBUtILYbJa
 xGBWDBAGV+s6WPAk9/v9/xhnX4KSwmDDKKJgXBBjBtlwkXL9/3KXHGB5w4M3wBdcFtxO
 RhJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qLSQXMzVG7swZ/e2rtQnLP6u3joRR7UaM1wgCcu+ICA=;
 b=UUKAfyjNpLKlRoOqqOmzWjJ3iBB+2aid4uEATeSr5ZPAm2a8QicZAyyQ7liDmn34gd
 VspLXtAoorK4DyXplooy0BqNS3fXNkOY1h3bIcLOWgynZl/vWMeruFZJv5+wfexzRStF
 Emx5lDOECrzVr9WstlPQKwPgeSW/CyVuFhXBFEIYvOPm7eGvaaA3UAJOSqKvOXXzm0l/
 Ag0Cbg2DiasKQxkXKQCa1Q41mdDji6jIXPfXfv5GWIZZ2NH1nBQQMuOZkBV33RHlo/dy
 sRB1og0Dk74rwAreaRFMng8UesxFz4TAEuorbjnA2ZVUYq525+TUfv6jBRGsBMUl981G
 b99Q==
X-Gm-Message-State: APjAAAWt+2lQYs8Z/FKI5xBspWHdXp9toskgXuCuktC795hk/9v69EwJ
 DMO4qReUWo678PsbkuQcvVE=
X-Google-Smtp-Source: APXvYqwPUyYNLY1YxBHRZjdAA1FL89xaYpCwqzoggRVxnCZoi49/FwzOsVjl7zgNf1dRjeX2HDj4Mw==
X-Received: by 2002:a05:651c:32a:: with SMTP id
 b10mr2142347ljp.132.1575467875071; 
 Wed, 04 Dec 2019 05:57:55 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id y23sm3238750ljk.6.2019.12.04.05.57.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Dec 2019 05:57:54 -0800 (PST)
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>, sumitg <sumitg@nvidia.com>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
 <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
 <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <0b634341-ea2b-e9cd-4986-dc9a01c839bb@gmail.com>
Date: Wed, 4 Dec 2019 16:57:53 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055757_501149_FC5BF1AD 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDQuMTIuMjAxOSAxNDoyNywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDQtMTItMTks
IDE2OjI1LCBzdW1pdGcgd3JvdGU6Cj4+IEluIFQxOTQsIENDUExFWCBkb2Vzbid0IGhhdmUgYWNj
ZXNzIHRvIHNldCBjbG9ja3MgYW5kIHRoZQo+Pgo+PiBjbGtfe2dldHxzZXR9X3JhdGUoKSBmdW5j
dGlvbnMgc2V0IGNsb2NrcyBieSBob29rIHRvIEJQTVAgUjUuCj4+Cj4+IENQVSBmcmVxIGNhbiBi
ZSBkaXJlY3RseSBzZXQgYnkgQ0NQTEVYIHVzaW5nIE1TUihOVkZSRVFfUkVRX0VMMSkuCj4+Cj4+
IEFzIERWRlMgcnVuJ3Mgb24gQlBNUCwgYW5vdGhlciBNU1IgKE5WRlJFUV9GRUVEQkFDS19FTDEp
IGlzCj4+Cj4+IHVzZWQgdG8gcmVhZCB0aGUgY291bnRlcnMgYW5kIGNhbGN1bGF0ZSAiYWN0dWFs
IiBjcHUgZnJlcSBhdCBDQ1BMRVguCj4+Cj4+IFNvLCAiY3B1aW5mb19jdXJfZnJlcSIgbm9kZSBn
aXZlcyB0aGUgYWN0dWFsIGNwdSBmcmVxdWVuY3kgYW5kIG5vdAo+Pgo+PiBnaXZlbiBieSBub2Rl
ICJzY2FsaW5nX2N1cl9mcmVxIi4KPiAKPiBSaWdodCwgYnV0IHdoeSBjYW4ndCB0aGlzIGJlIGhp
ZGRlbiBpbiB0aGUgQ1BVJ3MgY2xrIGRyaXZlciBpbnN0ZWFkLAo+IHNvIGNwdWZyZXEgZHJpdmVy
IGNhbiBqdXN0IGRvIGNsa19nZXRfcmF0ZSgpIGFuZCBjbGtfc2V0X3JhdGUoKSA/CgpXaGF0IGFi
b3V0IHRvIG1ha2UgdXNlIG9mIGRldl9wbV9vcHBfcmVnaXN0ZXJfc2V0X29wcF9oZWxwZXIoKT8K
Cgo+Pj4gLSBwb3B1bGF0aW5nIGNwdWZyZXEgdGFibGUsIHlvdSBjYW4gcHJvYmFibHkgYWRkIE9Q
UHMgaW5zdGVhZCB1c2luZwo+Pj4gICAgdGhlIHNhbWUgbWVjaGFuaXNtCj4+Cj4+IFdlIGFyZSBy
ZWFkaW5nIGF2YWlsYWJsZSBmcmVxdWVuY2llcyBmcm9tIEJQTVAgdG8gcG9wdWxhdGUKPj4KPj4g
Y3B1ZnJlcSB0YWJsZSBhbmQgbm90IHVzaW5nIHN0YXRpYyBvcHAgdGFibGUuCj4gCj4gUmlnaHQg
YW5kIGxvdCBvZiBvdGhlciBwbGF0Zm9ybXMgcmVhZCBpdCBmcm9tIGZpcm13YXJlIChJIGJlbGll
dmUgQkJNUAo+IGlzIGEgZmlybXdhcmUgaGVyZSksIGFuZCBjcmVhdGUgT1BQcyBhdCBydW50aW1l
LiBMb29rIGF0IHRoaXMgZm9yCj4gZXhhbXBsZToKPiAKPiBkcml2ZXJzL2NwdWZyZXEvcWNvbS1j
cHVmcmVxLWh3LmMKPiAKPiBhbmQgc2VhcmNoIGZvciBkZXZfcG1fb3BwX2FkZCgpLgo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
