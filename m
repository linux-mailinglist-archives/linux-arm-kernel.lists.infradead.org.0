Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E36EB14AD6A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 02:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaXJq4j+aV45sLFhPAl7WP4W5tlIgutv02pMSt7z4cY=; b=YX+rWNcZEkH8IP
	42A2yyUW1m8pSD9G5HQj9gHQI79BTu6ETupkHydpTmgsK6DW1WVWfPSSolJibqcG5hVlDUU9DJIIL
	S1tCIAYZGbUdguSNMF8us7uvT8F005kjWY8ozxH7/jyVnkE6Ttgc7GVYt8dOpIKHCSijxlvsZcS7C
	Gn6NzpPmfiRr9vhO68rWbFCPuf3OawAYkneD24jZ5ea72qLTkG31ynk84ytQ87j/kX2oQkvstbAcM
	7eun9OUVmwFhCf9zu+oo8O9wV/wW05lTTDIBjTjomguIdWbKhQHcnZkGAXwfwHQaZBnUy2hXR5ESs
	jFWhAtAc3oAM5cLdjCrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwFKK-0004Gb-L6; Tue, 28 Jan 2020 01:06:00 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwFK9-0004GI-9j
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 01:05:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id DB72A539;
 Mon, 27 Jan 2020 20:05:46 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Mon, 27 Jan 2020 20:05:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=p44JX6UjfFs1gkO+lyEnsqEIVLu+Il9
 jCbYlJgqj58A=; b=WkKctAqqqXR7qokRVYOeEduPKDCdutwcHQsIqoHj+dpoXmu
 AjzwPeuQmHUoAI6mEeTi0Fr9ktxqFOYCTz4XH/CL+k3Mswi9HHQn+EddmS1Q2BzQ
 rCtBqOkh/OEuli3flwNXCOrMdPJp+kp2uokPZpMXl3P7pjQtEcVY1iji2VufQmmo
 N0yLQLj9P1hxOucDc54Z1QytRrdjfArbQh5PQDKnpbccylglkQsrncfU1fKrGiPI
 GFq/BzsYC/+OuG4DXXb0eAtt7pedKFo5AARxamRgxbb3rFfPvmc/XYATX1gdY+JR
 iWBAvR6VlSPpJty94MYQ2z8ScQUH2O1KrG45X2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=p44JX6
 UjfFs1gkO+lyEnsqEIVLu+Il9jCbYlJgqj58A=; b=O9gxMthRUr+pNgi7X8OQLA
 XvLVS1o6OrWfFfPndNZAPCUBwNDfU1k+TxnxG3/V3RAl4+Xa9YvxhXWs5ECdL4Iu
 S56ZPv1m6p4XidsmwcKL8cb8CkVx/apMX7HiRgIgWkqy64VO2tFDKYyBtE9PdPuP
 7lCUvWKGe2AY/BEJVfIgQ6UddaE45a2wvwd7uftG0UWV8TMUwaWFUwTaSgT3zrIV
 hMKE+RwBWAB5B9+UajfMIJ3sfRbML5QojF1u9DTSlsPGn8dLH/msiWTdOwcOIWlD
 0WYy3f72Xv3KbnhlYw0zt4dnuEULnNVggkhB5mP6WCEHVNqcKhhZ2ATNq/+bV8OA
 ==
X-ME-Sender: <xms:6IgvXsp0bkEMaGfdUJnId3Gxr3ePV1cJVI91DJvTnHYCYvfwS5jd-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrfeefgddvlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedftehnughr
 vgifucflvghffhgvrhihfdcuoegrnhgurhgvfiesrghjrdhiugdrrghuqeenucevlhhush
 htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghj
 rdhiugdrrghu
X-ME-Proxy: <xmx:6IgvXsVDf-VIrMHtC3vD7s2zEkB1TduObJsc_31o8_te_1ClHcdA0Q>
 <xmx:6IgvXoK4Jxl1LJCe6qvtk3vkIbI1sj4tE_dCBbccmbem8iE0mN_oCw>
 <xmx:6IgvXn94vt32ccAeUBA3jBr-sj3GZwRTuceyphL1XaU2LtZiKpL1cw>
 <xmx:6ogvXlFGGeRb9E1O7EZkl_h36sxzc6ZP2BQ9TixOzx5noq905TcI2A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 9BA03E00A2; Mon, 27 Jan 2020 20:05:44 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-781-gfc16016-fmstable-20200127v1
Mime-Version: 1.0
Message-Id: <78f934a3-ec7a-479e-9f63-4df7c4428ae5@www.fastmail.com>
In-Reply-To: <20200121103722.1781-4-geert+renesas@glider.be>
References: <20200121103413.1337-1-geert+renesas@glider.be>
 <20200121103722.1781-1-geert+renesas@glider.be>
 <20200121103722.1781-4-geert+renesas@glider.be>
Date: Tue, 28 Jan 2020 11:35:27 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Geert Uytterhoeven" <geert+renesas@glider.be>,
 "Arnd Bergmann" <arnd@arndb.de>, "Kevin Hilman" <khilman@kernel.org>,
 "Olof Johansson" <olof@lixom.net>
Subject: Re: [PATCH 04/20] ARM: aspeed: Drop unneeded select of HAVE_SMP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_170549_361617_758948C3 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Tue, 21 Jan 2020, at 21:07, Geert Uytterhoeven wrote:
> Support for the 6th generation Aspeed SoCs depends on ARCH_MULTI_V7.
> As the latter selects HAVE_SMP, there is no need for MACH_ASPEED_G6 to
> select HAVE_SMP.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Joel Stanley <joel@jms.id.au>
> Cc: Andrew Jeffery <andrew@aj.id.au>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
