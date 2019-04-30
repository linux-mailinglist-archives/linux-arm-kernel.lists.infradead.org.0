Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8940FE47
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 19:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CN+2C/Wr4KT7n6JpXIwe2Jm9pZemrue/nctdiqrJuU=; b=V5OYIte1f4/ot3
	hM+61EePMR414028C0fxd4ds3DNLt65zD8MOaegDZlOGCkbpCdWPT2Osss/bSrCJpIB54r75RW7ND
	kdpHT0intRh4VU6bkdWrl+v+oLq4nW80jPgqRUmw5LaGme/zlM831cOkcxqNVlfHVs3pO0uLnLZNE
	Xme+DVV/6AQ80uAYDX9fwTxA9P9OmSJPwT6YawuwzBriRLvo3tL8bFFmIOe5A0JoG9Ou1SNN9upJ5
	egB2Ou5nDiG0qkRUpKWfJESXpDaB+M799lDBZxytZ+QU9R1p2RZS0iyhFNL3rD8U/LVlTZKExzmGA
	nuNde1J8d5g+2JbxNsxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW6q-00018O-Ln; Tue, 30 Apr 2019 17:00:00 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW6j-00017p-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 16:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DpyzH6C7CDzVv5rpAbyNDaHnn+kRSb3nqDne+G2smGk=; b=zrsmprsfOsmr3PVItgVW65jyC+
 w94doDuf92Q955drappbRDqSk2RC3NVZHRX9L+6cSVatkujdMCpfQQGhEDZ0UvFeVH+l6moueXPEo
 wLZLCJrXhuP7Prm1kzSDUF9Q2JnRo71EXhS2iWB5L3FN4k64wUTdWgKP6XQl0vcxxxNg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hLW6O-0001v8-07; Tue, 30 Apr 2019 18:59:32 +0200
Date: Tue, 30 Apr 2019 18:59:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Esben Haabendal <esben@geanix.com>
Subject: Re: [PATCH v3 07/12] net: ll_temac: Support indirect_mutex share
 within TEMAC IP
Message-ID: <20190430165931.GC30817@lunn.ch>
References: <20190429083422.4356-1-esben@geanix.com>
 <20190430071759.2481-1-esben@geanix.com>
 <20190430071759.2481-8-esben@geanix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430071759.2481-8-esben@geanix.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095953_664822_60D19A82 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 Yang Wei <yang.wei9@zte.com.cn>, Luis Chamberlain <mcgrof@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:17:54AM +0200, Esben Haabendal wrote:
> Indirect register access goes through a DCR bus bridge, which
> allows only one outstanding transaction.  And to make matters
> worse, each TEMAC IP block contains two Ethernet interfaces, and
> although they seem to have separate registers for indirect access,
> they actually share the registers.  Or to be more specific, MSW, LSW
> and CTL registers are physically shared between Ethernet interfaces
> in same TEMAC IP, with RDY register being (almost) specificic to
> the Ethernet interface.  The 0x10000 bit in RDY reflects combined
> bus ready state though.
> 
> So we need to take care to synchronize not only within a single
> device, but also between devices in same TEMAC IP.
> 
> This commit allows to do that with legacy platform devices.
> 
> For OF devices, the xlnx,compound parent of the temac node should be
> used to find siblings, and setup a shared indirect_mutex between them.
> I will leave this work to somebody else, as I don't have hardware to
> test that.  No regression is introduced by that, as before this commit
> using two Ethernet interfaces in same TEMAC block is simply broken.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
