Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4436A9C0A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 00:16:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KnOF9gNbKJkXw/wVw0XJnui2FM6ZrU213nd7BYSkj3s=; b=TSVcTNnSqhCZSG
	jBWdEvThNnIEabktUjG+yqhCxxAmW/gIG0nWoXcSh+IaMlM6ML1kwCoI8RgXiN60wQqi+pQRvhHt1
	/6fZflmKgwlj2ir1xSVhqaf+dDjoQP4SbpONu58Y0tzYM8eyWOUKsau87sJ4fJXBET8RHvJZjBJH+
	l60YvKRXxsv/k1YBs1k0Y0KuJu4ZEOnS69QtELNZ3AsJlbDlXaoZXzAkjh8Apo9T1q/VlDTlt8ia0
	HZpqTTBDEoUdENsI/7tFjoHbCb3f9bCTLnP2pxVyIhOk/zwLbpVviL2Q3kZ/37bCFfvGKhopCnlvp
	hL2bsMQ0Ia9XnXIwzs1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1eKC-0003ln-P7; Sat, 24 Aug 2019 22:15:56 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1eJt-0003jl-PQ; Sat, 24 Aug 2019 22:15:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZfbBYaWAiwwF9+AL5e6CGbMishbNQO6q3Oqx0DLnByY=; b=bAJ+4g+8J9jXJudOhOfXObjw8L
 /d61ZLEFR32bZxLPK2TWNVDvxbeSDWitVxd+jDT4kZ8KHZLy5q1UbuZtXYhwXJiG6YkMZaUaVqxtw
 sw2bQT+VwDZvI/psNryZJi8My+BUdPgCbS8y+L2+d9+Le2lb9GheTPwchgIwAQsUSqXc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i1eJb-0003xa-7I; Sun, 25 Aug 2019 00:15:19 +0200
Date: Sun, 25 Aug 2019 00:15:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190824221519.GF8251@lunn.ch>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190822.162047.1140525762795777800.davem@davemloft.net>
 <20190823010928.GK13020@lunn.ch>
 <20190824.141803.1656753287804303137.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190824.141803.1656753287804303137.davem@davemloft.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_151537_981998_C8C3DC64 
X-CRM114-Status: UNSURE (   9.94  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

65;5402;1cOn Sat, Aug 24, 2019 at 02:18:03PM -0700, David Miller wrote:
> From: Andrew Lunn <andrew@lunn.ch>
> Date: Fri, 23 Aug 2019 03:09:28 +0200
> 
> > That would be Russell.
> > 
> > We should try to improve MAINTAINER so that Russell King gets picked
> > by the get_maintainer script.
> 
> Shoule he be added to the mt7530 entry?

Hi David

No. I think we need a phylink entry. And then make use of the K: line
format to list keywords. I hope that even though changes like this
don't touch any files listed as being part of phylink, they will match
the keyword and pickup Russell.

I need to do some testing and see if this actually works.

  Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
