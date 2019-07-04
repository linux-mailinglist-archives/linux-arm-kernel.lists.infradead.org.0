Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BFA5F9BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:08:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x1+pQPh4n5TqWQRq6rfFyAstUOL5kM+VicbLMWqnA0s=; b=JOlIWgSUcKWVlC
	gZrN1B4jDRJbrkJ11l8E8sYr0nuJehqqxHLZ79dUnJ3Os0MZf9r3rCUPrc4ylMRr9e5U9f/b88p5d
	aWNxtRn2PBSQToTqtvxWF0XFVug4PkWpsBIvwLHlmF1nj6kxtUyrM0QAqX0JHGaLRPGeKqGlXg87e
	JONCR2GSg8ALdiN+s0uxrk8w4BluWDbdOHOzRSVa4VjgjFBmYTOPWdRzqT2+eMU3rqcZpp3VU1qlF
	nNmM3qa0aTWY0hUXGCWrtqMxQT6ubqN9KdsLhbJZjmPbMYP2HXH2Y/tKSmaEiU2/4O0cGvQd2p3Rm
	VEz34m7b44sk/bWhq0Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2P2-000649-2O; Thu, 04 Jul 2019 14:08:00 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2OV-0005pj-RO
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:07:29 +0000
Received: by mail-lf1-x144.google.com with SMTP id z15so4310576lfh.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 07:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=RFXHQZa1viuRQOoVay4WlCqr/Ea3/QL2OlXOP1Oaqq4=;
 b=TCbAD2BW/3bilUX5Aa3cCkbuTWB+tFSXHdNdXrkKRs4ijLlWW1fBPq4uSkAOLyI0DS
 QjNQUi8jy0sc/dEuHnfWzAtB1RFCAxOsIp0dLxUCXdzk8dMmZtumY1V9mWUxW6f8ATnw
 rPv0w7exkS53Ehnmo91hnwQwfh2dssvVwqXyszzJMLwkzLTkevbKDDzzJxrKhdRb002A
 9HrCD3m3MkHayQIPgdixtfLuB0cNhXK+A6tKABBXmhVKYD0Mt6jts+gjq7MkEu7D+ATE
 QVDD2kY475AhVUMp6GNcWVJjUJfkhRWXrjG1Y6EBfpMOjew3MkORK/uiq4ciuFJL89Bv
 rGNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RFXHQZa1viuRQOoVay4WlCqr/Ea3/QL2OlXOP1Oaqq4=;
 b=sfLqUgK1ndIQagpxakSrQvHq+XA9V1eNGurxf1LfWTlIwx6CjKl+KlS8i812zGfgui
 HYuVHZmMbdCUv8XIql9OWGQYSMTWOdusFQuLYwd7ymt1esmOrV1yumVQpxDuu3rBiNPs
 5O2dqmhc9REhjADVyRjF2yDfN5S1o3CCTesR6QbdgZmIuhJilpzvGgcdygPOYv7BnIpI
 75ivPmDvpSjExSrvMLrB0IHd4bPFcg6aHbI6hp6kwIxHcemFkqXWp0QgwK2NvvMtaosD
 srb0DK6w71NNPOhsbTIVeARwNUkZXCj6ZvmxOCJpEyN1PJiqJcUWQiGy0W98GUeM5Qh5
 4Rhw==
X-Gm-Message-State: APjAAAVKnmni79BXjJpeG5P7GIiODcGNXDNOc5oxZi0JvrSvDfygfTXA
 qIniz8Z1Mv3yC0JBrZw5lESPLg==
X-Google-Smtp-Source: APXvYqxhenNvHieClvgoziYMI/LmkNvo4GSO1jEfcPxxhnsFLbw39L9SKThh3AhyxqfVfATpf3sZZg==
X-Received: by 2002:a19:8c06:: with SMTP id o6mr20977941lfd.176.1562249245230; 
 Thu, 04 Jul 2019 07:07:25 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id m17sm989369lfb.9.2019.07.04.07.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 04 Jul 2019 07:07:24 -0700 (PDT)
Date: Thu, 4 Jul 2019 07:05:08 -0700
From: Olof Johansson <olof@lixom.net>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: Reset controller fix for v5.2
Message-ID: <20190704140508.6w5ovzqqsseerhyu@localhost>
References: <1562236626.6641.13.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562236626.6641.13.camel@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_070727_887208_8BA0CFED 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: arm@kernel.org, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 12:37:06PM +0200, Philipp Zabel wrote:
> Dear arm-soc maintainers,
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.pengutronix.de/git/pza/linux.git tags/reset-fixes-for-v5.2
> 
> for you to fetch changes up to a71dcd3757e29cc8b43383ff18595d707cf08345:
> 
>   reset: remove redundant null check on pointer dev (2019-07-04 12:10:55 +0200)
> 
> ----------------------------------------------------------------
> Reset controller fix for v5.2
> 
> This tag removes a redundant device pointer NULL check from
> __reset_control_get_from_lookup to fix a static code checker
> warning.
> 
> ----------------------------------------------------------------
> Colin Ian King (1):
>       reset: remove redundant null check on pointer dev

Given that we're so late in the release, and this fixes only a warning
for redundant checks, I've merged it in the drivers branch for the
merge window.


Thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
