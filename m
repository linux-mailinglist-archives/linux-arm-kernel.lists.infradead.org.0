Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D511BB81C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 09:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0wjZpcGjWzX/MhGgReSTqPYydyMuXjSLcUja56dUoBE=; b=FMfRwoMNZCPgYV
	LAMeTPt63ufilBhCm6Z1F3LvTmulujnXCiujFsj7YGeiDBU2NTBpd/HMwVjOGH9TdkmJ7y4rFCnc6
	kdm5evvCOg1+opxk+2IQ7khY0aol7Xziq3Yg6VFcDVTY8H+ZRm/948aZfdYhlP6lPO4FCiHDfZUo1
	x4lV9+BTT+O/UUDzA8ja/A+a1ZZIx91pAS3ZVL0JY7el80qdnGF2OUrYC2k81590rkStmSoH1CNDq
	9qBd9I3J82gJNsj8uEJSrNjYtqRyfxZz0BHWPUVhUCODZrBc8FsFYEr73EVFDMGOEsdpeN0eJmWMP
	3XG8+p1hP7XCKvPuypMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTL2u-0007pD-2B; Tue, 28 Apr 2020 07:52:48 +0000
Received: from smtp1.axis.com ([195.60.68.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTL2Q-0007dj-Vz
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 07:52:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=axis.com; l=950; q=dns/txt; s=axis-central1;
 t=1588060339; x=1619596339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YYJgrFy01q/iXXRT8jAgJY9sVKaTPwGPeHvj2Hpz2SE=;
 b=pf7x1c63/zEMR7Oek8xLvepsokzZu0jUN2AoNT2nXoMkzUXw94nF91VA
 hQT3IOsIoSSSB0CYsB66N8BrLRMHy+aeT550tT56n9AaduQ2D9T2y1EpU
 BgRrG/2ETIcXdgMjye5n7H9CpQ1Nm1a+JRTpzIY9QWtVkP88EdG6x90eJ
 ZUJStUAjmD/KgZ8Ca9h+fEMCiXwiauX8npJcd60eorb+sRLzc615PD0LG
 VHgJfsqHdhX0DBUj+Fugb2q3vTsqOA9Q9WymKneWJYtk2WoW51KHQY7Kr
 E++EGq/OzG7FZLw4m40/PLFzbUj5hjnPHcOaYCAMk2HD2ydRhzrzvskYs w==;
IronPort-SDR: lYeH8fyYcjDt4AyM/O6xNBIvf0u3r0MUt/tX2KWz8nu7vZ2iSQMCuytyK7qsKHY3thDkbHdmMr
 M+ZhpXNfiLovKcXCHaJrqIj48oeTmdbE3iKPojXIklumrqm65yo2om8XhEN6aEZrbnqn0aVNWs
 0idLfVzR7oP69Lvw0iPAOqqnFKItTi3SILOf0ldyOtexQPPq64DTke22p4DngXvZpwJuEugfBJ
 t3SNL9+bTFkYDlrJYdwlimEXXlHon3QIM+Mt+QbAp1OTkD9GWv02V3F5vmhDBfBk8kiqSB2zVl
 1sM=
X-IronPort-AV: E=Sophos;i="5.73,327,1583190000"; 
   d="scan'208";a="8154008"
Date: Tue, 28 Apr 2020 09:52:14 +0200
From: Jesper Nilsson <Jesper.Nilsson@axis.com>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] arm: remove unneeded semicolon in board-artpec6.c
Message-ID: <20200428075214.j5gwldrm5ne337ma@axis.com>
References: <20200428063213.16038-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428063213.16038-1-yanaijie@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_005220_330254_5BDDB6E1 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.60.68.17 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jesper Nilsson <Jesper.Nilsson@axis.com>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 linux-arm-kernel <linux-arm-kernel@axis.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lars Persson <Lars.Persson@axis.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 08:32:13AM +0200, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> arch/arm/mach-artpec/board-artpec6.c:42:2-3: Unneeded semicolon

Acked-by: Jesper Nilsson <jesper.nilsson@axis.com>

> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  arch/arm/mach-artpec/board-artpec6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-artpec/board-artpec6.c b/arch/arm/mach-artpec/board-artpec6.c
> index d3cf3e8603e8..c27e7bbcd7bc 100644
> --- a/arch/arm/mach-artpec/board-artpec6.c
> +++ b/arch/arm/mach-artpec/board-artpec6.c
> @@ -39,7 +39,7 @@ static void __init artpec6_init_machine(void)
>  		 */
>  		regmap_write(regmap, ARTPEC6_DMACFG_REGNUM,
>  			     ARTPEC6_DMACFG_UARTS_BURST);
> -	};
> +	}
>  }
>  
>  static void artpec6_l2c310_write_sec(unsigned long val, unsigned reg)
> -- 
> 2.21.1
> 

/^JN - Jesper Nilsson
-- 
               Jesper Nilsson -- jesper.nilsson@axis.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
