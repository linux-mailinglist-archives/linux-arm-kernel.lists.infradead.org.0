Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F53129F81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 10:02:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M7ZrNzJHLkzlqEzpo9Jw4f17RLdIDR5webJLCDxxnCQ=; b=nDjYY+7KUB5w7CtwLTxtaAgXn
	mDKovbKnRhAEoZy111UvHu5ZcG3ZsTYYUFpQ1dwJsZBrQ4/sxpwm4Ms/FHfNT1UJTxDQKwVrW/ICH
	v4wyzwAroBvt2AvfkjeGeCe3iJtFZmCqkGBEETeyTNciq6uHCjoVnyp0pCroRFTQbkSVZSWtVNJ3d
	LuWz7ZxwZrqqKwTm0n88tvAK/FUV7k/e1WV5Yn6OznaYdluzhOqbjIiA4Ir+tMLFY5ZF6D1175pAb
	r9Xx4zXsk5Wb30x4xqTdy8A51JHYdXBAuPOVKTrmTyOFyMDQzMsLCnT4LURyDUhub3ZsJkXHIr5pT
	3Ygv7YKeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijg52-0000Qp-4B; Tue, 24 Dec 2019 09:02:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijg4n-0000P7-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 09:02:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so1868604wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Dec 2019 01:01:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JpIUPsCQ4mUZV8clqM6x3//3zxhuxnyUCEItvWS4lIE=;
 b=EJ2m8BgGEtcQm8iSYsrb6jbllbscoKNSW55IMHI0wPcev4mLznd5VMRKwg2/sTmJx7
 6B0CFsO0Hi5zcoPBFR5UJazH++6qulEdmR+LgsQTpX43ge6h4U8J8ZJNVTYRJqa9zOoX
 KHYdGmdBFl3qmjTINlKlX73vsGbpXDplIawOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JpIUPsCQ4mUZV8clqM6x3//3zxhuxnyUCEItvWS4lIE=;
 b=s5crMWSMuVL4VHOzRdXNEEYj03tq3wqyxfopMlKuomYlVoLJKd8w61NmtkD/sTneXK
 JqRAurWkRqSUY/Wc/CLYZdjH3iO8QwKv+N3ajTPoFddiw6f71M+AzjvcNHnyZGIhSmiC
 uXqNKHLnU8z1aHBw/CCvsuFQI5v6NbmH0tvgDR0txNAh7FKOBfS9S2uMa8DB21YpH2ew
 l5hW7VYWTJa5ZdwOfKaYvQIqSpp8Vato9R4rrxjCRJwLrpzuOZfBAGpgVCOrvtastTsg
 Ok1+LYrUU4N/bD+0p1R6FX+dFpc6WTZIKSxWiQJtlR6B6XTR8s7eKEZzLxJd7yu7Ppkn
 hDCA==
X-Gm-Message-State: APjAAAXenvgPA0RRjbTMyP4YNK/AEFKnhrtQV9i2Z9Q+1/hIutKbCg1c
 LwBuspzUv4LMXR6mSngdkABVkQ==
X-Google-Smtp-Source: APXvYqwaDJpckqJ1JrVbZPbh8vFZ6XADgxx76CNzAlm8TnNSIoHONxdbgCmk6gW2sYiAbh73ok449A==
X-Received: by 2002:a1c:4b01:: with SMTP id y1mr3010277wma.12.1577178118405;
 Tue, 24 Dec 2019 01:01:58 -0800 (PST)
Received: from [10.230.41.59] ([192.19.215.251])
 by smtp.gmail.com with ESMTPSA id v22sm1942400wml.11.2019.12.24.01.01.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 24 Dec 2019 01:01:57 -0800 (PST)
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
To: Christian Hewitt <christianshewitt@gmail.com>, Soeren Moch <smoch@web.de>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
 <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Message-ID: <3c42d6de-670d-fee8-aa81-99f44d447e87@broadcom.com>
Date: Tue, 24 Dec 2019 10:01:56 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_010201_287584_F876BF70 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: brcm80211-dev-list.pdl@broadcom.com, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 brcm80211-dev-list@cypress.com, Kalle Valo <kvalo@codeaurora.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/22/2019 5:35 AM, Christian Hewitt wrote:
> 
>> On 19 Dec 2019, at 2:04 am, Soeren Moch <smoch@web.de> wrote:
>>
>> I guess you need similar enhancements of the board device tree as in
>> patch 8 of this series for your VIM3 board.
> 
> Wider testing now points to a known SDIO issue (SoC bug) with Amlogic G12A/B hardware. The merged workaround for the bug was only tested with bcmdhd and brcmfmac may require tweaking as the same issue exhibits on an Amlogic G12B device with BCM4356 chip. Testing the series with Amlogic GXM (older) and SM1 (newer) hardware to exclude the SoC bug shows everything working as expected.

Hi Christian,

Can you elaborate on the "known SDIO issue"? Is it an issue with ADMA or 
something else. I am asking because there is a workaround in brcmfmac to 
avoid scatter-gather lists, which may or may not address the issue.

Regards,
Arend

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
