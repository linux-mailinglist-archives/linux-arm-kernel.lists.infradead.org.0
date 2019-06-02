Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ABC324AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Jun 2019 21:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0FQSIfVRR6kaqn2xCrN0x4zZfh8nG+QtL0NMFa7qAE=; b=T2QKBFFZtE9BXr
	UHRTNoUaUegCpfk2bVekEJL/ce0WxJwNPk8RgUqL3fcLUmp2AiXHIekDXZcLJPt4sKNj5qOOk7H8r
	d0iYe+bIM5/tSqOAM4yalQmBw8bk+Zr1Tomc80ytQOd+/Ohlm9dtlnmE+T743CHAuf9fSoBvbRWzR
	j4fipxcfTFq0MDXLLYh1e5CvSJZ4VgqwR1j5sL2sngn68NZzLzyQKgGWC26DAyaiJIBAijZSFlPP0
	9as9dgNCa1yCB5E0gQ89QYkPzVojWB09HUQqe7nbi1BuOT6xadYR6agHHTgjHUdEgZt/uihcuU1JC
	mH7/Izu49fBzOdNM5B/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXWXW-0008GE-0N; Sun, 02 Jun 2019 19:53:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXWXR-0008FV-2x
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Jun 2019 19:53:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id s11so9276115pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Jun 2019 12:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RPszV/GKdwFy3mToL64pjta7lqB42YXt0SDnW+O4P0I=;
 b=Ew4O9sKoQaTPwiF/R/eQXH6GMlsgnnt4ZNJ/MmiS7KBX3ym3cm27SsvW7XjjIeB9Yc
 0uMktAJ6HrvekuSlZtisPtAjoCy68VCcW9MPRz1wM/Ci8pPGscDmwiB1ORAjw7rVa44T
 0BJMWcyGhjQSJN51Vx6MXc/XmMlrgZok0/Nps0Oz5HTw6ubW3vfZhAKiJf5gqUO4dn2o
 grlanotuetC+dpmWAUGrLFvQ7dZg1XQvwSK4M7tVEdXTpy0KaM9aAEpTQ7BgdwDjC2Ao
 0xyIxiOdoGK7peexYq63xTWTVEPuUFXa7iKCO9DXRe809lj2a19yOlT2dWC3E5DPg/F7
 Mjyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RPszV/GKdwFy3mToL64pjta7lqB42YXt0SDnW+O4P0I=;
 b=a/wB4Anu1Nj1jQ4JGT2yL9i9E5XdpcG2FigEK3CCLUEtcmzYodLe9752FhKY9mBIyx
 a877kOVM0jMoaXyUMzwg48iiapwrV2xFscBnic51dry0FU5GCJJWqbJQKYoa/bSh0C4z
 asaDMWLKd6CfV8wszL/J7TKVxB8rlTypPN2JSMr4dyqKS5a9cLgQ56YxhidF65kQ/glp
 efE8OdOH1e/+KHEyEfmfVQjupPUrgbwYVFzwuCBzzM9rSy20sUp49TF7RMV3+dya65TO
 l1U4r4Z7unZ2hk+ScYMcacP00VJgH2tQO2wCgPozCgG/Z9us2lKQBn2PH2TVKtzzFIcb
 ty0Q==
X-Gm-Message-State: APjAAAXUL1KwluYHMfPRlQu8OMNwMj0QCAaOG+83dIwDMlOdYPoXdsGE
 SBLpjiMORGfapJC6H6R5Qks=
X-Google-Smtp-Source: APXvYqzSWUgdIEWMG2M0m+OQFYlgX3Aiq3bDcApAnCPJVe3ZGLRAXyfXsrtcH75MImXnQqXeXPD5CQ==
X-Received: by 2002:a17:90a:cb84:: with SMTP id
 a4mr25028599pju.104.1559505175910; 
 Sun, 02 Jun 2019 12:52:55 -0700 (PDT)
Received: from localhost (c-73-222-71-142.hsd1.ca.comcast.net. [73.222.71.142])
 by smtp.gmail.com with ESMTPSA id a16sm7548493pfc.167.2019.06.02.12.52.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 02 Jun 2019 12:52:54 -0700 (PDT)
Date: Sun, 2 Jun 2019 12:52:49 -0700
From: Richard Cochran <richardcochran@gmail.com>
To: Grygorii Strashko <grygorii.strashko@ti.com>
Subject: Re: [PATCH net-next 00/10] net: ethernet: ti: netcp: update and
 enable cpts support
Message-ID: <20190602195129.hjx5qyzqxyirdkx7@localhost>
References: <20190601104534.25790-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190601104534.25790-1-grygorii.strashko@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_125305_129953_A1578FFC 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Wingman Kwok <w-kwok2@ti.com>,
 netdev@vger.kernel.org, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Murali Karicheri <m-karicheri2@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 01, 2019 at 01:45:24PM +0300, Grygorii Strashko wrote:
> The Keystone 2 66AK2HK/E/L 1G Ethernet Switch Subsystems contains The
> Common Platform Time Sync (CPTS) module which is in general compatible with
> CPTS module found on TI AM3/4/5 SoCs. So, the basic support for
> Keystone 2 CPTS is available by default, but not documented and has never been
> enabled inconfig files.
> 
> The Keystone 2 CPTS module supports also some additional features like time
> sync reference (RFTCLK) clock selection through CPTS_RFTCLK_SEL register
> (offset: x08) in CPTS module, which can modelled as multiplexer clock
> (this was discussed some time ago [1]).
> 
> This series adds missed binding documentation for Keystone 2 66AK2HK/E/L
> CPTS module and enables CPTS for TI Keystone 2 66AK2HK/E/L SoCs with possiblity
> to select CPTS reference clock.

For the series:

Acked-by: Richard Cochran <richardcochran@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
