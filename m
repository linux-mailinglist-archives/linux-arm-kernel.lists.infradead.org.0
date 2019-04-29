Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A9AEC74
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 00:07:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BPWY4Ph08ANNYiY+C9KUYpwa3eABf3YlQGC5Fp2utxc=; b=FZ4dJiYwzX9Yng
	1tdBSkKiliZKwAE7p2G0j4Y8u0tTOx5+c6zT+4jolLY1+Dwp7eg57Bdzo0W3fzzaOJLHb2gVcyrCZ
	ZYaHYINTGaQ2ekv8UHc+2Ni1xFbzLU24mkzS/yjlSa64oXVhIFZq2X+lRt6iLS8Tr6N8xaDy269oG
	bxHTVxDd6f881/i58NzKmg5ozZFC2Q62iXjjJosv+fLCDm22IJUvJBZSAx4uh3RCGo2TPyGGIe/gA
	fa/Zk8wzH8ZqahDFcTn+vFS+GV0o44hbTSriSfLqvMQHK4cQTE/bxo6bRoKPvfn/JOMwFxUB3JHVm
	BheGlPYGpBu59sarl8iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLEQU-0006Bw-8H; Mon, 29 Apr 2019 22:07:06 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLEQN-0006Ba-5J
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 22:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ze3nddxPSZh0i3nBebZ753zCi/GZQ2MRnRMA+b5QuiY=; b=LsXKsCKCeM3RgGyVpgMD7RBIKb
 qNldf8H8I8ub/GYapf2QG4wNs+R4P74JBSGcSM4g8jX9O2Vcw39EI2PRciAmgKWRY3F1tA0xyAl/G
 nnjN4/FwalQc49F5aw+KF796N6ncOSQst9a2sUWGI3yy6qJ5jDc2KwCv26p37QeVJ5qE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hLEQH-0007Lf-BB; Tue, 30 Apr 2019 00:06:53 +0200
Date: Tue, 30 Apr 2019 00:06:53 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH 06/12] net: ll_temac: Allow use on x86 platforms
Message-ID: <20190429220653.GM12333@lunn.ch>
References: <20190426073231.4008-1-esben@geanix.com>
 <20190429083422.4356-1-esben@geanix.com>
 <20190429083422.4356-7-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429083422.4356-7-esben@geanix.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_150659_346941_781DCD31 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 10:34:16AM +0200, Esben Haabendal wrote:
> With little-endian and 64-bit support in place, the ll_temac driver can
> now be used on x86 and x86_64 platforms.
> 
> And while at it, enable COMPILE_TEST also.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
