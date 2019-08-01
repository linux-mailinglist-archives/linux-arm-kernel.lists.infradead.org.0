Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D91CA7D415
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 05:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JLXHY6WMa1cgSm64XNppp0+hfESL0eJcwsEZI6uUOBU=; b=cjsLahOHpSvvPN
	qpqWU+SYfo2dYElJcFPjDJ4k8KhSuFmvYWqleajvox9HZtDE23Be5WvcBr56kSxAaonfEHaBxSaCj
	RKhfPCyzclpWghuBsaB54NZ8A8MYzNpJbFMGZXcCCDHLUE8RL5ZBRvijaYW0NgLqFsHSMXKBGuQkK
	JmHtbQYXz61A4ESejwieEtNd0SwJaO6AS+S5gyH0yWS5jhlW6eYNL3ayIIRaQ2imSQMUgdmu3t7mT
	AC4xBG6P2VqnEA6h6B1AvEZqnuymzW9WoZOXNpcivkKbauySSa1TF/jOTlTwLKuwmf7eRvyTxfAGj
	6U/IDd+MGl6g6o2ZStww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht29l-0002QP-4M; Thu, 01 Aug 2019 03:53:33 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht29e-0002Pu-Bo
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 03:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i+xiGwhXdJqGFKHqNYypzsb8d9FKCTcmAUxJJlCFCNI=; b=CIUuwPXn0RK28+cotr87ARLIvL
 mS9mHR9aQTtLi8bLMfnrNg3BENvxGbcSp8+LRgyLGeQ67jlmHoXSvu2U7pDZCsvEA44gqmGIoj0Fu
 1RhUrkitFjyGylmeRoH8fuwuppTxVQk7Y3NKHwhDKdMK4qEtH5bndaS58/EQ0DiznRTI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1ht29T-0001Lk-96; Thu, 01 Aug 2019 05:53:15 +0200
Date: Thu, 1 Aug 2019 05:53:15 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH net-next v2 2/4] net: phy: Add mdio-aspeed
Message-ID: <20190801035315.GG2713@lunn.ch>
References: <20190731053959.16293-1-andrew@aj.id.au>
 <20190731053959.16293-3-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731053959.16293-3-andrew@aj.id.au>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_205326_553745_C045BE59 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, f.fainelli@gmail.com,
 linux-aspeed@lists.ozlabs.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 03:09:57PM +0930, Andrew Jeffery wrote:
> The AST2600 design separates the MDIO controllers from the MAC, which is
> where they were placed in the AST2400 and AST2500. Further, the register
> interface is reworked again, so now we have three possible different
> interface implementations, however this driver only supports the
> interface provided by the AST2600. The AST2400 and AST2500 will continue
> to be supported by the MDIO support embedded in the FTGMAC100 driver.
> 
> The hardware supports both C22 and C45 mode, but for the moment only C22
> support is implemented.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
