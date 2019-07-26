Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F8875E92
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 07:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qetCv1W/YVZefIWb6m+JEalYPVQbe1BiXJE/c2x+qDE=; b=fxbD8NpHfhDUP3
	f7fE9jjflyt5hnY0Q+P8ObRYZEH4+vWpoRMDbUPhrvg+A7Z+/JXNUUHx9tpCt0GB7MVKW/G2DtppU
	gewj1CBUKXj0TfL6I0xVYN174VFNZgVzUzyZjqM0cXYKCLzCGmR9biIeT4lGsQD3YZKOZ03aOYnzF
	Sab7JzA1kr7u0eU4cANu/d3bCLv7d/hsJ92WMnoAVJM3zoLOcD+tNP1TJAuR5L/KlBCq0AolkkTQX
	9/67WFBPQQHG4BA4HaDNcpR4X71Yekhf9xW+IVGr5AtIx8zSGIL28FhTe+aCzRZgI/ZigE0Jz5yi6
	TIRPAPL8PdtrKz7qxDtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqt0u-0005eF-8g; Fri, 26 Jul 2019 05:43:32 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqsxw-0003tu-7u
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 05:40:29 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 9076F2230E;
 Fri, 26 Jul 2019 01:40:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 26 Jul 2019 01:40:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=from
 :to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=oSDr1xjwZ4K40
 /MK5vRNInuje81HUcQkw7+j8FhaZBE=; b=nJtUPr2doNBzYfahf8HEQokqeiFLZ
 sxeJD+ChRqORwbEUNp2ySw0VWf/IW4BFBtsj8LF7E3xy4azYDmrqEwWTZH/XylqU
 6ExCjwaOdxoR3x5V4+xW3lmboHwDfLRv+x+GyBXHroFn0Udupku4/8PfZRK0iaHz
 OIcbJP9v7oK1XMLmyVNtjxQeNc7Ylq1LLSkvpSxQ5qNsP479LkzvmllqT15OEDkD
 +Hg8b66dHkUxawRoVBDxRxIY1BWsUkQkRDjvHyabgigeKgOVonW7Q+zXkdi9mbJA
 x95QvYoh5Py91eRV/KGM27DzbGB+BM5eywVuw2cPqt1HWL9YXApa5Q1Rw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=oSDr1xjwZ4K40/MK5vRNInuje81HUcQkw7+j8FhaZBE=; b=koCsYE2C
 IS3NbTVKd205d2oxynUGvnCbRE+BzZ2S7gSFgGE6pLPpu6TzObSirDmZEgFHTlDR
 Uh+7CeQ5dj3l0NEey+0jbDWFa5Us0IB5tqWsAaouibGTulb13XenSoZdSY0ENxdG
 SJgY6aAGAxGPg2Wg2VbtQ/UuiqxehM9wMMvTZKuGSxrzbyMU89kwu4afLR4vrbMC
 asYL1onjFlM1edk1I5Bhq3Ee8ets+iiy+BH0d5P1qzn/2uF3nM+PeWa7GoAdJY54
 482QIu1fFfKbbUFwsJJLkCzFNAfKkWOjLmzu4VFclD9928yPTJC53xqlIV8qvRQd
 41p5QBA2htFYlA==
X-ME-Sender: <xms:S5I6XfUrr0Gmg07ph10mXzZUDMAXM-CP0EE6xar9s5fY7_Ih7B_OPA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrkeefgdeljecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeetnhgurhgvficulfgvfhhfvghrhicuoegrnhgurhgvfiesrghj
 rdhiugdrrghuqeenucfkphepvddtvddrkedurddukedrfedtnecurfgrrhgrmhepmhgrih
 hlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgvrhfuihiivgep
 he
X-ME-Proxy: <xmx:S5I6XZH_kNpc_dcrOsnGt_JkI8VMWZuPEGTGxWgr8QMOA0ju1li6wA>
 <xmx:S5I6XbfTGuLD2lfstgbNJUp4younmbw9PgMHVsYDcU7ExFBZDAdWnA>
 <xmx:S5I6XaLoUkJX4Ziz1S267mH719wEXmgMNya4XB8HMZLcfhL1m3wdUw>
 <xmx:S5I6XV7hUmOJCV17GTVRUg4FwAceJNDlkG5Farmrh2b3GjXrkTOHvA>
Received: from mistburn.au.ibm.com (bh02i525f01.au.ibm.com [202.81.18.30])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9D6F8380076;
 Fri, 26 Jul 2019 01:40:24 -0400 (EDT)
From: Andrew Jeffery <andrew@aj.id.au>
To: linux-aspeed@lists.ozlabs.org
Subject: [PATCH 07/17] ARM: dts: witherspoon: Cleanup gpio-keys-polled
 properties
Date: Fri, 26 Jul 2019 15:09:49 +0930
Message-Id: <20190726053959.2003-8-andrew@aj.id.au>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726053959.2003-1-andrew@aj.id.au>
References: <20190726053959.2003-1-andrew@aj.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_224028_536959_8788E00F 
X-CRM114-Status: UNSURE (   7.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, joel@jms.id.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dtbs_check gave the following warning:

    Warning (avoid_unnecessary_addr_size): /gpio-keys-polled: unnecessary #address-cells/#size-cells without "ranges" or child "reg" property

Cc: Joel Stanley <joel@jms.id.au>
Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
index 08facb2120b2..06319c6771ca 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-witherspoon.dts
@@ -77,8 +77,6 @@
 
 	gpio-keys-polled {
 		compatible = "gpio-keys-polled";
-		#address-cells = <1>;
-		#size-cells = <0>;
 		poll-interval = <1000>;
 
 		fan0-presence {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
