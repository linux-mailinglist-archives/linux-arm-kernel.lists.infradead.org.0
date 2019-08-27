Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64CA9DF14
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:50:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xt8HY8qRNSXNdvOtbENIwD2ZFnaFjMck3XZmyUNGuk=; b=sceXArWHmy2xzP
	x/tAdCa4iQ90objnMlPoIMl82GftG/W9y9/IvbJVq6LK2fiLDitjmBFvBR99Td5NcGu7JpK0gzR24
	MeEbAevu7upDCc6teDs5jpdttWPrPXaoSx4aAZP5P4gv6yzbptdICRH2s2F3Hdm4Q+3dFfvOMY5l3
	vQi6Tm3ggFXLkRGqc167HCyLolQmV0kyxXlHIbrHOX6Q+cidavZeenT1Zx87qL+QW2Vmz0JnAEa99
	jVlzw2aMh5Bk3h4TWxJen+tTHKfN1oQDVXNDh6CEmI2B1vquDVa4gHDP1BirtgagLa8prsAodmbOc
	lR4/bKqQL/R91pGDXmAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WFD-0000qP-Gm; Tue, 27 Aug 2019 07:50:23 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WEu-00006H-M9
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:50:05 +0000
Received: by mail-lf1-x142.google.com with SMTP id r5so8881989lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 27 Aug 2019 00:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S8ZPnzIzwp3dPl5EFI/1g9MYzH1aSuoZopYt/nP5q80=;
 b=YNYgBIyRPbSylY9yVS6fq7ufI5mIEOPQwSSIxhWCaFS6EppIOFX8+8R3WzVvbsdkTv
 0dWBrvkU8dkIYNTLDM2+P2zpmD8+2MUTxYM2RjmAc42BnPuE9BL/yzqmzDc3E8Gsjszv
 cWYnPdPljPLcBHEjO8obgZBS70w3HCWfiXX3HGC4cJjgpMtMuDJjpczks4lFG791PBtV
 OVukTj/HICDHCW/KSGHs8dxdAfWwx5Xk2wwm5oq4OgeRMFgsG0XIx6C80ajP5JtnKehu
 b/wAdpEeVxeMZBbi7rqbmOEshVQT9D38kWNcrF/+w+jQ9Qy2pagW/3OWXzrlaqjGcyhb
 c+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S8ZPnzIzwp3dPl5EFI/1g9MYzH1aSuoZopYt/nP5q80=;
 b=s9Jt11AwlMrjiFvg7PpcGrk/UKSjadTe531p/bW66hw1n9F3NxxvH80s1uAq228Oqp
 1uUrZ5MmLwn0k/Yu9H0TowSc4G60HEjCOtaxzSmF6RfjsfRX7W4vmbUJwmM8tlWaRlEU
 gfnrfYkSswLE01G8vjzOCimRvlGa8rQ5Rm+yAzG1RWXB9H1inZQAVz3BK8z985/Eg+Zm
 AmVna74bBA2FTx7KtznNdXNp9IciftM5v5EpaboqFu0bipUTDNPNgvm7UqymbhWxtG72
 Q/cTdGF1MiBa9yAg0+p+7gfXwtGOUvdGM7PHW5t0upE+rsiom+Srg27nOWbchQ+3extr
 P4/Q==
X-Gm-Message-State: APjAAAV0Y9f+qPqCgroenjIJoyW26hHguY7fLQ/jfAVNZqo0+fTccwsf
 ETC4Wu1WXwGOfgfer2KooYkAwS3M903Iuv6EhrSnQg==
X-Google-Smtp-Source: APXvYqxQ5kTmN/fXTcZ+sapT/n4YUo9Fiby1B6bZg0qbOjRVjoB/nX0hNjZmjRwzPSP63fisdzPHEwGUuyid++LnJyU=
X-Received: by 2002:ac2:5939:: with SMTP id v25mr13681194lfi.115.1566892202913; 
 Tue, 27 Aug 2019 00:50:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
 <20190805101607.29811-4-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-4-miquel.raynal@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 27 Aug 2019 09:49:51 +0200
Message-ID: <CACRpkdbaQjPeDKhaP75aOGtnXEf6DVVmUAdxbAP8PLSAJPSdAQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] pinctrl: mvebu: add additional variant for standalone
 CP115
To: Miquel Raynal <miquel.raynal@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_005004_742031_B795A273 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 <devicetree@vger.kernel.org>, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> With CP115 standalone modules, all MPP configuration are
> possible. Handle this new possibility thanks to the new
> "marvell,cp115-standalone-pinctrl" compatible property.
>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> [<miquel.raynal@bootlin.com>: mention the new compatible in the
> commit log]
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
