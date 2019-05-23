Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E08C1277CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 10:16:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9Wsb4rJwFNzmERlWvnUW5PHQxPgg+fWHNs/3rT/yiA=; b=sefbm4+h/BhSZz
	5/Whotbi5IN4Mm2qRdKgK+P9PnmosyGo2v81iiXUubo/J61waPppeTf7HhMy1O5Duv1hdrJQU34rk
	XN6Mb3KeBC4EtOcUKaTA5zvZgIZplaIvVsFoWnMIGsq3yIBPVnBMUKGjwTsGNar+BZI3bppZ53iYQ
	vU+GNiuU2IWBH3hMcloS2baeO9/tP4Rsp0ZfJOtY4vNuOayeyazpVdPnk+LRUeyOjrXWaKR24sWjE
	WjFQxdghC6giXjNrwRir/P4YTvxEO0+bmnxxrXAbNYWzyCZDQDSK3pzo0YMrIRhOzDG4aLLor6Wd6
	SGhIOyXv1d4d+1NaTNbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTiu0-000720-RR; Thu, 23 May 2019 08:16:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTitu-00071Z-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 08:16:35 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2970920665;
 Thu, 23 May 2019 08:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558599393;
 bh=NZf4YLD4LHzsJ7Iw0Ui8Zne1NY8VX4JKe1guPQ0sIXs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=w0FJxcelTJh94Ds1oI87eUSzKc7ByFngW438dgYJnRvVoSdEPHHoX5VfYgyAtKB4j
 MxulVl3rGw6Non02hQG2DmpTpK6O3kc9Qrj8hcOylDuyquvMQ/DxvWzO9O0Q0Z9Uul
 g+Xx2ocuExBRfGkJyQ3hF/nqrNOkbetNiOPQ9sRk=
Date: Thu, 23 May 2019 16:15:34 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [EXT] Re: [PATCHv2] arm64: dts: ls1028a: add flexspi nodes
Message-ID: <20190523081533.GJ9261@dragon>
References: <20190515110924.13726-1-xiaowei.bao@nxp.com>
 <20190523080049.GI9261@dragon>
 <AM5PR04MB32997EA37551AFC88FCBE2C6F5010@AM5PR04MB3299.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM5PR04MB32997EA37551AFC88FCBE2C6F5010@AM5PR04MB3299.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_011634_249730_05724060 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 08:06:42AM +0000, Xiaowei Bao wrote:
> > +             compatible = "nxp,lx2160a-fspi", "simple-bus";
> > +             #address-cells = <1>;
> > +             #size-cells = <0>;
> > +             reg = <0x0 0x20c0000 0x0 0x10000>,
> > +                 <0x0 0x20000000 0x0 0x10000000>;
> 
> Fix the indentation to git it aligned with above '<'.
> [Xiaowei Bao] this is aligned, I don't know why it is not aligned in email. Thanks.

That's fine then.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
