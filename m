Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8CE13BB43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 09:38:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RpFHXwC9v6dFti38ZvI8o3++hlLIIwjDqlgEWzeLzh8=; b=ex2uHPIlD5w+HlXM1hT887X1D
	P29p2LjemalIUt/obZCOJYNVWrtIKRi3jX5+821WIE2v007syrcJPOBu9srCmcAgufRpU1nmeKAgb
	sqHoSFE2U4g+PAkLz4eFgoTEuaHe50VYgrcplgI7WKSTF2axUHUSzn3GuQAO193lRSOsfFRzLI3Fi
	0AYpxoBrijX+1JvLt2Ia2atf8ttEAF1M21rQpweVaauRB+1YBKFkFjXFJaO+iHnch+MJCETimhS90
	WWtcVJ91dEGJrXqn+0mK57l62eUiI93jYlJ+ye+Yt4Aai/DcqgOZlJV+uvB0WJschqBMg5EiN8Ecf
	qePhLVoMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ireC4-00018g-PZ; Wed, 15 Jan 2020 08:38:28 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ireBs-000184-Gm
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 08:38:22 +0000
Received: by mail-lf1-x141.google.com with SMTP id i23so12018677lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 00:38:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Z0Y12tBy5eHi+yDV3iOK2P12WSwrSuIg90dqSAJA2T4=;
 b=Tf8LClkB0ZUJCGuLC+5MpLYSkUH7UBpfaoOm+/PGEgceH77ZPdtByVSfH4gYjSFFHz
 dq9WiP/7yMggg5AgRClKW2NtejridSdj81v//yZE1KeP6Nf8bN4vpxxkUL2ruLtOuoCI
 mFyAXKLR4JAqvc816zOLqJv1RkAemI/ebzLSD2m1QLwQoNYvYd3HpwgqziJqShvVJMus
 EM42YKaQleoHSI7kIM0S8l+/MY6YrOG3U/Fd9qDzJ+mp3rlQL57N7D+vZmFgHPdPPTOH
 y4YzByZDA06/nqJElB/StzgYBD1t5QLNHJrhKxjzrC1ise/GK04YQNoCQrQLdBM7Oa6y
 x+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Z0Y12tBy5eHi+yDV3iOK2P12WSwrSuIg90dqSAJA2T4=;
 b=dmLwHD59S55IrUwqRnTdUTGNVFEf8pSI0HEsHUAAvYVZRBRG/bOaiK1Abq2FXVgtlP
 7+o3IooQdjP/ijbzCZPc1bCbzb5wcAcyF4vEBreeAvTXDzGhFtv89M2TA5XSke/vkylT
 yR4t+QnMyI9pTEm9ne0WUmnFi2wzsUrqwEwFNYzLaiFjwDuyaWANlEUrraMP+l0ZLmKm
 GhT9I9mMY1VkjZmwg4Hd9pABl7sjMdTncKW09/do2DXohGVx2/RFPMrzfP0Od+ImjKk0
 2hv64Wwt+jfiCALEJr7YEbNxnvgv/VETAdqZkeBh+2AyOtMuuH8YttQG4j/O32aTeirw
 juCw==
X-Gm-Message-State: APjAAAV2G/IPqLGugjUZO+EFnul6IGZc94PFrbElqwwUA3G3LgfkKcn8
 BAD4aGNOS4GvuQBb/7u1K6fbXQ==
X-Google-Smtp-Source: APXvYqwQSXHAfen8Vudqq6AYTOO6wkq4LHdkhdZsD9ais6oFiejiQPMt9LksuasNK6KC87IZni441A==
X-Received: by 2002:a19:4b87:: with SMTP id y129mr4124726lfa.32.1579077494150; 
 Wed, 15 Jan 2020 00:38:14 -0800 (PST)
Received: from ?IPv6:2a00:1fa0:426b:3345:a13e:7db5:2067:8d62?
 ([2a00:1fa0:426b:3345:a13e:7db5:2067:8d62])
 by smtp.gmail.com with ESMTPSA id q17sm8841744ljg.23.2020.01.15.00.38.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 00:38:13 -0800 (PST)
Subject: Re: [RFC][PATCH] ARM: dts: renesas: Add missing ethernet PHY reset
 GPIO on Gen2 reference boards
To: Chris Paterson <Chris.Paterson2@renesas.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Marek Vasut <marek.vasut@gmail.com>
References: <20200112191315.118831-1-marek.vasut@gmail.com>
 <CAMuHMdWc97=-9yBF0CJDZpWH9ZGX9uoDY_t6E6TQNc4MO93W_w@mail.gmail.com>
 <cfb752e0-46b5-1936-c3f1-8c6d781bebb5@gmail.com>
 <CAMuHMdWeo3awiD7iAfWFXc01isnmsBc6CuQ6X4s3CO7pNXjfJA@mail.gmail.com>
 <TYAPR01MB228521B36B1B1DC67F187663B7370@TYAPR01MB2285.jpnprd01.prod.outlook.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <9c687d6b-cbec-2c30-4e4e-39ac57bcca60@cogentembedded.com>
Date: Wed, 15 Jan 2020 11:37:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <TYAPR01MB228521B36B1B1DC67F187663B7370@TYAPR01MB2285.jpnprd01.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_003816_736228_721C6914 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8hCgpPbiAxNS4wMS4yMDIwIDExOjI2LCBDaHJpcyBQYXRlcnNvbiB3cm90ZToKCj4+PiBP
biAxLzEzLzIwIDk6NTggQU0sIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPj4+Pj4gICBhcmNo
L2FybS9ib290L2R0cy9yOGE3NzkwLWxhZ2VyLmR0cyAgIHwgMSArCj4+Pj4+ICAgYXJjaC9hcm0v
Ym9vdC9kdHMvcjhhNzc5MC1zdG91dC5kdHMgICB8IDEgKwo+Pj4+PiAgIGFyY2gvYXJtL2Jvb3Qv
ZHRzL3I4YTc3OTEta29lbHNjaC5kdHMgfCAxICsKPj4+Pj4gICBhcmNoL2FybS9ib290L2R0cy9y
OGE3NzkxLXBvcnRlci5kdHMgIHwgMSArCj4+Pj4+ICAgYXJjaC9hcm0vYm9vdC9kdHMvcjhhNzc5
My1nb3NlLmR0cyAgICB8IDEgKwo+Pj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3I4YTc3OTQtYWx0
LmR0cyAgICAgfCAxICsKPj4+Pj4gICBhcmNoL2FybS9ib290L2R0cy9yOGE3Nzk0LXNpbGsuZHRz
ICAgIHwgMSArCj4+Pj4KPj4+PiBJIGJlbGlldmUgYWxsIG9mIHRoZSBhYm92ZSAoZXhjZXB0IGZv
ciBzdG91dCkgYXJlIGF2YWlsYWJsZSBpbiBNYWdudXMnIGZhcm0uLi4KPj4+Pgo+Pj4+IHI4YTc3
NDMtc2stcnpnMW0uZHRzIGFuZCByOGE3NzQ1LXNrLXJ6ZzFlLmR0cyBuZWVkIHNpbWlsYXIgY2hh
bmdlcyBhcwo+Pj4+IHI4YTc3OTEtcG9ydGVyLmR0cyByZXNwLiByOGE3Nzk0LXNpbGsuZHRzLgo+
Pj4KPj4+IERvIHlvdSBoYXZlIHRob3NlIHR3byBib2FyZHMgLyBjYW4geW91IHByZXBhcmUgYW5k
IHRlc3QgYSBwYXRjaCA/Cj4+Cj4+IEkgZG9uJ3QgaGF2ZSB0aG9zZSBib2FyZHMsIGFuZCB0aHVz
IGNhbid0IHRlc3QgdGhlbS4KPiAKPiBTb3JyeSwgSSBkb27igJl0IGVpdGhlci4gUGVyaGFwcyBT
ZXJnZWk/CgogICAgTWUgbmVpdGhlciwgSSBvbmx5IGhhdmUgUG9ydGVyIGFuZCBTSUxLLgoKPiBD
aHJpcwoKTUJSLCBTZXJnZWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
