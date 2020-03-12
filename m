Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD11839CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 20:48:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXUsGS/Uu5BNnI0gmN66D85KDn6CD7p+ua3x9jh4tJg=; b=PwK4hfcBjQpmRc
	tZDKouCwkUlQ+JqS2EC7szd3jKxlEhnLQWmR0t60wPmVN/RZgvZHICBOx6JSqeaQ/u0TtXkFB9ONm
	VrWYmNZxkCvSyJo6Hr7ldRj7sGw97YJZakvM13sTvKMQPzUA5mx4pX9hTZ4k+BW0r3hV8uo7HnOS1
	/YuUbqmJFpgGFK6lzeSNWD/V74vNQWZciYbl2WmgafM1s3kseYGu5ct42kuhsc20jAtOsHWF3i/0f
	ZIu27zAl9RE1tnhQT2dJd5WwMdrGkAirWQY1+FE0kdoGqGOaqwsp8IFc0EKCz3yK20EMmucycshyx
	K+iq/oKD0xUMt/MoS7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCTod-0006qp-Nw; Thu, 12 Mar 2020 19:48:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCToV-0006qF-Ch
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 19:48:16 +0000
Received: by mail-wm1-x341.google.com with SMTP id m3so7760020wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 12:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=My5hy+eOd+BUGnLYjJSbZOd3nYUzutH2HG2GVn4YySU=;
 b=AiSzVoHTgqpa1qac7d9U8arGecyjIGMg3cTXGJ8wlp5G007Eidw4MQ8r10C+dZx7vU
 waJujvvQ3bbzCUvTunqQ7YHn/yXmeCwHKzYquSTivGPIZU/5BVFq27lEdMg2Pim1oIEL
 0v8QKp1y6Q4deCwbn9he07U2CRFUHo0ve8poxzPjPbf1ZeF3OgfahrX3tA3YGkXDHK6c
 r6uBPe53trUhQ+DJ13jQPSNIDUR1xKpxwFdp1ZC9/KV6BYeBRzjR+NSl4WMioL2GWSRE
 dXj/AegDov5wW/VZJVPPUanYQpO8FlPyHs1wpfKcESCue6oA+/q7NhgeDZCvtkI7VUTw
 /E9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=My5hy+eOd+BUGnLYjJSbZOd3nYUzutH2HG2GVn4YySU=;
 b=PJ0eI1vSrKiL0pv5t4QPlyp0MgOYQNvJzXVGfaSgJ1nohsX2bT8z61zaEbxJy9ZWhJ
 HLDTfOGmovleMvR4GkO3p5Sq0x4vXGueh6PthoWV1ko0g0jWe1l5B5Cm9+TgIhwS6Kau
 9Imspw7JF3sHy5sUJYPEA/h/aH334/ru5QaElbdmii+pCbMkHMuaPKwn/t2q7TCv2S8G
 QBcTCJtMWAWncbRzbuNYvFjdozio11DHR/eR+JGSjD5QFM8+wKZll1RzFyjhHr+Qc/OK
 pg40S7EpkIqH+ZR+PQMoF3NDyavY+lwtpLh1acxRcYttAR14O3NiqfDsDpJOBE673960
 ajDA==
X-Gm-Message-State: ANhLgQ0xNa5LFg5w6h7xeKThGfrAIqlAY1h+237ZCns+LL3PaMeokjlw
 MDVqjeGN0Wev4k0Qy6TbdS8D+Oq9+8Y=
X-Google-Smtp-Source: ADFU+vseCaW0oo7VMWsRQmbcHcBu9RZW4zq46TUY4mhg/yDNTUBrocjwJC+h98nGd0cnHrPixEVGnA==
X-Received: by 2002:a1c:ac8a:: with SMTP id v132mr6092078wme.64.1584042493588; 
 Thu, 12 Mar 2020 12:48:13 -0700 (PDT)
Received: from DEFRL0001.localdomain ([2a02:810d:1b40:644:cfdf:73ac:91bd:6a1d])
 by smtp.gmail.com with ESMTPSA id z6sm7271122wrp.95.2020.03.12.12.48.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 12:48:12 -0700 (PDT)
Date: Thu, 12 Mar 2020 20:46:25 +0100
From: Markus Fuchs <mklntf@gmail.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH] net: stmmac: platform: Fix misleading interrupt error msg
Message-ID: <20200312194625.GA6684@DEFRL0001.localdomain>
References: <20200306163848.5910-1-mklntf@gmail.com>
 <20200311.230402.1496009558967017193.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311.230402.1496009558967017193.davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_124815_457496_8F79A9ED 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mklntf[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, joabreu@synopsys.com, mcoquelin.stm32@gmail.com,
 peppe.cavallaro@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 11:04:02PM -0700, David Miller wrote:
> From: Markus Fuchs <mklntf@gmail.com>
> Date: Fri,  6 Mar 2020 17:38:48 +0100
> 
> > Not every stmmac based platform makes use of the eth_wake_irq or eth_lpi
> > interrupts. Use the platform_get_irq_byname_optional variant for these
> > interrupts, so no error message is displayed, if they can't be found.
> > Rather print an information to hint something might be wrong to assist
> > debugging on platforms which use these interrupts.
> > 
> > Signed-off-by: Markus Fuchs <mklntf@gmail.com>
> 
> What do you mean the error message is misleading right now?
> 
> It isn't printing anything out at the moment in this situation.

Commit 7723f4c5ecdb driver core: platform: Add an error message to 
    platform_get_irq*()

The above commit added a generic dev_err() output to the platform_get_irq_byname
function.

My patch uses the platform_get_irq_byname_optional function, which
doesn't print anything and adds the original dev_err output as dev_info output 
to the driver.
Otherwise there would be no output at all even for platforms in need of these 
irqs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
