Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE28246FE6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 14:28:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FYotne+EP2CPXqn8Dfb+b3UdZceaR1O8ZagXsC+rMk4=; b=XOwgDyLs09r1+nmUe4LN0Y8AA
	ceULYtILK83OuYh2XGHxRaHLepMCMwEcbG6NfpH6Ub/WCD6Dei04miU3vWmTiBK8lDNH8Pmy+ew+E
	Z4XM7bwHUeGyS0wi2WiMeOf/1c2hskU9R6RdARykLPTveM3PjWpTyx1YDMxDNeQzsUXiPfPTTqiZZ
	UGaDrtm4JA5PkJeMTbt+K8wunHNKaukYaMAbq7k+h36MS3QBFQxqub5ArV5YaBd6Uy6Dzl8StpJqg
	HMPZbyBHr5LRNRj4DCP0vATjsoJJypagvRQ0bwFOAdR5P+hMbVH6niCtfSMvPnz5BvP6qsnYQfqHY
	z4gKfEPbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc7mo-00062o-61; Sat, 15 Jun 2019 12:27:58 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc7mg-00061l-Ji; Sat, 15 Jun 2019 12:27:52 +0000
Received: by mail-qt1-x841.google.com with SMTP id i34so365075qta.6;
 Sat, 15 Jun 2019 05:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=QUdqxVBPq9imgdnJQFYvha+M4qxrrCavKMcvFwAngs0=;
 b=UDpts2Za5LSrbJ/yfgjWjZhBeaGNbJ1yfqFAGTWkQ1DigQwdh9DGMeM9GU7DWUrbzq
 QAyru1WMZHQbpkmrJm0umxi1tiwp/kDh+JCmKedyXKKX5A3cyohbGF68U26bTm2S7APh
 YoY/miuENg9XcmcP7XlownN58xlST9RI8Nj7n74y9FNy2jugYHkDY8LRwgd131vR1Cxe
 0kduedLzbzsVRNFl/ZNJWbe6keStlaR+fJWvKIS48Yy7AOZ+D0IiYCj6zJ848cFI/1mG
 Cc5hRAgoM6xQGq60CyyDJm2Iwph6nU9v7y1ARG+vNCiwF6z0xr0z3CktK0VHFFTd6S7t
 tAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QUdqxVBPq9imgdnJQFYvha+M4qxrrCavKMcvFwAngs0=;
 b=gHxxCbXmNwZ3wkELGZWnuBCv9yO+gKDJ+5Q+oUxcM6GsB308SfZ/tXx2CxOrEZRAL9
 4nyJ1KG8fLnePKhZ80N1p+4kzguMpAyGTAEFafVEwQ/G+N/k0IfhFQeRQD2t5tP5qn9m
 vkYltfbuga/3eubiYNmyfjhy7fweF0tx5p8NyJwcckK/1X85NeQIGqz5ZGdtkNddY+TV
 nuZuCwkyDZRLj1+J6C15FzqjRmuJrdgVG7I9hxVtEWbWS1rNgwKJzYUvCZZfcXv5BEWO
 fygwSduVpZveurVgJylS1VOWhUFE7rYY1s3DTBj/ySMZzIrNUd8YpIdPBw7diVLb5HJl
 jckw==
X-Gm-Message-State: APjAAAU5aYXSllZkCg8jPgSYGo5vtndg2U5+hjTDrL9VmPxDIwiTrKJg
 DhNQQMDLAaZxqFwgzpjjSRaL7xRSE4MZeA==
X-Google-Smtp-Source: APXvYqxwct+cSu4cP4kyX4tb45S7fuhMl4vL0jeGlfeQbusi3lOjRa5CzRWC9r6WbJm1Rs2CmtOzAw==
X-Received: by 2002:ac8:3637:: with SMTP id m52mr71369587qtb.238.1560601666518; 
 Sat, 15 Jun 2019 05:27:46 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:d1e6:5a48:e4d5:c6a6?
 ([2601:153:900:ebb:d1e6:5a48:e4d5:c6a6])
 by smtp.gmail.com with ESMTPSA id t197sm2776531qke.2.2019.06.15.05.27.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 05:27:46 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: set TX PBL for rk3328-roc-cc gmac
To: Heiko Stuebner <heiko@sntech.de>
References: <20190417210059.26262-1-papadakospan@gmail.com>
 <1555938803.1241.1@gmail.com>
 <8ded737d-1fd5-3609-ca2e-cfeba63b2d95@gmail.com> <1619091.6MGD9gV0do@phil>
From: Peter Geis <pgwipeout@gmail.com>
Message-ID: <4210ab8d-291c-8c44-3c39-6a1849a73874@gmail.com>
Date: Sat, 15 Jun 2019 08:27:47 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1619091.6MGD9gV0do@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_052750_700438_35FEA60D 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/14/2019 5:26 AM, Heiko Stuebner wrote:
> Hi,
> 
> Am Donnerstag, 23. Mai 2019, 02:00:27 CEST schrieb Peter Geis:
>>
>> On 4/22/2019 9:13 AM, Leonidas P. Papadakos wrote:
>>>
>>> Indeed, at least with that first patch users won't have a crappy
>>> experience by default (ssh lags and the like)
>>>
>>>
>>
>> I apologize for taking so long at this, but I wanted to make sure I had
>> it right.
>>
>> So far I've found a few things that seem to help, and would like y'all
>> to test them when you get the chance.
>>
>> Adding snps,aal (configures DMA for address alignment) appears to make a
>> massive improvement to stability, although the the snps,txpbl = <0x4> is
>> still necessary for this to work.
>>
>> Second, I added snps,rxpbl = <0x4> as well, which seems to help with my
>> RX issues a bit.
>> The biggest improvement with these two settings is more stable transmit
>> and receive.
>> Currently I'm getting about 800mbps on tx and 400 mbps on rx.
>>
>> Please test when you get the chance and provide feedback.
> 
> I have to confess I lost track of the multitude of patches touching
> the gmac on rk3328 and their long mail threads in terms of which
> to pick up and which are considered superseeded.
> 
> So I'd really appreciate if you could resend the patches that matter
> and provide relevant Tested-by, Reviewed-by, etc tags from involved
> people that actually were able to test patches
> 
> Thanks
> Heiko
> 
> 

Good Morning Heiko,

Here's a quick catch-up for you:
Currently we use thresh dma mode to allow rgmii to work, but this has 
performance limitations.
Leonidas submitted the txpbl 0x4 patch, which works well for his board 
but my board has very poor performance with.
I submitted a new patch that combined txpbl 0x4 with aal dma mode, which 
fixes my issue and seems to work well for Leonidas.

That patch is under [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc 
rgmii performance.
I'd like more people to test it prior to submitting it to replace thresh 
dma mode.

If we get a few more tests without regression, I'll resubmit it with 
Tested-by tags for inclusion.

Thanks,
Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
