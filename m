Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E418DB692
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:24:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2crgSys4FAH0D8vFPQ4UX7Y2HLAhyPxNuEJUim1whw=; b=CN5o6Pq4sE7aOE
	0NjTvvMNqwskpp/uDRLOUDOipN7uMENlgnktdQGeMhAQ1mph6CsTcbXkvqL29i2X+KnmLdisiGRU9
	v8zniGxa1kKh4NwxCBNXxg0hWJiZUwdVl3YEmk64G2U+GsFmz5ihRridSfmLtM/GNa05u8URCZl0E
	lgCNYujPgO6fUHELhz2G4m7TlX/YYf9bjslZs0LtQybGBlMQadiCcsQrdE+dIVQLOhq+TkNXpF946
	kvT2MhF8i91NxVGuYjkWHpCyIswydRCwYBxNA9CiVnaRVHebf7FGDgMee/CcrI8n9dk/O+EScKoEC
	5sNece8t+z8N+6o2n4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqLP-0005ir-AW; Sun, 28 Apr 2019 20:24:15 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqH9-00082e-1X
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:19:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id y8so1073136ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lV7l0wiX1IA0af/RdIr3RbQ4JHQS1cmheEjE+flUnVI=;
 b=UHb62YhBGOzkDb7FHiE05QUS+GvFjw432ojtmnzMeV8mDgyVaw9XxZns6SSUmCjiSO
 Le6DvmmVcojFni4kGO7N92LDG1Ti+v0eKeMdjPkWOSEbfFZ94jpTwlRpgqXXseli+pEV
 qHFgxFfYFLg7QO/H/kAOpUcXWOO7pnNc1QdFnt4AuuiumcC+/SybyOAsu+Fat3+8hp++
 Z9m/pmjzqB4zg1LIYdcA0zka79+UuGyQEl4vmE0PFSJuxQuwylw30hx0lRydiuWy//if
 WksGTp+nBdNU5+evZupxd+QLR6mHL2uv8c4iW8b49juUJJKZF3qNymZalh0SQAf2Qngn
 zfIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lV7l0wiX1IA0af/RdIr3RbQ4JHQS1cmheEjE+flUnVI=;
 b=Wy0fp+HuI0vvD2D8w743+Z9OOXOsNXRiXlgd9Oqo83JtUbCLAbMezCsxTvTjHuzZlv
 LGcDpb3JLGXbqpAIdm5AYAHgYRej9dkPvLAKUqU9lYRIlAt2gVF/7gB8dGK2LrB9IYbk
 0tryYtrf7pi3/v9Yat0HXnBJYf1naKyrnLraOmowaEMaully4Z47okAcGJp7h4fyxXD9
 TvXKtFzyI6ml528UQKDD1uWO8E8yrLD7ku84/85XuVFW5tt7YNk1FikhdmAnFruVF+HN
 qlytxuW0tyFRAVVIgbxVw4nH303otDET8u2KFx7K0EB8xDHHoYrZ3WICZfWhw7wodIkc
 PqRQ==
X-Gm-Message-State: APjAAAXwtHjO3VsdCBi8r+i7DiLQ701RY+Aa7LIjr89maV6m/Kq4ndvz
 egaFSgTDJOutXAvnAUCPHgwXAw==
X-Google-Smtp-Source: APXvYqx6yxB85XYC5qdy+8dlkBodhWeQ34xZSqyYxDSL34hj4BtUAmllqAw5pCLREqh5GYPV24xZRQ==
X-Received: by 2002:a2e:9811:: with SMTP id a17mr31955916ljj.96.1556482789484; 
 Sun, 28 Apr 2019 13:19:49 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b25sm1683102lji.50.2019.04.28.13.19.48
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:19:48 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:42:16 -0700
From: Olof Johansson <olof@lixom.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [GIT PULL] Allwinner arm64 DT changes for 5.2
Message-ID: <20190428194216.5uojye3qw6cqu6mi@localhost>
References: <20190419114702.dhhn6tm3jueg2wnb@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190419114702.dhhn6tm3jueg2wnb@flea>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_131951_171760_D6EB1623 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Cc: Chen-Yu Tsai <wens@csie.org>, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 19, 2019 at 01:47:02PM +0200, Maxime Ripard wrote:
> Hi Arnd, Olof,
> 
> Please Pull the following changes for the next merge window.
> 
> Thanks!
> Maxime
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git tags/sunxi-dt64-for-5.2
> 
> for you to fetch changes up to 7cc399f267813c2b25e04d7dfa0a3dbea6ece94c:
> 
>   arm64: dts: allwinner: a64-amarula-relic: Add OV5640 camera node (2019-04-18 16:53:57 +0200)
> 
> ----------------------------------------------------------------
> Allwinner arm64 DT changes for 5.2
> 
> Our usual bunch of patches, the most notable one being:
>   - Fixing the DTC warnings
>   - Fix DT bindings not being properly respected, thanks to the DT
>     validation
>   - New Board: Oceanic 5205, Beelink GS1, Orange Pi3

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
