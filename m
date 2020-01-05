Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDE7130A3D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 23:25:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iBuMjNlqgaUdTVPyCGq1zPbfUSC8NosEvQoYBG8NySE=; b=Gj1n+DH9gKtWhL
	PtZe8J3JKkNdBHFHNYwehsn8n1xXwND2OCxxi6ZsvgQg1d26YQNjZGc9GcqyJD8UPSgV96MxpYwko
	8fLKt1TP7W666D6FjyzbEXsGOn0XqaZ5PgEs9axNsiosp/degNWah7M3SqexmGPw0dgIv2LVAGkD8
	m/PPZ0Ilv7Vx4ZmZGn4F3APkui5OLRUMnjSxZY/8gYibyONPawZ7boVAYG/1Dl3Em4Ml2uTj5nb9Y
	l/O7DyUh/ClQoyAxrbMuOKnAW3oMZkpSxYpqEmODOrOio+i9XjBPMvoD3yl0HAThTgYy0ocpa8VHh
	mCzSPPtjcytB3QzuERGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioEL8-00046X-AN; Sun, 05 Jan 2020 22:25:42 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioEL0-00045j-V5; Sun, 05 Jan 2020 22:25:36 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:1c3::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id BE89C1573FC06;
 Sun,  5 Jan 2020 14:25:31 -0800 (PST)
Date: Sun, 05 Jan 2020 14:25:31 -0800 (PST)
Message-Id: <20200105.142531.1912385676087452153.davem@davemloft.net>
To: f.fainelli@gmail.com
Subject: Re: [PATCH net-next] net: dsa: Remove indirect function call for
 flow dissection
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200102233657.12933-1-f.fainelli@gmail.com>
References: <20200102233657.12933-1-f.fainelli@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 05 Jan 2020 14:25:32 -0800 (PST)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_142535_001212_E0D8D684 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, songliubraving@fb.com, vladimir.oltean@nxp.com,
 alobakin@dlink.ru, komachi.yoshiki@gmail.com, paulb@mellanox.com,
 edumazet@google.com, sdf@google.com, mcroce@redhat.com, ppenkov@google.com,
 jakub@cloudflare.com, daniel@iogearbox.net, vivien.didelot@gmail.com,
 woojung.huh@microchip.com, hauke@hauke-m.de, sean.wang@mediatek.com,
 claudiu.manoil@nxp.com, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, rmk+kernel@armlinux.org.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Florian Fainelli <f.fainelli@gmail.com>
Date: Thu,  2 Jan 2020 15:36:53 -0800

> We only need "static" information to be given for DSA flow dissection,
> so replace the expensive call to .flow_dissect() with an integer giving
> us the offset into the packet array of bytes that we must de-reference
> to obtain the protocol number. The overhead was alreayd available from
> the dsa_device_ops structure so use that directly.
> 
> The presence of a flow_dissect callback used to indicate that the DSA
> tagger supported returning that information,we now encode this with a
> proto_off value of DSA_PROTO_OFF_UNPSEC if the tagger does not support
> providing that information yet.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
> Changes since RFC:
> 
> - use a constant instead of the "magic" -1
> - update all tag drivers and build test correctly

At the very least the typos need to be fixed, so marking this changes
requested in patchwork just FYI...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
