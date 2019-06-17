Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCE448378
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 15:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V67PneJ5TawCnNdKZQIsPih9FjHOGuW6DqUZ3+G/Eb4=; b=Q4OXCmsaSjtcoF
	kiLTSAiKghExRCoc+E6EU80mZeyybT5G4uD7Fm7pyVo1HZviZ94AaNKPmR3GC6bf19zhvOOUaKOD4
	J4cJiK49YCEIixkkaE23C4UjuUHfVDfLzQ/lffIu3DRR1OGr3z4AwubLLj3Et1LVmrplU9l47QgNM
	d2zbpVTg2YTBeEU9LedUHkhDTcHAUoFsZm5BIUEhKpxvli2q+HpjohxS5u4k0oM7IwOkNVVzy9yHz
	pnJp67NJ0KOBm0HGl4yHy4c8Vw5xwzPmg1SUT0QAIeOphF51itLUbYLfsc4VT+QotazpsMOuGn6Ts
	kQsM64aOSomYJd0wPovw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcrLS-0005d9-8A; Mon, 17 Jun 2019 13:06:46 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcrKD-0004lg-AH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 13:05:30 +0000
Received: by mail-lj1-x243.google.com with SMTP id p17so9246543ljg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 06:05:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mvdHu20wxBSx5VDFsQC67sWAK16V3Gtj/wNQ1YO9YVk=;
 b=nk9siVh81G5JnaRrCPkGyYwpA89hWIdO69zuQ8N5H1ssDvSm3hatsAs+fhwSgC2wIE
 w0FWU7PHPgr3DbE/2r74Q3wyTUarc/ngfhJHiuj0ilZG40K+CL7Rswpx3nvkHF3hbsEb
 ksoTbGv+zds2ZjTnRxveTJjjeGyC/dJJEaBrwPBmuZ5q0n6fkBXXo1/XbImtKwWOGhSd
 3qf3FyHghXpSVD3ojdBvSdETAsVY1GGwuWqRJFh+8MafVNKcfrQmCnJGbVduu/Sj951P
 yrgZ4q+RB6pSawsKAEOG+gdrRyfTrihMPO2RSM3rNgqIXxctROcKG4Qdw9pWc3Z7CwpY
 VDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mvdHu20wxBSx5VDFsQC67sWAK16V3Gtj/wNQ1YO9YVk=;
 b=pEh/dEgi6u0og7s4x8ucbrpdzlMSD5QbfKiI9cKtwEMGXWywjrbqts2ZbUSqBn89m5
 xXEnUrsc0rjOBM0ewnGWP0y/X/6ajfrw8aK14R26XAJHBVUnABiManbsBRQRuBvoux8i
 gdwOPD0bOkBVJ+w0GfuPr2oQK5Zq9a7L1rBnrkFH4AaiZaeFr+TrdpEO7fttQHp/Znzg
 79kh4bzzAAT+xI/b45xKpcEDcVFWqhPf+In7UqRBrjKtp0sM06du1ne2zkx8kzB77BVq
 rVCiljxq+YRzNvFU6B+HmMKrzkCL9/bTCGiwDqwdzwhUxqpuaK1BJ0xVqX3lAccaPcbc
 9mKQ==
X-Gm-Message-State: APjAAAVCpqklWzQG1t/BbfD1b9Lc3Hrcz/bxR/1IdbigjNvT3rngl75t
 E8mnuc0/Wz76T5Wt1SIHRHJWpQ==
X-Google-Smtp-Source: APXvYqzCj9iDOootsPR0RV6qi1G3yRvFWFDRqPqbDBoMudDadtsnQIOz5bY9WRuBVk1pWTIL/LaPjQ==
X-Received: by 2002:a2e:989a:: with SMTP id b26mr30269890ljj.31.1560776727896; 
 Mon, 17 Jun 2019 06:05:27 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m26sm1737721lfj.37.2019.06.17.06.05.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 06:05:26 -0700 (PDT)
Date: Mon, 17 Jun 2019 05:17:25 -0700
From: Olof Johansson <olof@lixom.net>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: [GIT PULL 1/4] soc changes for omap variants for v5.3
Message-ID: <20190617121725.tcyrjpoillqh6n6f@localhost>
References: <pull-1560399818-512977@atomide.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <pull-1560399818-512977@atomide.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_060529_392041_2709E9A7 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-omap@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:10:50AM -0700, Tony Lindgren wrote:
> From: "Tony Lindgren" <tony@atomide.com>
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.3/soc-signed
> 
> for you to fetch changes up to 45450f36e569e5162957df488b0174c9a952e1b0:
> 
>   soc: ti: pm33xx: Add a print while entering RTC only mode with DDR in self-refresh (2019-06-10 05:19:26 -0700)
> 
> ----------------------------------------------------------------
> ti-sysc soc changes for v5.3
> 
> Just two changes to make few platform data functions static, and to
> call dev_info() if am437x is suspending to RTC-only mode. We want to
> see this in case of issues as it depends on the board wiring for things
> like DDR memory.

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
