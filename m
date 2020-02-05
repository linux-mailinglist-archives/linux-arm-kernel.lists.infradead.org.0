Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 954F8153C2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 00:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1QMIHufkumg+9O5apuzcEjWlyKA5s5x9BCxl2lWqy0=; b=BlwMyRNjkfHzgS
	mu3UYYdel81SB3DyEQymRx5AV8OQNmEirqEjqJTnWs+krnG9CgKnPyb+AIvfzjXFFfgU+4SQsANnC
	tTVPZGTLt1bkBSsUEcKrIom6ywMoe6Fcizb4Vq56yYhTK9q45C31ISOHe0x6aqGGBW/2D+JsT/Kyx
	WCv61s0F/5bCuNGvmoT1jRCoXpTLrRVgF4NXrHXRrtarSuTvrjGXahe+xBNd1TrjwFREm+TvnSD1l
	Qna1dXTOHPz25BEGK53Fmn/Jq4lWvMdvpWN4r/fV7kNwAFKq0e+n8I4YyLk8odfiesnRFNaRY25Mh
	N9PksQAQtzJw82WB4tAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izUWa-0003OO-10; Wed, 05 Feb 2020 23:56:04 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izUWT-0001pk-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 23:55:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QxM7vFDpeUoZ8IDa9CFBEsGoHA6Q5iGUKmBkcPl6X2M=; b=o+udOMURKZLfOAnHR78OlJ0Mw
 ObYjpnWzc0G8G332wh9jnadCgnlTtlUsGc0rpAP2eaL8xHeTv6ntJ+cgoxMpfO99FNwOTy7hyDTWM
 jr9kCvjZHyxT74Z1U4K8EsXGDFJgvAukocoMmpIfrFoRHfIPlL28FY52V/Vcp0FPB9BFl7YRpI8V4
 WDg35zfmXQFIG1zZal1eD/Ga+rn2kAjV15w8wk7bMh/ZOKgYLOvn5FW+8khnEsbJOTCnlm+SdZVQ9
 7hJy9+XAmJwpcfpcO5EEXgIJuvCbVMFTPxl10EYNARVAlaRWB0ZgKYso7tnupDjJeSWcKIpn07pcS
 q2LMTSQ/A==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43986)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1izUU7-0003jB-Oz; Wed, 05 Feb 2020 23:53:31 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1izUU3-0002IX-C8; Wed, 05 Feb 2020 23:53:27 +0000
Date: Wed, 5 Feb 2020 23:53:27 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stefan Agner <stefan@agner.ch>
Subject: Re: [PATCH] arm: make kexec depend on MMU
Message-ID: <20200205235327.GV25745@shell.armlinux.org.uk>
References: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5b595d37283f043df78259221f2b7d18e0cb0ce5.1580942558.git.stefan@agner.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_155558_036205_D4E4EC2F 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michal Hocko <mhocko@suse.com>, arnd@arndb.de, linus.walleij@linaro.org,
 nsekhar@ti.com, linux-kernel@vger.kernel.org, bgolaszewski@baylibre.com,
 benjamin.gaignard@linaro.org, mchehab+samsung@kernel.org,
 armlinux@m.disordat.com, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Does patch 8951/1, which has been merged into mainline, not fix this?

On Wed, Feb 05, 2020 at 11:43:44PM +0100, Stefan Agner wrote:
> From: Michal Hocko <mhocko@suse.com>
> 
> arm nommu config with KEXEC enabled doesn't compile
> arch/arm/kernel/setup.c: In function 'reserve_crashkernel':
> arch/arm/kernel/setup.c:1005:25: error: 'SECTION_SIZE' undeclared (first
> use in this function)
>              crash_size, SECTION_SIZE);
> 
> since 61603016e212 ("ARM: kexec: fix crashkernel= handling") which is
> over one year without anybody noticing. I have only noticed beause of
> my testing nommu config which somehow gained CONFIG_KEXEC without
> an intention. This suggests that nobody is actually using KEXEC
> on nommu ARM configs. It is even a question whether kexec works with
> nommu.
> 
> Make KEXEC depend on MMU to make this clear. If somebody wants to enable
> there will be probably more things to take care.
> 
> Signed-off-by: Michal Hocko <mhocko@suse.com>
> Reviewed-by: Stefan Agner <stefan@agner.ch>
> Signed-off-by: Stefan Agner <stefan@agner.ch>
> ---
>  arch/arm/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 96dab76da3b3..59ce8943151f 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1906,6 +1906,7 @@ config KEXEC
>  	bool "Kexec system call (EXPERIMENTAL)"
>  	depends on (!SMP || PM_SLEEP_SMP)
>  	depends on !CPU_V7M
> +	depends on MMU
>  	select KEXEC_CORE
>  	help
>  	  kexec is a system call that implements the ability to shutdown your
> -- 
> 2.25.0
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
