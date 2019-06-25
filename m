Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD1154FDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:09:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wK0GZYQJpnFegc0N8WbZZYMviMjwFgorp8mgXxBVpXA=; b=MtNLsjtb8mJAF2
	ZPdeiDJkoXCFAKeY00yHq/ku3x+38xFk1U2n0tYHXLGPGJmdBGTYoN886B9+oyQwPGK5mv89PqGg4
	FiEnophoV2QYZmTsaYjRy68Bj4FMwo1hM8zCzssoz17BSF7TH/6cQuGRGi1NOgAKjdCKn5lYysaaN
	6VJMHL0PrafRnedtCBWlBH/UYele24n+mNclvHbYJcgLaW6Zpq+RUe21VJiU1HDIVpsR9u4OTGVn3
	tTYLhAEoj8CVRJZQ6wTVSB38/H3afkFstkxdv/yxU6fwRyifoXYlbDJYX45wgos5pgCXqWsKxGyO9
	3eMfW6XuFqlzN2BgacbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflCK-0005hQ-5a; Tue, 25 Jun 2019 13:09:20 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl83-0001dt-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id 136so12576561lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=cRndysC5tZBwFl1f51hr7VpFZZmzCH8o6oYJsfMs3yM=;
 b=m/WFRcuzZS1tmQ2AlO3ZtNKIqnr3peZuVx2Zsq0lPk54gEi5XqvwYxYeenErV3qhq2
 V/0qaYt8UpgHxoDJpssiHf317HfeQkK57mIpDEtAlECMzgyixx3RxT4/faN6AbIfous/
 qoNN4AA53zaTgW85dwVSeziSVKDk2pvM/jBgkKErxYoMgS/OxAgcvB9AtOwHWa2PJRRX
 Jn5M0IiV64bvUNlV7hY7vrTo7/GtLozFQgUnYuCA9uP0SIvWmxzUR6vv+btFTDIOAPve
 KIjnijpV+8Uh4Fa3KLUtPOyP4kOVWb5Z46S/2D7kGNOx0t90U58Z/IXo50mhiK9Qr5m1
 pitQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=cRndysC5tZBwFl1f51hr7VpFZZmzCH8o6oYJsfMs3yM=;
 b=gLkWzNUvPpgQVufafEggGUIteS2oqiKImNfzoHlrdbxhkAwqj3glpK2gE5ZmUS9qpy
 cGJ1W463zzZXHCu4bG5dKR1QP5+LQGergSVH5twgoV2Pej+e8IcgT4+Ra5ZFJQplTIPj
 /MS23NR/+YCwzlEWobG1ZMahDR3yFi3DkLo/YILFwfsd481DcDp8PlKzYK29xCi/WYCq
 4Q8sikpBRyVbCZ1N09Ofm2TetrDA5AWyLndPnPFWPXo7G0+slLMQcxO6goXSRNWywzPh
 rdWM82W1WhBW0gVUOpGqyh7u2XY2FmVTfDMNWOUHTMtUN1naikfgw89vIwbPZFGgMwNv
 lb0Q==
X-Gm-Message-State: APjAAAVrkhdFFamx+B3WF4tIyrzxZvpEp79zVmR0cep5aIAOE2WCMG4M
 ZjlEu9CXxuRiIxp4dglHVvIxeA==
X-Google-Smtp-Source: APXvYqxVRFXZOg5NJcS8n3nsGzOKj7lGN8mtDF0G03/3n+ULiO9n9AbAungimeAWmCUuN0od22Liaw==
X-Received: by 2002:a19:a550:: with SMTP id o77mr25719076lfe.81.1561467893537; 
 Tue, 25 Jun 2019 06:04:53 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id s1sm2249465ljd.83.2019.06.25.06.04.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:52 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:42:56 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 3/5] soc: tegra: Changes for v5.3-rc1
Message-ID: <20190625124256.qrkwa3gghnfi45yh@localhost>
References: <20190621150206.19037-1-thierry.reding@gmail.com>
 <20190621150206.19037-3-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621150206.19037-3-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060455_158614_2F3CBEC6 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:02:04PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.3-soc
> 
> for you to fetch changes up to 7ac13f6dcbd59b8f99395588cd7ef31f7e3bd3c6:
> 
>   soc/tegra: Select pinctrl for Tegra194 (2019-06-13 10:44:08 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
