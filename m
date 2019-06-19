Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656E14BC7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 17:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/RWuWnBVNM2Dslmwc1qx+jHKKrwnVWNhpm16avgJo0=; b=uT5jv4a8xia5Uf
	7RsKwFXmLvZ2EpdMx4TT3zdNV2wa9LmTOUpz0rcgrCqqYIxycS7DzsjMgT0q/QW1VDxAK2lLuzOr1
	snarYEobZ7dRNzHjfOc3GnE+m0COlO0YZBWCwVKcgiwLA1X3ha3jEBa+B7RuV7jyeULw/BgPjZcX+
	pdqBgdyI4yHnB9kgkv6Ahys3TV2LGNr/bpEOG4KFDp7u+quYlZFwrsYk/5la6ncqFdsuPYcMKctNi
	AzRVjDl5soQ3NX2O7i8xy5Y3h52mboukF+Tv6Xc19nfZgiIkLUNicVIeNW3OiODt7qu7YL9rkIEIz
	9OvCMdrgBYVlGbIt8A+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcCa-0003yN-0V; Wed, 19 Jun 2019 15:08:44 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcA6-0002Mg-QG
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 15:06:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id y17so12433658lfe.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 08:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bi/NrYG+8sOnuxk9q70QkcnFR1MkzWvqPkJLzNB9EUY=;
 b=bkynCYDZirwIrahFMCwUlYTHjTAyuCDr5SeJY6dLXr4s5kETTWeNYIkUC2JCIHgjXd
 hTR18j+Vq+TjLDHN7RAjmoT95KMKsHGv/g8kEKouOuVTPWFCu2xAf4r+t5rcB6V60pV1
 q8YKqP98KHr/LFnX5XuAHmo8AIWk2hjZ0vo2H9c8Ai9BGHZu9beLZ/GVBo+fHz0BLe+O
 Jii8meli6T2ciJV+5hhEQywiCj6ngKyAP4ojML+sNjaeH/Sd63oTvcuprq+L/RcsHJ7p
 70p07j37cX2UdHPgjgt9NhpdOZ1CD58Npafqa0WiNQJLstZDbDpo+GJRtm4W5R6hd2KS
 o6/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bi/NrYG+8sOnuxk9q70QkcnFR1MkzWvqPkJLzNB9EUY=;
 b=B/HyAyhH48zEBeXXlVdjPle/L9Ik4zDVSXxFSKknG1Pq8BO1ZNcbCiUizeJQZPrbB9
 LSX7ye1RZTQGot9q2trZYOrWhqwD4KPziMqVx5GS2I7A7QZ1PRQTvNapMwhoMjHyVbP2
 ewD9qPbMhXsBVpQiq2tH0eGGvynyD2jHDubSd77Cw0dUOy7Bh12JxlrsVnzd03epyajb
 zeCos2vQ92OWJfesVJXlarRRN5KHquk37ciHH700IMVzRXw5XeSNBhcWzGYe+1xql/qd
 wQsMpbvz8tEM2Lf3/3MkWRdJ7CM8v7kHgi5SWRMG+2KSiIO1b6OAf6HAKlb1ebxAnYuP
 qY1Q==
X-Gm-Message-State: APjAAAWeKEUuAXJ5ebmBIRj54Zr5XOYd19WbKrOjD8RjanP4V2/xr4im
 Q2V7l+7CXc1963RVjOhVzrBPOg==
X-Google-Smtp-Source: APXvYqyiBsf9vdQVTu7mhmXMLSLNX4OELuXE3oFCKOSyKLuJ/4ZLE4f8StUo2YggWubm0wcbIy7+TQ==
X-Received: by 2002:ac2:5981:: with SMTP id w1mr41997022lfn.48.1560956768945; 
 Wed, 19 Jun 2019 08:06:08 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f16sm3047807lfc.81.2019.06.19.08.06.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 08:06:06 -0700 (PDT)
Date: Wed, 19 Jun 2019 07:18:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 2/2] ARM: multi_v7_defconfig: enable Lima driver
Message-ID: <20190619141822.vwcfyhatlsa5x4cn@localhost>
References: <20190606085645.31642-1-narmstrong@baylibre.com>
 <20190606085645.31642-2-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606085645.31642-2-narmstrong@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_080610_932056_1A92FA84 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: linux-arm-kernel@lists.infradead.org, arm@kernel.org,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 06, 2019 at 10:56:45AM +0200, Neil Armstrong wrote:
> A bunch of armv7 boards can now use the Lima driver, let's enable it
> in defconfig, it will be useful to have it enabled for KernelCI
> boot and runtime testing.
> 
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  arch/arm/configs/multi_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
