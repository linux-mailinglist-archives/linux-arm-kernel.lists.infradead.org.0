Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E103320EA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 20:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YgbQy6SlG6+1slds8trExAc7fjv8HdriO30ceZVMWHc=; b=pgci/taTBU4Kto
	9UpmqRUf44ibkCueaL/QEFKFTag3LbBxVPEv5Gx83iB+Tb0OPSXnN7SyOb/DKor0vxbnwhNQC40Zu
	YPpvLJX9yYrDjNhwRPpc21d3YE6yXfDHysaAmNn7O541+0TPc7oLSvZeqvdau+gXLm41kHGO1LuuB
	is570GafNmcjP552x0aMIvVwFTcnTdFwyIcgtrq3CiDY0548fahNFKPXtYHTSMq6KvIhDEh1MEyFI
	b2zCd7PoyemedxoWICGlGqLSF43/CscjI+dJoUjqpz4pp1eBNjfhmGkMO9sWZ3uuA2tu3bOfjTcpL
	M0NUNBRQsTrRTgSjiIVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRL6V-00035I-MA; Thu, 16 May 2019 18:27:43 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRL6N-00034y-UI
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 18:27:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id n134so3368348lfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 11:27:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cOmUyw60PTTGyiH15eZmQyhz+eXnV570iUUTfFduavM=;
 b=jP2YMMUgOeVjt+8/vZ8je2YtHouZBgPZAJFXYOG7UaAIzxtUY/INze51VZwtvbuOG3
 SZtYK8MnB39Aaq9YVYE/XLmxx3ru28jhe7q1xbhhl+WruGwSPWzjEzIJzMOobr850Ibg
 VhYHCB7aidVygCV46svxkNcQ1mciWqUL7sFZSCYKpp/oRwbyAyZe2+crjbmxKVY98jCz
 M0MtrvOrrG/GyFJvQ/nR7P+HsYg89P3Q0JtJg1vRQh8i8HourE4lIOLSIX3fYDGUZlFJ
 3MJNWL/ij21YUlQ2Z2PTva2pJjgOcb73267cEO1+8J/rtJt4DpyZds5ex7JXH1KWMQuO
 NYjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cOmUyw60PTTGyiH15eZmQyhz+eXnV570iUUTfFduavM=;
 b=STX82oWFNzRpi4P3EyR79fWvRi9eWwi+UqcarF5JE89oKzxSPjx0eZoGNfS9J6eQy+
 mtZqtDJgRuRmLxbcZTVJ5dZtMnYs6vDULlk1BTmZBOXOZcy1IeKOHfc+Dag3gz1dkaKP
 qHw3/d00NiXtUg/K+N7n7kptSckKR4deWBdxbSFGsfMBXYYXd1iWabQWwW6QKM5khsOf
 U15yauQx7hXiweyaG0pV+KG3MeNUyucmcoYZSeEJYuPbguCSL6w2lEchwReAI0nkTYct
 ZbdXS0FJGTQFIAVDrpxwCaOtyM1z4PfRfWHNxXHjawqCpuVin+2RRDF/jHAwm9n5C9Vw
 S9lA==
X-Gm-Message-State: APjAAAW3IIxWKbtjgkDPdqrZxwSh7dfyLe+y66AFEMMt7RS8pWdVwLQY
 09hJajIkcE3sLGyt5lADY+3zVQ==
X-Google-Smtp-Source: APXvYqywTwGN4BkcXOSaUbqZTHu3msvqZviJoT/WoXbLKcPxNDeDI7EKd2cGP5da/1zVabsHV9WLDg==
X-Received: by 2002:ac2:59c7:: with SMTP id x7mr21020208lfn.75.1558031253108; 
 Thu, 16 May 2019 11:27:33 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id t17sm1098909lfp.82.2019.05.16.11.27.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 11:27:31 -0700 (PDT)
Date: Thu, 16 May 2019 11:01:57 -0700
From: Olof Johansson <olof@lixom.net>
To: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [RESEND GIT PULL] ARM: at91: SoC for 5.2
Message-ID: <20190516180157.g3iqlechzlg6lm4p@localhost>
References: <20190429164354.bxngd2shia4qhyuv@localhost>
 <20190430053540.31846-1-ludovic.desroches@microchip.com>
 <20190509112512.uc5swsgutd6x5cgq@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509112512.uc5swsgutd6x5cgq@M43218.corp.atmel.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_112736_028217_53C156FC 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 01:25:12PM +0200, Ludovic Desroches wrote:
> Hi,
> 
> On Tue, Apr 30, 2019 at 07:35:40AM +0200, Ludovic Desroches wrote:
> > Hi Olof,
> > 
> > Sorry, effecively I missed the tag when doing the PR, here is the new one.
> > 
> > Regards
> > 
> > Ludovic
> > 
> > The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> > 
> >   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git tags/at91-5.2-soc
> > 
> > for you to fetch changes up to 2725d70aa5138284ba2cebf0ef51dd23e0c9ea21:
> > 
> >   ARM: at91: pm: do not disable/enable PLLA for ULP modes (2019-03-28 11:05:53 +0100)
> > 
> > ----------------------------------------------------------------
> > AT91 SoC for 5.2
> > 
> >  - PM changes for SAM9X60
> > 
> > ----------------------------------------------------------------
> 
> Is this new PR okay (and the defconf one)? I have not seen them merged.

Hi,

It just came down to timing; I ran out of time to pick up more material so this
didn't get applied before the merge window.

Since this has been sitting in linux-next through your own tree, I've merged it
into arm/late now and will send it up. 



-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
