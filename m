Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F48017E68E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOjybpWom8LJ2tJMY0GvOq1UrnR3UN9uPjns5P3ZQuI=; b=CU71r+piWh5uKF
	l/yvtXqyufsD1NNKo7Y0HQ5cBu4RfOm4xOF16LAKbE7KOWguhz4kvl8PdCDjh/xDr8TqfY5YYgrhA
	cLFGf2Q0AEuK1A9F5yp6zcl1ZKSCidddqzaYt/otYBfy0obxpmwDQgp3jOFvkVvEqaeeUFWbtyJEP
	DoDoNEk+m5xPTh14Tu8rw8O0/3E2P3l/DVHFxp+vwvOE4jfbwtn6O3XwF3AhIW5AlMsgXtj1Cq44+
	WMH6Lr2nmgEHhz4t8t9Inv2mRHoXww2m7kKXTrAfkSWE+SPTgUCp4gy+bfnA0RMCdDErgnyxphRKM
	SgkygyhqVmArP1pBIg7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBMvB-0007S5-BV; Mon, 09 Mar 2020 18:14:33 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMv2-0007Qi-2T
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:14:25 +0000
Received: by mail-lj1-x22e.google.com with SMTP id o10so4271701ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 11:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=koPyYPcnPETHgCvHEnnCmdmwfA+OhLOvchqTM1xprps=;
 b=hcX3nNInTx9iPg7EaR+RByFVzvo/cSttxQcApuNwRryPYcMSIWjR9EGkmg4RuaKhT4
 Dvkz7XZHPwiW2D/MPgulKgvlSOp2p1+Z6RSgpSLCSj8oQlR1KydMYFuXN2GJqA+khaaI
 n+jHxvfrvN4OZXWhrflT6H8M3bYWCmMJnNwL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=koPyYPcnPETHgCvHEnnCmdmwfA+OhLOvchqTM1xprps=;
 b=X+tIB7u9J7Ozx3M6ilBEUbP7dC1w2lriwRUfg2XbAjm/h5Y60kAzL65aDW5AaJUFbH
 yz9/riPf0Ppw3ZdsQay6lzqBmQKgecpceprpAXVPtF/5pg4+s2BsxagY3uJakIRRt5oL
 rfMNtDgnMq1Z+eJcn2LSVoULV/3ZtIXeZ7yMgLnrK2m//INxvxWR3trl4SQtGbpnKTlv
 f7juM51+YvIPSg6p8yeV3I9EWSe3jTf2mkb/YSG0WCoLt7gjC67nNowqN9EfxfNBEzqP
 DRGOXA4SmqnSM5blwLfn52x0rUIi3EoTEDcTJLhmb9I6lXaH80XLYR5n+Oex2RXk8HNu
 OUSw==
X-Gm-Message-State: ANhLgQ0rz13FJpWKOjXeAGcvHinc5X+CxVPcNsl24vpNIl5cJjFSkgTj
 6qO05Ls4OjRlIeE+j9cW3xduEJJwL/gV97HT07gb4Q==
X-Google-Smtp-Source: ADFU+vtgo6olIYRoVSmwWWivdI6JJjr250gtxBwwoAJTPwO/+EsUYi98/L4RLCE5w9lBmxHiqH1H3VYw5KdKjPdM5rA=
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr10292149ljg.105.1583777660196; 
 Mon, 09 Mar 2020 11:14:20 -0700 (PDT)
From: Kevin Li <kevin-ke.li@broadcom.com>
References: <20200306222705.13309-1-kevin-ke.li@broadcom.com>
 <20200309123307.GE4101@sirena.org.uk>
 <69138568e9c18afa57d5edba6be9887b@mail.gmail.com>
 <20200309175205.GJ4101@sirena.org.uk>
In-Reply-To: <20200309175205.GJ4101@sirena.org.uk>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQK6AtPk+W1UvlC/8YJn5FlJAEq5hQGCyJpIAfJ2lUUB0s+e4qZONC5g
Date: Mon, 9 Mar 2020 11:14:18 -0700
Message-ID: <8113837129a1b41aee674c68258cd37f@mail.gmail.com>
Subject: RE: [PATCH] ASoC: brcm: Add DSL/PON SoC audio driver
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111424_115119_FA04A8A1 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, bcm-kernel-feedback-list@broadcom.com,
 Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I can't really parse what you're talking about here (perhaps some of that
context would have helped...) but it doesn't seem to be the clocking of
the I2S bus which would normally be what master and slave would be talking
about.

It is the clock setting of I2S bus master or slave.
If I am playing music only, I set TX as master. All others are slave.
If I am recording only. I set RX as master. All others are slave.
If I am playing and recording at same time, I set first coming stream as
master second coming stream as slave. If I shut down first stream before
second stream, then I will set the second stream as master, otherwise
there will be no clock/FS signal on the I2S bus to maintain the second
stream to its end.
Hope it is clearer.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
