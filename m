Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A6001A327A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+2EttHGtxIpaOYb2QZ+h22Q3rbErG4aMjSomia+TjA=; b=S1zmjHRWPIOi2o
	6wRjAgOHYFAlIXjj0UNEgcwnVd3yL924cI7Rsaf6ijQ7OoeRryrj8qGYZwMC2Xov9oJvWisUHln+Z
	0hy1F2CaM8zC2toz91oq2yuw6RX2bMkNfA5WNnL8KL0TGZDE9Do7UKmE40r6fZTSp5/k0XQlX5GMA
	bEIrl/OvILRKtOnzZqComzuZbSyD+9ctBX4dKrCls39zS93TL/LaXTX3MDdWAbZmuAs4rp5FE7apK
	zkFwz+F1JC6u6ixDbqLPEv2SQVxUfKrJegzpEJhh3aclpQGN/5Hhvo1W122nG/JbLnKiHs7T4FC1i
	eodxRJZK3VMS5WG2OGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUS4-0006o2-7k; Thu, 09 Apr 2020 10:30:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMURL-0004Lu-Pd
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 10:29:46 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so11297299wrt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 03:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jkRgOsveN5qmBJ0M4R1dAo5UKj2A3MYQ96PvB4Jc5CE=;
 b=IS2IOiCnk4iXdbES0KEBbw/6SOqjQFLsN7lNB5d2C7/qoY2xTbXshqURo/fi5dG5Iz
 GXidyQ9Yw4Y3rzMWM9+RlALOsdgTx1qBDnDGPUGOQecWQ1sYCpxC2ivVw5pvJQ5HWy7+
 F18RqGaCzpTT+BZ+Bs3FwV62hWNomqyVufK9NA0jJ90/UHeK50PV54czICyTNPXNxHrh
 I/07xFpmOdYw/7Iu29LSylka2lsyVgLOHmsu/dg36kOhGJg7F/qKmNlyCvcb5WNa/AeP
 DE2LLRmoXYB60pusRlUwULBGHPbFo0FfIEq5jTWr15i6N8eVjZJYIdKyf7qdCfXZcq9s
 2GEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jkRgOsveN5qmBJ0M4R1dAo5UKj2A3MYQ96PvB4Jc5CE=;
 b=XGyDBTjhKz+bCG7Lk6WIEDlNU7IVsA6tRy8ingWm1Nf7pA3AyD/ZPwBwIbIgiYB1Aq
 uTS+i2LOk9ffoVvl9xY8tkYuLgEQUZpE0uQNFwof88bwhEUfSh13NPGgWu19yurrRqOL
 Irr4MgCk7f5Rw05lhS6SZpH6m3Zi1RTctHwz0B1kpkeLdqmD1QQ0k6MawhErwN5RHnOJ
 wONaruLM6GAlzYkLcx2SW34ic4flXoLZ73lB7yRNSuLjtMLLlHZcGUW1TGGvlWdFsUCi
 CvedR81Y7opGEKlbUZ/j3DJr9YjUpkMDMjuK/6a340Ae+W8zGPvhAPnRunQXj6PyweYq
 2P2A==
X-Gm-Message-State: AGi0Pua6an8JVHtdHxJlxKLpNh0Rj0V6ovjd7XxBmFn82vVKVyAfUd9H
 K7cCH8gPzQZx5TAGCFuoCIqbIQ==
X-Google-Smtp-Source: APiQypJ5A9CM3Ob4OXn4XWWblUTVqk+zAuAyVWAIgpRUXU7di1gR50JYOWdb6bfOss/zcEyE+jw/ig==
X-Received: by 2002:adf:fe03:: with SMTP id n3mr195558wrr.315.1586428179858;
 Thu, 09 Apr 2020 03:29:39 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:e1dc:4371:fecd:8292?
 ([2a01:e34:ed2f:f020:e1dc:4371:fecd:8292])
 by smtp.googlemail.com with ESMTPSA id e2sm6240723wrr.84.2020.04.09.03.29.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 03:29:39 -0700 (PDT)
Subject: Re: [RFC 0/8] Stop monitoring disabled devices
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-pm@vger.kernel.org
References: <20200407174926.23971-1-andrzej.p@collabora.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <2bc5a902-acde-526a-11a5-2357d899916c@linaro.org>
Date: Thu, 9 Apr 2020 12:29:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200407174926.23971-1-andrzej.p@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_032943_886063_782A2646 
X-CRM114-Status: GOOD (  30.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 platform-driver-x86@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Fabio Estevam <festevam@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>, linux-acpi@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, Darren Hart <dvhart@infradead.org>,
 Zhang Rui <rui.zhang@intel.com>, Gayatri Kammela <gayatri.kammela@intel.com>,
 Len Brown <lenb@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ido Schimmel <idosch@mellanox.com>, Jiri Pirko <jiri@mellanox.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 linux-arm-kernel@lists.infradead.org,
 Support Opensource <support.opensource@diasemi.com>, netdev@vger.kernel.org,
 Peter Kaestle <peter@piie.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Enrico Weigelt <info@metux.net>, "David S . Miller" <davem@davemloft.net>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDcvMDQvMjAyMCAxOTo0OSwgQW5kcnplaiBQaWV0cmFzaWV3aWN6IHdyb3RlOgo+IFRoZSBj
dXJyZW50IGtlcm5lbCBiZWhhdmlvciBpcyB0byBrZWVwIHBvbGxpbmcgdGhlIHRoZXJtYWwgem9u
ZSBkZXZpY2VzCj4gcmVnYXJkbGVzcyBvZiB0aGVpciBjdXJyZW50IG1vZGUuIFRoaXMgaXMgbm90
IGRlc2lyZWQsIGFzIGFsbCBzdWNoICJkaXNhYmxlZCIKPiBkZXZpY2VzIGFyZSBtZWFudCB0byBi
ZSBoYW5kbGVkIGJ5IHVzZXJzcGFjZSw+IHNvIHBvbGxpbmcgdGhlbSBtYWtlcyBubyBzZW5zZS4K
ClRoYW5rcyBmb3IgcHJvcG9zaW5nIHRoZXNlIGNoYW5nZXMuCgpJJ3ZlIGJlZW4gKHF1aWNrbHkp
IHRocm91Z2ggdGhlIHNlcmllcyBhbmQgdGhlIGRlc2NyaXB0aW9uIGJlbG93LiBJIGhhdmUKdGhl
IGZlZWxpbmcgdGhlIHNlcmllcyBtYWtlcyBtb3JlIGNvbXBsZXggd2hpbGUgdGhlIGN1cnJlbnQg
Y29kZSB3aGljaAp3b3VsZCBkZXNlcnZlIGEgY2xlYW51cC4KCldoeSBub3QgZmlyc3Q6CgogLSBB
ZGQgYSAnbW9kZScgZmllbGQgaW4gdGhlIHRoZXJtYWwgem9uZSBkZXZpY2UKIC0gS2lsbCBhbGwg
c2V0L2dldF9tb2RlIGNhbGxiYWNrcyBpbiB0aGUgZHJpdmVycyB3aGljaCBhcmUgZHVwbGljYXRl
ZCBjb2RlLgogLSBBZGQgYSBmdW5jdGlvbjoKCiBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUgdGhl
cm1hbF96b25lX2dldF9tb2RlKCAqdHopCiB7CgkuLi4KCWlmICh0ei0+b3BzLT5nZXRfbW9kZSkK
CQlyZXR1cm4gdHotPm9wcy0+Z2V0X21vZGUoKTsKCglyZXR1cm4gdHotPm1vZGU7CiB9CgoKIGlu
dCB0aGVybWFsX3pvbmVfc2V0X21vZGUoLi4qdHosIGVudW0gdGhlcm1hbF9kZXZpY2VfbW9kZSBt
b2RlKQogewoJLi4uCglpZiAodHotPm9wcy0+c2V0X21vZGUpCgkJcmV0dXJuIHR6LT5vcHMtPnNl
dF9tb2RlKHR6LCBtb2RlKTsKCgl0ei0+bW9kZSA9IG1vZGU7CgoJcmV0dXJuIDA7CiB9Cgogc3Rh
dGljIGlubGluZSB0aGVybWFsX3pvbmVfZW5hYmxlKC4uLiAqdHopCiB7Cgl0aGVybWFsX3pvbmVf
c2V0X21vZGUodHosIFRIRVJNQUxfREVWSUNFX0VOQUJMRUQpOwogfQoKIHN0YXRpYyBpbmxpbmUg
dGhlcm1hbF96b25lX2Rpc2FibGUoLi4uICp0eikgewoJdGhlcm1hbF96b25lX3NldF9tb2RlKHR6
LCBUSEVSTUFMX0RFVklDRV9ESVNBQkxFRCk7CiB9CgpBbmQgdGhlbiB3aGVuIHRoZSBjb2RlIGlz
IGNvbnNvbGlkYXRlZCwgdXNlIHRoZSBtb2RlIHRvIGVuYWJsZS9kaXNhYmxlCnRoZSBwb2xsaW5n
IGFuZCBjb250aW51ZSBraWxsaW5nIHRoZSBkdXBsaWNhdGVkIGNvZGUgaW4gb2YtdGhlcm1hbC5j
IGFuZAphbnl3aGVyZSBlbHNlLgoKCj4gVGhlcmUgd2FzIGFuIGF0dGVtcHQgdG8gc29sdmUgdGhp
cyBpc3N1ZToKPiAKPiBodHRwczovL2xrbWwub3JnL2xrbWwvMjAxOC8yLzI2LzQ5OAo+IAo+IGFu
ZCBpdCB1bHRpbWF0ZWx5IGhhcyBub3Qgc3VjY2VlZGVkOgo+IAo+IGh0dHBzOi8vbGttbC5vcmcv
bGttbC8yMDE4LzIvMjcvOTEwCj4gCj4gVGhpcyBpcyBhIG5ldyBhdHRlbXB0IGFkZHJlc3Npbmcg
YWxsIHRoZSByZWxldmFudCBkcml2ZXJzLCBhbmQgSSBoYXZlCj4gaWRlbnRpZmllZCB0aGVtIHdp
dGg6Cj4gCj4gJCBnaXQgZ3JlcCAidGhlcm1hbF96b25lX2RldmljZV9vcHMiIHwgZ3JlcCAiPSB7
IiB8IGN1dCAtZjEgLWQ6IHwgc29ydCB8IHVuaXEKPiAKPiBUaGUgaWRlYSBpcyB0byBtb2RpZnkg
dGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBhbmQgbW9uaXRvcl90aGVybWFsX3pvbmUoKQo+
IGluIHN1Y2ggYSB3YXkgdGhhdCB0aGV5IHN0b3AgcG9sbGluZyBhIGRpc2FibGVkIGRldmljZS4g
VG8gZG8gZGVjaWRlIHdoYXQgdG8KPiBkbyB0aGV5IHNob3VsZCBjYWxsIC0+Z2V0X21vZGUoKSBv
cGVyYXRpb24gb2YgdGhlIHNwZWNpYWxpemVkIHRoZXJtYWwgem9uZQo+IGRldmljZSBpbiBxdWVz
dGlvbiAoZS5nLiBkcml2ZXJzL2FjcGkvdGhlcm1hbC5jJ3MpLiBCdXQgaGVyZSBjb21lcyBwcm9i
bGVtOgo+IHNvbWV0aW1lcyBhIHRoZXJtYWwgem9uZSBkZXZpY2UgbXVzdCBiZSBpbml0aWFsbHkg
ZGlzYWJsZWQgYW5kIGJlY29tZXMgZW5hYmxlZAo+IG9ubHkgYWZ0ZXIgaXRzIHNlbnNvcnMgYXBw
ZWFyIG9uIHRoZSBzeXN0ZW0uIElmIHN1Y2ggdGhlcm1hbCB6b25lJ3MKPiAtPmdldF9tb2RlKCkg
LyogaW4gdGhlIGNvbnRleHQgb2YgdGhlcm1hbF96b25lX2RldmljZV91cGRhdGUoKSBvcgo+IG1v
bml0b3JfdGhlcm1hbF96b25lKCkgKi8gaXMgY2FsbGVkIF9iZWZvcmVfIHRoZSBzZW5zb3JzIGFy
ZSBhdmFpbGFibGUsIGl0IHdpbGwKPiBiZSByZXBvcnRlZCBhcyAiZGlzYWJsZWQiIGFuZCBjb25z
ZXF1ZW50bHkgcG9sbGluZyBpdCB3aWxsIGJlIGNlYXNlZC4gVGhpcyBpcwo+IGEgY2hhbmdlIGlu
IGJlaGF2aW9yIGZyb20gdXNlcnNwYWNlJ3MgcGVyc3BlY3RpdmUuCj4gCj4gVG8gc29sdmUgdGhl
IGFib3ZlIGRlc2NyaWJlZCBwcm9ibGVtIEkgd2FudCB0byBpbnRyb2R1Y2UgdGhlIHRoaXJkIG1v
ZGUgb2YgYQo+IHRoZXJtYWxfem9uZV9kZXZpY2U6IGluaXRpYWwuIFRoZSBpZGVhIGlzIHRoYXQg
d2hlbiB0aGUgZGV2aWNlIGlzIGluIGl0cwo+IGluaXRpYWwgbW9kZSwgdGhlbiBpdHMgcG9sbGlu
ZyB3aWxsIGJlIGhhbmRsZWQgYXMgaXQgaXMgbm93LiBUaGlzIGlzIGEgZ29vZAo+IHRoaW5nOiBz
aG91bGQgdGhlIHRlbXBlcmF0dXJlIGJlIGp1c3QgYWJvdXQgaGl0dGluZyB0aGUgY3JpdGljYWwg
dHJlc2hub2xkCj4gZWFybHkgZHVyaW5nIHRoZSBib290IHByb2Nlc3MsIGl0IG1pZ2h0IGJlIHRv
byBsYXRlIGlmIHdlIHdhaXQgZm9yIHRoZQo+IHVzZXJzcGFjZSB0byBydW4gdG8gc2F2ZSB0aGUg
c3lzdGVtIGZyb20gb3ZlcmhlYXRpbmcuIFRoZSBpbml0aWFsIG1vZGUgc2hvdWxkCj4gYmUgcmVw
b3J0ZWQgaW4gc3lzZnMgYXMgImVuYWJsZWQiIHRvIGtlZXAgdGhlIHVzZXJzcGFjZSBpbnRlcmZh
Y2UgaW50YWN0Lgo+IEZyb20gdGhlIGluaXRpYWwgbW9kZSB0aGVyZSB3aWxsIGJlIHR3byBwb3Nz
aWJsZSB0cmFuc2l0aW9uczogdG8gZW5hYmxlZCBvcgo+IGRpc2FibGVkIG1vZGUsIGJ1dCB0aGVy
ZSB3aWxsIGJlIG5vIHRyYW5zaXRpb24gYmFjayB0byBpbml0aWFsLiBJZiB0aGUKPiB0cmFuc2l0
aW9uIGlzIGZyb20gaW5pdGlhbCB0byBlbmFibGVkLCB0aGVuIGtlZXAgcG9sbGluZy4gSWYgdGhl
IHRyYW5zaXRpb24gaXMKPiBmcm9tIGluaXRpYWwgdG8gZGlzYWJsZWQsIHRoZW4gc3RvcCBwb2xs
aW5nLiBJZiB0aGUgdHJhbnNpdGlvbiBpcyBmcm9tIGVuYWJsZWQKPiB0byBkaXNhYmxlZCwgdGhl
biBzdG9wIHBvbGxpbmcuIFRoZSB0cmFuc2l0aW9uIGZyb20gZGlzYWJsZWQgdG8gZW5hYmxlZCBt
dXN0Cj4gYmUgaGFuZGxlZCBpbiBhIHNwZWNpYWwgd2F5OiB0aGVyZSBtdXN0IGJlIGEgbWFuZGF0
b3J5IGNhbGwgdG8KPiBtb25pdG9yX3RoZXJtYWxfem9uZSgpLCBvdGhlcndpc2UgdGhlIHBvbGxp
bmcgd2lsbCBub3Qgc3RhcnQuIElmIHRoaXMKPiB0cmFuc2l0aW9uIGlzIHRyaWdnZXRlZCBmcm9t
IHN5c2ZzLCB0aGVuIGl0IGNhbiBiZSBlYXNpbHkgaGFuZGxlZCBhdCB0aGUKPiB0aGVybWFsIGZy
YW1ld29yayBsZXZlbC4gSG93ZXZlciwgaWYgZHJpdmVycyBjYWxsIHRoZWlyIG93biAtPnNldF9t
b2RlKCkKPiBvcGVyYXRpb24gdGhlbiB0aGV5IG11c3QgYWxzbyBjYWxsICJtb25pdG9yX3RoZXJt
YWxfem9uZSgpIiBhZnRlcndhcmRzLgo+IFRoZSBsYXR0ZXIgYmVpbmcgYSBzZW5zaWJsZSB0aGlu
ZyBhbnl3YXksIHNvIHBlcmhhcHMgYWxsL21vc3Qgb2YgdGhlIGRyaXZlcnMKPiBpbiBxdWVzdGlv
biBkby4gVGhlIHBsYW4gZm9yIGltcGxlbWVudGF0aW9uIGlzIHRoaXM6Cj4gCj4gLSBlbnN1cmUg
QUxMIHVzZXJzIHVzZSBzeW1ib2xpYyBlbnVtIG5hbWVzIChUSEVSTUFMX0RFVklDRV9ESVNBQkxF
RCwKPiBUSEVSTUFMX0RFVklDRV9FTkFCTEVEKSBmb3IgdGhlcm1hbCBkZXZpY2UgbW9kZSByYXRo
ZXIgdGhhbiB0aGUgbnVtZXJpYwo+IHZhbHVlcyBvZiBlbnVtIHRoZXJtYWxfZGV2aWNlX21vZGUg
ZWxlbWVudHMKPiAtIGFkZCBUSEVSTUFMX0RFVklDRV9JTklUSUFMIHRvIHRoZSBzYWlkIGVudW0g
bWFraW5nIGl0cyB2YWx1ZSAwIChzbyB0aGF0Cj4ga3phbGxvYygpIHJlc3VsdHMgaW4gdGhlIGlu
aXRpYWwgc3RhdGUpCj4gLSBtb2RpZnkgdGhlcm1hbCB6b25lIGRldmljZSdzIG1vZGVfc2hvdygp
ICh0aGVybWFsIGZyYW1ld29yayBsZXZlbCkgc28gdGhhdAo+IGl0IHJlcG9ydHMgImVuYWJsZWQi
IGZvciBUSEVSTUFMX0RFVklDRV9JTklUSUFMCj4gLSBtb2RpZnkgdGhlcm1hbCB6b25lIGRldmlj
ZSdzIG1vZGVfc3RvcmUoKSAodGhlcm1hbCBmcmFtZXdvcmsgbGV2ZWwpIHNvIHRoYXQKPiBpdCBj
YWxscyBtb25pdG9yX3RoZXJtYWxfem9uZSgpIHVwb24gbW9kZSBjaGFuZ2UKPiAtIG1vZGlmeSBB
TEwgdGhlcm1hbCBkcml2ZXJzIHNvIHRoYXQgdGhlaXIgY29kZSBpcyBwcmVwYXJlZCB0byByZXR1
cm4KPiBUSEVSTUFMX0RFVklDRV9JTklUSUFMIGJlZm9yZSB0aGV5IGNhbGwgdGhlcm1hbF96b25l
X2RldmljZV9yZWdpc3RlcigpOyB3aGVuCj4gdGhlIGludm9jYXRpb24gb2YgdGhlIGxhdHRlciBj
b21wbGV0ZXMgdGhlbiBwb2xsaW5nIGlzIGV4cGVjdGVkIHRvIGJlIHN0YXJ0ZWQKPiAtIHZlcmlm
eSBBTEwgZHJpdmVycyB3aGljaCBjYWxsIHRoZWlyIG93biAtPnNldF9tb2RlKCkgdG8gZW5zdXJl
IHRoZXkgZG8gY2FsbAo+IG1vbml0b3JfdGhlcm1hbF96b25lKCkgYWZ0ZXJ3YXJkcwo+IC0gbW9k
aWZ5IHRoZXJtYWxfem9uZV9kZXZpY2VfdXBkYXRlKCkgYW5kIG1vbml0b3JfdGhlcm1hbF96b25l
KCkgc28gdGhhdCB0aGV5Cj4gY2FuY2VsIHBvbGxpbmcgZm9yIGRpc2FibGVkIHRoZXJtYWwgem9u
ZSBkZXZpY2VzIChidXQgbm90IGZvciB0aG9zZSBpbgo+IFRIRVJNQUxfREVWSUNFX0lOSVRJQUwg
bW9kZSkKPiAKPiBUaGlzIFJGQyBzZXJpZXMgZG9lcyBhbGwgdGhlIGFib3ZlIHN0ZXBzIGluIG1v
cmUgb3IgbGVzcyB0aGF0IG9yZGVyLgo+IAo+IEkga2luZGx5IGFzayBmb3IgY29tbWVudHMvc3Vn
Z2VzdGlvbnMvaW1wcm92ZW1lbnRzLgo+IAo+IFJlYmFzZWQgb250byB2NS42Lgo+IAo+IEFuZHJ6
ZWogUGlldHJhc2lld2ljeiAoOCk6Cj4gICB0aGVybWFsOiBpbnQzNDAwX3RoZXJtYWw6IFN0YXRp
Y2FsbHkgaW5pdGlhbGl6ZQo+ICAgICAuZ2V0X21vZGUoKS8uc2V0X21vZGUoKSBvcHMKPiAgIHRo
ZXJtYWw6IFByb3Blcmx5IGhhbmRsZSBtb2RlIHZhbHVlcyBpbiAuc2V0X21vZGUoKQo+ICAgdGhl
cm1hbDogU3RvcmUgdGhlcm1hbCBtb2RlIGluIGEgZGVkaWNhdGVkIGVudW0KPiAgIHRoZXJtYWw6
IGNvcmU6IEludHJvZHVjZSBUSEVSTUFMX0RFVklDRV9JTklUSUFMCj4gICB0aGVybWFsOiBjb3Jl
OiBNb25pdG9yIHRoZXJtYWwgem9uZSBhZnRlciBtb2RlIGNoYW5nZQo+ICAgdGhlcm1hbDogU2V0
IGluaXRpYWwgc3RhdGUgdG8gVEhFUk1BTF9ERVZJQ0VfSU5JVElBTAo+ICAgdGhlcm1hbDogb2Y6
IE1vbml0b3IgdGhlcm1hbCB6b25lIGFmdGVyIGVuYWJsaW5nIGl0Cj4gICB0aGVybWFsOiBTdG9w
IHBvbGxpbmcgRElTQUJMRUQgdGhlcm1hbCBkZXZpY2VzCj4gCj4gIGRyaXZlcnMvYWNwaS90aGVy
bWFsLmMgICAgICAgICAgICAgICAgICAgICAgICB8IDI4ICsrKysrLS0tLS0KPiAgLi4uL2V0aGVy
bmV0L21lbGxhbm94L21seHN3L2NvcmVfdGhlcm1hbC5jICAgIHwgMTEgKysrLQo+ICBkcml2ZXJz
L3BsYXRmb3JtL3g4Ni9hY2VyaGRmLmMgICAgICAgICAgICAgICAgfCAxNyArKysrLS0KPiAgZHJp
dmVycy90aGVybWFsL2RhOTA2Mi10aGVybWFsLmMgICAgICAgICAgICAgIHwgIDIgKy0KPiAgZHJp
dmVycy90aGVybWFsL2lteF90aGVybWFsLmMgICAgICAgICAgICAgICAgIHwgIDUgKy0KPiAgLi4u
L2ludGVsL2ludDM0MHhfdGhlcm1hbC9pbnQzNDAwX3RoZXJtYWwuYyAgIHwgMjQgKysrKy0tLS0t
Cj4gIC4uLi90aGVybWFsL2ludGVsL2ludGVsX3F1YXJrX2R0c190aGVybWFsLmMgICB8ICA2ICsr
LQo+ICBkcml2ZXJzL3RoZXJtYWwvb2YtdGhlcm1hbC5jICAgICAgICAgICAgICAgICAgfCAgOSAr
KystCj4gIGRyaXZlcnMvdGhlcm1hbC90aGVybWFsX2NvcmUuYyAgICAgICAgICAgICAgICB8IDUy
ICsrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy90aGVybWFsL3RoZXJtYWxfY29yZS5oICAg
ICAgICAgICAgICAgIHwgIDIgKwo+ICBkcml2ZXJzL3RoZXJtYWwvdGhlcm1hbF9zeXNmcy5jICAg
ICAgICAgICAgICAgfCAxMiArKystLQo+ICBpbmNsdWRlL2xpbnV4L3RoZXJtYWwuaCAgICAgICAg
ICAgICAgICAgICAgICAgfCAgMyArLQo+ICAxMiBmaWxlcyBjaGFuZ2VkLCAxMjMgaW5zZXJ0aW9u
cygrKSwgNDggZGVsZXRpb25zKC0pCj4gCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
