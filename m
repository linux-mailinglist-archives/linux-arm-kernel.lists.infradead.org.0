Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8431CC39D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 20:05:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPOcXQ/ENNqj78lvSZXid0lSas8L9ZN66+zQ1CUquDs=; b=pvIb9oXewnZra9
	2P2SYOete0W1YxBZ/jHX2mf8tLHZ10xVUE/uOWoxdPY4Ju7/Hs5T4OF+3vIJHYFIZLxI1/aQZq8dK
	wZ4yUjzJs1aWrfH4tc0P15O276iqlw/o3rnaX/LsK/aiMYtWVYkouTPUQWbeVQtC07LAqx7G0Qr4S
	JK8Cz+AoVhSLz6eKvPxpugXyiaLF3kNns+fzydpwQe8mmPoXWSmULwNDmadT30VGG2Fr58T3oZmy9
	/ndWbMP6X3VjmyHT/Y0P1cqAnd0ol/JrHOuC/xDPVrbIJ/gxii/lPY7B58pAVW9pxi7riWizWWAKm
	ZIO/X68ODcm6BtB51r0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXTr6-0001hi-K0; Sat, 09 May 2020 18:05:44 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXTr0-0001hJ-Ti
 for linux-arm-kernel@lists.infradead.org; Sat, 09 May 2020 18:05:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id s10so4113679edy.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 May 2020 11:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iylAZ67afhJneULmpXD8hs6yG6pA0hAdphybTMdL2Tg=;
 b=jh95EKvvRqh0/JOFoEYMmmqP/RxTQ/Wg7UWF3kmx0h6XIYkTSyiAkJK/ZYctPIC0Ug
 HObErDXhrfaNdXfjkhTu/9Czr3G8PiYtiOFECWsQeJAEI+8J4lhBXc015AaSRi3hqPGX
 TNT2Mwb0Pq8CffJmqCRO6LB9xuKITunVAg2OskNUwZQIR6lPVEzQSRg02HGeerSRB291
 NmkkDvBIetQGDiJsmZ6U/JcWeGO1HlrJIhsbwXv28Ni+ZilxdgagfGQ4m8xaZKMdCpWQ
 gsmwXsJ0m8LR/E0M/n/qqPOekKqdgJcRxy/H6qeyTPQQweEXL9GaeS7fBDIfP8IA0zd+
 I8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iylAZ67afhJneULmpXD8hs6yG6pA0hAdphybTMdL2Tg=;
 b=nvIcgljtPlNC4IH+iCIpdeTNWVGnNf+p7oRMRnt4kBj1088k7D9XWmq/RZZPPMsbAv
 SyJCSjsN1GGQwQ5EBIoG3GKTBwg0btcJxMWOoh5bBP5Ok5JqCs5FZkGxCLGBrmJyProT
 qQ7LeCrWRyJT6cfCRFd4ABXBSAxeDY+dIFglsDO/XF2svFL4NmTRz1+lpdiM3W+n2sYX
 Mlosx7dtLGI3Z81PHRAwYWW1vc1jaNbBG06YzLxkzvrgMQMgVT+h8sUVd4NDlDbu873m
 W0VPvI+RN66vj8W/vLzPz4kZ4irxY+bTWSxt1m8kqL9xRArHYdc4yi5ewxrvQyOKpy5v
 xGQQ==
X-Gm-Message-State: AGi0PuaUN0O1K2NcBdRJxtrUpFlPkgTEqOM8FIiHSwwOlTxlyZ+tu+/5
 wvO+y/eL43Pv/HS6x+O+SbCJd6M+Y0egLOfkL7uuDccghbGmig==
X-Google-Smtp-Source: APiQypLoVDkS1aQi1ev2bBIGhd/Kk0xDc7qFO2h8NcA8QPs7gLtSAv8Zf+9cQ3JJ5J3F/s78XtFuBW5tjzAK4SyZt3w=
X-Received: by 2002:a05:6402:391:: with SMTP id
 o17mr7109516edv.71.1589047536466; 
 Sat, 09 May 2020 11:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200509103956.26038-3-hui.song_1@nxp.com>
 <20200509103956.26038-2-hui.song_1@nxp.com>
 <20200509153315.GR208718@lunn.ch>
 <20200509172724.GG1551@shell.armlinux.org.uk>
In-Reply-To: <20200509172724.GG1551@shell.armlinux.org.uk>
From: Amit Tomer <amittomer25@gmail.com>
Date: Sat, 9 May 2020 23:34:59 +0530
Message-ID: <CABHD4K_tPkCherpY5zUtxV1wcKc=7aj3ayr9yxG-sLFZeMf3Dw@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] armv8: gpio: add gpio feature
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_110538_959288_FBE4BF58 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [amittomer25[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [amittomer25[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Andrew Lunn <andrew@lunn.ch>, u-boot@linux.nxdi.nxp.com,
 Hui Song <hui.song_1@nxp.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, jiafei.pan@nxp.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From what I can tell, these patches are not for the kernel.  The
> filenames don't match th kernel layout.

These files looks to be from U-boot, and must be intended for U-boot
as I see U-boot mailing
address in recipient's address?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
