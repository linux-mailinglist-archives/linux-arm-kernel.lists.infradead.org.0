Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4333C719B6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:48:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LA83vRckqPXeWVyKTWCAsLfdBumQ1rUPxaGRXEUbsw=; b=b+5I8xsI+IXAeU
	sv8o5NK2czSaeszvHgg2zCMsz3e7WRdLN+4PpSAbQDevlkxIO48ajGDwK2FJ0xXeQyljJNEO9ADc0
	5DSuNN4uvgiVUtdd1VlECva7+FXppxnnMg3ioxt+98+Baj8UbKFryH3pHONtScfcE0vP7kniEml03
	c8pj+OyEl+snG/Rxl4oNLDelTGfaLbU8gXsfLFj1NjlOwUoCEHY//QmQFcf31sOW8rbMwMStvJMQO
	XcAAbtXxxCXkgNYFwxUvWOqmeBlpvXG3f1F32S/S+SyzmQvbvUC3EJimt+/JnBDwbsDHNohPB1SKC
	rbVUEtEmRIyEAk9AS+UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv9j-00020N-4r; Tue, 23 Jul 2019 13:48:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpv9V-0001zd-9w
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:48:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hh700sFheglasLLwhcaql8zIvJCDfQNvUkZLvzNr77M=; b=rwbrHRGLTh8/q3qq4bi0P8giyV
 dGkAgmemiQF4xTuTzXHhu43MU4nDRHn2CYLWkyJ0J09bgrsrb92qBcgIQvB00g1cJsVu4/fgiaBQK
 0AGXfsj/CLhXQwS96LeJ4N4f+kQoRmlJuSKbp/EB5b4KedfL9VYvDcrvrTDQI7leqMto=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hpv9N-0001IR-0Z; Tue, 23 Jul 2019 15:48:17 +0200
Date: Tue, 23 Jul 2019 15:48:17 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Evgeny Kolesnikov <evgenyz@gmail.com>
Subject: Re: [PATCH 5/5] ARM: dts: armada385-wd-mcex2u: Add DTS file for WD
 My Cloud EX2 Ultra
Message-ID: <20190723134817.GB2381@lunn.ch>
References: <cover.1563822216.git.evgenyz@gmail.com>
 <fd2a97d627c21a7e92a9a1aa15cf26c608d1e383.1563822216.git.evgenyz@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd2a97d627c21a7e92a9a1aa15cf26c608d1e383.1563822216.git.evgenyz@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_064825_498899_5AB427E9 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jason Cooper <jason@lakedaemon.net>, linux-pm@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> +		internal-regs {
> +			timer@c200 {
> +				status = "disabled";
> +			};
> +
> +			i2c0: i2c@11000 {
> +				status = "okay";
> +				clock-frequency = <100000>;
> +			};
> +
> +			i2c1: i2c@11100 {
> +				status = "okay";
> +				clock-frequency = <100000>;
> +			};

It is a bit unusual to enable i2c busses when there is nothing on
them.

> +			ethernet@34000 {
> +				phy = <&phy0>;

phy has been deprecated. Please use phy-handle.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
