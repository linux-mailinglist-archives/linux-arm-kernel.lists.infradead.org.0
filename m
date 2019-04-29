Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23759DC6E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLUSPKyTNzkxOJwIf6kTM1ITOV9Du8eYzKpHON7sq+E=; b=rDxNJ3wxrsTOQO
	DGmPFlSTKzMLP3UI+xaNBwD3fPmRAdu1WhdeBMflwC2JrlZXvVemex147nrE95Etmex4UupQ7Xfri
	stBEI9u2g5d5pBHcgj7HwqvY9+KBOR5esp1vTGMKTpqfEgjXRdJvHLdrumgvZ/ny2Zk2S9bKbf+Kv
	OKRHeiK+YPVU/XWMqpbep/IyEk1/mHJg1WRTLiGkaFIZzLjNAp5u2djWC7xEwsafbqTRD37DziK5p
	GYrqFfdUgRG1DGj5fyVF2rS4WeTxhlSJwTII5iyByaSQ2Gt+QssJjnyB1fel09XFwEBIYw/haWAAn
	yZMy7eu0aXeGpgPSHNCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0Go-00005j-P8; Mon, 29 Apr 2019 07:00:10 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0D8-00062M-OW
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 06:56:47 +0000
Received: by mail-lf1-f65.google.com with SMTP id v1so7087503lfg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 23:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VJJi56/HZ5V47wHMOB68GGHfM+IJiPYGQuykcymneFU=;
 b=q2x4/qdloWFkr7+P5f1rN/iwg13vpNfm88NImAAgWc0Yc7g09VR+UJQavb/lsAi/f5
 8pe34UdgzPP9cNCzNCS7VTBZBkPpEMBda29t92vO0TyZdi9bJQckPgoVJys0zZ4aLiJp
 qdDAjNqf+JWlvyDxoS1Y01/2Bpp4l2ka7qGtXMQegfKuY40RNKAYUQ//o6Pb9TY5NR96
 Ug4d7mJGECp1u7HJqWzokwjpTgxwhQkxgIA9rNuvxcPxxBs+JBSNcigqsdp/WJKgZwg3
 RD3STHJOHLQ1LrkcQibnMksParE5UTj+MmFWgwjr7XEp0AOFavSTCTn1d4HNsyAFtiVj
 Tspw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VJJi56/HZ5V47wHMOB68GGHfM+IJiPYGQuykcymneFU=;
 b=PzH3WMUOjmOzxMTkemyM2Part5IsCBpMP+zZwpoj8BZ27ZCRlC5v0xdAHmK8sc6QOH
 8es8lvRHEQGnres6PS9rEwGX1SQ0odOvXpbmHCTvDJh7rVTY8uGcQpWa089oO0SN+8DY
 /IinBFt0+Bt1cKd9W5paDUzDheUlrKILHMKCE3yvh12qyVCyKHGpA3iq4+jer4iQWPw5
 LnhG9rke7DxX1NGNfel2Qu1ir7CePAxiZd68T/slw9mfgE2KCEG0u4VjdUQ1vM3BK8uC
 MY1BZgrm+RZ+xKjUh/bWbxCST1nPQGIYNvA2yoWZ62zLAumrIA1hg1Vdj+p6iMXotNIk
 1mhQ==
X-Gm-Message-State: APjAAAXj0zkk2RtGBfKA0GDYNEIo3ysja7LQaMUzrMs75bzQb/WhPqfH
 C/A/ph7IJ/PhhsR2dMIoaDvYLQ==
X-Google-Smtp-Source: APXvYqyD+sfrJfFg/jQ0CO1sGbdugzizlS2mx4CJJOT8Z2lxBo8Fif4GrL3U9kG1AuUb178UzuM/nQ==
X-Received: by 2002:ac2:5181:: with SMTP id u1mr16932721lfi.59.1556520980309; 
 Sun, 28 Apr 2019 23:56:20 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id f15sm7176286lfa.89.2019.04.28.23.56.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 28 Apr 2019 23:56:19 -0700 (PDT)
Date: Sun, 28 Apr 2019 23:40:48 -0700
From: Olof Johansson <olof@lixom.net>
To: Simon Horman <horms+renesas@verge.net.au>
Subject: Re: [GIT PULL] Renesas ARM Based SoC Updates for v5.2
Message-ID: <20190429064048.axooxum55qabfkdn@localhost>
References: <cover.1555683298.git.horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1555683298.git.horms+renesas@verge.net.au>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_235623_307819_CA205A9C 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
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

On Fri, Apr 19, 2019 at 04:35:07PM +0200, Simon Horman wrote:
> Hi Olof, Hi Kevin, Hi Arnd,
> 
> Please consider these Renesas ARM based SoC updates for v5.2.
> 
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-arm-soc-for-v5.2
> 
> for you to fetch changes up to 115bbc30c6d2d7c8eddf87f88c1b7033522d47d2:
> 
>   ARM: shmobile: fix a leaked reference by adding missing of_node_put (2019-03-18 10:32:36 +0100)
> 
> ----------------------------------------------------------------
> Renesas ARM Based SoC Updates for v5.2
> 
> * Power Management
>   - Fix a leaked reference by adding missing of_node_put
> 
> * R-Car M2-W (R8A77910) based Porter board
>   - Enable regulator quirk

Merged, thanks.


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
