Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6A29863A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 23:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W5HDUyZzlRd7CItjzzLTqj2/pf+G51KaN271/umjh34=; b=RgiOQZnPJP8FxI
	8hpnmDXYgw9KNDdhRC/gyEZmbwTyeN6U38BbjNqzUG9VWq4ZLPu1DXKqPXaQB/ER/4FIJHZ4B9wIF
	jiB8HW6tDogLW0uOUgSnDLBosgzVxYTthNtaiQZ9Wvq/JEL3L5gDIqrBmJ9+BH4qyUNDrsLhNz/Ju
	luS62XY2JwXXQOAWFVjsbMjLIDbkY2gIHj/eC6WH+TQ0dLzZCQLgXkn0nWR8tnKNv/EB9yYbLDjbB
	gjluq++HfWd2CqLHJP3MM93zlLMOUnzshZNVNUNleapD71WXW7aPmx7ukEy/X+Lcqg/n9lp11UCzH
	vH298KcvU8/tWBrK17kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Xnr-0003a9-HS; Wed, 21 Aug 2019 21:05:59 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Xnk-0003Zd-Gt; Wed, 21 Aug 2019 21:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Rvl93iZiPwt6hyRyRBwILS2dFDVCroIMTnNqvpC9gZw=; b=W9vKw3GJXbKV+1lnFbQkx1pY2h
 osciFrPjrzqF0VqJwWR/ARcXaSDlGH2jBuMD24p2yBtIsc7rIeDjk7Wv6Y9Sk4REyO8Xa/IAQu6bQ
 unGXHCzWNkd2256rkPXDdW7jyiDco8+aTOYrT1fcpfPq6FaolgPrtC44teDt/qPz+s1Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i0XnM-00081a-I4; Wed, 21 Aug 2019 23:05:28 +0200
Date: Wed, 21 Aug 2019 23:05:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190821210528.GA29618@lunn.ch>
References: <20190821144547.15113-1-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190821144547.15113-1-opensource@vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_140552_715898_EC2CE72F 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Frank Wunderlich <frank-w@public-files.de>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 04:45:44PM +0200, Ren=E9 van Dorst wrote:
> 1. net: dsa: mt7530: Convert to PHYLINK API
>    This patch converts mt7530 to PHYLINK API.
> 2. dt-bindings: net: dsa: mt7530: Add support for port 5
> 3. net: dsa: mt7530: Add support for port 5
>    These 2 patches adding support for port 5 of the switch.
> =

> v1->v2:
>  * Mostly phylink improvements after review.

Hi Ren=E9

You are addressing comments mostly from Russell King. It would of been
good to Cc: him on the patchset.

Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
