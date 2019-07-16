Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9AE6AFC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 21:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mV4QaaIueQjAT5GsWBblDLvw+QIVs3ap+fJWTlpS4tU=; b=OnTe8shQhdp3EJ
	gpOEcZs4xHGyHWsHTtAOFUj6XvkjEXYMoHY5aheFFoI+N4jTgtpVM8bT3jpRdvygjh3iihTA0IcDJ
	wM6KPAjBSyhTkxIb9Qp+yrgkRXkbhC1HI3ZNyZtFx0cyyTBAG70hoBJkmZa8jCHVWU5FsXfUWFbKr
	g1gT1at+oEY+Jot3qYWlx7diYZ/39Xdf6lVoRb6LUbzGtNkdq6pi7GvKhAkjmWg8GCu4f2Rlm8pG/
	Fg4C/yd7tysHllKWLVi31DXrojB+So4BlmsAktafEwKoJ8bQsaYRFl9JTbVNIMsQc3bbGCPMIlNre
	BhkNTcPWUdy132H2YfmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnT60-0007sA-N8; Tue, 16 Jul 2019 19:26:41 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnT5o-0007rh-C6
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 19:26:29 +0000
Received: by mail-lj1-x242.google.com with SMTP id t28so21099121lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 12:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dbAoe9hwIKJ4M7ymTbvXmotoCz6oA9QthrbOb4BXzF8=;
 b=HaySDeWx9KzxLRUocYtBpeBUusKF6mSrKQLFyEQaQMby9oxdJzyU+ZKl8wbOVfURIe
 UC4t5C/+dydJ4dnY/hWi62eieun5UCxZL4bc+oECqxMj0E3Q5B07iUnWsCwDTWs5Lk9e
 7R2JT9OFMnkWRXmHU16cOtAbPpYvs+gmSm9bqC4IY37GmpfMc4z3u8Kmh12zTQQnE9sw
 bwQ2NCyVwd2DfyQmcPlFFoMMXKR6twM9+7LuHJkvGl358NVXZchhQVfm5QprxKUiSi62
 uVI+k4WZyOZC1oDZQa4Em2EnD57IwERKOGaeJV3FxR+dT7UszqbEXK1JV9YOtyuplJOq
 2MKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dbAoe9hwIKJ4M7ymTbvXmotoCz6oA9QthrbOb4BXzF8=;
 b=BMfzkf7bK1XZ7QY5kK2yW16zmFM6CBHhWlKZ9kme9DLKolkTKaZUl6by7/mXClAUcA
 T+HcL69eYrdD+nOgo0o/S0/YijyIFNcuSFo7j0aNGnLsyFxanIJ6z9Rx7zmc+/Z3rBys
 N2Z2/N9n44JTtm2gKL/KkSOmAe/3HGjUm3QcPVsH8VU/xIxVKkVqJ77gNyWD3+p4oXHJ
 h/SZmLaSiL1HLnuZb4x/hccQTGVUXycCmpX8WaGnFvu5//OMkQ7qiJOf+SjTIhkx0twy
 TwryhaIjhFRQtQJFykDH7B0JfnKk/o2U+KeZFZ+Dhaw2h29wdEKMOOhDHi+9+uNCQYYS
 NvwA==
X-Gm-Message-State: APjAAAUAtygmIOJA4G+vd2KfCPIsp33frZJ9aYRoEM0zpKBQZiLZoOG/
 DyoyVt31XeYwxP7QcIFsELLXH3Se/Brz5MTNIMzRqA==
X-Google-Smtp-Source: APXvYqxSIlAjQmTokcZ+T6GNymk/pwOEDmsMPM1Pfptxz6wUfTUNozrJZvvn9We17XXVQfGllb2pPyiNqLwv67CvMAk=
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr18711250ljs.44.1563305186596; 
 Tue, 16 Jul 2019 12:26:26 -0700 (PDT)
MIME-Version: 1.0
References: <1563290089-11085-1-git-send-email-aisheng.dong@nxp.com>
 <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com>
In-Reply-To: <1563290089-11085-3-git-send-email-aisheng.dong@nxp.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Tue, 16 Jul 2019 16:26:23 -0300
Message-ID: <CAOMZO5CMM94rAOryvfmHpuAsJnCRj-98kX3rfiZSn5EZt_c0kA@mail.gmail.com>
Subject: Re: [PATCH v2 02/15] arm64: dts: imx8qxp: move scu pd node before scu
 clock node
To: Dong Aisheng <aisheng.dong@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_122628_412521_F6342F79 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Dong Aisheng <dongas86@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:37 PM Dong Aisheng <aisheng.dong@nxp.com> wrote:
>
> SCU clock depends on SCU Power domain. So let's move scu pd node
> before scu clock to make it probe earlier.

This looks like a fragile solution. Shouldn't this be handled via
probe deferring?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
