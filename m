Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7505CA86AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 18:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5dUYqMFRtsFAPD/82+wvKEuor8tllIOQ3s8vmNUWgc=; b=o4Rq08XikNxbuE
	QMIAZCyi31YSWjl99FlBZykrOd5/RBzL6PfoEJTbVS2nlx4XsKkjIMh3dd8nBNcUFqtszVHGidD2W
	RqGKnwP1BXlLvrwvgPSC5X/56ObCbLpOEMmqytsucL9b9E8VMLqE6GDjqum3cfQfKKfbORwPxvPDB
	cgGh39EWefeyd78NnnL7uWiCEiOdyytM8Sxw5Ifw8y7/fVkgOWil7YowiHfxLdsHB0MfEWu0yOzgD
	bfsMLVC8RZIjwZ7c2ost3gLFCcFhwnc0DIrHwlmEblRcS5Et+kv4VpgscuvmE3cS4M0UKD71OMo5G
	qnNKL/x4+xItjbKgw7dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5YQt-0007z7-Rq; Wed, 04 Sep 2019 16:46:59 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5YQi-0007xy-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 16:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=X1lVgDd+Kyczn3+9J0jI4kK8khC/plLZqB01rSuWgoM=; b=5q7arHBSkkDtxNu2cycz6N09DN
 0esoGimpmOQ5FluStqrIalHacCue+952F7efwjRu0GYY7MnpymjGCR84OebQv8bMMCxXcr3AswDEO
 KC7G+Sb95JyD9EhG03Gg+h9kEYloG3hVDRuHBNjouchcmd3b3a4XnkJNw4965d/wCV74=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i5YQc-0004WY-Py; Wed, 04 Sep 2019 18:46:42 +0200
Date: Wed, 4 Sep 2019 18:46:42 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Harini Katakam <harini.katakam@xilinx.com>
Subject: Re: [PATCH v2 1/2] include: mdio: Add driver data helpers
Message-ID: <20190904164642.GA17114@lunn.ch>
References: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
 <1567605621-6818-2-git-send-email-harini.katakam@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567605621-6818-2-git-send-email-harini.katakam@xilinx.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_094649_098506_B1964E9C 
X-CRM114-Status: UNSURE (   5.94  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: f.fainelli@gmail.com, netdev@vger.kernel.org,
 radhey.shyam.pandey@xilinx.com, michal.simek@xilinx.com,
 harinikatakamlinux@gmail.com, linux-kernel@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 04, 2019 at 07:30:20PM +0530, Harini Katakam wrote:
> Add set/get drv_data helpers for mdio device.
> 
> Signed-off-by: Harini Katakam <harini.katakam@xilinx.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
