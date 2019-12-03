Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C716110FF84
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 15:01:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFtp2FHe7K5MSo/Y2UhqRNjUew+vwI0cLKdQCxWNMng=; b=tE3jNC8BLU2Gs1
	vgJxe8KqOzBwZxAB6VBzBcfWvlAO33wuAZ+0jh7XGir6/2ADG23S2Oc9dcxJ+N6urKFawzJAu1i3q
	bB/Q//I7KXumSTKj8x3c2FiWmKFEmXHGOlbB7c/PXV+vvlTwhbhpVqH8OlpM5qFztMCzR9ZigXUHr
	0iZXa+iLbnCSXQwJG5Y3sqnJWI8pMzT8qoTP5heUz1M8gZXit39zMCst40b/xGyGRcvweNVS6kpgE
	tCon9D7+YkYAQxpFdASVoDKTYqG5ROpMrizlbVZ9GO78JHYCm7CjYd+sO3rzcA6YlNyoSANZg1qJU
	bIxvth7bH8kv/BPe2zEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8kG-00074b-UQ; Tue, 03 Dec 2019 14:01:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8k9-00073l-3f
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 14:01:34 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ic8k2-0007By-It; Tue, 03 Dec 2019 15:01:26 +0100
Message-ID: <e7055ca5eea6e2d975bcbe3e2c572b2ccd4db9a9.camel@pengutronix.de>
Subject: Re: [PATCH] reset: uniphier: Add SCSSI reset control for each channel
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>
Date: Tue, 03 Dec 2019 15:01:25 +0100
In-Reply-To: <1575001159-19648-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1575001159-19648-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_060133_147742_A9482A1B 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jassi Brar <jaswinder.singh@linaro.org>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-11-29 at 13:19 +0900, Kunihiko Hayashi wrote:
> SCSSI has reset controls for each channel in the SoCs newer than Pro4,
> so this adds missing reset controls for channel 1, 2 and 3. And more, this
> moves MCSSI reset ID after SCSSI.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>

Applied to reset/next with Masahiro's Acked-by and Fixes tags.

regards
Philipp


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
