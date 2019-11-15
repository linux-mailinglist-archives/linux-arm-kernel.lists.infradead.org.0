Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F7AFDEDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 14:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RbT3vYg2b60DH+WdEm/mHDlNgPaTyQ8tTVI+uUT013g=; b=CjV
	HDgzHaB5u51tbC4nWALn1UQBeT1f3ejFyBNZeT+JSmIlKwcvnnbQBjLDp2+deiYD8pdSa/2CYmsla
	bskAnDwosWUTQ1d0EVqM8uZJh4TuFp+PfLjDt+9iX+ydsVG/4h8qO/ylKuzG6L3F5yq/31SoHtMHq
	akADXn+xACklOnzfqz6sO0fz+kiOQcmIOPgMq+iFwIZT5sLhvKmp1J3tMrI26MezSmLZu+sWjmioh
	2WBEnKch/MkD75XyBoAPUwgvb7gkzmAQP1XQjd+HI4DyqmXRx6TJLD66Vfy77HzTRjQ4jBe54mgPx
	V0u7czy4yNS/z/ORDSQuAQs6WXvvUEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVbYI-0001bg-NE; Fri, 15 Nov 2019 13:22:18 +0000
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVbY9-0001az-U5
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 13:22:11 +0000
Received: by mail-vs1-xe29.google.com with SMTP id b16so6292159vso.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 05:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=bhSNDUgdDNeS6IYJ1O/uGJFkHTXqIhgA6nGbkJFy68k=;
 b=PX/1wnwPnRP+zoD1Lj6h3IxjU2kQQkRIGEZ6C5CR+pfkabJBMXx3FybqHENt7CWPGA
 hn9nerEMCYJQlVN8A9q3U0xNwof9WAYoKfNKgX/NX5Ua3+EfNZUiOHBLGlyjFAKbqFkp
 udhuOXYiJbkybmKM6cnWGC4Fe2KCHCvuKpYEw6jO4TFGjobrGxpAo/DpAzddhECzVOVw
 wBvAXn6WxXN9sqdb2HpKfqnUXWbbEkv1e5nJlOdgTsQGgHSKANA/gxod8keTtsv4oAtr
 hdK4A5thI145D0Wx4dguXY2+8Ry2qCmiv8ULmYqVRPL0/W3VMQibH65N+SDvauRmovbH
 0IdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bhSNDUgdDNeS6IYJ1O/uGJFkHTXqIhgA6nGbkJFy68k=;
 b=AbBoxonU6buChyaOuJ0PYlCtwRBOPR0PZZ/GgMYDnT4YRm2pJlwRy3Ifn9dGnef0op
 GFcGuz/IbvizeEXMabrKrQ+nldSwtSvObh7c6Mv+X/8fmsGK9gTou+MvoStxS8pljc0a
 I4O+dZ9LMVUsIHn3oqCodJCjFcrbaQt+2Yu0unrcqTUrs4AfAbbOfzmRp6FW2Frt9Qci
 U3LNGgeFNX/jfJxnMgIUp1zEO+gqh6//RBOQ+gXe4QplasqybUBik7dpzgToRjCJ5PO3
 ui+er+VrElt733Ji8dakXVWZWarQYjO/6HEGA0R/gSfvphmezpgLvZKwh5089KDtw3l/
 TGGQ==
X-Gm-Message-State: APjAAAUxZF8aDT+n7kVN2OP6i4CubPrE5NqS3rzh3VBzxeN8WjyZ0NL0
 307MpsOl8uXhbWK6qB2ZNbTus9KTIXzjdYnu/Go=
X-Google-Smtp-Source: APXvYqymuU4cG22w01HY92AXmSZXuqL+qGeFnL8fqsAII8fzh3g2nwGVehQaAdsNxUVAVyWMfX+tCBpqzeq6ks2zWHk=
X-Received: by 2002:a67:c788:: with SMTP id t8mr8662044vsk.196.1573824128224; 
 Fri, 15 Nov 2019 05:22:08 -0800 (PST)
MIME-Version: 1.0
From: Pintu Agarwal <pintu.ping@gmail.com>
Date: Fri, 15 Nov 2019 18:51:55 +0530
Message-ID: <CAOuPNLhw+p93ga7d2V+c+auCrBh8kKK6EZJVvpJB9uDmEX5wQQ@mail.gmail.com>
Subject: [IMX6] - IPUv3 iomux setting after linux resume
To: IPUFORUM@freescale.com, Pintu Kumar <pintu.ping@gmail.com>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 NXP Technical Support <tech.support@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_052209_966539_1435401A 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e29 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pintu.ping[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear NXP,

I have a customized imx6q-dl board with the custom Linux 4.8 running on it.
It also have LCD and HDMI connected to it.
Both the display working fine during normal boot using Weston/Wayland interface.

But I am trying to support hibernate (suspend to disk) kind of feature
on this by converting IMX_DRM, ipuv3, etc. drivers as modules.
Currently, I am able to bring up LVDS display, after system resume from image.
But HDMI display is not working.
For HDMI crtc I am getting "vbank timeout issue".
{{{
[  197.735034]: drm_atomic_helper_wait_for_vblanks: waiting for vblank....
[  207.734306]: drm_atomic_helper_wait_for_vblanks: [crtc:24]: vblank
timedout, waited (3000 ms)
[  207.743538] ------------[ cut here ]------------
[  207.748276] WARNING: at drivers/gpu/drm/drm_atomic_helper.c:1133
drm_atomic_helper_wait_for_vblanks+0x26c/0x274 [drm_kms_helper]()
[  207.760060] [CRTC:24] vblank wait timed out
}}}

When I compare and debug more, I found that "ipu_irq_handler" is not
getting called after resume.

* I tried to do disable/enable_irq using suspend/resume calls in
ipuv3-crtc driver, but it did not help.
* I also tried updating several patches from latest mainline kernel,
but this also did not help.

* Read this guide about IMX-IPU:
http://cache.freescale.com/files/training/doc/ftf/2014/FTF-CON-F0119.pdf

But, this also does not provide any clue.

But, I feel that IOMUX setting for IPU/HDMI needs to be reconfigured
after resume.
So, I am looking for help from NXP about how to do this ?

If you have any other points or suggestion to solve this vblank
timeout issue, please support us.


Regards,
Pintu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
