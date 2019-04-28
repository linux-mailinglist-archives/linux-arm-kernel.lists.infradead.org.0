Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCE1B6A7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Apr 2019 22:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRgHpZjhVD6eIJLoQhnL4AIQL3ctWK27ceyFPVdS160=; b=o2DxF7kYyuNZtG
	m4MIsr4QHyK1dVb0fx9ZgM+1VGjNP6g5hxsY2Wp1zLoVDmu2y1LQyYr+ymhIgR9OMpBKgS7sRHnw7
	/NXqvm9cW5Xuzv5E1W8KoZZIwc94Rj38Nuu5JnHsyFGquc1hrC3lf4U9lyHaCNCOa1fANLJmvQo6T
	X5W6Iq9Q3wgKZmdr64dD+KKiUiiO+c+bVNc+LPGsdGXnO5qApptAAU8xCe5JP9UgyxvbgLl6DNPtQ
	pcPvKZdlBSyq4fyqAfOVmkP0PwQMI0qh3cDrjnmvvZkfyGnnB9hUU4mVGvq2hWbM1IQFLfJoxLVxT
	/fGeDyBaxI7GlTLuakag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKqSG-0003ro-QQ; Sun, 28 Apr 2019 20:31:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKqIs-0002Ix-HW
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Apr 2019 20:21:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id m18so2849198lje.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 13:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WivmGQO4RuW8PQL7FqfGRxyyPDqgN6IRsNst2/0ie+M=;
 b=IK6fU3V33/STF4ZfwSdX+5qiq4VJNlidyTzsCu/Z1nfYt2W7x0aDxy86bmbM1Tx3nz
 NxPQADhP7o40LazOf+hZjNUCIK59UprBGQ34wVbQwLfzJdHt0Sx7A/CC/kal0gqV1C0I
 iTy6vAzYXj7xrTi72tGHWXa46iu9zdmGYhaiKW9kn0Dlqtxg+QeoxxMXuFbbOrNyojlX
 umwJ8WDA6kvQMqrlIgV3r2KAIJbv4o+2DKGDQ8re8rdmTaON0g9Ra7MlivlRAawgAYnO
 CKVw95nSyWQ9nbpzzv/f6742peDCzJ5oZj3F9DpS1qsjJRv4tv2ITg/clcnhVm7wWvDd
 JTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WivmGQO4RuW8PQL7FqfGRxyyPDqgN6IRsNst2/0ie+M=;
 b=WBAnaxGObjDfeR3l19XcZZydnpQpp9xOCvYRoT94G+V+MR1HgdN95nvOJaqBhLFGAA
 /pm3Op36rPjeIsf63lYLNCkZSKCSz+EaoVwmok/dv2Kiw0VvTXrXwLuZZR0lfj14I5ev
 WSLfI/jiDKxob6cBfHSQ1bvZpcZ2yLBY0haHbSXK2BwEJp3tcQBONPaoOqsamGwnTeEY
 jKrfeYBqJ9GuPQ4tnQMRYUmqE7AXJP/fq797JHERGKvpVTElQ68bwAqbZXOI6Hfh+3xT
 V6tUuRaLI2wO/pIYTC1sFFfC/QEAxEaETaNQkr781L9EuEIM+UdrCLFr8u7Z1WLBocsb
 0+FA==
X-Gm-Message-State: APjAAAUkMUq9KTtV9gWq6wP+tKzOQWUsgCaFmMX32b4W6Bt6+Z94lVzS
 S+rukJKsTL6VRrMy170p+JafUg==
X-Google-Smtp-Source: APXvYqw/TNu1ZIHoFhah/0o8Yp9WqCWp3Q8bHghHrJKR586sMIvvkouMffjFXSNmffKQqsrav5Hk+g==
X-Received: by 2002:a2e:8905:: with SMTP id d5mr27807997lji.59.1556482896690; 
 Sun, 28 Apr 2019 13:21:36 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id e18sm6508281ljb.12.2019.04.28.13.21.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 13:21:35 -0700 (PDT)
Date: Sun, 28 Apr 2019 12:57:40 -0700
From: Olof Johansson <olof@lixom.net>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [GIT PULL] dts64 updates for v5.2
Message-ID: <20190428195740.37housyryoxv4p47@localhost>
References: <5ea296e5-92bd-5790-c075-cf4bcb74d88c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ea296e5-92bd-5790-c075-cf4bcb74d88c@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_132139_330759_B5B4A210 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Seiya Wang <seiya.wang@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Erin Lo <erin.lo@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, arm-soc <arm@kernel.org>,
 Zhiyong Tao <zhiyong.tao@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 06:12:24PM +0200, Matthias Brugger wrote:
> Hi Anrd and Olof,
> 
> you can find below the pull request for mediatek related dts64.
> 
> Please have a look :)
> 
> Regards,
> Matthias
> 
> ---
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/
> tags/v5.1-next-dts64
> 
> for you to fetch changes up to a4599f6ec8e844f53dac15f719084d3b5ffe68c3:
> 
>   arm64: dts: mt8173: add pmu nodes for mt8173 (2019-04-16 10:55:30 +0200)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
