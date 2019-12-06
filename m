Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED5A11558F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 17:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4W2YQJdG8MAjnYpfKUuWDzzkC2d+i97V5Nncl+wxeI=; b=fPXn5owhMPz085
	mf50Mahm3sTwxfqohhoLbi4f4HO+WoYbfIt3PZxmuwB65y1tkY2XNgseBectm4/dqP7Qs3nxtGmq6
	paQCb7LFIVgC8ayJADhvYrHD0rdlF0c6kB809HleOuLHG8vHasETBTs+8hl5mMXwMRBpBiAbN/PBJ
	ogs51fOn5YrwenSJcbxS9Pj8R59baEqSBNio5E53XBY+mztBbl+N13emr4cSAOTJAraHpXxJAf9OW
	uJ5PTu262dM/2qBeUl/i24k9aaGv73Iz5afcIyeLf0Ug+dlbmBNYCAGKv8VR582Bcr4/WfD3sNHTJ
	GxBXeqrC1IciBYVdQRzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idGbO-0001kH-0M; Fri, 06 Dec 2019 16:37:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idGag-0001Df-OZ
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 16:36:28 +0000
Received: by mail-lf1-x141.google.com with SMTP id y5so5744254lfy.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 08:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DRPk1O1R1h527g21CRmqUKR9DN2ErSneYJF6thD8mAM=;
 b=k1bOcwjSJFkf55z4ZFjuuu+86sXcpPBCIyPsUkcJGNhascEgH8LagrWY3rpaC30yBd
 Mtt9xBRdoU/4N9RbxvfB43JMVt4jIcRM26sOpG4Gv8Wmzy0Smri/xUOYcvUgg6v6bLgl
 4cq7+05zYwg15VaSLrk6e9yXFcH1Vji2r27388t6gEoMt1ha3OMBVU9gcZ6p6YN8xE+e
 dAvgLJD/JnDdZ5EMDhU/Sl0ocz8hA0ep7AaRrvt7QFVQTz205BIH05pbYEaBL0rKrDmc
 Y7Hrj9Nyou9gFEErghjNw7B+9tG+V4DZdajGlZS10HsG/qp5WAmXkk44SY9PqFV76nvq
 xm4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DRPk1O1R1h527g21CRmqUKR9DN2ErSneYJF6thD8mAM=;
 b=sfWu8BcNUZr6wPnXiJh15y7FsrSMKGR9vHiYdec9w02yNKFqqwWHC5XZn5I5d7Xvqj
 Dc3R/sq+Wliid6T8rXVqFsVsq5Mp8xvnrpo3oBhopHpg/85E1Cxrs9jRg+HTaiQ0jjfH
 oje+EkQ8LN68AtQ4pHLh2AxsPUfXxEEcs5yuVXUzb70NzAdwH2IUoLfyOvJVzUA6CSdD
 bgdLmlwiycb/6c8vgs1pZdI4tvRnXiHs65VUOWHEwofsa568ncwmxbsUPkjM9TSH8HBl
 MHiODp/gwhmPEu0NpDCeMK6frVbZoIJEptc6SJEkRB4VQQYrKuQhOD+xQ/TI0PiZ+igk
 6RrA==
X-Gm-Message-State: APjAAAUxbCPxbysw8sNlF/+K9tHVxDUcVCevKcA28oT+M6K2Y1Egvz2N
 iq8NlgIaybhXqyQTfsS2vVuv9Q==
X-Google-Smtp-Source: APXvYqwp2WnMWdUJqzI88fXH7I6cWmvl4kdpo7C2bzh+wDD5LcXIx+zJnql7S9jh0lGVQ+5GwAR/Ug==
X-Received: by 2002:a05:6512:15d:: with SMTP id
 m29mr8878870lfo.51.1575650184332; 
 Fri, 06 Dec 2019 08:36:24 -0800 (PST)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id e14sm7881732ljj.36.2019.12.06.08.36.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 06 Dec 2019 08:36:23 -0800 (PST)
Date: Fri, 6 Dec 2019 08:33:29 -0800
From: Olof Johansson <olof@lixom.net>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [GIT PULL] Broadcom devicetree changes for 5.5 (part 2)
Message-ID: <20191206163329.kkyfl3qnqzffvz36@localhost>
References: <20191118182931.11884-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191118182931.11884-1-f.fainelli@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_083626_829371_0BB3280E 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Matthias Brugger <mbrugger@suse.com>, arnd@arndb.de, khilman@kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, soc@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Stefan Wahren <wahrenst@gmx.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 10:29:31AM -0800, Florian Fainelli wrote:
> The following changes since commit 4c365e231bd1d3bbe2bdbc2a0c4e413ffb365b20:
> 
>   ARM: dts: bcm: HR2: add label to sp805 watchdog (2019-10-23 10:42:23 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/Broadcom/stblinux.git tags/arm-soc/for-5.5/devicetree-part2
> 
> for you to fetch changes up to be8af7a9e3cce3cc4b7abbc8211dd06f8e72b976:
> 
>   ARM: dts: bcm2711-rpi-4: Enable GENET support (2019-11-14 12:35:58 -0800)
> 
> ----------------------------------------------------------------
> This pull request contains the second batch of changes for Broadcom
> ARM-based SoCs, please pull the following:
> 
> - Nicolas declares a CMA area within the first 1GB of DRAM in order for
>   it to be guaranteed to reside there, otherwise ARM64's memory
>   initialization will pick up a CMA area within ZONE_DMA32
> 
> - Stefan adds the Device Tree node for the built-in Ethernet controller
>   (GENET) on the Raspberry Pi 4 model B board
> 
> ----------------------------------------------------------------
> Nicolas Saenz Julienne (1):
>       ARM: dts: bcm2711: force CMA into first GB of memory
> 
> Stefan Wahren (1):
>       ARM: dts: bcm2711-rpi-4: Enable GENET support


This one is borderline w.r.t. fixes-or-new-development. The CMA patch seems
desirable, so I merged this even if it's a bit on the late side.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
