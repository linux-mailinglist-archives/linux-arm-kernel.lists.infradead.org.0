Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B631A855F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=653Db9avmlE019n9efDCQsqUJ67aV7tCwklDszdCCY0=; b=b3GRjKBZIyumKL
	7CXqe4PNTIqivSXNE33m1k1rGzM0pLInwBQE78+QsElxoI7on/OnQSdNuZuQ98lfEyrjrk3p2STlH
	mcIczgEz/UN79//i2LZcRw+10AvsOcPo7Bvsmg7oLS2H3adaCDesB7w/SX1ZGaWmi1+Mr3hdKwhfN
	9VAvJ30JmT/ze93U8ENrjiooIBIamiV3Et6woh3g6hEkKy/lqgXtoMXZ3WWnqO0AYe+pgUOhbeSvn
	2u0sb4ZBH3oehPn5HjGeUI7gsEqnoBxO4itb9wO02jHsBcgJ9ywA2yjDLPIpnzH11UfUrU+6ChA/N
	1sCE+0D8cskjmGDKGs1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOeA-0002PK-P6; Tue, 14 Apr 2020 16:42:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOcN-0002AI-RR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:41:09 +0000
Received: by mail-lj1-x242.google.com with SMTP id q19so469955ljp.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=42zN/JWZMrImPOHqxaziIrOnovVE6HSOm6ZZB3qclDs=;
 b=PipUNxuxy3Q6sLRqz5k1a/Npe7zldh+VoHciAjWwpKNErtKr8tfgneF3cIcmDBppP5
 sbUjTK8ubc5x1aKFktL3nhoxYA4bsRwv9kRUNV+N7MRxcWwVoN+tG3mcRLq23qxfMqs/
 N13AiKb9ZenPnaIqf2o+g1Ek7GX2F851aM7WK+VJVA2BZYBhBZ3a8bwkin052ZRUd8Za
 pqB4djj8qbZfyY0Fx65++1zu83iPtDs71tzW0enbb/I6st1Wkzh4QMvFLW3TReiIuahJ
 /ZgqUcEVVXnSES/SzeKljm5HMOFJ5MRjl+7Z2vUgfFS9ruNWde/KvgtcE9yUqnGYyS1A
 wn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=42zN/JWZMrImPOHqxaziIrOnovVE6HSOm6ZZB3qclDs=;
 b=TVehGHxgi8av0BffmVn2pgxi0kYIu01MikiAuGjpGLK31OzjHlOQLRLDgOglWjzNtc
 Xe35b/aXh/5frcIjG8pFn9qhemGT/r6ux6zuvVtDfVA5UjiG7n/A+60EK0q0xmMVH5DC
 BXASRIkADwADwL1DUYZ1zbwqPZzSmReCIov0jqePIjcq0VL1bVNMmzdyb2cwsIX7IsVx
 cBTlH65rM74FW/4PIyG9nqIl2qDHaSPWorRW96lmuWlsQd8KvRjhV3mYUuQ+QzdKrs/5
 SqumKvyNb5zf5pcYTYzz+ZPwJ6gkIMd91nHiUIjoq+syP2EkbjnyQfZU3wfo8EddwQCA
 nBSQ==
X-Gm-Message-State: AGi0PuaU0g1WdXMXUx3FbvZ8papIKvfc3veHWALua6I0kx887QbtPnds
 V1xKxx9h0b0JnLB+iq8Q0qP3B3gb
X-Google-Smtp-Source: APiQypIsIVTReol7rZyJyAlFKw87DWeZ7xkU4PVTXTRJYLKhxkNO6FDzjCKYW+CTaMG6SrEu8MK46g==
X-Received: by 2002:a2e:6c15:: with SMTP id h21mr635259ljc.248.1586882456643; 
 Tue, 14 Apr 2020 09:40:56 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id l13sm9448259ljc.84.2020.04.14.09.40.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 09:40:56 -0700 (PDT)
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <543bfc3b-2bb9-01d3-62da-89d1f0b18a5b@gmail.com>
Date: Tue, 14 Apr 2020 19:40:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200409175238.3586487-12-thierry.reding@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_094104_929262_99F38ED2 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDkuMDQuMjAyMCAyMDo1MiwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKPiAtCS8qIEVNQyB0
cmFpbmluZyB0aW1lciAqLwoKR3Vlc3MgdGhpcyBjb21tZW50IGlzbid0IHJlYWxseSBuZWVkZWQg
ZnJvbSB0aGUgc3RhcnQsIG9yIHNob3VsZCBpdCBiZSBrZXB0PwoKPiArCXRpbWVyX3NldHVwKCZl
bWMtPnJlZnJlc2hfdGltZXIsIHRlZ3JhMjEwX2VtY19wb2xsX3JlZnJlc2gsCj4gKwkJICAgIFRJ
TUVSX0RFRkVSUkFCTEUpOwo+ICsJYXRvbWljX3NldCgmZW1jLT5yZWZyZXNoX3BvbGwsIDApOwo+
ICsJZW1jLT5yZWZyZXNoX3BvbGxfaW50ZXJ2YWwgPSAxMDAwOwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
