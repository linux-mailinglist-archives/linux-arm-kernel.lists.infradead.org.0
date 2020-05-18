Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106A21D8AF1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCDhjrqJ0w8UHEmpoPlmK7oCQAsLCxfplLbT5RPIzKY=; b=WGFM8vydCwXUz3
	oF5HAiUu/Pj68W55p408AV3Z/RYha4qST5N6V0inuuvQ3wbOFkFrdJW2+KScCSu6gyG0sIeZgHS0S
	iHw3C7VnS86GQKvpWZyBIRjcIDbYsvJDtwHvX594nPe2cwTMnS0JVUgvbW47dryd2MdsOBQMykuk+
	JgdbF0yDkUayPKq5/J/L6VsYpJPzB+4R1Pfk6weHRzoFImE0Y8+ZkqPMlg5qUl2OCs2MD84FCNubA
	3qahc74C1N1xU0YZs9RD75q5CBZK1Es6/JLuPL8CVQPof5qtad3gJjORc05yNDpg9WkkiyOv3c04l
	3o44w+fv8pz3Qz9LfQvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoH4-0001f0-Ez; Mon, 18 May 2020 22:30:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF5-0008Rr-Uu; Mon, 18 May 2020 22:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GBFDThW3R0dl4e8TXH9nS2BV2we24l50tzDA/Qh9QnQ=; b=OSnIAQ9esP0AlD0CkeKJAgTWLw
 46kQm9MzbrH0Cj94TIXmgvsNREFq+5sGZ2khzvjLmJNtGHuqNr58mOA+iWTxxUISIzt5I8ehyXiDs
 52q2oatvwNzkL3r6hlnxC4pfGU0uljq/i8YhIfUu4XGb6OY7hF2pxJWueUbbrpZOXXhQhMYWIELNW
 FPZcVuaJwKnkbhBbd6sog4wi2S2MqXyThAyLUsQcmqhhCSmQ8V5HLIjUnePrgSfcbtYuVDgxUUD+c
 8Hn42j4z8XSO9biwklppzUvp2I/UW4iZGoXX3TbF/Or6o2bWqq+BXRnNBMzshXqKR2TeEw/UR+fJF
 35wN3nIQ==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoF0-0004Uz-I9; Mon, 18 May 2020 22:28:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jaoEw-00005F-9d; Tue, 19 May 2020 00:28:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] ARM: dts: rockchip: remove identical #include from
 rk3288.dtsi
Date: Tue, 19 May 2020 00:28:02 +0200
Message-Id: <158984064169.2259329.2459091557844833236.b4-ty@sntech.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403180159.13387-1-jbx6244@gmail.com>
References: <20200403180159.13387-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_232810_943422_2C149136 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (-1.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 3 Apr 2020 20:01:56 +0200, Johan Jonker wrote:
> There are 2 identical '#include' for 'rk3288-power.h',
> so remove one of them.

Applied, thanks!

[1/1] ARM: dts: rockchip: remove identical #include from rk3288.dtsi

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
