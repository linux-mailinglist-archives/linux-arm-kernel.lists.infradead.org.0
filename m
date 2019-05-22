Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F6B270C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 22:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPFUAbc+/Rxg1YxeHihOuXfnILQasOLTKi0Gphodktw=; b=LrSNUGvHXsBCeQ
	eLX4j9hkgqZbZgsxLbSIVTVW58/Asszn+QnTtWtoBweb7aPuYf7BuHUMVJMNFzQb1BwgDxAie0Y91
	Y7V8V0ANoZ6uK9hU5VEOxM6wjoXr1sP4JlOjAdRowE/KZTEjiTmn/4ndlf0f065nJ1pN86AIozS3b
	UTo+cZbdlTyDcv2I9DniMtOGmcc7KJ52R6mXKwXk1cJX9O/r+gGktuF0KErBsL23Rx8efCr6PeriA
	vc5h8mfb7lfWFwiZB0QifVpL6zro+R79tiWkBBF1NdW5eUptpd5ws+uO/nRsJlERyhKajtYNeUz8p
	KM+bkYctoTWlYItF45FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXix-00016p-Me; Wed, 22 May 2019 20:20:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXie-0000uH-Es
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 20:20:13 +0000
Received: by mail-wm1-x342.google.com with SMTP id i3so3483164wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 13:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qEdYjTYoNFLzgjswFP5rYpGuwvua1MCnzFrarxrCXWA=;
 b=K8YyCNy5HX/WRPqd7CgLqOZ28JUGIDkcdWIz5NGTKZNjxBZMiNG7dcmilplatXA8FU
 r5L6EhAVGeJ44hifVIr1gtnO/rU7ZTtNW5xWe2IHltp6awrxGB33pxsOkeGtqjmhDtAw
 S2Odlf/qP9I0mpKPunk+1/30rurxz3pINnhw2YQ2vDBYSGNeRkgJteT2Sc3exe2mMnMs
 une2ePVr4NEExEd9FQzfwRW3jB4yPJ3YekxqWXqpLuxrtTz6KjHhSV6GABR36en/8iq8
 LS76obD+wrrpryjBVhlnbb9SEbXapOagZoJKmBsb1ACCYFQPeYGOyR9azi0CrvVwvnm7
 KAuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qEdYjTYoNFLzgjswFP5rYpGuwvua1MCnzFrarxrCXWA=;
 b=pJIE4PhnaKg0PW54H5RIubAIUFD6nxHTPNr2APsO80UZkG9GPhdgti2maNfpaaFzNj
 zL1+quMuhTPv9YbScgN+LAByA/zZXgW0n9FrcTMFgNW0ivWrhcScjJVZ71LyFK7NtuTr
 WEd/5TdS7225O8/VoIB2gliwKFqC5sxIhx7DJQU1EDPZt+dmT4at97zbuzDy/ZZg7fq7
 C4hZrRmFfqh9iHOz2ZAQwRq18z5JaP7payoWD2CHDg1Qr3qYeRa4ykfArqoV8oTmxijZ
 RolEHHMGFy6iA9vxd9LvDumoZv8O15YWlpTtx4NqwRgZwRAqlEYpwtM3nBN/rbTWLjX/
 OAGw==
X-Gm-Message-State: APjAAAVbj96rynd4Mq119SQwFbdv/niivN1XIya2fW5c7tSuBnWlDT3n
 CxSkO7buNaybCUPFXXCqhXw=
X-Google-Smtp-Source: APXvYqygQlSb/ahi64ZRhl2M6lSR3aaHbFN1pQ3r9VzMRnBBkifgwpXTevDJ1hTCyZVOiRKL6uT8bg==
X-Received: by 2002:a1c:a982:: with SMTP id s124mr6924275wme.143.1558556411044; 
 Wed, 22 May 2019 13:20:11 -0700 (PDT)
Received: from ?IPv6:2003:ea:8bd4:5700:3029:8954:1431:dc1e?
 (p200300EA8BD45700302989541431DC1E.dip0.t-ipconnect.de.
 [2003:ea:8bd4:5700:3029:8954:1431:dc1e])
 by smtp.googlemail.com with ESMTPSA id s62sm1411819wmf.24.2019.05.22.13.20.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 13:20:10 -0700 (PDT)
Subject: Re: [PATCH net-next 1/2] net: phy: add interface mode
 PHY_INTERFACE_MODE_USXGMII
To: Florian Fainelli <f.fainelli@gmail.com>,
 Madalin-cristian Bucur <madalin.bucur@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andrew Lunn <andrew@lunn.ch>, David Miller <davem@davemloft.net>
References: <110a1e45-56a7-a646-7b63-f39fe3083c28@gmail.com>
 <aca070f6-f56b-1b1f-180a-ddf52af91ecb@gmail.com>
 <d736f2d8-5c2a-e624-e372-cc2dd7b29f3c@gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <101b6cff-797b-1d06-17d3-045d56aa0de3@gmail.com>
Date: Wed, 22 May 2019 22:20:05 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <d736f2d8-5c2a-e624-e372-cc2dd7b29f3c@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_132012_494931_70601CA7 
X-CRM114-Status: GOOD (  12.50  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hkallweit1[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hkallweit1[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22.05.2019 22:06, Florian Fainelli wrote:
> On 5/22/19 12:57 PM, Heiner Kallweit wrote:
>> Add support for interface mode PHY_INTERFACE_MODE_USXGMII.
>>
>> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> 
> If you update Documentation/devicetree/bindings/net/ethernet.txt, then
> this is:
> 
Indeed, that's missing. Thanks for the hint.

> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
