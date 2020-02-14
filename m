Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B22515F8E1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 22:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Pb87Ip+nRN25/MBY1sHaPyKcyAft/HrjE7Ex4rz5f4Q=; b=sT3NeeCFuIGWtdmft74kyw3j3
	ydd4dBDGPb5o2pMFJdIXdHl1xZkWi49ZYjDNaiMpV2hJ4sfx/sBdHcIh/EP4AesPLYMUAsv/bfcoE
	UQMRJCyUY3qTO0gDI78gPQM51r1lUf4RdmVubUqR8jXFiXISl7fGJsqfYOsvJbMxRPIGDAOhj0SFg
	GHu07Xq4Ur4zFK+BU/tUTzV//RgIvSHP43/9cPvZ1KeyG5f+wiGOIVqi3Kr1sgOwPXx5Vlbq7sZo0
	+bU6afza+8H1/cWRccrETeyhwiPRyN0nvtrX12OlinwAzwrXGuRc2GUnvL8q4hvqCE951Fn6lMIfu
	+BkAWKuZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2imB-0004Wu-G8; Fri, 14 Feb 2020 21:45:31 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2im4-0004WO-Fo
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 21:45:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id u12so5227471pgb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 13:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=X3k++zPE+sJUaSkRsR90u7Z+waK86MTRLdYHtDYo8Qc=;
 b=TGx6y5fUThAzKiGPPrR1HboWlMJPoX8PWImpJR2kFuB1x16oearTlMiGq9UDt+pzef
 cpJ62eFdDnZww/gDwXGJx8uAQ7rHWPRcmgBGdVwwLWLCkbI6cW6rgD8Rid8XMTKfsKu8
 sjAwaKbDNN7PitVT+CfYr7pBMcCIBhvEJLL5s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=X3k++zPE+sJUaSkRsR90u7Z+waK86MTRLdYHtDYo8Qc=;
 b=sRtJiL8BzO+54xHvZC9hMB0NhNtymJv2t52PH9pSGvRPAFnQJwM33IF4SDUdOwBKS8
 MuhmqCsb7d2IRi5uksWgMwmIsewAGchqKIGpcs9pR/sUvTA/35JqeYgzUGqykF4jrc72
 5Zm58O3rEvsHVNtIHDEbP1EAxWvIrtpp2eaLKb9Cs/SM1HHNmxfyrc2ejSQ5S9XOTiIt
 PkR6l7jIDW7dM0fD6v7Lk0Wbc5N47z2w6KdpQfmV+0WPq3e/VGQFzg4ctspy1VTCYuS2
 e3kYEGl9OZeUkLsv1doHp9dKI4DHqaQvEpLCxdxy0crlfXJTMd69B0/n+H+8z6GP8svY
 Gb5A==
X-Gm-Message-State: APjAAAX+uilaUNDX6K4XSjMVUrwG7s4X+xWKFjJRKNk0BuJxEszHmMMS
 8PQdgYRTtLfn6+dS97GT+IdVgz5abz1XOA8vNefIFSUfKnInZyYYuy51b4CEipv6VwA0QZ5pLN0
 3e/o16bbGHab5tZoSjGdrQTw0SnI/NpPbCbmEaNbF1XAs8EHMAT/s6pSbAuPV9hRd4RuHzEATYd
 J3o9yFlm8BM30+S2WysfeTsQ==
X-Google-Smtp-Source: APXvYqyzZJJFq1c38QhMNLslqHWYMOZuNFRjjazVVBYOiWk75QGD9U6hjRqAr9JRahny+PHXEzOwww==
X-Received: by 2002:a62:16d0:: with SMTP id 199mr5436500pfw.96.1581716723255; 
 Fri, 14 Feb 2020 13:45:23 -0800 (PST)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id m128sm8165821pfm.183.2020.02.14.13.45.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Feb 2020 13:45:22 -0800 (PST)
Subject: Re: [PATCH] net: phy: restore mdio regs in the iproc mdio driver
To: Florian Fainelli <f.fainelli@gmail.com>, Andrew Lunn <andrew@lunn.ch>
References: <20200214194858.8528-1-scott.branden@broadcom.com>
 <20200214203310.GQ31084@lunn.ch>
 <2b0ef4fc-c3a1-9aeb-2e86-31e9de7a19eb@gmail.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <5ce01f06-c116-06f1-d60b-549024cc8864@broadcom.com>
Date: Fri, 14 Feb 2020 13:45:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <2b0ef4fc-c3a1-9aeb-2e86-31e9de7a19eb@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_134524_531965_4ADFF669 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ray Jui <rjui@broadcom.com>,
 Arun Parameswaran <arun.parameswaran@broadcom.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAyMDIwLTAyLTE0IDEyOjM3IHAubS4sIEZsb3JpYW4gRmFpbmVsbGkgd3JvdGU6Cj4gT24g
Mi8xNC8yMCAxMjozMyBQTSwgQW5kcmV3IEx1bm4gd3JvdGU6Cj4+IE9uIEZyaSwgRmViIDE0LCAy
MDIwIGF0IDExOjQ4OjU4QU0gLTA4MDAsIFNjb3R0IEJyYW5kZW4gd3JvdGU6Cj4+PiBGcm9tOiBB
cnVuIFBhcmFtZXN3YXJhbiA8YXJ1bi5wYXJhbWVzd2FyYW5AYnJvYWRjb20uY29tPgo+Pj4KPj4+
IFRoZSBtaWkgbWFuYWdlbWVudCByZWdpc3RlciBpbiBpcHJvYyBtZGlvIGJsb2NrCj4+PiBkb2Vz
IG5vdCBoYXZlIGEgcmVlbnRpb24gcmVnaXN0ZXIgc28gaXQgaXMgbG9zdCBvbiBzdXNwZW5kLgo+
PiByZWVudGlvbj8KPiBSZXRlbnRpb24gcHJlc3VtYWJseS4KWWVzLCB0eXBvLsKgIFdpbGwgZml4
IGNvbW1pdCBtZXNzYWdlLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
