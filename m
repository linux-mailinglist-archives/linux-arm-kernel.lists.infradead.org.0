Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B91C71A35D2
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 16:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r021biw5Hs+6wZDYKAEuN0d63DyFnwIWiJkxNK3d5x0=; b=D8e/AO+/wsmAMf
	7p6DSooEihq7CeDxCU0iBNld7GhAgsHUr1rzM6D8dxz15e0ugTbQIC+DmvFydP58vWPnMb7/tgmkW
	Z4l2ChlKEbm3y0g18XBgBx7p7lN/BHSfg1og3eiTcaQ9kgnwnDJ5dr78q4aCqWTcG7KPvXxhStwxR
	8Pgla5y4puL0zd9Ztp0OyV5P+vw1o4gJxiQr40iAjMp+Dvn5EhsfmmXQoGXm2U5p89afU8rc5a2Va
	p9JRdsDJoAADGwktvXftlgZfoyDAC8uyF7002FACC896yTUB5F398rRuypL8ADOw3sTa+tOZd2Sz6
	eSBY7URZdlHE06p+Pe3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMY7T-00040d-Ei; Thu, 09 Apr 2020 14:25:27 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMY7K-000400-5P
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 14:25:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id p10so12129720wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 07:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hVgUHgV3VoeLO68SskiDyyikoajLuaasMV5OOMTJ1v4=;
 b=nCyoWdwe3PmkweQA5JMtgtulprc4Mf6In1oBwKbEAER1VXAet8m4/cjlS0eS1lLh1T
 iazUQa5QMi942OTDqTXftjM9q3nxKlb+XM1HZv70Fcus8nTkPF/3374v0ET8RMbtamsP
 2vCXa3P1rEmk9lsGCAIUteUqtlDr4y2ya3tTu7N+x6byrDyGXI1ed3E54P7f+/S/tNol
 D7roPHguIFdPVRBD4cG+ZI0nvXWBLP5FF8PLJ7QGCfEMAhkAJp3aA6sIOjq4i4VlEWHA
 VjwY69EiCjefKOStpyYKkjUVLjrmLA2hW+1YxEh9Lpm5psudmhS8xHUu3dgx+tDXd3Wo
 xqSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hVgUHgV3VoeLO68SskiDyyikoajLuaasMV5OOMTJ1v4=;
 b=IQLfCvl5Kq/t4jGDN2e6gTM42K5Rc3d8figYfj9O+GfrTPSYYIY5Ed1OqP3QHBwBzO
 HDCGYC+tQnS4DG9WhmghU9e8/FTbVC5mwFTExFDpLWwLNHAD7xgzPKrZjkxt/JpeSYkw
 4c1kB6UtACxmgQO7NPw9ixZe9qPUfL0RSdo/dE7qLCSm/UJER12a+f08tTU84vK0lc7p
 JAPiwjeZnecVOMWVMXdxnwJjrCtrpQQmRhhoDMxerQt/3l89LgfJtnYcIVx/EU3pDhUv
 F7NJwVjk7f7MsYI/BWDk8jpzBxrDt9LO2uUr54U3ehdzmuC3YebQyc5wGFaT43GdEHOC
 Q1hg==
X-Gm-Message-State: AGi0PuZG8vWLeA8pd46dXa6aT7oOQGKybjp1oKg8C6vxAX5/6xyovTzl
 IMeqRKt+b42H2m0JEWK5AWEd7g==
X-Google-Smtp-Source: APiQypLhIJuLtIm19LGDns/lGF1tq3Yz74jzoz1rFWszqhaKG0wwZZIwzA8p3Yu/IF6CFOmrrGzeYw==
X-Received: by 2002:a5d:69ca:: with SMTP id s10mr14558267wrw.260.1586442316641; 
 Thu, 09 Apr 2020 07:25:16 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda?
 ([2a01:e34:ed2f:f020:4e:2ab3:ef46:7bda])
 by smtp.googlemail.com with ESMTPSA id l185sm3787534wml.44.2020.04.09.07.25.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 07:25:15 -0700 (PDT)
Subject: Re: [PATCH] clocksource/drivers/imx-tpm: Add support for ARM64
To: Anson Huang <Anson.Huang@nxp.com>, tglx@linutronix.de,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <1585715222-24489-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <0ce6137e-1af3-b867-069d-a070c4afd140@linaro.org>
Date: Thu, 9 Apr 2020 16:25:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1585715222-24489-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_072518_729263_EC47E180 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDEvMDQvMjAyMCAwNjoyNywgQW5zb24gSHVhbmcgd3JvdGU6Cj4gQWxsb3dzIGJ1aWxkaW5n
IGFuZCBjb21waWxlLXRlc3RpbmcgdGhlIGkuTVggVFBNIGRyaXZlciBhbHNvCj4gZm9yIEFSTTY0
LiBUaGUgZGVsYXlfdGltZXIgaXMgb25seSBzdXBwb3J0ZWQgb24gQVJNdjcuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQW5zb24gSHVhbmcgPEFuc29uLkh1YW5nQG54cC5jb20+Cj4gLS0tCgpBcHBsaWVk
LCB0aGFua3MKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8v
d3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVy
LmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFy
by1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
