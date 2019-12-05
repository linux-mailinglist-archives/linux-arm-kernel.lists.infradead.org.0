Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF8C113A18
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 03:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRAPQrEhTGtwpV7v7XkBbnny/qEAgyvvq4FtsZb5UKA=; b=sPTgzZEFcLlPX6
	PqWpu+wAMiXyVtJmrJ2PVfpyHBmzhnPqhesHOKhw1CvQtQPLw8FLwUqdbHc5Mu5SMuN1cWlJ+E1Cc
	dlzr+25gL97PxPbdG1Iw9/Y06+QWdmFCnSpSXaprETOFm17J2NT3hI5han6iL7h6CHMIg1b4kCFi9
	8WwsByv6on/m8iq2C/LmbaPR9CObPetErYLK0dviY/rdcBcXurHCmy1rPM4Ys4/US+KzLClcScpFL
	WqpWg2evD41CnoCetRxsvmK3Wph6GzxN3xFZdM18oJaDCmIzOTXWvz/Amafua0Zi/mYLJSd3pcWOf
	7A/6Al/5PwvhQcO9l+AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichEw-0006FU-Ic; Thu, 05 Dec 2019 02:51:38 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichEn-0006F1-GN
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 02:51:31 +0000
Received: by mail-pg1-x534.google.com with SMTP id b137so852479pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 18:51:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=YXOwxN1kP+K4jqhxg2yhpfqPO6sP7d2qL2AC9K9utQ4=;
 b=qjq9QecI/wOJmuVH8+2KuOKZd77fkfhSNfn75KhTqEhICZ1dJqZObyHA6YA6REPVQI
 qUmsq/SmFCy9XPAFYfIXDM60S+OakybcZPUjZwNhLBKA/7paGXMi9QCzMMNKwIcy84KA
 qrUzznkALn//5SzE7Y0GRlKUOBJLtRKsJ+exXKT4ZeCTjv8MzL3d1bJ0gFGpG2AVAWW8
 VSnlqKn3T7sw0ROo3Ch5kfswp5/6Wg/11JgpwIPSKHj2Cle8tT7pYIc3jUCsQQNHRp50
 wcr4hxUQOifunSOuS23mTqe6Ex44OF3flMKDSiwqg0UF5UA0JxQVvbhHThGa8VT2rXIp
 whyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=YXOwxN1kP+K4jqhxg2yhpfqPO6sP7d2qL2AC9K9utQ4=;
 b=gEQXkv9ejnTyE1rrkea+nfSnhj7cUErIyQhCXkmvnGP7rE1aigu0eNGQmXZ5aUA1cW
 4vpvotOwmQprH+57vm2PW9LCpvoWvNTSnWpFHtQXQnLsAr1qjvwcFJ3V5TsND1pJ5lJE
 qdTF8z3WzqWHHIWwvgsS+M8Ge+o5/sP5HVIr3IZKoUXLx4XxRngT42TKHApgqJ6Aycju
 SD+leQa53QSbq9aM1UtHy+W4VhJPiRRFtu2/KplqZp4/BuBeZbWa3CGoPnktVtd62Aj8
 ++cOBtuPCtaIr2aL8jhfPAndeG+kXS6Jlal7Q+jAOZj7jZX+B56Ij1pVrg+4MlhzrZRZ
 E/lw==
X-Gm-Message-State: APjAAAUVQsBMKQPlAVoI/r9OMWQkZceij5o5B1cWTHiuNyM0d14eEcMm
 4VsOnkIEXHetGm4vKnP9U0dh5A==
X-Google-Smtp-Source: APXvYqyiIzUgOpbu5JKLdnKDPxQgFqCYX1OfETQq1MaukN74rbD9OAIBcUgXHGPceCG2ufABoZTxow==
X-Received: by 2002:a63:fc5d:: with SMTP id r29mr7055870pgk.282.1575514288156; 
 Wed, 04 Dec 2019 18:51:28 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id o31sm6605986pgb.56.2019.12.04.18.51.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 18:51:27 -0800 (PST)
Date: Thu, 5 Dec 2019 08:21:25 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20191205025125.imxnao2qwyons5zl@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
 <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
 <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
 <0b634341-ea2b-e9cd-4986-dc9a01c839bb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b634341-ea2b-e9cd-4986-dc9a01c839bb@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_185129_575927_4DD4C34E 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 sumitg <sumitg@nvidia.com>, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDQtMTItMTksIDE2OjU3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4gMDQuMTIuMjAxOSAx
NDoyNywgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gPiBPbiAwNC0xMi0xOSwgMTY6MjUsIHN1
bWl0ZyB3cm90ZToKPiA+PiBJbiBUMTk0LCBDQ1BMRVggZG9lc24ndCBoYXZlIGFjY2VzcyB0byBz
ZXQgY2xvY2tzIGFuZCB0aGUKPiA+Pgo+ID4+IGNsa197Z2V0fHNldH1fcmF0ZSgpIGZ1bmN0aW9u
cyBzZXQgY2xvY2tzIGJ5IGhvb2sgdG8gQlBNUCBSNS4KPiA+Pgo+ID4+IENQVSBmcmVxIGNhbiBi
ZSBkaXJlY3RseSBzZXQgYnkgQ0NQTEVYIHVzaW5nIE1TUihOVkZSRVFfUkVRX0VMMSkuCj4gPj4K
PiA+PiBBcyBEVkZTIHJ1bidzIG9uIEJQTVAsIGFub3RoZXIgTVNSIChOVkZSRVFfRkVFREJBQ0tf
RUwxKSBpcwo+ID4+Cj4gPj4gdXNlZCB0byByZWFkIHRoZSBjb3VudGVycyBhbmQgY2FsY3VsYXRl
ICJhY3R1YWwiIGNwdSBmcmVxIGF0IENDUExFWC4KPiA+Pgo+ID4+IFNvLCAiY3B1aW5mb19jdXJf
ZnJlcSIgbm9kZSBnaXZlcyB0aGUgYWN0dWFsIGNwdSBmcmVxdWVuY3kgYW5kIG5vdAo+ID4+Cj4g
Pj4gZ2l2ZW4gYnkgbm9kZSAic2NhbGluZ19jdXJfZnJlcSIuCj4gPiAKPiA+IFJpZ2h0LCBidXQg
d2h5IGNhbid0IHRoaXMgYmUgaGlkZGVuIGluIHRoZSBDUFUncyBjbGsgZHJpdmVyIGluc3RlYWQs
Cj4gPiBzbyBjcHVmcmVxIGRyaXZlciBjYW4ganVzdCBkbyBjbGtfZ2V0X3JhdGUoKSBhbmQgY2xr
X3NldF9yYXRlKCkgPwo+IAo+IFdoYXQgYWJvdXQgdG8gbWFrZSB1c2Ugb2YgZGV2X3BtX29wcF9y
ZWdpc3Rlcl9zZXRfb3BwX2hlbHBlcigpPwoKSXQgaGFzIGEgZGlmZmVyZW50IHB1cnBvc2Ugd2hl
cmUgd2UgaGF2ZSB0byBwbGF5IHdpdGggZGlmZmVyZW50CnJlZ3VsYXRvcnMuIEFuZCB0aGF0IHdv
bid0IGhlbHAgd2l0aCBjbGtfZ2V0X3JhdGUoKSBhbnl3YXkuCgotLSAKdmlyZXNoCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
