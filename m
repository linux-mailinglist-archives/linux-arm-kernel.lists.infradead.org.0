Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A71F12AFEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 01:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abqjlNbCzc1ngedqqPLyXecy6AKCZ5PCaz/BrWgIz5Y=; b=eNMYCwVIbOGnxr
	JYbIhFGNwolcEdvc7ze88Xrld/Nt/71rp/8Weq+NdI8YLaNl5ZXCEAITAJFtY1QCv/DhgD+/dc0Tc
	vYdv7owWm+vbO4YPZpbQ/aK9dvUishlfjUTLFONbR8ZIsRTl5mAm14HDj/nlxNoEjdZex72plB00X
	8qVZZYT18r3rmbgm133yw5uHoKWqlgDGytWfBzMlc8T7eK1vpJjT5DblkOktiLxYTR4QjCSbw3Gnq
	N+16M6PxXIsBNruZyu9IU8AEGeasQl99F6yqUXzvYX0g9Do4Nrf/6cdiGSi4oI3U9hgN9x5Q+2PO2
	7xYDBGsAq0PqW/cqc/Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikdaO-00060x-OS; Fri, 27 Dec 2019 00:34:36 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikdaE-00060d-E2
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 00:34:27 +0000
Received: by mail-lf1-x141.google.com with SMTP id 15so19513456lfr.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Dec 2019 16:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A0ugGKSdy996G5cCplSFEOG0vQpDh89551RLNUPVsrY=;
 b=RJXCsoTJsJ6edGiu8VS+CH+D/Dbj3WTIrX4aUJgPw9NYhOJTOvubQ0t/Ibr04akdir
 Fu6Ai+dWwPh6wOi0pbuhcbNC5hyjwFcF7b9HKCGYnkgyO1gINGyedIAR+CAZ4PPjK5rx
 NFFn9i4fsO+15oum1AQ5YLYbvJ6MGnp9mUaDgEJvGQGd5PFyjaStWnc6lD+xm66Y78c2
 UE8yLgl5l7l1Dg1HzL0pO/OTmLbf2sQbEYVaHGLCybnkkT6qEFz7SRBjj1cpeoRvkB8z
 xcCXdDZL/7k+upNyso0Vnzp8DnU4dvZprpqNC7mv4dpkCwGAqFYcjd9sWfRBreCjAYXf
 3h8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A0ugGKSdy996G5cCplSFEOG0vQpDh89551RLNUPVsrY=;
 b=PEPy91KjA2zGorYiaIISZ4m3iY1fRnRNPVpgGCXA/0jUWSGjI4tsZtDVbVoC5gYXF/
 xxwaPt0POulHqlVMSUKqPdyVR29b0+r6rSXfz+X4+x1UZ+VSw63cYrP1kU5qzKAJE71V
 qJ6Q6JmsDA+FdRMAij8CrUUnTkX/NgoYv3PmeOR5fxf+1FclhfQuOVxZ5by5Hg5PEhVY
 3UqOU51Q3ECE6Vu3skPIm7iwf31SlqrXk1DCMYW6qBJa4S7z+X7kA03BTYb38RGQMoDS
 8BZWdWWBWdrMeVUvxXfzoxmIRgKncJZ+8YXn7OA/4DoveXuZN1hrNK3LqBscD7MWICOi
 RYhg==
X-Gm-Message-State: APjAAAXNuRYFvmNIHPTFZkKYUJuq5Sz5vSU/q86wJ4HaazdgPXdEMaUV
 ktO7rKxK4M+DGYqWYCzVnOwMTmmjUmOzk1uI2Yg=
X-Google-Smtp-Source: APXvYqxY1gE2xluutA0vYW3bQC/tuQsvTnlKskNTUihkMrt/0z56p8xevQaK89OQG00nOvNGggLiZOMqj1+rHfr3cMA=
X-Received: by 2002:a19:2d0d:: with SMTP id k13mr26787903lfj.12.1577406863391; 
 Thu, 26 Dec 2019 16:34:23 -0800 (PST)
MIME-Version: 1.0
References: <20191224010020.15969-1-rjones@gateworks.com>
 <20191224010020.15969-2-rjones@gateworks.com>
 <20191226232625.GA2186@bogus>
In-Reply-To: <20191226232625.GA2186@bogus>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 26 Dec 2019 21:34:06 -0300
Message-ID: <CAOMZO5Aj+PfzXrYoV8LxKStdQ-B0BLdMV16L3ya0NokozG479g@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] dt-bindings: arm: fsl: Add Gateworks Ventana
 i.MX6DL/Q compatibles
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_163426_496079_A951225C 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
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
 <devicetree@vger.kernel.org>, Robert Jones <rjones@gateworks.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, Dec 26, 2019 at 8:26 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Dec 23, 2019 at 05:00:16PM -0800, Robert Jones wrote:
> > Add the compatible enum entries for Gateworks Ventana boards.
> >
> > Signed-off-by: Robert Jones <rjones@gateworks.com>
> > ---
> >  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index f79683a..a02e980 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -126,6 +126,7 @@ properties:
> >                - toradex,apalis_imx6q-ixora      # Apalis iMX6 Module on Ixora
> >                - toradex,apalis_imx6q-ixora-v1.1 # Apalis iMX6 Module on Ixora V1.1
> >                - variscite,dt6customboard
> > +              - gw,ventana                # Gateworks i.MX6DL or i.MX6Q Ventana
>
> Keep entries sorted.

Just for clarification: shouldn't the entries inside fsl.yaml match
the dtb file names?

In case of the i.MX6Q based gateworks board, this should be:

gw,imx6q-gw51xx
gw,imx6q-gw52xx
gw,imx6q-gw53xx
gw,imx6q-gw5400-a
gw,imx6q-gw54xx
gw,imx6q-gw551x
gw,imx6q-gw552x
gw,imx6q-gw553x
gw,imx6q-gw560x
gw,imx6q-gw5903
gw,imx6q-gw5904

Please advise.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
