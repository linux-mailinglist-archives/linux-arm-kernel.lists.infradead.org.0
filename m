Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB9A15836B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kljXVqwZeMPErne0cuDIJn65wTUDcrT+PKN4gqaGlnk=; b=ABA0bZH+z5/Fdp
	dOkv6bKz+eIxAkrZFTKgre0+w252pj96+SZ29EoAW46RovRzd16ipQEXoSLpwyzOeyi77H/ju8Jin
	w1gSxW/iNCVFBkA2vJzmzUjHw3P9glPbCYPXVz11qfeOFcF7tl3L+V8pq5WHgFttp7koz4L/q+Nz9
	E3V0CGbNTPEIR6lB7oWa/baxm+MKm6psz+j0bsKXSDH+TuzTRsHzj8A9+kBaBSkwwmSzMeUWcHSc0
	k8bL7c8I710o9uR7LbBeSwmSAaJKhePAAQ4A0Pt8upGNXwKuJDn2aFmTRe37katpYEO6NLguozixL
	lceqwdbkaQkseN1EA8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1EXw-0007jQ-Ty; Mon, 10 Feb 2020 19:16:40 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1EXq-0007j3-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:16:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id 84so4173460pfy.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FR5Haon15BG7fZreS9CoW6URIzJo2qBtC7hHF2/jroU=;
 b=fEJ34Y6BdA6w6G5S2Jhq1WIaZBcBZl0N1iHwv29/wstPx85iA7k/XQuCVR0ogOx1rM
 CyCAPsaV9pFqXT17ET1G1SSpmC5y7bHHsRRVLu3db4hLyVQdfq/crCKdsMtmlkKW6yrN
 cv9QaAcAKSqGCAf+m9F+bzSOVnTVajmt5aJo1ft0ViBAusQlf7gxEKgroFK5ocp0+pJ6
 fME7BZW/0CGHztYJCLOHUWJNT/Vnjb2qIhUmHKCHOrvupR3Al2yRErRrtd9pLWvv0sxT
 GK0V02k2wJ8MdtNyYltsbxXKMvWyGEhoy5SC7o0n4vj/Y5UwN8TDl3w/f/4Ix5zPQOrb
 eSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FR5Haon15BG7fZreS9CoW6URIzJo2qBtC7hHF2/jroU=;
 b=lJ4lVq1yZp60CXzjmv+Oe81OTlznn0QBSMas1soI4DOOxLaqJ5P9InpoA4mV+4vepV
 BEkLvUh68RJPP6SY38pFgw0z1dkdDeXDg10/WtNv5/xq0qPgHTAKkmagUGaARNzD1A2j
 UnstT1JwQqAOC1xX4CBybmYBD+Jxjk0V4riruN2jSOQ2q4682kZXVPdMhpetoYmf4Od3
 xTOfltuJo8jt0RQiGaC0+mGMWsUuOAydNSLzrb1DaAgcsgQKW0McWH5iHm/1197PreM2
 k1ZsTny88zKr3Zcx6HlArYPy7lQpTuPvZ4S7n6aOp9i4KWRXC54FTOSNVJhrHazchl2U
 mgwg==
X-Gm-Message-State: APjAAAXthDILSCd/fCyH+DLIfviS3MOFYCX4/o4J1K8KRwLGDeSaZupT
 IYJp48ZGgnUz2FUjefsTRdQ=
X-Google-Smtp-Source: APXvYqwPiKX4wT4FkdKVUqaP0LU+nKJY5DjilOXG82qBEoG10vdlSb+ndGb96C5hXAksxQfSq6VqJQ==
X-Received: by 2002:aa7:9808:: with SMTP id e8mr2597823pfl.32.1581362193401;
 Mon, 10 Feb 2020 11:16:33 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:200::2:87f0])
 by smtp.gmail.com with ESMTPSA id i9sm1168592pfk.24.2020.02.10.11.16.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 10 Feb 2020 11:16:33 -0800 (PST)
Date: Mon, 10 Feb 2020 11:16:30 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH 1/3] usb: gadget: aspeed: read vhub config from
 of_device_id
Message-ID: <20200210191629.GB5346@taoren-ubuntu-R90MNF91>
References: <20200131222157.20849-1-rentao.bupt@gmail.com>
 <20200131222157.20849-2-rentao.bupt@gmail.com>
 <CACPK8Xe0b+zVNqf8v5YXOLkzqDeb4JHqec-bqFpaVFGTwHThhA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8Xe0b+zVNqf8v5YXOLkzqDeb4JHqec-bqFpaVFGTwHThhA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_111634_107010_7D56BAF2 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 devicetree <devicetree@vger.kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>, linux-usb@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 10, 2020 at 02:47:02AM +0000, Joel Stanley wrote:
> On Fri, 31 Jan 2020 at 22:22, <rentao.bupt@gmail.com> wrote:
> >
> > From: Tao Ren <rentao.bupt@gmail.com>
> >
> > The patch moves hardcoded vhub attributes (maximum downstream ports and
> > generic endpoints) to "ast_vhub_config" structure which is attached to
> > struct of_device_id. The major purpose is to add AST2600 vhub support
> > because AST2600 vhub provides more downstream ports and endpoints.
> >
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> 
> This looks generally okay. We should wait for Ben's ack before applying.
> 
> Reviewed-by: Joel Stanley <joel@jms.id.au>

Thanks Joel for reviewing the patches.

Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
