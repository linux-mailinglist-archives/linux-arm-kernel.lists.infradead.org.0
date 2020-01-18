Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D69914155E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 02:12:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoOYLUz/MMqC03mY2PQsoJuFblMMJD9njCir6qg8EfQ=; b=QJzAmxMjQ49P2W
	rDHvdtyQ7ltW9qcQFqwE4i9XrAEZy2KjmplQ9wQ72aXsfy3HuZVcFx0b0q2NDSQKjdVfAmQTzsZIu
	BVXffl+RqPKG0C6SJHkbEuyC9YF4xVeeghndb0HAGHKpVlSacm1YocGqyJaiVF+Voif0mbDPmqMLa
	TJOa3sPrKvMny0VJZb6Zg/1yfRhfp35oOm5ptBRSoaR/bBRVgYy3v6DEw3OnRIGQNnkYT8DtZ5VR0
	6+bJ6i7yyg41XKu39wSxf5Dcc5kCMTai+baGDE07q96kKtgrKm8/Gx361sGsjvn1WxvYYrAHjv3jq
	SDbLyj6MBbCl3hM+fQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isceL-0002Wo-QW; Sat, 18 Jan 2020 01:11:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isceF-0002W9-MC
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 01:11:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id m30so19683600lfp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 17:11:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QqA0nc23fjiLfpQ4A+K52BJy5P0YfYmwtZdo1Aw7DqA=;
 b=rC99V8wIDj7ZO0nkVhr9Vs0PpUzhQvLbmRuHYNA4QxYAQZTIvevA02UqKQ63H7OtYs
 T/GK68ZfVzsmMAwcTq+ANqVTUJQg6zxEe26V2JDgBH5ZFIKwis+ZfMnq/iFriDy6noXS
 Dj+/E7ybadkMgJh2gmu1ZcFhbh9tqbpINmZxKiqoZHLtHip8OxX5jr6tz5Tgz4S8i4ik
 14NCv4yQO+3NGJoEo2elB2s6iASiwsqEFFg1/kfO91BEt0Hmmh0SoWaqUcLxW8U10fDa
 3SegnU0R3R6tyRytR8dGotc8uLpZYbW9JWj/VAFssuSB9ykTyHmLKqO887eRT4AFPkdT
 tnSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QqA0nc23fjiLfpQ4A+K52BJy5P0YfYmwtZdo1Aw7DqA=;
 b=dXjvjRLjmtn+/l1BdRELZ5TSj76H3VH4JGfxes1E6dTn+cia3BDstN0p72aN/Yx5k9
 6E7F3ec0LXrnGutFsZ5PI/ThNBa2izvLPM+ynwIqpCbS1Go8s73HzD0aFggh+09Tcae8
 yB/+ZAD5ojsOvi/zQXupFIBmbpvqUVITF2eRAZRY0seCgWu3uPtuxDi4+8OaNkUekCpb
 d6V9K/JftLup1iYa2jPO3xZjR0UZ3O+mhoQhaH+sHw+5yRB8LD1GjfMhwoYS8x5/IBnx
 BZefvMZ7lVHkP51j75J6ydWzpvcv5c2TrlbTxYfSE/MpXum2Hx3LulEoaFc+/g3mS67a
 ZP7w==
X-Gm-Message-State: APjAAAUg2OHoZoZBYaVHSkxYkysr0T2kjM7UA5N0x8Fky9Ej2dPXaSyx
 pWFSLMmT5j7L2brZcGsSBv8AUA==
X-Google-Smtp-Source: APXvYqwVB7ACZhC/7kPGTGxm07LY/zkY6+xdUnnffkMvPNObWL8Nz09CFO2a2hfrNaFGjMaw2kwEpA==
X-Received: by 2002:a05:6512:488:: with SMTP id
 v8mr7094963lfq.173.1579309893486; 
 Fri, 17 Jan 2020 17:11:33 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id i13sm13029629ljg.89.2020.01.17.17.11.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 17:11:32 -0800 (PST)
Date: Fri, 17 Jan 2020 17:10:41 -0800
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL 3/3 part 2 v2] Broadcom maintainers changes for 5.6
Message-ID: <20200118011041.bjbdhjbp6wzsjcbi@localhost>
References: <20200117222705.25391-1-f.fainelli@gmail.com>
 <20200117222705.25391-3-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117222705.25391-3-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_171135_865062_33605482 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: arnd@arndb.de, khilman@kernel.org, soc@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Jan 17, 2020 at 02:27:05PM -0800, Florian Fainelli wrote:
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> 
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.6/maintainers
> 
> for you to fetch changes up to 7f4d4e232f3789bb4bd418d01cf97f195a76b2de:
> 
>   MAINTAINERS: Add brcmstb PCIe controller (2020-01-15 15:39:48 -0800)
> 
> ----------------------------------------------------------------
> This pull request contains Broadcom SoCs MAINTAINERS file updates for
> 5.6, please pull the following:
> 
> - Nicolas adds an entry for the Broadcom STB PCIe Root Complex files for
>   both BCM7xxx (actual STB SoCs) and BCM2711 (Raspberry Pi 4).
> 
> ----------------------------------------------------------------
> Nicolas Saenz Julienne (1):
>       MAINTAINERS: Add brcmstb PCIe controller
> 

My addition of checking scripts seem to be paying off already. You missed
signing off on this patch when you applied it. :-)

Btw, this could have gone in with the pcie controller patchset too. But either
way, mind respinning with the sign-off fixed?


Thanks,

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
