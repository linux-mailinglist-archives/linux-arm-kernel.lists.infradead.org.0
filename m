Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6333DC8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:03:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYBG59VfIXyRBDTobn+xfz//m5lb/KPSW1X9wB5dS70=; b=sMznv/LanLYeVL
	BgJPNoiyPFcg3/0jPxMw/dRy3/ewbUfKYWjJ4OIRDwtBkxEXmwgJNHCNbVUCWCFvxIODGcAQIVAzR
	llHOEJe1Hejwgtzocy7tSZ55DXP9FhimIZwokKaz4R97Aq84A8OuYIILbBm4LcS5by2tiLf8Wj1AF
	8FcsqJuEynQeIQRN7ewFhTY01qzO2NcwihBKaUmKPgdRLcThL0l21K5Zvd9RMIBRt97JaA/jhgvrl
	ck926KNqszUrZbyLsl6pFumBb9S4OcMGuNEqrWNrgxg43fnf0vgug30PzbSioVJkG/FiW+fUMaVKz
	7bkeaG0gOkxJgzBX9qJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0K7-0004wg-Dp; Mon, 29 Apr 2019 07:03:35 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0Cl-0005V2-4Y
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:08 +0000
Received: by mail-lf1-x142.google.com with SMTP id k18so6928759lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gPQsQl5DbplSfFbVdX++VLIXgPaDaUws6vt+OIBgHr8=;
 b=J9UjhjCryUvkYkVVI9jh94+PMtfqn4jL4SZaQSY/grUol0iDd105j9M7rqaSzO3DbV
 WSivbp1Ahv/UbhX+9M19V+C6q3WtmWkKv6h8uBa19K00tK21Kbf9d3BEytdoagUbQDgM
 MdFcaRrfseo19+m18603YTLph2aWtgZiU5v8SbTIdh6AdWbihGMVe6VyjgEE7A7b0Tqr
 2Bf2YAmCkn20ogCigG1dukQzzMiCqtU7rbvJSwDEu2vPYUOQxBcS55YYJN7C+Sgnwa2H
 FZQxowNJPDnIwCUf04c3IgZQyzwoGB2Hxb2XelowuhE8quzt+v3LXFiDfMOK+dgd81F9
 q/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gPQsQl5DbplSfFbVdX++VLIXgPaDaUws6vt+OIBgHr8=;
 b=TBDjAzYSU1O2bkam8lcIAnSsOELjgLrLMkm2+BcBGb+T08t7Z1/DU5T0qYK/PSqJNy
 nkA05FDif3ycSoMuqAnuGqyTsD0KbftilSepeY/MIRNCDzuGZdUG4shvrTeIpgaDccA2
 Y1myA+Uw1iNrhQZhcrOU+wAVtguo2cG/tvN7ccTRCi8eREbpior8jPxmU8Ezrf172Kob
 szkT5AlIic3kXx8mKodJp19g27azLwp3VlnnTDkxOYi38qtw7NWuhx44PkaICrhtXUZ9
 fR492w3Hf2pbxlKyl6wZddT6a9jwc8yo3M0jxZDW5QKHv4IzEojgolXGpYdx4aPTPOO8
 YWKA==
X-Gm-Message-State: APjAAAWOQXsb4X8SdiJmcpSAyT1csimywvAza8+Js7pH901DYVXqxRPm
 k60e0Coqvb2riLN59xAwpk1JQg==
X-Google-Smtp-Source: APXvYqx4JKo/xgBS0TsZVz9djajHWTq3Fd0rpbr2pkvA+KKO4jlEJz6bJ4UfAf8XCKaUM7NuZaPD4Q==
X-Received: by 2002:ac2:52a8:: with SMTP id r8mr31377407lfm.160.1556520957500; 
 Sun, 28 Apr 2019 23:55:57 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b78sm7163487lfg.38.2019.04.28.23.55.56
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:55:56 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:33:35 -0700
From: Olof Johansson <olof@lixom.net>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL 1/9] bus/tegra: Changes for v5.2-rc1
Message-ID: <20190429063335.a2llr3ud2qnp66ol@localhost>
References: <20190418150721.8828-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190418150721.8828-1-thierry.reding@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235559_633785_169D5C38 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: linux-tegra@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org, Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 18, 2019 at 05:07:12PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/tegra/linux.git tags/tegra-for-5.2-bus
> 
> for you to fetch changes up to 1427736e64c3a8b513cd984332f596055a7ca196:
> 
>   bus: tegra-aconnect: add system sleep callbacks (2019-03-28 17:26:14 +0100)
> 
> Thanks,
> Thierry
> 
> ----------------------------------------------------------------
> bus/tegra: Changes for v5.2-rc1
> 
> This pair of patches adds support for system sleep to the ACONNECT bus
> found on Tegra SoCs.

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
