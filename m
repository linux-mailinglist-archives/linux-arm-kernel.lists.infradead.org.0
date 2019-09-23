Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28CBBACD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 19:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUHo6LfUvIqgNdspmyayc6oB42Nsd2MZSno32sHkqKs=; b=Xtjc4WR+xRmx/8
	/D1RFhRB1adjAJ7lWy5OIC4/TEz2LsrSJ8UZucg+Q4OYrkqk1ZZnQazfjPl7Bh+7+OaBnGVa6dZRt
	kWGGNmvh2zRzqRKhVN0/ZtbkVim85KDqJ3shlx1J1ykyZ5GnKmWv1Nmcr0kG15m4sYwxkIqc+t3Qm
	8lT5OFGbgfHRscyNZz0G5iGfb+ztrlq24z1gKfZUgOOYTPdOfJ4Nbm9h8/uTPNTrj7wFYYIPmbMHA
	By1PKT0qHcsFC1d612d3x07cXXtXWgkS1gFerstxRbjcyI/Vpggo0KW5gUaL7qcB/O/2R/iTKtN/U
	X6BFh34DJkayEn2IlK/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCSWS-0007K7-UT; Mon, 23 Sep 2019 17:53:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCSWH-0007Jc-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 17:53:06 +0000
Received: by mail-lf1-x143.google.com with SMTP id r2so10808116lfn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Sep 2019 10:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+nETwLTcSQNmZKDmVi3TZpXZbExngQu+m9w5qr6AGgs=;
 b=HxgUpwh1K4Osq1CBS6h200IBzNKMlXxZJys8/y+WGEwmFuLCQp0b6rEEUvK4oLDrSP
 Rf7BTmAo0PpUHFLQDsmvhM0ybmsgDKyVNHrLOOg28zyy6cwdACR+PiZGMx18dGOmsBZx
 0GpfvuBlxJ6dZOGT/U6eIf5QD8rNo9HWz+NqmbEKcLINC54FQrJIoWGnq3OhWVvW3kyg
 WFQUO66ofXEapR7mEAEVYxUI7b+ZupKsrvET1yIDXCpucBhsSRGiBD41mce2wJ7jQdtb
 6V/A5WAcmVlM2IUla0zbhVBQjd0gBrEb4NBmZ5ryqvxcwyflVrm3VTIY0tE/IvZgCQPV
 i+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+nETwLTcSQNmZKDmVi3TZpXZbExngQu+m9w5qr6AGgs=;
 b=qiZnpM+n0vJ0Y/k7jH82v3xUmJn8YnucLkr8/5E6nRe3S9zHiN29LtSoZ5HHhncwqV
 NR5jAXvuYgg3aWW6FQhT/ZgKe3EXOzC7GVxOki6115/WBpjTqHpZ2og2bJfiXyFOnMHP
 dR5LspVyZGLygkhCR3X7mYsludor48K9WgG5pf+RWbWhB1EfYwwKeNAYUjJau1xtSqDh
 wzo1h+Hnt3lUB0VozIiyCISeVMPhy5VFMCNSt07S6e54pTbBjDdFdx1aXJZPyUMsjCOJ
 GlZ2ZreXU4Rmn/mcOpIxq9W2U5MSA8YzJn5LdABpLwiS1x37Pw4aDqBj2TrYkgpm+yRf
 nxPg==
X-Gm-Message-State: APjAAAWcJBJZusPFdsJpcecmJpF/gzHCfvtHqp4fqOxSxVHLpG3UrPYv
 ELPpZkKi9FNdaZDndYy2ar4bOCXrGOEdSgVfMc0=
X-Google-Smtp-Source: APXvYqzkPsMgK6FybRHJ7x3Iz6w0uc///8DUQ3Vvh8wWfmwZxx/RPFfskdkY4Ly0GSlEFtOJmRtRNOME7RHtvOCscs8=
X-Received: by 2002:a19:6008:: with SMTP id u8mr500304lfb.12.1569261183720;
 Mon, 23 Sep 2019 10:53:03 -0700 (PDT)
MIME-Version: 1.0
References: <1569248002-2485-1-git-send-email-laurentiu.palcu@nxp.com>
 <1569248002-2485-6-git-send-email-laurentiu.palcu@nxp.com>
 <CAOMZO5AOVfBpz2Azh65iT_W3CBZUxf9KnqA=kdow7XWd4j--Qg@mail.gmail.com>
 <45ad0ec1bfd5af4f46efd7d24c627822ac17fdbf.camel@pengutronix.de>
In-Reply-To: <45ad0ec1bfd5af4f46efd7d24c627822ac17fdbf.camel@pengutronix.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 23 Sep 2019 14:53:07 -0300
Message-ID: <CAOMZO5C7d6ovHSyaXNWD4NmTNF-r8jw1tCLxNuh1BmD4JReMjQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: imx8mq: add DCSS node
To: Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_105305_818111_9B8308F3 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Laurentiu Palcu <laurentiu.palcu@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 23, 2019 at 2:01 PM Lucas Stach <l.stach@pengutronix.de> wrote:

> No, they are not. Those are imx-irqsteer IRQs, this controller has 0
> irq cells, so the description in this patch is correct.

Good point, thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
