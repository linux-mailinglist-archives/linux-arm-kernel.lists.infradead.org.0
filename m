Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1881AB0DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 20:46:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b92O0uxrVMw5tRA0wU7xLh2ETvmp7npvwAUv/WFtrv4=; b=Tbvd8XQ2xem0DK
	/FcsqqA+KqWJcdxQrJ+R66Amv3Y1xZzyggK3Bz/QIdgEM6Jbl+EAYvuMpUjSmMSNa2WP+Shjgj5KJ
	KvjRD+5Sdw/WpzJTnz/NxO7KX//N6ulMB4+JWws2Y6jbR6ovA9ru7NJw/NHFHVY3wcvWmiWBazQdc
	E+t4h2ZjmmaWVvJK+jyYSvBx+0ZJq38YxGpnSQldqUqEc5aCXKB9cf8b/bGhZ5q3qqFy94yDrYg2c
	uW6oT4aw8xc/nHzsnpiqHxuoOmm0kY8rjb7+zhNbrgG24Fm+Iuy6PQpHzQwV7X9KDUH7xJFU4wanD
	BT7AuiLtI4URqS6SZGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOn2y-0005K8-Ez; Wed, 15 Apr 2020 18:46:04 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOn2q-0005Iw-LR
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 18:45:57 +0000
Received: by mail-qk1-x744.google.com with SMTP id m67so18452739qke.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 11:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PBQchXV5h+GZBKvpNdyH5xHjxEMUXqW14Qdp3U1Zwvc=;
 b=ZZ+QkkHQTKXaxC1zVQQ/q2prKNkCzlHQabzEGSspciFAhzhlpUCTKgjhDQ6pOYiBfh
 51t2+Gv6VtlAUaVxJo5ggnMII7sRvKSwKbUSot03CmpO+mHUrmC9f4HNo4rmDByEUH+g
 VZZZUtgfWDK5ODUYpfCym8yp/CWQWcErBKkAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PBQchXV5h+GZBKvpNdyH5xHjxEMUXqW14Qdp3U1Zwvc=;
 b=GKCqhZTpWfRV5L51k5PSb3/LYrBO9jekn0mP73cz9qEw93j8FqhBZO7lzvw/b7We8r
 RVwSQCzOoO5l6X+ziDPZxxyUVHkPbmdyAHLYxvocDZjHBMG1s63BDMgmWcIiZY1fxi3e
 BA2uvwrosZOqHLDVoDJvQNStyR3/CN235czsRevxwlfGl5pyZoLSmuoVB0tb7W5U5gU3
 yn8WuUUNrQf3PnTWWzqiTOqd3iWsAhAb8fK6Ccu9NvckiV5ALiV/s99woajXohIiWfIv
 AjCAnh1sceC8DW4jrNnwktOo+F73jc1WNhlhSfeefA7TjUsXs4A61dHGrD/3oyFgyUtr
 vrWQ==
X-Gm-Message-State: AGi0PuZt078dN+HJmQE9J9AcLb981smnL8rv5m6XKbffWIBUv37JzlvG
 tS9By0EymzGpqzW/8DTmI7lGqQ==
X-Google-Smtp-Source: APiQypKIGgPLSnD/hI0ZniHM0EIt5UECe27dLHztwyrc5P2U+rUjJibDWwAjqlDUrk55s9PeRu8flg==
X-Received: by 2002:a37:5a02:: with SMTP id o2mr27246247qkb.380.1586976352184; 
 Wed, 15 Apr 2020 11:45:52 -0700 (PDT)
Received: from bacon.ohporter.com ([2605:a000:1234:47c6:a553:c33f:1562:b0b1])
 by smtp.gmail.com with ESMTPSA id
 p31sm11105853qtf.11.2020.04.15.11.45.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 11:45:51 -0700 (PDT)
Date: Wed, 15 Apr 2020 14:45:48 -0400
From: Matt Porter <mporter@konsulko.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm: fix dma peripheral type for SAI nodes
Message-ID: <20200415184548.GA29919@bacon.ohporter.com>
References: <20200331203551.20914-1-mporter@konsulko.com>
 <CAEnQRZCqeJkRPEUYL3k8seuNusLZ6QpT-X-A7E20AMHSYcmaUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEnQRZCqeJkRPEUYL3k8seuNusLZ6QpT-X-A7E20AMHSYcmaUA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_114556_711971_DD392BCE 
X-CRM114-Status: GOOD (  15.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>, yibin.gong@nxp.com,
 Anson Huang <Anson.Huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>,
 Linux ARM Kernel List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 09:04:43PM +0300, Daniel Baluta wrote:
> On Tue, Mar 31, 2020 at 11:36 PM Matt Porter <mporter@konsulko.com> wrote:
> >
> > The peripheral type specified in the dma phandle for each SAI node
> > is incorrect. Change it to specify the SAI peripheral.
> >
> > Signed-off-by: Matt Porter <mporter@konsulko.com>
> 
> Hi Matt,
> 
> Why do you think this is incorrect?  AFAIK script number 2 works fine
> for SAI. Can you add
> more details on what bug are you encountering?
> 
> Adding Robin the owner of SDMA.

Hi Daniel,

Thanks for the response. I was experiencing timeouts that were traced
back to dma incompletions. Changing the script at the time fixed that
issue. Now, given your response I went back and checked this again and
verified that script 2 does work for me now. I did change firmware to
the latest v4.4 from something quite old so now I'm suspecting I had
bad firmware loaded up. Does that sound plausible? In any case, I can
confirm this is not needed.

-Matt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
