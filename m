Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 867641AE50F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 20:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZRJCSpPgzuPNmXKx4HQZjikUyXm/9KADGnp2KqL2Aw=; b=dRCCOidFEdEB7M
	t4sreSmh8yRa9V+W+blzXoM3Jl/u999AxSmtjGcnBHrs2fe9yBxTYTp3FoQuSWhpUU5VNAHR3Dh2e
	AiZ3btTJhk7GsDDj1VtYmjFBB3N/TdFq1CoRTVqwNH5kAyqviq0CWQcpUJAmwuLw4ASCddMC5P227
	l4CWfIgcjpLfpDo/bpZG8WscAsPpOl5lh02ftXOyQ3Kh7HR1vmnfgoK6eQVotpcn3l2j14OYrHJe0
	b4Oyl6Jtk6qa2EnrDgqUYrSRIRsgfhkOhdVXuj9jMd0UKwtiaAVYOIyuZxpqVd2GM94+7xdf6J+kk
	4/m7RcdnCiBdh07lnrEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPVz2-0000Cp-Uc; Fri, 17 Apr 2020 18:45:00 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPVyt-0000C9-B3
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 18:44:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+ObM/A2hqjWLRAVfTuk1oXAkCPtHwJYy8q+B7ukFaAE=; b=fV4RFFN/LTF3o1IKxSniqwMn2+
 z7pKQwnNd2tOCF74rZoLOkK0LA3Nz5Fw4QKcL2777ndtzqxfE4UADN0v0NcuvSwfCntsdCA/zxgVd
 oPjtPZWvZtmnDceU+n9WwhxDJpRpEHtM1bAMz6KxphlirgGbaBjq0CGay9bzu146Ji1I=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jPVyl-003Kov-OP; Fri, 17 Apr 2020 20:44:43 +0200
Date: Fri, 17 Apr 2020 20:44:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH net-next] net: phy: mdio-bcm-iproc: Do not show kernel
 pointer
Message-ID: <20200417184443.GE785713@lunn.ch>
References: <20200417183420.8514-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417183420.8514-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_114451_379236_8E39A66E 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Scott Branden <sbranden@broadcom.com>, netdev@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, open list <linux-kernel@vger.kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 11:34:20AM -0700, Florian Fainelli wrote:
> Displaying the virtual address at which the MDIO base register address
> has been mapped is not useful and is not visible with pointer hashing in
> place, replace the message with something indicating successful
> registration instead.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
