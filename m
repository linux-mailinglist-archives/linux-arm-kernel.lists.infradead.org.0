Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883779D56C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZrkzaCIXOPkL9RUfYJu8LE2WQBURGHJAouV16SSaN8=; b=bBD8t36B6jGzkV
	UZDUKe++eGLYGFLKKckp0dC0FK+R7I2BDbxq5/PeVYL7rjbVLZpuHwtuCuBjpCbEdo5eSygynDA7G
	FgmKoaydM+sGJEJjlmmF740bHarlY4pZDmPCkks/YQQvrY5QFQ2bk38kfM7MZ2Md4RJ9BWR8Sy2H9
	+XcX6/7emv0VXXMEn/a0g2NZUXdmAsJWI8ZBltbBAvWt2d9glm0RcIbYmbIVl9xnyzIVNpqXdHOVx
	kWVyXo9lEVQ47rccJfR16hac2CFZD2dgC1qp3dzXbQDt4qdIr42jVfCeOkM4PuNQGT0ZyGA2qztKc
	5hot5CwogEzHRo2RiF6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JN6-0003WU-5q; Mon, 26 Aug 2019 18:05:40 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JMo-0003Vt-5w
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:05:23 +0000
Received: by mail-io1-xd44.google.com with SMTP id j4so31140694iog.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 26 Aug 2019 11:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xErunZPuJorD94l/vc7ENj6uuFr7usZrxrb/oaGw5eQ=;
 b=IfFABVr/1KfuRZB6p1y3WOunsyErFqxPhnXEOJrvwyDMOpnxu1fcWFb+OuGgHaLwY8
 P4QRB/Crm8ezMc8G4RzbPnMRC8hvlvj68jeVc1TMsvmrr/6W0zCHdu8wtEC9ReP+xPID
 +wFqzAUUHx4WZwrW4HxwQAKyKZ8uE1ZxNQE2eaS0XH9V0oNaEcwcjALuFQV3v+baB3Wy
 r2MLOlynILeLaeGT/NnJjBAm5tu9XUgMSYRadJvCkBBEQuWPNuaE+WMj7ylKNr8rkMm3
 mntJ2PgJ05bGqQFpe1hc+NvWiEsSw91U/pt1ZaPV2w5IiJOnX0RRBIqHDmruFJtSKrY2
 dvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xErunZPuJorD94l/vc7ENj6uuFr7usZrxrb/oaGw5eQ=;
 b=niGUbPo67nqLzBew04M/yNJ6OHCqxwRkZu7ktjxsK2Nq8CjJh4gl/DzfNfibjJ6Py3
 xwA4N8PXYVEIxEHmtnR00KH0HEm6PMjphvPNE7gayop175GlQqOC1IA+iGp49+6f6Ksx
 LSp2DTuVlSDxnzh2Z178gZJUec2rAjyMjrUClgp9t++ai/G2f402PKZNFGx/eaumhZTH
 jtBn8UVnWFerlhXgBhnalKS6wXE+YSSevcRh5/TWrroc2vbQgyY1bAyvcFIx/lCawXwT
 CoS1Gc+zB24l+2snPvpIheYOvlrMe0s+hY+t+ClIKypX81W75U1+wmnpkg/3sOWiIVbX
 RA1g==
X-Gm-Message-State: APjAAAUMyL733Tk2tTqr+VOrie1z3ypA96GgNYUvkC/o0NnusMZt/mat
 pgMgpoFUubKQtemu8WhZtcLdEI5yxm/AoV7iXMwMf2Aw
X-Google-Smtp-Source: APXvYqw0YR2dFpgRDEYpOGIx9y+J6vXPTCqZruvnSxh0xULxLyWz6aaBXEf5EATJxms/V5T0eV7N7QEL3tgnqQNZEwY=
X-Received: by 2002:a5e:8e08:: with SMTP id a8mr18337621ion.94.1566842721537; 
 Mon, 26 Aug 2019 11:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190820031301.11172-1-andrew.smirnov@gmail.com>
 <20190824190903.GC16308@X250.getinternet.no>
In-Reply-To: <20190824190903.GC16308@X250.getinternet.no>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 26 Aug 2019 11:05:10 -0700
Message-ID: <CAHQ1cqENuDQ6OKHiP-ecxOHrjTHN1_Gf6DqrAwAq6W3PBE6Ggw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-scu4-aib: Drop "rs485-rts-delay"
 property
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_110522_225536_C98754AB 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
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
Cc: Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Aug 24, 2019 at 12:09 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> On Mon, Aug 19, 2019 at 08:13:01PM -0700, Andrey Smirnov wrote:
> > LPUART driver does not support specifying "rs485-rts-delay"
> > property. Drop it.
>
> If so, we need to fix bindings/serial/fsl-lpuart.txt in the meantime?
>

Yeah, good point. Will submit a separate patch for that.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
