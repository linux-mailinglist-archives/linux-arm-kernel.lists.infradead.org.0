Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F97B13442A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZNMm7WPIQeA2uTYyc4mGh2zJ5uwwbY+80EmUj8OMkX4=; b=k1EkPtiN1K9DZG
	R1xVZUqvY8hua5M8WClVyTeEkjmgE4rkEUkUrMib/OlyRJ5QhmSD+PNxS+Z1U4Rj7GnfnoXV71tTw
	KoLUdp+xIhTSaWoHdg7NkF5iGEepxqjGzKggcjrWOIxSuKPtNyQnKtBKh+ufsT8rC0xUSBLd0hrzc
	n0cKFMAdzVXTTTQdG8vpG+px9YuTqa6IK9DJQiZlAOdkvCCWDGp8XwoaRHewMcK+d9CS11ZQ7LMcv
	nmJcW9XnuUzS00CPXuNt8hmOJEVJg3O+C3PxyKMBQ8Rz3kUHVC8ot6kV9SGL3cE18n7/HfQbz051+
	iZTuoMLXTHmM3G1XPRnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBdh-0006nb-7Z; Wed, 08 Jan 2020 13:44:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBcy-0006QW-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:44:06 +0000
Received: by mail-pf1-x442.google.com with SMTP id x184so1663617pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 05:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gmq+OYn2q2vGsfM0iTs4x3raT2eS8sck0M2TsL5zr/w=;
 b=WxYhqAW0LDM6dq7oo5G4VIPflo6uRiAjBhblX0puDGyW4xnq/8ivEYcT9bVSz6xxrE
 FR/XWh1F0bBBGJN55zLYpVNAJCu76npUZXsKDPBiS+1YpTJcWbfu+481eGiMWydBj3ri
 Nci4adeZCACFHxC3E+L4t5mnFT6sarelSITx+auPC7MfBTpQWyZDCEI0oZTuEzy166Ff
 JMDCExuR/+QiNMMgMI1lYEYVuoiFRFY7yWK1UBLRMh2vTwatsSedI07einwflhh7VInE
 KLVWdkAnYoqwmW+QjQSh2351/H+//ZwWKHcpjcGgSWjKNK5hFbDnE7xm45asJNmHFR54
 Fapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gmq+OYn2q2vGsfM0iTs4x3raT2eS8sck0M2TsL5zr/w=;
 b=Zxj+CMJ0yokIJOk2ouwJzophQJXevxMuU2PyvJxK+L8/RCaW/h7klmQYmYuS8Jorwz
 FOYZqFWLzEQiy8Db1ajoFvxpB64A6NEBophGS5PEwqqT6hYoJcpb9JiGySCH6jg3Oauo
 1YBA3yJ6V4heN6/SSJm8nEofB4PHAko+7hkuaRymR0HiKd2oXsi1tvC+1U1HQqTmY6/V
 +SnSyuoLjNPg4ZWRgYbud/AEVa8WwO+Bi7kctfxntTDtVxg3c0jIKPjJmBN4PB62SzeN
 wTYgyUO5HmDLrzTBhp7M9S4QAQvyG2d5vP0enHNTZ+LJL7NArg1hX3k/sZjnrdLr8kPy
 eiJg==
X-Gm-Message-State: APjAAAUAxA5kYh84yc5RYRaSDww3pGugOTxOEKzXxWVI5/yRPZisWEhZ
 WwWkIYmi5TbKq2c+7WpMlvU=
X-Google-Smtp-Source: APXvYqxyjp0TG2gDqFgwVwFZ3d4b7bobaDPhrkaSTx0R0mEy2MZXSHeB475CA+IzwA8FQge9svwPUw==
X-Received: by 2002:a63:2d44:: with SMTP id t65mr5578887pgt.112.1578491042039; 
 Wed, 08 Jan 2020 05:44:02 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id z6sm3788961pfa.155.2020.01.08.05.44.01
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 05:44:01 -0800 (PST)
Date: Wed, 8 Jan 2020 21:43:59 +0800
From: Dejin Zheng <zhengdejin5@gmail.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH v2 0/2] net: stmmac: remove useless code of phy_mask
Message-ID: <20200108134359.GA5909@nuc8i5>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
 <BN8PR12MB326627D0E1F17AE7515B78E4D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
 <20200108112652.GA5316@nuc8i5>
 <BN8PR12MB3266601BC7BA0F414BD60E19D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB3266601BC7BA0F414BD60E19D33E0@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_054404_676221_8077BD67 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "weifeng.voon@intel.com" <weifeng.voon@intel.com>,
 "martin.blumenstingl@googlemail.com" <martin.blumenstingl@googlemail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "peppe.cavallaro@st.com" <peppe.cavallaro@st.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "treding@nvidia.com" <treding@nvidia.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:25:21PM +0000, Jose Abreu wrote:
> From: Dejin Zheng <zhengdejin5@gmail.com>
> Date: Jan/08/2020, 11:26:52 (UTC+00:00)
> 
> > On Wed, Jan 08, 2020 at 07:57:14AM +0000, Jose Abreu wrote:
> > > From: Dejin Zheng <zhengdejin5@gmail.com>
> > > Date: Jan/08/2020, 07:25:48 (UTC+00:00)
> > > 
> > > > Changes since v1:
> > > > 	1, add a new commit for remove the useless member phy_mask.
> > > 
> > > No, this is not useless. It's an API for developers that need only 
> > > certain PHYs to be detected. Please do not remove this.
> > >
> > Hi Jose:
> > 
> > Okay, If you think it is a feature that needs to be retained, I will
> > abandon it. since I am a newbie, after that, Do I need to update the
> > other commit in this patchset for patch v3? Thanks!
> 
> Your first commit (1/2) looks okay so you can submit that stand-alone in 
> my opinion.
>
Jose, thanks for your suggestions, You are so nice! I will do it.
> ---
> Thanks,
> Jose Miguel Abreu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
