Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4381356CC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:23:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AEOADC+VUD6fTjCCwEos6ImWFV5OJK25+C/zx1MmF0Q=; b=HNbj9fYl7F3ZkI
	BTiaqP2iCA3bFc/KumX4dvPeg3cxIU+tGBVaPYV2njyQi0lJmFObtg2lbNy2ao3w4QT4LGtCIS+fq
	5c8hJQg0Ex6iHpg6g9FMTTw5Rfso2eMy/Hz7EcU4aHNKXwd9gW84ZV18AEjCqsUO8OHqvNqisHCGj
	EwCdaxH/bSHaSfUkVZt8dyv5teF/eIhouz7kHEF/YVm+EkGtCjlxwZifouWwDR2qlrAmLWZdpipkD
	S/IaCwsxPxFb8srbEvqvC59XDhboLIKaksOAHzQoV0r8PqwybKXQBwfecLvJSgn4pVZTK8Ma6OEaV
	7q7B0woxWZRyj9RpZGJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUyj-00053k-2m; Thu, 09 Jan 2020 10:23:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUyZ-00052h-B3
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:23:40 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so6644733ljg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 02:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CaANccIy4gA5baF7u0foL4cTjRF5faDrgsD1szRUw5E=;
 b=UO5rej+fgTEj4BzkweWqxr6L3b6qwha15PplzQPyrrBsMDip6EmUJnthyJBfGMiy1z
 2EbjLNjDWItj3igGmLr23dx+t1RNTHC2qDlQTsSqzLxkxDbvY0NFE9Vt2kXqc19a3Yj7
 v+5BTkYYRG3mc8/YuJVRs2AagJsLLhIMco3EOCntVOmHntAdVt/ka1jxq0utwtrcTQIA
 xTGWWLca7U+KMPfZcTIEloY57MCP0+Zpomk0nR+BeX6TuSZsUbyxXT+43mS1ACjM3hZw
 KUNlzmtG6OznoLTdlax16AqxaWT2kUGPtDkpm2SmGq7XKSWWAhwbkpm0uE6uPpBGbZ3W
 QWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CaANccIy4gA5baF7u0foL4cTjRF5faDrgsD1szRUw5E=;
 b=R47Y1r+9pzAWMnbr3f4tkciIhliFARslBOiRk8BXDDCOHBM1z8JkSsQSvCQxFS/AyU
 Dssp+b/lgH6ErgD7eCLh7739jXKN7V/00fLN7NAeFWdPWM1wmzYYEdv8PX//IWW89wfB
 tl8yAzqiUl7MWbUOljvt666LC3Z8ICO0XFEMZEuc59FEHMD2zQdUQCkZ1Z+5WRl+tA+C
 5CWbIw/8OlO/NmQ8DKdJ2crXvYVDIMN9xhy8zLwh67T53eKENNHhs+a9j3jFT11dhUOw
 zPKIVA5SnXvdgL6CIW8vSWZOuvjzm6aAadp31WCG2yRpHwaFuuudD3WkGMw4Bu//V03C
 Kl8Q==
X-Gm-Message-State: APjAAAWC4BqHuCscRt1UtzgBuwRCD7eWkirRyohAgFOtBbEY26X2a6nM
 iaPOe/a8JMhPrjOuiRZZD6ZuM/KqEkKb1wa4nTc=
X-Google-Smtp-Source: APXvYqwschtN+QMw6TDSpzE3jWTVQY0TbWx42jhGhs2ONEfm9f4uWmnz8gZ2X6CpDhrbkgbEDT4fKD4qTn+o/FJdvfk=
X-Received: by 2002:a2e:b5ac:: with SMTP id f12mr6292547ljn.0.1578565416928;
 Thu, 09 Jan 2020 02:23:36 -0800 (PST)
MIME-Version: 1.0
References: <20200109095403.GA26453@Red>
In-Reply-To: <20200109095403.GA26453@Red>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 9 Jan 2020 07:23:25 -0300
Message-ID: <CAOMZO5DtOj8csUR+cWPy8D=78eGcC08H3vX4J4bcZ_O06h9ohA@mail.gmail.com>
Subject: Re: ata: sunxi: Regression due to 5253fe05bb47 ("phy: core: Add
 consumer device link support")
To: Corentin Labbe <clabbe.montjoie@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_022339_407032_8D990D5A 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Alexandre Torgue <alexandre.torgue@st.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, linux-sunxi@googlegroups.com,
 Liam Girdwood <lgirdwood@gmail.com>, mripard@kernel.org,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-ide@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Corentin,

On Thu, Jan 9, 2020 at 6:54 AM Corentin Labbe <clabbe.montjoie@gmail.com> wrote:

> The problem was bisected to 5253fe05bb47a2402f471d76078b3dcc66442d6c ("phy: core: Add consumer device link support")
> Reverting this patch fix the problem

This problem has been fixed in linux-next 20200109.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
