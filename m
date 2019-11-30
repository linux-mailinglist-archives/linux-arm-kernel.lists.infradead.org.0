Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582C410DF99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 23:25:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FNa3a4Tyh89w4j37lwntV/jRKvq/MYDh+FPryCxzWs=; b=JJR7L9xPFe/2ep
	CJuu/4uN8nfANlbJti3ZqHleTbhXJrQOouq9d3t6bcmb2OKb+ULpIwhXkTt6phGZRXLtvqUE8Np2u
	LFVmqbKMzda6cnu+7IM2dcUYzwNZSEKgIAydnXBsgLLTwJWQVtby7Dfyl4MLgvWNE3bI9271vyBRM
	voILH1g+UTfQfkCm2Rfr8nvqa3bOHMWjZfmt8lxyAvlFfNVbqxbFzWz5tMXuOS0FWfWdro4YJGJaW
	41QdFuEE/uryia2bC+fw/56a7uS+UNRjN7NmcWA1aHFjLLi1SZtL8iGTx1qKRn1e6tuvdEj624TQf
	nXJsh71wvvEVtd926Y3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBB7-0004vu-Q1; Sat, 30 Nov 2019 22:25:25 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBB1-0004v4-9V
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 22:25:20 +0000
Received: by mail-lj1-x241.google.com with SMTP id e9so35601861ljp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 14:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZLHndLy8wicZRQ8gUFmArG9klydMdpl0N2wfSSNkifI=;
 b=pPNc87T/eg772s4w4CQ6sQaiOlN4v6fqemZr2tF99Xi5ajTigA9GFKGKmxPwo3+vay
 ck0rnzF2b3gOq9ZeuKOZyCnrTSUqrxq3MyxthN6f0wBhcbCr+vwbVsuY8WQIqkbhul2a
 WYm48k+Z7jcM+j+CsP/CPx+Ag1CxGfRBLU7g1PuCSexVqsHbqutElazUGJZqodWj96pz
 ZwY27aZwdBcxI7jHvc8e8btd7tYjvCoaIiq61uko8UWCrmbpSsu6XLsFvogh+byPR+/B
 pGgFWkZyWtuguvY5AaQmkESVl5tX2rLskekG7pUXWhcVk56p/BkZefMdQkoFSQi3WXvL
 shjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZLHndLy8wicZRQ8gUFmArG9klydMdpl0N2wfSSNkifI=;
 b=Sa24KGMArSSbb8gLZAZR/p36BMxy1frIAxutr2OWqhmi5MmsB5gQaLVUydaGciXG1D
 Ra62QYT53dgrlZ8KdJi4DDIzhSOekOTb9kB4fufQzXDZc0y7IU+JwgBhnhkTJoMAsC4m
 ZgRFheS8YUznoDdbVz8vLnBDSVHsok6cU8jaVo6wLJhtBB/PsT7kQnbxnxu/mOZbMj3A
 W148OhxR0kh7Y+qWj2+VGUi0U2IxBhMD0avEg+ayF0C+9qeYQEYyF2PLm8JgNeNPYi46
 tzhUP3a/OJoRni8KBSRPIw1k8jJRqhFSuVSg3nfTmqP0OlVfpKZthkHqrvyR8w4U758/
 ipeQ==
X-Gm-Message-State: APjAAAXQq83a6T9Mj4C+AVZ++Wh//eujHEdhPVXJfIm75sIOl2WF5on9
 Tg88dl00JbOdMEWBmwzP/GYn3DsQAWEUz/a1dnk=
X-Google-Smtp-Source: APXvYqw/vYVdKA0yQ23MEFQIuSuq0NyhafkG56sLhiNAnO62bt8QuHvZWQmIrvBfMTlVNGvFENOY82wRB8C1TAvf03s=
X-Received: by 2002:a2e:844e:: with SMTP id u14mr28323396ljh.17.1575152716281; 
 Sat, 30 Nov 2019 14:25:16 -0800 (PST)
MIME-Version: 1.0
References: <20191129234108.12732-1-aford173@gmail.com>
 <20191129234108.12732-2-aford173@gmail.com>
In-Reply-To: <20191129234108.12732-2-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 30 Nov 2019 19:25:31 -0300
Message-ID: <CAOMZO5AyLBrsxr5rqkWgf44X0CQdqHcdaCLRaWLC25b18bF+xw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: Add GPC Support
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_142519_356870_6E2FC850 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adam,

On Fri, Nov 29, 2019 at 8:41 PM Adam Ford <aford173@gmail.com> wrote:

> +
> +                       gpc: gpc@303a0000 {
> +                               compatible = "fsl,imx8mm-gpc";

You could do like this instead:

compatible = "fsl,imx8mm-gpc", "fsl,imx8mq-gpc";

and then you don't need patch 1/2.

Also, "fsl,imx8mm-gpc" needs to be documented.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
