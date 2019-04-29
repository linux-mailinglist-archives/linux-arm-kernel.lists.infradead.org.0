Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9D3DDC6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 08:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YL8EE0aHpubDLz34RhrQ5yavD/C+cye8FxXNG/Mk5qc=; b=QYzPJ8Pz3hMi8D
	9jgc06Emh1IuMkysFSdiGOJSJTSXHwpJudadqYwETSgP65ZMRqHXU1+I4S+NhcElCYYvtoJ1cfePO
	wXSgUUPgN611JEsYX0t8IcPFNfhHI329rjzkFyV8vj03chR0EYSZ5DMSzf5XLGihrkgQOnZFC3Bjl
	hfbrsXPeC3UuTLuoOSMYsZm5IlRwCyNNcmx+r1YLZJlpP7YjCJhih6S62xLcHJcwb8fwFSVZv36mK
	ZIMKDXjDv0lxgLu/OV2pVmdMV6syb6t5/YsH2/bkIou3jjNPvI+Wp32rt2HeWd2CXH47HV0BmvS1V
	I3AOBP/cHVAhCrd9NMcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0GZ-0008JH-Ss; Mon, 29 Apr 2019 06:59:55 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0D5-0005y7-I9
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:47 +0000
Received: by mail-lj1-x241.google.com with SMTP id b12so7115068lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pHFTWPg+Y3/O+ts5Ha/EUTxNy0aVtLYdXZeSPiCHoEk=;
 b=SgNEe81DscetE5N9Q277xVmP67DbZZDlKCDfBvsRdZuqrQZZbGriTiPIvf4y2nzkN7
 v30pQ0oq4Sqh12qEwKVBdrbSbD7zT/Jrm6meVrMkZORKfgSp1a8QS7VamWgqh4DLUJbp
 XoqG3K1KhHCzy84RSJSSVZcVUUBgRhQEggttdQX4HKKXVJnAWWHZirKn3rNxmGxUf1mm
 o3Bsjz1pntCt0n66LopXoeEDzQmypPSKxhzhGU/4p4n5NpRjSla8W5Md0kc8CrGl7Bz8
 YkAr5B/6xqm4f17U86jcMrEuhVRqAzeE6xv99sLrkNqSUtKrsCacRdPmhLnEWqGBMo3g
 drEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pHFTWPg+Y3/O+ts5Ha/EUTxNy0aVtLYdXZeSPiCHoEk=;
 b=TUUBxe1J8WsENOJ0wSqFUlT3GuqF+Fb6ceDhFF9M0TvdpftqpyPvHf3xNH+jRqS/tp
 8MNrJ3X+oHsrG8NqLg0nWfmdrRRJSu/tRhrbpc9QmKzPE7OLdZuOvpce2YWoAUkqvlJY
 QXIfRfRU5t+l+7MVGMYu9/Z9QdW9QUV2bx4/NVrQSrIzdAGK+3LPaT9mHeYQs7fEI9Id
 cZXJevufRILrsw9tivjkqeZxh94AZWAdOaNQWi1/Ccok/lBHMVkab6kpglcgDG9ZRbma
 S8YL6GuQWJoA8whi7FZtauJ8rx0pdHXOcdYqd6slZ9JVAYL+XM+uQC2J8yGYXP4NJO/4
 zq2Q==
X-Gm-Message-State: APjAAAUo1ZvK07jJCHhoL6J9vJWrIIw4aTyIXFmGyvntoAqAuK6gVEUY
 K5J32xxS5tNXeF7k72DXe5L4/usXljJnGA==
X-Google-Smtp-Source: APXvYqxliAE0cGDimMn886h1GTEFRsKaj0RNCUCOqr1BzQB34pWvGO768SLeP0rONWyD8f3y6Voeiw==
X-Received: by 2002:a2e:8141:: with SMTP id t1mr5991857ljg.122.1556520977970; 
 Sun, 28 Apr 2019 23:56:17 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id o79sm7167914lff.50.2019.04.28.23.56.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:16 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:40:27 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Defconfig Updates for v5.2
Message-ID: <20190429064027.loh5nyxn3mttiep7@localhost>
References: <cover.1555654474.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555654474.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235620_368386_E17C4A45 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 04:34:18PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC defconfig updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-defconfig-for-v5.2
> 
> for you to fetch changes up to b266731b76d5c33c0f6d781c449e43ad9991fb70:
> 
>   ARM: shmobile: Enable USB [EO]HCI HCD PLATFORM support in shmobile_defconfig (2019-04-12 14:16:10 +0200)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC Defconfig Updates for v5.2
> 
> shmobile and multi_v7 defconfigs
> * Enable support for CFI NOR FLASH
> 
> shmobile defconfig
> * Enable USB [EO]HCI HCD PLATFORM and PHY_RCAR_GEN3_USB2
> * Refresh for v5.1-rc1

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
