Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2288C14AA75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 20:28:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxGrYEkIotmRpfoy9pndYH2B6vHcRkGu6soH02dWyIU=; b=NDakoWHrw8Xv7d
	zp15IVNRQD0CIAX8zGdBvutiaaPiqjKHee2Xtlu1aOuzc+4EtvOHbD0cfQxnKLKM0h+Hped8jaTwm
	SO8IG3mmfDA2L6mJZ+++yqs+K6Qz0vaUzNShFZae9Vk3QuYk5mVxqvEjH1Jo6px892n9DCUdMeUsR
	nE3r6AP6lQet94xJh/iYUudoi9U/y1T4d+7itdVkF+vC8J1hhLfXRJd6LJainZf72ssWEk5bt4gRM
	jT+0LNy4T4NOEDgCD3ecV143MzvlC7x3QQX6HXshSIl6MT/Oc3E4u9A0xLLDZtBCWkKcT5DizDQrR
	cSs7DqnOHX3wOAZ3veGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwA3w-0000nN-B3; Mon, 27 Jan 2020 19:28:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwA3m-0000mD-AC
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 19:28:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so8024028wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 11:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nVpNgKJkF9tkji59pMJrNk0LvUKK5aYZzAaELznZEIo=;
 b=EOPSnOhcgaq1gVIt4MtWAnnjLhta8bYIS1juX1koiLs8kPKtUS+C8v+HIVkCGlcxuA
 j8v+OFcxiedIi+GPnp5ZjC6mMCb6f67Hw33ayz55aUpmhj+57sMXUmUn41UfqE9NT7Ad
 drQiejNjHnpG3hwUF9zSRsVq4AOqdhYv2HScIj99eoD1IyoQ7ILWYjt+L3c5E7DDWxl+
 81ojPuXLQN+n84E4lL1zuKsyOwkRHIDS3tEAjpZ5Po6ufowof5o/OZwe6BZwAUGFHB+A
 w84W02xMdaIqsZEa6jlyiTL0M7TJUEW8IpyO6D8RBZdVTZ/D9pO8UNjhHy60bWEhbU94
 +yTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nVpNgKJkF9tkji59pMJrNk0LvUKK5aYZzAaELznZEIo=;
 b=hAyMKlzXCiZ7H4hT5IEorv99kG1daGpjoagK7MFHbfaE8J0kje+YS0beBSwhGzOUF2
 wwIHLMPMJvEHogl/KtLreGaVTEKWY/dJ6Im9t1Lj5BvWserFAbhCwrW499G0zyiz3Bu+
 IHYQj7vP3m3ebh2pzyADRE6RhMbxq+ffm9IRkKELnN2VGg5CP4YLwRgYE8Dd5mw9fh/o
 WLKlqp1lUroiVdhGvDRsoelSPdnvQm2VFIYa1TTh1znalRCMxDK6upLywIgPnfYqtDNg
 +Ko0sWkWY1HDASECOqgFMAqUP7+6U53dCFOfMNeiNQ9FUG0lXpMLnKzlnHjmK1mNWLWT
 jfoA==
X-Gm-Message-State: APjAAAV+lyFHjasNFKbzp1v+2QnP+nDgSBfQf3ccJSOnrsqWn3oR6LOd
 sjDttjup34PwYmZ2wgVepYgUy0Ht
X-Google-Smtp-Source: APXvYqxoCNMBFRKbINc2j745ycYNdqyYUaS3O3hsaHm6/siwUXdgo2uba0UD5gd43Kd/W8rSqHHk3w==
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr235606wme.26.1580153311807; 
 Mon, 27 Jan 2020 11:28:31 -0800 (PST)
Received: from ?IPv6:2003:ea:8f36:6800:3496:17d5:1b2b:bee1?
 (p200300EA8F366800349617D51B2BBEE1.dip0.t-ipconnect.de.
 [2003:ea:8f36:6800:3496:17d5:1b2b:bee1])
 by smtp.googlemail.com with ESMTPSA id e6sm22981852wru.44.2020.01.27.11.28.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Jan 2020 11:28:31 -0800 (PST)
Subject: Re: [RFC net-next 6/8] net: phylink: Configure MAC/PCS when link is
 up without PHY
To: Andrew Lunn <andrew@lunn.ch>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <cover.1580122909.git.Jose.Abreu@synopsys.com>
 <9a2136885d9a892ff170be88fdffeda82c778a10.1580122909.git.Jose.Abreu@synopsys.com>
 <20200127112102.GT25745@shell.armlinux.org.uk>
 <BN8PR12MB3266714AE9EC1A97218120B3D30B0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200127114600.GU25745@shell.armlinux.org.uk>
 <20200127140038.GD13647@lunn.ch>
 <20200127140834.GW25745@shell.armlinux.org.uk>
 <20200127145107.GE13647@lunn.ch>
 <20200127161132.GX25745@shell.armlinux.org.uk>
 <20200127162206.GJ13647@lunn.ch>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <c3e863b8-2143-fee3-bb0b-65699661d7ab@gmail.com>
Date: Mon, 27 Jan 2020 20:28:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200127162206.GJ13647@lunn.ch>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_112834_374771_63E698BD 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hkallweit1[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hkallweit1[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jakub Kicinski <kuba@kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27.01.2020 17:22, Andrew Lunn wrote:
>>> Heiner has another device which has an Aquantia PHY running in an odd
>>> mode so that it does 1G over a T2 link. It uses SGMII for this, and
>>> that is where we first noticed the issue of the MAC and PCS having
>>> different configurations.
>>
>> Do you know when the issue appeared?
> 
> As far as i understand, it never worked, it is not a regression as
> such. But Heiner probably knows more.
> 
I think you're referring to the issue that was fixed with following
commit: 72d8b4fdbfb6 ("net: dsa: mv88e6xxx: support in-band signalling
on SGMII ports with external PHYs"). The commit description also has a
link to the discussion we had about the issue. If I read it correctly
the issue is independent of this proprietary 1000BaseT2 mode having
been used.

>       Andrew
> .
> 
Heiner

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
