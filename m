Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC84A85FE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 17:12:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpQ7e6GpTQ6Avm/bZ7mYo3ADyE4tmwfvSMbZlXBvz5w=; b=UkPTSz2pceD3pS
	n4L4uvxvQ3RHQrkRCJW3M+IWbqAqUXBlrYlcgyc9Goyt0cDztbQ0XNC5AOoutlid2P07Y67wk+2cf
	QB2ucODF/Tb3Gu1MdmvpFUZ0Pl/j6aIltpZQkegeGfE03Lx6dELOYRJXUJQ62xzrzbSp+8W8HQ0zJ
	PJKdeD4edStxm1Ft1f9FGlfKaVWuY7O9MSSEx8mVVaVjXU7ThElO2+C6qY3iyXjMlOBw0HGQh3Qif
	HT9VfC42jeUGysN1R7Eo2z0+/6p5Tw06aN9eHKSBzamWWDGW8nXFiyHDtrWfJidVz/z/4AbAqnZe4
	pXhOAn3B6hN9iJzcqaTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Wxo-0001EM-Bx; Wed, 04 Sep 2019 15:12:52 +0000
Received: from mail-qt1-f195.google.com ([209.85.160.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5WxW-0001Dd-CG
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 15:12:35 +0000
Received: by mail-qt1-f195.google.com with SMTP id j10so7109928qtp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 08:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o8ejvnNg4Kvr+3TALVSAltiK2qerKXY2qvw0lArXL9c=;
 b=JtOS4111LP8mNtk/dlGPry/HH/JkKYKpClmNznSUmgukI4djBSAlCmluVcLouX575W
 cMH1SAW5bXhX1Y8zajGsqL2dYgLPPfviNeU2fgdrf8O1S5u6TQi7VQarCNjCjQ9RB88l
 DT/RsZeYXUem70A64L5/0lxP6eY1pp8jitp3T4rPRhUc/5nyuwLLZyzmQXVArTN/Q0k0
 LUrhzJ75Bw/SsbWZ3sZDdd0a8Rx1kNg+UKjiKFhiLWI0vXDhT6WORSL6a2pswO7QL/PT
 jpy1s30EOJ/4iJeiC35YKYUQSJVuOaWbYTGDALwaAvj8hN3J/CleHc2GexOjspsIu9y0
 pw6A==
X-Gm-Message-State: APjAAAVK7a//buqkva8OWUlD52+hOjRiR7bIPG8Nu0YQz5p2qdt86EU1
 P6oWm6sSA/KhWMYH9nDlTTADABw8khcXKstdKdE=
X-Google-Smtp-Source: APXvYqwqtZfSybSMk4qI2n1tqUM3Z8GIVKi2FHkaCfVZAe78CWfg3BbwrOkNFUZcjwikmh7hXGn5mkK2+Mo/DLOAfU0=
X-Received: by 2002:ac8:5306:: with SMTP id t6mr26200129qtn.204.1567609952839; 
 Wed, 04 Sep 2019 08:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190819190552.11254-1-f.fainelli@gmail.com>
 <20190819190552.11254-3-f.fainelli@gmail.com>
In-Reply-To: <20190819190552.11254-3-f.fainelli@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 17:12:16 +0200
Message-ID: <CAK8P3a2QmUsdDeaCiwv2WgL8BNUHn=LOB26Buknk2SUKb=QvgQ@mail.gmail.com>
Subject: Re: [GIT PULL 3/3] Broadcom devicetree changes for 5.4
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_081234_418645_10DCCE3C 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Kevin Hilman <khilman@kernel.org>, Eric Anholt <eric@anholt.net>,
 arm-soc <arm@kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Olof Johansson <olof@lixom.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 9:06 PM Florian Fainelli <f.fainelli@gmail.com> wrote:
> This pull request contains Broadcom ARM-based SoCs Device Tree updates
> for 5.4, please pull the following:
>
> - Stefan does a bunch of preparatory work for supporting the Raspberry
>   Pi 4in the next merge window correct register ranges (SPI, I2C,
>   UART), define memory, HDMI and MMC properties at the board level
>


Pulled into arm/dt, thanks!

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
