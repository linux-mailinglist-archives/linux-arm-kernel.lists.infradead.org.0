Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600CA489C3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtH1JyyNMqcbGTJHnndIGINxq474HBGRauOY+zk0uPA=; b=NDlnaD9PdcXAr7
	hI5Z6XVOe+avb2q93qKZ7Z3whXIBWo4VodsJvJH/j+ZNT9cqOoEMak24/ksrK7rzoouHtcel9xUR9
	fTJ3Hzc8yqSIcHBa5RhwyYbSY1Kl4wpt6BbNEge6MD9zxihpfW15Ro8uBCGEkX+w/adEhzExXfhLF
	+YErxvRShDdrkd5AzcGfqB1cBysrrhWL3RjtIGwrAUdZYFbG34zupUIS1+yO5CvpwHujAhjMafmEJ
	N0GOC2PndPW1xyZ0VXQMBo3ThspHcwYMjF2Ozu/5b33EKqwBqlR0YWajs5Wp3NFO9tnZTJT9ML6pe
	Z84WW58KY1eL8/6WpV5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvAU-0006jO-3V; Mon, 17 Jun 2019 17:11:42 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvAJ-0006it-4T
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:11:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c5jwdu8GrotuWtYtHHNfJH6Olf5e80GT2puWZ5zCwwE=; b=mE8DAWY+i84WUNuU2002K9T7fE
 nT9X+9yzdrd6oDxNeG4Myi1NJMYgCriqqlPpZsOqfkf395lJf9cICEqGySgKSWACmQD2D8aljUUjF
 /y1pjW9dQ2RtYafrrcK8gzf+LDiZigc9UQMMpZECH+Q1YM3M3Xc+7LI88mwr5g4IyuD0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hcvA7-0001zg-9f; Mon, 17 Jun 2019 19:11:19 +0200
Date: Mon, 17 Jun 2019 19:11:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 3/4] pinctrl: mvebu: Add support for MV98DX1135
Message-ID: <20190617171119.GH17551@lunn.ch>
References: <20190617100432.13037-1-chris.packham@alliedtelesis.co.nz>
 <20190617100432.13037-4-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617100432.13037-4-chris.packham@alliedtelesis.co.nz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_101131_326210_36CAB70C 
X-CRM114-Status: UNSURE (   7.62  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jason@lakedaemon.net,
 gregory.clement@bootlin.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, robh+dt@kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 10:04:31PM +1200, Chris Packham wrote:
> The 98DX1135 is a switch chip with an integrated CPU. This is similar to
> the 98DX4122 except the MPP assignments differ.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
