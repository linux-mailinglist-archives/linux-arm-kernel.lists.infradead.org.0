Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8BC1E529B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 03:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZrmI/7y0SmGhPzLlz8EwcGZFJU/8pQUuy+ESfBNK8/A=; b=BDX/ubMXmD5dob
	uza5aT4hcJiiXOheXETxChmfuZcd3bukqhedqnvPemzsu0sI6q2QPYRAIfgENET3768jh4noBWrGA
	WMxm1qUpykeYummivM4UdXfqXffmcFAO1XJAegch3te5KUv0kAy/lzGHY/O399ekX9G9ypl2z+zAK
	EKM4sv3qdTYChp9w5IgKBWiRjccfKxcuBfhSYDLYVHosmA4MLgcsR424bI3J1XtYa9ithpUHqW/Ka
	AsRwHyfokAGu5TRlM6G8sLy+LJ4V/2/KkAD/egpxXew3OF6PxwSclBBRy05yYOK/b2AiWAMtdjCyt
	bu50dBe3V/BSqR3HvdWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je6xN-0007jX-8B; Thu, 28 May 2020 01:03:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je6vF-0006In-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 01:01:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B69120888;
 Thu, 28 May 2020 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590627685;
 bh=/lwQt5sScTOku9hoOrEpY8PEqw7NaqilOz/g2szpnDw=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=bI87KG6sUzm7IkjFs0dkUsm3KTrMnL36yp98x3Hq2fdv3jybd24/efRNO1qiPN7Mh
 zORSkep/ldt3wTCBnbAORUcAbYdU+HEHlBEAmiMj0Olrwa7mquBI3q4WESkNTekK7T
 kztXJugYN8I8oscJbjpJ+JGk59hvc2CyORtNywEM=
MIME-Version: 1.0
In-Reply-To: <20200519224151.2074597-9-lkundrak@v3.sk>
References: <20200519224151.2074597-1-lkundrak@v3.sk>
 <20200519224151.2074597-9-lkundrak@v3.sk>
Subject: Re: [PATCH v3 08/13] clk: mmp2: Add the audio clock
From: Stephen Boyd <sboyd@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Date: Wed, 27 May 2020 18:01:24 -0700
Message-ID: <159062768433.69627.13220952420201356980@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_180125_737274_A11C2F13 
X-CRM114-Status: UNSURE (   5.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Lubomir Rintel (2020-05-19 15:41:46)
> This clocks the Audio block.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---

Applied to clk-next

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
