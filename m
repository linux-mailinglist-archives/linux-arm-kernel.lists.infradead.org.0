Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2875D4ED69
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 18:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLpud2edvcn+UeqRGWIr5ndk4YCY2fucC4lF7H10od4=; b=Cx50ilw3LTozO0
	b1IXBwnIBJoe+0GiwUazfFLKIXXXGRrU/kqZYQnMujK2uYiCOQ+A7z7zuu5R2RbzASFOnCreQfixg
	cBzqB2N/o0LpwrAgrMTVwV5aYPlIv3YiCvnMvpDBjOys1O3F/gzjqY5YJm5mpWR/LCNJCVQVlESne
	2IZootdLZ1kjS08QgPUcdIpNebNc+rHQAw7UFaAY0U5LM6KjwNzfoUqtoO8kUUp6biC6v+l7cT6+U
	kJRKoB8Y/710y1Te4yaj2Rj/nUmrWTyWBuS2Jhd5MmAYCUtvczv0mBR4uoK1xrtyLUGJeEhQ5VVwK
	X4tRu0wuf/wDD8y+4KLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heMjz-0001t2-P3; Fri, 21 Jun 2019 16:50:19 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heMjp-0000rc-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 16:50:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=P71o6R9PwKrxfUlkCzThaAEbYlO5haANQ4Qx+hoNZ6s=; b=vkm8kqtoslv3JIikaTIBorlbNH
 s88aHYfIZiSu8Iii2S8nQ6MYb1TCC1gZzo2J9oJ+pcto5nZNRyAlbFNKPNqXuNMX4uS+ZLqNRJNUx
 Pw48ymqe6jF+YDuGxPHtBN6EDChwUDieXpmGsG1Epj6zOsfoE4hAABWRKgxb5GFI8WgI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1heMjM-0007Ft-HQ; Fri, 21 Jun 2019 18:49:40 +0200
Date: Fri, 21 Jun 2019 18:49:40 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Claudiu Manoil <claudiu.manoil@nxp.com>
Subject: Re: [PATCH net-next 4/6] arm64: dts: fsl: ls1028a: Add Felix switch
 port DT node
Message-ID: <20190621164940.GL31306@lunn.ch>
References: <1561131532-14860-1-git-send-email-claudiu.manoil@nxp.com>
 <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561131532-14860-5-git-send-email-claudiu.manoil@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_095009_203619_A2174952 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, netdev@vger.kernel.org,
 alexandru.marginean@nxp.com, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Allan Nielsen <Allan.Nielsen@microsemi.com>,
 Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 06:38:50PM +0300, Claudiu Manoil wrote:
> The switch device features 6 ports, 4 with external links
> and 2 internally facing to the ls1028a SoC and connected via
> fixed links to 2 internal enetc ethernet controller ports.

Hi Claudiu

> +			switch@0,5 {
> +				compatible = "mscc,felix-switch";
> +				reg = <0x000500 0 0 0 0>;
> +
> +				ethernet-ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					/* external ports */
> +					switch_port0: port@0 {
> +						reg = <0>;
> +					};
> +					switch_port1: port@1 {
> +						reg = <1>;
> +					};
> +					switch_port2: port@2 {
> +						reg = <2>;
> +					};
> +					switch_port3: port@3 {
> +						reg = <3>;
> +					};
> +					/* internal to-cpu ports */
> +					port@4 {
> +						reg = <4>;
> +						fixed-link {
> +							speed = <1000>;
> +							full-duplex;
> +						};
> +					};
> +					port@5 {
> +						reg = <5>;
> +						fixed-link {
> +							speed = <1000>;
> +							full-duplex;
> +						};
> +					};
> +				};
> +			};

This sounds like a DSA setup, where you have SoC ports connected to
the switch. With DSA, the CPU ports of the switch are special. We
don't create netdev's for them, the binding explicitly list which SoC
interface they are bound to, etc.

What model are you using here? I'm just trying to understand the setup
to ensure it is consistent with the swichdev model.

   Thanks
	Andrew


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
