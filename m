Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D946AB5185
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 17:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kUlaKbqlJznTQxdFqg0vo1H4FCV3naE91liSXqsF4pQ=; b=Gnn/vnXTj/0PR6
	xGsbirEv9CkCa2MDshCzj0B8MVax9zi5T5c4kh4l/Vvg0osUutOfixBXzYCf4PFF0JfVDMxyMfgi3
	MZbBYyUEwuNZzJW9Q0vKBSjcFLFMUsQkoYNlnlFPCLZRJ/bCzMXHiXKvEVQc2pm6abLd3nw/VHzvc
	Qb4BMNSc5XfpbGpZe5jXt/gLbMOLRKJne5ZQugaKD5pBoODHtId10rSWsJVejwZsuAKOBmAzsF4J3
	cyr4sJAGdAUALWfvwKM1x115CHLIBw5QWiDEgXswIjDFyNsviLnILGjUtH2glNOuyFG6dLWjSDErW
	6+xa+UxIlEpJ04mmSS6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAFPz-0005oi-QJ; Tue, 17 Sep 2019 15:29:28 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAFPo-0005oJ-WB
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 15:29:18 +0000
Received: by mail-lf1-x143.google.com with SMTP id q11so3209708lfc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 08:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Au60N4ZLQkwRozb9bzgOCI9HSIhTCOj1GYXR2pdxzkM=;
 b=eYxrJH1rUH2LIlKi41Xs4OqqpxaRqnAe6FDsw2ByGBEIzair1tLM16JZWXXYW4SQwQ
 rnhmanCyn4qy+uFotk17G9jNv5v86NFMXm3GOVCfqdZ3YwlSMkPMmiv0jYyHN1s3FUv/
 Nk2+6RqTRdkbzWRinahG2gEGS4DUSoZUy5uCb7008BHcZo5HyrgmNr9YOhogN9WVjkzn
 6IlzsVkHH3ihca3hsMdfmJpsEE/pjospIapxQG3CA/RIfHgXYQSNpqtBmkvu/Za6pqdm
 aznKHIyein+CXSOmnRsm3MQcjcLecoLmCb9qMP6P4bnkrkAXpUJd8VV9Mn9hvHJS3P/Q
 EQtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Au60N4ZLQkwRozb9bzgOCI9HSIhTCOj1GYXR2pdxzkM=;
 b=Wq37BfcfdFzjmlYKUlMr2p1uNvLkBlZpRZlsWhdK57IU7K3MANq1l2VEh0uV8KzlQi
 CYYony/jJNTLKffLY7ay/7mGiyS3LOuMpbH7lb9fRYzviHhDvaDRZJ6OCHTqL9MzllIn
 uGYbkMbo1muyqJRxKjGR2l1lqUuU+RWe8EYry4ipJrmaRAktkv/ThfBfO4KQdQVZiTEy
 PkEV29eadPUBA79a3B6Pl+f8zq1X0HXbN12x49c3JuVaUbuMtSyRfFMUCJY+dKvKac/w
 lxDyz26AItehSxQ/+04PCadoBxCEwcq7HybBVgEIDtGOyuPX1BsqmiQUB2QGwcF8RSdI
 TyiQ==
X-Gm-Message-State: APjAAAWRUhoKeluPNLECyuLOL1Zsjaj5pSJZs7eFhanZgxxwWnzlMGCs
 S1TePB77o4bQMzYdR//PubAsNR3gQyae8hrDlmE=
X-Google-Smtp-Source: APXvYqyn0GGdX62gzFWk0ywhLoshQVp3lftOG5Xo6sspC4B6AS4hkDinswc/csog5d4QU9qotOClcam1X8CmJb8EwYo=
X-Received: by 2002:a19:2207:: with SMTP id i7mr2440348lfi.185.1568734154167; 
 Tue, 17 Sep 2019 08:29:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190917143714.12876-1-marex@denx.de>
In-Reply-To: <20190917143714.12876-1-marex@denx.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 17 Sep 2019 12:29:09 -0300
Message-ID: <CAOMZO5DnPLKQFFsFfpxm0pL+6jsyF9NZqRpf_3syfkhjJgqOQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6q: Enable CAN in board DTS
To: Marek Vasut <marex@denx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_082917_064495_619DB8A6 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Shawn Guo <shawnguo@kernel.org>, Ludwig Zenz <lzenz@dh-electronics.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marek,

On Tue, Sep 17, 2019 at 11:37 AM Marek Vasut <marex@denx.de> wrote:

In the Subject, please make it more specific by stating the board name:

ARM: dts: imx6q-dhcom: Enable CAN

> Move the CAN enablement from SoM DTSi to board DTS, as each board might need
> different CAN configuration. Moreover, disable CAN2 on the PDK2 as it is not
> available on any connector. This also fixes on-SoM SD slot operation, as it
> shares pins with the CAN2.
>
> Signed-off-by: Marek Vasut <marex@denx.de>

Apart from that:

Reviewed-by: Fabio Estevam <festevam@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
