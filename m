Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4A11E77DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 10:06:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KyriSshJttZRnaaKiu36Kee0NwVYBXV7GTKDth9jVVA=; b=e5LC+1DVtHF4S/
	o3JOQBQhr7sib9NPceJaovIu/vuTKVib+z4mEQXPpkqX0lpLUV+DVYfqfQTNkOm9qSkBGADAbRuIu
	xRW7x+UoKPoPjAlN4kqTAQ2rRMCQDXaDmD+Vf3wXC/uv75IfKq7s1hdmXgOQOdBbbQKBv2dwvGGrR
	CxxNVigtMrlVJWsgxT/QshPf4DQl0c8Tadta3doZbSIDc4ZhqvJE6L0Rt2bax2SnQMitTLxuum1YL
	xfhkbz6Z5X/drlVgyXgbskv4r4lYOqTLP0OwWedECRowmgUYC/hdtXd4lK2rPw1VA+uoqRpRI4Yo0
	f/opvMrb+c+w3ItM+5RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jea24-00059P-Fu; Fri, 29 May 2020 08:06:24 +0000
Received: from mail-ej1-f68.google.com ([209.85.218.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jea1Z-0004su-0d
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 08:05:56 +0000
Received: by mail-ej1-f68.google.com with SMTP id x1so1166929ejd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 01:05:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=aH7E55+g7tLuSmdUOuHD3M6Gj2I7pkdvk/bOkBrFD9s=;
 b=P+Xbuw00YGb+114rve2iT2u3ZyaUb5KnMeseqgbu3Ri4GI0s3OWAQmyuYwDEwQw9e/
 appJrsuh/PGvmQ/IILC/5z4HXzj1uqYXeYb3ih5MuyyfUvj3hq+qxBRmMhRu8EUv0GsD
 r33sby6J2UxT/w8ulUjqBBuBywGZsTVZkS7X5Bllir2ABOCMxxratgV4wNMXWfaDBuyR
 uDrroOMmFa+FEwcCr8/qNkIohc+FYBOjeDxrX9/ADb3UHcHzcVptOKzqUB6rhvv4OeAY
 VxsuYAxgX/kboUE8RWEapgeKLqsNZdjkSj25q+PkI7aahfbnBuY6E8k1QzFOGI2FMlwK
 kTuw==
X-Gm-Message-State: AOAM531uDzUFr3dbP3Hk1t+855jKcJokJLkoia6K5YG0liCaX0lBfh56
 MzRZGeB46mnCx512cf4qzr4=
X-Google-Smtp-Source: ABdhPJx+ramGOxadWDDPayrB2z7pr/lamG6HZzIkpX+Z0OBDsG27LJ9P+Xa/l75LOv7pVv0uNZiXIQ==
X-Received: by 2002:a17:906:70ca:: with SMTP id
 g10mr6704592ejk.171.1590739550084; 
 Fri, 29 May 2020 01:05:50 -0700 (PDT)
Received: from kozik-lap ([194.230.155.118])
 by smtp.googlemail.com with ESMTPSA id k90sm6207616edc.2.2020.05.29.01.05.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 29 May 2020 01:05:49 -0700 (PDT)
Date: Fri, 29 May 2020 10:05:46 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>
Subject: Re: [PATCH v10 10/10] arm64: dts: Add node for ufs exynos7
Message-ID: <20200529080546.GB23221@kozik-lap>
References: <20200528011658.71590-1-alim.akhtar@samsung.com>
 <CGME20200528013245epcas5p37851891649512882c7b1ffb5f903c506@epcas5p3.samsung.com>
 <20200528011658.71590-11-alim.akhtar@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528011658.71590-11-alim.akhtar@samsung.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_010553_074353_F26B157E 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.218.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.218.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [k.kozlowski.k[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: robh@kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, cang@codeaurora.org,
 stanley.chu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDY6NDY6NThBTSArMDUzMCwgQWxpbSBBa2h0YXIgd3Jv
dGU6Cj4gQWRkaW5nIGR0IG5vZGUgZm9lIFVGUyBhbmQgVUZTLVBIWSBmb3IgZXh5bm9zNyBTb0Mu
Cj4gCj4gU2lnbmVkLW9mZi1ieTogQWxpbSBBa2h0YXIgPGFsaW0uYWtodGFyQHNhbXN1bmcuY29t
Pgo+IFRlc3RlZC1ieTogUGF3ZcWCIENobWllbCA8cGF3ZWwubWlrb2xhai5jaG1pZWxAZ21haWwu
Y29tPgo+IC0tLQo+ICAuLi4vYm9vdC9kdHMvZXh5bm9zL2V4eW5vczctZXNwcmVzc28uZHRzICAg
ICAgfCAgNCArKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2V4eW5vcy9leHlub3M3LmR0c2kgICAg
ICAgfCA0MyArKysrKysrKysrKysrKysrKystCgpUaGFua3MsIGFwcGxpZWQgdG8gbmV4dC9kdC1s
YXRlLiBJdCBtaWdodCBtaXNzIHRoaXMgbWVyZ2UKd2luZG93IGFuZCBpbiBzdWNoIGNhc2UgSSB3
aWxsIGtlZXAgaXQgZm9yIHY1LjkgY3ljbGUuCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
