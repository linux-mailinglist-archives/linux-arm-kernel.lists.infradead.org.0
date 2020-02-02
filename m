Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFFB14FE58
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 17:40:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVitCx2BKkG4uTYShjSl82RKstZmgoLAuhzL4gfYOzA=; b=nU9qQ2ni3AspxG
	4YRfXRaKEKKeMornMDE4kUSPFUH3xy6gwGHl9ZLkVxHFleJ/Qk3JrYQoYJImOYeSdY4Q1bTQH3GBz
	VLnm55ZYXj31FDKoh3IMTm/8V/mCuaT27BA5S7ITEsY9CiaHDJQArqWdcmviAWk0+myHD0Y5u3jno
	lrvxlYHRWD3G6e+ZGr4gnoRe/oSIJuWmQPXmcM3jgqZ1C6iP9iuLOEjkhhEa1ne21HPDbMP2eHO29
	zF7fGxLFbmoaZwXBIAAIEedlccwRH/2u8IOk/sleIMsWvQfLH5eaAcGmwk5g1G3Wv/wGDruzodEiy
	JK00c7wnsWiKiLZsZiSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyIIE-0008V2-94; Sun, 02 Feb 2020 16:40:18 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyIHr-0008Pc-49
 for linux-arm-kernel@lists.infradead.org; Sun, 02 Feb 2020 16:39:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id z26so7988741lfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 02 Feb 2020 08:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZVaC0F6rgdniTKROUmCnnA4r9wsKzEyhP6hHedwGoWo=;
 b=XoUUS+o3zhjNpAbUAUIfkj/DPoLWtowdwYUaTHzcwfzGiWEvDtnGA0vFtlP/shH3Vo
 25dS7EkTu8G7uCL7S/SjtLAhWZe9JAEAwq4eOCUOTW82/yN4sRnb+6gZmO8M4zYMtsQT
 5jGkW4xhG1S/8gELd3Oapxj2sn4N0CMam04YmPY6py7ZqQdQhhhofHzeb67kzv4QoH8M
 0GXtRajwA83o+0WP59UES85ARZjANg3xULWrkuueaHQC8pTSq6ut/DMAydv1Q351UTsV
 pLn76PMJNYr6w1MdaJb+lZRGW0wbiOBB2DJXtBj2KQ/6eZDXu59Ar2grySPYG9JSw3Hn
 4/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZVaC0F6rgdniTKROUmCnnA4r9wsKzEyhP6hHedwGoWo=;
 b=g+uDYHSP7NCWSX+F0zGVYFwC0+hhMSTlWn2ZOyCh/W63NA7Tj4J5s7EBv5eCUgETTO
 AY/1etB80cKnRIN5LP3Vg2XRI4nA/SC8JnzieX4dKHYscMDA55vsvTYDv5R7nh5yqet1
 Qtn+cO9cXut4+jvOPC6yYJ1w55tnNpeS+9X6NFXnKYvNAND2/C2Q7jqRerhldLggd4zw
 21E8jVN8+o43TyWx4mRRvMl0KYjTWmGuXjDzLJtIYjUhOKhO3KWiMr/sw2SxGPTwp4/R
 fzlb3kKTXXdsLvdfiurkXcnw2AVQiCJ6FVuqjRBqy1lx1rs5MCkO+WCEPD2gdxMizjEj
 pQMQ==
X-Gm-Message-State: APjAAAVu3qry0wnfNvaGvtm3TfsQ3HowDWi26zfuuXRLJJBL/LfLlhgX
 z2PIPl7SSd1wlPha1Vht19z5GzRDuPTPGVASqNU=
X-Google-Smtp-Source: APXvYqzzlxrTpJnf9hamU4U8roypGWc+64P/nSJO0cYNO9R2+JV7vqrhizVneA72cA7hYjmojWIPthZlH0pd8OGiFsY=
X-Received: by 2002:a19:c3c2:: with SMTP id t185mr9929668lff.56.1580661590508; 
 Sun, 02 Feb 2020 08:39:50 -0800 (PST)
MIME-Version: 1.0
References: <20200202125950.1825013-1-aford173@gmail.com>
 <20200202125950.1825013-2-aford173@gmail.com>
In-Reply-To: <20200202125950.1825013-2-aford173@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Sun, 2 Feb 2020 13:39:41 -0300
Message-ID: <CAOMZO5D3emrAk84wDS04qJC-3AyvFnqodhoMsXO-ukHnYsU+PQ@mail.gmail.com>
Subject: Re: [PATCH V2 2/5] spi: fspi: dynamically alloc AHB memory
To: Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_083955_167503_3BF9A117 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Ashish Kumar <ashish.kumar@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, linux-spi <linux-spi@vger.kernel.org>,
 Yogesh Gaur <yogeshgaur.83@gmail.com>, Mark Brown <broonie@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, Han Xu <han.xu@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 2, 2020 at 10:00 AM Adam Ford <aford173@gmail.com> wrote:
>
> From: Han Xu <han.xu@nxp.com>
>
> Apply patch from NXP upstream repo to
> dynamically allocate AHB memory as needed.

The commit log could be improved here. What is the motivation for doing this?

> +               if (!f->ahb_addr) {
> +                       dev_err(f->dev, "failed to alloc memory\n");

There is no need for this error message as the MM core will take care of it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
