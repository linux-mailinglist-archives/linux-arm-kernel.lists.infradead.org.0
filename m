Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4CD5519B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 16:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RAOUBiqLdskNutg7FOK/DKlMubceY1P/cWmFOr/w5nM=; b=NjLM0C+mhIGWJ3
	JbbmGnU9Z9M0GYs4+r27mkzhEF+MIJNSqg4bSBWsS3SxF1RUxjLgrY14baERnPyIzggOczmKDXn+F
	4ij3mh4yVs7LjEG8VF+l7GJIlzIyczeVv9E3v3J9uAk8DyLfWa5GR3YKiGIXi7iM1a4/uamk0Nepr
	tFwbHUzKNkRFR9Ru/gKJRqM5qMNU8VMnCK054LsOQziMVX+lL+8WiVlT6og7yNP1n/W9VVl5zKWp/
	RD0bjkiFd4besuOhpV0JQ/q6OaigV2Rbb/2k413EPdDgJjELdmrTmMYsdFTlvc8nfM4DqzM7nee0g
	PgD8gMqlOTPXVJzth7gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmOX-0002QE-3M; Tue, 25 Jun 2019 14:26:01 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmOM-0002Oi-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 14:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1561472750; x=1593008750;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rJ5/pLRo7ybKRgcaV0iXG1cimiHcyqQC8+ssvElQ0LQ=;
 b=vWvL8mPEwdrHJXED2f0vBfF9sidvTcsbBxSoe2cG57KO9EvGRsB8ygQy
 6x6469gXqMvmAeicDRvBv+H6xJ7zj25bvcAfetPzlR0l9mPkSslVe7QsW
 59NnKnsXwr+DvcIMki3SIdwaeXUqdVW8Qao9C3vmts2Z5NA6NMJ2diKLW o=;
X-IronPort-AV: E=Sophos;i="5.62,416,1554768000"; d="scan'208";a="681980455"
Received: from sea3-co-svc-lb6-vlan2.sea.amazon.com (HELO
 email-inbound-relay-1a-821c648d.us-east-1.amazon.com) ([10.47.22.34])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 25 Jun 2019 14:25:33 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-821c648d.us-east-1.amazon.com (Postfix) with ESMTPS
 id C0E55A036C; Tue, 25 Jun 2019 14:25:30 +0000 (UTC)
Received: from EX13D02UWC002.ant.amazon.com (10.43.162.6) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Jun 2019 14:25:29 +0000
Received: from localhost (10.43.160.61) by EX13D02UWC002.ant.amazon.com
 (10.43.162.6) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Tue, 25 Jun
 2019 14:25:28 +0000
Date: Tue, 25 Jun 2019 09:25:39 -0500
From: Patrick Williams <alpawi@amazon.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH 0/2] pinctl: armada-37xx: fix for pins 32+
Message-ID: <20190625142539.GA33175@8c859006a84e.ant.amazon.com>
References: <20190618160105.26343-1-alpawi@amazon.com>
 <CACRpkdYgXZzvFKyvySWnsJ2_1pA1e_VHEY-QNzNYCikMUc_WVg@mail.gmail.com>
 <871rzhlr7w.fsf@FE-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rzhlr7w.fsf@FE-laptop>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Originating-IP: [10.43.160.61]
X-ClientProxiedBy: EX13D02UWC003.ant.amazon.com (10.43.162.199) To
 EX13D02UWC002.ant.amazon.com (10.43.162.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_072550_456178_70B1680A 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Benjamin Herrenschmidt <benh@amazon.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 03:38:59PM +0200, Gregory CLEMENT wrote:
> First you can add my
> Acked-by: Gregory CLEMENT <gregory.clement@bootlin.com>

Thanks for the review Gregory.

> Then as the second patch is a fix, you should add the fix tag: "Fixes:
> 5715092a458c ("pinctrl: armada-37xx: Add gpio support") " as well as the
> 'CC: <stable@vger.kernel.org>" tags.
>
> But your change in the first patch made this second patch more difficult
> to backport.
> ...
> Maybe you could change the order of those 2 patches?

Good points.  Will do both.

> Actually, when I wrote "_update_reg" I was thinking to the update of the
> variable, whereas with a function named "_calculate_reg" I am expecting
> having the result as a return of the function.

Understand.  I can see the ambiguity in both names.  How about
"_update_reg_offset"?

> Thanks,
> 
> Gregory
> 
-- 
- Patrick

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
