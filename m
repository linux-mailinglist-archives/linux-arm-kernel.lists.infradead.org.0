Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA591E2199
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 14:07:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=95pBi3zfQKp0gfB8tan5SDoykFovrabeTY2pLnUbL9A=; b=qN1myYocGfai1sV1ICSf6UYly
	S3DVMAwSp6YDRH2M/9oQsvY1m0TlKbN4gVaHKX5M+Ys6sHPAUjgurkkDBMKubKBIzhtMH+pRRGeXE
	ftrenYDocijntmcV5QKvQgJrhy5Gwnh21EZIdpMf07SIcYfCFXj4A2RDaPmOOtmOtDh9c3chnHsTl
	vvGpIjBBWo6D84jjk7USgMbu1O+1WbSeDDIox+a9kYq7BMXFXYw9qM0k+LRWCD+s7Fuu1kZtW5n/j
	taQrY73q0chbC4VRWuQ78B8/snt+1PJ0fD7MXnXMgjGhC+7YamDelD8GWHQRUtHyu13aJmtnYgv0S
	Ir4xYD7XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdYN3-0004nC-53; Tue, 26 May 2020 12:07:49 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdYMn-0004mm-1T
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 12:07:34 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 5so1268757pjd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 05:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=fpsA7Nq2nxropNth7zUzBAVP9PJ+/EXl3l54pU3n9ZM=;
 b=J+ir68uaqgnC0bpUtYh7gEhKg91ecOFPaqozofq5uKsLc7Q5y3iFeqMqCZAJviMx+s
 5ig+pjzGqwz+mFaduqg65bildjvb3DkPZio13iXEBv0mAnfqdngUZrwP8cIh8JeTUCVJ
 gmFnjjcFBD8aNXil24SDu+Jkirv39gmumTTyj55+HgtSDlf8tVbBjh7E552efJG/Wjo8
 EJDaQDAdQwq7KwVsaMRKey6Y7TjZsMZCOt/LAThI6/92Dp0fkT6otf1CI6seawSCUyPt
 WoWoRsARBzdoihaCWqPAXG3jCyZxwI+pM2gsZxtGTudpYt/c710Xf3GM28FbeauVBfE6
 ryPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=fpsA7Nq2nxropNth7zUzBAVP9PJ+/EXl3l54pU3n9ZM=;
 b=DV1RLI247Ny6rlCREHHziHgDVb0SkPKuF6Cl1ERpee04Gs3+ZTKTXcR+1gr2ng7Uyd
 qGjeLIsH+b0aPQc4RWHjh4xY/WGgsHTTUpWGts3++lufery6A3ZF+LQQT+axPwKEXPa3
 K3jM8DWqs50ndqgnah8sW28nvC/10GciQz7zp/0Aal1mwAKpUL9GOp1YWuDTLORyxMR+
 nv5+l9dNIJxQ9NleDiI5LoUY4JWqeHqw0HFpJPNGTgn2q5ltXTA6BS/rVbUoy2KQCjAt
 9NZREr5s18T4XNNAOR1yAYUp875ZiUKyYCERFuhygrdnGxXfKnLMv5i0p0x1Z/umaSVM
 2ODw==
X-Gm-Message-State: AOAM5312wYCjNT0SCIvyBZYKtcxlNvq30yzMgir/eyw1NNUJBKOiQoUn
 Rwn5cuFME7044Z3tBsGewpIEoOEck3/wvw==
X-Google-Smtp-Source: ABdhPJwJC/VIL8ph3znchjMxyQibr056u3YncVEhb6v6BwGdiIO+FoFmlj/9d7sAY/kJdEg5hx2xFg==
X-Received: by 2002:a17:902:6b02:: with SMTP id o2mr822931plk.25.1590494851770; 
 Tue, 26 May 2020 05:07:31 -0700 (PDT)
Received: from [10.74.2.18] ([45.135.186.9])
 by smtp.gmail.com with ESMTPSA id x132sm15300133pfd.214.2020.05.26.05.07.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 May 2020 05:07:30 -0700 (PDT)
Subject: Re: [PATCH 0/2] Let pci_fixup_final access iommu_fwnode
To: Joerg Roedel <joro@8bytes.org>
References: <1589256511-12446-1-git-send-email-zhangfei.gao@linaro.org>
 <20200525134318.GB5221@8bytes.org>
From: Zhangfei Gao <zhangfei.gao@linaro.org>
Message-ID: <7c6e9389-c34a-4d30-bc8d-572c41572d15@linaro.org>
Date: Tue, 26 May 2020 20:07:01 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200525134318.GB5221@8bytes.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_050733_082597_46BA9E78 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jean-philippe <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hanjun Guo <guohanjun@huawei.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-acpi@vger.kernel.org, Wangzhou <wangzhou1@hisilicon.com>,
 linux-crypto@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 kenneth-lee-2012@foxmail.com, linux-arm-kernel@lists.infradead.org,
 Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLzUvMjUg5LiL5Y2IOTo0MywgSm9lcmcgUm9lZGVsIHdyb3RlOgo+IE9uIFR1ZSwg
TWF5IDEyLCAyMDIwIGF0IDEyOjA4OjI5UE0gKzA4MDAsIFpoYW5nZmVpIEdhbyB3cm90ZToKPj4g
U29tZSBwbGF0Zm9ybSBkZXZpY2VzIGFwcGVhciBhcyBQQ0kgYnV0IGFyZQo+PiBhY3R1YWxseSBv
biB0aGUgQU1CQSBidXMsIGFuZCB0aGV5IG5lZWQgZml4dXAgaW4KPj4gZHJpdmVycy9wY2kvcXVp
cmtzLmMgaGFuZGxpbmcgaW9tbXVfZndub2RlLgo+PiBTbyBjYWxsaW5nIHBjaV9maXh1cF9maW5h
bCBhZnRlciBpb21tdV9md25vZGUgaXMgYWxsb2NhdGVkLgo+Pgo+PiBGb3IgZXhhbXBsZToKPj4g
SGlzaWxpY29uIHBsYXRmb3JtIGRldmljZSBuZWVkIGZpeHVwIGluCj4+IGRyaXZlcnMvcGNpL3F1
aXJrcy5jCj4+Cj4+ICtzdGF0aWMgdm9pZCBxdWlya19odWF3ZWlfcGNpZV9zdmEoc3RydWN0IHBj
aV9kZXYgKnBkZXYpCj4+ICt7Cj4+ICsJc3RydWN0IGlvbW11X2Z3c3BlYyAqZndzcGVjOwo+PiAr
Cj4+ICsJcGRldi0+ZWV0bHBfcHJlZml4X3BhdGggPSAxOwo+PiArCWZ3c3BlYyA9IGRldl9pb21t
dV9md3NwZWNfZ2V0KCZwZGV2LT5kZXYpOwo+PiArCWlmIChmd3NwZWMpCj4+ICsJCWZ3c3BlYy0+
Y2FuX3N0YWxsID0gMTsKPj4gK30KPj4gKwo+PiArREVDTEFSRV9QQ0lfRklYVVBfRklOQUwoUENJ
X1ZFTkRPUl9JRF9IVUFXRUksIDB4YTI1MCwgcXVpcmtfaHVhd2VpX3BjaWVfc3ZhKTsKPj4gK0RF
Q0xBUkVfUENJX0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURfSFVBV0VJLCAweGEyNTEsIHF1aXJr
X2h1YXdlaV9wY2llX3N2YSk7Cj4gSSBkb24ndCB0aGluayBpdCBpcyBhIGdyZWF0IGlkZWEgdG8g
aG9vayB0aGlzIGludG8gUENJX0ZJWFVQX0ZJTkFMLiBUaGUKPiBmaXh1cCBsaXN0IG5lZWRzIHRv
IGJlIHByb2Nlc3NlZCBmb3IgZXZlcnkgZGV2aWNlLCB3aGljaCB3aWxsIHNsb3cgZG93bgo+IHBy
b2JpbmcuCj4KPiBTbyBlaXRoZXIgd2UgaW50cm9kdWNlIHNvbWV0aGluZyBsaWtlIFBDSV9GSVhV
UF9JT01NVSwgaWYgdGhpcyBpcwo+IGVudGlyZWx5IFBDSSBzcGVjaWZpYy4gSWYgaXQgbmVlZHMg
dG8gYmUgZ2VuZXJpYyB3ZSBuZWVkIHNvbWUgZml4dXAKPiBpbmZyYXN0cnVjdHVyZSBpbiB0aGUg
SU9NTVUgY29kZSBpdHNlbGYuCgpUaGFua3MgSm9lcmcgZm9yIHRoZSBnb29kIHN1Z2dlc3Rpb24u
CkkgYW0gdHJ5aW5nIHRvIGludHJvZHVjZSBQQ0lfRklYVVBfSU9NTVUgaW4KaHR0cHM6Ly9sa21s
Lm9yZy9sa21sLzIwMjAvNS8yNi8zNjYKClRoYW5rcwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
