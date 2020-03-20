Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 899CB18CC1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 12:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HGSl5f5H3XYUPOw+hhbWsbeV6B4vCiUmYKz2/GfcKaA=; b=BLOvYQwwd2HqjW5G0h/LiNTgj
	MIn0Sa2moJgvq+PY7CLe/t6KJLjjeRiHiIsTEXek87Ukba3N5TdvKmcKD4WKQL5LtO5PWkeB0bEfM
	89PMiDZbG1iiCe9WVBFVDDJJwn6zvsOgggamI4L3yx0/c20oZBByLVWOxcAEVgnc+sJUpotfoGGsU
	yh+d9AZnjpNjypE+1ycs+sm41RJ5eK03TmIDGhr7hASkI2t/hXzRMAjoQbrZ87/5F7eeierOi2yfV
	ZnP4DO05HNunROldA3l4NJwuOsibnDakARhfpU3kfiyGqR30LouK1UR59wmwAu65os06+3dVDjSoz
	Z+AGWJ5Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFFRM-0004nA-Qs; Fri, 20 Mar 2020 11:03:48 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFFRE-0004ln-2E
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 11:03:42 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 96A8022F2D;
 Fri, 20 Mar 2020 12:03:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1584702209;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gUkotz8OFFBMd9PmlQFXSI+efiAIa/TYqSLX2WL8g28=;
 b=A3Gz3E5G1Gem0xRzkSd0oeQk+cgMuLYcVtYDXHrlGssh5Q5Hs/Nm7cG3jf4WjYMzk8eR8M
 1VMA6tmMfaeR+B11jg/Lgk6lj5QoUMoTlyg373DjtD63bJopsfBY9F6cClgZ24FIcHYWWP
 IAULBD/aLkz15S1EhwkBHlAEF0wQD3I=
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 12:03:28 +0100
From: Michael Walle <michael@walle.cc>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 1/2] net: dsa: felix: allow the device to be disabled
In-Reply-To: <20200314.205335.907987569817755804.davem@davemloft.net>
References: <20200312164320.22349-1-michael@walle.cc>
 <20200314.205335.907987569817755804.davem@davemloft.net>
Message-ID: <516fced37ce8b390e89eb0557b0b7362@walle.cc>
X-Sender: michael@walle.cc
User-Agent: Roundcube Webmail/1.3.10
X-Spamd-Bar: +
X-Spam-Level: *
X-Rspamd-Server: web
X-Spam-Status: No, score=1.40
X-Spam-Score: 1.40
X-Rspamd-Queue-Id: 96A8022F2D
X-Spamd-Result: default: False [1.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; NEURAL_HAM(-0.00)[-0.632];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com,lunn.ch,nxp.com,kernel.org];
 MID_RHS_MATCH_FROM(0.00)[]; SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_040340_266920_8ECD620A 
X-CRM114-Status: UNSURE (   6.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, andrew@lunn.ch,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 claudiu.manoil@nxp.com, robh+dt@kernel.org, vladimir.oltean@nxp.com,
 shawnguo@kernel.org, vivien.didelot@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi David, Hi Shawnguo,

Am 2020-03-15 04:53, schrieb David Miller:
> This series depends upon some devicetree tree changes, so why don't you
> submit these changes there and add my:
> 
> Acked-by: David S. Miller <davem@davemloft.net>
> 
> Thank you.

Patch 2/2 is already in linux-next, picked by Shawnguo. Who will
pick 1/2? I guess it doesn't matter through which tree it will go.

-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
